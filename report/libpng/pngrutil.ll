Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0
@.str.15 = private unnamed_addr constant [28 x i8] c"length exceeds libpng limit\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"too long\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"internal row logic error\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"internal row size calculation error\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"internal row width error\00", align 1
@png_combine_row.row_mask = internal unnamed_addr constant [2 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 16843009, i32 269488144, i32 286331153, i32 1145324612, i32 1431655765, i32 -1431655766], [6 x i32] [i32 196611, i32 50332416, i32 50529027, i32 808464432, i32 858993459, i32 -858993460], [6 x i32] [i32 15, i32 983040, i32 983055, i32 251662080, i32 252645135, i32 -252645136]], [3 x [6 x i32]] [[6 x i32] [i32 -2139062144, i32 134744072, i32 -2004318072, i32 572662306, i32 -1431655766, i32 1431655765], [6 x i32] [i32 12583104, i32 -1073692672, i32 -1061109568, i32 202116108, i32 -858993460, i32 858993459], [6 x i32] [i32 240, i32 15728640, i32 15728880, i32 -268374016, i32 -252645136, i32 252645135]]], align 16
@png_combine_row.display_mask = internal unnamed_addr constant [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 -252645136, i32 -858993460, i32 -1431655766], [3 x i32] [i32 -16711936, i32 -252645136, i32 -858993460], [3 x i32] [i32 -65536, i32 -16711936, i32 -252645136]], [3 x [3 x i32]] [[3 x i32] [i32 252645135, i32 858993459, i32 1431655765], [3 x i32] [i32 -16711936, i32 252645135, i32 858993459], [3 x i32] [i32 -65536, i32 -16711936, i32 252645135]]], align 16
@.str.20 = private unnamed_addr constant [35 x i8] c"invalid user transform pixel depth\00", align 1
@png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Not enough image data\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Extra compressed data\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Too much image data\00", align 1
@png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Row has too many bytes to allocate in memory\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"unknown chunk exceeds memory limits\00", align 1
@read_chunks = internal unnamed_addr constant [28 x { ptr, i8, i8, i8, i8, [4 x i8] }] [{ ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_IHDR, i8 13, i8 -48, i8 16, i8 0, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_PLTE, i8 1, i8 8, i8 0, i8 17, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr null, i8 1, i8 8, i8 -128, i8 17, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_IEND, i8 1, i8 8, i8 0, i8 8, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr null, i8 8, i8 -128, i8 64, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_bKGD, i8 6, i8 16, i8 64, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_cHRM, i8 32, i8 0, i8 98, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_cICP, i8 4, i8 64, i8 96, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_cLLI, i8 8, i8 -128, i8 96, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_eXIf, i8 2, i8 72, i8 0, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr null, i8 25, i8 -96, i8 1, i8 17, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr null, i8 2, i8 72, i8 64, i8 17, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_gAMA, i8 4, i8 64, i8 96, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_hIST, i8 0, i8 4, i8 32, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_iCCP, i8 1, i8 -24, i8 96, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_iTXt, i8 1, i8 104, i8 0, i8 17, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_mDCV, i8 24, i8 -128, i8 97, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_oFFs, i8 9, i8 -112, i8 64, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_pCAL, i8 1, i8 -24, i8 64, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_pHYs, i8 9, i8 -112, i8 64, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_sBIT, i8 4, i8 16, i8 96, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_sCAL, i8 2, i8 72, i8 64, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_sPLT, i8 1, i8 56, i8 64, i8 17, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_sRGB, i8 1, i8 16, i8 96, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_tEXt, i8 1, i8 40, i8 0, i8 17, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_tIME, i8 7, i8 112, i8 0, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_tRNS, i8 0, i8 1, i8 64, i8 1, [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8] } { ptr @png_handle_zTXt, i8 2, i8 -24, i8 0, i8 17, [4 x i8] zeroinitializer }], align 16
@.str.29 = private unnamed_addr constant [25 x i8] c"ignored in grayscale PNG\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"invalid gray level\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"invalid color\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"extra compressed data\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"bad compression method\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"bad keyword\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"zstream unclaimed\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"bad compression info\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"invalid parameter count\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"unrecognized equation type\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"invalid data\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"bad length\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"invalid unit\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"bad width format\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"non-positive width\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"bad height format\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"non-positive height\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"No space in chunk cache for sPLT\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"malformed sPLT chunk\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"sPLT chunk has bad length\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"sPLT chunk requires too much memory\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"invalid with alpha channel\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"unknown compression type\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"Read failure in png_handle_zTXt\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c" using zstream\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @png_get_uint_31(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw i32 %i.b, 24                     ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.h, %i.o
  %i.q = or disjoint i32 %i.p, %i.l
  %i.r = or disjoint i32 %i.q, %i.c
  ret i32 %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @png_get_uint_32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @png_get_int_32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw i32 %i.b, 24                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.g, %i.n
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = or disjoint i32 %i.p, %i.c               ; 2 uses
  %notsub = add i32 %i.q, -1
  %i.r = icmp sgt i32 %notsub, -1
  %i.s = icmp slt i32 %i.c, 0
  %i.t = select i1 %i.s, i1 %i.r, i1 false
  %.0 = select i1 %i.t, i32 0, i32 %i.q
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @png_get_uint_16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  ret i16 %i.g
}

; Function Attrs: nounwind uwtable
define void @png_read_sig(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 629 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !91    ; 4 uses
  %i.c = icmp ugt i8 %i.b, 7
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64                 ; 5 uses
  %i.e = sub nuw nsw i64 8, %i.d                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 17, ptr %i.f, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef %i.e) #13
  store i8 8, ptr %i.a, align 1, !tbaa !91
  %i.i = tail call i32 @png_sig_cmp(ptr noundef nonnull %i.g, i64 noundef %i.d, i64 noundef %i.e) #13
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i8 %i.b, 4
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw nsw i64 4, %i.d
  %i.l = tail call i32 @png_sig_cmp(ptr noundef nonnull %i.g, i64 noundef %i.d, i64 noundef %i.k) #13
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #12
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #12
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i8 %i.b, 3
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26
  %i.p = or i32 %i.o, 4096
  store i32 %i.p, ptr %i.n, align 4, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  ret void
}

declare void @png_read_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @png_read_chunk_header(ptr noalias noundef initializes((1188, 1192)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  store i32 33, ptr %i.b, align 4, !tbaa !25
  call void @png_read_data(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 8) #13
  %i.c = load i8, ptr %i.a, align 1, !tbaa !8, !noalias !94
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw i32 %i.d, 24                     ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %png_get_uint_31.exit

bb.b:                                             ; preds = %bb.a
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  unreachable

png_get_uint_31.exit:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8, !noalias !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8, !noalias !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8, !noalias !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %1 = load i8, ptr %i.m, align 1, !tbaa !8
  %2 = zext i8 %1 to i32
  %3 = shl nuw i32 %2, 24
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %5 = load i8, ptr %4, align 1, !tbaa !8
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %10 = load i8, ptr %9, align 1, !tbaa !8
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or disjoint i32 %8, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %15 = load i8, ptr %14, align 1, !tbaa !8
  %16 = zext i8 %15 to i32
  %17 = or disjoint i32 %13, %16                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %17, ptr %i.n, align 8, !tbaa !27
  call void @png_reset_crc(ptr noundef nonnull %0) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef 4) #13
  %i.o = load i8, ptr %i.a, align 1, !tbaa !8
  %i.p = icmp slt i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_get_uint_31.exit
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  unreachable

bb.d:                                             ; preds = %png_get_uint_31.exit
  %i.q = and i32 %17, -538968097                  ; 2 uses
  %i.r = and i32 %17, -1061101376
  %i.s = xor i32 %i.r, 1077952576
  %i.t = add i32 %i.q, -1094795585
  %i.u = or i32 %i.s, %i.t
  %i.v = sub i32 1515870810, %i.q
  %i.w = or i32 %i.u, %i.v
  %i.x = and i32 %i.w, -522133280
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = zext i8 %i.h to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = zext i8 %i.l to i32
  %i.ab = zext i8 %i.j to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = or disjoint i32 %i.z, %i.aa
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = or disjoint i32 %i.ae, %i.e
  store i32 65, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.af
}

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #4

declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @png_chunk_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @png_crc_read(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 2 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.b) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_crc_finish(ptr noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noalias noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [1024 x i8], align 16             ; 6 uses
  %.not41 = icmp eq i32 %1, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %png_crc_read.exit.us, label %png_crc_read.exit

png_crc_read.exit.us:                             ; preds = %.lr.ph, %png_crc_read.exit.us
  %.01942.us = phi i32 [ %i.d, %png_crc_read.exit.us ], [ %1, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.d = add i32 %.01942.us, -1024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.not.us = icmp ult i32 %.01942.us, 1025
  br i1 %.not.us, label %._crit_edge, label %png_crc_read.exit.us, !llvm.loop !95

png_crc_read.exit:                                ; preds = %.lr.ph, %png_crc_read.exit
  %.01942 = phi i32 [ %i.e, %png_crc_read.exit ], [ %1, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %spec.select = call i32 @llvm.umin.i32(i32 %.01942, i32 1024) ; 2 uses
  %i.e = sub nuw i32 %.01942, %spec.select        ; 2 uses
  %i.f = zext nneg i32 %spec.select to i64        ; 2 uses
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.f) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %png_crc_read.exit, !llvm.loop !95

._crit_edge:                                      ; preds = %png_crc_read.exit, %png_crc_read.exit.us, %bb.a
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = and i32 %i.h, 2048
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !99
  br label %.split.i

bb.d:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27, !alias.scope !99
  %i.l = and i32 %i.k, 536870912
  %.not10.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29, !alias.scope !99 ; 2 uses
  br i1 %.not10.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.h, %bb.c ], [ %i.n, %bb.d ]
  %.not2535 = phi i1 [ false, %bb.c ], [ true, %bb.d ]
  %i.p = and i32 %i.o, 768
  %i.q = icmp eq i32 %i.p, 768
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 129, ptr %i.r, align 4, !tbaa !25, !alias.scope !99
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br i1 %i.q, label %png_crc_error.exit.thread, label %png_crc_error.exit.a

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %i.n, 2048
  %.not11.not.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 129, ptr %i.t, align 4, !tbaa !25, !alias.scope !99
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br i1 %.not11.not.i, label %png_crc_error.exit.a, label %png_crc_error.exit.thread

png_crc_error.exit.thread:                        ; preds = %bb.e, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !99
  br label %bb.l

png_crc_error.exit.a:                             ; preds = %.split.i, %bb.e
  %.not2533 = phi i1 [ true, %bb.e ], [ %.not2535, %.split.i ]
  %i.u = load i32, ptr %i.a, align 4
  %i.v = call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.x = load i32, ptr %i.w, align 4, !tbaa !30, !alias.scope !99
  %.not40.a = icmp eq i32 %i.v, %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !99
  br i1 %.not40.a, label %bb.l, label %bb.f

bb.f:                                             ; preds = %png_crc_error.exit.a
  br i1 %.not2533, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  %i.aa = and i32 %i.z, 536870912
  %.not26 = icmp eq i32 %i.aa, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !29
  %i.ad = and i32 %i.ac, 512
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !29
  %i.ah = and i32 %i.ag, 1024
  %.not27 = icmp eq i32 %i.ah, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #12
  unreachable

bb.l:                                             ; preds = %png_crc_error.exit.thread, %png_crc_error.exit.a, %bb.j
  %.020 = phi i32 [ 1, %bb.j ], [ 0, %png_crc_error.exit.a ], [ 0, %png_crc_error.exit.thread ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define i32 @png_zlib_inflate(ptr noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = icmp slt i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.5, ptr %i.i, align 8, !tbaa !34
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = tail call i32 @inflate(ptr noundef nonnull %i.j, i32 noundef %1) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ -3, %bb.d ], [ %i.k, %bb.f ]
  ret i32 %.0
}

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 1, 4) i32 @png_handle_unknown(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @png_cache_unknown_chunk(ptr noundef nonnull %0, i32 noundef %2)
  %.not47 = icmp eq i32 %i.c, 0
  br i1 %.not47, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #13 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = icmp slt i32 %3, 2
  br i1 %i.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.k = load i32, ptr %i.j, align 8, !tbaa !102
  %i.l = icmp slt i32 %i.k, 2
  br i1 %i.l, label %bb.h, label %.thread54

bb.h:                                             ; preds = %bb.g
  tail call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #13
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #13
  br label %.thread54

bb.i:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load i32, ptr %i.n, align 8, !tbaa !102
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.140 = phi i32 [ %i.o, %bb.j ], [ %3, %bb.i ]  ; 3 uses
  switch i32 %.140, label %bb.n [
    i32 3, label %bb.m
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27
  %i.r = and i32 %i.q, 536870912
  %.not46 = icmp eq i32 %i.r, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.s = tail call fastcc i32 @png_cache_unknown_chunk(ptr noundef nonnull %0, i32 noundef %2)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread, label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.u = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.f, %bb.n
  %.241 = phi i32 [ %.140, %bb.n ], [ %3, %bb.f ], [ %.140, %bb.m ]
  switch i32 %.241, label %.thread [
    i32 3, label %bb.p
    i32 2, label %.thread54
  ]

.thread54:                                        ; preds = %bb.g, %bb.h, %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %i.x = and i32 %i.w, 536870912
  %.not48 = icmp eq i32 %i.x, 0
  br i1 %.not48, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread54
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35   ; 3 uses
  switch i32 %i.z, label %bb.r [
    i32 2, label %bb.q
    i32 1, label %.thread
    i32 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.y, align 4, !tbaa !35
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1128
  tail call void @png_set_unknown_chunks(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ab, i32 noundef 1) #13
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.b, %bb.e, %bb.o, %bb.p, %bb.q, %bb.s, %.thread54
  %i.ac = phi i1 [ false, %bb.s ], [ true, %bb.q ], [ true, %bb.p ], [ true, %.thread54 ], [ true, %bb.o ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.m ]
  %.2 = phi i32 [ 2, %bb.s ], [ 1, %bb.q ], [ %i.z, %bb.p ], [ 1, %.thread54 ], [ 1, %bb.o ], [ 3, %bb.e ], [ 1, %bb.b ], [ 1, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %.not49 = icmp eq ptr %i.ae, null
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  store ptr null, ptr %i.ad, align 8, !tbaa !36
  br i1 %i.ac, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !27
  %i.ah = and i32 %i.ag, 536870912
  %.not50 = icmp eq i32 %i.ah, 0
  br i1 %.not50, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #12
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @png_cache_unknown_chunk(ptr noalias noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@png_do_read_interlace:bb.a
  store i8 %i.ez, ptr %.2161, align 1, !tbaa !8
  %i.fa = icmp eq i32 %.3, %.0152                 ; 2 uses
  %i.fb = add nsw i32 %.3, %.0151
  %.2161.idx.1 = sext i1 %i.fa to i64
  %.2161.1 = getelementptr inbounds i8, ptr %.2161, i64 %.2161.idx.1 ; 3 uses
  %.3.1 = select i1 %i.fa, i32 %.0153, i32 %i.fb  ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !130

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.2207.epil.init = phi i32 [ %.1155213, %.lr.ph ], [ %.3.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.1160206.epil.init = phi ptr [ %.0159211, %.lr.ph ], [ %.2161.1, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.fc = load i8, ptr %.1160206.epil.init, align 1, !tbaa !8
  %i.fd = zext i8 %i.fc to i32
  %i.fe = sub i32 4, %.2207.epil.init
  %i.ff = lshr i32 3855, %i.fe
  %i.fg = and i32 %i.ff, %i.fd
  %i.fh = shl i32 %i.eh, %.2207.epil.init
  %i.fi = or i32 %i.fg, %i.fh
  %i.fj = trunc i32 %i.fi to i8
  store i8 %i.fj, ptr %.1160206.epil.init, align 1, !tbaa !8
  %i.fk = icmp eq i32 %.2207.epil.init, %.0152    ; 2 uses
  %i.fl = add nsw i32 %.2207.epil.init, %.0151
  %.2161.idx.epil = sext i1 %i.fk to i64
  %.2161.epil = getelementptr inbounds i8, ptr %.1160206.epil.init, i64 %.2161.idx.epil
  %.3.epil = select i1 %i.fk, i32 %.0153, i32 %i.fl
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.2161.lcssa = phi ptr [ %.2161.1, %._crit_edge.unr-lcssa ], [ %.2161.epil, %.epil.preheader ]
  %.3.lcssa = phi i32 [ %.3.1, %._crit_edge.unr-lcssa ], [ %.3.epil, %.epil.preheader ]
  %i.fm = icmp eq i32 %.1157212, %.0152           ; 2 uses
  %i.fn = add nsw i32 %.1157212, %.0151
  %.1163.idx = sext i1 %i.fm to i64
  %.1163 = getelementptr inbounds i8, ptr %.0162210, i64 %.1163.idx
  %.2158 = select i1 %i.fm, i32 %.0153, i32 %i.fn
  %i.fo = add nuw i32 %.0150214, 1                ; 2 uses
  %i.fp = load i32, ptr %0, align 8, !tbaa !135
  %i.fq = icmp ult i32 %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph, label %.loopexitthread-pre-split, !llvm.loop !131

bb.o:                                             ; preds = %bb.b
  %i.fr = lshr i8 %i.j, 3
  %i.fs = zext nneg i8 %i.fr to i64               ; 9 uses
  %.not264 = icmp eq i32 %i.c, 0
  br i1 %.not264, label %.loopexit, label %.lr.ph250.us.preheader

.lr.ph250.us.preheader:                           ; preds = %bb.o
  %i.ft = sub nsw i64 0, %i.fs                    ; 6 uses
  %i.fu = add i32 %i.h, -1
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw nsw i64 %i.fv, %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.fw
  %i.fy = add i32 %i.c, -1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = mul nuw nsw i64 %i.fs, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ga
  %umax274 = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 2 uses
  %xtraiter312 = and i32 %umax274, 3              ; 3 uses
  %i.gc = add nsw i64 %i.d, -4
  %i.gd = icmp ult i64 %i.gc, 3
  %unroll_iter316 = and i32 %umax274, 252
  %lcmp.mod313.not = icmp eq i32 %xtraiter312, 0
  %lcmp.mod315 = icmp ne i32 %xtraiter312, 0
  br label %.lr.ph250.us

.lr.ph250.us:                                     ; preds = %.lr.ph250.us.preheader, %._crit_edge251.us
  %.0146255.us = phi i32 [ %i.gk, %._crit_edge251.us ], [ 0, %.lr.ph250.us.preheader ]
  %.0147254.us = phi ptr [ %.lcssa, %._crit_edge251.us ], [ %i.fx, %.lr.ph250.us.preheader ] ; 2 uses
  %.0148253.us = phi ptr [ %i.gj, %._crit_edge251.us ], [ %i.gb, %.lr.ph250.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0, ptr align 1 %.0148253.us, i64 %i.fs, i1 false)
  br i1 %i.gd, label %.epil.preheader311, label %.lr.ph250.us.new

.lr.ph250.us.new:                                 ; preds = %.lr.ph250.us, %.lr.ph250.us.new
  %.1247.us = phi ptr [ %i.gh, %.lr.ph250.us.new ], [ %.0147254.us, %.lr.ph250.us ] ; 2 uses
  %niter317 = phi i32 [ %niter317.next.3, %.lr.ph250.us.new ], [ 0, %.lr.ph250.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1247.us, ptr nonnull align 8 %.sroa.0, i64 %i.fs, i1 false)
  %i.ge = getelementptr inbounds i8, ptr %.1247.us, i64 %i.ft ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull align 8 %.sroa.0, i64 %i.fs, i1 false)
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.ft ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr nonnull align 8 %.sroa.0, i64 %i.fs, i1 false)
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.ft ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr nonnull align 8 %.sroa.0, i64 %i.fs, i1 false)
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.ft ; 3 uses
  %niter317.next.3 = add i32 %niter317, 4         ; 2 uses
  %niter317.ncmp.3 = icmp eq i32 %niter317.next.3, %unroll_iter316
  br i1 %niter317.ncmp.3, label %._crit_edge251.us.unr-lcssa, label %.lr.ph250.us.new, !llvm.loop !132

._crit_edge251.us.unr-lcssa:                      ; preds = %.lr.ph250.us.new
  br i1 %lcmp.mod313.not, label %._crit_edge251.us, label %.epil.preheader311

.epil.preheader311:                               ; preds = %._crit_edge251.us.unr-lcssa, %.lr.ph250.us
  %.1247.us.epil.init = phi ptr [ %.0147254.us, %.lr.ph250.us ], [ %i.gh, %._crit_edge251.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod315)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader311
  %.1247.us.epil = phi ptr [ %.1247.us.epil.init, %.epil.preheader311 ], [ %i.gi, %bb.p ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader311 ], [ %epil.iter.next, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1247.us.epil, ptr nonnull align 8 %.sroa.0, i64 %i.fs, i1 false)
  %i.gi = getelementptr inbounds i8, ptr %.1247.us.epil, i64 %i.ft ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter312
  br i1 %epil.iter.cmp.not, label %._crit_edge251.us, label %bb.p, !llvm.loop !133

._crit_edge251.us:                                ; preds = %bb.p, %._crit_edge251.us.unr-lcssa
  %.lcssa = phi ptr [ %i.gh, %._crit_edge251.us.unr-lcssa ], [ %i.gi, %bb.p ]
  %i.gj = getelementptr inbounds i8, ptr %.0148253.us, i64 %i.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.gk = add nuw i32 %.0146255.us, 1             ; 2 uses
  %i.gl = load i32, ptr %0, align 8, !tbaa !135
  %i.gm = icmp ult i32 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph250.us, label %.loopexitthread-pre-split, !llvm.loop !134

.loopexitthread-pre-split:                        ; preds = %._crit_edge, %._crit_edge222, %._crit_edge237, %._crit_edge251.us, %bb.f, %bb.j, %bb.n
  %.pr = load i8, ptr %i.i, align 1, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.o
  %i.gn = phi i8 [ %.pr, %.loopexitthread-pre-split ], [ %i.j, %bb.o ] ; 3 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !135
  %i.go = icmp ugt i8 %i.gn, 7
  %i.gp = zext i32 %i.h to i64                    ; 2 uses
  br i1 %i.go, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.gq = lshr i8 %i.gn, 3
  %i.gr = zext nneg i8 %i.gq to i64
  %i.gs = mul nuw nsw i64 %i.gr, %i.gp
  br label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.gt = zext nneg i8 %i.gn to i64
  %i.gu = mul nuw nsw i64 %i.gt, %i.gp
  %i.gv = add nuw nsw i64 %i.gu, 7
  %i.gw = lshr i64 %i.gv, 3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gx = phi i64 [ %i.gs, %bb.q ], [ %i.gw, %bb.r ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_read_filter_row(ptr noalias noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %4, -1
  %or.cond = icmp ult i32 %i.a, 4
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.f = load i8, ptr %i.e, align 2, !tbaa !55, !alias.scope !139
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 7
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  store ptr @png_read_filter_row_sub, ptr %i.b, align 8, !tbaa !138, !alias.scope !139
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store ptr @png_read_filter_row_up, ptr %i.j, align 8, !tbaa !138, !alias.scope !139
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store ptr @png_read_filter_row_avg, ptr %i.k, align 8, !tbaa !138, !alias.scope !139
  %i.l = icmp eq i32 %i.i, 1
  %spec.select.i = select i1 %i.l, ptr @png_read_filter_row_paeth_1byte_pixel, ptr @png_read_filter_row_paeth_multibyte_pixel
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr %spec.select.i, ptr %i.m, align 8, !tbaa !138, !alias.scope !139
  tail call void @png_init_filter_functions_sse2(ptr noundef nonnull %0, i32 noundef %i.i) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = zext nneg i32 %4 to i64
  %i.o = getelementptr [8 x i8], ptr %i.b, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !138
  tail call void %i.q(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_read_IDAT_data(ptr noalias noundef initializes((344, 356)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 1                 ; 12 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !57
  %i.g = icmp eq ptr %1, null                     ; 5 uses
  %spec.select = select i1 %i.g, i64 0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 596
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ai, %bb.a
  %.171 = phi i64 [ %spec.select, %bb.a ], [ %.3, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.x = load i32, ptr %i.h, align 8, !tbaa !32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.preheader.preheader, label %bb.u

.preheader.preheader:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.i, align 8, !tbaa !58
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %png_read_chunk_header.exit
  %i.z = phi i32 [ %.pre, %.preheader.preheader ], [ %i.bo, %png_read_chunk_header.exit ] ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.o

bb.c:                                             ; preds = %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !155
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !27, !alias.scope !156
  %i.ac = and i32 %i.ab, 536870912
  %.not10.i.i = icmp eq i32 %i.ac, 0
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !29, !alias.scope !156 ; 2 uses
  store i32 129, ptr %i.l, align 4, !tbaa !25, !alias.scope !156
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br i1 %.not10.i.i, label %bb.d, label %.split.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.ae = and i32 %i.ad, 768
  %i.af = icmp eq i32 %i.ae, 768
  br i1 %i.af, label %png_crc_error.exit.thread.i, label %png_crc_error.exit.i.a

bb.d:                                             ; preds = %bb.c
  %i.ag = and i32 %i.ad, 2048
  %.not11.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.not.i.i, label %png_crc_error.exit.i.a, label %png_crc_error.exit.thread.i

png_crc_error.exit.thread.i:                      ; preds = %bb.d, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !156
  br label %png_crc_finish_critical.exit

png_crc_error.exit.i.a:                           ; preds = %bb.d, %.split.i.i
  %i.ah = load i32, ptr %i.a, align 4
  %i.ai = call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = load i32, ptr %i.m, align 4, !tbaa !30, !alias.scope !156
  %.not40.i.a = icmp eq i32 %i.ai, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !156
  br i1 %.not40.i.a, label %png_crc_finish_critical.exit, label %bb.e

bb.e:                                             ; preds = %png_crc_error.exit.i.a
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !27, !alias.scope !154
  %i.al = and i32 %i.ak, 536870912
  %.not26.i = icmp eq i32 %i.al, 0
  %i.am = load i32, ptr %i.k, align 8, !tbaa !29, !alias.scope !154 ; 2 uses
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = and i32 %i.am, 512
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ap = and i32 %i.am, 1024
  %.not27.i86 = icmp eq i32 %i.ap, 0
  br i1 %.not27.i86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #13
  br label %png_crc_finish_critical.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #12
  unreachable

png_crc_finish_critical.exit:                     ; preds = %png_crc_error.exit.thread.i, %png_crc_error.exit.i.a, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !157
  store i32 33, ptr %i.l, align 4, !tbaa !25, !alias.scope !157
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #13
  %i.aq = load i8, ptr %i.b, align 1, !tbaa !8, !noalias !158
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24                   ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %png_get_uint_31.exit.i

bb.j:                                             ; preds = %png_crc_finish_critical.exit
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  unreachable

png_get_uint_31.exit.i:                           ; preds = %png_crc_finish_critical.exit
  %6 = load i8, ptr %3, align 1, !tbaa !8, !noalias !158
  %7 = load i8, ptr %4, align 1, !tbaa !8, !noalias !158
  %8 = load i8, ptr %5, align 1, !tbaa !8, !noalias !158
  %i.au = load i8, ptr %i.n, align 1, !tbaa !8, !noalias !157
  %9 = zext i8 %i.au to i32
  %10 = shl nuw i32 %9, 24
  %i.av = load i8, ptr %i.o, align 1, !tbaa !8, !noalias !157
  %11 = zext i8 %i.av to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or disjoint i32 %12, %10
  %i.aw = load i8, ptr %i.p, align 1, !tbaa !8, !noalias !157
  %14 = zext i8 %i.aw to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %13, %15
  %17 = load i8, ptr %i.q, align 1, !tbaa !8, !noalias !157
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %16, %18                  ; 3 uses
  store i32 %19, ptr %i.j, align 8, !tbaa !27, !alias.scope !157
  call void @png_reset_crc(ptr noundef nonnull %0) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef 4) #13
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !8, !noalias !157
  %i.ay = icmp slt i8 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %png_get_uint_31.exit.i
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  unreachable

bb.l:                                             ; preds = %png_get_uint_31.exit.i
  %i.az = and i32 %19, -538968097                 ; 2 uses
  %i.ba = and i32 %19, -1061101376
  %i.bb = xor i32 %i.ba, 1077952576
  %i.bc = add i32 %i.az, -1094795585
  %i.bd = or i32 %i.bb, %i.bc
  %i.be = sub i32 1515870810, %i.az
  %i.bf = or i32 %i.bd, %i.be
  %i.bg = and i32 %i.bf, -522133280
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %png_read_chunk_header.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  unreachable

png_read_chunk_header.exit:                       ; preds = %bb.l
  %i.bh = zext i8 %6 to i32
  %i.bi = shl nuw nsw i32 %i.bh, 16
  %i.bj = zext i8 %8 to i32
  %i.bk = zext i8 %7 to i32
  %i.bl = shl nuw nsw i32 %i.bk, 8
  %i.bm = or disjoint i32 %i.bi, %i.bj
  %i.bn = or disjoint i32 %i.bm, %i.bl
  %i.bo = or disjoint i32 %i.bn, %i.as            ; 2 uses
  store i32 65, ptr %i.l, align 4, !tbaa !25, !alias.scope !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !157
  store i32 %i.bo, ptr %i.i, align 8, !tbaa !58
  %i.bp = load i32, ptr %i.j, align 8, !tbaa !27
  %.not81 = icmp eq i32 %i.bp, 1229209940
  br i1 %.not81, label %.preheader, label %bb.n, !llvm.loop !149

bb.n:                                             ; preds = %png_read_chunk_header.exit
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #12
  unreachable

bb.o:                                             ; preds = %.preheader
  %i.bq = load i32, ptr %i.r, align 8, !tbaa !159
  %i.br = zext i32 %i.bq to i64
  %i.bs = load i64, ptr %i.s, align 8, !tbaa !37
  %spec.select8291 = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.br) ; 2 uses
  %spec.select82 = trunc nuw i64 %spec.select8291 to i32
  %.1 = call i32 @llvm.umin.i32(i32 %i.z, i32 %spec.select82) ; 3 uses
  %i.bt = zext i32 %.1 to i64                     ; 6 uses
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !59, !alias.scope !160 ; 3 uses
  %.not.i84 = icmp eq ptr %i.bu, null
  br i1 %.not.i84, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = load i64, ptr %i.u, align 8, !tbaa !60, !alias.scope !160
  %i.bw = icmp ult i64 %i.bv, %i.bt
  br i1 %i.bw, label %bb.q, label %png_crc_read.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !160
  call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.bu) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.bx = call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.bt) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.bx, null
  br i1 %.not27.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 range(i64 0, 4294967296) %i.bt, i1 false)
  store ptr %i.bx, ptr %i.t, align 8, !tbaa !59, !alias.scope !160
  store i64 %i.bt, ptr %i.u, align 8, !tbaa !60, !alias.scope !160
  br label %png_crc_read.exit

bb.t:                                             ; preds = %bb.r
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #12
  unreachable

png_crc_read.exit:                                ; preds = %bb.s, %bb.p
  %.021.i = phi ptr [ %i.bu, %bb.p ], [ %i.bx, %bb.s ] ; 3 uses
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.bt) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.bt) #13
  %i.by = load i32, ptr %i.i, align 8, !tbaa !58
  %i.bz = sub i32 %i.by, %.1
  store i32 %i.bz, ptr %i.i, align 8, !tbaa !58
  store ptr %.021.i, ptr %i.d, align 8, !tbaa !33
  store i32 %.1, ptr %i.h, align 8, !tbaa !32
  %i.ca = icmp eq i64 %spec.select8291, 0
  br label %bb.u

bb.u:                                             ; preds = %png_crc_read.exit, %bb.b
  %.not7.i = phi i1 [ %i.ca, %png_crc_read.exit ], [ false, %bb.b ]
  br i1 %i.g, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %spec.select8392 = call i64 @llvm.umin.i64(i64 %.171, i64 4294967295) ; 2 uses
  %spec.select83 = trunc nuw i64 %spec.select8392 to i32
  %i.cb = sub i64 %.171, %spec.select8392
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store ptr %i.c, ptr %i.e, align 8, !tbaa !56
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i32 [ 1024, %bb.w ], [ %spec.select83, %bb.v ]
  %.2 = phi i64 [ %.171, %bb.w ], [ %i.cb, %bb.v ] ; 2 uses
  store i32 %storemerge, ptr %i.f, align 8, !tbaa !57
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.cc = load i8, ptr %i.v, align 8, !tbaa !31, !alias.scope !161
  %.not.i85 = icmp eq i8 %i.cc, 0
  %brmerge = select i1 %.not.i85, i1 true, i1 %.not7.i
  br i1 %brmerge, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !33, !alias.scope !161
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !8, !noalias !161
  %i.cf = icmp slt i8 %i.ce, 0
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr @.str.5, ptr %i.w, align 8, !tbaa !34, !alias.scope !161
  br label %png_zlib_inflate.exit

bb.aa:                                            ; preds = %bb.y
  store i8 0, ptr %i.v, align 8, !tbaa !31, !alias.scope !161
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %i.cg = call i32 @inflate(ptr noundef nonnull %i.d, i32 noundef 0) #13
  br label %png_zlib_inflate.exit

png_zlib_inflate.exit:                            ; preds = %bb.z, %bb.ab
  %.0.i = phi i32 [ -3, %bb.z ], [ %i.cg, %bb.ab ] ; 2 uses
  %i.ch = load i32, ptr %i.f, align 8, !tbaa !57
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = add i64 %.2, %i.ci
  %reass.sub = add i64 %.2, 1024
  %i.ck = sub i64 %reass.sub, %i.ci
  %.3 = select i1 %i.g, i64 %i.ck, i64 %i.cj      ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !57
  switch i32 %.0.i, label %bb.af [
    i32 1, label %bb.ac
    i32 0, label %bb.ai
  ]

bb.ac:                                            ; preds = %png_zlib_inflate.exit
  store ptr null, ptr %i.e, align 8, !tbaa !56
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.cm = load <2 x i32>, ptr %i.cl, align 4, !tbaa !45
  %i.cn = or <2 x i32> %i.cm, splat (i32 8)
  store <2 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !45
  %i.co = load i32, ptr %i.h, align 8, !tbaa !32
  %.not77 = icmp eq i32 %i.co, 0
  br i1 %.not77, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load i32, ptr %i.i, align 8, !tbaa !58
  %.not78 = icmp eq i32 %i.cp, 0
  br i1 %.not78, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #13
  br label %bb.aj

bb.af:                                            ; preds = %png_zlib_inflate.exit
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.0.i) #13
  %i.cq = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  br i1 %i.g, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef %i.cq) #12
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef %i.cq) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.loopexit

bb.ai:                                            ; preds = %png_zlib_inflate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %cond = icmp eq i64 %.3, 0
  br i1 %cond, label %.loopexit, label %bb.b

bb.aj:                                            ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %.not80 = icmp eq i64 %.3, 0
  br i1 %.not80, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.g, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #12
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.ah, %bb.am, %bb.aj
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @png_read_buffer(ptr noalias noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@png_handle_eXIf:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59, !alias.scope !192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37, !alias.scope !192
  %i.f = icmp ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60, !alias.scope !192
  %i.i = icmp ult i64 %i.h, %i.a
  br i1 %i.i, label %bb.d, label %png_crc_read.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !192
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.a) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.j, null
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 range(i64 0, 4294967296) %i.a, i1 false)
  store ptr %i.j, ptr %i.b, align 8, !tbaa !59, !alias.scope !192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.a, ptr %i.k, align 8, !tbaa !60, !alias.scope !192
  br label %png_crc_read.exit

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.l = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.k

png_crc_read.exit:                                ; preds = %bb.f, %bb.c
  %.021.i = phi ptr [ %i.c, %bb.c ], [ %i.j, %bb.f ] ; 4 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.a) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.a) #13
  %i.m = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %png_crc_read.exit
  %i.n = load i32, ptr %.021.i, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %bb.i [
    i32 1296891946, label %bb.j
    i32 1229531648, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #13
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h
  tail call void @png_set_eXIf_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %.021.i) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %png_crc_read.exit, %bb.j, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ 3, %bb.j ], [ 0, %png_crc_read.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_gAMA(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.j, %i.q
  %i.s = or disjoint i32 %i.r, %i.n
  %i.t = or disjoint i32 %i.s, %i.f               ; 2 uses
  %i.u = icmp slt i32 %i.f, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @png_set_gAMA_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %i.t) #13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !82
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.t, ptr %i.v, align 4, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %png_crc_read.exit, %bb.d
  %.0 = phi i32 [ 0, %png_crc_read.exit ], [ 0, %bb.d ], [ 3, %bb.f ], [ 3, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_hIST(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = lshr i32 %2, 1                           ; 3 uses
  %i.d = and i32 %2, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i16, ptr %i.e, align 8, !tbaa !83
  %i.g = zext i16 %i.f to i32
  %i.h = icmp ne i32 %i.c, %i.g
  %i.i = icmp ugt i32 %2, 513
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %._crit_edge, label %png_crc_read.exit.preheader

png_crc_read.exit.preheader:                      ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %png_crc_read.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  br label %bb.e

png_crc_read.exit:                                ; preds = %png_crc_read.exit.preheader, %png_crc_read.exit
  %indvars.iv = phi i64 [ 0, %png_crc_read.exit.preheader ], [ %indvars.iv.next, %png_crc_read.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2) #13
  %i.l = load i8, ptr %i.b, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = load i8, ptr %i.j, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.n, %i.p
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.q, ptr %i.r, align 2, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %png_crc_read.exit, !llvm.loop !193

._crit_edge:                                      ; preds = %png_crc_read.exit, %.preheader
  %i.s = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not20 = icmp eq i32 %i.s, 0
  br i1 %.not20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @png_set_hIST(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %.018 = phi i32 [ 0, %bb.c ], [ 3, %bb.d ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_iCCP(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [81 x i8], align 16               ; 19 uses
  %i.c = alloca [132 x i8], align 16              ; 14 uses
  %i.d = alloca [1024 x i8], align 16             ; 8 uses
  %i.e = alloca i64, align 8                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %spec.select = tail call i32 @llvm.umin.i32(i32 %2, i32 81) ; 4 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.g) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.g) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.h = sub nuw i32 %2, %spec.select             ; 3 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !45
  %i.i = icmp ult i32 %i.h, 11
  br i1 %i.i, label %.thread146, label %.preheader

.preheader:                                       ; preds = %png_crc_read.exit
  %invariant.umin = call i32 @llvm.umin.i32(i32 %2, i32 80) ; 3 uses
  %or.cond123171.not = icmp eq i32 %2, 0
  br i1 %or.cond123171.not, label %.thread155, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %invariant.umin to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %2, 16
  br i1 %min.iters.check, label %.lr.ph.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 112          ; 6 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !8
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.j = icmp eq <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.k = bitcast <16 x i1> %i.j to i16
  %.not186 = icmp eq i16 %i.k, 0
  br i1 %.not186, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.l = icmp eq i64 %n.vec, 16
  br i1 %i.l, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.interim
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !8
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.n = icmp eq <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not186.1 = icmp eq i16 %i.o, 0
  br i1 %.not186.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.1
  %i.p = icmp eq i64 %n.vec, 32
  br i1 %i.p, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.interim.1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.q, align 16, !tbaa !8
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.r = icmp eq <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.s = bitcast <16 x i1> %i.r to i16
  %.not186.2 = icmp eq i16 %i.s, 0
  br i1 %.not186.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.2
  %i.t = icmp eq i64 %n.vec, 48
  br i1 %i.t, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.interim.2
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.u, align 16, !tbaa !8
  %wide.load.fr.3 = freeze <16 x i8> %wide.load.3
  %i.v = icmp eq <16 x i8> %wide.load.fr.3, zeroinitializer ; 2 uses
  %i.w = bitcast <16 x i1> %i.v to i16
  %.not186.3 = icmp eq i16 %i.w, 0
  br i1 %.not186.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.3
  %i.x = icmp eq i64 %n.vec, 64
  br i1 %i.x, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.interim.3
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.y, align 16, !tbaa !8
  %wide.load.fr.4 = freeze <16 x i8> %wide.load.4
  %i.z = icmp eq <16 x i8> %wide.load.fr.4, zeroinitializer ; 2 uses
  %i.aa = bitcast <16 x i1> %i.z to i16
  %.not186.4 = icmp eq i16 %i.aa, 0
  br i1 %.not186.4, label %middle.block, label %vector.early.exit

middle.block:                                     ; preds = %vector.body.4, %vector.body.interim.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

vector.early.exit:                                ; preds = %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %index.lcssa = phi i64 [ 0, %vector.ph ], [ 16, %vector.body.1 ], [ 32, %vector.body.2 ], [ 48, %vector.body.3 ], [ 64, %vector.body.4 ]
  %.lcssa = phi <16 x i1> [ %i.j, %vector.ph ], [ %i.n, %vector.body.1 ], [ %i.r, %vector.body.2 ], [ %i.v, %vector.body.3 ], [ %i.z, %vector.body.4 ]
  %i.ab = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false)
  %i.ac = add i64 %index.lcssa, %i.ab
  br label %.critedge.split.loop.exit

.thread146:                                       ; preds = %png_crc_read.exit
  %i.ad = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader187 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %.critedge.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !194

.critedge.split.loop.exit:                        ; preds = %.lr.ph, %vector.early.exit
  %indvars.iv.lcssa = phi i64 [ %i.ac, %vector.early.exit ], [ %indvars.iv, %.lr.ph ]
  %i.ag = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %middle.block, %.critedge.split.loop.exit
  %.084.lcssa = phi i32 [ %i.ag, %.critedge.split.loop.exit ], [ %invariant.umin, %middle.block ], [ %invariant.umin, %bb.c ] ; 3 uses
  %i.ah = add nsw i32 %.084.lcssa, -1
  %or.cond = icmp ult i32 %i.ah, 79
  br i1 %or.cond, label %bb.d, label %.thread155

bb.d:                                             ; preds = %.critedge
  %i.ai = add nuw nsw i32 %.084.lcssa, 1          ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, %spec.select
  br i1 %i.aj, label %bb.e, label %.thread155

bb.e:                                             ; preds = %bb.d
  %i.ak = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.f, label %.thread155

bb.f:                                             ; preds = %bb.e
  %i.ao = call fastcc i32 @png_inflate_claim(ptr noundef %0, i32 noundef 1766015824)
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.aq = add nuw nsw i32 %.084.lcssa, 2          ; 2 uses
  %i.ar = sub nuw nsw i32 %spec.select, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 132, ptr %i.e, align 8, !tbaa !84
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.at, ptr %i.au, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.ar, ptr %i.av, align 8, !tbaa !32
  call fastcc void @png_inflate_read(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, i32 noundef 0)
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !84
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %.thread160

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %i.c, align 16
  %i.az = call i32 @llvm.bswap.i32(i32 %i.ay)     ; 5 uses
  %i.ba = call i32 @png_icc_check_length(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az) #13
  %.not113 = icmp eq i32 %i.ba, 0
  br i1 %.not113, label %.thread164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68
  %i.bd = zext i8 %i.bc to i32
  %i.be = call i32 @png_icc_check_header(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az, ptr noundef nonnull %i.c, i32 noundef %i.bd) #13
  %.not114 = icmp eq i32 %i.be, 0
  br i1 %.not114, label %.thread164, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %3 = load i8, ptr %i.bf, align 16, !tbaa !8
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 129
  %5 = load i8, ptr %4, align 1, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 130
  %7 = load i8, ptr %6, align 2, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 131
  %9 = load i8, ptr %8, align 1, !tbaa !8
  %i.bg = zext i32 %i.az to i64                   ; 2 uses
  %i.bh = call fastcc ptr @png_read_buffer(ptr noundef nonnull %0, i64 noundef %i.bg) ; 5 uses
  %.not115 = icmp eq ptr %i.bh, null
  br i1 %.not115, label %.thread164, label %bb.k

bb.k:                                             ; preds = %bb.j
  %10 = zext i8 %3 to i64
  %11 = shl nuw nsw i64 %10, 24
  %12 = zext i8 %5 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = or disjoint i64 %13, %11
  %15 = zext i8 %7 to i64
  %16 = shl nuw nsw i64 %15, 8
  %17 = or disjoint i64 %14, %16
  %18 = zext i8 %9 to i64
  %19 = or disjoint i64 %17, %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(132) %i.bh, ptr noundef nonnull align 16 dereferenceable(132) %i.c, i64 132, i1 false)
  %20 = mul nuw nsw i64 %19, 12
  %21 = and i64 %20, 4294967292                   ; 3 uses
  store i64 %21, ptr %i.e, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 132 ; 2 uses
  call fastcc void @png_inflate_read(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.bi, ptr noundef %i.e, i32 noundef 0)
  %i.bj = load i64, ptr %i.e, align 8, !tbaa !84
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %.thread164.sink.split

bb.l:                                             ; preds = %bb.k
  %i.bl = call i32 @png_icc_check_tag_table(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az, ptr noundef nonnull %i.bh) #13
  %.not116 = icmp eq i32 %i.bl, 0
  br i1 %.not116, label %.thread164, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = add nsw i64 %i.bg, -132
  %i.bn = sub nsw i64 %i.bm, %21
  store i64 %i.bn, ptr %i.e, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %21
  call fastcc void @png_inflate_read(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.bo, ptr noundef %i.e, i32 noundef 1)
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !45  ; 2 uses
  %.not117 = icmp eq i32 %i.bp, 0
  br i1 %.not117, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !29
  %i.bs = and i32 %i.br, 1048576
  %.not118 = icmp eq i32 %i.bs, 0
  br i1 %.not118, label %.thread164, label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !84
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %.thread164.sink.split

.thread:                                          ; preds = %bb.n
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !84
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %.thread164.sink.split

bb.p:                                             ; preds = %.thread
  call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bx = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %i.bp, i32 noundef 0) ; 0 uses
  %.not120 = icmp eq ptr %1, null
  br i1 %.not120, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 16, i32 noundef 0) #13
  %i.by = call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %i.ak) #13 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !195
  %.not121 = icmp eq ptr %i.by, null
  br i1 %.not121, label %.thread167, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.by, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.ak, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.az, ptr %i.ca, align 8, !tbaa !196
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bh, ptr %i.cb, align 8, !tbaa !197
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr null, ptr %i.cc, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  %i.cf = or i32 %i.ce, 16
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !198
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !199
  %i.ci = or i32 %i.ch, 4096
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !199
  br label %bb.u

.thread160:                                       ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.cl, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread155

bb.t:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !34
  br label %.thread155

bb.u:                                             ; preds = %bb.q, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.co, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.w

.thread164.sink.split:                            ; preds = %bb.k, %.thread, %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !34
  br label %.thread164

.thread164:                                       ; preds = %.thread164.sink.split, %bb.n, %bb.l, %bb.j, %bb.i, %bb.h
  %.595.ph.ph = phi ptr [ null, %bb.h ], [ null, %bb.i ], [ @.str.34, %bb.n ], [ @.str.22, %bb.j ], [ null, %bb.l ], [ %i.cq, %.thread164.sink.split ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.cr, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread155

.thread167:                                       ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.cs, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.v

.thread155:                                       ; preds = %.critedge, %bb.d, %bb.e, %bb.t, %.preheader, %.thread160, %.thread164
  %.9144159 = phi ptr [ %i.ck, %.thread160 ], [ %.595.ph.ph, %.thread164 ], [ @.str.36, %.critedge ], [ @.str.35, %bb.e ], [ @.str.35, %bb.d ], [ %i.cn, %bb.t ], [ @.str.36, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !45
  %i.cu = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %i.ct, i32 noundef 0) ; 0 uses
  %.not122 = icmp eq ptr %.9144159, null
  br i1 %.not122, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread167, %.thread155
  %.9144158170 = phi ptr [ @.str.22, %.thread167 ], [ %.9144159, %.thread155 ]
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull %.9144158170) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.thread146, %.thread155, %bb.v
  %.7106 = phi i32 [ 3, %bb.u ], [ 0, %bb.v ], [ 0, %.thread155 ], [ 0, %.thread146 ]
  ret i32 %.7106
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_iTXt(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.png_text_struct, align 8    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %.critedge114

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !35
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %.critedge114

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.h = add i32 %2, 1
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59, !alias.scope !205 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.m = load i64, ptr %i.l, align 8, !tbaa !37, !alias.scope !205
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.p = load i64, ptr %i.o, align 8, !tbaa !60, !alias.scope !205
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %bb.h, label %png_crc_read.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !205
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.r = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.i) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.r, null
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 range(i64 0, 4294967296) %i.i, i1 false)
  store ptr %i.r, ptr %i.j, align 8, !tbaa !59, !alias.scope !205
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.i, ptr %i.s, align 8, !tbaa !60, !alias.scope !205
  br label %png_crc_read.exit

bb.k:                                             ; preds = %bb.e, %bb.i
  %i.t = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %.critedge114

png_crc_read.exit:                                ; preds = %bb.j, %bb.g
  %.021.i = phi ptr [ %i.k, %bb.g ], [ %i.r, %bb.j ] ; 8 uses
  %i.u = zext i32 %2 to i64                       ; 3 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.u) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.u) #13
  %i.v = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not102 = icmp eq i32 %i.v, 0
  br i1 %.not102, label %.preheader, label %.critedge114

end_hunk_2
begin_hunk_3_@png_read_filter_row_paeth_multibyte_pixel:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.04855, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.04855, align 1, !tbaa !8
  %i.af = add i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.04656, i64 1 ; 3 uses
  store i8 %i.af, ptr %.04656, align 1, !tbaa !8
  %i.ah = icmp ult ptr %i.ag, %i.g
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !310

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa67 = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ad, %.lr.ph ]
  %.lcssa = phi ptr [ %i.y, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.pre = ptrtoaddr ptr %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.046.lcssa64.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.048.lcssa = phi ptr [ %.lcssa67, %._crit_edge.loopexit ], [ %2, %bb.a ] ; 10 uses
  %.046.lcssa = phi ptr [ %.lcssa, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = icmp ult ptr %.046.lcssa, %i.ak
  br i1 %i.al, label %iter.check131, label %._crit_edge62

iter.check131:                                    ; preds = %._crit_edge
  %i.am = sub nsw i64 0, %i.f                     ; 8 uses
  %i.an = add i64 %i.aj, %i.a
  %i.ao = sub i64 %i.an, %.046.lcssa64.pre-phi    ; 9 uses
  %scevgep = getelementptr i8, ptr %.046.lcssa, i64 %i.ao ; 4 uses
  %min.iters.check102 = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check102, label %vec.epilog.scalar.ph132.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check131
  %i.ap = getelementptr i8, ptr %.048.lcssa, i64 %i.ao
  %i.aq = getelementptr i8, ptr %.048.lcssa, i64 %i.am
  %i.ar = add i64 %i.aj, %i.a
  %i.as = add i64 %.046.lcssa64.pre-phi, %i.f
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr i8, ptr %.048.lcssa, i64 %i.at
  %i.av = getelementptr i8, ptr %.046.lcssa, i64 %i.am
  %i.aw = getelementptr i8, ptr %.046.lcssa, i64 %i.at
  %bound0104 = icmp ult ptr %.046.lcssa, %i.ap
  %bound1105 = icmp ult ptr %.048.lcssa, %scevgep
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0107 = icmp ult ptr %.046.lcssa, %i.au
  %bound1108 = icmp ult ptr %i.aq, %scevgep
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx = or i1 %found.conflict106, %found.conflict109
  %bound0110 = icmp ult ptr %.046.lcssa, %i.aw
  %bound1111 = icmp ult ptr %i.av, %scevgep
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx, %found.conflict112
  br i1 %conflict.rdx113, label %vec.epilog.scalar.ph132.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %vector.memcheck103
  %min.iters.check115 = icmp ult i64 %i.ao, 16
  br i1 %min.iters.check115, label %vec.epilog.ph135, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.ax = and i64 %i.ao, 12
  %n.vec117 = and i64 %i.ao, -16                  ; 5 uses
  %i.ay = getelementptr i8, ptr %.046.lcssa, i64 %n.vec117
  %i.az = getelementptr i8, ptr %.048.lcssa, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next126, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %.046.lcssa, i64 %index119 ; 3 uses
  %next.gep121 = getelementptr i8, ptr %.048.lcssa, i64 %index119 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %next.gep121, i64 %i.am
  %wide.load122 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !8, !alias.scope !321 ; 2 uses
  %i.bb = zext <16 x i8> %wide.load122 to <16 x i32> ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %next.gep120, i64 %i.am
  %wide.load123 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !8, !alias.scope !322 ; 2 uses
  %i.bd = zext <16 x i8> %wide.load123 to <16 x i32>
  %wide.load124 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !8, !alias.scope !323 ; 2 uses
  %i.be = zext <16 x i8> %wide.load124 to <16 x i32>
  %i.bf = sub nsw <16 x i32> %i.be, %i.bb         ; 2 uses
  %i.bg = sub nsw <16 x i32> %i.bd, %i.bb         ; 2 uses
  %i.bh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bf, i1 true) ; 2 uses
  %i.bi = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bg, i1 true) ; 2 uses
  %i.bj = add nsw <16 x i32> %i.bf, %i.bg
  %i.bk = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bj, i1 true)
  %i.bl = icmp samesign ult <16 x i32> %i.bi, %i.bh
  %i.bm = select <16 x i1> %i.bl, <16 x i8> %wide.load124, <16 x i8> %wide.load123
  %i.bn = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.bi, <16 x i32> %i.bh)
  %i.bo = icmp samesign ult <16 x i32> %i.bk, %i.bn
  %i.bp = select <16 x i1> %i.bo, <16 x i8> %wide.load122, <16 x i8> %i.bm
  %wide.load125 = load <16 x i8>, ptr %next.gep120, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %i.bq = add <16 x i8> %i.bp, %wide.load125
  store <16 x i8> %i.bq, ptr %next.gep120, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %index.next126 = add nuw i64 %index119, 16      ; 2 uses
  %i.br = icmp eq i64 %index.next126, %n.vec117
  br i1 %i.br, label %middle.block127, label %vector.body118, !llvm.loop !316

middle.block127:                                  ; preds = %vector.body118
  %cmp.n128 = icmp eq i64 %i.ao, %n.vec117
  br i1 %cmp.n128, label %._crit_edge62, label %vec.epilog.iter.check133

vec.epilog.iter.check133:                         ; preds = %middle.block127
  %min.epilog.iters.check134 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check134, label %vec.epilog.scalar.ph132.preheader, label %vec.epilog.ph135, !prof !51

vec.epilog.ph135:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check133
  %vec.epilog.resume.val129 = phi i64 [ %n.vec117, %vec.epilog.iter.check133 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec136 = and i64 %i.ao, -4                   ; 4 uses
  %i.bs = getelementptr i8, ptr %.046.lcssa, i64 %n.vec136
  %i.bt = getelementptr i8, ptr %.048.lcssa, i64 %n.vec136
  br label %vec.epilog.vector.body137

vec.epilog.vector.body137:                        ; preds = %vec.epilog.vector.body137, %vec.epilog.ph135
  %index138 = phi i64 [ %vec.epilog.resume.val129, %vec.epilog.ph135 ], [ %index.next145, %vec.epilog.vector.body137 ] ; 3 uses
  %next.gep139 = getelementptr i8, ptr %.046.lcssa, i64 %index138 ; 3 uses
  %next.gep140 = getelementptr i8, ptr %.048.lcssa, i64 %index138 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %next.gep140, i64 %i.am
  %wide.load141 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !8, !alias.scope !321 ; 2 uses
  %i.bv = zext <4 x i8> %wide.load141 to <4 x i32> ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep139, i64 %i.am
  %wide.load142 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !8, !alias.scope !322 ; 2 uses
  %i.bx = zext <4 x i8> %wide.load142 to <4 x i32>
  %wide.load143 = load <4 x i8>, ptr %next.gep140, align 1, !tbaa !8, !alias.scope !323 ; 2 uses
  %i.by = zext <4 x i8> %wide.load143 to <4 x i32>
  %i.bz = sub nsw <4 x i32> %i.by, %i.bv          ; 2 uses
  %i.ca = sub nsw <4 x i32> %i.bx, %i.bv          ; 2 uses
  %i.cb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bz, i1 true) ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ca, i1 true) ; 2 uses
  %i.cd = add nsw <4 x i32> %i.bz, %i.ca
  %i.ce = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cd, i1 true)
  %i.cf = icmp samesign ult <4 x i32> %i.cc, %i.cb
  %i.cg = select <4 x i1> %i.cf, <4 x i8> %wide.load143, <4 x i8> %wide.load142
  %i.ch = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cc, <4 x i32> %i.cb)
  %i.ci = icmp samesign ult <4 x i32> %i.ce, %i.ch
  %i.cj = select <4 x i1> %i.ci, <4 x i8> %wide.load141, <4 x i8> %i.cg
  %wide.load144 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %i.ck = add <4 x i8> %i.cj, %wide.load144
  store <4 x i8> %i.ck, ptr %next.gep139, align 1, !tbaa !8, !alias.scope !324, !noalias !325
  %index.next145 = add nuw i64 %index138, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next145, %n.vec136
  br i1 %i.cl, label %vec.epilog.middle.block146, label %vec.epilog.vector.body137, !llvm.loop !317

vec.epilog.middle.block146:                       ; preds = %vec.epilog.vector.body137
  %cmp.n147 = icmp eq i64 %i.ao, %n.vec136
  br i1 %cmp.n147, label %._crit_edge62, label %vec.epilog.scalar.ph132.preheader

vec.epilog.scalar.ph132.preheader:                ; preds = %iter.check131, %vector.memcheck103, %vec.epilog.iter.check133, %vec.epilog.middle.block146
  %.14759.ph = phi ptr [ %.046.lcssa, %iter.check131 ], [ %.046.lcssa, %vector.memcheck103 ], [ %i.ay, %vec.epilog.iter.check133 ], [ %i.bs, %vec.epilog.middle.block146 ]
  %.14958.ph = phi ptr [ %.048.lcssa, %iter.check131 ], [ %.048.lcssa, %vector.memcheck103 ], [ %i.az, %vec.epilog.iter.check133 ], [ %i.bt, %vec.epilog.middle.block146 ]
  br label %vec.epilog.scalar.ph132

vec.epilog.scalar.ph132:                          ; preds = %vec.epilog.scalar.ph132.preheader, %vec.epilog.scalar.ph132
  %.14759 = phi ptr [ %i.df, %vec.epilog.scalar.ph132 ], [ %.14759.ph, %vec.epilog.scalar.ph132.preheader ] ; 4 uses
  %.14958 = phi ptr [ %i.cs, %vec.epilog.scalar.ph132 ], [ %.14958.ph, %vec.epilog.scalar.ph132.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.14958, i64 %i.am
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8   ; 2 uses
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.14759, i64 %i.am
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8   ; 2 uses
  %i.cr = zext i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %.14958, i64 1
  %i.ct = load i8, ptr %.14958, align 1, !tbaa !8 ; 2 uses
  %i.cu = zext i8 %i.ct to i32
  %i.cv = sub nsw i32 %i.cu, %i.co                ; 2 uses
  %i.cw = sub nsw i32 %i.cr, %i.co                ; 2 uses
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cy = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true) ; 2 uses
  %i.cz = add nsw i32 %i.cv, %i.cw
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = icmp samesign ult i32 %i.cy, %i.cx
  %.045 = select i1 %i.db, i8 %i.ct, i8 %i.cq
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.cx)
  %i.dc = icmp samesign ult i32 %i.da, %.0
  %.1 = select i1 %i.dc, i8 %i.cn, i8 %.045
  %i.dd = load i8, ptr %.14759, align 1, !tbaa !8
  %i.de = add i8 %.1, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.14759, i64 1 ; 2 uses
  store i8 %i.de, ptr %.14759, align 1, !tbaa !8
  %exitcond.not = icmp eq ptr %i.df, %scevgep
  br i1 %exitcond.not, label %._crit_edge62, label %vec.epilog.scalar.ph132, !llvm.loop !318

._crit_edge62:                                    ; preds = %vec.epilog.scalar.ph132, %middle.block127, %vec.epilog.middle.block146, %._crit_edge
  ret void
}

declare void @png_init_filter_functions_sse2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @inflateReset2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS13__jmp_buf_tag", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!14 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !11, i64 16, !12, i64 24, !5, i64 32, !11, i64 40, !12, i64 48, !13, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !5, i64 88, !11, i64 96, !11, i64 104}
!15 = !{!"p1 _ZTS22png_compression_buffer", !9, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !9, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"png_color_16_struct", !4, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8}
!19 = !{!"png_xy", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!20 = !{!"any p2 pointer", !9, i64 0}
!21 = !{!"p2 short", !20, i64 0}
!22 = !{!"png_color_8_struct", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4}
!23 = !{!"png_unknown_chunk_t", !4, i64 0, !12, i64 8, !11, i64 16, !4, i64 24}
!24 = !{!"png_struct_def", !4, i64 0, !9, i64 200, !10, i64 208, !11, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !4, i64 296, !4, i64 297, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !14, i64 320, !15, i64 432, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !11, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !11, i64 584, !5, i64 592, !5, i64 596, !16, i64 600, !17, i64 608, !5, i64 612, !17, i64 616, !4, i64 618, !4, i64 619, !4, i64 620, !4, i64 621, !4, i64 622, !4, i64 623, !4, i64 624, !4, i64 625, !4, i64 626, !4, i64 627, !4, i64 628, !4, i64 629, !4, i64 630, !4, i64 631, !4, i64 632, !17, i64 634, !4, i64 636, !5, i64 640, !18, i64 644, !18, i64 654, !9, i64 664, !5, i64 672, !5, i64 676, !19, i64 680, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !12, i64 736, !21, i64 744, !12, i64 752, !12, i64 760, !21, i64 768, !21, i64 776, !22, i64 784, !22, i64 789, !12, i64 800, !18, i64 808, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !5, i64 896, !5, i64 900, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !5, i64 936, !5, i64 940, !12, i64 944, !12, i64 952, !5, i64 960, !4, i64 964, !5, i64 996, !9, i64 1000, !9, i64 1008, !5, i64 1016, !5, i64 1020, !12, i64 1024, !4, i64 1032, !4, i64 1033, !17, i64 1034, !17, i64 1036, !12, i64 1040, !5, i64 1048, !4, i64 1052, !9, i64 1056, !9, i64 1064, !9, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !4, i64 1104, !5, i64 1108, !5, i64 1112, !5, i64 1116, !11, i64 1120, !23, i64 1128, !11, i64 1160, !12, i64 1168, !11, i64 1176, !5, i64 1184, !5, i64 1188, !12, i64 1192, !4, i64 1200}
!25 = !{!24, !5, i64 1188}
!26 = !{!24, !5, i64 300}
!27 = !{!24, !5, i64 544}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!24, !5, i64 304}
!30 = !{!24, !5, i64 596}
!31 = !{!24, !4, i64 632}
!32 = !{!24, !5, i64 328}
!33 = !{!24, !12, i64 320}
!34 = !{!24, !12, i64 368}
!35 = !{!24, !5, i64 1116}
!36 = !{!24, !12, i64 1136}
!37 = !{!24, !11, i64 1120}
!38 = !{!24, !5, i64 504}
!39 = !{!24, !4, i64 631}
!40 = !{!24, !12, i64 560}
!41 = !{!24, !5, i64 508}
!42 = !{!24, !4, i64 621}
!43 = !{!24, !5, i64 308}
!44 = !{!24, !4, i64 620}
!45 = !{!5, !5, i64 0}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!"branch_weights", i32 4, i32 28}
!50 = !{!17, !17, i64 0}
!51 = !{!"branch_weights", i32 4, i32 12}
!52 = !{!"png_row_info_struct", !5, i64 0, !11, i64 8, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19}
!53 = !{!52, !4, i64 19}
!54 = !{!52, !11, i64 8}
!55 = !{!24, !4, i64 626}
!56 = !{!24, !12, i64 344}
!57 = !{!24, !5, i64 352}
!58 = !{!24, !5, i64 592}
!59 = !{!24, !12, i64 1168}
!60 = !{!24, !11, i64 1176}
!61 = !{!24, !5, i64 312}
!62 = !{!24, !5, i64 516}
!63 = !{!24, !12, i64 552}
!64 = !{!24, !11, i64 528}
!65 = !{!24, !5, i64 536}
!66 = !{!24, !5, i64 512}
!67 = !{!24, !4, i64 624}
!68 = !{!24, !4, i64 623}
!69 = !{!24, !17, i64 616}
!70 = !{!24, !4, i64 627}
!71 = !{!"png_color_struct", !4, i64 0, !4, i64 1, !4, i64 2}
!72 = !{!71, !4, i64 0}
!73 = !{!71, !4, i64 1}
!74 = !{!71, !4, i64 2}
!75 = !{!"p1 _ZTS15png_text_struct", !9, i64 0}
!76 = !{!"png_time_struct", !17, i64 0, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5, !4, i64 6}
!77 = !{!"p1 short", !9, i64 0}
!78 = !{!"p2 omnipotent char", !20, i64 0}
!79 = !{!"p1 _ZTS19png_unknown_chunk_t", !9, i64 0}
!80 = !{!"p1 _ZTS15png_sPLT_struct", !9, i64 0}
!81 = !{!"png_info_def", !5, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !16, i64 24, !17, i64 32, !17, i64 34, !4, i64 36, !4, i64 37, !4, i64 38, !4, i64 39, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44, !4, i64 52, !4, i64 53, !4, i64 54, !4, i64 55, !12, i64 56, !12, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !17, i64 84, !17, i64 86, !17, i64 88, !17, i64 90, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !75, i64 120, !76, i64 128, !22, i64 136, !12, i64 144, !18, i64 152, !18, i64 162, !5, i64 172, !5, i64 176, !4, i64 180, !5, i64 184, !5, i64 188, !4, i64 192, !5, i64 196, !12, i64 200, !77, i64 208, !12, i64 216, !5, i64 224, !5, i64 228, !12, i64 232, !78, i64 240, !4, i64 248, !4, i64 249, !5, i64 252, !79, i64 256, !5, i64 264, !80, i64 272, !5, i64 280, !4, i64 284, !12, i64 288, !12, i64 296, !78, i64 304, !19, i64 312, !5, i64 344, !5, i64 348}
!82 = !{!24, !5, i64 724}
!83 = !{!24, !17, i64 608}
!84 = !{!11, !11, i64 0}
!85 = !{!"png_text_struct", !5, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48}
!86 = !{!85, !5, i64 0}
!87 = !{!85, !12, i64 8}
!88 = !{!85, !12, i64 16}
!89 = !{!85, !11, i64 24}
!90 = !{!"branch_weights", i32 8, i32 24}
!91 = !{!24, !4, i64 629}
!92 = distinct !{!92, i1 false, !"png_get_uint_31"}
!93 = distinct !{!93, !92, !"png_get_uint_31: argument 0"}
!94 = !{!93}
!95 = distinct !{!95, !28}
!96 = distinct !{!96, i1 false, !"png_crc_error"}
!97 = distinct !{!97, !96, !"png_crc_error: argument 0"}
!98 = distinct !{!98, !96, !"png_crc_error: argument 0:thread"}
!99 = !{!97}
!100 = !{!98}
!101 = !{!24, !9, i64 1008}
!102 = !{!24, !5, i64 1016}
!103 = !{!24, !11, i64 1144}
!104 = !{!24, !4, i64 1152}
!105 = !{!"", !9, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 11}
!106 = !{!105, !9, i64 0}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28, !46, !47}
!109 = distinct !{!109, !48}
!110 = distinct !{!110, !28, !46}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, !28, !46, !47}
!113 = distinct !{!113, !28, !46, !47}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !28, !46}
!116 = distinct !{!116, !28, !46, !47}
!117 = distinct !{!117, !28, !46, !47}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !28, !46}
!120 = distinct !{!120, !28}
!121 = distinct !{!121, !28, !46, !47}
!122 = distinct !{!122, !28, !46, !47}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !28, !46}
!125 = !{!24, !11, i64 584}
!126 = distinct !{!126, !28}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, !28}
!129 = distinct !{!129, !28}
!130 = distinct !{!130, !28}
!131 = distinct !{!131, !28}
!132 = distinct !{!132, !28}
!133 = distinct !{!133, !48}
!134 = distinct !{!134, !28}
!135 = !{!52, !5, i64 0}
!136 = distinct !{!136, i1 false, !"png_init_filter_functions"}
!137 = distinct !{!137, !136, !"png_init_filter_functions: argument 0"}
!138 = !{!9, !9, i64 0}
!139 = !{!137}
!140 = distinct !{!140, i1 false, !"png_crc_finish_critical"}
!141 = distinct !{!141, !140, !"png_crc_finish_critical: argument 0"}
!142 = distinct !{!142, i1 false, !"png_crc_error"}
!143 = distinct !{!143, !142, !"png_crc_error: argument 0:thread"}
!144 = distinct !{!144, !142, !"png_crc_error: argument 0"}
!145 = distinct !{!145, i1 false, !"png_read_chunk_header"}
!146 = distinct !{!146, !145, !"png_read_chunk_header: argument 0"}
!147 = distinct !{!147, i1 false, !"png_get_uint_31"}
!148 = distinct !{!148, !147, !"png_get_uint_31: argument 0"}
!149 = distinct !{!149, !28}
!150 = distinct !{!150, i1 false, !"png_read_buffer"}
!151 = distinct !{!151, !150, !"png_read_buffer: argument 0"}
!152 = distinct !{!152, i1 false, !"png_zlib_inflate"}
!153 = distinct !{!153, !152, !"png_zlib_inflate: argument 0"}
!154 = !{!141}
!155 = !{!143, !141}
!156 = !{!144, !141}
!157 = !{!146}
!158 = !{!148, !146}
end_hunk_3
