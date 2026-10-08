Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/jpegdec?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.my_error_mgr = type { %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.JPEGReadContext = type { %struct.jpeg_source_mgr, ptr, i64 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.ICCPSegment = type { ptr, i64, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error extracting JPEG metadata!\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"libjpeg error: \00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"`jpegtran -copy all` MAY be able to process this file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Exif\00\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"http://ns.adobe.com/xap/1.0/\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Ignoring additional '%s' marker\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"[ICCP] size (%d) / count (%d) / sequence number (%d) cannot be 0!\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"[ICCP] Inconsistent segment count (%d / %d)!\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"[ICCP] Duplicate segment number (%d)!\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"[ICCP] Discontinuous segments, expected: %d actual: %d!\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"[ICCP] Segment count: %d does not match expected: %d!\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @ReadJPEG(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %5 = alloca %struct.jpeg_decompress_struct, align 8 ; 21 uses
  %6 = alloca %struct.my_error_mgr, align 8       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca [1 x ptr], align 8                ; 6 uses
  %7 = alloca %struct.JPEGReadContext, align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr null, ptr %i.b, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq i64 %1, 0
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %1, ptr %i.h, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %5, i8 0, i64 656, i1 false)
  %i.i = call ptr @jpeg_std_error(ptr noundef nonnull %6) #17
  store volatile ptr %i.i, ptr %5, align 8, !tbaa !38
  store ptr @my_error_exit, ptr %6, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.k = call i32 @_setjmp(ptr noundef nonnull %i.j) #18
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.f, %bb.g, %bb.e, %bb.b, %bb.l
  call void @MetadataFree(ptr noundef %4) #17
  call void @jpeg_destroy_decompress(ptr noundef nonnull %5) #17
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @jpeg_CreateDecompress(ptr noundef nonnull %5, i32 noundef 80, i64 noundef 656) #17
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store volatile ptr %7, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @ContextInit, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @ContextFill, ptr %i.n, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr @ContextSkip, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr @jpeg_resync_to_restart, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr @ContextTerm, ptr %i.q, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %.not40 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @jpeg_save_markers(ptr noundef nonnull %5, i32 noundef 225, i32 noundef 65535) #17
  call void @jpeg_save_markers(ptr noundef nonnull %5, i32 noundef 226, i32 noundef 65535) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = call i32 @jpeg_read_header(ptr noundef nonnull %5, i32 noundef 1) #17 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  store volatile i32 2, ptr %i.s, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 100
  store volatile i32 1, ptr %i.t, align 4, !tbaa !59
  %i.u = call i32 @jpeg_start_decompress(ptr noundef nonnull %5) #17 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 148 ; 2 uses
  %i.w = load volatile i32, ptr %i.v, align 4, !tbaa !60
  %.not41 = icmp eq i32 %i.w, 3
  br i1 %.not41, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.y = load volatile i32, ptr %i.x, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 3 uses
  %i.aa = load volatile i32, ptr %i.z, align 4, !tbaa !62 ; 2 uses
  %i.ab = load volatile i32, ptr %i.x, align 8, !tbaa !61
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load volatile i32, ptr %i.v, align 4, !tbaa !60
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.ac                ; 5 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add nsw i64 %i.af, 2147483648
  %.not42 = icmp ult i64 %i.ah, 4294967296
  br i1 %.not42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ai = sext i32 %i.aa to i64                   ; 2 uses
  %i.aj = call i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64 noundef %i.af, i64 noundef %i.ai) #17
  %.not43 = icmp eq i32 %i.aj, 0
  br i1 %.not43, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = mul nsw i64 %i.af, %i.ai
  %i.al = call noalias ptr @malloc(i64 noundef %i.ak) #19
  store volatile ptr %i.al, ptr %i.b, align 8, !tbaa !51
  %.0..0..0..0. = load volatile ptr, ptr %i.b, align 8, !tbaa !51
  %i.am = icmp eq ptr %.0..0..0..0., null
  br i1 %i.am, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.0..0..0..0.4 = load volatile ptr, ptr %i.b, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  store ptr %.0..0..0..0.4, ptr %i.c, align 8, !tbaa !51
  %i.ao = load volatile i32, ptr %i.an, align 8, !tbaa !63
  %i.ap = load volatile i32, ptr %i.z, align 4, !tbaa !62
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.ar = call i32 @jpeg_read_scanlines(ptr noundef nonnull %5, ptr noundef nonnull %i.c, i32 noundef 1) #17
  %.not46 = icmp eq i32 %i.ar, 1
  br i1 %.not46, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.af
  store ptr %i.at, ptr %i.c, align 8, !tbaa !51
  %i.au = load volatile i32, ptr %i.an, align 8, !tbaa !63
  %i.av = load volatile i32, ptr %i.z, align 4, !tbaa !62
  %i.aw = icmp ult i32 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.j, %bb.i
  br i1 %.not40, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ax = call fastcc i32 @ExtractMetadataFromJPEG(ptr noundef %5, ptr noundef %4)
  store volatile i32 %i.ax, ptr %i.a, align 4, !tbaa !50
  %.0..0..0..0.16 = load volatile i32, ptr %i.a, align 4, !tbaa !50
  %.not44 = icmp eq i32 %.0..0..0..0.16, 0
  br i1 %.not44, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !44
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %i.ay) #20 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %._crit_edge
  %i.az = call i32 @jpeg_finish_decompress(ptr noundef nonnull %5) #17 ; 0 uses
  call void @jpeg_destroy_decompress(ptr noundef nonnull %5) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.y, ptr %i.ba, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 %i.aa, ptr %i.bb, align 4, !tbaa !67
  %.0..0..0..0.5 = load volatile ptr, ptr %i.b, align 8, !tbaa !51
  %i.bc = call i32 @WebPPictureImportRGB(ptr noundef %2, ptr noundef %.0..0..0..0.5, i32 noundef %i.ag) #17
  store volatile i32 %i.bc, ptr %i.a, align 4, !tbaa !50
  %.0..0..0..0.17 = load volatile i32, ptr %i.a, align 4, !tbaa !50
  %.not45 = icmp eq i32 %.0..0..0..0.17, 0
  br i1 %.not45, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !66
  store i32 0, ptr %i.bb, align 4, !tbaa !67
  call void @MetadataFree(ptr noundef %4) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.loopexit
  %.0..0..0..0.6 = load volatile ptr, ptr %i.b, align 8, !tbaa !51
  call void @free(ptr noundef %.0..0..0..0.6) #17
  %.0..0..0..0.18 = load volatile i32, ptr %i.a, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.0 = phi i32 [ %.0..0..0..0.18, %bb.o ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind uwtable
define internal void @my_error_exit(ptr noundef %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !70
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !44
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %i.d) #20 ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  tail call void %i.g(ptr noundef nonnull %0) #17
  switch i32 %i.c, label %bb.c [
    i32 43, label %bb.b
    i32 36, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !44
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 55, i64 1, ptr %i.h) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.i, i32 noundef 1) #21
  unreachable
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

declare void @MetadataFree(ptr noundef) local_unnamed_addr #3

declare void @jpeg_destroy_decompress(ptr noundef) local_unnamed_addr #3

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #3
end_hunk_0
