Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hash?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@av_hash_update:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_md5_update(ptr noundef %i.c, ptr noundef %1, i64 noundef %2) #9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_murmur3_update(ptr noundef %i.d, ptr noundef %1, i64 noundef %2) #9
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_ripemd_update(ptr noundef %i.e, ptr noundef %1, i64 noundef %2) #9
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_sha_update(ptr noundef %i.f, ptr noundef %1, i64 noundef %2) #9
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_sha512_update(ptr noundef %i.g, ptr noundef %1, i64 noundef %2) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call i32 @av_crc(ptr noundef %i.i, i32 noundef %i.k, ptr noundef %1, i64 noundef %2) #10
  store i32 %i.l, ptr %i.j, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19
  %i.o = tail call i32 @av_adler32_update(i32 noundef %i.n, ptr noundef %1, i64 noundef %2) #10
  store i32 %i.o, ptr %i.m, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @av_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_murmur3_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_ripemd_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_sha_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_sha512_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_adler32_update(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @av_hash_final(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  switch i32 %i.b, label %bb.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 9, label %bb.f
    i32 10, label %bb.f
    i32 11, label %bb.f
    i32 12, label %bb.f
    i32 13, label %bb.g
    i32 14, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_md5_final(ptr noundef %i.c, ptr noundef %1) #9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_murmur3_final(ptr noundef %i.d, ptr noundef %1) #9
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_ripemd_final(ptr noundef %i.e, ptr noundef %1) #9
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_sha_final(ptr noundef %i.f, ptr noundef %1) #9
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @av_sha512_final(ptr noundef %i.g, ptr noundef %1) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = xor i32 %i.i, -1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %i.k, ptr %1, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %i.n, ptr %1, align 1, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @av_md5_final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @av_murmur3_final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @av_ripemd_final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @av_sha_final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @av_sha512_final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @av_hash_final_bin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @hashdesc, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 4 uses
  call void @av_hash_final(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.h = icmp ugt i32 %2, %i.g
  %i.i = call i32 @llvm.umin.i32(i32 %2, i32 %i.g)
  %i.j = zext i32 %i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.j, i1 false)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = sub nuw i32 %2, %i.g
  %i.n = zext i32 %i.m to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 0, i64 %i.n, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define void @av_hash_final_hex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @hashdesc, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  call void @av_hash_final(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.h = sdiv i32 %2, 2
  %. = call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %.not = icmp eq i32 %., 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %. to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %3 = shl nuw nsw i64 %indvars.iv, 1             ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %5 = trunc nuw i64 %3 to i32
  %i.i = sub i32 %2, %5
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = zext i8 %i.l to i32
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %4, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef %i.m) #9 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @av_hash_final_b64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [89 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @hashdesc, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  call void @av_hash_final(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.i = call ptr @av_base64_encode(ptr noundef nonnull %i.b, i32 noundef 89, ptr noundef nonnull %i.a, i32 noundef %i.h) #9 ; 0 uses
  %i.j = add i32 %i.h, 2
  %i.k = udiv i32 %i.j, 3
  %i.l = shl i32 %i.k, 2                          ; 2 uses
  %i.m = or disjoint i32 %i.l, 1
  %.not = icmp ult i32 %i.l, %2                   ; 2 uses
  %i.n = select i1 %.not, i32 %i.m, i32 %2
  %i.o = zext i32 %i.n to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.b, i64 %i.o, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  store i8 0, ptr %i.r, align 1, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare ptr @av_base64_encode(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @av_hash_freep(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @av_freep(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @av_freep(ptr noundef nonnull %0) #9
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"AVHashContext", !11, i64 0, !6, i64 8, !12, i64 16, !6, i64 24}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!14, !6, i64 12}
!14 = !{!"", !7, i64 0, !6, i64 12}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS13AVHashContext", !11, i64 0}
!17 = !{!10, !12, i64 16}
!18 = !{!10, !11, i64 0}
!19 = !{!10, !6, i64 24}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
end_hunk_0
