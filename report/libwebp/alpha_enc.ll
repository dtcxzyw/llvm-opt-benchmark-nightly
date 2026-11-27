Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/alpha_enc?download=true
inline.NumInlined: 12
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@CompressAlphaJob:bb.a

bb.ag:                                            ; preds = %EncodeAlpha.exit
  %.not14 = icmp ult i64 %.2, 4294967296
  br i1 %.not14, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @WebPSafeFree(ptr noundef %.219) #6
  %i.ni = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.nj = call i32 @WebPEncodingSetError(ptr noundef %i.ni, i32 noundef 9) #6
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.nk = trunc nuw i64 %.2 to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.nk, ptr %i.nl, align 8, !tbaa !29
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %.219, ptr %i.nm, align 8, !tbaa !28
  br label %bb.aj

bb.aj:                                            ; preds = %EncodeAlpha.exit, %bb.ai, %bb.ah
  %.0 = phi i32 [ %i.nj, %bb.ah ], [ 1, %bb.ai ], [ 0, %EncodeAlpha.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncStartAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.g = tail call ptr @WebPGetWorkerInterface() #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f) #6
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = tail call i32 @WebPEncodingSetError(ptr noundef %i.l, i32 noundef 1) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = tail call ptr @WebPGetWorkerInterface() #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  tail call void %i.p(ptr noundef nonnull %i.f) #6
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = tail call i32 @CompressAlphaJob(ptr noundef nonnull %0, ptr poison)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.1 = phi i32 [ %i.m, %bb.d ], [ %i.q, %bb.f ], [ 1, %bb.e ], [ 1, %bb.a ]
  ret i32 %.1
}

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncFinishAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.g = tail call ptr @WebPGetWorkerInterface() #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f) #6
  %.not9.not = icmp eq i32 %i.j, 0
  br i1 %.not9.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
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
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 %2, ptr %12, align 4, !tbaa !38
  store i32 1, ptr %10, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.i, ptr %i.m, align 8, !tbaa !39
  %i.n = call i32 @WebPPictureAlloc(ptr noundef nonnull %10) #6
  %.not16.i = icmp eq i32 %i.n, 0
  br i1 %.not16.i, label %EncodeLossless.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr @WebPDispatchAlphaToGreen, align 8, !tbaa !74
  %i.p = load i32, ptr %i.l, align 8, !tbaa !37
  %i.q = load i32, ptr %12, align 4, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !77
  call void %i.o(ptr noundef %.048, i32 noundef %1, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %i.s, i32 noundef %i.u) #6, !inline_history !73
  store i32 1, ptr %9, align 4, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.v, align 4, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %6, ptr %i.w, align 4, !tbaa !34
  %i.x = icmp eq i32 %5, 0
  %i.y = icmp eq i32 %6, 6
  %or.cond.i = and i1 %i.x, %i.y
  %i.z = sitofp i32 %6 to float
  %i.aa = fmul nnan float %i.z, 8.000000e+00
  %i.ab = select i1 %or.cond.i, float 1.000000e+02, float %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ab, ptr %i.ac, align 4, !tbaa !80
  %i.ad = call i32 @VP8LEncodeStream(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  call void @WebPPictureFree(ptr noundef nonnull %10) #6
  %.not17.i = icmp ne i32 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not18.i = icmp eq i32 %i.af, 0
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
  %i.ag = call ptr @VP8LBitWriterFinish(ptr noundef nonnull %11) #6
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !82
  %.not61 = icmp eq i32 %i.ah, 0
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.as = add nsw i32 %i.ar, 7
  %i.at = ashr i32 %i.as, 3
  %i.au = sext i32 %i.at to i64
  %i.av = add nsw i64 %i.ap, %i.au                ; 2 uses
  %i.aw = icmp ugt i64 %i.av, %i.c
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %bb.m

.critedge:                                        ; preds = %EncodeLossless.exit.thread, %bb.d
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i8 0, i64 48, i1 false)
  br label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.c, %bb.l
  %i.ay = phi ptr [ %.048, %bb.c ], [ %.048, %bb.l ], [ %i.ag, %bb.k ]
  %.052758894 = phi i32 [ 0, %bb.c ], [ 0, %bb.l ], [ 1, %bb.k ]
  %i.az = phi i1 [ true, %bb.c ], [ true, %bb.l ], [ false, %bb.k ]
  %i.ba = phi i64 [ %i.c, %bb.c ], [ %i.c, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %i.bb = shl i32 %4, 2
  %i.bc = or disjoint i32 %.052758894, %i.bb
  %i.bd = trunc i32 %i.bc to i8                   ; 2 uses
  %.not62 = icmp eq i32 %5, 0
  %i.be = or i8 %i.bd, 16
  %storemerge = select i1 %.not62, i8 %i.bd, i8 %i.be
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bg = add i64 %i.ba, 1
  %i.bh = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.bf, i64 noundef %i.bg) #6
  %.not63.not = icmp eq i32 %i.bh, 0
  br i1 %.not63.not, label %.critedge68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, i64 noundef 1) #6
  %.not97 = icmp eq i32 %i.bi, 0
  br i1 %.not97, label %.critedge68, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.bf, ptr noundef %i.ay, i64 noundef %i.ba) #6
  %i.bk = icmp ne i32 %i.bj, 0
  br label %.critedge68

.critedge68:                                      ; preds = %bb.m, %bb.o, %bb.n
  %i.bl = phi i1 [ false, %bb.n ], [ %i.bk, %bb.o ], [ false, %bb.m ]
  br i1 %i.az, label %bb.q, label %bb.p

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
end_hunk_0
