Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/slru?download=true
inline.NumInlined: 41
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CheckpointStatsData = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.PgStat_CheckpointerStats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.FileTag = type { i16, i16, %struct.RelFileLocator, i64 }
%struct.RelFileLocator = type { i32, i32, i32 }
%struct.SlruWriteAllData = type { i32, [16 x i32], [16 x i64] }

@NBuffers = external local_unnamed_addr global i32, align 4
@TopMemoryContext = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s buffer\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s bank\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\22%s\22 must be a multiple of %d.\00", align 1
@GUC_check_errdetail_string = external local_unnamed_addr global ptr, align 8
@slru_errcause = internal unnamed_addr global i32 0, align 4
@slru_errno = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"could not truncate directory \22%s\22: apparent wraparound\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"slru.c\00", align 1
@__func__.SimpleLruTruncate = private unnamed_addr constant [18 x i8] c"SimpleLruTruncate\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"SlruScanDirectory invoking callback on %s/%s\00", align 1
@__func__.SlruScanDirectory = private unnamed_addr constant [18 x i8] c"SlruScanDirectory\00", align 1
@CheckpointStats = external local_unnamed_addr global %struct.CheckpointStatsData, align 8
@PendingCheckpointerStats = external local_unnamed_addr global %struct.PgStat_CheckpointerStats, align 8
@CritSectionCount = external global i32, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"%s/%015lX\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s/%04X\00", align 1
@InRecovery = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"file \22%s\22 doesn't exist, reading as zeroes\00", align 1
@__func__.SlruPhysicalReadPage = private unnamed_addr constant [21 x i8] c"SlruPhysicalReadPage\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@__func__.SlruReportIOError = private unnamed_addr constant [18 x i8] c"SlruReportIOError\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"could not seek in file \22%s\22 to offset %d: %m\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"could not read from file \22%s\22 at offset %d: %m\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"could not read from file \22%s\22 at offset %d: read too few bytes\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Could not write to file \22%s\22 at offset %d: %m\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"Could not write to file \22%s\22 at offset %d: wrote too few bytes.\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"removing file \22%s\22\00", align 1
@__func__.SlruInternalDeleteSegment = private unnamed_addr constant [26 x i8] c"SlruInternalDeleteSegment\00", align 1
@my_wait_event_info = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @SimpleLruAutotuneBuffers(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i32 %1, 16
  %i.b = sub nsw i32 %1, %i.a
  %i.c = load i32, ptr @NBuffers, align 4
  %i.d = sdiv i32 %i.c, %0                        ; 2 uses
  %i.e = srem i32 %i.d, 16
  %i.f = sub i32 %i.d, %i.e
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.f, i32 16)
  %spec.select15 = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %spec.select)
  ret i32 %spec.select15
}

; Function Attrs: nounwind uwtable
define dso_local void @SimpleLruRequestWithOpts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @TopMemoryContext, align 8
  %i.b = tail call ptr @MemoryContextAlloc(ptr noundef %i.a, i64 noundef 104) #13 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = sdiv i32 %i.f, 16
  %i.j = sext i32 %i.f to i64                     ; 4 uses
  %i.k = shl nsw i64 %i.j, 4
  %i.l = shl nsw i64 %i.j, 3
  %i.m = add nsw i64 %i.l, 8
  %i.n = and i64 %i.m, -16
  %i.o = add nsw i64 %i.j, 7
  %i.p = and i64 %i.o, -8
  %i.q = sext i32 %i.i to i64                     ; 2 uses
  %i.r = add nsw i64 %i.q, %i.j
  %i.s = shl nsw i64 %i.r, 7
  %i.t = shl nsw i64 %i.q, 2
  %i.u = add nsw i64 %i.t, 4
  %i.v = and i64 %i.u, -8
  %i.w = icmp sgt i32 %i.h, 0
  %i.x = mul i32 %i.h, %i.f
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = select i1 %i.w, i64 %i.z, i64 0
  %i.ab = add nsw i64 %i.k, 135
  %i.ac = add nsw i64 %i.ab, %i.p
  %i.ad = add nsw i64 %i.ac, %i.n
  %.0.i = add nsw i64 %i.ad, %i.s
  %reass.add.i = add nsw i64 %.0.i, %i.v
  %i.ae = add i64 %reass.add.i, %i.aa
  %i.af = and i64 %i.ae, -32
  %i.ag = shl i32 %i.f, 13
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add i64 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  tail call void @ShmemRequestInternal(ptr noundef nonnull %i.b, i32 noundef 2) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @MemoryContextAlloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ShmemRequestInternal(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @shmem_slru_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8              ; 7 uses
  %i.f = sdiv i32 %i.e, 16                        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %0, ptr %i.i, align 8
  %i.j = trunc i32 %i.f to i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i16 %i.j, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str, ptr noundef %i.p) #13 ; 0 uses
  %i.r = call i32 @LWLockNewTrancheId(ptr noundef nonnull %i.a) #13
  store i32 %i.r, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %i.w) #13 ; 0 uses
  %i.y = call i32 @LWLockNewTrancheId(ptr noundef nonnull %i.a) #13
  store i32 %i.y, ptr %i.s, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  store i32 %i.e, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.h, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  store volatile i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i32 @pgstat_get_slru_index(ptr noundef %i.ac) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = sext i32 %i.e to i64                    ; 4 uses
  %i.ai = shl nsw i64 %i.ah, 3                    ; 2 uses
  %i.aj = add nsw i64 %i.ai, 104                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = shl nsw i64 %i.ah, 2
  %i.an = add nsw i64 %i.am, 4
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = add nsw i64 %i.ao, %i.aj                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = add nsw i64 %i.ah, 7
  %i.at = and i64 %i.as, -8
  %i.au = add nsw i64 %i.ap, %i.at                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = add nsw i64 %i.au, %i.ai                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = add i64 %i.ax, %i.ao                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = shl nsw i64 %i.ah, 7
  %i.be = add i64 %i.ba, %i.bd                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = sext i32 %i.f to i64                    ; 2 uses
  %i.bi = shl nsw i64 %i.bh, 7
  %i.bj = add i64 %i.be, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = shl nsw i64 %i.bh, 2
  %i.bn = add nsw i64 %i.bm, 4
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bj, %i.bo                    ; 3 uses
  %i.bq = icmp sgt i32 %i.h, 0
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = mul i32 %i.h, %i.e
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 3
  %i.bw = add i64 %i.bp, %i.bv
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0100 = phi i64 [ %i.bw, %bb.f ], [ %i.bp, %bb.e ]
  %i.bx = icmp sgt i32 %i.e, 0
  br i1 %i.bx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.by = add i64 %.0100, 31
  %i.bz = and i64 %i.by, -32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.cb = icmp samesign ugt i32 %i.e, 15
  br i1 %i.cb, label %.lr.ph106.preheader, label %._crit_edge

.lr.ph106.preheader:                              ; preds = %.preheader
  %wide.trip.count111 = zext nneg i32 %i.f to i64
  br label %.lr.ph106

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %.0101103 = phi ptr [ %i.ca, %.lr.ph.preheader ], [ %i.cn, %.lr.ph ] ; 2 uses
  %i.cc = load ptr, ptr %i.bc, align 8
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = load i32, ptr %i.l, align 8
  call void @LWLockInitialize(ptr noundef %i.cd, i32 noundef %i.ce) #13
  %i.cf = load ptr, ptr %i.ag, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv
  store ptr %.0101103, ptr %i.cg, align 8
  %i.ch = load ptr, ptr %i.al, align 8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv
  store i32 0, ptr %i.ci, align 4
  %i.cj = load ptr, ptr %i.ar, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  store i8 0, ptr %i.ck, align 1
  %i.cl = load ptr, ptr %i.az, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.0101103, i64 8192
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph106, %bb.g, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.lr.ph106
  %indvars.iv108 = phi i64 [ 0, %.lr.ph106.preheader ], [ %indvars.iv.next109, %.lr.ph106 ] ; 3 uses
  %i.co = load ptr, ptr %i.bg, align 8
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %i.co, i64 %indvars.iv108
  %i.cq = load i32, ptr %i.s, align 4
  call void @LWLockInitialize(ptr noundef %i.cp, i32 noundef %i.cq) #13
  %i.cr = load ptr, ptr %i.bl, align 8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv108
  store i32 0, ptr %i.cs, align 4
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %.lr.ph106, !llvm.loop !6
}

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @LWLockNewTrancheId(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @pgstat_get_slru_index(ptr noundef) local_unnamed_addr #3

declare void @LWLockInitialize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @shmem_slru_attach(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sdiv i32 %i.d, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %0, ptr %i.f, align 8
  %i.g = trunc i32 %i.e to i16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i16 %i.g, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @check_slru_buffers(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = and i32 %i.a, 15
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #14
  %i.e = load i32, ptr %i.d, align 4
  tail call void @pre_format_elog_string(i32 noundef %i.e, ptr noundef null) #13
  %i.f = tail call ptr (ptr, ...) @format_elog_string(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef 16) #13
  store ptr %i.f, ptr @GUC_check_errdetail_string, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

declare void @pre_format_elog_string(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @format_elog_string(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SimpleLruZeroPage(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = tail call fastcc i32 @SlruSelectLRUPage(ptr noundef %0, i64 noundef %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %i.c to i64                     ; 6 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.f
  store i32 2, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.f
  store i8 1, ptr %i.m, align 1
  %i.n = ashr i32 %i.c, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.f
  %i.w = load i32, ptr %i.v, align 4
  %.not.i = icmp eq i32 %i.s, %i.w
  br i1 %.not.i, label %SlruRecentlyUsed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.x, ptr %i.r, align 4
  %i.y = load ptr, ptr %i.t, align 8
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  store i32 %i.x, ptr %i.z, align 4
  br label %SlruRecentlyUsed.exit

SlruRecentlyUsed.exit:                            ; preds = %bb.a, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.f
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.ad, i8 0, i64 8192, i1 false)
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.af = load i32, ptr %i.ae, align 8            ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.c, label %SimpleLruZeroLSNs.exit

bb.c:                                             ; preds = %SlruRecentlyUsed.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = mul i32 %i.af, %i.c
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = zext nneg i32 %i.af to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = and i64 %i.ao, 7
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp samesign ult i32 %i.af, 129
  %or.cond.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %SimpleLruZeroLSNs.exit.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.as = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.at = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.au = add i64 %i.at, %i.as                    ; 2 uses
  %i.av = add i64 %i.au, %i.an
  %i.aw = add i64 %i.au, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = xor i64 %i.as, -1
  %i.ay = sub i64 %i.ax, %i.at
  %i.az = add i64 %i.ay, %umax.i
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8
  br label %SimpleLruZeroLSNs.exit.sink.split

SimpleLruZeroLSNs.exit.sink.split:                ; preds = %bb.c, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.bb, %.lr.ph.preheader.i ], [ %i.an, %bb.c ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 0, i64 %.sink, i1 false)
  br label %SimpleLruZeroLSNs.exit

SimpleLruZeroLSNs.exit:                           ; preds = %SimpleLruZeroLSNs.exit.sink.split, %SlruRecentlyUsed.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store volatile i64 %1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.be = load i32, ptr %i.bd, align 8
  tail call void @pgstat_count_slru_blocks_zeroed(i32 noundef %i.be) #13
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SlruSelectLRUPage(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.k = load i16, ptr %i.c, align 8
  %i.l = zext i16 %i.k to i64
  %i.m = srem i64 %1, %i.l                        ; 2 uses
  %i.n = trunc nsw i64 %i.m to i32
  %i.o = shl nsw i32 %i.n, 4                      ; 2 uses
  %i.p = add nsw i32 %i.o, 16
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %i.s = sext i32 %i.p to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ %i.r, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %.thread.loopexit150, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not100 = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %.not100, label %bb.c, label %bb.f, !llvm.loop !7

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.f, align 8
end_hunk_0
