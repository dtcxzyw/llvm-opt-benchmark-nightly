Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/alpha_enc?download=true
inline.NumInlined: 12
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@VP8EncFinishAlpha:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !71
  %i.o = add nsw i32 %i.n, 20
  %i.p = tail call i32 @WebPReportProgress(ptr noundef %i.l, i32 noundef %i.o, ptr noundef nonnull %i.m) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncDeleteAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = tail call ptr @WebPGetWorkerInterface() #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.d) #6
  %i.i = tail call ptr @WebPGetWorkerInterface() #6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.k(ptr noundef nonnull %i.d) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  tail call void @WebPSafeFree(ptr noundef %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  ret i32 %.0
}

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @WebPCopyPlane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @QuantizeLevels(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @VP8FiltersInit() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @EncodeAlphaInternal(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6, ptr noundef %7, ptr noundef nonnull %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.WebPConfig, align 4         ; 9 uses
  %10 = alloca %struct.WebPPicture, align 8       ; 13 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %11 = alloca %struct.VP8LBitWriter, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = mul nsw i32 %2, %1
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @WebPFilters, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.f(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %7) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.048 = phi ptr [ %7, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not58 = icmp eq i32 %3, 0
  br i1 %.not58, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i64 %i.c, 3
  %i.h = call i32 @VP8LBitWriterInit(ptr noundef nonnull %11, i64 noundef %i.g) #6
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.j = call i32 @WebPPictureInitInternal(ptr noundef nonnull %10, i32 noundef 528) #6
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %EncodeLossless.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 @WebPConfigInitInternal(ptr noundef nonnull %9, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #6
  %.not15.i = icmp eq i32 %i.k, 0
  br i1 %.not15.i, label %EncodeLossless.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 %1, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !38
  store i32 1, ptr %10, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.i, ptr %i.n, align 8, !tbaa !39
  %i.o = call i32 @WebPPictureAlloc(ptr noundef nonnull %10) #6
  %.not16.i = icmp eq i32 %i.o, 0
  br i1 %.not16.i, label %EncodeLossless.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr @WebPDispatchAlphaToGreen, align 8, !tbaa !74
  %i.q = load i32, ptr %i.l, align 8, !tbaa !37
  %i.r = load i32, ptr %i.m, align 4, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !77
  call void %i.p(ptr noundef %.048, i32 noundef %1, i32 noundef %i.q, i32 noundef %i.r, ptr noundef %i.t, i32 noundef %i.v) #6, !inline_history !73
  store i32 1, ptr %9, align 4, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.w, align 4, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %6, ptr %i.x, align 4, !tbaa !34
  %i.y = icmp eq i32 %5, 0
  %i.z = icmp eq i32 %6, 6
  %or.cond.i = and i1 %i.y, %i.z
  %i.aa = sitofp i32 %6 to float
  %i.ab = fmul nnan float %i.aa, 8.000000e+00
  %i.ac = select i1 %or.cond.i, float 1.000000e+02, float %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !80
  %i.ae = call i32 @VP8LEncodeStream(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  call void @WebPPictureFree(ptr noundef nonnull %10) #6
  %.not17.i = icmp ne i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %.not18.i = icmp eq i32 %i.ag, 0
  %or.cond = select i1 %.not17.i, i1 %.not18.i, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %EncodeLossless.exit.thread

EncodeLossless.exit.thread:                       ; preds = %bb.g, %.critedge.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %i.ah = call ptr @VP8LBitWriterFinish(ptr noundef nonnull %11) #6
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !82
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !85
  %i.at = add nsw i32 %i.as, 7
  %i.au = ashr i32 %i.at, 3
  %i.av = sext i32 %i.au to i64
  %i.aw = add nsw i64 %i.aq, %i.av                ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.c
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %bb.m

.critedge:                                        ; preds = %EncodeLossless.exit.thread, %bb.d
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i8 0, i64 48, i1 false)
  br label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.c, %bb.l
  %i.az = phi ptr [ %.048, %bb.c ], [ %.048, %bb.l ], [ %i.ah, %bb.k ]
  %.052758894 = phi i32 [ 0, %bb.c ], [ 0, %bb.l ], [ 1, %bb.k ]
  %i.ba = phi i1 [ true, %bb.c ], [ true, %bb.l ], [ false, %bb.k ]
  %i.bb = phi i64 [ %i.c, %bb.c ], [ %i.c, %bb.l ], [ %i.aw, %bb.k ] ; 2 uses
  %i.bc = shl i32 %4, 2
  %i.bd = or disjoint i32 %.052758894, %i.bc
  %i.be = trunc i32 %i.bd to i8
  %12 = trunc nuw nsw i32 %5 to i8
  %13 = shl nuw nsw i8 %12, 4
  %storemerge = or i8 %13, %i.be
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = add i64 %i.bb, 1
  %i.bh = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.bf, i64 noundef %i.bg) #6
  %.not63.not = icmp eq i32 %i.bh, 0
  br i1 %.not63.not, label %.critedge68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, i64 noundef 1) #6
  %.not97 = icmp eq i32 %i.bi, 0
  br i1 %.not97, label %.critedge68, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.bf, ptr noundef %i.az, i64 noundef %i.bb) #6
  %i.bk = icmp ne i32 %i.bj, 0
  br label %.critedge68

.critedge68:                                      ; preds = %bb.m, %bb.o, %bb.n
  %i.bl = phi i1 [ false, %bb.n ], [ %i.bk, %bb.o ], [ false, %bb.m ]
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge68
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge68
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !86
  %.not66 = icmp eq i32 %i.bn, 0
  %i.bo = zext i1 %.not66 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = phi i32 [ 0, %bb.q ], [ %i.bo, %bb.r ]
  %i.bq = getelementptr i8, ptr %8, i64 32
  %.val = load i64, ptr %i.bq, align 8, !tbaa !44
  store i64 %.val, ptr %8, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge, %bb.j
  %.051 = phi i32 [ 0, %bb.j ], [ %i.bp, %bb.s ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.051
}

declare void @VP8BitWriterWipeOut(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @WebPEstimateBestFilter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @VP8BitWriterInit(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @VP8LBitWriterInit(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @VP8LBitWriterFinish(ptr noundef) local_unnamed_addr #1

declare void @VP8LBitWriterWipeOut(ptr noundef) local_unnamed_addr #1

declare i32 @VP8BitWriterAppend(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WebPPictureAlloc(ptr noundef) local_unnamed_addr #1

declare i32 @VP8LEncodeStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WebPPictureFree(ptr noundef) local_unnamed_addr #1

declare i32 @WebPPictureInitInternal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WebPConfigInitInternal(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS10WebPConfig", !8, i64 0}
!10 = !{!"p1 _ZTS11WebPPicture", !8, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"VP8BitWriter", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !13, i64 16, !14, i64 24, !14, i64 32, !5, i64 40}
!16 = !{!"p1 _ZTS9VP8Tokens", !8, i64 0}
!17 = !{!"any p2 pointer", !8, i64 0}
!18 = !{!"p2 _ZTS9VP8Tokens", !17, i64 0}
!19 = !{!"p1 short", !8, i64 0}
!20 = !{!"", !16, i64 0, !18, i64 8, !19, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!21 = !{!"", !8, i64 0, !5, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40}
!22 = !{!"", !4, i64 0, !4, i64 3, !4, i64 4, !4, i64 1060, !4, i64 5284, !4, i64 18344, !5, i64 19880, !5, i64 19884, !5, i64 19888}
!23 = !{!"p1 int", !8, i64 0}
!24 = !{!"p1 double", !8, i64 0}
!25 = !{!"VP8Encoder", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 32, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !15, i64 64, !4, i64 112, !20, i64 496, !5, i64 536, !5, i64 540, !13, i64 544, !5, i64 552, !21, i64 560, !4, i64 608, !5, i64 3584, !5, i64 3588, !5, i64 3592, !5, i64 3596, !5, i64 3600, !5, i64 3604, !5, i64 3608, !5, i64 3612, !22, i64 3616, !4, i64 23512, !14, i64 23544, !5, i64 23552, !4, i64 23556, !4, i64 23604, !5, i64 23616, !5, i64 23620, !5, i64 23624, !5, i64 23628, !5, i64 23632, !5, i64 23636, !5, i64 23640, !8, i64 23648, !13, i64 23656, !23, i64 23664, !13, i64 23672, !13, i64 23680, !24, i64 23688, !13, i64 23696}
!26 = !{!25, !10, i64 8}
!27 = !{!25, !5, i64 540}
!28 = !{!25, !13, i64 544}
!29 = !{!25, !5, i64 552}
!30 = !{!25, !5, i64 23632}
!31 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!32 = !{!"float", !4, i64 0}
!33 = !{!"WebPConfig", !5, i64 0, !32, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !32, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112}
!34 = !{!33, !5, i64 8}
!35 = !{!"p1 _ZTS12WebPAuxStats", !8, i64 0}
!36 = !{!"WebPPicture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !13, i64 16, !13, i64 24, !13, i64 32, !5, i64 40, !5, i64 44, !13, i64 48, !5, i64 56, !4, i64 60, !23, i64 72, !5, i64 80, !4, i64 84, !8, i64 96, !8, i64 104, !5, i64 112, !13, i64 120, !35, i64 128, !5, i64 136, !8, i64 144, !8, i64 152, !4, i64 160, !13, i64 176, !13, i64 184, !4, i64 192, !8, i64 224, !8, i64 232, !4, i64 240}
!37 = !{!36, !5, i64 8}
!38 = !{!36, !5, i64 12}
!39 = !{!36, !35, i64 128}
!40 = !{!"WebPAuxStats", !5, i64 0, !4, i64 4, !4, i64 24, !4, i64 36, !4, i64 44, !4, i64 92, !4, i64 108, !4, i64 124, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !4, i64 184}
!41 = !{!"", !14, i64 0, !15, i64 8, !40, i64 56}
!42 = !{!41, !14, i64 0}
!43 = !{!4, !4, i64 0}
!44 = !{!15, !14, i64 24}
!45 = !{!31, !8, i64 16}
!46 = !{!31, !8, i64 0}
!47 = !{!21, !8, i64 24}
!48 = !{!21, !8, i64 32}
!49 = !{!21, !8, i64 16}
!50 = distinct !{!50, !61}
!51 = distinct !{!51, !62}
!52 = distinct !{!52, !61}
!53 = distinct !{!53, !61}
!54 = !{!25, !9, i64 0}
!55 = !{!33, !5, i64 52}
!56 = !{!33, !5, i64 56}
!57 = !{!33, !5, i64 48}
!58 = !{!14, !14, i64 0}
!59 = !{!36, !13, i64 48}
!60 = !{!36, !5, i64 56}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!5, !5, i64 0}
!64 = !{!13, !13, i64 0}
!65 = !{i64 0, i64 8, !58, i64 8, i64 4, !63, i64 12, i64 4, !63, i64 16, i64 4, !63, i64 20, i64 4, !63, i64 24, i64 8, !64, i64 32, i64 8, !58, i64 40, i64 8, !58, i64 48, i64 4, !63, i64 56, i64 4, !63, i64 60, i64 20, !43, i64 80, i64 12, !43, i64 92, i64 8, !43, i64 100, i64 48, !43, i64 148, i64 16, !43, i64 164, i64 16, !43, i64 180, i64 16, !43, i64 196, i64 4, !63, i64 200, i64 4, !63, i64 204, i64 4, !63, i64 208, i64 4, !63, i64 212, i64 4, !63, i64 216, i64 4, !63, i64 220, i64 4, !63, i64 224, i64 4, !63, i64 228, i64 4, !63, i64 232, i64 4, !63, i64 236, i64 4, !63, i64 240, i64 4, !43}
!66 = !{!41, !5, i64 236}
!67 = !{!40, !5, i64 180}
!68 = !{!15, !13, i64 16}
!69 = !{!31, !8, i64 8}
!70 = !{!31, !8, i64 24}
!71 = !{!25, !5, i64 536}
!72 = !{!31, !8, i64 40}
!73 = distinct !{null}
!74 = !{!8, !8, i64 0}
!75 = !{!36, !5, i64 0}
!76 = !{!36, !23, i64 72}
!77 = !{!36, !5, i64 80}
!78 = !{!33, !5, i64 0}
!79 = !{!33, !5, i64 96}
!80 = !{!33, !32, i64 4}
!81 = !{!"", !14, i64 0, !5, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !5, i64 40}
!82 = !{!81, !5, i64 40}
!83 = !{!81, !13, i64 24}
!84 = !{!81, !13, i64 16}
!85 = !{!81, !5, i64 8}
!86 = !{!41, !5, i64 48}
end_hunk_0
