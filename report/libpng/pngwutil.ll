Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.compression_state = type { ptr, i64, i32, [1024 x i8] }

@.str = private unnamed_addr constant [38 x i8] c"Invalid bit depth for grayscale image\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid bit depth for RGB image\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid bit depth for paletted image\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid bit depth for grayscale+alpha image\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid bit depth for RGBA image\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid image color type specified\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid compression type specified\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid filter type specified\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Invalid interlace type specified\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Invalid number of colors in palette\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Ignoring request to write a PLTE chunk in grayscale PNG\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Z_OK on Z_FINISH with output space\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Invalid sRGB rendering intent specified\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"No profile for iCCP chunk\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"ICC profile too short\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Incorrect data in iCCP\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"ICC profile length invalid (not a multiple of 4)\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"iCCP: invalid keyword\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"sPLT: invalid keyword\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Invalid sBIT depth specified\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Invalid number of transparent colors specified\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write tRNS chunk out-of-range for bit_depth\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Can't write tRNS with an alpha channel\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Invalid background palette index\00", align 1
@.str.26 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write bKGD chunk out-of-range for bit_depth\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"Invalid number of histogram entries specified\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"tEXt: invalid keyword\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"tEXt: text too long\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"zTXt: invalid compression type\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"zTXt: invalid keyword\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"iTXt: invalid keyword\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"iTXt: invalid compression\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"iTXt: uncompressed text too long\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Unrecognized unit type for oFFs chunk\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"Unrecognized equation type for pCAL chunk\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"pCAL: invalid keyword\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Can't write sCAL (buffer too small)\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Unrecognized unit type for pHYs chunk\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"Invalid time specified for tIME chunk\00", align 1
@png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"length exceeds PNG maximum\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c" using zstream\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"in use by IDAT\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"deflateEnd failed (ignored)\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"compressed data too long\00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"error writing ancillary chunked compressed data\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_save_uint_32(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 24
  %i.b = trunc nuw i32 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !10
  %i.c = lshr i32 %1, 16
  %i.d = trunc i32 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !10
  %i.f = lshr i32 %1, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !10
  %i.i = trunc i32 %1 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_save_uint_16(ptr nofree noundef writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 8
  %i.b = trunc i32 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !10
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_sig(ptr noalias noundef initializes((1188, 1192)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 727905341920923785, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 18, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 629 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !74
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.g = sub nsw i64 8, %i.e
  call void @png_write_data(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.g) #12
  %i.h = load i8, ptr %i.c, align 1, !tbaa !74
  %i.i = icmp ult i8 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = or i32 %i.k, 4096
  store i32 %i.l, ptr %i.j, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @png_write_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @png_write_chunk_start(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  %3 = load i8, ptr %1, align 1, !tbaa !10        ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !10        ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %7 = load i8, ptr %6, align 1, !tbaa !10        ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %9 = load i8, ptr %8, align 1, !tbaa !10        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !77
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_write_chunk_header.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %10 = zext i8 %3 to i32
  %11 = shl nuw i32 %10, 24
  %12 = zext i8 %5 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %13, %11
  %15 = zext i8 %7 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = zext i8 %9 to i32
  %18 = or disjoint i32 %14, %16
  %19 = or disjoint i32 %18, %17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  store i32 34, ptr %i.c, align 4, !tbaa !27, !alias.scope !77
  %i.d = lshr i32 %2, 24
  %i.e = trunc nuw i32 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !10, !noalias !77
  %i.f = lshr i32 %2, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !10, !noalias !77
  %i.i = lshr i32 %2, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 1, !tbaa !10, !noalias !77
  %i.l = trunc i32 %2 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10, !noalias !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %3, ptr %i.n, align 1, !tbaa !10, !noalias !77
  %20 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %5, ptr %20, align 1, !tbaa !10, !noalias !77
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %7, ptr %21, align 1, !tbaa !10, !noalias !77
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %9, ptr %22, align 1, !tbaa !10, !noalias !77
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %19, ptr %i.o, align 8, !tbaa !29, !alias.scope !77
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef 4) #12
  store i32 66, ptr %i.c, align 4, !tbaa !27, !alias.scope !77
  br label %png_write_chunk_header.exit

png_write_chunk_header.exit:                      ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !77
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_chunk_data(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #12
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_chunk_end(ptr noalias noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 130, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30   ; 4 uses
  %i.f = lshr i32 %i.e, 24
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %i.a, align 1, !tbaa !10
  %i.h = lshr i32 %i.e, 16
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !10
  %i.k = lshr i32 %i.e, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  %i.n = trunc i32 %i.e to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !10
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_chunk(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_write_complete_chunk(ptr noalias noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [8 x i8], align 1                 ; 11 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2147483647
  br i1 %i.d, label %bb.c, label %png_write_chunk_header.exit

bb.c:                                             ; preds = %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #13
  unreachable

png_write_chunk_header.exit:                      ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !82
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 3 uses
  store i32 34, ptr %i.e, align 4, !tbaa !27, !alias.scope !82
  %i.f = lshr i64 %3, 24
  %i.g = trunc nuw nsw i64 %i.f to i8
  store i8 %i.g, ptr %i.b, align 1, !tbaa !10, !noalias !82
  %i.h = lshr i64 %3, 16
  %i.i = trunc i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !10, !noalias !82
  %i.k = lshr i64 %3, 8
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10, !noalias !82
  %i.n = trunc i64 %3 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !10, !noalias !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.q = lshr i32 %1, 24
  %i.r = trunc nuw i32 %i.q to i8
  store i8 %i.r, ptr %i.p, align 1, !tbaa !10, !noalias !82
  %i.s = lshr i32 %1, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.t, ptr %i.u, align 1, !tbaa !10, !noalias !82
  %i.v = lshr i32 %1, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.w, ptr %i.x, align 1, !tbaa !10, !noalias !82
  %i.y = trunc i32 %1 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.y, ptr %i.z, align 1, !tbaa !10, !noalias !82
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %1, ptr %i.aa, align 8, !tbaa !29, !alias.scope !82
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef 4) #12
  store i32 66, ptr %i.e, align 4, !tbaa !27, !alias.scope !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !82
  %i.ab = icmp ne ptr %2, null
  %i.ac = icmp ne i64 %3, 0
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.d, label %png_write_chunk_end.exit

bb.d:                                             ; preds = %png_write_chunk_header.exit
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3) #12
  br label %png_write_chunk_end.exit

png_write_chunk_end.exit:                         ; preds = %png_write_chunk_header.exit, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !83
  store i32 130, ptr %i.e, align 4, !tbaa !27, !alias.scope !83
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30, !alias.scope !83 ; 4 uses
  %i.af = lshr i32 %i.ae, 24
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 1, !tbaa !10, !noalias !83
  %i.ah = lshr i32 %i.ae, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !10, !noalias !83
  %i.ak = lshr i32 %i.ae, 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.al, ptr %i.am, align 1, !tbaa !10, !noalias !83
  %i.an = trunc i32 %i.ae to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !10, !noalias !83
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !83
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %png_write_chunk_end.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_free_buffer_list(ptr noalias noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]  ; 2 uses
  %i.b = load ptr, ptr %.0, align 8, !tbaa !33    ; 2 uses
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %.0) #12
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %.loopexit, label %bb.c, !llvm.loop !0

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_IHDR(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  switch i32 %4, label %bb.l [
end_hunk_0
begin_hunk_1_@png_write_find_filter:bb.a
  %.05882.i.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph.i180.preheader ], [ %n.vec330, %middle.block343 ] ; 3 uses
  %xtraiter712 = and i64 %i.acj, 1
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader691
  %i.ahl = load i8, ptr %.06686.i.ph, align 1, !tbaa !10, !noalias !319
  %i.ahm = load i8, ptr %.06285.i.ph, align 1, !tbaa !10, !noalias !319
  %.narrow77.i.prol = sub i8 %i.ahl, %i.ahm       ; 3 uses
  store i8 %.narrow77.i.prol, ptr %.06484.i.ph, align 1, !tbaa !10, !noalias !319
  %i.ahn = zext i8 %.narrow77.i.prol to i64       ; 2 uses
  %i.aho = sub nuw nsw i64 256, %i.ahn
  %i.ahp = icmp slt i8 %.narrow77.i.prol, 0
  %i.ahq = select i1 %i.ahp, i64 %i.aho, i64 %i.ahn
  %i.ahr = add i64 %i.ahq, %.05783.i.ph           ; 2 uses
  %i.ahs = or disjoint i64 %.05882.i.ph, 1
  %.064.i.prol = getelementptr inbounds nuw i8, ptr %.06484.i.ph, i64 1 ; 2 uses
  %.062.i.prol = getelementptr inbounds nuw i8, ptr %.06285.i.ph, i64 1 ; 2 uses
  %.066.i.prol = getelementptr inbounds nuw i8, ptr %.06686.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i180.prol.loopexit

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader691
  %.lcssa692.unr = phi i64 [ poison, %.lr.ph.i180.preheader691 ], [ %i.ahr, %.lr.ph.i180.prol ]
  %.064.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.062.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.066.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06686.i.unr = phi ptr [ %.06686.i.ph, %.lr.ph.i180.preheader691 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06285.i.unr = phi ptr [ %.06285.i.ph, %.lr.ph.i180.preheader691 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.06484.i.unr = phi ptr [ %.06484.i.ph, %.lr.ph.i180.preheader691 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.05783.i.unr = phi i64 [ %.05783.i.ph, %.lr.ph.i180.preheader691 ], [ %i.ahr, %.lr.ph.i180.prol ]
  %.05882.i.unr = phi i64 [ %.05882.i.ph, %.lr.ph.i180.preheader691 ], [ %i.ahs, %.lr.ph.i180.prol ]
  %i.aht = add nsw i64 %i.acj, -1
  %i.ahu = icmp eq i64 %.05882.i.ph, %i.aht
  br i1 %i.ahu, label %.preheader.i182, label %.lr.ph.i180

.preheader.i182:                                  ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180, %middle.block343, %bb.v
  %.058.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.acj, %middle.block343 ], [ %i.acj, %.lr.ph.i180 ], [ %i.acj, %.lr.ph.i180.prol.loopexit ] ; 2 uses
  %.057.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.ahk, %middle.block343 ], [ %.lcssa692.unr, %.lr.ph.i180.prol.loopexit ], [ %i.aij, %.lr.ph.i180 ] ; 2 uses
  %.064.lcssa.i = phi ptr [ %.06479.i, %bb.v ], [ %i.aco, %middle.block343 ], [ %.064.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.064.i.1, %.lr.ph.i180 ]
  %.062.lcssa.i = phi ptr [ %.06280.i, %bb.v ], [ %i.acn, %middle.block343 ], [ %.062.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.062.i.1, %.lr.ph.i180 ]
  %.066.lcssa.i = phi ptr [ %.06681.i, %bb.v ], [ %i.acm, %middle.block343 ], [ %.066.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.066.i.1, %.lr.ph.i180 ]
  %i.ahv = icmp ult i64 %.058.lcssa.i, %i.e
  br i1 %i.ahv, label %.lr.ph100.i, label %png_setup_paeth_row.exit

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.06686.i = phi ptr [ %.066.i.1, %.lr.ph.i180 ], [ %.06686.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06285.i = phi ptr [ %.062.i.1, %.lr.ph.i180 ], [ %.06285.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06484.i = phi ptr [ %.064.i.1, %.lr.ph.i180 ], [ %.06484.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.05783.i = phi i64 [ %i.aij, %.lr.ph.i180 ], [ %.05783.i.unr, %.lr.ph.i180.prol.loopexit ]
  %.05882.i = phi i64 [ %i.aik, %.lr.ph.i180 ], [ %.05882.i.unr, %.lr.ph.i180.prol.loopexit ]
  %i.ahw = load i8, ptr %.06686.i, align 1, !tbaa !10, !noalias !319
  %i.ahx = load i8, ptr %.06285.i, align 1, !tbaa !10, !noalias !319
  %.narrow77.i = sub i8 %i.ahw, %i.ahx            ; 3 uses
  store i8 %.narrow77.i, ptr %.06484.i, align 1, !tbaa !10, !noalias !319
  %i.ahy = zext i8 %.narrow77.i to i64            ; 2 uses
  %i.ahz = sub nuw nsw i64 256, %i.ahy
  %i.aia = icmp slt i8 %.narrow77.i, 0
  %i.aib = select i1 %i.aia, i64 %i.ahz, i64 %i.ahy
  %i.aic = add i64 %i.aib, %.05783.i
  %.064.i = getelementptr inbounds nuw i8, ptr %.06484.i, i64 1
  %.062.i = getelementptr inbounds nuw i8, ptr %.06285.i, i64 1
  %.066.i = getelementptr inbounds nuw i8, ptr %.06686.i, i64 1
  %i.aid = load i8, ptr %.066.i, align 1, !tbaa !10, !noalias !319
  %i.aie = load i8, ptr %.062.i, align 1, !tbaa !10, !noalias !319
  %.narrow77.i.1 = sub i8 %i.aid, %i.aie          ; 3 uses
  store i8 %.narrow77.i.1, ptr %.064.i, align 1, !tbaa !10, !noalias !319
  %i.aif = zext i8 %.narrow77.i.1 to i64          ; 2 uses
  %i.aig = sub nuw nsw i64 256, %i.aif
  %i.aih = icmp slt i8 %.narrow77.i.1, 0
  %i.aii = select i1 %i.aih, i64 %i.aig, i64 %i.aif
  %i.aij = add i64 %i.aii, %i.aic                 ; 2 uses
  %i.aik = add nuw nsw i64 %.05882.i, 2           ; 2 uses
  %.064.i.1 = getelementptr inbounds nuw i8, ptr %.06484.i, i64 2 ; 2 uses
  %.062.i.1 = getelementptr inbounds nuw i8, ptr %.06285.i, i64 2 ; 2 uses
  %.066.i.1 = getelementptr inbounds nuw i8, ptr %.06686.i, i64 2 ; 2 uses
  %exitcond.not.i181.1 = icmp eq i64 %i.aik, %i.acj
  br i1 %exitcond.not.i181.1, label %.preheader.i182, label %.lr.ph.i180, !llvm.loop !304

.lr.ph100.i:                                      ; preds = %.preheader.i182, %.lr.ph100.i
  %.06199.pn.i = phi ptr [ %.06199.i, %.lr.ph100.i ], [ %i.ach, %.preheader.i182 ]
  %.06098.pn.i = phi ptr [ %.06098.i, %.lr.ph100.i ], [ %i.l, %.preheader.i182 ]
  %.197.i = phi i64 [ %i.ajd, %.lr.ph100.i ], [ %.057.lcssa.i, %.preheader.i182 ]
  %.15996.i = phi i64 [ %i.aji, %.lr.ph100.i ], [ %.058.lcssa.i, %.preheader.i182 ]
  %.16395.i = phi ptr [ %i.ajh, %.lr.ph100.i ], [ %.062.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16594.i = phi ptr [ %i.ajf, %.lr.ph100.i ], [ %.064.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16793.i = phi ptr [ %i.ajg, %.lr.ph100.i ], [ %.066.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.06098.i = getelementptr inbounds nuw i8, ptr %.06098.pn.i, i64 1 ; 2 uses
  %.06199.i = getelementptr inbounds nuw i8, ptr %.06199.pn.i, i64 1 ; 2 uses
  %i.ail = load i8, ptr %.16395.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.aim = zext i8 %i.ail to i32
  %i.ain = load i8, ptr %.06199.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.aio = zext i8 %i.ain to i32                  ; 2 uses
  %i.aip = load i8, ptr %.06098.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.aiq = zext i8 %i.aip to i32
  %i.air = sub nsw i32 %i.aim, %i.aio             ; 2 uses
  %i.ais = sub nsw i32 %i.aiq, %i.aio             ; 2 uses
  %i.ait = tail call i32 @llvm.abs.i32(i32 %i.air, i1 true) ; 2 uses
  %i.aiu = tail call i32 @llvm.abs.i32(i32 %i.ais, i1 true) ; 2 uses
  %i.aiv = add nsw i32 %i.ais, %i.air
  %i.aiw = tail call i32 @llvm.abs.i32(i32 %i.aiv, i1 true) ; 2 uses
  %.not.i184 = icmp samesign ugt i32 %i.ait, %i.aiu
  %.not72.i = icmp samesign ugt i32 %i.ait, %i.aiw
  %or.cond.i185 = select i1 %.not.i184, i1 true, i1 %.not72.i
  %.not73.i = icmp samesign ugt i32 %i.aiu, %i.aiw
  %i.aix = select i1 %.not73.i, i8 %i.ain, i8 %i.ail
  %.tr.i186 = select i1 %or.cond.i185, i8 %i.aix, i8 %i.aip
  %i.aiy = load i8, ptr %.16793.i, align 1, !tbaa !10, !noalias !319
  %.narrow.i187 = sub i8 %i.aiy, %.tr.i186        ; 3 uses
  store i8 %.narrow.i187, ptr %.16594.i, align 1, !tbaa !10, !noalias !319
  %i.aiz = zext i8 %.narrow.i187 to i64           ; 2 uses
  %i.aja = sub nuw nsw i64 256, %i.aiz
  %i.ajb = icmp slt i8 %.narrow.i187, 0
  %i.ajc = select i1 %i.ajb, i64 %i.aja, i64 %i.aiz
  %i.ajd = add i64 %i.ajc, %.197.i                ; 3 uses
  %i.aje = icmp ule i64 %i.ajd, %.6
  %i.ajf = getelementptr inbounds nuw i8, ptr %.16594.i, i64 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %.16793.i, i64 1
  %i.ajh = getelementptr inbounds nuw i8, ptr %.16395.i, i64 1
  %i.aji = add nuw i64 %.15996.i, 1               ; 2 uses
  %i.ajj = icmp ult i64 %i.aji, %i.e
  %or.cond108.i = select i1 %i.aje, i1 %i.ajj, i1 false
  br i1 %or.cond108.i, label %.lr.ph100.i, label %png_setup_paeth_row.exit, !llvm.loop !305

png_setup_paeth_row.exit:                         ; preds = %.lr.ph100.i, %.preheader.i182
  %.2.i183 = phi i64 [ %.057.lcssa.i, %.preheader.i182 ], [ %i.ajd, %.lr.ph100.i ]
  %i.ajk = icmp ult i64 %.2.i183, %.6
  br i1 %i.ajk, label %bb.w, label %.thread214.thread

bb.w:                                             ; preds = %png_setup_paeth_row.exit
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !67 ; 2 uses
  %.not127 = icmp eq ptr %i.ajm, null
  br i1 %.not127, label %.thread214.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.ajm, ptr %i.acd, align 8, !tbaa !66
  store ptr %i.ace, ptr %i.ajl, align 8, !tbaa !67
  br label %.thread214.thread

.thread214.thread:                                ; preds = %.lr.ph80.i, %.lr.ph44.i, %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %.lr.ph12.i.prol.loopexit, %.lr.ph12.i, %middle.block415, %vec.epilog.middle.block442, %middle.block523, %vec.epilog.middle.block547, %middle.block574, %vec.epilog.middle.block594, %middle.block659, %vec.epilog.middle.block680, %.preheader.i174, %.preheader.i154, %bb.j, %.preheader.i, %png_setup_paeth_row.exit, %bb.x, %bb.w, %.thread214
  %.7 = phi ptr [ %i.lm, %.preheader.i154 ], [ %.5109, %.thread214 ], [ %i.ace, %bb.x ], [ %i.ace, %bb.w ], [ %.5109, %png_setup_paeth_row.exit ], [ %i.jd, %bb.j ], [ %.val128, %.preheader.i ], [ %i.xv, %.preheader.i174 ], [ %.val128, %middle.block659 ], [ %i.jd, %middle.block574 ], [ %i.lm, %middle.block523 ], [ %i.xv, %middle.block415 ], [ %.val128, %vec.epilog.middle.block680 ], [ %i.lm, %.lr.ph44.i ], [ %i.jd, %vec.epilog.middle.block594 ], [ %.val128, %.lr.ph12.i.prol.loopexit ], [ %i.lm, %vec.epilog.middle.block547 ], [ %i.jd, %.lr.ph.i138.prol.loopexit ], [ %i.xv, %vec.epilog.middle.block442 ], [ %.val128, %.lr.ph12.i ], [ %i.jd, %.lr.ph.i138 ], [ %i.xv, %.lr.ph80.i ]
  %i.ajn = load i64, ptr %i.d, align 8, !tbaa !73
  %i.ajo = add i64 %i.ajn, 1
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef %.7, i64 noundef %i.ajo, i32 noundef 0)
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !68, !alias.scope !320 ; 2 uses
  %.not.i188 = icmp eq ptr %i.ajq, null
  br i1 %.not.i188, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread214.thread
  %i.ajr = load ptr, ptr %i.k, align 8, !tbaa !65, !alias.scope !320
  store ptr %i.ajr, ptr %i.ajp, align 8, !tbaa !68, !alias.scope !320
  store ptr %i.ajq, ptr %i.k, align 8, !tbaa !65, !alias.scope !320
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread214.thread
  tail call void @png_write_finish_row(ptr noundef nonnull %0)
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !321, !alias.scope !320
  %.fr.i = freeze i32 %i.ajt
  %i.aju = add i32 %.fr.i, 1                      ; 2 uses
  store i32 %i.aju, ptr %i.ajs, align 4, !tbaa !321, !alias.scope !320
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !322, !alias.scope !320
  %i.ajx = add i32 %i.ajw, -1
  %or.cond.not.i = icmp ult i32 %i.ajx, %i.aju
  br i1 %or.cond.not.i, label %bb.aa, label %png_write_filtered_row.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @png_write_flush(ptr noundef nonnull %0) #12
  br label %png_write_filtered_row.exit

png_write_filtered_row.exit:                      ; preds = %bb.z, %bb.aa
  ret void
}

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #3

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #3

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #3

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @png_malloc_base(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @png_write_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS13__jmp_buf_tag", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!16 = !{!"z_stream_s", !14, i64 0, !7, i64 8, !13, i64 16, !14, i64 24, !7, i64 32, !13, i64 40, !14, i64 48, !15, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !13, i64 96, !13, i64 104}
!17 = !{!"p1 _ZTS22png_compression_buffer", !11, i64 0}
!18 = !{!"p1 _ZTS16png_color_struct", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!"png_color_16_struct", !6, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8}
!21 = !{!"png_xy", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p2 short", !22, i64 0}
!24 = !{!"png_color_8_struct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4}
!25 = !{!"png_unknown_chunk_t", !6, i64 0, !14, i64 8, !13, i64 16, !6, i64 24}
!26 = !{!"png_struct_def", !6, i64 0, !11, i64 200, !12, i64 208, !13, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !6, i64 296, !6, i64 297, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !16, i64 320, !17, i64 432, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !13, i64 528, !7, i64 536, !7, i64 540, !7, i64 544, !14, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !13, i64 584, !7, i64 592, !7, i64 596, !18, i64 600, !19, i64 608, !7, i64 612, !19, i64 616, !6, i64 618, !6, i64 619, !6, i64 620, !6, i64 621, !6, i64 622, !6, i64 623, !6, i64 624, !6, i64 625, !6, i64 626, !6, i64 627, !6, i64 628, !6, i64 629, !6, i64 630, !6, i64 631, !6, i64 632, !19, i64 634, !6, i64 636, !7, i64 640, !20, i64 644, !20, i64 654, !11, i64 664, !7, i64 672, !7, i64 676, !21, i64 680, !7, i64 712, !7, i64 716, !7, i64 720, !7, i64 724, !7, i64 728, !14, i64 736, !23, i64 744, !14, i64 752, !14, i64 760, !23, i64 768, !23, i64 776, !24, i64 784, !24, i64 789, !14, i64 800, !20, i64 808, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !7, i64 896, !7, i64 900, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !7, i64 936, !7, i64 940, !14, i64 944, !14, i64 952, !7, i64 960, !6, i64 964, !7, i64 996, !11, i64 1000, !11, i64 1008, !7, i64 1016, !7, i64 1020, !14, i64 1024, !6, i64 1032, !6, i64 1033, !19, i64 1034, !19, i64 1036, !14, i64 1040, !7, i64 1048, !6, i64 1052, !11, i64 1056, !11, i64 1064, !11, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !6, i64 1104, !7, i64 1108, !7, i64 1112, !7, i64 1116, !13, i64 1120, !25, i64 1128, !13, i64 1160, !14, i64 1168, !13, i64 1176, !7, i64 1184, !7, i64 1188, !14, i64 1192, !6, i64 1200}
!27 = !{!26, !7, i64 1188}
!28 = !{!26, !7, i64 300}
!29 = !{!26, !7, i64 544}
!30 = !{!26, !7, i64 596}
!31 = !{!17, !17, i64 0}
!32 = !{!"png_compression_buffer", !17, i64 0, !6, i64 8}
!33 = !{!32, !17, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!26, !7, i64 1048}
!36 = !{!26, !6, i64 624}
!37 = !{!26, !6, i64 623}
!38 = !{!26, !6, i64 620}
!39 = !{!26, !6, i64 1104}
!40 = !{!26, !7, i64 508}
!41 = !{!26, !7, i64 512}
!42 = !{!26, !6, i64 626}
!43 = !{!26, !13, i64 528}
!44 = !{!26, !7, i64 520}
!45 = !{!26, !6, i64 625}
!46 = !{!26, !6, i64 628}
!47 = !{!26, !6, i64 622}
!48 = !{!26, !19, i64 608}
!49 = !{!26, !7, i64 312}
!50 = !{!26, !7, i64 440}
!51 = !{!26, !14, i64 368}
!52 = !{!26, !14, i64 344}
!53 = !{!26, !7, i64 352}
!54 = !{!26, !14, i64 320}
!55 = !{!26, !7, i64 328}
!56 = !{!"", !14, i64 0, !13, i64 8, !7, i64 16, !6, i64 20}
!57 = !{!56, !14, i64 0}
!58 = !{!56, !13, i64 8}
!59 = !{!56, !7, i64 16}
!60 = !{!20, !19, i64 8}
!61 = !{!20, !19, i64 2}
!62 = !{!20, !19, i64 4}
!63 = !{!20, !19, i64 6}
!64 = !{}
!65 = !{!26, !14, i64 560}
!66 = !{!26, !14, i64 568}
!67 = !{!26, !14, i64 576}
!68 = !{!26, !14, i64 552}
!69 = !{!26, !7, i64 308}
!70 = !{!26, !7, i64 516}
!71 = !{!"png_row_info_struct", !7, i64 0, !13, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19}
!72 = !{!71, !6, i64 19}
!73 = !{!71, !13, i64 8}
!74 = !{!26, !6, i64 629}
!75 = distinct !{!75, !"png_write_chunk_header"}
!76 = distinct !{!76, !75, !"png_write_chunk_header: argument 0"}
!77 = !{!76}
!78 = distinct !{!78, !"png_write_chunk_header"}
!79 = distinct !{!79, !78, !"png_write_chunk_header: argument 0"}
!80 = distinct !{!80, !"png_write_chunk_end"}
!81 = distinct !{!81, !80, !"png_write_chunk_end: argument 0"}
!82 = !{!79}
!83 = !{!81}
!84 = !{!26, !6, i64 627}
!85 = !{!26, !6, i64 1052}
!86 = distinct !{!86, !"png_write_chunk_header"}
!87 = distinct !{!87, !86, !"png_write_chunk_header: argument 0"}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !"png_write_chunk_end"}
!90 = distinct !{!90, !89, !"png_write_chunk_end: argument 0"}
!91 = !{!87}
!92 = !{!"png_color_struct", !6, i64 0, !6, i64 1, !6, i64 2}
!93 = !{!92, !6, i64 0}
!94 = !{!92, !6, i64 1}
!95 = !{!92, !6, i64 2}
!96 = !{!90}
!97 = distinct !{!97, !"png_free_buffer_list"}
!98 = distinct !{!98, !97, !"png_free_buffer_list: argument 0"}
!99 = !{!26, !17, i64 432}
!100 = !{!98}
!101 = distinct !{!101, !34}
!102 = !{!26, !7, i64 444}
!103 = !{!26, !7, i64 448}
!104 = !{!26, !7, i64 452}
!105 = !{!26, !7, i64 456}
!106 = !{!26, !7, i64 304}
!107 = !{!26, !7, i64 460}
!108 = !{!26, !7, i64 464}
!109 = !{!26, !7, i64 468}
!110 = !{!26, !7, i64 472}
!111 = !{!26, !7, i64 476}
!112 = !{!26, !7, i64 480}
!113 = !{!26, !7, i64 484}
!114 = !{!26, !7, i64 488}
!115 = !{!26, !7, i64 492}
!116 = !{!26, !7, i64 496}
!117 = !{!26, !7, i64 500}
!118 = distinct !{!118, !"png_write_complete_chunk"}
!119 = distinct !{!119, !118, !"png_write_complete_chunk: argument 0"}
!120 = distinct !{!120, !"png_write_chunk_header"}
!121 = distinct !{!121, !120, !"png_write_chunk_header: argument 0"}
!122 = distinct !{!122, !"png_write_chunk_end"}
!123 = distinct !{!123, !122, !"png_write_chunk_end: argument 0"}
!124 = !{!119}
!125 = !{!121}
!126 = !{!121, !119}
!127 = !{!123}
!128 = !{!123, !119}
!129 = distinct !{!129, !"png_write_chunk_header"}
!130 = distinct !{!130, !129, !"png_write_chunk_header: argument 0"}
!131 = distinct !{!131, !"png_write_compressed_data_out"}
!132 = distinct !{!132, !131, !"png_write_compressed_data_out: argument 0:thread"}
!133 = distinct !{!133, !131, !"png_write_compressed_data_out: argument 0"}
!134 = distinct !{!134, !"png_write_chunk_end"}
!135 = distinct !{!135, !134, !"png_write_chunk_end: argument 0"}
!136 = !{!130}
!137 = !{!132}
!138 = !{!133}
!139 = !{!135}
!140 = distinct !{!140, !34}
!141 = distinct !{!141, !"png_write_chunk_header"}
!142 = distinct !{!142, !141, !"png_write_chunk_header: argument 0"}
!143 = distinct !{!143, !"png_write_chunk_end"}
!144 = distinct !{!144, !143, !"png_write_chunk_end: argument 0:thread"}
!145 = distinct !{!145, !34}
!146 = distinct !{!146, !143, !"png_write_chunk_end: argument 0"}
!147 = distinct !{!147, !143, !"png_write_chunk_end: argument 0:thread"}
!148 = !{!"p1 _ZTS21png_sPLT_entry_struct", !11, i64 0}
!149 = !{!"png_sPLT_struct", !14, i64 0, !6, i64 8, !148, i64 16, !7, i64 24}
!150 = !{!149, !6, i64 8}
!151 = !{!149, !7, i64 24}
!152 = !{!149, !14, i64 0}
!153 = !{!142}
!154 = !{!149, !148, i64 16}
!155 = !{!144}
!156 = !{!"png_sPLT_entry_struct", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8}
!157 = !{!156, !19, i64 0}
!158 = !{!156, !19, i64 2}
!159 = !{!156, !19, i64 4}
!160 = !{!156, !19, i64 6}
!161 = !{!156, !19, i64 8}
!162 = !{!146}
!163 = !{!147}
!164 = !{!24, !6, i64 0}
!165 = !{!24, !6, i64 1}
!166 = !{!24, !6, i64 2}
!167 = !{!24, !6, i64 3}
!168 = !{!24, !6, i64 4}
!169 = !{!21, !7, i64 24}
!170 = !{!21, !7, i64 28}
!171 = !{!21, !7, i64 0}
end_hunk_1
