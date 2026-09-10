Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/lockfuncs?download=true
inline.NumInlined: 86
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LOCKTAG = type { i32, i32, i32, i16, i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"relation\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"frozenid\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"tuple\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"transactionid\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"virtualxid\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"spectoken\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"userlock\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"advisory\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"applytransaction\00", align 1
@LockTagTypeNames = dso_local local_unnamed_addr constant [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"locktype\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"classid\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"objid\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"objsubid\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"virtualtransaction\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"granted\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"fastpath\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"waitstart\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"unknown %d\00", align 1
@PredicateLockTagTypeNames = internal unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.3, ptr @.str.4], align 16
@.str.24 = private unnamed_addr constant [11 x i8] c"SIReadLock\00", align 1
@MaxBackends = external local_unnamed_addr global i32, align 4
@MyDatabaseId = external local_unnamed_addr global i32, align 4
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"%d/%u\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lock_status(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [16 x i64], align 16              ; 34 uses
  %i.f = alloca [16 x i8], align 16               ; 23 uses
  %i.g = alloca [16 x i64], align 16              ; 14 uses
  %i.h = alloca [16 x i8], align 16               ; 9 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @init_MultiFuncCall(ptr noundef nonnull %0) #5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.o, ptr @CurrentMemoryContext, align 8
  %i.q = tail call ptr @CreateTemplateTupleDesc(i32 noundef 16) #5 ; 18 uses
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 1, ptr noundef nonnull @.str.12, i32 noundef 25, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 2, ptr noundef nonnull @.str.13, i32 noundef 26, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 3, ptr noundef nonnull @.str, i32 noundef 26, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 4, ptr noundef nonnull @.str.3, i32 noundef 23, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 5, ptr noundef nonnull @.str.4, i32 noundef 21, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 6, ptr noundef nonnull @.str.6, i32 noundef 25, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 7, ptr noundef nonnull @.str.5, i32 noundef 28, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 8, ptr noundef nonnull @.str.14, i32 noundef 26, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 9, ptr noundef nonnull @.str.15, i32 noundef 26, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 10, ptr noundef nonnull @.str.16, i32 noundef 21, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 11, ptr noundef nonnull @.str.17, i32 noundef 25, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 12, ptr noundef nonnull @.str.18, i32 noundef 23, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 13, ptr noundef nonnull @.str.19, i32 noundef 25, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 14, ptr noundef nonnull @.str.20, i32 noundef 16, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 15, ptr noundef nonnull @.str.21, i32 noundef 16, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescInitEntry(ptr noundef %i.q, i16 noundef signext 16, ptr noundef nonnull @.str.22, i32 noundef 1184, i32 noundef -1, i32 noundef 0) #5
  tail call void @TupleDescFinalize(ptr noundef %i.q) #5
  %i.r = tail call ptr @BlessTupleDesc(ptr noundef %i.q) #5
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.r, ptr %i.s, align 8
  %i.t = tail call ptr @palloc(i64 noundef 32) #5 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.t, ptr %i.u, align 8
  %i.v = tail call ptr @GetLockStatusData() #5
  store ptr %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 0, ptr %i.w, align 8
  %i.x = tail call ptr @GetPredicateLockStatusData() #5
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i32 0, ptr %i.z, align 8
  store ptr %i.p, ptr @CurrentMemoryContext, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = tail call ptr @per_MultiFuncCall(ptr noundef nonnull %0) #5 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load i32, ptr %i.ad, align 8
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.y
  %1 = phi i32 [ %i.af, %.lr.ph ], [ %i.bd, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = sext i32 %1 to i64
  %i.al = getelementptr inbounds [56 x i8], ptr %i.aj, i64 %i.ak ; 25 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8            ; 12 uses
  %.not145 = icmp eq i32 %i.an, 0
  br i1 %.not145, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.ao = and i32 %i.an, 1
  %.not146 = icmp eq i32 %i.ao, 0
  br i1 %.not146, label %.preheader.1, label %bb.e

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ap = and i32 %i.an, 2
  %.not146.1 = icmp eq i32 %i.ap, 0
  br i1 %.not146.1, label %.preheader.2, label %bb.e

.preheader.2:                                     ; preds = %.preheader.1
  %i.aq = and i32 %i.an, 4
  %.not146.2 = icmp eq i32 %i.aq, 0
  br i1 %.not146.2, label %.preheader.3, label %bb.e

.preheader.3:                                     ; preds = %.preheader.2
  %i.ar = and i32 %i.an, 8
  %.not146.3 = icmp eq i32 %i.ar, 0
  br i1 %.not146.3, label %.preheader.4, label %bb.e

.preheader.4:                                     ; preds = %.preheader.3
  %i.as = and i32 %i.an, 16
  %.not146.4 = icmp eq i32 %i.as, 0
  br i1 %.not146.4, label %.preheader.5, label %bb.e

.preheader.5:                                     ; preds = %.preheader.4
  %i.at = and i32 %i.an, 32
  %.not146.5 = icmp eq i32 %i.at, 0
  br i1 %.not146.5, label %.preheader.6, label %bb.e

.preheader.6:                                     ; preds = %.preheader.5
  %i.au = and i32 %i.an, 64
  %.not146.6 = icmp eq i32 %i.au, 0
  br i1 %.not146.6, label %.preheader.7, label %bb.e

.preheader.7:                                     ; preds = %.preheader.6
  %i.av = and i32 %i.an, 128
  %.not146.7 = icmp eq i32 %i.av, 0
  br i1 %.not146.7, label %.preheader.8, label %bb.e

.preheader.8:                                     ; preds = %.preheader.7
  %i.aw = and i32 %i.an, 256
  %.not146.8 = icmp eq i32 %i.aw, 0
  br i1 %.not146.8, label %.preheader.9, label %bb.e

.preheader.9:                                     ; preds = %.preheader.8
  %i.ax = and i32 %i.an, 512
  %.not146.9 = icmp eq i32 %i.ax, 0
  br i1 %.not146.9, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.0133172.lcssa = phi i32 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ], [ 8, %.preheader.8 ], [ 9, %.preheader.9 ]
  %i.ay = phi i32 [ -2, %.preheader.preheader ], [ -3, %.preheader.1 ], [ -5, %.preheader.2 ], [ -9, %.preheader.3 ], [ -17, %.preheader.4 ], [ -33, %.preheader.5 ], [ -65, %.preheader.6 ], [ -129, %.preheader.7 ], [ -257, %.preheader.8 ], [ -513, %.preheader.9 ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = and i32 %i.an, %i.ay
  store i32 %i.ba, ptr %i.az, align 8
  br label %.loopexit215

.loopexit:                                        ; preds = %.preheader.9, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %.not147 = icmp eq i32 %i.bc, 0
  %i.bd = add nsw i32 %1, 1                       ; 3 uses
  store i32 %i.bd, ptr %i.ae, align 8
  br i1 %.not147, label %bb.y, label %.loopexit215

.loopexit215:                                     ; preds = %.loopexit, %bb.e
  %.0136154 = phi i1 [ true, %bb.e ], [ false, %.loopexit ] ; 2 uses
  %.2135 = phi i32 [ %.0133172.lcssa, %bb.e ], [ %i.bc, %.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 14 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2             ; 3 uses
  %i.bg = icmp ult i8 %i.bf, 12
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit215
  %i.bh = zext nneg i8 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @LockTagTypeNames, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %bb.h

bb.g:                                             ; preds = %.loopexit215
  %i.bk = zext i8 %i.bf to i32
  %i.bl = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.d, i64 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %i.bk) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0132 = phi ptr [ %i.bj, %bb.f ], [ %i.d, %bb.g ]
  %i.bm = call ptr @cstring_to_text(ptr noundef %.0132) #5
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %i.e, align 16
  %i.bo = load i8, ptr %i.be, align 2
  %i.bp = load i32, ptr %i.al, align 8            ; 9 uses
  switch i8 %i.bo, label %bb.q [
    i8 0, label %bb.i
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.n
    i8 7, label %bb.o
    i8 11, label %bb.p
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bu, ptr %i.bv, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bw, i8 1, i64 7, i1 false)
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.bx = zext i32 %i.bp to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i64 72340172838076673, ptr %i.bz, align 2
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.ca = zext i32 %i.bp to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ce, ptr %i.cf, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.ck, i8 1, i64 6, i1 false)
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  %i.cl = zext i32 %i.bp to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.cp, ptr %i.cq, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.cw = load i16, ptr %i.cv, align 4
  %i.cx = zext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.cx, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cz, i8 1, i64 5, i1 false)
  br label %bb.r

bb.m:                                             ; preds = %bb.h
  %i.da = zext i32 %i.bp to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.da, ptr %i.db, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 1, ptr %i.dd, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 1, ptr %i.df, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dc, i8 1, i64 5, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.dh = load i32, ptr %i.dg, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.di = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.c, i64 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.bp, i32 noundef %i.dh) #5 ; 0 uses
  %i.dj = call ptr @cstring_to_text(ptr noundef nonnull %i.c) #5
  %i.dk = ptrtoint ptr %i.dj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store i32 16843009, ptr %i.dm, align 1
  store i32 16843009, ptr %i.dn, align 2
  br label %bb.r

bb.o:                                             ; preds = %bb.h
  %i.do = zext i32 %i.bp to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.do, ptr %i.dp, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.ds, ptr %i.dt, align 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 1, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 1, ptr %i.dw, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.du, i8 1, i64 5, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.h
  %i.dx = zext i32 %i.bp to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.dx, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.eb, ptr %i.ec, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.ef, ptr %i.eg, align 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.ei = load i16, ptr %i.eh, align 4
  %i.ej = sext i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 %i.ej, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 1, ptr %i.em, align 1
  store i32 16843009, ptr %i.el, align 2
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.en = zext i32 %i.bp to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.en, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.er, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.ev, ptr %i.ew, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.ey = load i16, ptr %i.ex, align 4
  %i.ez = sext i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 %i.ez, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.fb, i8 1, i64 5, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.ff = load i32, ptr %i.fe, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.fg = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.fd, i32 noundef %i.ff) #5 ; 0 uses
  %i.fh = call ptr @cstring_to_text(ptr noundef nonnull %i.b) #5
  %i.fi = ptrtoint ptr %i.fh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %i.fi, ptr %i.fj, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.fl = load i32, ptr %i.fk, align 8            ; 2 uses
  %.not148 = icmp eq i32 %i.fl, 0
  br i1 %.not148, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %i.fm, ptr %i.fn, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  store i8 1, ptr %i.fo, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fp = getelementptr inbounds nuw i8, ptr %i.al, i64 15
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i16
  %i.fs = call ptr @GetLockmodeName(i16 noundef zeroext %i.fr, i32 noundef %.2135) #5
  %i.ft = call ptr @cstring_to_text(ptr noundef %i.fs) #5
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.fu, ptr %i.fv, align 16
  %i.fw = zext i1 %.0136154 to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %i.fw, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.fz = load i8, ptr %i.fy, align 8, !range !6, !noundef !7
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.ga, ptr %i.gb, align 16
  br i1 %.0136154, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.gd = load i64, ptr %i.gc, align 8            ; 2 uses
  %.not149 = icmp eq i64 %i.gd, 0
  br i1 %.not149, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %i.gd, ptr %i.ge, align 8
  br label %.thread155

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.gf = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  store i8 1, ptr %i.gf, align 1
  br label %.thread155

.thread155:                                       ; preds = %bb.w, %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call ptr @heap_form_tuple(ptr noundef %i.gh, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #5
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %.val150 = load ptr, ptr %i.gj, align 8
  %i.gk = call i64 @HeapTupleHeaderGetDatum(ptr noundef %.val150) #5
  %i.gl = load i64, ptr %i.aa, align 8
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.aa, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  store i32 1, ptr %i.gp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.ak

bb.y:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.gq = load i32, ptr %i.ad, align 8
  %i.gr = icmp slt i32 %i.bd, %i.gq
  br i1 %i.gr, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.c
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8            ; 3 uses
  %i.gw = load i32, ptr %i.gt, align 8
  %i.gx = icmp slt i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %._crit_edge
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = sext i32 %i.gv to i64                   ; 2 uses
  %i.hb = getelementptr inbounds [16 x i8], ptr %i.gz, i64 %i.ha ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = getelementptr inbounds [168 x i8], ptr %i.hd, i64 %i.ha ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hf, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.hg = add nsw i32 %i.gv, 1
  store i32 %i.hg, ptr %i.gu, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %.not = icmp eq i32 %i.hi, 0
  br i1 %.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hk = load i32, ptr %i.hj, align 4
  %.not143 = icmp ne i32 %i.hk, -1
  %i.hl = zext i1 %.not143 to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.hm = phi i32 [ %i.hl, %bb.aa ], [ 2, %bb.z ] ; 3 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @PredicateLockTagTypeNames, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = tail call ptr @cstring_to_text(ptr noundef %i.hp) #5
  %i.hr = ptrtoint ptr %i.hq to i64
  store i64 %i.hr, ptr %i.g, align 16
  %i.hs = load i32, ptr %i.hb, align 4
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ht, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.hx, ptr %i.hy, align 16
  %i.hz = icmp eq i32 %i.hm, 2
  br i1 %i.hz, label %.thread159, label %bb.ac

.thread159:                                       ; preds = %bb.ab
  %i.ia = load i32, ptr %i.hh, align 4
  %i.ib = and i32 %i.ia, 65535
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.ic, ptr %i.id, align 16
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ie = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i8 1, ptr %i.ie, align 4
  %i.if = icmp eq i32 %i.hm, 1
  br i1 %i.if, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread159, %bb.ac
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.ii, ptr %i.ij, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ik = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store i8 1, ptr %i.ik, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.il, i8 1, i64 5, i1 false)
  %i.im = load i32, ptr %i.he, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.io = load i32, ptr %i.in, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ip = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.im, i32 noundef %i.io) #5 ; 0 uses
  %i.iq = call ptr @cstring_to_text(ptr noundef nonnull %i.a) #5
  %i.ir = ptrtoint ptr %i.iq to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.is = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 %i.ir, ptr %i.is, align 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.he, i64 160
  %i.iu = load i32, ptr %i.it, align 8            ; 2 uses
  %.not144 = icmp eq i32 %i.iu, 0
  br i1 %.not144, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 %i.iv, ptr %i.iw, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ix = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  store i8 1, ptr %i.ix, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.iy = call ptr @cstring_to_text(ptr noundef nonnull @.str.24) #5
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %i.iz, ptr %i.ja, align 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 1, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i64 0, ptr %i.jc, align 16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  store i8 1, ptr %i.jd, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = call ptr @heap_form_tuple(ptr noundef %i.jf, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #5
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  %.val = load ptr, ptr %i.jh, align 8
  %i.ji = call i64 @HeapTupleHeaderGetDatum(ptr noundef %.val) #5
  %i.jj = load i64, ptr %i.aa, align 8
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.aa, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store i32 1, ptr %i.jn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  tail call void @end_MultiFuncCall(ptr noundef nonnull %0, ptr noundef %i.aa) #5
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  store i32 2, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.jr, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %.thread155, %bb.ai, %bb.aj
  %.2 = phi i64 [ %i.gk, %.thread155 ], [ 0, %bb.aj ], [ %i.ji, %bb.ai ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @init_MultiFuncCall(ptr noundef) local_unnamed_addr #2

declare ptr @CreateTemplateTupleDesc(i32 noundef) local_unnamed_addr #2

declare void @TupleDescInitEntry(ptr noundef, i16 noundef signext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @TupleDescFinalize(ptr noundef) local_unnamed_addr #2

declare ptr @BlessTupleDesc(ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @GetLockStatusData() local_unnamed_addr #2

declare ptr @GetPredicateLockStatusData() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @per_MultiFuncCall(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #2

declare ptr @GetLockmodeName(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @heap_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @end_MultiFuncCall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_blocking_pids(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
end_hunk_0
