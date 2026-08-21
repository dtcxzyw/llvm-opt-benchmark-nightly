Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_nsis_nulsft?download=true
inline.NumInlined: 13
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.nsis_st = type { i32, i32, i64, ptr, i32, i32, i32, %struct.anon, %struct.nsis_bzstream, %struct.lzma_stream, %struct.nsis_z_stream_s, ptr, i8, i8, i8, i8, [1024 x i8] }
%struct.anon = type { i32, ptr, i32, ptr }
%struct.nsis_bzstream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.lzma_stream = type { i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.nsis_z_stream_s = type { ptr, i32, i64, ptr, i32, %struct.inflate_blocks_state }
%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, [1440 x %struct.inflate_huft_s], [32768 x i8], ptr, ptr, ptr, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, [320 x i32], i32, ptr }
%struct.inflate_huft_s = type { %union.anon.5, i16 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8 }

@.str = private unnamed_addr constant [17 x i8] c"in scannulsft()\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Archive recursion limit exceeded (arec == %u).\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"NSIS: Can't create temporary directory %s\0A\00", align 1
@cli_leavetemps_flag = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"NSIS: Extracting files to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"NSIS.ExceededFileSize\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"NSIS: Successully extracted file #%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"NSIS: extraction complete\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"NSIS: Files limit reached (max: %u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s/content.%.3u\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%s/headers\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"NSIS: unable to create output file %s - aborting.\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"NSIS: reached EOF - extraction complete\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"NSIS: reached CRC - extraction complete\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"NSIS: empty file found\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"NSIS: next file is outside the archive\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"NSIS: Skipping file due to size limit (%u, max: %lu)\0A\00", align 1
@.str.16 = private unnamed_addr constant [132 x i8] c"NSIS: out of memory at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:236\0A\00", align 1
@.str.17 = private unnamed_addr constant [139 x i8] c"NSIS: cannot read %u bytes at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:241\0A\00", align 1
@.str.18 = private unnamed_addr constant [143 x i8] c"NSIS: cannot write output file at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:248\0A\00", align 1
@.str.19 = private unnamed_addr constant [143 x i8] c"NSIS: decompressor init failed at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:255\0A\00", align 1
@.str.20 = private unnamed_addr constant [143 x i8] c"NSIS: cannot write output file at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:270\0A\00", align 1
@.str.21 = private unnamed_addr constant [143 x i8] c"NSIS: xs looping, breaking out at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:286\0A\00", align 1
@.str.22 = private unnamed_addr constant [129 x i8] c"NSIS: bad stream at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:293\0A\00", align 1
@.str.23 = private unnamed_addr constant [143 x i8] c"NSIS: cannot write output file at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:300\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"NSIS: decompressor init failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"NSIS: out of memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [139 x i8] c"NSIS: cannot read %u bytes at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:324\0A\00", align 1
@.str.27 = private unnamed_addr constant [143 x i8] c"NSIS: xs looping, breaking out at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:344\0A\00", align 1
@.str.28 = private unnamed_addr constant [129 x i8] c"NSIS: bad stream at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:351\0A\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"NSIS: Breaking out due to filesize limit (%u, max: %lu) in solid archive\0A\00", align 1
@.str.30 = private unnamed_addr constant [143 x i8] c"NSIS: xs looping, breaking out at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:378\0A\00", align 1
@.str.31 = private unnamed_addr constant [129 x i8] c"NSIS: bad stream at /opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:391\0A\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"NSIS: Header info - Flags=%x, Header size=%x, Archive size=%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"NSIS: Possibly truncated file\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"NSIS: Overlays found\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"NSIS: solid compression%s detected\0A\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"NSIS: bzip2 %u - lzma %u - zlib %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 3, 2) i32 @cli_scannulsft(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 7 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %4 = alloca [4 x i8], align 4                   ; 8 uses
  %5 = alloca %struct.nsis_st, align 8            ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22   ; 2 uses
  %.not26 = icmp ult i32 %i.f, %i.d
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %i.f, 1
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.g) #9
  br label %bb.ay

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41288) %5, i8 0, i64 41288, i1 false)
  store i32 %0, ptr %5, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %2, ptr %i.h, align 8, !tbaa !32
  %i.i = tail call ptr @cli_gentemp(ptr noundef null) #9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !33
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.ay, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @mkdir(ptr noundef nonnull %i.i, i32 noundef 448) #9
  %.not28 = icmp eq i32 %i.k, 0
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.i) #9
  tail call void @free(ptr noundef nonnull %i.i) #9
  br label %bb.ay

bb.h:                                             ; preds = %bb.f
  %i.l = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !34
  %.not29 = icmp eq i8 %i.l, 0
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.i) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 10 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 40256 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40257 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40260
  br label %bb.k

bb.k:                                             ; preds = %select.unfold, %bb.j
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !35
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call fastcc i32 @nsis_unpack_next(ptr noundef nonnull %5, ptr noundef readonly %1)
  br label %cli_nsis_unpack.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  %i.af = load i32, ptr %5, align 8, !tbaa !23
  %i.ag = call i32 @fstat(i32 noundef %i.af, ptr noundef nonnull %3) #9
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %nsis_headers.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %5, align 8, !tbaa !23
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !32
  %i.ak = call i64 @lseek(i32 noundef %i.ai, i64 noundef %i.aj, i32 noundef 0) #9
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %nsis_headers.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load i32, ptr %5, align 8, !tbaa !23
  %i.an = call i32 @cli_readn(i32 noundef %i.am, ptr noundef nonnull %i.a, i32 noundef 28) #9
  %.not.i.i = icmp eq i32 %i.an, 28
  br i1 %.not.i.i, label %bb.p, label %nsis_headers.exit.i

bb.p:                                             ; preds = %bb.o
  %.val67.i.i = load i32, ptr %i.q, align 4       ; 2 uses
  store i32 %.val67.i.i, ptr %i.r, align 4, !tbaa !36
  %.val66.i.i = load i32, ptr %i.s, align 8       ; 2 uses
  store i32 %.val66.i.i, ptr %i.t, align 8, !tbaa !37
  %.val65.i.i = load i32, ptr %i.a, align 16
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef %.val65.i.i, i32 noundef %.val67.i.i, i32 noundef %.val66.i.i) #9
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !38  ; 2 uses
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !32
  %i.aq = sub nsw i64 %i.ao, %i.ap                ; 2 uses
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !37  ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp slt i64 %i.aq, %i.as               ; 2 uses
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #9
  %i.au = load i64, ptr %i.h, align 8, !tbaa !32
  %i.av = sub nsw i64 %i.ao, %i.au
  %i.aw = trunc i64 %i.av to i32
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.not58.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not58.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #9
  %.pre.i.i = load i32, ptr %i.t, align 8, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ax = phi i32 [ %i.ar, %bb.r ], [ %.pre.i.i, %bb.s ], [ %i.aw, %bb.q ] ; 2 uses
  %i.ay = add i32 %i.ax, -28
  store i32 %i.ay, ptr %i.t, align 8, !tbaa !37
  %.not83.i.i = icmp eq i32 %i.ax, 32
  br i1 %.not83.i.i, label %.loopexit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.az = load i32, ptr %5, align 8, !tbaa !23
  %i.ba = call i32 @cli_readn(i32 noundef %i.az, ptr noundef nonnull %i.v, i32 noundef 4) #9
  %.not59.peel.i.i = icmp eq i32 %i.ba, 4
  br i1 %.not59.peel.i.i, label %bb.u, label %nsis_headers.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %.val.peel.i.i = load i32, ptr %i.v, align 4    ; 4 uses
  %i.bb = and i32 %.val.peel.i.i, 255
  %i.bc = icmp eq i32 %i.bb, 49
  %i.bd = and i32 %.val.peel.i.i, 2147483647      ; 2 uses
  %i.be = icmp eq i32 %i.bd, 93
  %..i.peel.i.i = select i1 %i.be, i8 2, i8 3
  %.0.i.peel.i.i = select i1 %i.bc, i8 1, i8 %..i.peel.i.i
  store i8 %.0.i.peel.i.i, ptr %6, align 8, !tbaa !41
  %.not61.peel.i.i = icmp sgt i32 %.val.peel.i.i, -1
  br i1 %.not61.peel.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load i32, ptr %5, align 8, !tbaa !23
  %i.bg = call i32 @cli_readn(i32 noundef %i.bf, ptr noundef nonnull %i.v, i32 noundef 4) #9
  %.not62.peel.i.i = icmp eq i32 %i.bg, 4
  br i1 %.not62.peel.i.i, label %nsis_detcomp.exit71.peel.i.i, label %nsis_headers.exit.i

nsis_detcomp.exit71.peel.i.i:                     ; preds = %bb.v
  %i.bh = load i8, ptr %i.v, align 4, !tbaa !34
  %i.bi = icmp eq i8 %i.bh, 49
  %.val.i68.peel.i.i = load i32, ptr %i.v, align 4
  %i.bj = and i32 %.val.i68.peel.i.i, 2147483647
  %i.bk = icmp eq i32 %i.bj, 93
  %..i69.peel.i.i = select i1 %i.bk, i64 2, i64 3
  %.0.i70.peel.i.i = select i1 %i.bi, i64 1, i64 %..i69.peel.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i70.peel.i.i ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !34
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !34
  %i.bo = add nsw i32 %i.bd, -4
  br label %bb.w

bb.w:                                             ; preds = %nsis_detcomp.exit71.peel.i.i, %bb.u
  %.1.peel.i.i = phi i32 [ 8, %nsis_detcomp.exit71.peel.i.i ], [ 4, %bb.u ]
  %.0.peel.i.i = phi i32 [ %i.bo, %nsis_detcomp.exit71.peel.i.i ], [ %.val.peel.i.i, %bb.u ] ; 2 uses
  %i.bp = add i32 %.0.peel.i.i, %.1.peel.i.i      ; 3 uses
  %i.bq = load i32, ptr %i.t, align 8, !tbaa !37
  %i.br = icmp ugt i32 %i.bp, %i.bq
  br i1 %i.br, label %.loopexit87.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %5, align 8, !tbaa !23
  %i.bt = sext i32 %.0.peel.i.i to i64
  %i.bu = call i64 @lseek(i32 noundef %i.bs, i64 noundef %i.bt, i32 noundef 1) #9
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %nsis_headers.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load i32, ptr %i.t, align 8, !tbaa !37
  %i.bx = add i32 %i.bw, -4
  %i.by = icmp ult i32 %i.bp, %i.bx
  br i1 %i.by, label %.peel.next.i.i, label %.loopexit._crit_edge.i.i

.peel.next.i.i:                                   ; preds = %bb.y, %bb.ad
  %.04782.i.i = phi i32 [ %i.cw, %bb.ad ], [ 1, %bb.y ] ; 2 uses
  %.04881.i.i = phi i32 [ %i.co, %bb.ad ], [ %i.bp, %bb.y ] ; 2 uses
  %i.bz = load i32, ptr %5, align 8, !tbaa !23
  %i.ca = call i32 @cli_readn(i32 noundef %i.bz, ptr noundef nonnull %i.v, i32 noundef 4) #9
  %.not59.i.i = icmp eq i32 %i.ca, 4
  br i1 %.not59.i.i, label %bb.z, label %nsis_headers.exit.i

bb.z:                                             ; preds = %.peel.next.i.i
  %.val.i.i = load i32, ptr %i.v, align 4         ; 3 uses
  %.not61.i.i = icmp sgt i32 %.val.i.i, -1
  br i1 %.not61.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = load i32, ptr %5, align 8, !tbaa !23
  %i.cc = call i32 @cli_readn(i32 noundef %i.cb, ptr noundef nonnull %i.v, i32 noundef 4) #9
  %.not62.i.i = icmp eq i32 %i.cc, 4
  br i1 %.not62.i.i, label %nsis_detcomp.exit71.i.i, label %nsis_headers.exit.i

nsis_detcomp.exit71.i.i:                          ; preds = %bb.aa
  %i.cd = and i32 %.val.i.i, 2147483647
  %i.ce = load i8, ptr %i.v, align 4, !tbaa !34
  %i.cf = icmp eq i8 %i.ce, 49
  %.val.i68.i.i = load i32, ptr %i.v, align 4
  %i.cg = and i32 %.val.i68.i.i, 2147483647
  %i.ch = icmp eq i32 %i.cg, 93
  %..i69.i.i = select i1 %i.ch, i64 2, i64 3
  %.0.i70.i.i = select i1 %i.cf, i64 1, i64 %..i69.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i70.i.i ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !34
  %i.ck = add i8 %i.cj, 1
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !34
  %i.cl = add nsw i32 %i.cd, -4
  %i.cm = add i32 %.04881.i.i, 4
  br label %bb.ab

bb.ab:                                            ; preds = %nsis_detcomp.exit71.i.i, %bb.z
  %.1.i.i = phi i32 [ %i.cm, %nsis_detcomp.exit71.i.i ], [ %.04881.i.i, %bb.z ]
  %.0.i.i = phi i32 [ %i.cl, %nsis_detcomp.exit71.i.i ], [ %.val.i.i, %bb.z ] ; 2 uses
  %i.cn = add i32 %.1.i.i, 4
  %i.co = add i32 %i.cn, %.0.i.i                  ; 3 uses
  %i.cp = load i32, ptr %i.t, align 8, !tbaa !37
  %i.cq = icmp ugt i32 %i.co, %i.cp
  br i1 %i.cq, label %.loopexit87.i.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i32, ptr %5, align 8, !tbaa !23
  %i.cs = sext i32 %.0.i.i to i64
  %i.ct = call i64 @lseek(i32 noundef %i.cr, i64 noundef %i.cs, i32 noundef 1) #9
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %nsis_headers.exit.i, label %bb.ad

.loopexit87.i.loopexit.i:                         ; preds = %bb.ab
  %i.cv = icmp samesign ugt i32 %.04782.i.i, 1
  br label %.loopexit87.i.i

.loopexit87.i.i:                                  ; preds = %.loopexit87.i.loopexit.i, %bb.w
  %.04782.lcssa84.i.i = phi i1 [ false, %bb.w ], [ %i.cv, %.loopexit87.i.loopexit.i ]
  store i8 1, ptr %i.w, align 1, !tbaa !42
  br label %.loopexit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cw = add nuw nsw i32 %.04782.i.i, 1
  %i.cx = load i32, ptr %i.t, align 8, !tbaa !37
  %i.cy = add i32 %i.cx, -4
  %i.cz = icmp ult i32 %i.co, %i.cy
  br i1 %i.cz, label %.peel.next.i.i, label %.loopexit.i.i, !llvm.loop !43

.loopexit.i.i:                                    ; preds = %bb.ad, %.loopexit87.i.i
  %.04780.i.i = phi i1 [ %.04782.lcssa84.i.i, %.loopexit87.i.i ], [ true, %bb.ad ]
  %or.cond.i.i = select i1 %i.at, i1 %.04780.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.ae, label %.loopexit._crit_edge.i.i

.loopexit._crit_edge.i.i:                         ; preds = %.loopexit.i.i, %bb.y, %bb.t
  %.pre88.i.i = load i8, ptr %i.w, align 1, !tbaa !42
  %i.da = icmp eq i8 %.pre88.i.i, 0
  %i.db = select i1 %i.da, ptr @.str.37, ptr @.str.36
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit.i.i
  store i8 0, ptr %i.w, align 1, !tbaa !42
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit._crit_edge.i.i
  %.not63.i.i = phi ptr [ %i.db, %.loopexit._crit_edge.i.i ], [ @.str.37, %bb.ae ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35, ptr noundef nonnull %.not63.i.i) #9
  %i.dc = load i8, ptr %i.w, align 1, !tbaa !42
  %.not64.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not64.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = load i8, ptr %i.x, align 1, !tbaa !34   ; 3 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = load i8, ptr %i.y, align 2, !tbaa !34   ; 3 uses
  %i.dg = zext i8 %i.df to i32
  %i.dh = load i8, ptr %i.z, align 1, !tbaa !34   ; 3 uses
  %i.di = zext i8 %i.dh to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, i32 noundef %i.de, i32 noundef %i.dg, i32 noundef %i.di) #9
  %i.dj = icmp ult i8 %i.dd, %i.df
  %i.dk = icmp ult i8 %i.df, %i.dh
  %i.dl = select i1 %i.dk, i8 3, i8 2
  %i.dm = icmp ult i8 %i.dd, %i.dh
  %i.dn = select i1 %i.dm, i8 3, i8 1
  %i.do = select i1 %i.dj, i8 %i.dl, i8 %i.dn
  store i8 %i.do, ptr %6, align 8, !tbaa !41
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dp = load i32, ptr %5, align 8, !tbaa !23
  %i.dq = load i64, ptr %i.h, align 8, !tbaa !32
  %i.dr = add nsw i64 %i.dq, 28
  %i.ds = call i64 @lseek(i32 noundef %i.dp, i64 noundef %i.dr, i32 noundef 0) #9
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %nsis_headers.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.du = call fastcc i32 @nsis_unpack_next(ptr noundef nonnull %5, ptr noundef readonly %1)
  br label %nsis_headers.exit.i

nsis_headers.exit.i:                              ; preds = %bb.ac, %bb.aa, %.peel.next.i.i, %bb.ai, %bb.ah, %bb.x, %bb.v, %.lr.ph.i.i, %bb.o, %bb.n, %bb.m
  %.251.i.i = phi i32 [ %i.du, %bb.ai ], [ -123, %bb.ah ], [ -123, %bb.m ], [ -123, %bb.o ], [ -123, %bb.n ], [ -123, %bb.x ], [ -123, %bb.v ], [ -123, %.lr.ph.i.i ], [ -123, %.peel.next.i.i ], [ -123, %bb.aa ], [ -123, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %cli_nsis_unpack.exit

cli_nsis_unpack.exit:                             ; preds = %bb.l, %nsis_headers.exit.i
  %i.dv = phi i32 [ %i.ae, %bb.l ], [ %.251.i.i, %nsis_headers.exit.i ] ; 2 uses
  switch i32 %i.dv, label %select.unfold [
    i32 0, label %bb.al
    i32 -101, label %bb.aj
  ]

bb.aj:                                            ; preds = %cli_nsis_unpack.exit
  %i.dw = load i32, ptr %i.aa, align 8, !tbaa !46
  %i.dx = and i32 %i.dw, 256
  %.not32 = icmp eq i32 %i.dx, 0
  br i1 %.not32, label %bb.ak, label %.thread.thread41

.thread.thread41:                                 ; preds = %bb.aj
  %i.dy = load ptr, ptr %1, align 8, !tbaa !47
  store ptr @.str.4, ptr %i.dy, align 8, !tbaa !48
  br label %.thread.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dz = load i8, ptr %i.w, align 1, !tbaa !42
  %.not33 = icmp eq i8 %i.dz, 0
  br i1 %.not33, label %select.unfold, label %.thread.thread

bb.al:                                            ; preds = %cli_nsis_unpack.exit
  %i.ea = load i32, ptr %i.p, align 8, !tbaa !35
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.ea) #9
  %i.eb = load i32, ptr %i.ab, align 4, !tbaa !49
  %i.ec = call i64 @lseek(i32 noundef %i.eb, i64 noundef 0, i32 noundef 0) #9 ; 0 uses
  %i.ed = load i32, ptr %i.p, align 8, !tbaa !35
  %i.ee = icmp eq i32 %i.ed, 1
  %i.ef = load i32, ptr %i.ab, align 4, !tbaa !49 ; 2 uses
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eg = call i32 @cli_scandesc(i32 noundef %i.ef, ptr noundef %1, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null) #9
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.eh = call i32 @cli_magic_scandesc(i32 noundef %i.ef, ptr noundef %1) #9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0 = phi i32 [ %i.eg, %bb.am ], [ %i.eh, %bb.an ] ; 2 uses
  %i.ei = load i32, ptr %i.ab, align 4, !tbaa !49
  %i.ej = call i32 @close(i32 noundef %i.ei) #9   ; 0 uses
  %i.ek = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !34
  %.not31 = icmp eq i8 %i.ek, 0
  br i1 %.not31, label %bb.ap, label %select.unfold

bb.ap:                                            ; preds = %bb.ao
  %i.el = call i32 @unlink(ptr noundef nonnull %i.ac) #9 ; 0 uses
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ak, %cli_nsis_unpack.exit, %bb.ap, %bb.ao
  %.1 = phi i32 [ %.0, %bb.ap ], [ %.0, %bb.ao ], [ %i.dv, %cli_nsis_unpack.exit ], [ 0, %bb.ak ]
  %.1.fr = freeze i32 %.1                         ; 2 uses
  switch i32 %.1.fr, label %.thread.thread.loopexit62 [
    i32 0, label %bb.k
    i32 2, label %.thread.thread
  ]

.thread.thread.loopexit62:                        ; preds = %select.unfold
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.ak, %select.unfold, %.thread.thread.loopexit62, %.thread.thread41
  %i.em = phi i32 [ %.1.fr, %.thread.thread.loopexit62 ], [ 1, %.thread.thread41 ], [ 0, %select.unfold ], [ 0, %bb.ak ]
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 40258 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !50
  %.not.i.i35 = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i35, label %nsis_shutdown.exit.i, label %bb.aq

bb.aq:                                            ; preds = %.thread.thread
  %i.ep = load i8, ptr %6, align 8, !tbaa !41
  switch i8 %i.ep, label %bb.at [
    i8 1, label %bb.ar
    i8 2, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.er = call i32 @nsis_BZ2_bzDecompressEnd(ptr noundef nonnull %i.eq) #9 ; 0 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @lzmaShutdown(ptr noundef nonnull %i.es) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  store i8 0, ptr %i.en, align 2, !tbaa !50
  br label %nsis_shutdown.exit.i

nsis_shutdown.exit.i:                             ; preds = %bb.at, %.thread.thread
  %i.et = load i8, ptr %i.w, align 1, !tbaa !42
  %.not.i36 = icmp eq i8 %i.et, 0
  br i1 %.not.i36, label %cli_nsis_free.exit, label %bb.au

bb.au:                                            ; preds = %nsis_shutdown.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 40248
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !51 ; 2 uses
  %.not4.i = icmp eq ptr %i.ev, null
  br i1 %.not4.i, label %cli_nsis_free.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.ev) #9
  br label %cli_nsis_free.exit

cli_nsis_free.exit:                               ; preds = %nsis_shutdown.exit.i, %bb.au, %bb.av
  %i.ew = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !34
  %.not34 = icmp eq i8 %i.ew, 0
  br i1 %.not34, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %cli_nsis_free.exit
  %i.ex = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.ey = call i32 @cli_rmdirs(ptr noundef %i.ex) #9 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %cli_nsis_free.exit
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !33
  call void @free(ptr noundef %i.ez) #9
  %i.fa = load i32, ptr %i.m, align 4, !tbaa !22
  %i.fb = add i32 %i.fa, -1
  store i32 %i.fb, ptr %i.m, align 4, !tbaa !22
  br label %bb.ay

bb.ay:                                            ; preds = %bb.e, %bb.ax, %bb.g, %bb.d
  %.019 = phi i32 [ -100, %bb.d ], [ -118, %bb.g ], [ %i.em, %bb.ax ], [ -118, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @cli_scandesc(i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @cli_magic_scandesc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -124, 3) i32 @nsis_unpack_next(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca [8192 x i8], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40259 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #9
  br label %.critedge.thread213

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %.not164 = icmp eq ptr %i.f, null
  br i1 %.not164, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53   ; 3 uses
  %.not165 = icmp eq i32 %i.h, 0
  br i1 %.not165, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %.not166 = icmp ult i32 %i.j, %i.h
  br i1 %.not166, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, i32 noundef %i.h) #9
  br label %.critedge.thread213

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %.not167 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40260 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  br i1 %.not167, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 1023, ptr noundef nonnull @.str.8, ptr noundef %i.o, i32 noundef %i.l) #9 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 1023, ptr noundef nonnull @.str.9, ptr noundef %i.o) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = load i32, ptr %i.k, align 8, !tbaa !35
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40260 ; 2 uses
  %i.u = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.t, i32 noundef 578, i32 noundef 384) #9 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 27 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !49
  %i.w = icmp eq i32 %i.u, -1
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.t) #9
  br label %.critedge.thread213

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40257
  %i.y = load i8, ptr %i.x, align 1, !tbaa !42
  %.not168 = icmp eq i8 %i.y, 0
  br i1 %.not168, label %bb.m, label %bb.at

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %0, align 8, !tbaa !23
  %i.aa = call i32 @cli_readn(i32 noundef %i.z, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %.not169 = icmp eq i32 %i.aa, 4
  br i1 %.not169, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #9
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !49
  %i.ac = call i32 @close(i32 noundef %i.ab) #9   ; 0 uses
  br label %.critedge.thread213

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !37 ; 3 uses
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #9
  %i.ag = load i32, ptr %i.v, align 4, !tbaa !49
  %i.ah = call i32 @close(i32 noundef %i.ag) #9   ; 0 uses
  br label %.critedge.thread213

bb.q:                                             ; preds = %bb.o
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.aj = and i32 %i.ai, 2147483647               ; 7 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !4
  %.not170 = icmp eq i32 %i.aj, 0
  br i1 %.not170, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #9
  br label %.critedge.thread213

bb.s:                                             ; preds = %bb.q
  %i.ak = icmp ult i32 %i.ae, 4
  %i.al = add i32 %i.ae, -4                       ; 2 uses
  %i.am = icmp ugt i32 %i.aj, %i.al
  %or.cond = or i1 %i.ak, %i.am
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #9
  %i.an = load i32, ptr %i.v, align 4, !tbaa !49
  %i.ao = call i32 @close(i32 noundef %i.an) #9   ; 0 uses
  br label %.critedge.thread213

bb.u:                                             ; preds = %bb.s
  %i.ap = sub nuw i32 %i.al, %i.aj
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %.not171 = icmp eq ptr %i.aq, null
  br i1 %.not171, label %._crit_edge230, label %bb.v

._crit_edge230:                                   ; preds = %bb.u
  %.pre231 = zext nneg i32 %i.aj to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54 ; 3 uses
  %.not172 = icmp ne i64 %i.as, 0
  %i.at = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.au = icmp ult i64 %i.as, %i.at
  %or.cond216 = select i1 %.not172, i1 %i.au, i1 false
  br i1 %or.cond216, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, i32 noundef %i.aj, i64 noundef %i.as) #9
  %i.av = load i32, ptr %i.v, align 4, !tbaa !49
  %i.aw = call i32 @close(i32 noundef %i.av) #9   ; 0 uses
  %i.ax = load i32, ptr %0, align 8, !tbaa !23
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !4
  %i.az = zext i32 %i.ay to i64
  %i.ba = call i64 @lseek(i32 noundef %i.ax, i64 noundef %i.az, i32 noundef 1) #9
  %i.bb = icmp eq i64 %i.ba, -1
  %. = select i1 %i.bb, i32 -123, i32 -101
  br label %.critedge.thread213

bb.x:                                             ; preds = %._crit_edge230, %bb.v
  %.pre-phi = phi i64 [ %.pre231, %._crit_edge230 ], [ %i.at, %bb.v ]
  %i.bc = call ptr @cli_malloc(i64 noundef %.pre-phi) #9 ; 12 uses
  %.not173 = icmp eq ptr %i.bc, null
  br i1 %.not173, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16) #9
end_hunk_0
