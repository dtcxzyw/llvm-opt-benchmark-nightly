Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/webp_dec?download=true
inline.NumInlined: 46
inline.NumDeleted: 13
begin_hunk_0_@WebPDecodeRGBInto:bb.a
  %6 = alloca %struct.WebPDecBuffer, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %DecodeIntoRGBABuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @WebPInitDecBufferInternal(ptr noundef nonnull %6, i32 noundef 528) #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %DecodeIntoRGBABuffer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  store ptr %6, ptr %5, align 8, !tbaa !27
  store i32 0, ptr %6, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %4, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !30
  %i.h = call fastcc i32 @DecodeInto(ptr noundef %0, i64 noundef %1, ptr noundef %5)
  %.not9.i = icmp eq i32 %i.h, 0
  %..i = select i1 %.not9.i, ptr %2, ptr null
  br label %DecodeIntoRGBABuffer.exit

DecodeIntoRGBABuffer.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @WebPDecodeRGBAInto(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WebPDecParams, align 8      ; 5 uses
  %6 = alloca %struct.WebPDecBuffer, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %DecodeIntoRGBABuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @WebPInitDecBufferInternal(ptr noundef nonnull %6, i32 noundef 528) #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %DecodeIntoRGBABuffer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  store ptr %6, ptr %5, align 8, !tbaa !27
  store i32 1, ptr %6, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %4, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !30
  %i.h = call fastcc i32 @DecodeInto(ptr noundef %0, i64 noundef %1, ptr noundef %5)
  %.not9.i = icmp eq i32 %i.h, 0
  %..i = select i1 %.not9.i, ptr %2, ptr null
  br label %DecodeIntoRGBABuffer.exit

DecodeIntoRGBABuffer.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @WebPDecodeARGBInto(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WebPDecParams, align 8      ; 5 uses
  %6 = alloca %struct.WebPDecBuffer, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %DecodeIntoRGBABuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @WebPInitDecBufferInternal(ptr noundef nonnull %6, i32 noundef 528) #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %DecodeIntoRGBABuffer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  store ptr %6, ptr %5, align 8, !tbaa !27
  store i32 4, ptr %6, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %4, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !30
  %i.h = call fastcc i32 @DecodeInto(ptr noundef %0, i64 noundef %1, ptr noundef %5)
  %.not9.i = icmp eq i32 %i.h, 0
  %..i = select i1 %.not9.i, ptr %2, ptr null
  br label %DecodeIntoRGBABuffer.exit

DecodeIntoRGBABuffer.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @WebPDecodeBGRInto(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WebPDecParams, align 8      ; 5 uses
  %6 = alloca %struct.WebPDecBuffer, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %DecodeIntoRGBABuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @WebPInitDecBufferInternal(ptr noundef nonnull %6, i32 noundef 528) #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %DecodeIntoRGBABuffer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  store ptr %6, ptr %5, align 8, !tbaa !27
  store i32 2, ptr %6, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %4, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !30
  %i.h = call fastcc i32 @DecodeInto(ptr noundef %0, i64 noundef %1, ptr noundef %5)
  %.not9.i = icmp eq i32 %i.h, 0
  %..i = select i1 %.not9.i, ptr %2, ptr null
  br label %DecodeIntoRGBABuffer.exit

DecodeIntoRGBABuffer.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @WebPDecodeBGRAInto(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WebPDecParams, align 8      ; 5 uses
  %6 = alloca %struct.WebPDecBuffer, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %DecodeIntoRGBABuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @WebPInitDecBufferInternal(ptr noundef nonnull %6, i32 noundef 528) #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %DecodeIntoRGBABuffer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  store ptr %6, ptr %5, align 8, !tbaa !27
  store i32 3, ptr %6, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %4, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !30
  %i.h = call fastcc i32 @DecodeInto(ptr noundef %0, i64 noundef %1, ptr noundef %5)
  %.not9.i = icmp eq i32 %i.h, 0
  %..i = select i1 %.not9.i, ptr %2, ptr null
  br label %DecodeIntoRGBABuffer.exit

DecodeIntoRGBABuffer.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @WebPDecodeYUVInto(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.WebPDecParams, align 8     ; 5 uses
  %12 = alloca %struct.WebPDecBuffer, align 8     ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @WebPInitDecBufferInternal(ptr noundef nonnull %12, i32 noundef 528) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  store ptr %12, ptr %11, align 8, !tbaa !27
  store i32 11, ptr %12, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 %4, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 %3, ptr %i.f, align 8, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %5, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 52
  store i32 %7, ptr %14, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 %6, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %8, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 %10, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i64 %9, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 1, ptr %i.k, align 4, !tbaa !30
  %i.l = call fastcc i32 @DecodeInto(ptr noundef %0, i64 noundef %1, ptr noundef %11)
  %.not14 = icmp eq i32 %i.l, 0
  %. = select i1 %.not14, ptr %2, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %., %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @DecodeInto(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.VP8Io, align 8              ; 14 uses
  %4 = alloca %struct.WebPHeaderStructure, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %0, ptr %4, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !8
  %i.e = call fastcc i32 @ParseHeadersInternal(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.b, ptr noundef null, ptr noundef nonnull %4)
  store volatile i32 %i.e, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.f = icmp eq i32 %.0..0..0..0..0..0.2.i, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.3.i = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.g = icmp eq i32 %.0..0..0..0..0..0.3.i, 7
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp ne i32 %i.h, 0
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %WebPParseHeaders.exit

bb.c:                                             ; preds = %bb.a
  %.old.i = load i32, ptr %i.b, align 4, !tbaa !8
  %.old1.not.i = icmp eq i32 %.old.i, 0
  br i1 %.old1.not.i, label %WebPParseHeaders.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store volatile i32 4, ptr %i.a, align 4, !tbaa !8
  br label %WebPParseHeaders.exit

WebPParseHeaders.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.0..0..0..0..0..0.4.i = load volatile i32, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i32 %.0..0..0..0..0..0.4.i, 0
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %WebPParseHeaders.exit
  %i.j = call i32 @VP8InitIoInternal(ptr noundef nonnull %3, i32 noundef 528) #8
  %.not55 = icmp eq i32 %i.j, 0
  br i1 %.not55, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %4, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %i.n, ptr %i.o, align 8, !tbaa !51
  %i.p = load i64, ptr %i.c, align 8, !tbaa !14
  %i.q = sub i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %i.q, ptr %i.r, align 8, !tbaa !52
  call void @WebPInitCustomIo(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21
  %.not56 = icmp eq i32 %i.t, 0
  br i1 %.not56, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = call ptr @VP8New() #8                    ; 9 uses
  %.not60 = icmp eq ptr %i.u, null
  br i1 %.not60, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2968
  store ptr %i.w, ptr %i.x, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 2976
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !66
  %i.ab = call i32 @VP8GetHeaders(ptr noundef nonnull %i.u, ptr noundef nonnull %3) #8
  %.not57 = icmp eq i32 %i.ab, 0
  br i1 %.not57, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %3, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = load ptr, ptr %2, align 8, !tbaa !27
  %i.ai = call i32 @WebPAllocateDecBuffer(i32 noundef %i.ac, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef %i.ah) #8 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.al = load i32, ptr %3, align 8, !tbaa !32
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.an = call i32 @VP8GetThreadMethod(ptr noundef %i.ak, ptr noundef nonnull %4, i32 noundef %i.al, i32 noundef %i.am) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !67
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !34
  call void @VP8InitDithering(ptr noundef %i.ap, ptr noundef nonnull %i.u) #8
  %i.aq = call i32 @VP8Decode(ptr noundef nonnull %i.u, ptr noundef nonnull %3) #8
  %.not58 = icmp eq i32 %i.aq, 0
  br i1 %.not58, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !68 ; 2 uses
  %.not59 = icmp eq i32 %i.as, 0
  br i1 %.not59, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.h
  %i.at = load i32, ptr %i.u, align 8, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.i, %bb.j
  %.040 = phi i32 [ 0, %bb.j ], [ %i.as, %bb.k ], [ %i.ai, %bb.i ], [ %i.at, %.sink.split ]
  call void @VP8Delete(ptr noundef nonnull %i.u) #8
  br label %bb.r

bb.m:                                             ; preds = %bb.f
  %i.au = call ptr @VP8LNew() #8                  ; 5 uses
  %.not63 = icmp eq ptr %i.au, null
  br i1 %.not63, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call i32 @VP8LDecodeHeader(ptr noundef nonnull %i.au, ptr noundef nonnull %3) #8
  %.not61 = icmp eq i32 %i.av, 0
  br i1 %.not61, label %.sink.split74, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %3, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.bb = load ptr, ptr %2, align 8, !tbaa !27
  %i.bc = call i32 @WebPAllocateDecBuffer(i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.bb) #8 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = call i32 @VP8LDecodeImage(ptr noundef nonnull %i.au) #8
  %.not62 = icmp eq i32 %i.be, 0
  br i1 %.not62, label %.sink.split74, label %bb.q

.sink.split74:                                    ; preds = %bb.p, %bb.n
  %i.bf = load i32, ptr %i.au, align 8, !tbaa !81
  br label %bb.q

bb.q:                                             ; preds = %.sink.split74, %bb.o, %bb.p
  %.2 = phi i32 [ 0, %bb.p ], [ %i.bc, %bb.o ], [ %i.bf, %.sink.split74 ]
  call void @VP8LDelete(ptr noundef nonnull %i.au) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.4 = phi i32 [ %.2, %bb.q ], [ %.040, %bb.l ]  ; 2 uses
  %.not64 = icmp eq i32 %.4, 0
  br i1 %.not64, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %2, align 8, !tbaa !27
  call void @WebPFreeDecBuffer(ptr noundef %i.bg) #8
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34 ; 2 uses
  %.not65 = icmp eq ptr %i.bi, null
  br i1 %.not65, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_0
