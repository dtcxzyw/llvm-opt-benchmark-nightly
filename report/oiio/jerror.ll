Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jerror?download=true
begin_hunk_0
@.str.48 = private unnamed_addr constant [39 x i8] c"Invalid color quantization mode change\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"Requested features are incompatible\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"Requested feature was omitted at compile time\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"Arithmetic table 0x%02x was not defined\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Memory limit exceeded\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"JPEG datastream contains no image\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"Insufficient memory (case %d)\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"Cannot quantize more than %d color components\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"Failed to create temporary file %s\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"Read failed on temporary file\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"Seek failed on temporary file\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"Application transferred too few scanlines\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"Virtual array controller messed up\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"Image too wide for this implementation\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"Read from XMS failed\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"Write to XMS failed\00", align 1
@.str.76 = private unnamed_addr constant [66 x i8] c"Copyright (C) 1991-2025 The libjpeg-turbo Project and many others\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"8d  15-Jan-2012\00", align 1
@.str.78 = private unnamed_addr constant [62 x i8] c"Caution: quantization tables are too coarse for baseline JPEG\00", align 1
@.str.79 = private unnamed_addr constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 1
@.str.84 = private unnamed_addr constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"Define Restart Interval %u\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"Freed EMS handle %u\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"Obtained EMS handle %u\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"End Of Image\00", align 1
@.str.89 = private unnamed_addr constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 1
@.str.90 = private unnamed_addr constant [53 x i8] c"JFIF APP0 marker: version %d.%02d, density %dx%d  %d\00", align 1
@.str.91 = private unnamed_addr constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 1
@.str.92 = private unnamed_addr constant [46 x i8] c"JFIF extension marker: type 0x%02x, length %u\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"    with %d x %d thumbnail image\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"Miscellaneous marker 0x%02x, length %u\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"Unexpected marker 0x%02x\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 1
@.str.97 = private unnamed_addr constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"Quantizing to %d colors\00", align 1
@.str.99 = private unnamed_addr constant [36 x i8] c"Selected %d colors for quantization\00", align 1
@.str.100 = private unnamed_addr constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"RST%d\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 1
@.str.103 = private unnamed_addr constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 1
@.str.104 = private unnamed_addr constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"Start of Image\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"Start Of Scan: %d components\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"Closed temporary file %s\00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"Opened temporary file %s\00", align 1
@.str.111 = private unnamed_addr constant [66 x i8] c"JFIF extension marker: JPEG-compressed thumbnail image, length %u\00", align 1
@.str.112 = private unnamed_addr constant [58 x i8] c"JFIF extension marker: palette thumbnail image, length %u\00", align 1
@.str.113 = private unnamed_addr constant [54 x i8] c"JFIF extension marker: RGB thumbnail image, length %u\00", align 1
@.str.114 = private unnamed_addr constant [78 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr (lossy) or RGB (lossless)\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"Freed XMS handle %u\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"Obtained XMS handle %u\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"Corrupt JPEG data: bad arithmetic code\00", align 1
@.str.119 = private unnamed_addr constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 1
@.str.120 = private unnamed_addr constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 1
@.str.121 = private unnamed_addr constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 1
@.str.122 = private unnamed_addr constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 1
@.str.123 = private unnamed_addr constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 1
@.str.124 = private unnamed_addr constant [27 x i8] c"Premature end of JPEG file\00", align 1
@.str.125 = private unnamed_addr constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 1
@.str.126 = private unnamed_addr constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 1
@.str.127 = private unnamed_addr constant [43 x i8] c"Application transferred too many scanlines\00", align 1
@.str.128 = private unnamed_addr constant [34 x i8] c"Corrupt JPEG data: bad ICC marker\00", align 1
@.str.129 = private unnamed_addr constant [98 x i8] c"Invalid restart interval %d; must be an integer multiple of the number of MCUs in an MCU row (%d)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @jpeg_std_error(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 168)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  store ptr @error_exit, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @emit_message, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @output_message, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @format_message, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @reset_error_mgr, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @jpeg_std_message_table, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 128, ptr %i.g, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: cold noreturn nounwind uwtable
define internal void @error_exit(ptr noundef %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void %i.c(ptr noundef nonnull %0) #11
  tail call void @jpeg_destroy(ptr noundef nonnull %0) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @emit_message(ptr noundef %0, i32 noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  tail call void %i.j(ptr noundef nonnull %0) #11
  %.pre = load i64, ptr %i.c, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr %i.c, align 8, !tbaa !24
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %.not = icmp slt i32 %i.n, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  tail call void %i.p(ptr noundef nonnull %0) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @output_message(ptr noundef %0) #4 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.f = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @format_message(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 7 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %.not = icmp sgt i32 %i.c, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %2 = zext nneg i32 %i.c to i64
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not42 = icmp eq ptr %i.j, null
  br i1 %.not42, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.l = load i32, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %.not43 = icmp slt i32 %i.c, %i.l
  br i1 %.not43, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %.not44 = icmp sgt i32 %i.c, %i.n
  br i1 %.not44, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = sub nsw i32 %i.c, %i.l
  %4 = sext i32 %i.o to i64
  %5 = getelementptr inbounds [8 x i8], ptr %i.j, i64 %4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.037.in = phi ptr [ %3, %bb.c ], [ %5, %bb.g ]
  %.037 = load ptr, ptr %.037.in, align 8, !tbaa !32 ; 2 uses
  %i.p = icmp eq ptr %.037, null
  br i1 %i.p, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.c, ptr %i.q, align 4, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.1 = phi ptr [ %i.t, %.thread ], [ %.037, %bb.h ] ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.036 = phi ptr [ %.1, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.036, i64 1 ; 2 uses
  %i.v = load i8, ptr %.036, align 1, !tbaa !34
  switch i8 %i.v, label %bb.j [
    i8 0, label %.critedge
    i8 37, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = load i8, ptr %i.u, align 1, !tbaa !34
  %.not48 = icmp eq i8 %i.w, 115
  br i1 %.not48, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.y = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 200, ptr noundef %.1, ptr noundef nonnull %i.x) #11 ; 0 uses
  br label %bb.m

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !34
  %i.ap = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 200, ptr noundef %.1, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @reset_error_mgr(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !28
  ret void
}

declare void @jpeg_destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !10, i64 128, !11, i64 136, !4, i64 144, !11, i64 152, !4, i64 160, !4, i64 164}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"p2 omnipotent char", !12, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!8, !9, i64 8}
!14 = !{!8, !9, i64 16}
!15 = !{!8, !9, i64 24}
!16 = !{!8, !9, i64 32}
!17 = !{!8, !11, i64 136}
!18 = !{!8, !4, i64 144}
!19 = !{!20, !21, i64 0}
!20 = !{!"jpeg_common_struct", !21, i64 0, !22, i64 8, !23, i64 16, !9, i64 24, !4, i64 32, !4, i64 36}
!21 = !{!"p1 _ZTS14jpeg_error_mgr", !9, i64 0}
!22 = !{!"p1 _ZTS15jpeg_memory_mgr", !9, i64 0}
!23 = !{!"p1 _ZTS17jpeg_progress_mgr", !9, i64 0}
!24 = !{!8, !10, i64 128}
!25 = !{!8, !4, i64 124}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!28 = !{!8, !4, i64 40}
!29 = !{!8, !11, i64 152}
!30 = !{!8, !4, i64 160}
!31 = !{!8, !4, i64 164}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 omnipotent char", !9, i64 0}
!34 = !{!5, !5, i64 0}
end_hunk_0
