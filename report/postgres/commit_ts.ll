begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SlruDesc = type { %struct.SlruOpts, ptr, i16 }
%struct.SlruOpts = type { %struct.ShmemStructOpts, ptr, ptr, i32, i32, i32, ptr, i8, ptr, ptr, i32, i32 }
%struct.ShmemStructOpts = type { ptr, i64, i64, ptr }
%struct.xl_commit_ts_truncate = type { i64, i32 }

@CommitTsShmemCallbacks = dso_local local_unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @CommitTsShmemRequest, ptr @CommitTsShmemInit, ptr null, ptr null }, align 8
@commitTsShared = internal global ptr null, align 8
@MainLWLockArray = external local_unnamed_addr global ptr, align 8
@TransamVariables = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [52 x i8] c"cannot retrieve commit timestamp for transaction %u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"commit_ts.c\00", align 1
@__func__.TransactionIdGetCommitTsData = private unnamed_addr constant [29 x i8] c"TransactionIdGetCommitTsData\00", align 1
@CommitTsSlruDesc = internal global %struct.SlruDesc zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1
@__func__.pg_last_committed_xact = private unnamed_addr constant [23 x i8] c"pg_last_committed_xact\00", align 1
@__func__.pg_xact_commit_timestamp_origin = private unnamed_addr constant [32 x i8] c"pg_xact_commit_timestamp_origin\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"commit_timestamp_buffers\00", align 1
@track_commit_timestamp = dso_local local_unnamed_addr global i8 0, align 1
@InRecovery = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"commit_ts_redo: unknown op code %u\00", align 1
@__func__.commit_ts_redo = private unnamed_addr constant [15 x i8] c"commit_ts_redo\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"could not get commit timestamp data\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"Make sure the configuration parameter \22%s\22 is set on the primary server.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"track_commit_timestamp\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Make sure the configuration parameter \22%s\22 is set.\00", align 1
@__func__.error_commit_ts_disabled = private unnamed_addr constant [25 x i8] c"error_commit_ts_disabled\00", align 1
@commit_timestamp_buffers = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"commit_timestamp\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"pg_commit_ts\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"CommitTs shared\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Could not access commit timestamp of transaction %u.\00", align 1
@Mode = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define internal void @CommitTsShmemRequest(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %1 = alloca %struct.SlruOpts, align 8           ; 18 uses
  %2 = alloca %struct.ShmemStructOpts, align 8    ; 5 uses
  %i.b = load i32, ptr @commit_timestamp_buffers, align 4 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %CommitTsShmemBuffers.exit, label %.sink.split

CommitTsShmemBuffers.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = tail call i32 @SimpleLruAutotuneBuffers(i32 noundef 512, i32 noundef 1024) #10
  %i.e = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %i.d) #10 ; 0 uses
  call void @SetConfigOption(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1) #10
  %i.f = load i32, ptr @commit_timestamp_buffers, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.thread3

.thread3:                                         ; preds = %CommitTsShmemBuffers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.sink.split

bb.b:                                             ; preds = %CommitTsShmemBuffers.exit
  call void @SetConfigOption(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 10) #10
  %.pr.pr = load i32, ptr @commit_timestamp_buffers, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @.str.10, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @CommitTsSlruDesc, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = icmp eq i32 %.pr.pr, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @SimpleLruAutotuneBuffers(i32 noundef 512, i32 noundef 1024) #10
  br label %CommitTsShmemBuffers.exit2

.sink.split:                                      ; preds = %bb.a, %.thread3
  %.ph6 = phi i32 [ %i.f, %.thread3 ], [ %i.b, %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @.str.10, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @CommitTsSlruDesc, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %i.p = phi ptr [ %i.j, %bb.b ], [ %i.o, %.sink.split ]
  %i.q = phi i32 [ %.pr.pr, %bb.b ], [ %.ph6, %.sink.split ]
  %i.r = call i32 @llvm.smax.i32(i32 %i.q, i32 16)
  %i.s = call i32 @llvm.umin.i32(i32 %i.r, i32 131072)
  br label %CommitTsShmemBuffers.exit2

CommitTsShmemBuffers.exit2:                       ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.j, %bb.c ], [ %i.p, %bb.d ]
  %.0.i1 = phi i32 [ %i.l, %bb.c ], [ %i.s, %bb.d ]
  store i32 %.0.i1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @.str.11, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.y, align 8
  store ptr @CommitTsPagePrecedes, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr @commit_ts_errdetail_for_io_error, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 59, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 90, ptr %i.ac, align 4
  call void @SimpleLruRequestWithOpts(ptr noundef nonnull %1) #10
  store ptr @.str.12, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 32, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @commitTsShared, ptr %i.af, align 8
  call void @ShmemRequestStructWithOpts(ptr noundef nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal void @CommitTsShmemInit(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr @commitTsShared, align 8
  store i32 0, ptr %i.a, align 8
  %i.b = load ptr, ptr @commitTsShared, align 8   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -9223372036854775808, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TransactionTreeSetCommitTsData(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr @commitTsShared, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !4, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr [4 x i8], ptr %2, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.033 = phi i32 [ %i.j, %bb.c ], [ %0, %bb.b ]  ; 4 uses
  %i.k = sext i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.034 = phi i32 [ %0, %bb.d ], [ %i.be, %bb.g ] ; 2 uses
  %.031 = phi i32 [ 0, %bb.d ], [ %i.bf, %bb.g ]  ; 4 uses
  %i.l = udiv i32 %.034, 819                      ; 3 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = icmp slt i32 %.031, %1
  %i.o = sext i32 %.031 to i64                    ; 2 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4
  %i.r = udiv i32 %i.q, 819
  %.not.not = icmp eq i32 %i.r, %i.l
  br i1 %.not.not, label %bb.f, label %._crit_edge.loopexit.split.loop.exit

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.s = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit.split.loop.exit, %bb.e
  %.0.lcssa = phi i32 [ %.031, %bb.e ], [ %i.s, %._crit_edge.loopexit.split.loop.exit ], [ %1, %bb.f ] ; 3 uses
  %.lcssa = phi i1 [ false, %bb.e ], [ true, %._crit_edge.loopexit.split.loop.exit ], [ false, %bb.f ]
  %i.t = sub i32 %.0.lcssa, %.031                 ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.034, ptr %i.a, align 4
  %i.v = load i16, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 112), align 8
  %.rhs.trunc.i.i = zext i16 %i.v to i32
  %i.w = urem i32 %i.l, %.rhs.trunc.i.i
  %.zext.i.i = zext nneg i32 %i.w to i64
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %.zext.i.i ; 2 uses
  %i.ab = call zeroext i1 @LWLockAcquire(ptr noundef %i.aa, i32 noundef 0) #10 ; 0 uses
  %i.ac = call i32 @SimpleLruReadPage(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef range(i64 0, 5244161) %i.m, i1 noundef zeroext true, ptr noundef nonnull %i.a) #10
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = urem i32 %i.ad, 819
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = sext i32 %i.ac to i64                   ; 5 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %narrow.i.i = mul nuw nsw i32 %i.ae, 10
  %i.al = zext nneg i32 %narrow.i.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  store i64 %3, ptr %i.am, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i16 %4, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.an = icmp sgt i32 %i.t, 0
  br i1 %i.an, label %.lr.ph.preheader.i, label %SetXidCommitTsInPage.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.t to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %5 = icmp eq i32 %i.t, 1
  br i1 %5, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %7 = load i32, ptr %6, align 4
  %8 = urem i32 %7, 819
  %9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds [8 x i8], ptr %11, i64 %i.ai
  %13 = load ptr, ptr %12, align 8
  %narrow.i15.i = mul nuw nsw i32 %8, 10
  %14 = zext nneg i32 %narrow.i15.i to i64
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 %14 ; 2 uses
  store i64 %3, ptr %15, align 1
  %.sroa.4.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i16 %4, ptr %.sroa.4.0..sroa_idx.i16.i, align 1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %16 = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ap = load i32, ptr %16, align 4
  %i.aq = urem i32 %i.ap, 819
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ai
  %i.av = load ptr, ptr %i.au, align 8
  %narrow.i15.i.1 = mul nuw nsw i32 %i.aq, 10
  %i.aw = zext nneg i32 %narrow.i15.i.1 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw ; 2 uses
  store i64 %3, ptr %i.ax, align 1
  %.sroa.4.0..sroa_idx.i16.i.1 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i16 %4, ptr %.sroa.4.0..sroa_idx.i16.i.1, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %SetXidCommitTsInPage.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !8

SetXidCommitTsInPage.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %SetXidCommitTsInPage.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %SetXidCommitTsInPage.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %SetXidCommitTsInPage.exit.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i32 %i.t to i1
  call void @llvm.assume(i1 %lcmp.mod53)
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.epil.init
  %18 = load i32, ptr %17, align 4
  %19 = urem i32 %18, 819
  %20 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %22, i64 %i.ai
  %24 = load ptr, ptr %23, align 8
  %narrow.i15.i.epil = mul nuw nsw i32 %19, 10
  %25 = zext nneg i32 %narrow.i15.i.epil to i64
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %25 ; 2 uses
  store i64 %3, ptr %26, align 1
  %.sroa.4.0..sroa_idx.i16.i.epil = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i16 %4, ptr %.sroa.4.0..sroa_idx.i16.i.epil, align 1
  br label %SetXidCommitTsInPage.exit

SetXidCommitTsInPage.exit:                        ; preds = %.lr.ph.i.epil.preheader, %SetXidCommitTsInPage.exit.loopexit.unr-lcssa, %._crit_edge
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ai
  store i8 1, ptr %i.bb, align 1
  call void @LWLockRelease(ptr noundef %i.aa) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.lcssa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %SetXidCommitTsInPage.exit
  %i.bc = sext i32 %.0.lcssa to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %.0.lcssa, 1
  br label %bb.e

bb.h:                                             ; preds = %SetXidCommitTsInPage.exit
  %i.bg = load ptr, ptr @MainLWLockArray, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4992
  %i.bi = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.bh, i32 noundef 0) #10 ; 0 uses
  %i.bj = load ptr, ptr @commitTsShared, align 8
  store i32 %0, ptr %i.bj, align 8
  %i.bk = load ptr, ptr @commitTsShared, align 8  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %3, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i16 %4, ptr %i.bm, align 8
  %i.bn = load ptr, ptr @TransamVariables, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 44 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4            ; 3 uses
  %i.bq = icmp ugt i32 %i.bp, 2
  %i.br = icmp ugt i32 %.033, 2
  %or.cond.i = and i1 %i.br, %i.bq
  %i.bs = sub i32 %i.bp, %.033
  %i.bt = icmp slt i32 %i.bs, 0
  %i.bu = icmp ult i32 %i.bp, %.033
  %.0.i = select i1 %or.cond.i, i1 %i.bt, i1 %i.bu
  br i1 %.0.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %.033, ptr %i.bo, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = load ptr, ptr @MainLWLockArray, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4992
  call void @LWLockRelease(ptr noundef nonnull %i.bw) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @TransactionIdGetCommitTsData(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = udiv i32 %0, 819                         ; 2 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = urem i32 %0, 819
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, i32 noundef 0) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 296, ptr noundef nonnull @__func__.TransactionIdGetCommitTsData) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %0, 2
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8
  %.not24 = icmp eq ptr %2, null
  br i1 %.not24, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 0, ptr %2, align 2
  br label %bb.t

bb.f:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @MainLWLockArray, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4992
  %i.k = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.j, i32 noundef 1) #10 ; 0 uses
  %i.l = load ptr, ptr @commitTsShared, align 8   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !4, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @error_commit_ts_disabled()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.l, align 8
  %i.q = icmp eq i32 %i.p, %0
  br i1 %i.q, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %1, align 8
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr @commitTsShared, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i16, ptr %i.u, align 8
  store i16 %i.v, ptr %2, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load ptr, ptr @MainLWLockArray, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.x) #10
  %i.y = load i64, ptr %1, align 8
  %i.z = icmp ne i64 %i.y, 0
  br label %bb.t

bb.l:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr @TransamVariables, align 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i32, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = load ptr, ptr @MainLWLockArray, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.ag) #10
  %.not25 = icmp eq i32 %i.ac, 0
  br i1 %.not25, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp ugt i32 %i.ac, 2
  %i.ai = sub i32 %0, %i.ac
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = icmp ult i32 %0, %i.ac
  %.0.i = select i1 %i.ah, i1 %i.aj, i1 %i.ak
  br i1 %.0.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = icmp ugt i32 %i.ae, 2
  %i.am = sub i32 %i.ae, %0
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = icmp ult i32 %i.ae, %0
  %.0.i30 = select i1 %i.al, i1 %i.an, i1 %i.ao
  br i1 %.0.i30, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  store i64 0, ptr %1, align 8
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i16 0, ptr %2, align 2
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ap = call i32 @SimpleLruReadPage_ReadOnly(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef %i.c, ptr noundef nonnull %i.a) #10
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %narrow = mul nuw nsw i32 %i.d, 10
  %i.aw = zext nneg i32 %narrow to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ax, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 1
  store i64 %.sroa.0.0.copyload, ptr %1, align 8
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 %.sroa.4.0.copyload, ptr %2, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ay = load i16, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 112), align 8
  %.rhs.trunc.i = zext i16 %i.ay to i32
  %i.az = urem i32 %i.b, %.rhs.trunc.i
  %.zext.i = zext nneg i32 %i.az to i64
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.bc, i64 %.zext.i
  call void @LWLockRelease(ptr noundef %i.bd) #10
  %i.be = load i64, ptr %1, align 8
  %i.bf = icmp ne i64 %i.be, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.d, %bb.e, %bb.s, %bb.k
  %.0 = phi i1 [ %i.z, %bb.k ], [ false, %bb.d ], [ %i.bf, %bb.s ], [ false, %bb.e ], [ false, %bb.p ], [ false, %bb.o ]
  ret i1 %.0
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind uwtable
define internal fastcc void @error_commit_ts_disabled() unnamed_addr #5 {
bb.a:
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.b = tail call i32 @errcode(i32 noundef 325) #10 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #10 ; 0 uses
  %i.d = tail call zeroext i1 @RecoveryInProgress() #10
  %.str.6..str.8 = select i1 %i.d, ptr @.str.6, ptr @.str.8
  %i.e = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull %.str.6..str.8, ptr noundef nonnull @.str.7) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 399, ptr noundef nonnull @__func__.error_commit_ts_disabled) #10
  unreachable
}

declare i32 @SimpleLruReadPage_ReadOnly(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetLatestCommitTsData(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4992
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 1) #10 ; 0 uses
  %i.d = load ptr, ptr @commitTsShared, align 8   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !4, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @error_commit_ts_disabled()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.d, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8
  store i64 %i.j, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @commitTsShared, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i16, ptr %i.l, align 8
  store i16 %i.m, ptr %1, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr @MainLWLockArray, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.o) #10
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_xact_commit_timestamp(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = call zeroext i1 @TransactionIdGetCommitTsData(i32 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.f, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_last_committed_xact(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca [3 x i8], align 1                 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = load ptr, ptr @MainLWLockArray, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4992
  %i.f = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.e, i32 noundef 1) #10 ; 0 uses
  %i.g = load ptr, ptr @commitTsShared, align 8   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %GetLatestCommitTsData.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @error_commit_ts_disabled()
  unreachable

GetLatestCommitTsData.exit:                       ; preds = %bb.a
  %i.k = load i32, ptr %i.g, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load i16, ptr %i.n, align 8
  %i.p = load ptr, ptr @MainLWLockArray, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.q) #10
  %i.r = call i32 @get_call_result_type(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.c) #10
  %.not = icmp eq i32 %i.r, 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %GetLatestCommitTsData.exit
  %i.s = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.t = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 443, ptr noundef nonnull @__func__.pg_last_committed_xact) #10
  unreachable

bb.d:                                             ; preds = %GetLatestCommitTsData.exit
  %i.u = icmp ugt i32 %i.k, 2
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 1, i64 3, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = zext i32 %i.k to i64
  store i64 %i.v, ptr %i.a, align 16
  store i8 0, ptr %i.b, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.x, align 1
  %i.y = zext i16 %i.o to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.aa, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = call ptr @heap_form_tuple(ptr noundef %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %.val = load ptr, ptr %i.ad, align 8
  %i.ae = call i64 @HeapTupleHeaderGetDatum(ptr noundef %.val) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.ae
}

declare i32 @get_call_result_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @heap_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_xact_commit_timestamp_origin(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = alloca [2 x i8], align 2                 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.i = call zeroext i1 @TransactionIdGetCommitTsData(i32 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.j = call i32 @get_call_result_type(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.e) #10
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.l = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 487, ptr noundef nonnull @__func__.pg_xact_commit_timestamp_origin) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 257, ptr %i.d, align 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.b, align 8
  store i64 %i.m, ptr %i.c, align 16
  store i8 0, ptr %i.d, align 2
  %i.n = load i16, ptr %i.a, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.q, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = call ptr @heap_form_tuple(ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val = load ptr, ptr %i.t, align 8
  %i.u = call i64 @HeapTupleHeaderGetDatum(ptr noundef %.val) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @check_commit_ts_buffers(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @check_slru_buffers(ptr noundef nonnull @.str.3, ptr noundef %0) #10
  ret i1 %i.a
}

declare zeroext i1 @check_slru_buffers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BootStrapCommitTs() local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @StartupCommitTs() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @ActivateCommitTs()
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ActivateCommitTs() unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @Mode, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @MainLWLockArray, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4992
  %i.e = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.d, i32 noundef 0) #10 ; 0 uses
  %i.f = load ptr, ptr @commitTsShared, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !4, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr @MainLWLockArray, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.k) #10
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @TransamVariables, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = udiv i32 %i.o, 819
  %i.q = zext nneg i32 %i.p to i64                ; 3 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store volatile i64 %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr @MainLWLockArray, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4992
  %i.v = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.u, i32 noundef 0) #10 ; 0 uses
  %i.w = load ptr, ptr @TransamVariables, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call i64 @ReadNextFullTransactionId() #10
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = load ptr, ptr @TransamVariables, align 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  store i32 %i.ab, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 %i.ab, ptr %i.ae, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = load ptr, ptr @MainLWLockArray, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.ag) #10
  %i.ah = tail call zeroext i1 @SimpleLruDoesPhysicalPageExist(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef %i.q) #10
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @SimpleLruZeroAndWritePage(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef %i.q) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = load ptr, ptr @MainLWLockArray, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4992
  %i.ak = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.aj, i32 noundef 0) #10 ; 0 uses
  %i.al = load ptr, ptr @commitTsShared, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 1, ptr %i.am, align 8
  %i.an = load ptr, ptr @MainLWLockArray, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.ao) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CompleteCommitTsInitialization() local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @track_commit_timestamp, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @MainLWLockArray, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4992
  %i.e = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.d, i32 noundef 0) #10 ; 0 uses
  %i.f = load ptr, ptr @commitTsShared, align 8   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 0, ptr %i.g, align 8
  store i32 0, ptr %i.f, align 8
  %i.h = load ptr, ptr @commitTsShared, align 8   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 -9223372036854775808, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i16 0, ptr %i.j, align 8
  %i.k = load ptr, ptr @TransamVariables, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 0, ptr %i.m, align 4
  %i.n = tail call zeroext i1 @SlruScanDirectory(ptr noundef nonnull @CommitTsSlruDesc, ptr noundef nonnull @SlruScanDirCbDeleteAll, ptr noundef null) #10 ; 0 uses
  %i.o = load ptr, ptr @MainLWLockArray, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.p) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @ActivateCommitTs()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CommitTsParameterChange(i1 noundef zeroext %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @commitTsShared, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %0, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @ActivateCommitTs()
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @MainLWLockArray, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4992
  %i.g = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.f, i32 noundef 0) #10 ; 0 uses
  %i.h = load ptr, ptr @commitTsShared, align 8   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 0, ptr %i.i, align 8
  store i32 0, ptr %i.h, align 8
  %i.j = load ptr, ptr @commitTsShared, align 8   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 -9223372036854775808, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i16 0, ptr %i.l, align 8
  %i.m = load ptr, ptr @TransamVariables, align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 0, ptr %i.o, align 4
  %i.p = tail call zeroext i1 @SlruScanDirectory(ptr noundef nonnull @CommitTsSlruDesc, ptr noundef nonnull @SlruScanDirCbDeleteAll, ptr noundef null) #10 ; 0 uses
  %i.q = load ptr, ptr @MainLWLockArray, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.r) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CheckPointCommitTs() local_unnamed_addr #0 {
bb.a:
  tail call void @SimpleLruWriteAll(ptr noundef nonnull @CommitTsSlruDesc, i1 noundef zeroext true) #10
  ret void
}

declare void @SimpleLruWriteAll(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ExtendCommitTs(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @commitTsShared, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = urem i32 %0, 819
  %i.f = udiv i32 %0, 819                         ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  %i.h = icmp eq i32 %0, 3
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.f to i64                ; 2 uses
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 112), align 8
  %.rhs.trunc.i = zext i16 %i.j to i32
  %i.k = urem i32 %i.f, %.rhs.trunc.i
  %.zext.i = zext nneg i32 %i.k to i64
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.zext.i ; 2 uses
  %i.p = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.o, i32 noundef 0) #10 ; 0 uses
  %i.q = tail call i32 @SimpleLruZeroPage(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef %i.i) #10 ; 0 uses
  %i.r = load i8, ptr @InRecovery, align 1, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i64 @XLogSimpleInsertInt64(i8 noundef zeroext 18, i8 noundef zeroext 0, i64 noundef %i.i) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @LWLockRelease(ptr noundef %i.o) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  ret void
}

declare i32 @SimpleLruZeroPage(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @XLogSimpleInsertInt64(i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @TruncateCommitTs(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.xl_commit_ts_truncate, align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = udiv i32 %0, 819
  %i.c = zext nneg i32 %i.b to i64
  store i64 %i.c, ptr %i.a, align 8
  %i.d = call zeroext i1 @SlruScanDirectory(ptr noundef nonnull @CommitTsSlruDesc, ptr noundef nonnull @SlruScanDirCbReportPresence, ptr noundef nonnull %i.a) #10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %0, ptr %i.f, align 8
  call void @XLogBeginInsert() #10
  call void @XLogRegisterData(ptr noundef nonnull %1, i32 noundef 12) #10
  %i.g = call i64 @XLogInsert(i8 noundef zeroext 18, i8 noundef zeroext 16) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.h = load i64, ptr %i.a, align 8
  call void @SimpleLruTruncate(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef %i.h) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare zeroext i1 @SlruScanDirectory(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SlruScanDirCbReportPresence(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare void @SimpleLruTruncate(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SetCommitTsLimit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4992
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 0) #10 ; 0 uses
  %i.d = load ptr, ptr @TransamVariables, align 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.f, 2
  %i.h = icmp ugt i32 %0, 2
  %or.cond.i = and i1 %i.h, %i.g
  %i.i = sub i32 %i.f, %0
  %i.j = icmp slt i32 %i.i, 0
  %i.k = icmp ult i32 %i.f, %0
  %.0.i = select i1 %or.cond.i, i1 %i.j, i1 %i.k
  br i1 %.0.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %0, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = icmp ugt i32 %1, 2
  %i.o = icmp ugt i32 %i.m, 2
  %or.cond.i6 = and i1 %i.n, %i.o
  %i.p = sub i32 %1, %i.m
  %i.q = icmp slt i32 %i.p, 0
  %i.r = icmp ult i32 %1, %i.m
  %.0.i7 = select i1 %or.cond.i6, i1 %i.q, i1 %i.r
  br i1 %.0.i7, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i32 %1, ptr %i.l, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i32 %0, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %1, ptr %i.s, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.t = load ptr, ptr @MainLWLockArray, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.u) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AdvanceOldestCommitTsXid(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4992
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 0) #10 ; 0 uses
  %i.d = load ptr, ptr @TransamVariables, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.f, 2
  %i.h = icmp ugt i32 %0, 2
  %or.cond.i = and i1 %i.h, %i.g
  %i.i = sub i32 %i.f, %0
  %i.j = icmp slt i32 %i.i, 0
  %i.k = icmp ult i32 %i.f, %0
  %.0.i = select i1 %or.cond.i, i1 %i.j, i1 %i.k
  br i1 %.0.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %0, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = load ptr, ptr @MainLWLockArray, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.m) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @commit_ts_redo(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, -16                         ; 2 uses
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.b
    i8 16, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %.0.copyload = load i64, ptr %i.g, align 1
  tail call void @SimpleLruZeroAndWritePage(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef %.0.copyload) #10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = load ptr, ptr @MainLWLockArray, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4992
  %i.n = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.m, i32 noundef 0) #10 ; 0 uses
  %i.o = load ptr, ptr @TransamVariables, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8              ; 4 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %AdvanceOldestCommitTsXid.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i32 %i.q, 2
  %i.s = icmp ugt i32 %i.k, 2
  %or.cond.i.i = and i1 %i.s, %i.r
  %i.t = sub i32 %i.q, %i.k
  %i.u = icmp slt i32 %i.t, 0
  %i.v = icmp ult i32 %i.q, %i.k
  %.0.i.i = select i1 %or.cond.i.i, i1 %i.u, i1 %i.v
  br i1 %.0.i.i, label %bb.e, label %AdvanceOldestCommitTsXid.exit

bb.e:                                             ; preds = %bb.d
  store i32 %i.k, ptr %i.p, align 8
  br label %AdvanceOldestCommitTsXid.exit

AdvanceOldestCommitTsXid.exit:                    ; preds = %bb.c, %bb.d, %bb.e
  %i.w = load ptr, ptr @MainLWLockArray, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4992
  tail call void @LWLockRelease(ptr noundef nonnull %i.x) #10
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CommitTsSlruDesc, i64 104), align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load i64, ptr %i.i, align 8             ; 2 uses
  store volatile i64 %i.aa, ptr %i.z, align 8
  tail call void @SimpleLruTruncate(ptr noundef nonnull @CommitTsSlruDesc, i64 noundef %i.aa) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = zext i8 %i.e to i32
  %i.ac = tail call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #11 ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.ab) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1025, ptr noundef nonnull @__func__.commit_ts_redo) #10
  unreachable

bb.g:                                             ; preds = %AdvanceOldestCommitTsXid.exit, %bb.b
  ret void
}

declare void @SimpleLruZeroAndWritePage(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @committssyncfiletag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SlruSyncFileTag(ptr noundef nonnull @CommitTsSlruDesc, ptr noundef %0, ptr noundef %1) #10
  ret i32 %i.a
}

declare i32 @SlruSyncFileTag(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SimpleLruReadPage(ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @RecoveryInProgress() local_unnamed_addr #3

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #3

declare i64 @HeapTupleHeaderGetDatum(ptr noundef) local_unnamed_addr #3

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @SetConfigOption(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @SimpleLruRequestWithOpts(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal zeroext i1 @CommitTsPagePrecedes(i64 noundef %0, i64 noundef %1) #7 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = mul i32 %i.a, 819                        ; 2 uses
  %i.c = add i32 %i.b, 4                          ; 4 uses
  %i.d = trunc i64 %1 to i32
  %i.e = mul i32 %i.d, 819                        ; 3 uses
  %i.f = add i32 %i.e, 4                          ; 2 uses
  %i.g = icmp ugt i32 %i.c, 2                     ; 2 uses
  %i.h = icmp ugt i32 %i.f, 2
  %or.cond.i = and i1 %i.g, %i.h
  %i.i = sub i32 %i.b, %i.e
  %i.j = icmp slt i32 %i.i, 0
  %i.k = icmp ult i32 %i.c, %i.f
  %.0.i = select i1 %or.cond.i, i1 %i.j, i1 %i.k
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.e, 822                        ; 3 uses
  %i.m = icmp ugt i32 %i.l, 2
  %or.cond.i8 = and i1 %i.g, %i.m
  %i.n = sub i32 %i.c, %i.l
  %i.o = icmp slt i32 %i.n, 0
  %i.p = icmp ult i32 %i.c, %i.l
  %.0.i9 = select i1 %or.cond.i8, i1 %i.o, i1 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %.0.i9, %bb.b ]
  ret i1 %i.q
}

; Function Attrs: nounwind uwtable
define internal i32 @commit_ts_errdetail_for_io_error(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.13, i32 noundef %i.a) #10
  ret i32 %i.b
}

declare void @ShmemRequestStructWithOpts(ptr noundef) local_unnamed_addr #3

declare i32 @SimpleLruAutotuneBuffers(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @SimpleLruDoesPhysicalPageExist(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @ReadNextFullTransactionId() local_unnamed_addr #3

declare zeroext i1 @SlruScanDirCbDeleteAll(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare void @XLogBeginInsert() local_unnamed_addr #3

declare void @XLogRegisterData(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @XLogInsert(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
end_hunk_0
