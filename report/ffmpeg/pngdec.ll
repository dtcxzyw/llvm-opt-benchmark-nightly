Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pngdec?download=true
inline.NumInlined: 45
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.AVBPrint = type { ptr, i32, i32, i32, [1 x i8], [1000 x i8] }
%struct.AVColorPrimariesDesc = type { %struct.AVCIExy, %struct.AVPrimaryCoefficients }
%struct.AVCIExy = type { %struct.AVRational, %struct.AVRational }
%struct.AVRational = type { i32, i32 }
%struct.AVPrimaryCoefficients = type { %struct.AVCIExy, %struct.AVCIExy, %struct.AVCIExy }
%struct.FFZStream = type { %struct.z_stream_s, i32 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"apng\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"APNG (Animated Portable Network Graphics) image\00", align 1
@ff_apng_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 207, i32 4098, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 66, i8 2, i8 0, i8 1, i32 1608, ptr @update_thread_context, ptr null, ptr null, ptr @png_dec_init, %union.anon { ptr @decode_frame_apng }, ptr @png_dec_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"PNG (Portable Network Graphics) image\00", align 1
@ff_png_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 0, i32 61, i32 4098, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 74, i8 2, i8 0, i8 1, i32 1608, ptr @update_thread_context, ptr null, ptr null, ptr @png_dec_init, %union.anon { ptr @decode_frame_png }, ptr @png_dec_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Frame did not contain a complete image\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%d bytes left\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"chunk too big\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"CRC mismatch in chunk\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c", quitting\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c", skipping\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"png: tag=%s length=%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Broken tEXt chunk\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Broken zTXt chunk\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Unknown value in sTER chunk (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"nonzero cICP matrix\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"invalid cICP range: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%i/%i\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Invalid cLLI chunk size: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Invalid mDCV chunk size: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"IEND without all image\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"unable to attach EXIF buffer\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"s->bit_depth > 1\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"libavcodec/pngdec.c\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"IHDR after IDAT\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Multiple IHDR\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Invalid image size\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Invalid bit depth\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Invalid compression method %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [96 x i8] c"width=%d height=%d depth=%d color_type=%d compression_type=%d filter_type=%d interlace_type=%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"pHYs after IDAT\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"fctl before IHDR\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"fctl after IDAT\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Invalid blend_op %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"IDAT without IHDR\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Bit depth %d color type %d\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"bit depth %d and color type %d with TRNS\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"unrecognized cICP primaries\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"unrecognized cICP transfer\0A\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"tv-range cICP tag found. Colors may be wrong\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"unknown cHRM primaries\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"inflate returned error %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"%d undecompressed bytes left in buffer\0A\00", align 1
@ff_png_pass_ymask = external local_unnamed_addr constant [7 x i8], align 1
@png_pass_dsp_ymask = internal unnamed_addr constant [7 x i8] c"\FF\FF\0F\FF3\FFU", align 1
@png_pass_mask = internal unnamed_addr constant [7 x i8] c"\01\01\11\11UU\FF", align 1
@png_pass_dsp_mask = internal unnamed_addr constant [7 x i8] c"\FF\0F\FF3\FFU\FF", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"trns before IHDR\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"trns after IDAT\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Raw profile type exif\00", align 1
@.str.51 = private unnamed_addr constant [56 x i8] c"Compressed PNG chunk expands beyond %d bytes, aborting\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"iCCP with invalid name!\0A\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"iCCP with invalid compression!\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"sBIT before IHDR\0A\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"Ignoring illegal sBIT chunk after IDAT\0A\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"Invalid sBIT size: %d, expected: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Invalid significant bits: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"eXIf before IHDR\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"Blending with pixel format %s\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"bpp <= 10\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"Invalid PNG signature 0x%08lX.\0A\00", align 1
@switch.table.decode_frame_common = private unnamed_addr constant [33 x i8] c"\00\01\01\01\01\01\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\00", align 1
@switch.table.decode_frame_common.5 = private unnamed_addr constant [33 x i8] [i8 26, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 56, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 109, i8 poison, i8 poison, i8 poison, i8 poison, i8 104], align 4

; Function Attrs: nounwind uwtable
define void @ff_png_filter_row(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 8 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 5 uses
  switch i32 %2, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %.preheader
    i32 2, label %bb.g
    i32 3, label %.preheader334
    i32 4, label %.preheader335
  ]

.preheader335:                                    ; preds = %bb.a
  %i.d = icmp sgt i32 %6, 0
  br i1 %i.d, label %iter.check, label %._crit_edge.thread

iter.check:                                       ; preds = %.preheader335
  %wide.trip.count = zext nneg i32 %6 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.c, %i.b
  %diff.check505 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check505
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check506 = icmp ult i32 %6, 32
  br i1 %min.iters.check506, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !9
  %wide.load507 = load <16 x i8>, ptr %i.i, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load508 = load <16 x i8>, ptr %i.j, align 1, !tbaa !9
  %wide.load509 = load <16 x i8>, ptr %i.k, align 1, !tbaa !9
  %i.l = add <16 x i8> %wide.load508, %wide.load
  %i.m = add <16 x i8> %wide.load509, %wide.load507
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <16 x i8> %i.l, ptr %i.n, align 1, !tbaa !9
  store <16 x i8> %i.m, ptr %i.o, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec510 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index511 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next514, %vec.epilog.vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %index511
  %wide.load512 = load <4 x i8>, ptr %i.q, align 1, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %index511
  %wide.load513 = load <4 x i8>, ptr %i.r, align 1, !tbaa !9
  %i.s = add <4 x i8> %wide.load513, %wide.load512
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index511
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !9
  %index.next514 = add nuw i64 %index511, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next514, %n.vec510
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n515 = icmp eq i64 %n.vec510, %wide.trip.count
  br i1 %cmp.n515, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec510, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = add i8 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !112

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.preheader334:                                    ; preds = %bb.a
  %i.ad = icmp sgt i32 %6, 0
  br i1 %i.ad, label %iter.check535, label %._crit_edge339

iter.check535:                                    ; preds = %.preheader334
  %wide.trip.count426 = zext nneg i32 %6 to i64   ; 8 uses
  %min.iters.check520 = icmp ult i32 %6, 4
  br i1 %min.iters.check520, label %.lr.ph338.preheader, label %vector.memcheck516

vector.memcheck516:                               ; preds = %iter.check535
  %i.ae = sub i64 %i.a, %i.b
  %diff.check517 = icmp ugt i64 %i.ae, -32
  %i.af = sub i64 %i.c, %i.b
  %diff.check518 = icmp ugt i64 %i.af, -32
  %conflict.rdx519 = or i1 %diff.check517, %diff.check518
  br i1 %conflict.rdx519, label %.lr.ph338.preheader, label %vector.main.loop.iter.check521

vector.main.loop.iter.check521:                   ; preds = %vector.memcheck516
  %min.iters.check522 = icmp ult i32 %6, 32
  br i1 %min.iters.check522, label %vec.epilog.ph539, label %vector.ph523

vector.ph523:                                     ; preds = %vector.main.loop.iter.check521
  %i.ag = and i64 %wide.trip.count426, 28
  %n.vec524 = and i64 %wide.trip.count426, 2147483616 ; 4 uses
  br label %vector.body525

vector.body525:                                   ; preds = %vector.ph523, %vector.body525
  %index526 = phi i64 [ 0, %vector.ph523 ], [ %index.next531, %vector.body525 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %index526 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load527 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !9
  %wide.load528 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !9
  %i.aj = lshr <16 x i8> %wide.load527, splat (i8 1)
  %i.ak = lshr <16 x i8> %wide.load528, splat (i8 1)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %index526 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load529 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %wide.load530 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = add <16 x i8> %i.aj, %wide.load529
  %i.ao = add <16 x i8> %i.ak, %wide.load530
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %index526 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !9
  %index.next531 = add nuw i64 %index526, 32      ; 2 uses
  %i.ar = icmp eq i64 %index.next531, %n.vec524
  br i1 %i.ar, label %middle.block532, label %vector.body525, !llvm.loop !113

middle.block532:                                  ; preds = %vector.body525
  %cmp.n533 = icmp eq i64 %n.vec524, %wide.trip.count426
  br i1 %cmp.n533, label %._crit_edge339, label %vec.epilog.iter.check537

vec.epilog.iter.check537:                         ; preds = %middle.block532
  %min.epilog.iters.check538 = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check538, label %.lr.ph338.preheader, label %vec.epilog.ph539, !prof !13

vec.epilog.ph539:                                 ; preds = %vector.main.loop.iter.check521, %vec.epilog.iter.check537
  %vec.epilog.resume.val534 = phi i64 [ %n.vec524, %vec.epilog.iter.check537 ], [ 0, %vector.main.loop.iter.check521 ]
  %n.vec540 = and i64 %wide.trip.count426, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body541

vec.epilog.vector.body541:                        ; preds = %vec.epilog.vector.body541, %vec.epilog.ph539
  %index542 = phi i64 [ %vec.epilog.resume.val534, %vec.epilog.ph539 ], [ %index.next545, %vec.epilog.vector.body541 ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %index542
  %wide.load543 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %i.at = lshr <4 x i8> %wide.load543, splat (i8 1)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %index542
  %wide.load544 = load <4 x i8>, ptr %i.au, align 1, !tbaa !9
  %i.av = add <4 x i8> %i.at, %wide.load544
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %index542
  store <4 x i8> %i.av, ptr %i.aw, align 1, !tbaa !9
  %index.next545 = add nuw i64 %index542, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next545, %n.vec540
  br i1 %i.ax, label %vec.epilog.middle.block546, label %vec.epilog.vector.body541, !llvm.loop !114

vec.epilog.middle.block546:                       ; preds = %vec.epilog.vector.body541
  %cmp.n547 = icmp eq i64 %n.vec540, %wide.trip.count426
  br i1 %cmp.n547, label %._crit_edge339, label %.lr.ph338.preheader

.lr.ph338.preheader:                              ; preds = %iter.check535, %vector.memcheck516, %vec.epilog.iter.check537, %vec.epilog.middle.block546
  %indvars.iv423.ph = phi i64 [ 0, %iter.check535 ], [ 0, %vector.memcheck516 ], [ %n.vec524, %vec.epilog.iter.check537 ], [ %n.vec540, %vec.epilog.middle.block546 ] ; 6 uses
  %xtraiter659 = and i64 %wide.trip.count426, 1
  %lcmp.mod660.not = icmp eq i64 %xtraiter659, 0
  br i1 %lcmp.mod660.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol

.lr.ph338.prol:                                   ; preds = %.lr.ph338.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv423.ph
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = lshr i8 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv423.ph
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = add i8 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv423.ph
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !9
  %indvars.iv.next424.prol = or disjoint i64 %indvars.iv423.ph, 1
  br label %.lr.ph338.prol.loopexit

.lr.ph338.prol.loopexit:                          ; preds = %.lr.ph338.prol, %.lr.ph338.preheader
  %indvars.iv423.unr = phi i64 [ %indvars.iv423.ph, %.lr.ph338.preheader ], [ %indvars.iv.next424.prol, %.lr.ph338.prol ]
  %i.bf = add nsw i64 %wide.trip.count426, -1
  %i.bg = icmp eq i64 %indvars.iv423.ph, %i.bf
  br i1 %i.bg, label %._crit_edge339, label %.lr.ph338

.preheader:                                       ; preds = %bb.a
  %i.bh = icmp sgt i32 %6, 0
  br i1 %i.bh, label %iter.check600, label %._crit_edge376

iter.check600:                                    ; preds = %.preheader
  %wide.trip.count446 = zext nneg i32 %6 to i64   ; 8 uses
  %min.iters.check587 = icmp ult i32 %6, 4
  %i.bi = sub i64 %i.c, %i.b
  %diff.check586 = icmp ugt i64 %i.bi, -32
  %or.cond647 = or i1 %min.iters.check587, %diff.check586
  br i1 %or.cond647, label %.lr.ph375.preheader, label %vector.main.loop.iter.check588

vector.main.loop.iter.check588:                   ; preds = %iter.check600
  %min.iters.check589 = icmp ult i32 %6, 32
  br i1 %min.iters.check589, label %vec.epilog.ph604, label %vector.ph590

vector.ph590:                                     ; preds = %vector.main.loop.iter.check588
  %i.bj = and i64 %wide.trip.count446, 28
  %n.vec591 = and i64 %wide.trip.count446, 2147483616 ; 4 uses
  br label %vector.body592

vector.body592:                                   ; preds = %vector.ph590, %vector.body592
  %index593 = phi i64 [ 0, %vector.ph590 ], [ %index.next596, %vector.body592 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %index593 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load594 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !9
  %wide.load595 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %index593 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load594, ptr %i.bm, align 1, !tbaa !9
  store <16 x i8> %wide.load595, ptr %i.bn, align 1, !tbaa !9
  %index.next596 = add nuw i64 %index593, 32      ; 2 uses
  %i.bo = icmp eq i64 %index.next596, %n.vec591
  br i1 %i.bo, label %middle.block597, label %vector.body592, !llvm.loop !115

middle.block597:                                  ; preds = %vector.body592
  %cmp.n598 = icmp eq i64 %n.vec591, %wide.trip.count446
  br i1 %cmp.n598, label %._crit_edge376, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block597
  %min.epilog.iters.check603 = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check603, label %.lr.ph375.preheader, label %vec.epilog.ph604, !prof !13

vec.epilog.ph604:                                 ; preds = %vector.main.loop.iter.check588, %vec.epilog.iter.check602
  %vec.epilog.resume.val599 = phi i64 [ %n.vec591, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check588 ]
  %n.vec605 = and i64 %wide.trip.count446, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body606

vec.epilog.vector.body606:                        ; preds = %vec.epilog.vector.body606, %vec.epilog.ph604
  %index607 = phi i64 [ %vec.epilog.resume.val599, %vec.epilog.ph604 ], [ %index.next609, %vec.epilog.vector.body606 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 %index607
  %wide.load608 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %index607
  store <4 x i8> %wide.load608, ptr %i.bq, align 1, !tbaa !9
  %index.next609 = add nuw i64 %index607, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next609, %n.vec605
  br i1 %i.br, label %vec.epilog.middle.block610, label %vec.epilog.vector.body606, !llvm.loop !116

vec.epilog.middle.block610:                       ; preds = %vec.epilog.vector.body606
  %cmp.n611 = icmp eq i64 %n.vec605, %wide.trip.count446
  br i1 %cmp.n611, label %._crit_edge376, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %iter.check600, %vec.epilog.iter.check602, %vec.epilog.middle.block610
  %indvars.iv443.ph = phi i64 [ 0, %iter.check600 ], [ %n.vec591, %vec.epilog.iter.check602 ], [ %n.vec605, %vec.epilog.middle.block610 ] ; 3 uses
  %xtraiter668 = and i64 %wide.trip.count446, 3   ; 2 uses
  %lcmp.mod669.not = icmp eq i64 %xtraiter668, 0
  br i1 %lcmp.mod669.not, label %.lr.ph375.prol.loopexit, label %.lr.ph375.prol

.lr.ph375.prol:                                   ; preds = %.lr.ph375.preheader, %.lr.ph375.prol
  %indvars.iv443.prol = phi i64 [ %indvars.iv.next444.prol, %.lr.ph375.prol ], [ %indvars.iv443.ph, %.lr.ph375.preheader ] ; 3 uses
  %prol.iter670 = phi i64 [ %prol.iter670.next, %.lr.ph375.prol ], [ 0, %.lr.ph375.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv443.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv443.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !9
  %indvars.iv.next444.prol = add nuw nsw i64 %indvars.iv443.prol, 1 ; 2 uses
  %prol.iter670.next = add i64 %prol.iter670, 1   ; 2 uses
  %prol.iter670.cmp.not = icmp eq i64 %prol.iter670.next, %xtraiter668
  br i1 %prol.iter670.cmp.not, label %.lr.ph375.prol.loopexit, label %.lr.ph375.prol, !llvm.loop !117

.lr.ph375.prol.loopexit:                          ; preds = %.lr.ph375.prol, %.lr.ph375.preheader
  %indvars.iv443.unr = phi i64 [ %indvars.iv443.ph, %.lr.ph375.preheader ], [ %indvars.iv.next444.prol, %.lr.ph375.prol ]
  %i.bv = sub nsw i64 %indvars.iv443.ph, %wide.trip.count446
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge376, label %.lr.ph375

bb.b:                                             ; preds = %bb.a
  %i.bx = sext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %i.bx, i1 false)
  br label %.loopexit

.lr.ph375:                                        ; preds = %.lr.ph375.prol.loopexit, %.lr.ph375
  %indvars.iv443 = phi i64 [ %indvars.iv.next444.3, %.lr.ph375 ], [ %indvars.iv443.unr, %.lr.ph375.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv443
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv443
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !9
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next444
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next444
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !9
  %indvars.iv.next444.1 = add nuw nsw i64 %indvars.iv443, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next444.1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next444.1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !9
  %indvars.iv.next444.2 = add nuw nsw i64 %indvars.iv443, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next444.2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next444.2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9
  %indvars.iv.next444.3 = add nuw nsw i64 %indvars.iv443, 4 ; 2 uses
  %exitcond447.not.3 = icmp eq i64 %indvars.iv.next444.3, %wide.trip.count446
  br i1 %exitcond447.not.3, label %._crit_edge376, label %.lr.ph375, !llvm.loop !118

._crit_edge376:                                   ; preds = %.lr.ph375.prol.loopexit, %.lr.ph375, %middle.block597, %vec.epilog.middle.block610, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %6, %middle.block597 ], [ %6, %vec.epilog.middle.block610 ], [ %6, %.lr.ph375 ], [ %6, %.lr.ph375.prol.loopexit ] ; 12 uses
  switch i32 %6, label %.loopexit326 [
    i32 4, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge376
  %i.ck = icmp slt i32 %.0.lcssa, %5
  br i1 %i.ck, label %.lr.ph402.preheader, label %.loopexit

.lr.ph402.preheader:                              ; preds = %bb.c
  %i.cl = load i32, ptr %1, align 4, !tbaa !15
  %i.cm = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph402

.lr.ph402:                                        ; preds = %.lr.ph402.preheader, %.lr.ph402
  %indvars.iv456 = phi i64 [ %i.cm, %.lr.ph402.preheader ], [ %indvars.iv.next457, %.lr.ph402 ] ; 3 uses
  %.0292399 = phi i32 [ %i.cl, %.lr.ph402.preheader ], [ %i.cu, %.lr.ph402 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv456
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = and i32 %i.co, 2139062143
  %i.cq = and i32 %.0292399, 2139062143
  %i.cr = add nuw i32 %i.cp, %i.cq
  %i.cs = xor i32 %i.co, %.0292399
  %i.ct = and i32 %i.cs, -2139062144
  %i.cu = xor i32 %i.cr, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv456
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !15
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 4 ; 2 uses
  %i.cw = trunc nuw i64 %indvars.iv.next457 to i32
  %i.cx = icmp sgt i32 %5, %i.cw
  br i1 %i.cx, label %.lr.ph402, label %.loopexit, !llvm.loop !119

bb.d:                                             ; preds = %._crit_edge376
  %.not324.not393 = icmp slt i32 %.0.lcssa, %5
  br i1 %.not324.not393, label %.lr.ph397.preheader, label %.loopexit326

.lr.ph397.preheader:                              ; preds = %bb.d
  %i.cy = load i8, ptr %1, align 1, !tbaa !9      ; 2 uses
  %i.cz = zext nneg i32 %.0.lcssa to i64          ; 4 uses
  %wide.trip.count454 = zext nneg i32 %5 to i64   ; 3 uses
  %i.da = sub nsw i64 %wide.trip.count454, %i.cz
  %xtraiter671 = and i64 %i.da, 3                 ; 2 uses
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  br i1 %lcmp.mod672.not, label %.lr.ph397.prol.loopexit, label %.lr.ph397.prol

.lr.ph397.prol:                                   ; preds = %.lr.ph397.preheader, %.lr.ph397.prol
  %indvars.iv452.prol = phi i64 [ %indvars.iv.next453.prol, %.lr.ph397.prol ], [ %i.cz, %.lr.ph397.preheader ] ; 3 uses
  %.0284394.prol = phi i8 [ %i.dd, %.lr.ph397.prol ], [ %i.cy, %.lr.ph397.preheader ]
  %prol.iter673 = phi i64 [ %prol.iter673.next, %.lr.ph397.prol ], [ 0, %.lr.ph397.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv452.prol
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = add i8 %i.dc, %.0284394.prol            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv452.prol
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !9
  %indvars.iv.next453.prol = add nuw nsw i64 %indvars.iv452.prol, 1 ; 2 uses
  %prol.iter673.next = add i64 %prol.iter673, 1   ; 2 uses
  %prol.iter673.cmp.not = icmp eq i64 %prol.iter673.next, %xtraiter671
  br i1 %prol.iter673.cmp.not, label %.lr.ph397.prol.loopexit, label %.lr.ph397.prol, !llvm.loop !120

.lr.ph397.prol.loopexit:                          ; preds = %.lr.ph397.prol, %.lr.ph397.preheader
  %indvars.iv452.unr = phi i64 [ %i.cz, %.lr.ph397.preheader ], [ %indvars.iv.next453.prol, %.lr.ph397.prol ]
  %.0284394.unr = phi i8 [ %i.cy, %.lr.ph397.preheader ], [ %i.dd, %.lr.ph397.prol ]
  %i.df = sub nsw i64 %i.cz, %wide.trip.count454
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %.loopexit, label %.lr.ph397

.lr.ph397:                                        ; preds = %.lr.ph397.prol.loopexit, %.lr.ph397
  %indvars.iv452 = phi i64 [ %indvars.iv.next453.3, %.lr.ph397 ], [ %indvars.iv452.unr, %.lr.ph397.prol.loopexit ] ; 6 uses
  %.0284394 = phi i8 [ %i.dv, %.lr.ph397 ], [ %.0284394.unr, %.lr.ph397.prol.loopexit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv452
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dj = add i8 %i.di, %.0284394                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv452
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !9
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next453
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = add i8 %i.dm, %i.dj                     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next453
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !9
  %indvars.iv.next453.1 = add nuw nsw i64 %indvars.iv452, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next453.1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = add i8 %i.dq, %i.dn                     ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next453.1
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !9
  %indvars.iv.next453.2 = add nuw nsw i64 %indvars.iv452, 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next453.2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dv = add i8 %i.du, %i.dr                     ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next453.2
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !9
  %indvars.iv.next453.3 = add nuw nsw i64 %indvars.iv452, 4 ; 2 uses
  %exitcond455.not.3 = icmp eq i64 %indvars.iv.next453.3, %wide.trip.count454
  br i1 %exitcond455.not.3, label %.loopexit, label %.lr.ph397, !llvm.loop !121

bb.e:                                             ; preds = %._crit_edge376
  %i.dx = add nsw i32 %5, -2                      ; 2 uses
  %.not323386 = icmp sgt i32 %.0.lcssa, %i.dx
  br i1 %.not323386, label %.loopexit326, label %.lr.ph391.preheader

.lr.ph391.preheader:                              ; preds = %bb.e
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = load i8, ptr %1, align 1, !tbaa !9
  %i.eb = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph391

.lr.ph391:                                        ; preds = %.lr.ph391.preheader, %.lr.ph391
  %indvars.iv450 = phi i64 [ %i.eb, %.lr.ph391.preheader ], [ %indvars.iv.next451, %.lr.ph391 ] ; 4 uses
  %.0278388 = phi i8 [ %i.dz, %.lr.ph391.preheader ], [ %i.ej, %.lr.ph391 ]
  %.1285387 = phi i8 [ %i.ea, %.lr.ph391.preheader ], [ %i.ee, %.lr.ph391 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv450
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.ee = add i8 %i.ed, %.1285387                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv450
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !9
  %i.eg = add nuw nsw i64 %indvars.iv450, 1       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ej = add i8 %i.ei, %.0278388                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %i.eg
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !9
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 2 ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv.next451 to i32 ; 2 uses
  %.not323 = icmp slt i32 %i.dx, %i.el
  br i1 %.not323, label %.loopexit326, label %.lr.ph391, !llvm.loop !122

bb.f:                                             ; preds = %._crit_edge376
  %i.em = add nsw i32 %5, -3                      ; 2 uses
  %.not322378 = icmp sgt i32 %.0.lcssa, %i.em
  br i1 %.not322378, label %.loopexit326, label %.lr.ph384.preheader

.lr.ph384.preheader:                              ; preds = %bb.f
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !9
  %i.er = load i8, ptr %1, align 1, !tbaa !9
  %i.es = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph384

.lr.ph384:                                        ; preds = %.lr.ph384.preheader, %.lr.ph384
  %indvars.iv448 = phi i64 [ %i.es, %.lr.ph384.preheader ], [ %indvars.iv.next449, %.lr.ph384 ] ; 5 uses
  %.0274381 = phi i8 [ %i.eo, %.lr.ph384.preheader ], [ %i.ff, %.lr.ph384 ]
  %.1279380 = phi i8 [ %i.eq, %.lr.ph384.preheader ], [ %i.fa, %.lr.ph384 ]
  %.2286379 = phi i8 [ %i.er, %.lr.ph384.preheader ], [ %i.ev, %.lr.ph384 ]
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv448
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  %i.ev = add i8 %i.eu, %.2286379                 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv448
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !9
  %i.ex = add nuw nsw i64 %indvars.iv448, 1       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.fa = add i8 %i.ez, %.1279380                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ex
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !9
  %i.fc = add nuw nsw i64 %indvars.iv448, 2       ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !9
  %i.ff = add i8 %i.fe, %.0274381                 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !9
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 3 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv.next449 to i32 ; 2 uses
  %.not322 = icmp slt i32 %i.em, %i.fh
  br i1 %.not322, label %.loopexit326, label %.lr.ph384, !llvm.loop !123

.loopexit326:                                     ; preds = %.lr.ph384, %.lr.ph391, %bb.f, %bb.e, %bb.d, %._crit_edge376
  %.6 = phi i32 [ %.0.lcssa, %._crit_edge376 ], [ %.0.lcssa, %bb.f ], [ %i.el, %.lr.ph391 ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %bb.e ], [ %i.fh, %.lr.ph384 ] ; 2 uses
  %i.fi = icmp slt i32 %.6, %5
  br i1 %i.fi, label %iter.check633, label %.loopexit

iter.check633:                                    ; preds = %.loopexit326
  %i.fj = zext i32 %.6 to i64                     ; 7 uses
  %i.fk = sext i32 %6 to i64                      ; 6 uses
  %wide.trip.count462 = zext nneg i32 %5 to i64   ; 4 uses
  %i.fl = sub nsw i64 %wide.trip.count462, %i.fj  ; 7 uses
  %min.iters.check617 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check617, label %.lr.ph405.preheader, label %vector.memcheck613

vector.memcheck613:                               ; preds = %iter.check633
  %i.fm = add nsw i64 %i.fk, -1
  %diff.check614 = icmp ult i64 %i.fm, 31
  %i.fn = sub i64 %i.c, %i.b
  %diff.check615 = icmp ugt i64 %i.fn, -32
  %conflict.rdx616 = or i1 %diff.check614, %diff.check615
  br i1 %conflict.rdx616, label %.lr.ph405.preheader, label %vector.main.loop.iter.check618

vector.main.loop.iter.check618:                   ; preds = %vector.memcheck613
  %min.iters.check619 = icmp ult i64 %i.fl, 32
  br i1 %min.iters.check619, label %vec.epilog.ph637, label %vector.ph620

vector.ph620:                                     ; preds = %vector.main.loop.iter.check618
  %i.fo = and i64 %i.fl, 24
  %n.vec621 = and i64 %i.fl, -32                  ; 4 uses
  %i.fp = add nsw i64 %n.vec621, %i.fj
  br label %vector.body622

vector.body622:                                   ; preds = %vector.ph620, %vector.body622
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next628, %vector.body622 ] ; 2 uses
  %i.fq = add nuw i64 %index623, %i.fj            ; 3 uses
  %i.fr = sub nsw i64 %i.fq, %i.fk
  %i.fs = getelementptr inbounds i8, ptr %1, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load624 = load <16 x i8>, ptr %i.fs, align 1, !tbaa !9
  %wide.load625 = load <16 x i8>, ptr %i.ft, align 1, !tbaa !9
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 %i.fq ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load626 = load <16 x i8>, ptr %i.fu, align 1, !tbaa !9
  %wide.load627 = load <16 x i8>, ptr %i.fv, align 1, !tbaa !9
  %i.fw = add <16 x i8> %wide.load626, %wide.load624
  %i.fx = add <16 x i8> %wide.load627, %wide.load625
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <16 x i8> %i.fw, ptr %i.fy, align 1, !tbaa !9
  store <16 x i8> %i.fx, ptr %i.fz, align 1, !tbaa !9
  %index.next628 = add nuw i64 %index623, 32      ; 2 uses
  %i.ga = icmp eq i64 %index.next628, %n.vec621
  br i1 %i.ga, label %middle.block629, label %vector.body622, !llvm.loop !124

middle.block629:                                  ; preds = %vector.body622
  %cmp.n630 = icmp eq i64 %i.fl, %n.vec621
  br i1 %cmp.n630, label %.loopexit, label %vec.epilog.iter.check635

vec.epilog.iter.check635:                         ; preds = %middle.block629
  %min.epilog.iters.check636 = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check636, label %.lr.ph405.preheader, label %vec.epilog.ph637, !prof !136

vec.epilog.ph637:                                 ; preds = %vector.main.loop.iter.check618, %vec.epilog.iter.check635
  %vec.epilog.resume.val631 = phi i64 [ %n.vec621, %vec.epilog.iter.check635 ], [ 0, %vector.main.loop.iter.check618 ]
  %n.vec638 = and i64 %i.fl, -8                   ; 3 uses
  %i.gb = add nsw i64 %n.vec638, %i.fj
  br label %vec.epilog.vector.body639

vec.epilog.vector.body639:                        ; preds = %vec.epilog.vector.body639, %vec.epilog.ph637
  %index640 = phi i64 [ %vec.epilog.resume.val631, %vec.epilog.ph637 ], [ %index.next643, %vec.epilog.vector.body639 ] ; 2 uses
  %i.gc = add nuw i64 %index640, %i.fj            ; 3 uses
  %i.gd = sub nsw i64 %i.gc, %i.fk
  %i.ge = getelementptr inbounds i8, ptr %1, i64 %i.gd
  %wide.load641 = load <8 x i8>, ptr %i.ge, align 1, !tbaa !9
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 %i.gc
  %wide.load642 = load <8 x i8>, ptr %i.gf, align 1, !tbaa !9
  %i.gg = add <8 x i8> %wide.load642, %wide.load641
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %i.gc
  store <8 x i8> %i.gg, ptr %i.gh, align 1, !tbaa !9
  %index.next643 = add nuw i64 %index640, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next643, %n.vec638
  br i1 %i.gi, label %vec.epilog.middle.block644, label %vec.epilog.vector.body639, !llvm.loop !125

vec.epilog.middle.block644:                       ; preds = %vec.epilog.vector.body639
  %cmp.n645 = icmp eq i64 %i.fl, %n.vec638
  br i1 %cmp.n645, label %.loopexit, label %.lr.ph405.preheader

.lr.ph405.preheader:                              ; preds = %iter.check633, %vector.memcheck613, %vec.epilog.iter.check635, %vec.epilog.middle.block644
  %indvars.iv459.ph = phi i64 [ %i.fj, %iter.check633 ], [ %i.fj, %vector.memcheck613 ], [ %i.fp, %vec.epilog.iter.check635 ], [ %i.gb, %vec.epilog.middle.block644 ] ; 7 uses
  %i.gj = sub nsw i64 %wide.trip.count462, %indvars.iv459.ph
  %xtraiter674 = and i64 %i.gj, 1
  %lcmp.mod675.not = icmp eq i64 %xtraiter674, 0
  br i1 %lcmp.mod675.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol

.lr.ph405.prol:                                   ; preds = %.lr.ph405.preheader
  %i.gk = sub nsw i64 %indvars.iv459.ph, %i.fk
  %i.gl = getelementptr inbounds i8, ptr %1, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !9
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv459.ph
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gp = add i8 %i.go, %i.gm
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv459.ph
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !9
  %indvars.iv.next460.prol = add nuw nsw i64 %indvars.iv459.ph, 1
  br label %.lr.ph405.prol.loopexit

.lr.ph405.prol.loopexit:                          ; preds = %.lr.ph405.prol, %.lr.ph405.preheader
  %indvars.iv459.unr = phi i64 [ %indvars.iv459.ph, %.lr.ph405.preheader ], [ %indvars.iv.next460.prol, %.lr.ph405.prol ]
  %i.gr = add nsw i64 %wide.trip.count462, -1
  %i.gs = icmp eq i64 %indvars.iv459.ph, %i.gr
  br i1 %i.gs, label %.loopexit, label %.lr.ph405

.lr.ph405:                                        ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405
  %indvars.iv459 = phi i64 [ %indvars.iv.next460.1, %.lr.ph405 ], [ %indvars.iv459.unr, %.lr.ph405.prol.loopexit ] ; 5 uses
  %i.gt = sub nsw i64 %indvars.iv459, %i.fk
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv459
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !9
  %i.gy = add i8 %i.gx, %i.gv
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv459
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !9
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 3 uses
  %i.ha = sub nsw i64 %indvars.iv.next460, %i.fk
  %i.hb = getelementptr inbounds i8, ptr %1, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next460
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = add i8 %i.he, %i.hc
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next460
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !9
  %indvars.iv.next460.1 = add nuw nsw i64 %indvars.iv459, 2 ; 2 uses
  %exitcond463.not.1 = icmp eq i64 %indvars.iv.next460.1, %wide.trip.count462
  br i1 %exitcond463.not.1, label %.loopexit, label %.lr.ph405, !llvm.loop !126

bb.g:                                             ; preds = %bb.a
  %i.hh = load ptr, ptr %0, align 8, !tbaa !137
  tail call void %i.hh(ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #12
  br label %.loopexit

.lr.ph338:                                        ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338
  %indvars.iv423 = phi i64 [ %indvars.iv.next424.1, %.lr.ph338 ], [ %indvars.iv423.unr, %.lr.ph338.prol.loopexit ] ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv423
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hk = lshr i8 %i.hj, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv423
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9
  %i.hn = add i8 %i.hk, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv423
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !9
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next424
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hr = lshr i8 %i.hq, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next424
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !9
  %i.hu = add i8 %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next424
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !9
  %indvars.iv.next424.1 = add nuw nsw i64 %indvars.iv423, 2 ; 2 uses
  %exitcond427.not.1 = icmp eq i64 %indvars.iv.next424.1, %wide.trip.count426
  br i1 %exitcond427.not.1, label %._crit_edge339, label %.lr.ph338, !llvm.loop !127

._crit_edge339:                                   ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338, %middle.block532, %vec.epilog.middle.block546, %.preheader334
  %.8.lcssa = phi i32 [ 0, %.preheader334 ], [ %6, %middle.block532 ], [ %6, %vec.epilog.middle.block546 ], [ %6, %.lr.ph338 ], [ %6, %.lr.ph338.prol.loopexit ] ; 13 uses
  switch i32 %6, label %.loopexit330 [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.h:                                             ; preds = %._crit_edge339
  %.not317.not365 = icmp slt i32 %.8.lcssa, %5
  br i1 %.not317.not365, label %.lr.ph369.preheader, label %.loopexit330

.lr.ph369.preheader:                              ; preds = %bb.h
  %i.hw = load i8, ptr %1, align 1, !tbaa !9      ; 2 uses
  %i.hx = zext nneg i32 %.8.lcssa to i64          ; 7 uses
  %wide.trip.count436 = zext nneg i32 %5 to i64   ; 3 uses
  %i.hy = sub nsw i64 %wide.trip.count436, %i.hx
  %xtraiter662 = and i64 %i.hy, 1
  %lcmp.mod663.not = icmp eq i64 %xtraiter662, 0
  br i1 %lcmp.mod663.not, label %.lr.ph369.prol.loopexit, label %.lr.ph369.prol

.lr.ph369.prol:                                   ; preds = %.lr.ph369.preheader
  %.4288.prol = zext i8 %i.hw to i16
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 %i.hx
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !9
  %i.ib = zext i8 %i.ia to i16
  %i.ic = add nuw nsw i16 %i.ib, %.4288.prol
  %i.id = lshr i16 %i.ic, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %i.hx
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !9
  %.tr320.prol = trunc nuw i16 %i.id to i8
  %.narrow321.prol = add i8 %i.if, %.tr320.prol   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %i.hx
  store i8 %.narrow321.prol, ptr %i.ig, align 1, !tbaa !9
  %indvars.iv.next435.prol = add nuw nsw i64 %i.hx, 1
  br label %.lr.ph369.prol.loopexit

.lr.ph369.prol.loopexit:                          ; preds = %.lr.ph369.prol, %.lr.ph369.preheader
  %indvars.iv434.unr = phi i64 [ %i.hx, %.lr.ph369.preheader ], [ %indvars.iv.next435.prol, %.lr.ph369.prol ]
  %.4288.in366.unr = phi i8 [ %i.hw, %.lr.ph369.preheader ], [ %.narrow321.prol, %.lr.ph369.prol ]
  %i.ih = add nsw i64 %wide.trip.count436, -1
  %i.ii = icmp eq i64 %i.ih, %i.hx
  br i1 %i.ii, label %.loopexit, label %.lr.ph369

.lr.ph369:                                        ; preds = %.lr.ph369.prol.loopexit, %.lr.ph369
  %indvars.iv434 = phi i64 [ %indvars.iv.next435.1, %.lr.ph369 ], [ %indvars.iv434.unr, %.lr.ph369.prol.loopexit ] ; 5 uses
  %.4288.in366 = phi i8 [ %.narrow321.1, %.lr.ph369 ], [ %.4288.in366.unr, %.lr.ph369.prol.loopexit ]
  %.4288 = zext i8 %.4288.in366 to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv434
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !9
  %i.il = zext i8 %i.ik to i16
  %i.im = add nuw nsw i16 %i.il, %.4288
  %i.in = lshr i16 %i.im, 1
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv434
end_hunk_0
begin_hunk_1_@ff_png_filter_row:bb.a
  %.not312358 = icmp sgt i32 %.8.lcssa, %i.iz
  br i1 %.not312358, label %.loopexit330, label %.lr.ph363.preheader

.lr.ph363.preheader:                              ; preds = %bb.i
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !9
  %i.jc = load i8, ptr %1, align 1, !tbaa !9
  %i.jd = zext nneg i32 %.8.lcssa to i64
  br label %.lr.ph363

.lr.ph363:                                        ; preds = %.lr.ph363.preheader, %.lr.ph363
  %indvars.iv432 = phi i64 [ %i.jd, %.lr.ph363.preheader ], [ %indvars.iv.next433, %.lr.ph363 ] ; 5 uses
  %.3281.in360 = phi i8 [ %i.jb, %.lr.ph363.preheader ], [ %.narrow316, %.lr.ph363 ]
  %.5289.in359 = phi i8 [ %i.jc, %.lr.ph363.preheader ], [ %.narrow314, %.lr.ph363 ]
  %.3281 = zext i8 %.3281.in360 to i16
  %.5289 = zext i8 %.5289.in359 to i16
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv432
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !9
  %i.jg = zext i8 %i.jf to i16
  %i.jh = add nuw nsw i16 %i.jg, %.5289
  %i.ji = lshr i16 %i.jh, 1
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv432
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !9
  %.tr313 = trunc nuw i16 %i.ji to i8
  %.narrow314 = add i8 %i.jk, %.tr313             ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv432
  store i8 %.narrow314, ptr %i.jl, align 1, !tbaa !9
  %i.jm = add nuw nsw i64 %indvars.iv432, 1       ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !9
  %i.jp = zext i8 %i.jo to i16
  %i.jq = add nuw nsw i16 %i.jp, %.3281
  %i.jr = lshr i16 %i.jq, 1
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 %i.jm
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !9
  %.tr315 = trunc nuw i16 %i.jr to i8
  %.narrow316 = add i8 %i.jt, %.tr315             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 %i.jm
  store i8 %.narrow316, ptr %i.ju, align 1, !tbaa !9
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 2 ; 2 uses
  %i.jv = trunc nuw i64 %indvars.iv.next433 to i32 ; 2 uses
  %.not312 = icmp slt i32 %i.iz, %i.jv
  br i1 %.not312, label %.loopexit330, label %.lr.ph363, !llvm.loop !129

bb.j:                                             ; preds = %._crit_edge339
  %i.jw = add nsw i32 %5, -3                      ; 2 uses
  %.not305350 = icmp sgt i32 %.8.lcssa, %i.jw
  br i1 %.not305350, label %.loopexit330, label %.lr.ph356.preheader

.lr.ph356.preheader:                              ; preds = %bb.j
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !9
  %i.kb = load i8, ptr %1, align 1, !tbaa !9
  %i.kc = zext nneg i32 %.8.lcssa to i64
  br label %.lr.ph356

.lr.ph356:                                        ; preds = %.lr.ph356.preheader, %.lr.ph356
  %indvars.iv430 = phi i64 [ %i.kc, %.lr.ph356.preheader ], [ %indvars.iv.next431, %.lr.ph356 ] ; 6 uses
  %.2276.in353 = phi i8 [ %i.jy, %.lr.ph356.preheader ], [ %.narrow311, %.lr.ph356 ]
  %.4282.in352 = phi i8 [ %i.ka, %.lr.ph356.preheader ], [ %.narrow309, %.lr.ph356 ]
  %.6290.in351 = phi i8 [ %i.kb, %.lr.ph356.preheader ], [ %.narrow307, %.lr.ph356 ]
  %.2276 = zext i8 %.2276.in353 to i16
  %.4282 = zext i8 %.4282.in352 to i16
  %.6290 = zext i8 %.6290.in351 to i16
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv430
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !9
  %i.kf = zext i8 %i.ke to i16
  %i.kg = add nuw nsw i16 %i.kf, %.6290
  %i.kh = lshr i16 %i.kg, 1
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv430
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !9
  %.tr306 = trunc nuw i16 %i.kh to i8
  %.narrow307 = add i8 %i.kj, %.tr306             ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv430
  store i8 %.narrow307, ptr %i.kk, align 1, !tbaa !9
  %i.kl = add nuw nsw i64 %indvars.iv430, 1       ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !9
  %i.ko = zext i8 %i.kn to i16
  %i.kp = add nuw nsw i16 %i.ko, %.4282
  %i.kq = lshr i16 %i.kp, 1
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 %i.kl
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !9
  %.tr308 = trunc nuw i16 %i.kq to i8
  %.narrow309 = add i8 %i.ks, %.tr308             ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 %i.kl
  store i8 %.narrow309, ptr %i.kt, align 1, !tbaa !9
  %i.ku = add nuw nsw i64 %indvars.iv430, 2       ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !9
  %i.kx = zext i8 %i.kw to i16
  %i.ky = add nuw nsw i16 %i.kx, %.2276
  %i.kz = lshr i16 %i.ky, 1
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 %i.ku
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !9
  %.tr310 = trunc nuw i16 %i.kz to i8
  %.narrow311 = add i8 %i.lb, %.tr310             ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ku
  store i8 %.narrow311, ptr %i.lc, align 1, !tbaa !9
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 3 ; 2 uses
  %i.ld = trunc nuw i64 %indvars.iv.next431 to i32 ; 2 uses
  %.not305 = icmp slt i32 %i.jw, %i.ld
  br i1 %.not305, label %.loopexit330, label %.lr.ph356, !llvm.loop !130

bb.k:                                             ; preds = %._crit_edge339
  %i.le = add nsw i32 %5, -4                      ; 2 uses
  %.not298341 = icmp sgt i32 %.8.lcssa, %i.le
  br i1 %.not298341, label %.loopexit330, label %.lr.ph348.preheader

.lr.ph348.preheader:                              ; preds = %bb.k
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !9
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !9
  %i.ll = load i8, ptr %1, align 1, !tbaa !9
  %i.lm = zext nneg i32 %.8.lcssa to i64
  br label %.lr.ph348

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %.lr.ph348
  %indvars.iv428 = phi i64 [ %i.lm, %.lr.ph348.preheader ], [ %indvars.iv.next429, %.lr.ph348 ] ; 7 uses
  %.1273.in345 = phi i8 [ %i.lg, %.lr.ph348.preheader ], [ %.narrow304, %.lr.ph348 ]
  %.3277.in344 = phi i8 [ %i.li, %.lr.ph348.preheader ], [ %.narrow302, %.lr.ph348 ]
  %.5283.in343 = phi i8 [ %i.lk, %.lr.ph348.preheader ], [ %.narrow300, %.lr.ph348 ]
  %.7291.in342 = phi i8 [ %i.ll, %.lr.ph348.preheader ], [ %.narrow, %.lr.ph348 ]
  %.1273 = zext i8 %.1273.in345 to i16
  %.3277 = zext i8 %.3277.in344 to i16
  %.5283 = zext i8 %.5283.in343 to i16
  %.7291 = zext i8 %.7291.in342 to i16
  %i.ln = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv428
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !9
  %i.lp = zext i8 %i.lo to i16
  %i.lq = add nuw nsw i16 %i.lp, %.7291
  %i.lr = lshr i16 %i.lq, 1
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv428
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !9
  %.tr = trunc nuw i16 %i.lr to i8
  %.narrow = add i8 %i.lt, %.tr                   ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv428
  store i8 %.narrow, ptr %i.lu, align 1, !tbaa !9
  %i.lv = add nuw nsw i64 %indvars.iv428, 1       ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !9
  %i.ly = zext i8 %i.lx to i16
  %i.lz = add nuw nsw i16 %i.ly, %.5283
  %i.ma = lshr i16 %i.lz, 1
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 %i.lv
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !9
  %.tr299 = trunc nuw i16 %i.ma to i8
  %.narrow300 = add i8 %i.mc, %.tr299             ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 %i.lv
  store i8 %.narrow300, ptr %i.md, align 1, !tbaa !9
  %i.me = add nuw nsw i64 %indvars.iv428, 2       ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !9
  %i.mh = zext i8 %i.mg to i16
  %i.mi = add nuw nsw i16 %i.mh, %.3277
  %i.mj = lshr i16 %i.mi, 1
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 %i.me
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !9
  %.tr301 = trunc nuw i16 %i.mj to i8
  %.narrow302 = add i8 %i.ml, %.tr301             ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  store i8 %.narrow302, ptr %i.mm, align 1, !tbaa !9
  %i.mn = add nuw nsw i64 %indvars.iv428, 3       ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !9
  %i.mq = zext i8 %i.mp to i16
  %i.mr = add nuw nsw i16 %i.mq, %.1273
  %i.ms = lshr i16 %i.mr, 1
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 %i.mn
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !9
  %.tr303 = trunc nuw i16 %i.ms to i8
  %.narrow304 = add i8 %i.mu, %.tr303             ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 %i.mn
  store i8 %.narrow304, ptr %i.mv, align 1, !tbaa !9
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 4 ; 2 uses
  %i.mw = trunc nuw i64 %indvars.iv.next429 to i32 ; 2 uses
  %.not298 = icmp slt i32 %i.le, %i.mw
  br i1 %.not298, label %.loopexit330, label %.lr.ph348, !llvm.loop !131

.loopexit330:                                     ; preds = %.lr.ph348, %.lr.ph356, %.lr.ph363, %bb.k, %bb.j, %bb.i, %bb.h, %._crit_edge339
  %.13 = phi i32 [ %.8.lcssa, %._crit_edge339 ], [ %i.jv, %.lr.ph363 ], [ %.8.lcssa, %bb.k ], [ %i.ld, %.lr.ph356 ], [ %.8.lcssa, %bb.h ], [ %.8.lcssa, %bb.i ], [ %.8.lcssa, %bb.j ], [ %i.mw, %.lr.ph348 ] ; 2 uses
  %i.mx = icmp slt i32 %.13, %5
  br i1 %i.mx, label %iter.check570, label %.loopexit

iter.check570:                                    ; preds = %.loopexit330
  %i.my = zext i32 %.13 to i64                    ; 7 uses
  %i.mz = sext i32 %6 to i64                      ; 6 uses
  %wide.trip.count441 = zext nneg i32 %5 to i64   ; 4 uses
  %i.na = sub nsw i64 %wide.trip.count441, %i.my  ; 7 uses
  %min.iters.check555 = icmp ult i64 %i.na, 4
  br i1 %min.iters.check555, label %.lr.ph373.preheader, label %vector.memcheck549

vector.memcheck549:                               ; preds = %iter.check570
  %i.nb = add nsw i64 %i.mz, -1
  %diff.check550 = icmp ult i64 %i.nb, 15
  %i.nc = sub i64 %i.a, %i.b
  %diff.check551 = icmp ugt i64 %i.nc, -16
  %conflict.rdx552 = or i1 %diff.check550, %diff.check551
  %i.nd = sub i64 %i.c, %i.b
  %diff.check553 = icmp ugt i64 %i.nd, -16
  %conflict.rdx554 = or i1 %conflict.rdx552, %diff.check553
  br i1 %conflict.rdx554, label %.lr.ph373.preheader, label %vector.main.loop.iter.check556

vector.main.loop.iter.check556:                   ; preds = %vector.memcheck549
  %min.iters.check557 = icmp ult i64 %i.na, 16
  br i1 %min.iters.check557, label %vec.epilog.ph574, label %vector.ph558

vector.ph558:                                     ; preds = %vector.main.loop.iter.check556
  %i.ne = and i64 %i.na, 12
  %n.vec559 = and i64 %i.na, -16                  ; 4 uses
  %i.nf = add nsw i64 %n.vec559, %i.my
  br label %vector.body560

vector.body560:                                   ; preds = %vector.ph558, %vector.body560
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next565, %vector.body560 ] ; 2 uses
  %i.ng = add nuw i64 %index561, %i.my            ; 4 uses
  %i.nh = sub nsw i64 %i.ng, %i.mz
  %i.ni = getelementptr inbounds i8, ptr %1, i64 %i.nh
  %wide.load562 = load <16 x i8>, ptr %i.ni, align 1, !tbaa !9
  %i.nj = zext <16 x i8> %wide.load562 to <16 x i16>
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 %i.ng
  %wide.load563 = load <16 x i8>, ptr %i.nk, align 1, !tbaa !9
  %i.nl = zext <16 x i8> %wide.load563 to <16 x i16>
  %i.nm = add nuw nsw <16 x i16> %i.nl, %i.nj
  %i.nn = lshr <16 x i16> %i.nm, splat (i16 1)
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 %i.ng
  %wide.load564 = load <16 x i8>, ptr %i.no, align 1, !tbaa !9
  %i.np = trunc nuw <16 x i16> %i.nn to <16 x i8>
  %i.nq = add <16 x i8> %wide.load564, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 %i.ng
  store <16 x i8> %i.nq, ptr %i.nr, align 1, !tbaa !9
  %index.next565 = add nuw i64 %index561, 16      ; 2 uses
  %i.ns = icmp eq i64 %index.next565, %n.vec559
  br i1 %i.ns, label %middle.block566, label %vector.body560, !llvm.loop !132

middle.block566:                                  ; preds = %vector.body560
  %cmp.n567 = icmp eq i64 %i.na, %n.vec559
  br i1 %cmp.n567, label %.loopexit, label %vec.epilog.iter.check572

vec.epilog.iter.check572:                         ; preds = %middle.block566
  %min.epilog.iters.check573 = icmp eq i64 %i.ne, 0
  br i1 %min.epilog.iters.check573, label %.lr.ph373.preheader, label %vec.epilog.ph574, !prof !18

vec.epilog.ph574:                                 ; preds = %vector.main.loop.iter.check556, %vec.epilog.iter.check572
  %vec.epilog.resume.val568 = phi i64 [ %n.vec559, %vec.epilog.iter.check572 ], [ 0, %vector.main.loop.iter.check556 ]
  %n.vec575 = and i64 %i.na, -4                   ; 3 uses
  %i.nt = add nsw i64 %n.vec575, %i.my
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph574
  %index577 = phi i64 [ %vec.epilog.resume.val568, %vec.epilog.ph574 ], [ %index.next581, %vec.epilog.vector.body576 ] ; 2 uses
  %i.nu = add nuw i64 %index577, %i.my            ; 4 uses
  %i.nv = sub nsw i64 %i.nu, %i.mz
  %i.nw = getelementptr inbounds i8, ptr %1, i64 %i.nv
  %wide.load578 = load <4 x i8>, ptr %i.nw, align 1, !tbaa !9
  %i.nx = zext <4 x i8> %wide.load578 to <4 x i16>
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 %i.nu
  %wide.load579 = load <4 x i8>, ptr %i.ny, align 1, !tbaa !9
  %i.nz = zext <4 x i8> %wide.load579 to <4 x i16>
  %i.oa = add nuw nsw <4 x i16> %i.nz, %i.nx
  %i.ob = lshr <4 x i16> %i.oa, splat (i16 1)
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 %i.nu
  %wide.load580 = load <4 x i8>, ptr %i.oc, align 1, !tbaa !9
  %i.od = trunc nuw <4 x i16> %i.ob to <4 x i8>
  %i.oe = add <4 x i8> %wide.load580, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 %i.nu
  store <4 x i8> %i.oe, ptr %i.of, align 1, !tbaa !9
  %index.next581 = add nuw i64 %index577, 4       ; 2 uses
  %i.og = icmp eq i64 %index.next581, %n.vec575
  br i1 %i.og, label %vec.epilog.middle.block582, label %vec.epilog.vector.body576, !llvm.loop !133

vec.epilog.middle.block582:                       ; preds = %vec.epilog.vector.body576
  %cmp.n583 = icmp eq i64 %i.na, %n.vec575
  br i1 %cmp.n583, label %.loopexit, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %iter.check570, %vector.memcheck549, %vec.epilog.iter.check572, %vec.epilog.middle.block582
  %indvars.iv438.ph = phi i64 [ %i.my, %iter.check570 ], [ %i.my, %vector.memcheck549 ], [ %i.nf, %vec.epilog.iter.check572 ], [ %i.nt, %vec.epilog.middle.block582 ] ; 8 uses
  %i.oh = sub nsw i64 %wide.trip.count441, %indvars.iv438.ph
  %xtraiter665 = and i64 %i.oh, 1
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br i1 %lcmp.mod666.not, label %.lr.ph373.prol.loopexit, label %.lr.ph373.prol

.lr.ph373.prol:                                   ; preds = %.lr.ph373.preheader
  %i.oi = sub nsw i64 %indvars.iv438.ph, %i.mz
  %i.oj = getelementptr inbounds i8, ptr %1, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !9
  %i.ol = zext i8 %i.ok to i16
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv438.ph
  %i.on = load i8, ptr %i.om, align 1, !tbaa !9
  %i.oo = zext i8 %i.on to i16
  %i.op = add nuw nsw i16 %i.oo, %i.ol
  %i.oq = lshr i16 %i.op, 1
  %i.or = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv438.ph
  %i.os = load i8, ptr %i.or, align 1, !tbaa !9
  %.tr318.prol = trunc nuw i16 %i.oq to i8
  %.narrow319.prol = add i8 %i.os, %.tr318.prol
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv438.ph
  store i8 %.narrow319.prol, ptr %i.ot, align 1, !tbaa !9
  %indvars.iv.next439.prol = add nuw nsw i64 %indvars.iv438.ph, 1
  br label %.lr.ph373.prol.loopexit

.lr.ph373.prol.loopexit:                          ; preds = %.lr.ph373.prol, %.lr.ph373.preheader
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %.lr.ph373.preheader ], [ %indvars.iv.next439.prol, %.lr.ph373.prol ]
  %i.ou = add nsw i64 %wide.trip.count441, -1
  %i.ov = icmp eq i64 %indvars.iv438.ph, %i.ou
  br i1 %i.ov, label %.loopexit, label %.lr.ph373

.lr.ph373:                                        ; preds = %.lr.ph373.prol.loopexit, %.lr.ph373
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.1, %.lr.ph373 ], [ %indvars.iv438.unr, %.lr.ph373.prol.loopexit ] ; 6 uses
  %i.ow = sub nsw i64 %indvars.iv438, %i.mz
  %i.ox = getelementptr inbounds i8, ptr %1, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !9
  %i.oz = zext i8 %i.oy to i16
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv438
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !9
  %i.pc = zext i8 %i.pb to i16
  %i.pd = add nuw nsw i16 %i.pc, %i.oz
  %i.pe = lshr i16 %i.pd, 1
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv438
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !9
  %.tr318 = trunc nuw i16 %i.pe to i8
  %.narrow319 = add i8 %i.pg, %.tr318
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv438
  store i8 %.narrow319, ptr %i.ph, align 1, !tbaa !9
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 4 uses
  %i.pi = sub nsw i64 %indvars.iv.next439, %i.mz
  %i.pj = getelementptr inbounds i8, ptr %1, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !9
  %i.pl = zext i8 %i.pk to i16
  %i.pm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next439
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !9
  %i.po = zext i8 %i.pn to i16
  %i.pp = add nuw nsw i16 %i.po, %i.pl
  %i.pq = lshr i16 %i.pp, 1
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next439
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !9
  %.tr318.1 = trunc nuw i16 %i.pq to i8
  %.narrow319.1 = add i8 %i.ps, %.tr318.1
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next439
  store i8 %.narrow319.1, ptr %i.pt, align 1, !tbaa !9
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %exitcond442.not.1 = icmp eq i64 %indvars.iv.next439.1, %wide.trip.count441
  br i1 %exitcond442.not.1, label %.loopexit, label %.lr.ph373, !llvm.loop !134

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !9
  %i.py = add i8 %i.px, %i.pv
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !9
  %i.qe = add i8 %i.qd, %i.qb
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.1
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !9
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !9
  %i.qk = add i8 %i.qj, %i.qh
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.2
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !9
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.2
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !9
  %i.qq = add i8 %i.qp, %i.qn
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.qs = icmp samesign ugt i32 %6, 2
  %i.qt = icmp sgt i32 %5, 4
  %or.cond = and i1 %i.qt, %i.qs
  br i1 %or.cond, label %bb.l, label %._crit_edge.thread

bb.l:                                             ; preds = %._crit_edge
  %i.qu = and i32 %6, 3
  %.not = icmp eq i32 %i.qu, 0
  %i.qv = add nsw i32 %5, -3
  %i.qw = select i1 %.not, i32 %5, i32 %i.qv      ; 2 uses
  %i.qx = icmp samesign ugt i32 %i.qw, %6
  br i1 %i.qx, label %bb.m, label %._crit_edge.thread

bb.m:                                             ; preds = %bb.l
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !138
  %i.ra = zext nneg i32 %6 to i64                 ; 3 uses
end_hunk_1
