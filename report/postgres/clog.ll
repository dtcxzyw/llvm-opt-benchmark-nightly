inline.NumInlined: 49
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SlruDesc = type { %struct.SlruOpts, ptr, i16 }
%struct.SlruOpts = type { %struct.ShmemStructOpts, ptr, ptr, i32, i32, i32, ptr, i8, ptr, ptr, i32, i32 }
%struct.ShmemStructOpts = type { ptr, i64, i64, ptr }
%struct.xl_clog_truncate = type { i64, i32, i32 }

@CLOGShmemCallbacks = dso_local local_unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @CLOGShmemRequest, ptr @CLOGShmemInit, ptr null, ptr null }, align 8
@XactSlruDesc = internal global %struct.SlruDesc zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"transaction_buffers\00", align 1
@TransamVariables = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"clog_redo: unknown op code %u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clog.c\00", align 1
@__func__.clog_redo = private unnamed_addr constant [10 x i8] c"clog_redo\00", align 1
@MyProc = external local_unnamed_addr global ptr, align 8
@InRecovery = external local_unnamed_addr global i8, align 1
@ProcGlobal = external local_unnamed_addr global ptr, align 8
@MyProcNumber = external local_unnamed_addr global i32, align 4
@my_wait_event_info = external local_unnamed_addr global ptr, align 8
@transaction_buffers = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pg_xact\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Could not access commit status of transaction %u.\00", align 1

; Function Attrs: nounwind uwtable
define internal void @CLOGShmemRequest(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %1 = alloca %struct.SlruOpts, align 8           ; 18 uses
  %i.b = load i32, ptr @transaction_buffers, align 4 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %CLOGShmemBuffers.exit, label %.sink.split

CLOGShmemBuffers.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = tail call i32 @SimpleLruAutotuneBuffers(i32 noundef 512, i32 noundef 1024) #9
  %i.e = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %i.d) #9 ; 0 uses
  call void @SetConfigOption(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1) #9
  %i.f = load i32, ptr @transaction_buffers, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.thread3

.thread3:                                         ; preds = %CLOGShmemBuffers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.sink.split

bb.b:                                             ; preds = %CLOGShmemBuffers.exit
  call void @SetConfigOption(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 10) #9
  %.pr.pr = load i32, ptr @transaction_buffers, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @.str.4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @XactSlruDesc, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = icmp eq i32 %.pr.pr, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @SimpleLruAutotuneBuffers(i32 noundef 512, i32 noundef 1024) #9
  br label %CLOGShmemBuffers.exit2

.sink.split:                                      ; preds = %bb.a, %.thread3
  %.ph6 = phi i32 [ %i.f, %.thread3 ], [ %i.b, %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @.str.4, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @XactSlruDesc, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %i.p = phi ptr [ %i.j, %bb.b ], [ %i.o, %.sink.split ]
  %i.q = phi i32 [ %.pr.pr, %bb.b ], [ %.ph6, %.sink.split ]
  %i.r = call i32 @llvm.smax.i32(i32 %i.q, i32 16)
  %i.s = call i32 @llvm.umin.i32(i32 %i.r, i32 65536)
  br label %CLOGShmemBuffers.exit2

CLOGShmemBuffers.exit2:                           ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.j, %bb.c ], [ %i.p, %bb.d ]
  %.0.i1 = phi i32 [ %i.l, %bb.c ], [ %i.s, %bb.d ]
  store i32 %.0.i1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 1024, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @.str.5, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.y, align 8
  store ptr @CLOGPagePrecedes, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr @clog_errdetail_for_io_error, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 58, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 96, ptr %i.ac, align 4
  call void @SimpleLruRequestWithOpts(ptr noundef nonnull %1) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @CLOGShmemInit(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TransactionIdSetTreeStatus(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 15                          ; 4 uses
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4
  %i.f = lshr i32 %i.e, 15
  %.not = icmp eq i32 %i.f, %i.a
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !4

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %._crit_edge.loopexit ] ; 7 uses
  %i.h = icmp eq i32 %.0.lcssa, %1
  br i1 %i.h, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  tail call fastcc void @TransactionIdSetPageStatus(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %i.b, i1 noundef zeroext true)
  br label %set_status_by_pages.exit

bb.c:                                             ; preds = %._crit_edge
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %.split35, label %.split

.split:                                           ; preds = %bb.c
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %.rhs.trunc.i = zext i16 %i.j to i32
  %i.k = urem i32 %i.a, %.rhs.trunc.i
  %.zext.i = zext nneg i32 %i.k to i64
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.zext.i ; 2 uses
  %i.p = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.o, i32 noundef 0) #9 ; 0 uses
  tail call fastcc void @TransactionIdSetPageStatusInternal(i32 noundef %0, i32 noundef %.0.lcssa, ptr noundef readonly %2, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 131072) %i.b)
  tail call void @LWLockRelease(ptr noundef %i.o) #9
  %i.q = sub i32 %1, %.0.lcssa                    ; 3 uses
  %i.r = sext i32 %.0.lcssa to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = icmp sgt i32 %i.q, 0
  br i1 %i.t, label %.preheader.preheader.i, label %set_status_by_pages.exit

.preheader.preheader.i:                           ; preds = %.split
  %i.u = load i32, ptr %i.s, align 4
  %i.v = lshr i32 %i.u, 15
  %i.w = zext nneg i32 %i.v to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.preheader.i
  %.01826.i = phi i32 [ %.2.i, %bb.f ], [ 0, %.preheader.preheader.i ] ; 4 uses
  %.02125.i = phi i64 [ %.lcssa.i, %bb.f ], [ %i.w, %.preheader.preheader.i ] ; 4 uses
  %i.x = add nsw i32 %.01826.i, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.x) ; 2 uses
  %i.y = sub i32 %smax.i, %.01826.i               ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %.119.i = phi i32 [ %6, %bb.e ], [ %.01826.i, %.preheader.i ] ; 3 uses
  %.0.i = phi i32 [ %i.ad, %bb.e ], [ 0, %.preheader.i ] ; 2 uses
  %5 = sext i32 %.119.i to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.s, i64 %5
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = lshr i32 %i.aa, 15
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %.not.i = icmp eq i64 %.02125.i, %i.ac
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %.0.i, 1                        ; 2 uses
  %6 = add i32 %.119.i, 1
  %exitcond.not.i = icmp eq i32 %i.ad, %i.y
  br i1 %exitcond.not.i, label %bb.f, label %bb.d, !llvm.loop !6

bb.f:                                             ; preds = %bb.e, %bb.d
  %.lcssa.i = phi i64 [ %i.ac, %bb.d ], [ %.02125.i, %bb.e ]
  %.2.i = phi i32 [ %.119.i, %bb.d ], [ %smax.i, %bb.e ] ; 2 uses
  %.1.i = phi i32 [ %.0.i, %bb.d ], [ %i.y, %bb.e ]
  %7 = sext i32 %.01826.i to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %7
  %i.af = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %.lhs.trunc.i.i = trunc nuw nsw i64 %.02125.i to i32
  %.rhs.trunc.i.i = zext i16 %i.af to i32
  %i.ag = urem i32 %.lhs.trunc.i.i, %.rhs.trunc.i.i
  %.zext.i.i = zext nneg i32 %i.ag to i64
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.aj, i64 %.zext.i.i ; 2 uses
  %i.al = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.ak, i32 noundef 0) #9 ; 0 uses
  tail call fastcc void @TransactionIdSetPageStatusInternal(i32 noundef 0, i32 noundef %.1.i, ptr noundef nonnull readonly %i.ae, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 131072) %.02125.i)
  tail call void @LWLockRelease(ptr noundef %i.ak) #9
  %i.am = icmp slt i32 %.2.i, %i.q
  br i1 %i.am, label %.preheader.i, label %set_status_by_pages.exit, !llvm.loop !7

.split35:                                         ; preds = %bb.c
  %i.an = sub i32 %1, %.0.lcssa                   ; 5 uses
  %i.ao = sext i32 %.0.lcssa to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao ; 6 uses
  %i.aq = icmp sgt i32 %i.an, 0                   ; 2 uses
  br i1 %i.aq, label %.preheader.preheader.i38, label %set_status_by_pages.exit53

.preheader.preheader.i38:                         ; preds = %.split35
  %i.ar = load i32, ptr %i.ap, align 4
  %i.as = lshr i32 %i.ar, 15
  %i.at = zext nneg i32 %i.as to i64
  br label %.preheader.i39

.preheader.i39:                                   ; preds = %bb.i, %.preheader.preheader.i38
  %.01826.i40 = phi i32 [ %.2.i47, %bb.i ], [ 0, %.preheader.preheader.i38 ] ; 4 uses
  %.02125.i41 = phi i64 [ %.lcssa.i46, %bb.i ], [ %i.at, %.preheader.preheader.i38 ] ; 4 uses
  %i.au = add nsw i32 %.01826.i40, 1
  %smax.i42 = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.au) ; 2 uses
  %i.av = sub i32 %smax.i42, %.01826.i40          ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i39
  %.119.i43 = phi i32 [ %9, %bb.h ], [ %.01826.i40, %.preheader.i39 ] ; 3 uses
  %.0.i44 = phi i32 [ %i.ba, %bb.h ], [ 0, %.preheader.i39 ] ; 2 uses
  %8 = sext i32 %.119.i43 to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %8
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = lshr i32 %i.ax, 15
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %.not.i45 = icmp eq i64 %.02125.i41, %i.az
  br i1 %.not.i45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = add i32 %.0.i44, 1                      ; 2 uses
  %9 = add i32 %.119.i43, 1
  %exitcond.not.i52 = icmp eq i32 %i.ba, %i.av
  br i1 %exitcond.not.i52, label %bb.i, label %bb.g, !llvm.loop !6

bb.i:                                             ; preds = %bb.h, %bb.g
  %.lcssa.i46 = phi i64 [ %i.az, %bb.g ], [ %.02125.i41, %bb.h ]
  %.2.i47 = phi i32 [ %.119.i43, %bb.g ], [ %smax.i42, %bb.h ] ; 2 uses
  %.1.i48 = phi i32 [ %.0.i44, %bb.g ], [ %i.av, %bb.h ]
  %10 = sext i32 %.01826.i40 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %10
  %i.bc = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %.lhs.trunc.i.i49 = trunc nuw nsw i64 %.02125.i41 to i32
  %.rhs.trunc.i.i50 = zext i16 %i.bc to i32
  %i.bd = urem i32 %.lhs.trunc.i.i49, %.rhs.trunc.i.i50
  %.zext.i.i51 = zext nneg i32 %i.bd to i64
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.bg, i64 %.zext.i.i51 ; 2 uses
  %i.bi = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.bh, i32 noundef 0) #9 ; 0 uses
  tail call fastcc void @TransactionIdSetPageStatusInternal(i32 noundef 0, i32 noundef %.1.i48, ptr noundef nonnull readonly %i.bb, i32 noundef 3, i64 noundef %4, i64 noundef range(i64 0, 131072) %.02125.i41)
  tail call void @LWLockRelease(ptr noundef %i.bh) #9
  %i.bj = icmp slt i32 %.2.i47, %i.an
  br i1 %i.bj, label %.preheader.i39, label %set_status_by_pages.exit53, !llvm.loop !7

set_status_by_pages.exit53:                       ; preds = %bb.i, %.split35
  %i.bk = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %.rhs.trunc.i54 = zext i16 %i.bk to i32
  %i.bl = urem i32 %i.a, %.rhs.trunc.i54
  %.zext.i55 = zext nneg i32 %i.bl to i64
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.bo, i64 %.zext.i55 ; 2 uses
  %i.bq = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.bp, i32 noundef 0) #9 ; 0 uses
  tail call fastcc void @TransactionIdSetPageStatusInternal(i32 noundef %0, i32 noundef %.0.lcssa, ptr noundef readonly %2, i32 noundef 1, i64 noundef %4, i64 noundef range(i64 0, 131072) %i.b)
  tail call void @LWLockRelease(ptr noundef %i.bp) #9
  br i1 %i.aq, label %.preheader.preheader.i56, label %set_status_by_pages.exit

.preheader.preheader.i56:                         ; preds = %set_status_by_pages.exit53
  %i.br = load i32, ptr %i.ap, align 4
  %i.bs = lshr i32 %i.br, 15
  %i.bt = zext nneg i32 %i.bs to i64
  br label %.preheader.i57

.preheader.i57:                                   ; preds = %bb.l, %.preheader.preheader.i56
  %.01826.i58 = phi i32 [ %.2.i65, %bb.l ], [ 0, %.preheader.preheader.i56 ] ; 4 uses
  %.02125.i59 = phi i64 [ %.lcssa.i64, %bb.l ], [ %i.bt, %.preheader.preheader.i56 ] ; 4 uses
  %i.bu = add nsw i32 %.01826.i58, 1
  %smax.i60 = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.bu) ; 2 uses
  %i.bv = sub i32 %smax.i60, %.01826.i58          ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader.i57
  %.119.i61 = phi i32 [ %12, %bb.k ], [ %.01826.i58, %.preheader.i57 ] ; 3 uses
  %.0.i62 = phi i32 [ %i.ca, %bb.k ], [ 0, %.preheader.i57 ] ; 2 uses
  %11 = sext i32 %.119.i61 to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %11
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = lshr i32 %i.bx, 15
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %.not.i63 = icmp eq i64 %.02125.i59, %i.bz
  br i1 %.not.i63, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = add i32 %.0.i62, 1                      ; 2 uses
  %12 = add i32 %.119.i61, 1
  %exitcond.not.i70 = icmp eq i32 %i.ca, %i.bv
  br i1 %exitcond.not.i70, label %bb.l, label %bb.j, !llvm.loop !6

bb.l:                                             ; preds = %bb.k, %bb.j
  %.lcssa.i64 = phi i64 [ %i.bz, %bb.j ], [ %.02125.i59, %bb.k ]
  %.2.i65 = phi i32 [ %.119.i61, %bb.j ], [ %smax.i60, %bb.k ] ; 2 uses
  %.1.i66 = phi i32 [ %.0.i62, %bb.j ], [ %i.bv, %bb.k ]
  %13 = sext i32 %.01826.i58 to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %13
  %i.cc = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %.lhs.trunc.i.i67 = trunc nuw nsw i64 %.02125.i59 to i32
  %.rhs.trunc.i.i68 = zext i16 %i.cc to i32
  %i.cd = urem i32 %.lhs.trunc.i.i67, %.rhs.trunc.i.i68
  %.zext.i.i69 = zext nneg i32 %i.cd to i64
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw [128 x i8], ptr %i.cg, i64 %.zext.i.i69 ; 2 uses
  %i.ci = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.ch, i32 noundef 0) #9 ; 0 uses
  tail call fastcc void @TransactionIdSetPageStatusInternal(i32 noundef 0, i32 noundef %.1.i66, ptr noundef nonnull readonly %i.cb, i32 noundef 1, i64 noundef %4, i64 noundef range(i64 0, 131072) %.02125.i59)
  tail call void @LWLockRelease(ptr noundef %i.ch) #9
  %i.cj = icmp slt i32 %.2.i65, %i.an
  br i1 %i.cj, label %.preheader.i57, label %set_status_by_pages.exit, !llvm.loop !7

set_status_by_pages.exit:                         ; preds = %bb.f, %bb.l, %set_status_by_pages.exit53, %.split, %._crit_edge.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @TransactionIdSetPageStatus(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 131072) %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %.lhs.trunc = trunc nuw nsw i64 %5 to i32
  %.rhs.trunc = zext i16 %i.a to i32
  %i.b = urem i32 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i32 %i.b to i64
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %.zext ; 3 uses
  br i1 %6, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @MyProc, align 8           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %0, %i.i
  %i.k = icmp slt i32 %1, 6
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.m = load i8, ptr %i.l, align 4
  %i.n = zext i8 %i.m to i32
  %i.o = icmp eq i32 %1, %i.n
  br i1 %i.o, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %1, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.r = zext nneg i32 %1 to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %bcmp = tail call i32 @bcmp(ptr %2, ptr nonnull %i.q, i64 %i.s)
  %i.t = icmp eq i32 %bcmp, 0
  br i1 %i.t, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = tail call zeroext i1 @LWLockConditionalAcquire(ptr noundef %i.f, i32 noundef 0) #9
  br i1 %i.u, label %TransactionGroupUpdateXidStatus.exit.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @ProcGlobal, align 8
  %i.w = load ptr, ptr @MyProc, align 8           ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 820 ; 3 uses
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 828
  store i32 %0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 832
  store i32 %3, ptr %i.z, align 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 840 ; 3 uses
  store i64 %5, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 848
  store i64 %4, ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 108 ; 4 uses
  %i.ad = load volatile i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 824 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.072.i = phi i32 [ %i.ad, %bb.g ], [ %i.ao, %bb.j ] ; 4 uses
  %.not.i = icmp eq i32 %.072.i, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr @ProcGlobal, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = zext i32 %.072.i to i64
  %i.ai = getelementptr inbounds nuw [896 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 840
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = load i64, ptr %i.aa, align 8
  %.not61.i = icmp eq i64 %i.ak, %i.al
  br i1 %.not61.i, label %bb.j, label %TransactionGroupUpdateXidStatus.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  store volatile i32 %.072.i, ptr %i.ae, align 8
  %i.am = load i32, ptr @MyProcNumber, align 4
  %i.an = tail call { i32, i8 } asm sideeffect "\09lock\09\09\09\09\0A\09cmpxchgl\09$4,$5\09\0A   setz\09\09$2\09\09\0A", "={ax},=*m,=q,{ax},r,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ac, i32 %.072.i, i32 %i.am, ptr nonnull elementtype(i32) %i.ac) #9, !srcloc !8 ; 2 uses
  %i.ao = extractvalue { i32, i8 } %i.an, 0       ; 2 uses
  %i.ap = extractvalue { i32, i8 } %i.an, 1
  %.not73.i = icmp eq i8 %i.ap, 0
  br i1 %.not73.i, label %bb.h, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not62.i = icmp eq i32 %i.ao, -1
  br i1 %.not62.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr @my_wait_event_info, align 8
  store volatile i32 134217790, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 344 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi i32 [ 0, %bb.l ], [ %i.av, %bb.m ]  ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @PGSemaphoreLock(ptr noundef %i.as) #9
  %i.at = load i8, ptr %i.x, align 4, !range !9, !noundef !10
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = add i32 %.0.i, 1
  br i1 %i.au, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr @my_wait_event_info, align 8
  store volatile i32 0, ptr %i.aw, align 4
  %i.ax = icmp sgt i32 %.0.i, 0
  br i1 %i.ax, label %.lr.ph.i, label %TransactionGroupUpdateXidStatus.exit.thread

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.176.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %.0.i, %bb.n ] ; 2 uses
  %i.ay = add nsw i32 %.176.i, -1
  %i.az = load ptr, ptr %i.ar, align 8
  tail call void @PGSemaphoreUnlock(ptr noundef %i.az) #9
  %i.ba = icmp samesign ugt i32 %.176.i, 1
  br i1 %i.ba, label %.lr.ph.i, label %TransactionGroupUpdateXidStatus.exit.thread, !llvm.loop !11

bb.o:                                             ; preds = %bb.k
  %i.bb = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.bc = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %i.bd = zext i16 %i.bc to i64
  %i.be = srem i64 %i.bb, %i.bd
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.be ; 3 uses
  %i.bj = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.bi, i32 noundef 0) #9 ; 0 uses
  %i.bk = atomicrmw volatile xchg ptr %i.ac, i32 -1 seq_cst, align 4 ; 3 uses
  %.not6377.i = icmp eq i32 %i.bk, -1             ; 2 uses
  br i1 %.not6377.i, label %._crit_edge.i, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %bb.o, %bb.r
  %.05080.i = phi ptr [ %.151.i, %bb.r ], [ %i.bi, %bb.o ] ; 3 uses
  %.05279.i = phi i64 [ %.153.i, %bb.r ], [ %i.bb, %bb.o ] ; 3 uses
  %storemerge78.i = phi i32 [ %i.cl, %bb.r ], [ %i.bk, %bb.o ]
  %i.bl = load ptr, ptr @ProcGlobal, align 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = zext i32 %storemerge78.i to i64
  %i.bo = getelementptr inbounds nuw [896 x i8], ptr %i.bm, i64 %i.bn ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 840 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 5 uses
  %.not67.i = icmp eq i64 %i.bq, %.05279.i
  br i1 %.not67.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph81.i
  %i.br = load i16, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 112), align 8
  %i.bs = zext i16 %i.br to i64
  %i.bt = srem i64 %i.bq, %i.bs
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @XactSlruDesc, i64 104), align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds [128 x i8], ptr %i.bw, i64 %i.bt ; 4 uses
  %.not68.i = icmp eq ptr %.05080.i, %i.bx
  br i1 %.not68.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @LWLockRelease(ptr noundef %.05080.i) #9
  %i.by = tail call zeroext i1 @LWLockAcquire(ptr noundef %i.bx, i32 noundef 0) #9 ; 0 uses
  %.pre.i = load i64, ptr %i.bp, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph81.i
  %i.bz = phi i64 [ %.05279.i, %.lr.ph81.i ], [ %.pre.i, %bb.q ], [ %i.bq, %bb.p ]
  %.153.i = phi i64 [ %.05279.i, %.lr.ph81.i ], [ %i.bq, %bb.q ], [ %i.bq, %bb.p ]
  %.151.i = phi ptr [ %.05080.i, %.lr.ph81.i ], [ %i.bx, %bb.q ], [ %i.bx, %bb.p ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 828
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 832
  %i.ch = load i32, ptr %i.cg, align 64
end_hunk_0
