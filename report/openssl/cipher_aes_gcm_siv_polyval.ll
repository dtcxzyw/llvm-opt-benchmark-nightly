Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_aes_gcm_siv_polyval?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @ossl_polyval_ghash_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 7
  %or.cond.i = icmp eq i64 %i.c, 0
  br i1 %or.cond.i, label %bb.b, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load <16 x i8>, ptr %1, align 1, !tbaa !8
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.f, ptr %i.a, align 16, !tbaa !8
  %.pre = load i64, ptr %i.a, align 16, !tbaa !9
  %.pre2 = load i64, ptr %i.d, align 8, !tbaa !9
  %i.g = tail call i64 @llvm.bswap.i64(i64 %.pre)
  %i.h = tail call i64 @llvm.bswap.i64(i64 %.pre2)
  br label %byte_reverse16.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = load i64, ptr %1, align 8, !tbaa !9
  br label %byte_reverse16.exit

byte_reverse16.exit:                              ; preds = %.preheader.preheader.i, %bb.b
  %i.l = phi i64 [ %i.h, %.preheader.preheader.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi i64 [ %i.g, %.preheader.preheader.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = and i64 %i.l, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 0, i64 -2233785415175766016
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.l, i64 63)
  %i.s = lshr i64 %i.m, 1
  %i.t = xor i64 %i.q, %i.s
  store i64 %i.t, ptr %i.a, align 16, !tbaa !9
  store i64 %i.r, ptr %i.n, align 8, !tbaa !9
  call void @ossl_gcm_init_4bit(ptr noundef %0, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ossl_gcm_init_4bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ossl_polyval_ghash_hash(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 9 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 7
  %or.cond.i = icmp eq i64 %i.d, 0                ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %1, align 1, !tbaa !8
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.f, ptr %i.a, align 16, !tbaa !8
  br label %byte_reverse16.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %i.h)
  store i64 %i.i, ptr %i.a, align 16, !tbaa !9
  %i.j = load i64, ptr %1, align 8, !tbaa !9
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !9
  br label %byte_reverse16.exit

byte_reverse16.exit:                              ; preds = %.preheader.preheader.i, %bb.b
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %byte_reverse16.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %byte_reverse16.exit9
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.v, %byte_reverse16.exit9 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.013 ; 4 uses
  %4 = ptrtoint ptr %i.n to i64
  %5 = and i64 %4, 7
  %or.cond.i7 = icmp eq i64 %5, 0
  br i1 %or.cond.i7, label %bb.d, label %.preheader.preheader.i8

.preheader.preheader.i8:                          ; preds = %bb.c
  %i.o = load <16 x i8>, ptr %i.n, align 1, !tbaa !8
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.p, ptr %i.b, align 16, !tbaa !8
  br label %byte_reverse16.exit9

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = call noundef i64 @llvm.bswap.i64(i64 %i.r)
  store i64 %i.s, ptr %i.b, align 16, !tbaa !9
  %i.t = load i64, ptr %i.n, align 8, !tbaa !9
  %i.u = call noundef i64 @llvm.bswap.i64(i64 %i.t)
  store i64 %i.u, ptr %i.m, align 8, !tbaa !9
  br label %byte_reverse16.exit9

byte_reverse16.exit9:                             ; preds = %.preheader.preheader.i8, %bb.d
  call void @ossl_gcm_ghash_4bit(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 16) #4
  %i.v = add i64 %.013, 16                        ; 2 uses
  %i.w = icmp ult i64 %i.v, %3
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %byte_reverse16.exit9, %byte_reverse16.exit
  br i1 %or.cond.i, label %bb.e, label %.preheader.preheader.i11

.preheader.preheader.i11:                         ; preds = %._crit_edge
  %i.x = load <16 x i8>, ptr %i.a, align 16, !tbaa !8
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.y, ptr %1, align 1, !tbaa !8
  br label %byte_reverse16.exit12

bb.e:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9
  %i.ab = call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  store i64 %i.ab, ptr %1, align 8, !tbaa !9
  %i.ac = load i64, ptr %i.a, align 16, !tbaa !9
  %i.ad = call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !9
  br label %byte_reverse16.exit12

byte_reverse16.exit12:                            ; preds = %.preheader.preheader.i11, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @ossl_gcm_ghash_4bit(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_0
