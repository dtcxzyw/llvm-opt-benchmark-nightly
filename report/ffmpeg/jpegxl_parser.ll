Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpegxl_parser?download=true
inline.NumInlined: 192
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecParser = type { %struct.AVCodecParser, i32, ptr, ptr, ptr }
%struct.AVCodecParser = type { [7 x i32] }
%struct.VLCElem = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i16, i16 }
%struct.JXLEntropyDecoder = type { i64, i32, i32, i32, ptr, %struct.JXLDistributionBundle, ptr }
%struct.JXLDistributionBundle = type { i32, i32, i32, %struct.JXLHybridUintConf, ptr, i32, ptr, i32, i32, i32 }
%struct.JXLHybridUintConf = type { i32, i32, i32 }
%struct.GetBitContext = type { ptr, i32, i32, i32 }
%struct.VLC = type { i32, ptr, i32, i32 }

@ff_jpegxl_parser = local_unnamed_addr constant %struct.FFCodecParser { %struct.AVCodecParser { [7 x i32] [i32 255, i32 269, i32 0, i32 0, i32 0, i32 0, i32 0] }, i32 4360, ptr null, ptr @jpegxl_parse, ptr @ff_parse_close }, align 8
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@level0_table = internal unnamed_addr constant [16 x %struct.VLCElem] [%struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 2 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }], align 16
@prefix_codelen_map = internal unnamed_addr constant [18 x i8] c"\01\02\03\04\00\05\11\06\10\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@dist_prefix_table = internal unnamed_addr constant [128 x %struct.VLCElem] [%struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 12, i16 7 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 5 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 11, i16 6 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 5 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 13, i16 7 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 5 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 11, i16 6 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 0, i16 5 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 3, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 5, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 10, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 4, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 7, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 1, i16 4 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 6, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 8, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 9, i16 3 } } }, %struct.VLCElem { %union.anon.0 { %struct.anon { i16 2, i16 4 } } }], align 16
@.str = private unnamed_addr constant [64 x i8] c"frame of size %ux%u exceeds max size of %ux%u, aborting parser\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @jpegxl_parse(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [4 x i32], align 16               ; 4 uses
  %i.f = alloca [4 x i32], align 16               ; 4 uses
  %i.g = alloca [4 x i32], align 16               ; 4 uses
  %i.h = alloca [4 x i32], align 16               ; 4 uses
  %i.i = alloca [4 x i32], align 16               ; 4 uses
  %i.j = alloca [4 x i32], align 16               ; 4 uses
  %i.k = alloca [4 x i32], align 16               ; 4 uses
  %i.l = alloca [4 x i32], align 16               ; 4 uses
  %i.m = alloca [4 x i32], align 16               ; 4 uses
  %i.n = alloca [4 x i32], align 16               ; 4 uses
  %i.o = alloca [4 x i32], align 16               ; 4 uses
  %i.p = alloca [4 x i32], align 16               ; 4 uses
  %i.q = alloca [4 x i32], align 16               ; 4 uses
  %i.r = alloca [4 x i32], align 16               ; 8 uses
  %i.s = alloca [4 x i32], align 16               ; 8 uses
  %i.t = alloca [4 x i32], align 16               ; 8 uses
  %i.u = alloca [4 x i32], align 16               ; 4 uses
  %i.v = alloca [4 x i32], align 16               ; 4 uses
  %i.w = alloca [4 x i32], align 16               ; 4 uses
  %i.x = alloca [4 x i32], align 16               ; 4 uses
  %i.y = alloca [4 x i32], align 16               ; 4 uses
  %i.z = alloca [4 x i32], align 16               ; 4 uses
  %6 = alloca %struct.JXLEntropyDecoder, align 8  ; 28 uses
  %7 = alloca %struct.GetBitContext, align 8      ; 22 uses
  %i.aa = alloca ptr, align 8                     ; 3 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  store ptr %4, ptr %i.aa, align 8, !tbaa !12
  store i32 %5, ptr %i.ab, align 4, !tbaa !13
  %i.ac = load ptr, ptr %0, align 8, !tbaa !60    ; 46 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !68
  store i32 0, ptr %3, align 4, !tbaa !13
  store ptr null, ptr %2, align 8, !tbaa !12
  %i.ag = load i32, ptr %i.ae, align 8, !tbaa !68
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !69
  %.not58 = icmp eq i32 %i.ai, 0
  br i1 %.not58, label %bb.c, label %.thread72

bb.c:                                             ; preds = %bb.b, %bb.a
  %.052 = phi ptr [ %i.ad, %bb.a ], [ %4, %bb.b ] ; 3 uses
  %.051 = phi i32 [ %i.af, %bb.a ], [ %5, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 144 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !70 ; 2 uses
  %.not59 = icmp eq i32 %i.ak, 0                  ; 2 uses
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.am = load i64, ptr %i.al, align 8, !tbaa !71
  %.not60 = icmp eq i64 %i.am, 0
  br i1 %.not60, label %bb.e, label %.thread.thread200

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 192 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !72
  %.not61 = icmp eq i64 %i.ao, 0
  br i1 %.not61, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 152 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !73 ; 3 uses
  %i.ar = sext i32 %.051 to i64
  %i.as = icmp sgt i64 %i.aq, %i.ar
  br i1 %i.as, label %try_parse.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds i8, ptr %.052, i64 %i.aq ; 3 uses
  %i.au = trunc i64 %i.aq to i32
  %i.av = sub i32 %.051, %i.au                    ; 2 uses
  br i1 %.not59, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.at, align 1, !tbaa !15
  %i.ax = icmp eq i64 %i.aw, 2327332182495854592
  br i1 %i.ax, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.aj, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 200 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.ba = tail call i32 @ff_jpegxl_collect_codestream_header(ptr noundef %i.at, i32 noundef %i.av, ptr noundef nonnull %i.ay, i32 noundef 4096, ptr noundef nonnull %i.az) #10 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %try_parse.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !74
  %i.be = load i32, ptr %i.az, align 8, !tbaa !75 ; 2 uses
  %.not74.i = icmp eq i32 %i.be, 0
  br i1 %.not74.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !73
  %i.bg = add nsw i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.ap, align 8, !tbaa !73
  br label %try_parse.exit.thread

bb.l:                                             ; preds = %bb.j
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.be, i32 4096)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.061.i = phi i32 [ %spec.select.i, %bb.l ], [ %i.av, %bb.h ] ; 3 uses
  %.0.i = phi ptr [ %i.ay, %bb.l ], [ %i.at, %bb.h ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 176 ; 5 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !71 ; 2 uses
  %.not75.i = icmp eq i64 %i.bi, 0
  br i1 %.not75.i, label %bb.n, label %populate_fields.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  %i.bk = tail call i32 @ff_jpegxl_parse_codestream_header(ptr noundef nonnull %.0.i, i32 noundef %.061.i, ptr noundef nonnull %i.bj, i32 noundef 0) #10 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %try_parse.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = zext nneg i32 %i.bk to i64              ; 3 uses
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !71
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bo = load <2 x i32>, ptr %i.bj, align 8, !tbaa !13
  store <2 x i32> %i.bo, ptr %i.bn, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !76 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152
  %switch.and.i.i = and i32 %i.bq, -3
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  %i.bs = select i1 %switch.selectcmp.i.i, i32 0, i32 2
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 92
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !92
  switch i32 %i.bu, label %bb.w [
    i32 1, label %bb.p
    i32 11, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  switch i32 %i.bw, label %bb.t [
    i32 1, label %bb.q
    i32 11, label %bb.r
    i32 9, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.bx, align 8, !tbaa !94
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  store i32 12, ptr %i.bx, align 8, !tbaa !94
  br label %bb.x

bb.s:                                             ; preds = %bb.p
  store i32 9, ptr %i.bx, align 8, !tbaa !94
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  store i32 2, ptr %i.bx, align 8, !tbaa !94
  br label %bb.x

bb.u:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !93
  %i.ca = icmp eq i32 %i.bz, 11
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 11, ptr %i.cb, align 8, !tbaa !94
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 2, ptr %i.cc, align 8, !tbaa !94
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !95 ; 5 uses
  %i.cf = icmp ugt i32 %i.ce, 16777216
  br i1 %i.cf, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 7 uses
  switch i32 %i.ce, label %bb.af [
    i32 16777217, label %bb.z
    i32 16777224, label %bb.aa
    i32 16777229, label %bb.ab
    i32 16777232, label %bb.ac
    i32 16777233, label %bb.ad
    i32 16777234, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.cg, align 4, !tbaa !96
  br label %bb.an

bb.aa:                                            ; preds = %bb.y
  store i32 8, ptr %i.cg, align 4, !tbaa !96
  br label %bb.an

bb.ab:                                            ; preds = %bb.y
  store i32 13, ptr %i.cg, align 4, !tbaa !96
  br label %bb.an

bb.ac:                                            ; preds = %bb.y
  store i32 16, ptr %i.cg, align 4, !tbaa !96
  br label %bb.an

bb.ad:                                            ; preds = %bb.y
  store i32 17, ptr %i.cg, align 4, !tbaa !96
  br label %bb.an

bb.ae:                                            ; preds = %bb.y
end_hunk_0
begin_hunk_1_@jpegxl_parse:bb.a
  br i1 %i.all, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.alm = add i32 %i.alk, 16
  %i.aln = call i32 @llvm.umin.i32(i32 %i.jt, i32 %i.alm)
  store i32 %i.aln, ptr %i.dv, align 8, !tbaa !21
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.el
  %i.alo = call fastcc i64 @jxl_u64(ptr noundef nonnull %7) ; 2 uses
  %.val26.i.i.i = load i32, ptr %i.dv, align 8, !tbaa !21 ; 2 uses
  %.val27.i.i.i = load i32, ptr %i.ds, align 4, !tbaa !19 ; 2 uses
  %i.alp = icmp slt i32 %.val27.i.i.i, %.val26.i.i.i
  br i1 %i.alp, label %try_parse.exit.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.not.i429.i.i = icmp eq i64 %i.alo, 0
  br i1 %.not.i429.i.i, label %.thread569.i.i, label %.preheader.i.i.i

bb.ex:                                            ; preds = %bb.ez
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 64
  br i1 %exitcond.i.i.i, label %bb.fa, label %.preheader.i.i.i, !llvm.loop !55

.preheader.i.i.i:                                 ; preds = %bb.ew, %bb.ex
  %.val2538.i.i.i = phi i32 [ %.val23.i.i.i, %bb.ex ], [ %.val27.i.i.i, %bb.ew ]
  %.val2436.i.i.i = phi i32 [ %.val.i.i.i, %bb.ex ], [ %.val26.i.i.i, %bb.ew ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ex ], [ 0, %bb.ew ] ; 2 uses
  %.01732.i.i.i = phi i64 [ %.1.i.i.i, %bb.ex ], [ 0, %bb.ew ] ; 2 uses
  %i.alq = shl nuw i64 1, %indvars.iv.i.i.i
  %i.alr = and i64 %i.alq, %i.alo
  %.not21.i.i.i = icmp eq i64 %i.alr, 0
  br i1 %.not21.i.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.preheader.i.i.i
  %i.als = call fastcc i64 @jxl_u64(ptr noundef nonnull %7)
  %i.alt = add i64 %i.als, %.01732.i.i.i
  %.val24.pre.i.i.i = load i32, ptr %i.dv, align 8, !tbaa !21
  %.val25.pre.i.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.preheader.i.i.i
  %.val23.i.i.i = phi i32 [ %.val25.pre.i.i.i, %bb.ey ], [ %.val2538.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %.val.i.i.i = phi i32 [ %.val24.pre.i.i.i, %bb.ey ], [ %.val2436.i.i.i, %.preheader.i.i.i ] ; 6 uses
  %.1.i.i.i = phi i64 [ %i.alt, %bb.ey ], [ %.01732.i.i.i, %.preheader.i.i.i ] ; 4 uses
  %i.alu = icmp slt i32 %.val23.i.i.i, %.val.i.i.i
  br i1 %i.alu, label %try_parse.exit.thread, label %bb.ex

bb.fa:                                            ; preds = %bb.ex
  %i.alv = icmp ugt i64 %.1.i.i.i, 2147483647
  br i1 %i.alv, label %try_parse.exit.thread, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.alw = sub nsw i32 %.val23.i.i.i, %.val.i.i.i
  %i.alx = sext i32 %i.alw to i64
  %i.aly = icmp ugt i64 %.1.i.i.i, %i.alx
  br i1 %i.aly, label %try_parse.exit.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.alz = trunc nuw nsw i64 %.1.i.i.i to i32     ; 2 uses
  %i.ama = sub nsw i32 0, %.val.i.i.i             ; 2 uses
  %i.amb = load i32, ptr %i.du, align 8, !tbaa !20
  %i.amc = sub nsw i32 %i.amb, %.val.i.i.i
  %i.amd = icmp slt i32 %i.alz, %i.ama
  %..i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.alz, i32 %i.amc)
  %.0.i.i.i.i.i = select i1 %i.amd, i32 %i.ama, i32 %..i.i.i.i.i
  %i.ame = add nsw i32 %.0.i.i.i.i.i, %.val.i.i.i
  store i32 %i.ame, ptr %i.dv, align 8, !tbaa !21
  br label %.thread569.i.i

.thread569.i.i:                                   ; preds = %bb.fc, %bb.ew, %.thread564.i.i
  %i.amf = call fastcc i64 @jxl_u64(ptr noundef nonnull %7) ; 2 uses
  %.val26.i430.i.i = load i32, ptr %i.dv, align 8, !tbaa !21 ; 3 uses
  %.val27.i431.i.i = load i32, ptr %i.ds, align 4, !tbaa !19 ; 2 uses
  %i.amg = icmp slt i32 %.val27.i431.i.i, %.val26.i430.i.i
  br i1 %i.amg, label %try_parse.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %.thread569.i.i
  %.not.i432.i.i = icmp eq i64 %i.amf, 0
  br i1 %.not.i432.i.i, label %.thread549.i.i, label %.preheader.i433.i.i

bb.fe:                                            ; preds = %bb.fg
  %indvars.iv.next.i444.i.i = add nuw nsw i64 %indvars.iv.i436.i.i, 1 ; 2 uses
  %exitcond.i445.i.i = icmp eq i64 %indvars.iv.next.i444.i.i, 64
  br i1 %exitcond.i445.i.i, label %bb.fh, label %.preheader.i433.i.i, !llvm.loop !55

.preheader.i433.i.i:                              ; preds = %bb.fd, %bb.fe
  %.val2538.i434.i.i = phi i32 [ %.val23.i441.i.i, %bb.fe ], [ %.val27.i431.i.i, %bb.fd ]
  %.val2436.i435.i.i = phi i32 [ %.val.i442.i.i, %bb.fe ], [ %.val26.i430.i.i, %bb.fd ]
  %indvars.iv.i436.i.i = phi i64 [ %indvars.iv.next.i444.i.i, %bb.fe ], [ 0, %bb.fd ] ; 2 uses
  %.01732.i437.i.i = phi i64 [ %.1.i443.i.i, %bb.fe ], [ 0, %bb.fd ] ; 2 uses
  %i.amh = shl nuw i64 1, %indvars.iv.i436.i.i
  %i.ami = and i64 %i.amh, %i.amf
  %.not21.i438.i.i = icmp eq i64 %i.ami, 0
  br i1 %.not21.i438.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %.preheader.i433.i.i
  %i.amj = call fastcc i64 @jxl_u64(ptr noundef nonnull %7)
  %i.amk = add i64 %i.amj, %.01732.i437.i.i
  %.val24.pre.i439.i.i = load i32, ptr %i.dv, align 8, !tbaa !21
  %.val25.pre.i440.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.preheader.i433.i.i
  %.val23.i441.i.i = phi i32 [ %.val25.pre.i440.i.i, %bb.ff ], [ %.val2538.i434.i.i, %.preheader.i433.i.i ] ; 3 uses
  %.val.i442.i.i = phi i32 [ %.val24.pre.i439.i.i, %bb.ff ], [ %.val2436.i435.i.i, %.preheader.i433.i.i ] ; 6 uses
  %.1.i443.i.i = phi i64 [ %i.amk, %bb.ff ], [ %.01732.i437.i.i, %.preheader.i433.i.i ] ; 4 uses
  %i.aml = icmp slt i32 %.val23.i441.i.i, %.val.i442.i.i
  br i1 %i.aml, label %try_parse.exit.thread, label %bb.fe

bb.fh:                                            ; preds = %bb.fe
  %i.amm = icmp ugt i64 %.1.i443.i.i, 2147483647
  br i1 %i.amm, label %try_parse.exit.thread, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.amn = sub nsw i32 %.val23.i441.i.i, %.val.i442.i.i
  %i.amo = sext i32 %i.amn to i64
  %i.amp = icmp ugt i64 %.1.i443.i.i, %i.amo
  br i1 %i.amp, label %try_parse.exit.thread, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.amq = trunc nuw nsw i64 %.1.i443.i.i to i32  ; 2 uses
  %i.amr = sub nsw i32 0, %.val.i442.i.i          ; 2 uses
  %i.ams = load i32, ptr %i.du, align 8, !tbaa !20
  %i.amt = sub nsw i32 %i.ams, %.val.i442.i.i
  %i.amu = icmp slt i32 %i.amq, %i.amr
  %..i.i.i446.i.i = call i32 @llvm.smin.i32(i32 %i.amq, i32 %i.amt)
  %.0.i.i.i447.i.i = select i1 %i.amu, i32 %i.amr, i32 %..i.i.i446.i.i
  %i.amv = add nsw i32 %.0.i.i.i447.i.i, %.val.i442.i.i
  br label %.thread549.i.i

.thread549.i.i:                                   ; preds = %bb.fj, %bb.fd, %bb.bi
  %i.amw = phi i32 [ %spec.select.i.i.i, %bb.bi ], [ %i.amv, %bb.fj ], [ %.val26.i430.i.i, %bb.fd ] ; 4 uses
  %.1241561.i.i = phi i32 [ %i.fb, %bb.bi ], [ %.0240.i.i, %bb.fj ], [ %.0240.i.i, %bb.fd ]
  %.1243560.i.i = phi i32 [ %i.fa, %bb.bi ], [ %.0242.i.i, %bb.fj ], [ %.0242.i.i, %bb.fd ]
  %.1249559.i.i = phi i32 [ 1, %bb.bi ], [ %.0248477.i.i, %bb.fj ], [ %.0248477.i.i, %bb.fd ] ; 2 uses
  %.1258558.i.i = phi i32 [ 0, %bb.bi ], [ %.0257496.i.i, %bb.fj ], [ %.0257496.i.i, %bb.fd ] ; 2 uses
  %.1260557.i.i = phi i32 [ 1, %bb.bi ], [ %.0259.i.i, %bb.fj ], [ %.0259.i.i, %bb.fd ] ; 2 uses
  %.1262556.i.i = phi i32 [ 1, %bb.bi ], [ %.0261489495.i.i, %bb.fj ], [ %.0261489495.i.i, %bb.fd ] ; 2 uses
  %i.amx = add i32 %.1243560.i.i, -1
  %i.amy = udiv i32 %i.amx, %.1249559.i.i
  %i.amz = lshr i32 %i.amy, %.1258558.i.i         ; 3 uses
  %i.ana = add i32 %i.amz, 1                      ; 2 uses
  %i.anb = add i32 %.1241561.i.i, -1
  %i.anc = udiv i32 %i.anb, %.1249559.i.i
  %i.and = lshr i32 %i.anc, %.1258558.i.i         ; 3 uses
  %i.ane = add i32 %i.and, 1                      ; 2 uses
  %i.anf = add nuw nsw i32 %.1260557.i.i, 7       ; 2 uses
  %i.ang = lshr i32 %i.amz, %i.anf
  %i.anh = add nuw nsw i32 %i.ang, 1
  %i.ani = lshr i32 %i.and, %i.anf
  %i.anj = add nuw nsw i32 %i.ani, 1
  %i.ank = mul i32 %i.anj, %i.anh                 ; 2 uses
  %i.anl = icmp eq i32 %i.ank, 1
  %i.anm = icmp eq i32 %.1262556.i.i, 1
  %or.cond19.i.i = and i1 %i.anm, %i.anl
  br i1 %or.cond19.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.thread549.i.i
  %i.ann = add nuw nsw i32 %.1260557.i.i, 10      ; 2 uses
  %i.ano = lshr i32 %i.amz, %i.ann
  %i.anp = add nuw nsw i32 %i.ano, 1
  %i.anq = lshr i32 %i.and, %i.ann
  %i.anr = add nuw nsw i32 %i.anq, 1
  %i.ans = mul i32 %i.anr, %i.anp
  %i.ant = add i32 %i.ans, 2
  %i.anu = mul i32 %i.ank, %.1262556.i.i
  %i.anv = add i32 %i.ant, %i.anu
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.thread549.i.i
  %.0239.i.i = phi i32 [ %i.anv, %bb.fk ], [ 1, %.thread549.i.i ] ; 7 uses
  %i.anw = load ptr, ptr %7, align 8, !tbaa !18
  %i.anx = lshr i32 %i.amw, 3
  %i.any = zext nneg i32 %i.anx to i64
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.any
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !15
  %i.aob = load i32, ptr %i.du, align 8, !tbaa !20
  %i.aoc = icmp slt i32 %i.amw, %i.aob
  %i.aod = zext i1 %i.aoc to i32
  %spec.select.i450.i.i = add i32 %i.amw, %i.aod  ; 2 uses
  %i.aoe = zext i8 %i.aoa to i32
  %i.aof = and i32 %i.amw, 7
  store i32 %spec.select.i450.i.i, ptr %i.dv, align 8, !tbaa !21
  %i.aog = shl nuw nsw i32 1, %i.aof
  %i.aoh = and i32 %i.aog, %i.aoe
  %.not303.i.i = icmp eq i32 %i.aoh, 0
  br i1 %.not303.i.i, label %bb.fw, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.aoi = shl i32 %i.fa, 3                       ; 2 uses
  %i.aoj = icmp ugt i32 %i.ana, %i.aoi
  %.pre671.i.i = shl i32 %i.fb, 3                 ; 2 uses
  %i.aok = icmp ugt i32 %i.ane, %.pre671.i.i
  %or.cond736.i.i = select i1 %i.aoj, i1 true, i1 %i.aok
  br i1 %or.cond736.i.i, label %._crit_edge670.i.i, label %bb.fn

._crit_edge670.i.i:                               ; preds = %bb.fm
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 24, ptr noundef nonnull @.str, i32 noundef %i.ana, i32 noundef %i.ane, i32 noundef %i.aoi, i32 noundef %.pre671.i.i) #10
  br label %parse_frame_header.exit.thread100.i

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.et, i8 0, i64 88, i1 false)
  store ptr %1, ptr %i.eu, align 8, !tbaa !28
  store i64 -1, ptr %6, align 8, !tbaa !29
  %i.aol = call fastcc i32 @read_distribution_bundle(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %i.ev, i32 noundef 8, i32 noundef 0)
  %i.aom = icmp slt i32 %i.aol, 0
  br i1 %i.aom, label %bb.fo, label %entropy_decoder_init.exit.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.aon = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @av_freep(ptr noundef nonnull %i.aon) #10
  %i.aoo = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !30
  %.not.i.i.i.i.i = icmp eq i32 %i.aop, 0
  br i1 %.not.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aoq = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !31
  %.not8.i.i.i.i.i = icmp eq ptr %i.aor, null
  br i1 %.not8.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.fp
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.aot = load i32, ptr %i.aos, align 8, !tbaa !32
  %i.aou = icmp sgt i32 %i.aot, 0
  br i1 %i.aou, label %.lr.ph.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.aov = load ptr, ptr %i.aoq, align 8, !tbaa !31
  %i.aow = getelementptr inbounds nuw [2640 x i8], ptr %i.aov, i64 %indvars.iv.i.i.i.i.i
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.aox) #10
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.aoy = load i32, ptr %i.aos, align 8, !tbaa !32
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = icmp slt i64 %indvars.iv.next.i.i.i.i.i, %i.aoz
  br i1 %i.apa, label %.lr.ph.i.i.i.i.i, label %entropy_decoder_init.exit.thread.i.i, !llvm.loop !0

entropy_decoder_init.exit.thread.i.i:             ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.fp, %bb.fo
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @av_freep(ptr noundef nonnull %i.apb) #10
  %i.apc = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @av_freep(ptr noundef nonnull %i.apc) #10
  br label %parse_frame_header.exit.thread100.i

entropy_decoder_init.exit.i.i:                    ; preds = %bb.fn
  %.val354.i.i = load i32, ptr %i.dv, align 8, !tbaa !21
  %.val355.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %i.apd = icmp slt i32 %.val355.i.i, %.val354.i.i
  br i1 %i.apd, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %entropy_decoder_init.exit.i.i
  %i.ape = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @av_freep(ptr noundef nonnull %i.ape) #10
  %i.apf = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !30
  %.not.i.i.i.i = icmp eq i32 %i.apg, 0
  br i1 %.not.i.i.i.i, label %entropy_decoder_close.exit.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aph = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !31
  %.not8.i.i.i.i = icmp eq ptr %i.api, null
  br i1 %.not8.i.i.i.i, label %entropy_decoder_close.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.fr
  %i.apj = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !32
  %i.apl = icmp sgt i32 %i.apk, 0
  br i1 %i.apl, label %.lr.ph.i.i.i.i, label %entropy_decoder_close.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  %i.apm = load ptr, ptr %i.aph, align 8, !tbaa !31
  %i.apn = getelementptr inbounds nuw [2640 x i8], ptr %i.apm, i64 %indvars.iv.i.i.i.i
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.apo) #10
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.app = load i32, ptr %i.apj, align 8, !tbaa !32
  %i.apq = sext i32 %i.app to i64
  %i.apr = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.apq
  br i1 %i.apr, label %.lr.ph.i.i.i.i, label %entropy_decoder_close.exit.i.i, !llvm.loop !0

entropy_decoder_close.exit.i.i:                   ; preds = %.lr.ph.i.i.i.i, %.preheader.i.i.i.i, %bb.fr, %bb.fq
  %i.aps = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @av_freep(ptr noundef nonnull %i.aps) #10
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @av_freep(ptr noundef nonnull %i.apt) #10
  br label %parse_frame_header.exit.thread100.i

bb.fs:                                            ; preds = %entropy_decoder_init.exit.i.i
  %.not.i.i451.i.i = icmp ult i32 %.0239.i.i, 65536 ; 2 uses
  %i.apu = lshr i32 %.0239.i.i, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i451.i.i, i32 %.0239.i.i, i32 %i.apu ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i451.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.apv = lshr i32 %spec.select.i.i.i.i, 8
  %i.apw = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.apv
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.apw
  %i.apx = zext nneg i32 %.110.i.i.i.i to i64
  %i.apy = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !15
  %i.aqa = zext i8 %i.apz to i32
  %i.aqb = icmp ne i32 %.0239.i.i, 0
  %i.aqc = zext i1 %i.aqb to i32
  %i.aqd = or disjoint i32 %.1.i.i.i.i, %i.aqc
  %i.aqe = add nuw nsw i32 %i.aqd, %i.aqa
  %spec.select.i452.i.i = call range(i32 0, 8) i32 @llvm.umin.i32(i32 %i.aqe, i32 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.aqf = call fastcc i32 @decode_hybrid_varlen_uint(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %i.ev, i32 noundef range(i32 0, 41) %spec.select.i452.i.i, ptr noundef %i.b) ; 2 uses
  %i.aqg = icmp slt i32 %i.aqf, 0
  %i.aqh = sext i32 %i.aqf to i64
  %i.aqi = load i32, ptr %i.b, align 4
  %i.aqj = zext i32 %i.aqi to i64
  %.0.i453.i.i = select i1 %i.aqg, i64 %i.aqh, i64 %i.aqj ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.aqk = icmp slt i64 %.0.i453.i.i, 0
  %i.aql = zext i32 %.0239.i.i to i64
  %i.aqm = icmp sgt i64 %.0.i453.i.i, %i.aql
  %or.cond312.i.i = select i1 %i.aqk, i1 true, i1 %i.aqm
  br i1 %or.cond312.i.i, label %bb.ft, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.fs
  %.not304616.not.i.i = icmp eq i64 %.0.i453.i.i, 0
  br i1 %.not304616.not.i.i, label %.preheader.i.._crit_edge.i_crit_edge.i, label %.lr.ph619.preheader.i.i

.preheader.i.._crit_edge.i_crit_edge.i:           ; preds = %.preheader.i.i
  %.val.i462.pre.i.pre.i = load i32, ptr %i.dv, align 8, !tbaa !21
  br label %._crit_edge.i.i

.lr.ph619.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.aqn = trunc nuw i64 %.0.i453.i.i to i32
  br label %.lr.ph619.i.i

bb.ft:                                            ; preds = %bb.fs
  call fastcc void @entropy_decoder_close(ptr noundef %6)
  br label %parse_frame_header.exit.thread100.i

bb.fu:                                            ; preds = %bb.fv
  %i.aqo = add nuw i32 %.0226618.i.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aqo, %i.aqn
  br i1 %exitcond.not.i, label %._crit_edge.i.i, label %.lr.ph619.i.i, !llvm.loop !56

.lr.ph619.i.i:                                    ; preds = %bb.fu, %.lr.ph619.preheader.i.i
  %.0226618.i.i = phi i32 [ %i.aqo, %bb.fu ], [ 0, %.lr.ph619.preheader.i.i ]
  %.0227617.i.i = phi i64 [ %.0.i461.i.i, %bb.fu ], [ 0, %.lr.ph619.preheader.i.i ] ; 3 uses
  %i.aqp = trunc nuw i64 %.0227617.i.i to i32     ; 2 uses
  %.not.i.i454.i.i = icmp samesign ult i64 %.0227617.i.i, 65536 ; 2 uses
  %i.aqq = lshr i32 %i.aqp, 16
  %spec.select.i.i455.i.i = select i1 %.not.i.i454.i.i, i32 %i.aqp, i32 %i.aqq ; 3 uses
  %spec.select12.i.i456.i.i = select i1 %.not.i.i454.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i457.i.i = icmp samesign ult i32 %spec.select.i.i455.i.i, 256 ; 2 uses
  %i.aqr = lshr i32 %spec.select.i.i455.i.i, 8
  %i.aqs = or disjoint i32 %spec.select12.i.i456.i.i, 8
  %.110.i.i458.i.i = select i1 %.not11.i.i457.i.i, i32 %spec.select.i.i455.i.i, i32 %i.aqr
  %.1.i.i459.i.i = select i1 %.not11.i.i457.i.i, i32 %spec.select12.i.i456.i.i, i32 %i.aqs
  %i.aqt = zext nneg i32 %.110.i.i458.i.i to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !15
  %i.aqw = zext i8 %i.aqv to i32
  %i.aqx = icmp ne i64 %.0227617.i.i, 0
  %i.aqy = zext i1 %i.aqx to i32
  %i.aqz = add nuw nsw i32 %i.aqw, %i.aqy
  %i.ara = add nuw nsw i32 %i.aqz, %.1.i.i459.i.i
  %spec.select.i460.i.i = call range(i32 0, 8) i32 @llvm.umin.i32(i32 %i.ara, i32 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.arb = call fastcc i32 @decode_hybrid_varlen_uint(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %i.ev, i32 noundef range(i32 0, 41) %spec.select.i460.i.i, ptr noundef %i.a) ; 2 uses
  %i.arc = icmp slt i32 %i.arb, 0
  %i.ard = sext i32 %i.arb to i64
  %i.are = load i32, ptr %i.a, align 4
  %i.arf = zext i32 %i.are to i64
  %.0.i461.i.i = select i1 %i.arc, i64 %i.ard, i64 %i.arf ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.arg = icmp slt i64 %.0.i461.i.i, 0
  br i1 %i.arg, label %parse_frame_header.exit.i, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph619.i.i
  %.val352.i.i = load i32, ptr %i.dv, align 8, !tbaa !21 ; 2 uses
  %.val353.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %i.arh = icmp slt i32 %.val353.i.i, %.val352.i.i
  br i1 %i.arh, label %.thread593.i.i, label %bb.fu

.thread593.i.i:                                   ; preds = %bb.fv
  call fastcc void @entropy_decoder_close(ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %try_parse.exit.thread

._crit_edge.i.i:                                  ; preds = %bb.fu, %.preheader.i.._crit_edge.i_crit_edge.i
  %.val.i462.pre.i.i = phi i32 [ %.val.i462.pre.i.pre.i, %.preheader.i.._crit_edge.i_crit_edge.i ], [ %.val352.i.i, %bb.fu ]
  call fastcc void @entropy_decoder_close(ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.fw

bb.fw:                                            ; preds = %._crit_edge.i.i, %bb.fl
  %.val.i462.i.i = phi i32 [ %.val.i462.pre.i.i, %._crit_edge.i.i ], [ %spec.select.i450.i.i, %bb.fl ] ; 3 uses
  %i.ari = sub nsw i32 0, %.val.i462.i.i
  %i.arj = and i32 %i.ari, 7                      ; 2 uses
  %.not.i463.i.i = icmp eq i32 %i.arj, 0
  br i1 %.not.i463.i.i, label %align_get_bits.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ark = load i32, ptr %i.du, align 8, !tbaa !20
  %i.arl = add i32 %i.arj, %.val.i462.i.i
  %i.arm = call i32 @llvm.umin.i32(i32 %i.ark, i32 %i.arl)
  br label %align_get_bits.exit.i.i

align_get_bits.exit.i.i:                          ; preds = %bb.fx, %bb.fw
  %.promoted624.i.i = phi i32 [ %.val.i462.i.i, %bb.fw ], [ %i.arm, %bb.fx ] ; 2 uses
  %i.arn = load ptr, ptr %7, align 8, !tbaa !18   ; 4 uses
  %.not305620.not.i.i = icmp eq i32 %.0239.i.i, 0
  br i1 %.not305620.not.i.i, label %._crit_edge623.i.i, label %.lr.ph622.i.i

.lr.ph622.i.i:                                    ; preds = %align_get_bits.exit.i.i
  %i.aro = load i32, ptr %i.du, align 8, !tbaa !20 ; 4 uses
  %.val351.i.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %.promoted625.i.i = load i32, ptr %i.ew, align 4, !tbaa !113
  br label %bb.fz

bb.fy:                                            ; preds = %jxl_u32.exit.i.i
  %i.arp = add nuw i32 %.0621.i.i, 1              ; 2 uses
  %exitcond639.not.i.i = icmp eq i32 %i.arp, %.0239.i.i
  br i1 %exitcond639.not.i.i, label %._crit_edge623.i.i, label %bb.fz, !llvm.loop !57

bb.fz:                                            ; preds = %bb.fy, %.lr.ph622.i.i
  %i.arq = phi i32 [ %.promoted625.i.i, %.lr.ph622.i.i ], [ %i.atm, %bb.fy ]
  %i.arr = phi i32 [ %.promoted624.i.i, %.lr.ph622.i.i ], [ %i.atk, %bb.fy ] ; 3 uses
  %.0621.i.i = phi i32 [ 0, %.lr.ph622.i.i ], [ %i.arp, %bb.fy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #10
  store <4 x i32> <i32 0, i32 1024, i32 17408, i32 4211712>, ptr %i.y, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #10
  store <4 x i32> <i32 10, i32 14, i32 22, i32 30>, ptr %i.z, align 16, !tbaa !13
  %i.ars = lshr i32 %i.arr, 3
  %i.art = zext nneg i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 1, !tbaa !15
  %i.arw = and i32 %i.arr, 7
  %i.arx = lshr i32 %i.arv, %i.arw
  %i.ary = and i32 %i.arx, 3
  %i.arz = add i32 %i.arr, 2
  %i.asa = call i32 @llvm.umin.i32(i32 %i.aro, i32 %i.arz) ; 5 uses
  %i.asb = zext nneg i32 %i.ary to i64            ; 2 uses
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.asb
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !13 ; 2 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.asb
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !13 ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.asf, 0
  br i1 %.not.i.i.i, label %jxl_u32.exit.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.asg = icmp slt i32 %i.asf, 26
  %i.ash = lshr i32 %i.asa, 3
  %i.asi = zext nneg i32 %i.ash to i64
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.asi
  %i.ask = load i32, ptr %i.asj, align 1, !tbaa !15
  %i.asl = and i32 %i.asa, 7
  %i.asm = lshr i32 %i.ask, %i.asl                ; 2 uses
  br i1 %i.asg, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.asn = sub i32 32, %i.asf
  %i.aso = lshr i32 -1, %i.asn
  %i.asp = and i32 %i.asm, %i.aso
  %i.asq = add i32 %i.asf, %i.asa
  %i.asr = call i32 @llvm.umin.i32(i32 %i.aro, i32 %i.asq)
  br label %get_bits_long.exit466.i.i

bb.gc:                                            ; preds = %bb.ga
  %i.ass = and i32 %i.asm, 65535
  %i.ast = add i32 %i.asa, 16
  %i.asu = call i32 @llvm.umin.i32(i32 %i.aro, i32 %i.ast) ; 3 uses
  %i.asv = lshr i32 %i.asu, 3
  %i.asw = zext nneg i32 %i.asv to i64
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.asw
  %i.asy = load i32, ptr %i.asx, align 1, !tbaa !15
  %i.asz = and i32 %i.asu, 7
  %i.ata = lshr i32 %i.asy, %i.asz
  %i.atb = sub nsw i32 48, %i.asf
  %i.atc = lshr i32 -1, %i.atb
  %i.atd = and i32 %i.ata, %i.atc
  %i.ate = add i32 %i.asu, -16
  %i.atf = add i32 %i.ate, %i.asf
  %i.atg = call i32 @llvm.umin.i32(i32 %i.aro, i32 %i.atf)
  %i.ath = shl i32 %i.atd, 16
  %i.ati = or disjoint i32 %i.ath, %i.ass
  br label %get_bits_long.exit466.i.i

get_bits_long.exit466.i.i:                        ; preds = %bb.gc, %bb.gb
  %.sink650.i.i = phi i32 [ %i.asr, %bb.gb ], [ %i.atg, %bb.gc ]
  %.0.i465.i.i = phi i32 [ %i.asp, %bb.gb ], [ %i.ati, %bb.gc ]
  %i.atj = add i32 %.0.i465.i.i, %i.asd
  br label %jxl_u32.exit.i.i

jxl_u32.exit.i.i:                                 ; preds = %get_bits_long.exit466.i.i, %bb.fz
  %i.atk = phi i32 [ %.sink650.i.i, %get_bits_long.exit466.i.i ], [ %i.asa, %bb.fz ] ; 3 uses
  %.0.i.i89.i = phi i32 [ %i.atj, %get_bits_long.exit466.i.i ], [ %i.asd, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #10
  %i.atl = shl i32 %.0.i.i89.i, 3
  %i.atm = add i32 %i.atl, %i.arq                 ; 2 uses
  store i32 %i.atm, ptr %i.ew, align 4, !tbaa !113
  %i.atn = icmp slt i32 %.val351.i.i, %i.atk
  br i1 %i.atn, label %try_parse.exit.thread, label %bb.fy

._crit_edge623.i.i:                               ; preds = %bb.fy, %align_get_bits.exit.i.i
  %.val.i467.i.i = phi i32 [ %.promoted624.i.i, %align_get_bits.exit.i.i ], [ %i.atk, %bb.fy ] ; 3 uses
  %i.ato = sub nsw i32 0, %.val.i467.i.i
  %i.atp = and i32 %i.ato, 7                      ; 2 uses
  %.not.i468.i.i = icmp eq i32 %i.atp, 0
  br i1 %.not.i468.i.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge623.i.i
  %i.atq = load i32, ptr %i.du, align 8, !tbaa !20
  %i.atr = add i32 %i.atp, %.val.i467.i.i
  %i.ats = call i32 @llvm.umin.i32(i32 %i.atq, i32 %i.atr)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %._crit_edge623.i.i
  %.val81.i = phi i32 [ %.val.i467.i.i, %._crit_edge623.i.i ], [ %i.ats, %bb.gd ] ; 5 uses
  %i.att = load i32, ptr %i.ew, align 4, !tbaa !113 ; 4 uses
  %i.atu = sub i32 %i.att, %.val349.i.i
  %i.atv = add i32 %i.atu, %.val81.i              ; 2 uses
  store i32 %i.atv, ptr %i.ex, align 8, !tbaa !114
  %i.atw = zext i32 %i.atv to i64
  %i.atx = load i64, ptr %i.bh, align 8, !tbaa !71
  %i.aty = add nsw i64 %i.atx, %i.atw             ; 2 uses
  store i64 %i.aty, ptr %i.bh, align 8, !tbaa !71
  %i.atz = load i32, ptr %i.en, align 8, !tbaa !115
  %.not79.i = icmp eq i32 %i.atz, 0
  br i1 %.not79.i, label %bb.gg, label %bb.gf

parse_frame_header.exit.thread100.i:              ; preds = %bb.ft, %entropy_decoder_close.exit.i.i, %entropy_decoder_init.exit.thread.i.i, %._crit_edge670.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %try_parse.exit.thread

parse_frame_header.exit.i:                        ; preds = %.lr.ph619.i.i
  call fastcc void @entropy_decoder_close(ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %try_parse.exit.thread

bb.gf:                                            ; preds = %bb.ge
  %i.aua = sdiv i64 %i.aty, 8
  br label %try_parse.exit

bb.gg:                                            ; preds = %bb.ge
  %.val82.i = load i32, ptr %i.ds, align 4, !tbaa !19
  %i.aub = sub nsw i32 %.val82.i, %.val81.i
  %.not80.i = icmp ugt i32 %i.aub, %i.att
  br i1 %.not80.i, label %bb.gh, label %try_parse.exit.thread

bb.gh:                                            ; preds = %bb.gg
  %i.auc = sub nsw i32 0, %.val81.i               ; 2 uses
  %i.aud = load i32, ptr %i.du, align 8, !tbaa !20 ; 2 uses
  %i.aue = sub nsw i32 %i.aud, %.val81.i
  %i.auf = icmp slt i32 %i.att, %i.auc
  %..i.i93.i = call i32 @llvm.smin.i32(i32 %i.att, i32 %i.aue)
  %.0.i.i94.i = select i1 %i.auf, i32 %i.auc, i32 %..i.i93.i
  %i.aug = add nsw i32 %.0.i.i94.i, %.val81.i     ; 2 uses
  store i32 %i.aug, ptr %i.dv, align 8, !tbaa !21
  br label %bb.bi

try_parse.exit.thread:                            ; preds = %bb.gg, %bb.fi, %bb.fh, %.thread569.i.i, %bb.fb, %bb.fa, %bb.ev, %bb.eq, %bb.eo, %bb.es, %.thread564.i.i, %bb.ek, %jxl_u32.exit315.i.i, %bb.cs, %jxl_u32.exit348.i.i, %bb.de, %bb.ds, %bb.ez, %bb.fg, %jxl_u32.exit.i.i, %bb.k, %bb.f, %bb.bb, %bb.bh, %.thread593.i.i, %parse_frame_header.exit.i, %parse_frame_header.exit.thread100.i, %bb.i, %bb.n, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %.thread72

try_parse.exit:                                   ; preds = %bb.ba, %bb.gf
  %.062.i = phi i64 [ %i.dp, %bb.ba ], [ %i.aua, %bb.gf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.auh = icmp slt i64 %.062.i, 0
  br i1 %i.auh, label %.thread72, label %bb.gi

bb.gi:                                            ; preds = %try_parse.exit
  store i64 %.062.i, ptr %i.an, align 8, !tbaa !72
  %i.aui = load i32, ptr %i.aj, align 8, !tbaa !70
  %.not62 = icmp eq i32 %i.aui, 0
  br i1 %.not62, label %.thread.thread.thread, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.auj = load i64, ptr %i.ap, align 8, !tbaa !73
  %i.auk = add nsw i64 %i.auj, %.062.i
  store i64 %i.auk, ptr %i.ap, align 8, !tbaa !73
  br label %.thread.thread200

.thread:                                          ; preds = %bb.e
  %.not63 = icmp eq i32 %i.ak, 0
  br i1 %.not63, label %.thread..thread.thread_crit_edge, label %.thread.thread200

.thread..thread.thread_crit_edge:                 ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %.thread.thread

.thread.thread200:                                ; preds = %bb.d, %bb.gj, %.thread
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ac, i64 192 ; 3 uses
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !72
  %i.aun = icmp sgt i64 %i.aum, -1
  br i1 %i.aun, label %bb.gk, label %.thread72

bb.gk:                                            ; preds = %.thread.thread200
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ac, i64 152 ; 2 uses
  %i.aup = load i64, ptr %i.auo, align 8, !tbaa !73 ; 4 uses
  %i.auq = sext i32 %.051 to i64
  %i.aur = icmp sgt i64 %i.aup, %i.auq
  br i1 %i.aur, label %.thread72, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aus = trunc i64 %i.aup to i32
  %i.aut = sub i32 %.051, %i.aus                  ; 2 uses
  %i.auu = icmp ne ptr %.052, null
  %i.auv = icmp sgt i32 %i.aut, -1
  %or.cond.i.i64 = and i1 %i.auu, %i.auv
  br i1 %or.cond.i.i64, label %bytestream2_init.exit.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 141) #10
  call void @abort() #11
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.gl
  %i.auw = getelementptr inbounds i8, ptr %.052, i64 %i.aup ; 2 uses
  %i.aux = zext nneg i32 %i.aut to i64
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auw, i64 %i.aux
  %i.auz = ptrtoint ptr %i.auy to i64             ; 5 uses
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gt, %bytestream2_init.exit.i
  %i.ava = phi i64 [ %i.aup, %bytestream2_init.exit.i ], [ %i.awe, %bb.gt ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.auw, %bytestream2_init.exit.i ], [ %i.awj, %bb.gt ] ; 5 uses
  %i.avb = ptrtoint ptr %.sroa.0.0.i to i64
  %i.avc = sub i64 %i.auz, %i.avb                 ; 4 uses
  %i.avd = icmp slt i64 %i.avc, 2
  br i1 %i.avd, label %bytestream2_peek_le64.exit.thread.i, label %bytestream2_peek_le16.exit.i

bytestream2_peek_le16.exit.i:                     ; preds = %bb.gn
  %i.ave = load i16, ptr %.sroa.0.0.i, align 1, !tbaa !15
  %i.avf = icmp eq i16 %i.ave, 2815
  br i1 %i.avf, label %skip_boxes.exit, label %bb.go

bb.go:                                            ; preds = %bytestream2_peek_le16.exit.i
  %i.avg = icmp samesign ult i64 %i.avc, 8
  br i1 %i.avg, label %bytestream2_peek_le64.exit.thread.i, label %bytestream2_peek_le64.exit.i

bytestream2_peek_le64.exit.i:                     ; preds = %bb.go
  %i.avh = load i64, ptr %.sroa.0.0.i, align 1, !tbaa !15
  %i.avi = icmp eq i64 %i.avh, 2327332182495854592
  br i1 %i.avi, label %skip_boxes.exit, label %bytestream2_peek_le64.exit.thread.i

bytestream2_peek_le64.exit.thread.i:              ; preds = %bytestream2_peek_le64.exit.i, %bb.go, %bb.gn
  %i.avj = trunc i64 %i.avc to i32
  %i.avk = icmp slt i32 %i.avj, 8
  br i1 %i.avk, label %.thread72, label %bb.gp

bb.gp:                                            ; preds = %bytestream2_peek_le64.exit.thread.i
  %i.avl = icmp slt i64 %i.avc, 4
  br i1 %i.avl, label %bb.gu, label %bytestream2_get_be32.exit.i

bytestream2_get_be32.exit.i:                      ; preds = %bb.gp
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.avn = load i32, ptr %.sroa.0.0.i, align 1, !tbaa !15 ; 2 uses
  %i.avo = call i32 @llvm.bswap.i32(i32 %i.avn)
  %i.avp = zext i32 %i.avo to i64
  %i.avq = ptrtoint ptr %i.avm to i64
  %i.avr = sub i64 %i.auz, %i.avq
  %..i29.i = call i64 @llvm.smin.i64(i64 %i.avr, i64 4)
  %i.avs = getelementptr inbounds i8, ptr %i.avm, i64 %..i29.i ; 4 uses
  %i.avt = icmp eq i32 %i.avn, 16777216
  br i1 %i.avt, label %bb.gq, label %bytestream2_get_be64.exit.i

bb.gq:                                            ; preds = %bytestream2_get_be32.exit.i
  %i.avu = ptrtoint ptr %i.avs to i64
  %i.avv = sub i64 %i.auz, %i.avu                 ; 2 uses
  %i.avw = trunc i64 %i.avv to i32
  %i.avx = icmp slt i32 %i.avw, 8
  br i1 %i.avx, label %.thread72, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.avy = icmp slt i64 %i.avv, 8
  br i1 %i.avy, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avs, i64 8
  %i.awa = load i64, ptr %i.avs, align 1, !tbaa !15
  %i.awb = call noundef i64 @llvm.bswap.i64(i64 %i.awa)
  br label %bytestream2_get_be64.exit.i

bytestream2_get_be64.exit.i:                      ; preds = %bb.gs, %bytestream2_get_be32.exit.i
  %.sroa.0.1.i = phi ptr [ %i.avz, %bb.gs ], [ %i.avs, %bytestream2_get_be32.exit.i ] ; 2 uses
  %.019.i = phi i64 [ %i.awb, %bb.gs ], [ %i.avp, %bytestream2_get_be32.exit.i ] ; 4 uses
  %.0.i65 = phi i64 [ 16, %bb.gs ], [ 8, %bytestream2_get_be32.exit.i ] ; 2 uses
  %.not26.i = icmp ule i64 %.019.i, %.0.i65
  %i.awc = sub nsw i64 2147483647, %i.ava
  %i.awd = icmp ugt i64 %.019.i, %i.awc
  %or.cond.i66 = select i1 %.not26.i, i1 true, i1 %i.awd
  br i1 %or.cond.i66, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bytestream2_get_be64.exit.i
  %i.awe = add i64 %.019.i, %i.ava                ; 2 uses
  store i64 %i.awe, ptr %i.auo, align 8, !tbaa !73
  %i.awf = sub nuw i64 %.019.i, %.0.i65
  %i.awg = ptrtoint ptr %.sroa.0.1.i to i64
  %i.awh = sub i64 %i.auz, %i.awg
  %i.awi = and i64 %i.awf, 4294967295
  %..i.i = call i64 @llvm.smin.i64(i64 %i.awh, i64 %i.awi)
  %i.awj = getelementptr inbounds i8, ptr %.sroa.0.1.i, i64 %..i.i ; 2 uses
  %i.awk = ptrtoint ptr %i.awj to i64
  %i.awl = sub i64 %i.auz, %i.awk
  %i.awm = trunc i64 %i.awl to i32
  %i.awn = icmp slt i32 %i.awm, 1
  br i1 %i.awn, label %.thread72, label %bb.gn

bb.gu:                                            ; preds = %bb.gp, %bytestream2_get_be64.exit.i, %bb.gr
  store i64 -1, ptr %i.aul, align 8, !tbaa !72
  br label %.thread72

skip_boxes.exit:                                  ; preds = %bytestream2_peek_le64.exit.i, %bytestream2_peek_le16.exit.i
  store i64 %i.ava, ptr %i.aul, align 8, !tbaa !72
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread..thread.thread_crit_edge, %skip_boxes.exit
  %i.awo = phi i64 [ %.pre, %.thread..thread.thread_crit_edge ], [ %i.ava, %skip_boxes.exit ] ; 2 uses
  %i.awp = icmp sgt i64 %i.awo, -1
  br i1 %i.awp, label %.thread.thread.thread, label %.thread72

.thread.thread.thread:                            ; preds = %bb.gi, %.thread.thread
  %i.awq = phi i64 [ %i.awo, %.thread.thread ], [ %.062.i, %bb.gi ]
  %i.awr = load i32, ptr %i.ae, align 8, !tbaa !68
  %i.aws = trunc i64 %i.awq to i32
  %i.awt = sub i32 %i.aws, %i.awr
  br label %.thread72

.thread72:                                        ; preds = %bb.gt, %bytestream2_peek_le64.exit.thread.i, %bb.gq, %.thread.thread200, %bb.gk, %try_parse.exit, %try_parse.exit.thread, %.thread.thread, %.thread.thread.thread, %bb.gu, %bb.b
  %.053 = phi i32 [ -100, %bb.gu ], [ -100, %try_parse.exit ], [ %i.awt, %.thread.thread.thread ], [ -100, %.thread.thread ], [ -100, %bb.b ], [ -100, %try_parse.exit.thread ], [ -100, %bb.gk ], [ -100, %.thread.thread200 ], [ -100, %bb.gq ], [ -100, %bytestream2_peek_le64.exit.thread.i ], [ -100, %bb.gt ] ; 2 uses
  %i.awu = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.awv = icmp sgt i32 %.053, %i.awu
  %spec.store.select = select i1 %i.awv, i32 -100, i32 %.053 ; 2 uses
  %i.aww = call i32 @ff_combine_frame(ptr noundef nonnull %i.ac, i32 noundef %spec.store.select, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) #10
  %i.awx = icmp slt i32 %i.aww, 0
  br i1 %i.awx, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.thread72
  %i.awy = load i32, ptr %i.ab, align 4, !tbaa !13
  br label %bb.gx

bb.gw:                                            ; preds = %.thread72
  %i.awz = load ptr, ptr %i.aa, align 8, !tbaa !12
  store ptr %i.awz, ptr %2, align 8, !tbaa !12
  %i.axa = load i32, ptr %i.ab, align 4, !tbaa !13
  store i32 %i.axa, ptr %3, align 4, !tbaa !13
  %i.axb = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.axc = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  store i32 0, ptr %i.axc, align 8, !tbaa !75
  %i.axd = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  store i64 0, ptr %i.axd, align 8, !tbaa !73
  %i.axe = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  store i64 0, ptr %i.axe, align 8, !tbaa !72
  %i.axf = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.axf, i8 0, i64 100, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.axb, i8 0, i64 20, i1 false)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.054 = phi i32 [ %i.awy, %bb.gv ], [ %spec.store.select, %bb.gw ]
  ret i32 %.054
}

declare void @ff_parse_close(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @ff_jpegxl_collect_codestream_header(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_jpegxl_parse_codestream_header(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @skip_icc_profile(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.JXLEntropyDecoder, align 8  ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.b = tail call fastcc i64 @jxl_u64(ptr noundef %1) ; 2 uses
  %i.c = add i64 %i.b, -4194305
  %or.cond = icmp ult i64 %i.c, -4194304
  br i1 %or.cond, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i8 0, i64 88, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %0, ptr %i.e, align 8, !tbaa !28
  store i64 -1, ptr %2, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = call fastcc i32 @read_distribution_bundle(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.f, i32 noundef 41, i32 noundef 0) ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @av_freep(ptr noundef nonnull %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %entropy_decoder_init.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %.not8.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i.i, label %entropy_decoder_init.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %entropy_decoder_init.exit.thread

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw [2640 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.s) #10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !32
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next.i.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %entropy_decoder_init.exit.thread, !llvm.loop !0

entropy_decoder_init.exit.thread:                 ; preds = %.lr.ph.i.i.i, %bb.c, %bb.d, %.preheader.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @av_freep(ptr noundef nonnull %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @av_freep(ptr noundef nonnull %i.x) #10
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val46 = load i32, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %.val47 = load i32, ptr %i.z, align 4, !tbaa !19
  %i.aa = icmp slt i32 %.val47, %.val46
  br i1 %i.aa, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.w
  %.08 = phi i64 [ %i.bk, %bb.w ], [ 0, %bb.e ]   ; 2 uses
  %.0317 = phi i32 [ %.1, %bb.w ], [ 0, %bb.e ]   ; 4 uses
  %.0326 = phi i64 [ %.133, %bb.w ], [ 0, %bb.e ] ; 3 uses
  %.0345 = phi i32 [ %.0353, %bb.w ], [ 0, %bb.e ] ; 5 uses
  %.0353 = phi i32 [ %i.bb, %bb.w ], [ 0, %bb.e ] ; 9 uses
  %i.ab = icmp samesign ult i64 %.08, 129
  br i1 %i.ab, label %icc_context.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ac = and i32 %.0353, 223
  %i.ad = add nsw i32 %i.ac, -65
  %or.cond56.i = icmp ult i32 %i.ad, 26
  br i1 %or.cond56.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %.0353, -48
  %or.cond5.i = icmp ult i32 %i.ae, 10
  %i.af = and i32 %.0353, 253
  %i.ag = icmp eq i32 %i.af, 44
  %or.cond9.i = or i1 %or.cond5.i, %i.ag
  br i1 %or.cond9.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp samesign ult i32 %.0353, 2
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = add nuw nsw i32 %.0353, 3
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp samesign ult i32 %.0353, 16
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp samesign ugt i32 %.0353, 240
  %.not.i = icmp eq i32 %.0353, 255
  %..i = select i1 %i.ak, i32 6, i32 8
  %spec.select.i = select i1 %.not.i, i32 7, i32 %..i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f
  %.052.i = phi i32 [ %spec.select.i, %bb.k ], [ 1, %bb.f ], [ %i.ai, %bb.i ], [ 2, %bb.g ], [ 5, %bb.j ]
  %i.al = and i32 %.0345, 223
  %i.am = add nsw i32 %i.al, -65
  %or.cond57.i = icmp ult i32 %i.am, 26
  br i1 %or.cond57.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %.0345, -48
  %or.cond19.i = icmp ult i32 %i.an, 10
  %i.ao = and i32 %.0345, 253
  %i.ap = icmp eq i32 %i.ao, 44
  %or.cond23.i = or i1 %or.cond19.i, %i.ap
  br i1 %or.cond23.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp samesign ult i32 %.0345, 16
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp samesign ugt i32 %.0345, 240
  %.58.i = select i1 %i.ar, i32 24, i32 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.0.i = phi i32 [ 16, %bb.n ], [ 0, %bb.l ], [ 8, %bb.m ], [ %.58.i, %bb.o ]
  %i.as = add nuw nsw i32 %.0.i, %.052.i
  br label %icc_context.exit

icc_context.exit:                                 ; preds = %.lr.ph, %bb.p
  %.053.i = phi i32 [ %i.as, %bb.p ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.at = call fastcc i32 @decode_hybrid_varlen_uint(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.f, i32 noundef range(i32 0, 41) %.053.i, ptr noundef %i.a) ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  %i.av = sext i32 %i.at to i64
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = zext i32 %i.aw to i64
  %.0.i48 = select i1 %i.au, i64 %i.av, i64 %i.ax ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ay = icmp slt i64 %.0.i48, 0
  br i1 %i.ay, label %.thread.loopexit, label %bb.q

bb.q:                                             ; preds = %icc_context.exit
  %i.az = icmp samesign ugt i64 %.0.i48, 255
  br i1 %i.az, label %.thread.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val = load i32, ptr %i.y, align 8, !tbaa !21
  %.val45 = load i32, ptr %i.z, align 4, !tbaa !19
  %i.ba = icmp slt i32 %.val45, %.val
  br i1 %i.ba, label %.thread.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = trunc nuw nsw i64 %.0.i48 to i32
  %i.bc = icmp slt i32 %.0317, 63
  br i1 %i.bc, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bd = and i64 %.0.i48, 127
  %i.be = zext nneg i32 %.0317 to i64
  %i.bf = shl i64 %i.bd, %i.be
  %i.bg = add i64 %i.bf, %.0326                   ; 2 uses
  %.not = icmp samesign ult i64 %.0.i48, 128
  br i1 %.not, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = add nuw nsw i32 %.0317, 7
  %i.bi = icmp sgt i32 %.0317, 49
  br i1 %i.bi, label %.thread.loopexit, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bj = icmp ult i64 %.0326, 132
  br i1 %i.bj, label %.thread.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.133 = phi i64 [ %i.bg, %bb.u ], [ %.0326, %bb.v ], [ %i.bg, %bb.t ]
  %.1 = phi i32 [ %i.bh, %bb.u ], [ 63, %bb.v ], [ 63, %bb.t ]
  %i.bk = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %i.b
  br i1 %exitcond.not, label %.thread.loopexit, label %.lr.ph, !llvm.loop !116

.thread.loopexit:                                 ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %icc_context.exit, %bb.w
  %.2.ph = phi i64 [ 3199971767, %bb.v ], [ 3199971767, %bb.u ], [ 2897849022, %bb.r ], [ 3199971767, %bb.q ], [ %.0.i48, %icc_context.exit ], [ 0, %bb.w ]
  %i.bl = trunc i64 %.2.ph to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %entropy_decoder_init.exit.thread, %bb.e
  %.2 = phi i32 [ %i.g, %entropy_decoder_init.exit.thread ], [ -1397118274, %bb.e ], [ %i.bl, %.thread.loopexit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @av_freep(ptr noundef nonnull %i.bm) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !30
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %entropy_decoder_close.exit, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %.not8.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i, label %entropy_decoder_close.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !32
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i, label %entropy_decoder_close.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw [2640 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.bw) #10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !32
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i.i, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %entropy_decoder_close.exit, !llvm.loop !0

entropy_decoder_close.exit:                       ; preds = %.lr.ph.i.i, %.thread, %bb.x, %.preheader.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @av_freep(ptr noundef nonnull %i.ca) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @av_freep(ptr noundef nonnull %i.cb) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %entropy_decoder_close.exit
  %.038 = phi i32 [ %.2, %entropy_decoder_close.exit ], [ -1094995529, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @jxl_u64(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 18 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 18 uses
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !15
  %i.j = and i32 %i.b, 7
  %i.k = lshr i32 %i.i, %i.j
  %i.l = and i32 %i.k, 3
  %i.m = add i32 %i.b, 2
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.m) ; 10 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !21
  switch i32 %i.l, label %default.unreachable [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i32 %i.n, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.r = load i32, ptr %i.q, align 1, !tbaa !15
  %i.s = and i32 %i.n, 7
  %i.t = lshr i32 %i.r, %i.s
  %i.u = and i32 %i.t, 15
  %i.v = add i32 %i.n, 4
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.v)
  store i32 %i.w, ptr %i.a, align 8, !tbaa !21
  %i.x = add nuw nsw i32 %i.u, 1
  %i.y = zext nneg i32 %i.x to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.z = lshr i32 %i.n, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !15
  %i.ad = and i32 %i.n, 7
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = and i32 %i.ae, 255
  %i.ag = add i32 %i.n, 8
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ag)
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !21
  %i.ai = add nuw nsw i32 %i.af, 17
  %i.aj = zext nneg i32 %i.ai to i64
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ak = lshr i32 %i.n, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1, !tbaa !15
  %i.ao = and i32 %i.n, 7
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = and i32 %i.ap, 4095                     ; 2 uses
  %i.ar = add i32 %i.n, 12
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ar) ; 5 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !21
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = lshr i32 %i.as, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  %i.ay = icmp slt i32 %i.as, %i.d
  %i.az = zext i1 %i.ay to i32
  %spec.select.i17 = add i32 %i.as, %i.az         ; 4 uses
  %i.ba = zext i8 %i.ax to i32
  %i.bb = and i32 %i.as, 7
  store i32 %spec.select.i17, ptr %i.a, align 8, !tbaa !21
  %i.bc = shl nuw nsw i32 1, %i.bb
  %i.bd = and i32 %i.bc, %i.ba
  %.not18 = icmp eq i32 %i.bd, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.be = lshr i32 %spec.select.i17, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !15
  %i.bi = and i32 %spec.select.i17, 7
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = add i32 %spec.select.i17, 8
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.bk) ; 5 uses
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !21
  %i.bm = shl i32 %i.bj, 12
  %i.bn = and i32 %i.bm, 1044480
  %i.bo = or disjoint i32 %i.bn, %i.aq            ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i32 %i.bl, 3
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !15
  %i.bu = icmp slt i32 %i.bl, %i.d
  %i.bv = zext i1 %i.bu to i32
  %spec.select.i = add i32 %i.bl, %i.bv           ; 4 uses
  %i.bw = zext i8 %i.bt to i32
  %i.bx = and i32 %i.bl, 7
  store i32 %spec.select.i, ptr %i.a, align 8, !tbaa !21
  %i.by = shl nuw nsw i32 1, %i.bx
  %i.bz = and i32 %i.by, %i.bw
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.ca = lshr i32 %spec.select.i, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !15
  %i.ce = and i32 %spec.select.i, 7
  %i.cf = lshr i32 %i.cd, %i.ce
  %i.cg = add i32 %spec.select.i, 8
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cg) ; 5 uses
  store i32 %i.ch, ptr %i.a, align 8, !tbaa !21
  %i.ci = shl i32 %i.cf, 20
  %i.cj = and i32 %i.ci, 267386880
  %i.ck = or disjoint i32 %i.cj, %i.bo
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = lshr i32 %i.ch, 3
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = icmp slt i32 %i.ch, %i.d
  %i.cr = zext i1 %i.cq to i32
  %spec.select.i.1 = add i32 %i.ch, %i.cr         ; 4 uses
  %i.cs = zext i8 %i.cp to i32
  %i.ct = and i32 %i.ch, 7
  store i32 %spec.select.i.1, ptr %i.a, align 8, !tbaa !21
  %i.cu = shl nuw nsw i32 1, %i.ct
  %i.cv = and i32 %i.cu, %i.cs
  %.not.1 = icmp eq i32 %i.cv, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.cw = lshr i32 %spec.select.i.1, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !15
  %i.da = and i32 %spec.select.i.1, 7
  %i.db = lshr i32 %i.cz, %i.da
  %i.dc = and i32 %i.db, 255
  %i.dd = add i32 %spec.select.i.1, 8
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.dd) ; 5 uses
  store i32 %i.de, ptr %i.a, align 8, !tbaa !21
  %i.df = zext nneg i32 %i.dc to i64
end_hunk_1
