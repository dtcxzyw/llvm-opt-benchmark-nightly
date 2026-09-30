Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4io?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
begin_hunk_0
@.str.60 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"unable to create a LZ4F compression context\00", align 1
@.str.63 = private unnamed_addr constant [56 x i8] c"error initializing LZ4F compression context with prefix\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"error initializing LZ4F compression context\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"error compressing with LZ4F_compressUpdate\00", align 1
@.str.66 = private unnamed_addr constant [70 x i8] c"Allocation error : can't allocate output buffer to compress new chunk\00", align 1
@.str.67 = private unnamed_addr constant [48 x i8] c"Allocation error : can't describe new write job\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"cannot extend register of buffers\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"buffer ID not found\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"Allocation error : can't allocate buffer to read new chunk\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"Read error (read %u > %u [chunk size])\00", align 1
@.str.72 = private unnamed_addr constant [54 x i8] c"Allocation error : can't describe new compression job\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"Allocation error : can't create LZ4F context : %s\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"Allocation error : can't allocate buffers\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"Dictionary error : no filename provided\00", align 1
@.str.79 = private unnamed_addr constant [57 x i8] c"Allocation error : not enough memory for circular buffer\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"Dictionary error : could not open dictionary file\00", align 1
@.str.81 = private unnamed_addr constant [37 x i8] c"Allocation error : not enough memory\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"Error : can't free LZ4F context resource : %s\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"Can't create LZ4F context : %s\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"%-30.30s : decoded %llu bytes \0A\00", align 1
@selectDecoder.nbFrames = internal unnamed_addr global i32 0, align 4
@g_magicRead = internal unnamed_addr global i32 0, align 4
@.str.85 = private unnamed_addr constant [46 x i8] c"Unrecognized header : Magic Number unreadable\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"Detected : Legacy format \0A\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"Skipping detected skippable area \0A\00", align 1
@.str.88 = private unnamed_addr constant [41 x i8] c"Stream error : skippable size unreadable\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"Stream error : cannot skip skippable area\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"Unrecognized header : file cannot be decoded\00", align 1
@.str.91 = private unnamed_addr constant [37 x i8] c"Stream followed by undecodable data \00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"at position %i \00", align 1
@__const.LZ4IO_decompressLZ4F.dOpt_skipCrc = private unnamed_addr constant %struct.LZ4F_decompressOptions_t { i32 0, i32 1, i32 0, i32 0 }, align 4
@.str.93 = private unnamed_addr constant [18 x i8] c"Header error : %s\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"Decompression error : %s\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"\0DDecompressed : %u MiB  \00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"Unfinished stream (nextToLoad=%u)\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"Write error : cannot write decoded block\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"1 GB skip error (sparse file support)\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"Sparse skip error(%d): %s ; try --no-sparse\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"Sparse skip error ; try --no-sparse\00", align 1
@.str.102 = private unnamed_addr constant [48 x i8] c"Write error : cannot write decoded end of block\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"Final skip error (sparse file)\0A\00", align 1
@.str.104 = private unnamed_addr constant [38 x i8] c"Write error : cannot write last zero\0A\00", align 1
@.str.105 = private unnamed_addr constant [47 x i8] c"Error: cannot read block size in Legacy format\00", align 1
@.str.106 = private unnamed_addr constant [46 x i8] c"Read error : cannot access compressed block !\00", align 1
@.str.107 = private unnamed_addr constant [45 x i8] c"Decoding Failed ! Corrupted input detected !\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"Read error : ferror\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"Pass-through write error\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"Read Error\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"Error reading %s\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"    %6llu %14s %5s %8s\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"XXH32\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c" %20llu %20llu %9.2f%%\0A\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c" %20llu %20s %9s \0A\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"Corrupted legacy frame \0A\00", align 1
@.str.117 = private unnamed_addr constant [40 x i8] c"    %6llu %14s %5s %8s %20llu %20s %9s\0A\00", align 1
@.str.118 = private unnamed_addr constant [38 x i8] c"    %6llu %14s %5s %8s %20u %20s %9s\0A\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"SkippableFrame\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"impossible to skip backward\00", align 1
@.str.121 = private unnamed_addr constant [45 x i8] c"Error : block in legacy frame is too large \0A\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"LZ4Frame\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"LegacyFrame\00", align 1
@__const.LZ4IO_toHuman.units = private unnamed_addr constant [10 x i8] c"\00KMGTPEZY\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"%.2Lf%c\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @LZ4IO_defaultNbWorkers() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @LZ4IO_freePreferences(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noalias nonnull ptr @LZ4IO_defaultPreferences() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #26 ; 11 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread19

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 11) #27 ; 0 uses
  %i.f = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %.pr, %bb.d ]
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.thread19

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 37, i64 1, ptr %i.l) #28 ; 0 uses
  %i.m = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.p = tail call i32 @fflush(ptr noundef %i.o)  ; 0 uses
  %.pr18.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f
  %i.q = phi i32 [ %i.m, %bb.f ], [ %.pr18.pre, %bb.g ]
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %.thread19

bb.h:                                             ; preds = %thread-pre-split
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite17 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.s) #28 ; 0 uses
  %i.t = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.u = icmp sgt i32 %i.t, 3
  br i1 %i.u, label %bb.i, label %.thread19

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.w = tail call i32 @fflush(ptr noundef %i.v)  ; 0 uses
  br label %.thread19

.thread19:                                        ; preds = %bb.e, %bb.b, %bb.h, %bb.i, %thread-pre-split
  %i.x = tail call i32 @fflush(ptr noundef null)  ; 0 uses
  tail call void @exit(i32 noundef 11) #29
  unreachable

bb.j:                                             ; preds = %bb.a
  store <4 x i32> <i32 0, i32 1, i32 0, i32 7>, ptr %i.a, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 0, ptr %i.ab, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.ac, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.ad, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %i.ae, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 1, ptr %i.af, align 4, !tbaa !24
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 1, 201) i32 @LZ4IO_setNbWorkers(ptr nofree noundef writeonly captures(none) initializes((68, 72)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %i.a = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 200) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.a, ptr %i.b, align 4, !tbaa !24
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setDictionaryFilename(ptr nofree noundef writeonly captures(none) initializes((44, 48), (56, 64)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  %i.b = icmp ne ptr %1, null
  %i.c = zext i1 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.c, ptr %i.d, align 4, !tbaa !20
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setPassThrough(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setOverwrite(ptr nofree noundef writeonly captures(none) initializes((4, 8)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.c, align 4, !tbaa !26
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setTestMode(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !27
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i64 @LZ4IO_setBlockSizeID(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = and i32 %1, -4
  %or.cond.not = icmp eq i32 %i.a, 4
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !28
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr @LZ4IO_setBlockSizeID.blockSizeTable, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local range(i64 32, 4194305) i64 @LZ4IO_setBlockSize(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 32)
  %spec.store.select2 = tail call i64 @llvm.umin.i64(i64 %spec.store.select, i64 4194304) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.store.select2, ptr %i.a, align 8, !tbaa !18
  %i.b = add nsw i64 %spec.store.select2, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.012 = phi i64 [ %i.b, %bb.a ], [ %i.c, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]     ; 2 uses
  %i.c = lshr i64 %.012, 2                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  %i.d = add nuw nsw i32 %.0, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !112

bb.c:                                             ; preds = %bb.b
  %spec.store.select1 = tail call i32 @llvm.umax.i32(i32 %.0, i32 7)
  %i.e = add nsw i32 %spec.store.select1, -3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !28
  ret i64 %spec.store.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setBlockMode(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 8, !tbaa !113
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setBlockChecksumMode(ptr nofree noundef writeonly captures(none) initializes((24, 28)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8, !tbaa !31
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setStreamChecksumMode(ptr nofree noundef writeonly captures(none) initializes((28, 32)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.b, ptr %i.c, align 4, !tbaa !32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @LZ4IO_setNotificationLevel(i32 noundef returned %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @g_displayLevel, align 4, !tbaa !11
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 3) i32 @LZ4IO_setSparseFile(ptr nofree noundef writeonly captures(none) initializes((36, 40)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, i32 0, i32 2            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.a, ptr %i.b, align 4, !tbaa !33
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @LZ4IO_setContentSize(ptr nofree noundef writeonly captures(none) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.b, ptr %i.c, align 8, !tbaa !19
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LZ4IO_favorDecSpeed(ptr nofree noundef writeonly captures(none) initializes((48, 52)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.b, ptr %i.c, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LZ4IO_setRemoveSrcFile(ptr nofree noundef writeonly captures(none) initializes((64, 68)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_compressFilename_Legacy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @TIME_getTime() #25
  %i.c = tail call i64 @clock() #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = call fastcc i32 @LZ4IO_compressLegacy_internal(ptr noundef %i.a, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !35
  %i.f = tail call i64 @TIME_clockSpan_ns(i64 %i.b) #25
  %i.g = tail call i64 @clock() #25
  %i.h = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %LZ4IO_finalTimeDisplay.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sitofp i64 %i.c to double
  %i.k = sitofp i64 %i.g to double
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = uitofp i64 %i.l to double
  %i.n = insertelement <2 x double> poison, double %i.k, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.m, i64 1
  %i.p = fdiv <2 x double> %i.o, <double 1.000000e+06, double 1.000000e+09> ; 3 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.r = uitofp i64 %i.e to double
  %i.s = extractelement <2 x double> %i.p, i64 1  ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.j, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.r, i64 1
  %i.v = insertelement <2 x double> %i.p, double 1.000000e+06, i64 0
  %i.w = fdiv <2 x double> %i.u, %i.v             ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.p, %i.w
  %i.x = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.y = extractelement <2 x double> %i.w, i64 1
  %i.z = fmul double %i.y, f0x3F50000000000000
  %i.aa = fmul double %i.z, f0x3F50000000000000
  %i.ab = fdiv double %i.x, %i.s
  %i.ac = fmul double %i.ab, 1.000000e+02
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.49, double noundef %i.s, double noundef %i.aa, double noundef %i.ac) #27 ; 0 uses
  %i.ae = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.af = icmp sgt i32 %i.ae, 3
  br i1 %i.af, label %bb.c, label %LZ4IO_finalTimeDisplay.exit

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ah = tail call i32 @fflush(ptr noundef %i.ag) ; 0 uses
  br label %LZ4IO_finalTimeDisplay.exit

LZ4IO_finalTimeDisplay.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %i.d
}

declare i64 @TIME_getTime() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LZ4IO_compressLegacy_internal(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.WriteRegister, align 8      ; 8 uses
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %6 = alloca %struct.CompressLegacyState, align 4 ; 4 uses
  %7 = alloca %struct.ReadTracker, align 8        ; 14 uses
  %i.b = icmp slt i32 %3, 3
  %i.c = select i1 %i.b, ptr @LZ4IO_compressBlockLegacy_fast, ptr @LZ4IO_compressBlockLegacy_HC
  %i.d = tail call fastcc ptr @LZ4IO_openSrcFile(ptr noundef %1) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = tail call ptr @TPool_create(i32 noundef %i.f, i32 noundef 4) #25 ; 5 uses
  %i.h = tail call ptr @TPool_create(i32 noundef 1, i32 noundef 4) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !alias.scope !116
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 16, ptr %i.i, align 8, !alias.scope !116
  %i.j = tail call noalias dereferenceable_or_null(384) ptr @calloc(i64 noundef 1, i64 noundef 384) #30, !noalias !116 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !37, !alias.scope !116
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 8388608, ptr %i.l, align 8, !tbaa !38, !alias.scope !116
  store i64 0, ptr %0, align 8, !tbaa !35
  %i.m = icmp eq ptr %i.d, null                   ; 2 uses
  br i1 %i.m, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call fastcc ptr @LZ4IO_openDstFile(ptr noundef %2, ptr noundef nonnull %4) ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %i.g, null
  %i.q = icmp eq ptr %i.h, null
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %.thread45

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str, i32 noundef 21) #27 ; 0 uses
  %i.v = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.y = tail call i32 @fflush(ptr noundef %i.x)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.z = phi i32 [ %i.v, %bb.e ], [ %.pr, %bb.f ]
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.thread45

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 26, i64 1, ptr %i.ab) #28 ; 0 uses
  %i.ac = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 3
  br i1 %i.ad, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.af = tail call i32 @fflush(ptr noundef %i.ae) ; 0 uses
  %.pr44.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.i, %bb.h
  %i.ag = phi i32 [ %i.ac, %bb.h ], [ %.pr44.pre, %bb.i ]
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %.thread45

bb.j:                                             ; preds = %thread-pre-split
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.ai) #28 ; 0 uses
  %i.aj = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %bb.k, label %.thread45

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.am = tail call i32 @fflush(ptr noundef %i.al) ; 0 uses
  br label %.thread45

.thread45:                                        ; preds = %bb.g, %bb.d, %bb.j, %bb.k, %thread-pre-split
  %i.an = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 21) #29
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.ao = icmp eq ptr %i.j, null
  br i1 %i.ao, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %.thread50

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str, i32 noundef 22) #27 ; 0 uses
  %i.at = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  %.pr46 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.p
end_hunk_0
