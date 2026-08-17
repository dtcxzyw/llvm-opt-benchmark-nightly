inline.NumInlined: 68
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WordEntryPosVector1 = type { i16, [1 x i16] }
%struct.QueryRepresentation = type { ptr, ptr }

@default_weights = internal constant [4 x float] [float 1.000000e-01, float 2.000000e-01, float 4.000000e-01, float 1.000000e+00], align 16
@.str = private unnamed_addr constant [40 x i8] c"array of weight must be one-dimensional\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tsrank.c\00", align 1
@__func__.getWeights = private unnamed_addr constant [11 x i8] c"getWeights\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"array of weight is too short\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"array of weight must not contain nulls\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"weight out of range\00", align 1
@__func__.calc_rank_cd = private unnamed_addr constant [13 x i8] c"calc_rank_cd\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rank_wttf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc i64 %i.n to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call fastcc void @getWeights(ptr noundef %i.e, ptr noundef %i.a)
  %i.p = call fastcc float @calc_rank(ptr noundef nonnull %i.a, ptr noundef %i.i, ptr noundef %i.l, i32 noundef %i.o)
  %i.q = load i64, ptr %i.b, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %.not = icmp eq ptr %i.e, %i.r
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.e) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = load i64, ptr %i.f, align 8
  %i.t = inttoptr i64 %i.s to ptr
  %.not19 = icmp eq ptr %i.i, %i.t
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.i) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.u = load i64, ptr %i.j, align 8
  %.not20 = icmp eq i64 %i.k, %i.u
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef %i.l) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = bitcast float %i.p to i32
  %i.w = sext i32 %i.v to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @getWeights(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.d = tail call i32 @errcode(i32 noundef 352845954) #10 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 438, ptr noundef nonnull @__func__.getWeights) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call i32 @ArrayGetNItems(i32 noundef 1, ptr noundef nonnull %i.f) #10
  %i.h = icmp slt i32 %i.g, 4
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 352845954) #10 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 443, ptr noundef nonnull @__func__.getWeights) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 @array_contains_nulls(ptr noundef nonnull %0) #10
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.n = tail call i32 @errcode(i32 noundef 67108994) #10 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__func__.getWeights) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = sext i32 %i.q to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %i.a, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = add nsw i64 %i.u, 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi i64 [ %i.r, %bb.h ], [ %i.v, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 4 uses
  %i.y = load float, ptr %i.x, align 4            ; 3 uses
  %i.z = fcmp ult float %i.y, 0.000000e+00
  br i1 %i.z, label %.thread30, label %bb.r

bb.k:                                             ; preds = %.thread30, %bb.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load float, ptr %i.aa, align 4          ; 3 uses
  %i.ac = fcmp ult float %i.ab, 0.000000e+00
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %i.ac, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  store float 2.000000e-01, ptr %i.ad, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.ab, ptr %i.ad, align 4
  %i.ae = fcmp ogt float %i.ab, 1.000000e+00
  br i1 %i.ae, label %bb.s, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = load float, ptr %i.af, align 4          ; 3 uses
  %i.ah = fcmp ult float %i.ag, 0.000000e+00
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.ah, label %.thread28, label %bb.n

.thread28:                                        ; preds = %bb.m
  store float 4.000000e-01, ptr %i.ai, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.ag, ptr %i.ai, align 4
  %i.aj = fcmp ogt float %i.ag, 1.000000e+00
  br i1 %i.aj, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.thread28, %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.al = load float, ptr %i.ak, align 4          ; 3 uses
  %i.am = fcmp ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  br i1 %i.am, label %.thread29, label %bb.p

.thread29:                                        ; preds = %bb.o
  store float 1.000000e+00, ptr %i.an, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  store float %i.al, ptr %i.an, align 4
  %i.ao = fcmp ogt float %i.al, 1.000000e+00
  br i1 %i.ao, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.thread29, %bb.p
  ret void

.thread30:                                        ; preds = %bb.j
  store float 1.000000e-01, ptr %1, align 4
  br label %bb.k

bb.r:                                             ; preds = %bb.j
  store float %i.y, ptr %1, align 4
  %i.ap = fcmp ogt float %i.y, 1.000000e+00
  br i1 %i.ap, label %bb.s, label %bb.k

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.r
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ar = tail call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.as = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 457, ptr noundef nonnull @__func__.getWeights) #10
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc float @calc_rank(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.WordEntryPosVector1, align 2 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not40 = icmp eq i32 %i.g, 0
  br i1 %.not40, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.c, align 4
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.k = load i8, ptr %i.j, align 1
  switch i8 %i.k, label %bb.r [
    i8 2, label %bb.e
    i8 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4
  %i.l = call fastcc ptr @SortAndUniqItems(ptr noundef nonnull %2, ptr noundef %i.b) ; 3 uses
  %i.m = load i32, ptr %i.b, align 4              ; 2 uses
  %i.n = icmp slt i32 %i.m, 2
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef %i.l) #10
  %i.o = tail call fastcc float @calc_rank_or(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %calc_rank_and.exit

bb.g:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.f, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = tail call ptr @palloc0_mul(i64 noundef 8, i64 noundef %i.q) #10 ; 3 uses
  store i16 1, ptr %4, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 16383, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %wide.trip.count130.i = zext nneg i32 %i.m to i64
  br label %bb.h

bb.h:                                             ; preds = %.loopexit86.i, %bb.g
  %indvars.iv127.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next128.i, %.loopexit86.i ] ; 5 uses
  %.074107.i = phi float [ -1.000000e+00, %bb.g ], [ %.7.i, %.loopexit86.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv127.i
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call fastcc ptr @find_wordentry(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.v, ptr noundef %i.a) ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.loopexit86.i, label %.preheader85.i

.preheader85.i:                                   ; preds = %bb.h
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = load i32, ptr %i.a, align 4              ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp sgt i32 %i.y, 0
  br i1 %i.aa, label %.lr.ph102.i, label %.loopexit86.i

.lr.ph102.i:                                      ; preds = %.preheader85.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv127.i ; 3 uses
  %.not136.i = icmp eq i64 %indvars.iv127.i, 0
  br i1 %.not136.i, label %.lr.ph102.split.i, label %.lr.ph102.split.us.i

.lr.ph102.split.us.i:                             ; preds = %.lr.ph102.i, %._crit_edge.us.i
  %.1101.us.i = phi float [ %.us-phi99.us.i, %._crit_edge.us.i ], [ %.074107.i, %.lr.ph102.i ] ; 2 uses
  %.078100.us.i = phi ptr [ %i.aq, %._crit_edge.us.i ], [ %i.w, %.lr.ph102.i ] ; 2 uses
  %i.ac = load i32, ptr %.078100.us.i, align 4    ; 3 uses
  %i.ad = and i32 %i.ac, 1
  %.not82.us.i = icmp eq i32 %i.ad, 0
  br i1 %.not82.us.i, label %.lr.ph.us.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph102.split.us.i
  %i.ae = load i32, ptr %i.d, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.af
  %i.ah = lshr i32 %i.ac, 12
  %i.ai = lshr i32 %i.ac, 1
  %i.aj = and i32 %i.ai, 2047
  %i.ak = add nuw nsw i32 %i.ah, 1
  %narrow.us.i = add nuw nsw i32 %i.ak, %i.aj
  %i.al = and i32 %narrow.us.i, 4194302
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.i, %.lr.ph102.split.us.i
  %storemerge137.i = phi ptr [ %i.an, %bb.i ], [ %4, %.lr.ph102.split.us.i ] ; 3 uses
  store ptr %storemerge137.i, ptr %i.ab, align 8
  %i.ao = load i16, ptr %storemerge137.i, align 2
  %.fr.i = freeze i16 %i.ao                       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge137.i, i64 2
  %.not111.i = icmp eq i16 %.fr.i, 0
  br i1 %.not111.i, label %._crit_edge.us.i, label %.lr.ph.split.us.us.preheader.i

.lr.ph.split.us.us.preheader.i:                   ; preds = %.lr.ph.us.i
  %wide.trip.count120.i = zext i16 %.fr.i to i64
  br label %.lr.ph.split.us.us.i

._crit_edge.us.i:                                 ; preds = %..loopexit_crit_edge.us.us.i, %.lr.ph.us.i
  %.us-phi99.us.i = phi float [ %.1101.us.i, %.lr.ph.us.i ], [ %.6.us.us.i, %..loopexit_crit_edge.us.us.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.078100.us.i, i64 4 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.x
  %i.at = ashr exact i64 %i.as, 2
  %i.au = icmp slt i64 %i.at, %i.z
  br i1 %i.au, label %.lr.ph102.split.us.i, label %.loopexit86.i, !llvm.loop !4

.lr.ph.split.us.us.i:                             ; preds = %..loopexit_crit_edge.us.us.i, %.lr.ph.split.us.us.preheader.i
  %indvars.iv122.i = phi i64 [ 0, %.lr.ph.split.us.us.preheader.i ], [ %indvars.iv.next123.i, %..loopexit_crit_edge.us.us.i ] ; 2 uses
  %.293.us.us.i = phi float [ %.1101.us.i, %.lr.ph.split.us.us.preheader.i ], [ %.6.us.us.i, %..loopexit_crit_edge.us.us.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv122.i ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not83.us.us.i = icmp eq ptr %i.aw, null
  br i1 %.not83.us.us.i, label %..loopexit_crit_edge.us.us.i, label %.preheader.lr.ph.us.us.i

.preheader.lr.ph.us.us.i:                         ; preds = %.lr.ph.split.us.us.i
  %i.ax = load i16, ptr %i.aw, align 2            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.not112.i = icmp eq i16 %i.ax, 0
  br i1 %.not112.i, label %..loopexit_crit_edge.us.us.i, label %.preheader.us.us.us.preheader.i

.preheader.us.us.us.preheader.i:                  ; preds = %.preheader.lr.ph.us.us.i
  %wide.trip.count.i = zext i16 %i.ax to i64
  br label %.preheader.us.us.us.i

..loopexit_crit_edge.us.us.i:                     ; preds = %._crit_edge.us.us.us.i, %.preheader.lr.ph.us.us.i, %.lr.ph.split.us.us.i
  %.6.us.us.i = phi float [ %.293.us.us.i, %.lr.ph.split.us.us.i ], [ %.293.us.us.i, %.preheader.lr.ph.us.us.i ], [ %.5.us.us.us.i, %._crit_edge.us.us.us.i ] ; 2 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %indvars.iv127.i
  br i1 %exitcond126.not.i, label %._crit_edge.us.i, label %.lr.ph.split.us.us.i, !llvm.loop !6

.preheader.us.us.us.i:                            ; preds = %._crit_edge.us.us.us.i, %.preheader.us.us.us.preheader.i
  %indvars.iv117.i = phi i64 [ 0, %.preheader.us.us.us.preheader.i ], [ %indvars.iv.next118.i, %._crit_edge.us.us.us.i ] ; 2 uses
  %.390.us.us.us.i = phi float [ %.293.us.us.i, %.preheader.us.us.us.preheader.i ], [ %.5.us.us.us.i, %._crit_edge.us.us.us.i ]
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv117.i
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.us.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %.preheader.us.us.us.i ] ; 2 uses
  %.488.us.us.us.i = phi float [ %.5.us.us.us.i, %bb.n ], [ %.390.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.ba = load i16, ptr %i.az, align 2            ; 3 uses
  %i.bb = and i16 %i.ba, 16383                    ; 2 uses
  %i.bc = zext nneg i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.be = load i16, ptr %i.bd, align 2            ; 3 uses
  %i.bf = and i16 %i.be, 16383                    ; 2 uses
  %i.bg = zext nneg i16 %i.bf to i32
  %i.bh = sub nsw i32 %i.bc, %i.bg
  %i.bi = call i32 @llvm.abs.i32(i32 %i.bh, i1 true) ; 2 uses
  %.not84.us.us.us.i = icmp eq i16 %i.bb, %i.bf
  br i1 %.not84.us.us.us.i, label %5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = lshr i16 %i.ba, 14
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = lshr i16 %i.be, 14
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = fmul float %i.bm, %i.bq                 ; 2 uses
  %i.bs = icmp samesign ugt i32 %i.bi, 100
  br i1 %i.bs, label %word_distance.exit.us.us.us.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = uitofp nneg i32 %i.bi to double
  %i.bu = fdiv double %i.bt, 1.500000e+00
  %i.bv = fadd double %i.bu, -2.000000e+00
  %i.bw = call double @exp(double noundef %i.bv) #10
  %i.bx = call double @llvm.fmuladd.f64(double %i.bw, double 5.000000e-02, double 1.005000e+00)
  %i.by = fdiv double 1.000000e+00, %i.bx
  %i.bz = fptrunc double %i.by to float
  br label %word_distance.exit.us.us.us.i

5:                                                ; preds = %bb.j
  %6 = load ptr, ptr %i.ab, align 8
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %.thread.us.us.us.i, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %i.av, align 8
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %.thread.us.us.us.i, label %bb.n

.thread.us.us.us.i:                               ; preds = %8, %5
  %11 = lshr i16 %i.ba, 14
  %12 = zext nneg i16 %11 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = lshr i16 %i.be, 14
  %16 = zext nneg i16 %15 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fmul float %14, %18
  br label %word_distance.exit.us.us.us.i

word_distance.exit.us.us.us.i:                    ; preds = %.thread.us.us.us.i, %bb.l, %bb.k
  %20 = phi float [ %i.br, %bb.l ], [ %i.br, %bb.k ], [ %19, %.thread.us.us.us.i ]
  %.0.i.us.us.us.i = phi float [ %i.bz, %bb.l ], [ 1.000000e-30, %bb.k ], [ 1.000000e-30, %.thread.us.us.us.i ]
  %i.ca = fmul float %20, %.0.i.us.us.us.i
  %sqrtf.us.us.us.i = call float @sqrtf(float noundef %i.ca) #10 ; 2 uses
  %i.cb = fcmp olt float %.488.us.us.us.i, 0.000000e+00
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %word_distance.exit.us.us.us.i
  %i.cc = fpext float %.488.us.us.us.i to double
  %i.cd = fsub double 1.000000e+00, %i.cc
  %i.ce = fpext float %sqrtf.us.us.us.i to double
  %i.cf = fsub double 1.000000e+00, %i.ce
  %i.cg = fneg double %i.cd
  %i.ch = call double @llvm.fmuladd.f64(double %i.cg, double %i.cf, double 1.000000e+00)
  %i.ci = fptrunc double %i.ch to float
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %word_distance.exit.us.us.us.i, %8
  %.5.us.us.us.i = phi float [ %.488.us.us.us.i, %8 ], [ %i.ci, %bb.m ], [ %sqrtf.us.us.us.i, %word_distance.exit.us.us.us.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.us.i, label %bb.j, !llvm.loop !7

._crit_edge.us.us.us.i:                           ; preds = %bb.n
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %exitcond121.not.i = icmp eq i64 %indvars.iv.next118.i, %wide.trip.count120.i
  br i1 %exitcond121.not.i, label %..loopexit_crit_edge.us.us.i, label %.preheader.us.us.us.i, !llvm.loop !8

.lr.ph102.split.i:                                ; preds = %.lr.ph102.i, %bb.p
  %.078100.i = phi ptr [ %i.cv, %bb.p ], [ %i.w, %.lr.ph102.i ] ; 2 uses
  %i.cj = load i32, ptr %.078100.i, align 4       ; 3 uses
  %i.ck = and i32 %i.cj, 1
  %.not82.i = icmp eq i32 %i.ck, 0
  br i1 %.not82.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph102.split.i
  %i.cl = load i32, ptr %i.d, align 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cm
  %i.co = lshr i32 %i.cj, 12
  %i.cp = lshr i32 %i.cj, 1
  %i.cq = and i32 %i.cp, 2047
  %i.cr = add nuw nsw i32 %i.co, 1
  %narrow.i = add nuw nsw i32 %i.cr, %i.cq
  %i.cs = and i32 %narrow.i, 4194302
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ct
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph102.split.i
  %storemerge.i = phi ptr [ %i.cu, %bb.o ], [ %4, %.lr.ph102.split.i ]
  store ptr %storemerge.i, ptr %i.ab, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.078100.i, i64 4 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.x
  %i.cy = ashr exact i64 %i.cx, 2
  %i.cz = icmp slt i64 %i.cy, %i.z
  br i1 %i.cz, label %.lr.ph102.split.i, label %.loopexit86.i, !llvm.loop !4

.loopexit86.i:                                    ; preds = %._crit_edge.us.i, %bb.p, %.preheader85.i, %bb.h
  %.7.i = phi float [ %.074107.i, %bb.h ], [ %.074107.i, %.preheader85.i ], [ %.074107.i, %bb.p ], [ %.us-phi99.us.i, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %bb.q, label %bb.h, !llvm.loop !9

bb.q:                                             ; preds = %.loopexit86.i
  call void @pfree(ptr noundef %i.r) #10
  call void @pfree(ptr noundef %i.l) #10
  br label %calc_rank_and.exit

calc_rank_and.exit:                               ; preds = %bb.f, %bb.q
  %.0.i = phi float [ %i.o, %bb.f ], [ %.7.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.s

bb.r:                                             ; preds = %bb.d, %bb.c
  %i.da = tail call fastcc float @calc_rank_or(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %calc_rank_and.exit
  %i.db = phi float [ %.0.i, %calc_rank_and.exit ], [ %i.da, %bb.r ] ; 2 uses
  %i.dc = fcmp olt float %i.db, 0.000000e+00
  %.034 = select i1 %i.dc, float f0x1E3CE508, float %i.db ; 3 uses
  %i.dd = and i32 %3, 1
  %.not41 = icmp eq i32 %i.dd, 0
  br i1 %.not41, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load i32, ptr %i.d, align 4             ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dh = zext nneg i32 %i.de to i64
  %.idx.i = shl nuw nsw i64 %i.dh, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.thread.i
  %.020.i = phi ptr [ %i.du, %.thread.i ], [ %i.dg, %bb.u ] ; 2 uses
  %.01519.i = phi i32 [ %i.dt, %.thread.i ], [ 0, %bb.u ]
  %i.dj = load i32, ptr %.020.i, align 4          ; 3 uses
  %i.dk = and i32 %i.dj, 1
  %.not.i46 = icmp eq i32 %i.dk, 0
  br i1 %.not.i46, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.dl = lshr i32 %i.dj, 12
  %i.dm = lshr i32 %i.dj, 1
  %i.dn = and i32 %i.dm, 2047
  %i.do = add nuw nsw i32 %i.dl, 1
  %narrow.i47 = add nuw nsw i32 %i.do, %i.dn
  %i.dp = and i32 %narrow.i47, 4194302
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 1
  %.fr.i48 = freeze i16 %i.ds
  %narrow18.i = call i16 @llvm.umax.i16(i16 %.fr.i48, i16 1)
  %spec.select.v.i = zext i16 %narrow18.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.v, %.lr.ph.i
  %spec.select.v.pn.i = phi i32 [ %spec.select.v.i, %bb.v ], [ 1, %.lr.ph.i ]
  %i.dt = add i32 %spec.select.v.pn.i, %.01519.i  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.020.i, i64 4 ; 2 uses
  %i.dv = icmp ult ptr %i.du, %i.di
  br i1 %i.dv, label %.lr.ph.i, label %cnt_length.exit, !llvm.loop !10

cnt_length.exit:                                  ; preds = %.thread.i
  %i.dw = add i32 %i.dt, 1
  %i.dx = sitofp i32 %i.dw to double
  %i.dy = call double @log(double noundef %i.dx) #10
  %i.dz = fdiv double %i.dy, f0x3FE62E42FEFA39EF
  %i.ea = fpext float %.034 to double
  %i.eb = fdiv double %i.ea, %i.dz
  %i.ec = fptrunc double %i.eb to float
  br label %bb.w

bb.w:                                             ; preds = %cnt_length.exit, %bb.t, %bb.s
  %.1 = phi float [ %i.ec, %cnt_length.exit ], [ %.034, %bb.t ], [ %.034, %bb.s ] ; 4 uses
  %i.ed = and i32 %3, 2
  %.not42 = icmp eq i32 %i.ed, 0
  br i1 %.not42, label %cnt_length.exit61.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.d, align 4             ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %.idx.i49 = shl nsw i64 %i.eg, 2
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %.idx.i49 ; 2 uses
  %i.ei = icmp sgt i32 %i.ef, 0
  br i1 %i.ei, label %.lr.ph.i51, label %cnt_length.exit61.thread

.lr.ph.i51:                                       ; preds = %bb.x, %.thread.i59
  %.020.i52 = phi ptr [ %i.eu, %.thread.i59 ], [ %i.ee, %bb.x ] ; 2 uses
  %.01519.i53 = phi i32 [ %i.et, %.thread.i59 ], [ 0, %bb.x ]
  %i.ej = load i32, ptr %.020.i52, align 4        ; 3 uses
  %i.ek = and i32 %i.ej, 1
  %.not.i54 = icmp eq i32 %i.ek, 0
  br i1 %.not.i54, label %.thread.i59, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i51
  %i.el = lshr i32 %i.ej, 12
  %i.em = lshr i32 %i.ej, 1
  %i.en = and i32 %i.em, 2047
  %i.eo = add nuw nsw i32 %i.el, 1
  %narrow.i55 = add nuw nsw i32 %i.eo, %i.en
  %i.ep = and i32 %narrow.i55, 4194302
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 1
  %.fr.i56 = freeze i16 %i.es
  %narrow18.i57 = call i16 @llvm.umax.i16(i16 %.fr.i56, i16 1)
  %spec.select.v.i58 = zext i16 %narrow18.i57 to i32
  br label %.thread.i59

.thread.i59:                                      ; preds = %bb.y, %.lr.ph.i51
  %spec.select.v.pn.i60 = phi i32 [ %spec.select.v.i58, %bb.y ], [ 1, %.lr.ph.i51 ]
  %i.et = add i32 %spec.select.v.pn.i60, %.01519.i53 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.020.i52, i64 4 ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.eh
  br i1 %i.ev, label %.lr.ph.i51, label %cnt_length.exit61, !llvm.loop !10

cnt_length.exit61:                                ; preds = %.thread.i59
  %i.ew = icmp sgt i32 %i.et, 0
  br i1 %i.ew, label %bb.z, label %cnt_length.exit61.thread

bb.z:                                             ; preds = %cnt_length.exit61
  %i.ex = uitofp nneg i32 %i.et to float
  %i.ey = fdiv float %.1, %i.ex
  br label %cnt_length.exit61.thread

cnt_length.exit61.thread:                         ; preds = %bb.x, %cnt_length.exit61, %bb.z, %bb.w
  %.2 = phi float [ %i.ey, %bb.z ], [ %.1, %cnt_length.exit61 ], [ %.1, %bb.w ], [ %.1, %bb.x ] ; 3 uses
  %i.ez = and i32 %3, 8
  %.not43 = icmp eq i32 %i.ez, 0
  br i1 %.not43, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %cnt_length.exit61.thread
  %i.fa = load i32, ptr %i.d, align 4             ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = uitofp nneg i32 %i.fa to float
  %i.fd = fdiv float %.2, %i.fc
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %cnt_length.exit61.thread
  %.3 = phi float [ %i.fd, %bb.ab ], [ %.2, %bb.aa ], [ %.2, %cnt_length.exit61.thread ] ; 3 uses
  %i.fe = and i32 %3, 16
  %.not44 = icmp eq i32 %i.fe, 0
  br i1 %.not44, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load i32, ptr %i.d, align 4             ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fh = add nuw i32 %i.ff, 1
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = call double @log(double noundef %i.fi) #10
  %i.fk = fdiv double %i.fj, f0x3FE62E42FEFA39EF
  %i.fl = fpext float %.3 to double
  %i.fm = fdiv double %i.fl, %i.fk
  %i.fn = fptrunc double %i.fm to float
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.4 = phi float [ %i.fn, %bb.ae ], [ %.3, %bb.ad ], [ %.3, %bb.ac ] ; 3 uses
  %i.fo = and i32 %3, 32
  %.not45 = icmp eq i32 %i.fo, 0
  %i.fp = fadd float %.4, 1.000000e+00
  %i.fq = fdiv float %.4, %i.fp
  %.5 = select i1 %.not45, float %.4, float %i.fq
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.b, %bb.af
  %.0 = phi float [ %.5, %bb.af ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rank_wtt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call fastcc void @getWeights(ptr noundef %i.e, ptr noundef %i.a)
  %i.m = call fastcc float @calc_rank(ptr noundef nonnull %i.a, ptr noundef %i.i, ptr noundef %i.l, i32 noundef 0)
  %i.n = load i64, ptr %i.b, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %.not = icmp eq ptr %i.e, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.e) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = load i64, ptr %i.f, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %.not18 = icmp eq ptr %i.i, %i.q
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.i) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = load i64, ptr %i.j, align 8
  %.not19 = icmp eq i64 %i.k, %i.r
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef %i.l) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = bitcast float %i.m to i32
  %i.t = sext i32 %i.s to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.t
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rank_ttf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call fastcc float @calc_rank(ptr noundef nonnull @default_weights, ptr noundef %i.d, ptr noundef %i.g, i32 noundef %i.j)
  %i.l = load i64, ptr %i.a, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %.not = icmp eq ptr %i.d, %i.m
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = load i64, ptr %i.e, align 8
  %.not13 = icmp eq i64 %i.f, %i.n
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.g) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = bitcast float %i.k to i32
  %i.p = sext i32 %i.o to i64
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rank_tt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = tail call fastcc float @calc_rank(ptr noundef nonnull @default_weights, ptr noundef %i.d, ptr noundef %i.g, i32 noundef 0)
  %i.i = load i64, ptr %i.a, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %.not = icmp eq ptr %i.d, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.e, align 8
  %.not12 = icmp eq i64 %i.f, %i.k
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.g) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = bitcast float %i.h to i32
  %i.m = sext i32 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rankcd_wttf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc i64 %i.n to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call fastcc void @getWeights(ptr noundef %i.e, ptr noundef %i.a)
  %i.p = call fastcc float @calc_rank_cd(ptr noundef nonnull %i.a, ptr noundef %i.i, ptr noundef %i.l, i32 noundef %i.o)
  %i.q = load i64, ptr %i.b, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %.not = icmp eq ptr %i.e, %i.r
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.e) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = load i64, ptr %i.f, align 8
  %i.t = inttoptr i64 %i.s to ptr
  %.not19 = icmp eq ptr %i.i, %i.t
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.i) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.u = load i64, ptr %i.j, align 8
  %.not20 = icmp eq i64 %i.k, %i.u
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef %i.l) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = bitcast float %i.p to i32
  %i.w = sext i32 %i.v to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define internal fastcc float @calc_rank_cd(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [4 x double], align 16            ; 10 uses
  %4 = alloca %struct.QueryRepresentation, align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.c = load float, ptr %0, align 4              ; 3 uses
  %i.d = fcmp ult float %i.c, 0.000000e+00
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fpext float %i.c to double
  %i.f = fcmp ogt float %i.c, 1.000000e+00
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.h = tail call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 899, ptr noundef nonnull @__func__.calc_rank_cd) #10
  unreachable

.thread:                                          ; preds = %bb.a, %bb.b
  %i.j = phi double [ %i.e, %bb.b ], [ f0x3FB99999A0000000, %bb.a ]
  %i.k = fdiv double 1.000000e+00, %i.j
  store double %i.k, ptr %i.b, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4            ; 3 uses
  %i.n = fcmp ult float %i.m, 0.000000e+00
  br i1 %i.n, label %.thread222, label %bb.d

.thread222:                                       ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %i.p = fpext float %i.m to double               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store double %i.p, ptr %i.q, align 8
  %i.r = fcmp ogt float %i.m, 1.000000e+00
  br i1 %i.r, label %bb.c, label %bb.e

bb.e:                                             ; preds = %.thread222, %bb.d
  %i.s = phi ptr [ %i.o, %.thread222 ], [ %i.q, %bb.d ]
  %i.t = phi double [ f0x3FC99999A0000000, %.thread222 ], [ %i.p, %bb.d ]
  %i.u = fdiv double 1.000000e+00, %i.t
  store double %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load float, ptr %i.v, align 4            ; 3 uses
  %i.x = fcmp ult float %i.w, 0.000000e+00
  br i1 %i.x, label %.thread223, label %bb.f

.thread223:                                       ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = fpext float %i.w to double               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store double %i.z, ptr %i.aa, align 16
  %i.ab = fcmp ogt float %i.w, 1.000000e+00
  br i1 %i.ab, label %bb.c, label %bb.g

bb.g:                                             ; preds = %.thread223, %bb.f
  %i.ac = phi ptr [ %i.y, %.thread223 ], [ %i.aa, %bb.f ]
  %i.ad = phi double [ f0x3FD99999A0000000, %.thread223 ], [ %i.z, %bb.f ]
  %i.ae = fdiv double 1.000000e+00, %i.ad
  store double %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load float, ptr %i.af, align 4          ; 3 uses
  %i.ah = fcmp ult float %i.ag, 0.000000e+00
  br i1 %i.ah, label %.thread224, label %bb.h

.thread224:                                       ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = fpext float %i.ag to double
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = fcmp ogt float %i.ag, 1.000000e+00
  br i1 %i.al, label %bb.c, label %bb.i

bb.i:                                             ; preds = %.thread224, %bb.h
  %i.am = phi ptr [ %i.ai, %.thread224 ], [ %i.ak, %bb.h ]
  %i.an = phi double [ 1.000000e+00, %.thread224 ], [ %i.aj, %bb.h ]
  %i.ao = fdiv double 1.000000e+00, %i.an
  store double %i.ao, ptr %i.am, align 8
  store ptr %2, ptr %4, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = tail call ptr @palloc0_mul(i64 noundef 32776, i64 noundef %i.ar) #10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.av = load i32, ptr %i.ap, align 4
  %i.aw = shl i32 %i.av, 2                        ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call ptr @palloc_mul(i64 noundef 24, i64 noundef %i.ax) #10 ; 2 uses
  %i.az = load i32, ptr %i.ap, align 4
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph145.i, label %get_docrep.exit.thread

.lr.ph145.i:                                      ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %.lr.ph145.i
  %indvars.iv175.i = phi i64 [ 0, %.lr.ph145.i ], [ %indvars.iv.next176.i, %.loopexit.i ] ; 2 uses
  %i.bd = phi ptr [ %2, %.lr.ph145.i ], [ %i.dl, %.loopexit.i ]
  %.094143.i = phi ptr [ %i.ay, %.lr.ph145.i ], [ %.3.i, %.loopexit.i ] ; 4 uses
  %.096142.i = phi i32 [ 0, %.lr.ph145.i ], [ %.4.i, %.loopexit.i ] ; 4 uses
  %.0100141.i = phi i32 [ %i.aw, %.lr.ph145.i ], [ %.3103.i, %.loopexit.i ] ; 4 uses
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %indvars.iv175.i ; 4 uses
  %i.bf = load i8, ptr %i.be, align 4
  %.not.i = icmp eq i8 %i.bf, 1
  br i1 %.not.i, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  %i.bg = call fastcc ptr @find_wordentry(ptr noundef %1, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, ptr noundef %i.a) ; 3 uses
  %.not109.i = icmp eq ptr %i.bg, null
  br i1 %.not109.i, label %.loopexit.i, label %.preheader114.i

.preheader114.i:                                  ; preds = %bb.k
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.lr.ph.i, label %.loopexit.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader114.i
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %i.bm = phi i32 [ %i.bi, %.lr.ph.lr.ph.i ], [ %i.de, %.outer.i ]
  %i.bn = phi i64 [ %i.bk, %.lr.ph.lr.ph.i ], [ %i.dg, %.outer.i ]
  %.195.ph136.i = phi ptr [ %.094143.i, %.lr.ph.lr.ph.i ], [ %.2.lcssa.i, %.outer.i ] ; 3 uses
  %.197.ph135.i = phi i32 [ %.096142.i, %.lr.ph.lr.ph.i ], [ %.298.lcssa.i, %.outer.i ] ; 4 uses
  %.1101.ph134.i = phi i32 [ %.0100141.i, %.lr.ph.lr.ph.i ], [ %.2102.lcssa.i, %.outer.i ] ; 4 uses
  %.0106.ph133.i = phi ptr [ %i.bg, %.lr.ph.lr.ph.i ], [ %i.df, %.outer.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %.0106117.i = phi ptr [ %.0106.ph133.i, %.lr.ph.i ], [ %i.cg, %bb.n ] ; 4 uses
  %i.bo = load i32, ptr %.0106117.i, align 4      ; 3 uses
  %i.bp = and i32 %i.bo, 1
  %.not110.i = icmp eq i32 %i.bp, 0
  br i1 %.not110.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.bc, align 4
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.br
  %i.bt = lshr i32 %i.bo, 12
  %i.bu = lshr i32 %i.bo, 1
  %i.bv = and i32 %i.bu, 2047
  %i.bw = add nuw nsw i32 %i.bt, 1
  %narrow.i = add nuw nsw i32 %i.bw, %i.bv
  %i.bx = and i32 %narrow.i, 4194302
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 1            ; 3 uses
  %i.cb = zext i16 %i.ca to i32
  %i.cc = getelementptr [4 x i8], ptr %1, i64 %i.br
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.by
  %i.ce = getelementptr i8, ptr %i.cd, i64 10     ; 2 uses
  %i.cf = add i32 %.197.ph135.i, %i.cb            ; 2 uses
  %.not112123.i = icmp slt i32 %i.cf, %.1101.ph134.i
  br i1 %.not112123.i, label %.preheader.i, label %.lr.ph126.i

bb.n:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.0106117.i, i64 4 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bh
  %i.cj = ashr exact i64 %i.ci, 2
  %i.ck = icmp slt i64 %i.cj, %i.bn
  br i1 %i.ck, label %bb.l, label %.loopexit.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph126.i, %bb.m
  %.2102.lcssa.i = phi i32 [ %.1101.ph134.i, %bb.m ], [ %i.cl, %.lr.ph126.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.195.ph136.i, %bb.m ], [ %i.co, %.lr.ph126.i ] ; 3 uses
  %.not164.i = icmp eq i16 %i.ca, 0
  br i1 %.not164.i, label %.outer.i, label %.lr.ph131.preheader.i

.lr.ph131.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count.i = zext i16 %i.ca to i64
  br label %.lr.ph131.i

.lr.ph126.i:                                      ; preds = %bb.m, %.lr.ph126.i
  %.2125.i = phi ptr [ %i.co, %.lr.ph126.i ], [ %.195.ph136.i, %bb.m ]
  %.2102124.i = phi i32 [ %i.cl, %.lr.ph126.i ], [ %.1101.ph134.i, %bb.m ]
  %i.cl = shl i32 %.2102124.i, 1                  ; 4 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.cm, 24
  %i.co = tail call ptr @repalloc(ptr noundef %.2125.i, i64 noundef %i.cn) #10 ; 2 uses
  %.not112.i = icmp slt i32 %i.cf, %i.cl
  br i1 %.not112.i, label %.preheader.i, label %.lr.ph126.i, !llvm.loop !12

.lr.ph131.i:                                      ; preds = %bb.q, %.lr.ph131.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph131.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %.298130.i = phi i32 [ %.197.ph135.i, %.lr.ph131.preheader.i ], [ %.399.i, %bb.q ] ; 3 uses
  %i.cp = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %.lr.ph131._crit_edge.i, label %bb.o

.lr.ph131._crit_edge.i:                           ; preds = %.lr.ph131.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph131.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.ct = load i16, ptr %i.cs, align 2            ; 2 uses
  %i.cu = lshr i16 %i.ct, 14
  %i.cv = zext nneg i16 %i.cu to i32
  %i.cw = shl nuw nsw i32 1, %i.cv
  %i.cx = and i32 %i.cw, %i.cr
  %.not113.i = icmp eq i32 %i.cx, 0
  br i1 %.not113.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph131._crit_edge.i
  %i.cy = phi i16 [ %.pre.i, %.lr.ph131._crit_edge.i ], [ %i.ct, %bb.o ]
  %i.cz = sext i32 %.298130.i to i64
  %i.da = getelementptr inbounds [24 x i8], ptr %.2.lcssa.i, i64 %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i16 %i.cy, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %.0106117.i, ptr %i.dc, align 8
  store ptr %i.be, ptr %i.da, align 8
  %i.dd = add i32 %.298130.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.399.i = phi i32 [ %i.dd, %bb.p ], [ %.298130.i, %bb.o ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.outer.loopexit.i, label %.lr.ph131.i, !llvm.loop !13

.outer.loopexit.i:                                ; preds = %bb.q
  %.pre178.i = load i32, ptr %i.a, align 4
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.loopexit.i, %.preheader.i
  %i.de = phi i32 [ %i.bm, %.preheader.i ], [ %.pre178.i, %.outer.loopexit.i ] ; 2 uses
  %.298.lcssa.i = phi i32 [ %.197.ph135.i, %.preheader.i ], [ %.399.i, %.outer.loopexit.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0106117.i, i64 4 ; 2 uses
  %i.dg = sext i32 %i.de to i64                   ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dh, %i.bh
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = icmp slt i64 %i.dj, %i.dg
  br i1 %i.dk, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !11

.loopexit.i:                                      ; preds = %.outer.i, %bb.n, %.preheader114.i, %bb.k, %bb.j
  %.3103.i = phi i32 [ %.0100141.i, %bb.j ], [ %.0100141.i, %bb.k ], [ %.1101.ph134.i, %bb.n ], [ %.0100141.i, %.preheader114.i ], [ %.2102.lcssa.i, %.outer.i ]
  %.4.i = phi i32 [ %.096142.i, %bb.j ], [ %.096142.i, %bb.k ], [ %.197.ph135.i, %bb.n ], [ %.096142.i, %.preheader114.i ], [ %.298.lcssa.i, %.outer.i ] ; 4 uses
  %.3.i = phi ptr [ %.094143.i, %bb.j ], [ %.094143.i, %bb.k ], [ %.195.ph136.i, %bb.n ], [ %.094143.i, %.preheader114.i ], [ %.2.lcssa.i, %.outer.i ] ; 13 uses
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %i.dl = load ptr, ptr %4, align 8               ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next176.i, %i.do
  br i1 %i.dp, label %bb.j, label %._crit_edge146.i, !llvm.loop !14

._crit_edge146.i:                                 ; preds = %.loopexit.i
  %i.dq = icmp sgt i32 %.4.i, 0
  br i1 %i.dq, label %bb.r, label %._crit_edge146.i.get_docrep.exit.thread_crit_edge

._crit_edge146.i.get_docrep.exit.thread_crit_edge: ; preds = %._crit_edge146.i
  %.pre = load ptr, ptr %i.at, align 8
  br label %get_docrep.exit.thread

bb.r:                                             ; preds = %._crit_edge146.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.ds = zext nneg i32 %.4.i to i64              ; 2 uses
  tail call void @pg_qsort(ptr noundef %.3.i, i64 noundef %i.ds, i64 noundef 24, ptr noundef nonnull @compareDocR) #10
  %i.dt = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.du = load i16, ptr %i.dt, align 8            ; 2 uses
  %i.dv = load i32, ptr %i.dr, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.dw) #10 ; 3 uses
  %i.dy = load ptr, ptr %.3.i, align 8
  store ptr %i.dy, ptr %i.dx, align 8
  %i.dz = ptrtoint ptr %.3.i to i64               ; 4 uses
  %.not165.i = icmp eq i32 %.4.i, 1
  br i1 %.not165.i, label %get_docrep.exit, label %.lr.ph157.preheader.i

.lr.ph157.preheader.i:                            ; preds = %bb.r
  %.092149.i = getelementptr inbounds nuw i8, ptr %.3.i, i64 24
  br label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.v, %.lr.ph157.preheader.i
  %.092155.i = phi ptr [ %.092.i, %bb.v ], [ %.092149.i, %.lr.ph157.preheader.i ] ; 4 uses
  %.sroa.0.0154.i = phi ptr [ %.sroa.0.1.i, %bb.v ], [ %i.dx, %.lr.ph157.preheader.i ] ; 3 uses
  %.sroa.9.0153.i = phi i16 [ %.sroa.9.1.i, %bb.v ], [ 1, %.lr.ph157.preheader.i ] ; 3 uses
  %.sroa.148.0152.i = phi i16 [ %.sroa.148.1.i, %bb.v ], [ %i.du, %.lr.ph157.preheader.i ] ; 2 uses
  %.0151.i = phi ptr [ %.1.i, %bb.v ], [ %.3.i, %.lr.ph157.preheader.i ] ; 5 uses
  %.094.pn150.i = phi ptr [ %.092155.i, %bb.v ], [ %.3.i, %.lr.ph157.preheader.i ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.094.pn150.i, i64 40 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.094.pn150.i, i64 16
  %i.ed = load i16, ptr %i.ec, align 8
  %i.ee = icmp eq i16 %i.eb, %i.ed
  br i1 %i.ee, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph157.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.094.pn150.i, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.094.pn150.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = icmp eq ptr %i.eg, %i.ei
  br i1 %i.ej, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ek = load ptr, ptr %.092155.i, align 8
  %i.el = sext i16 %.sroa.9.0153.i to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %.sroa.0.0154.i, i64 %i.el
  store ptr %i.ek, ptr %i.em, align 8
  %i.en = add i16 %.sroa.9.0153.i, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.lr.ph157.i
  store ptr %.sroa.0.0154.i, ptr %.0151.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0151.i, i64 8
  store i16 %.sroa.9.0153.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0151.i, i64 16
  store i16 %.sroa.148.0152.i, ptr %.sroa.148.0..sroa_idx.i, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.0151.i, i64 24
  %i.ep = load i16, ptr %i.ea, align 8
  %i.eq = load ptr, ptr %4, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4
  %i.et = sext i32 %i.es to i64
  %i.eu = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.et) #10 ; 2 uses
  %i.ev = load ptr, ptr %.092155.i, align 8
  store ptr %i.ev, ptr %i.eu, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i = phi ptr [ %.0151.i, %bb.t ], [ %i.eo, %bb.u ] ; 2 uses
  %.sroa.148.1.i = phi i16 [ %.sroa.148.0152.i, %bb.t ], [ %i.ep, %bb.u ] ; 2 uses
  %.sroa.9.1.i = phi i16 [ %i.en, %bb.t ], [ 1, %bb.u ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0154.i, %bb.t ], [ %i.eu, %bb.u ] ; 2 uses
  %.092.i = getelementptr inbounds nuw i8, ptr %.092155.i, i64 24 ; 2 uses
  %i.ew = ptrtoint ptr %.092.i to i64
  %i.ex = sub i64 %i.ew, %i.dz
  %i.ey = sdiv exact i64 %i.ex, 24
  %i.ez = icmp slt i64 %i.ey, %i.ds
  br i1 %i.ez, label %.lr.ph157.i, label %get_docrep.exit, !llvm.loop !15

get_docrep.exit.thread:                           ; preds = %._crit_edge146.i.get_docrep.exit.thread_crit_edge, %bb.i
  %i.fa = phi ptr [ %.pre, %._crit_edge146.i.get_docrep.exit.thread_crit_edge ], [ %i.as, %bb.i ]
  %.094.lcssa186.i = phi ptr [ %.3.i, %._crit_edge146.i.get_docrep.exit.thread_crit_edge ], [ %i.ay, %bb.i ]
  tail call void @pfree(ptr noundef %.094.lcssa186.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  tail call void @pfree(ptr noundef %i.fa) #10
  br label %bb.bd

get_docrep.exit:                                  ; preds = %bb.v, %bb.r
  %.0.lcssa.i = phi ptr [ %.3.i, %bb.r ], [ %.1.i, %bb.v ] ; 4 uses
  %.sroa.148.0.lcssa.i = phi i16 [ %i.du, %bb.r ], [ %.sroa.148.1.i, %bb.v ]
  %.sroa.9.0.lcssa.i = phi i16 [ 1, %bb.r ], [ %.sroa.9.1.i, %bb.v ]
  %.sroa.0.0.lcssa.i = phi ptr [ %i.dx, %bb.r ], [ %.sroa.0.1.i, %bb.v ]
  store ptr %.sroa.0.0.lcssa.i, ptr %.0.lcssa.i, align 8
  %.sroa.9.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  store i16 %.sroa.9.0.lcssa.i, ptr %.sroa.9.0..sroa_idx4.i, align 8
  %.sroa.148.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  store i16 %.sroa.148.0.lcssa.i, ptr %.sroa.148.0..sroa_idx9.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 24
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = sub i64 %i.fc, %i.dz
  %i.fe = sdiv exact i64 %i.fd, 24
  %sext = shl i64 %i.fe, 32
  %i.ff = ashr exact i64 %sext, 32                ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %get_docrep.exit, %bb.ap
  %.promoted163 = phi i64 [ %i.lb, %bb.ap ], [ 0, %get_docrep.exit ]
  %.090 = phi i32 [ %i.ml, %bb.ap ], [ 0, %get_docrep.exit ] ; 4 uses
  %.089 = phi double [ %i.mb, %bb.ap ], [ 0.000000e+00, %get_docrep.exit ] ; 2 uses
  %.087 = phi double [ %.188, %bb.ap ], [ 0.000000e+00, %get_docrep.exit ] ; 3 uses
  %i.fg = phi <2 x double> [ %i.mm, %bb.ap ], [ zeroinitializer, %get_docrep.exit ] ; 2 uses
  %sext221 = shl i64 %.promoted163, 32
  %i.fh = ashr exact i64 %sext221, 32             ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.fh, i64 %i.ff)
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.loopexit.i108.thread, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i108.thread ], [ %i.fh, %bb.w ] ; 5 uses
  call void @check_stack_depth() #10, !inline_history !16
  %i.fi = load ptr, ptr %4, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i, label %resetQueryRepresentation.exit.i

.lr.ph.i.i:                                       ; preds = %tailrecurse.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %tailrecurse.i ] ; 4 uses
  %i.fm = load ptr, ptr %i.at, align 8
  %i.fn = getelementptr inbounds nuw [32776 x i8], ptr %i.fm, i64 %indvars.iv.i.i
  store i8 0, ptr %i.fn, align 4
  %i.fo = load ptr, ptr %i.at, align 8
  %i.fp = getelementptr inbounds nuw [32776 x i8], ptr %i.fo, i64 %indvars.iv.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store i8 0, ptr %i.fq, align 1
  %i.fr = load ptr, ptr %i.at, align 8
  %i.fs = getelementptr inbounds nuw [32776 x i8], ptr %i.fr, i64 %indvars.iv.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 0, ptr %i.ft, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fu = load ptr, ptr %4, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next.i.i, %i.fx
  br i1 %i.fy, label %.lr.ph.i.i, label %resetQueryRepresentation.exit.i, !llvm.loop !17

resetQueryRepresentation.exit.i:                  ; preds = %.lr.ph.i.i, %tailrecurse.i
  %exitcond.not = icmp eq i64 %indvars.iv, %smax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %resetQueryRepresentation.exit.i
  %i.fz = getelementptr inbounds [24 x i8], ptr %.3.i, i64 %indvars.iv ; 2 uses
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.af, %.lr.ph.preheader.i
  %i.ga = phi i64 [ %i.iv, %bb.af ], [ %indvars.iv, %.lr.ph.preheader.i ]
  %.05183.i = phi ptr [ %i.is, %bb.af ], [ %i.fz, %.lr.ph.preheader.i ] ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.05183.i, i64 8 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 8
  %i.gd = icmp sgt i16 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i56.i, label %fillQueryRepresentationData.exit.i

.lr.ph.i56.i:                                     ; preds = %.lr.ph.i106
  %i.ge = getelementptr inbounds nuw i8, ptr %.05183.i, i64 16 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph.i56.i
  %indvars.iv.i57.i = phi i64 [ 0, %.lr.ph.i56.i ], [ %indvars.iv.next.i58.i, %bb.ac ] ; 2 uses
  %i.gf = load ptr, ptr %.05183.i, align 8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.i57.i
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 4
  %.not.i.i = icmp eq i8 %i.gi, 1
  br i1 %.not.i.i, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gj = load ptr, ptr %i.at, align 8
  %i.gk = load ptr, ptr %4, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = ptrtoint ptr %i.gh to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 12
  %i.gq = getelementptr inbounds [32776 x i8], ptr %i.gj, i64 %i.gp ; 5 uses
  store i8 1, ptr %i.gq, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !range !18, !noundef !19
  %i.gw = trunc nuw i8 %i.gv to i1                ; 3 uses
  br i1 %i.gt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gx = load i16, ptr %i.ge, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gz = select i1 %i.gw, i64 16383, i64 0
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.gz
  store i16 %i.gx, ptr %i.ha, align 2
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hb = sub i32 16384, %i.gs
  %i.hc = add i32 %i.gs, -1
  %i.hd = select i1 %i.gw, i32 %i.hb, i32 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.hf = sext i32 %i.hd to i64
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = load i16, ptr %i.ge, align 8            ; 2 uses
  %i.hj = xor i16 %i.hi, %i.hh
  %i.hk = and i16 %i.hj, 16383
  %.not29.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not29.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hl = sub i32 16383, %i.gs
  %spec.select.i.i = select i1 %i.gw, i32 %i.hl, i32 %i.gs
  %i.hm = sext i32 %spec.select.i.i to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hm
  store i16 %i.hi, ptr %i.hn, align 2
  %i.ho = load i32, ptr %i.gr, align 4
  %i.hp = add i32 %i.ho, 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ab, %bb.z
  %.sink.i.i = phi i32 [ %i.hp, %bb.ab ], [ 1, %bb.z ]
  store i32 %.sink.i.i, ptr %i.gr, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %bb.aa, %bb.x
  %indvars.iv.next.i58.i = add nuw nsw i64 %indvars.iv.i57.i, 1 ; 2 uses
  %i.hq = load i16, ptr %i.gb, align 8
  %i.hr = sext i16 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next.i58.i, %i.hr
  br i1 %i.hs, label %bb.x, label %fillQueryRepresentationData.exit.i, !llvm.loop !20

fillQueryRepresentationData.exit.i:               ; preds = %bb.ac, %.lr.ph.i106
  %i.ht = load ptr, ptr %4, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = call zeroext i1 @TS_execute(ptr noundef nonnull %i.hu, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #10, !inline_history !16
  br i1 %i.hv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05183.i, i64 16
  %i.hx = load i16, ptr %i.hw, align 8
  %i.hy = and i16 %i.hx, 16383                    ; 3 uses
  %.not = icmp eq i16 %i.hy, 0
  br i1 %.not, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hz = load ptr, ptr %4, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i

.lr.ph.i59.i:                                     ; preds = %bb.ae, %.lr.ph.i59.i
  %indvars.iv.i60.i = phi i64 [ %indvars.iv.next.i61.i, %.lr.ph.i59.i ], [ 0, %bb.ae ] ; 4 uses
  %i.id = load ptr, ptr %i.at, align 8
  %i.ie = getelementptr inbounds nuw [32776 x i8], ptr %i.id, i64 %indvars.iv.i60.i
  store i8 0, ptr %i.ie, align 4
  %i.if = load ptr, ptr %i.at, align 8
  %i.ig = getelementptr inbounds nuw [32776 x i8], ptr %i.if, i64 %indvars.iv.i60.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store i8 1, ptr %i.ih, align 1
  %i.ii = load ptr, ptr %i.at, align 8
  %i.ij = getelementptr inbounds nuw [32776 x i8], ptr %i.ii, i64 %indvars.iv.i60.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 0, ptr %i.ik, align 4
  %indvars.iv.next.i61.i = add nuw nsw i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.il = load ptr, ptr %4, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next.i61.i, %i.io
  br i1 %i.ip, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i, !llvm.loop !17

resetQueryRepresentation.exit62.i:                ; preds = %.lr.ph.i59.i, %bb.ae
  %sext.i = shl i64 %i.ga, 32
  %i.iq = ashr exact i64 %sext.i, 32              ; 2 uses
  %.not84.i = icmp slt i64 %i.iq, %indvars.iv
  br i1 %.not84.i, label %.loopexit.i108.thread, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %resetQueryRepresentation.exit62.i
  %i.ir = getelementptr inbounds [24 x i8], ptr %.3.i, i64 %i.iq
  br label %.lr.ph86.i

bb.af:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05183.i, i64 24 ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.it, %i.dz
  %i.iv = sdiv exact i64 %i.iu, 24                ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %i.ff
  br i1 %i.iw, label %.lr.ph.i106, label %.loopexit, !llvm.loop !21

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %bb.am
  %.185.i = phi ptr [ %i.ks, %bb.am ], [ %i.ir, %.lr.ph86.i.preheader ] ; 9 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.185.i, i64 8 ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 8
  %i.iz = icmp sgt i16 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.i63.i, label %fillQueryRepresentationData.exit71.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph86.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.185.i, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i63.i
  %indvars.iv.i64.i = phi i64 [ 0, %.lr.ph.i63.i ], [ %indvars.iv.next.i66.i, %bb.al ] ; 2 uses
  %i.jb = load ptr, ptr %.185.i, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.i64.i
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = load i8, ptr %i.jd, align 4
  %.not.i65.i = icmp eq i8 %i.je, 1
  br i1 %.not.i65.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.jf = load ptr, ptr %i.at, align 8
  %i.jg = load ptr, ptr %4, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = ptrtoint ptr %i.jd to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = sdiv exact i64 %i.jk, 12
  %i.jm = getelementptr inbounds [32776 x i8], ptr %i.jf, i64 %i.jl ; 5 uses
  store i8 1, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4            ; 5 uses
  %i.jp = icmp eq i32 %i.jo, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !range !18, !noundef !19
  %i.js = trunc nuw i8 %i.jr to i1                ; 3 uses
  br i1 %i.jp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jt = load i16, ptr %i.ja, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jv = select i1 %i.js, i64 16383, i64 0
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %i.jv
  store i16 %i.jt, ptr %i.jw, align 2
  br label %.sink.split.i69.i

bb.aj:                                            ; preds = %bb.ah
  %i.jx = sub i32 16384, %i.jo
  %i.jy = add i32 %i.jo, -1
  %i.jz = select i1 %i.js, i32 %i.jx, i32 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = load i16, ptr %i.ja, align 8            ; 2 uses
  %i.kf = xor i16 %i.ke, %i.kd
  %i.kg = and i16 %i.kf, 16383
  %.not29.i67.i = icmp eq i16 %i.kg, 0
  br i1 %.not29.i67.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kh = sub i32 16383, %i.jo
  %spec.select.i68.i = select i1 %i.js, i32 %i.kh, i32 %i.jo
  %i.ki = sext i32 %spec.select.i68.i to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ki
  store i16 %i.ke, ptr %i.kj, align 2
  %i.kk = load i32, ptr %i.jn, align 4
  %i.kl = add i32 %i.kk, 1
  br label %.sink.split.i69.i

.sink.split.i69.i:                                ; preds = %bb.ak, %bb.ai
  %.sink.i70.i = phi i32 [ %i.kl, %bb.ak ], [ 1, %bb.ai ]
  store i32 %.sink.i70.i, ptr %i.jn, align 4
  br label %bb.al

bb.al:                                            ; preds = %.sink.split.i69.i, %bb.aj, %bb.ag
  %indvars.iv.next.i66.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %i.km = load i16, ptr %i.ix, align 8
  %i.kn = sext i16 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next.i66.i, %i.kn
  br i1 %i.ko, label %bb.ag, label %fillQueryRepresentationData.exit71.i, !llvm.loop !20

fillQueryRepresentationData.exit71.i:             ; preds = %bb.al, %.lr.ph86.i
  %i.kp = load ptr, ptr %4, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = call zeroext i1 @TS_execute(ptr noundef nonnull %i.kq, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #10, !inline_history !16
  br i1 %i.kr, label %.loopexit.i108, label %bb.am

bb.am:                                            ; preds = %fillQueryRepresentationData.exit71.i
  %i.ks = getelementptr inbounds i8, ptr %.185.i, i64 -24 ; 2 uses
  %.not.i107 = icmp ult ptr %i.ks, %i.fz
  br i1 %.not.i107, label %.loopexit.i108.thread, label %.lr.ph86.i, !llvm.loop !22

.loopexit.i108:                                   ; preds = %fillQueryRepresentationData.exit71.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.185.i, i64 16
  %i.ku = load i16, ptr %i.kt, align 8
  %i.kv = and i16 %i.ku, 16383                    ; 2 uses
  %.not55.i = icmp samesign ugt i16 %i.kv, %i.hy
  br i1 %.not55.i, label %.loopexit.i108.thread, label %bb.an

.loopexit.i108.thread:                            ; preds = %bb.am, %resetQueryRepresentation.exit62.i, %.loopexit.i108
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %tailrecurse.i

bb.an:                                            ; preds = %.loopexit.i108
  %i.kw = zext nneg i16 %i.hy to i32              ; 2 uses
  %i.kx = zext nneg i16 %i.kv to i32              ; 2 uses
  %i.ky = ptrtoint ptr %.185.i to i64
  %i.kz = sub i64 %i.ky, %i.dz
  %i.la = sdiv exact i64 %i.kz, 24
  %i.lb = add nsw i64 %i.la, 1
  %.not105158 = icmp ugt ptr %.185.i, %.05183.i
  br i1 %.not105158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %.lr.ph
  %.0160 = phi ptr [ %i.lj, %.lr.ph ], [ %.185.i, %bb.an ] ; 2 uses
  %.083159 = phi double [ %i.li, %.lr.ph ], [ 0.000000e+00, %bb.an ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.0160, i64 16
  %i.ld = load i16, ptr %i.lc, align 8
  %i.le = lshr i16 %i.ld, 14
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8
  %i.li = fadd double %.083159, %i.lh             ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0160, i64 24 ; 2 uses
  %.not105 = icmp ugt ptr %i.lj, %.05183.i
  br i1 %.not105, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.an
  %.083.lcssa = phi double [ 0.000000e+00, %bb.an ], [ %i.li, %.lr.ph ]
  %i.lk = ptrtoint ptr %.05183.i to i64
  %i.ll = ptrtoint ptr %.185.i to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = sdiv exact i64 %i.lm, 24                ; 2 uses
  %i.lo = add nsw i64 %i.ln, 1
  %i.lp = sitofp i64 %i.lo to double
  %i.lq = fdiv double %i.lp, %.083.lcssa
  %i.lr = trunc i64 %i.ln to i32
  %i.ls = add i32 %i.kx, %i.lr
  %i.lt = sub i32 %i.kw, %i.ls                    ; 2 uses
  %i.lu = icmp slt i32 %i.lt, 0
  br i1 %i.lu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.lv = sdiv i64 %i.lm, 48
  %i.lw = trunc i64 %i.lv to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge
  %.081 = phi i32 [ %i.lw, %bb.ao ], [ %i.lt, %._crit_edge ]
  %i.lx = add i32 %.081, 1
  %i.ly = sitofp i32 %i.lx to double
  %i.lz = add nuw nsw i32 %i.kx, %i.kw
  %i.ma = uitofp nneg i32 %i.lz to double
  %i.mb = fmul nnan double %i.ma, 5.000000e-01    ; 3 uses
  %i.mc = icmp sgt i32 %.090, 0
  %i.md = fcmp ogt double %i.mb, %.089
  %or.cond = select i1 %i.mc, i1 %i.md, i1 false
  %i.me = fsub double %i.mb, %.089
  %i.mf = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.lq, i64 0
  %i.mg = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.me, i64 1
  %i.mi = fdiv <2 x double> %i.mf, %i.mh
  %i.mj = fadd <2 x double> %i.fg, %i.mi          ; 2 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 1
  %.188 = select i1 %or.cond, double %i.mk, double %.087 ; 2 uses
  %i.ml = add i32 %.090, 1
  %i.mm = insertelement <2 x double> %i.mj, double %.188, i64 1
  br label %bb.w, !llvm.loop !24

.loopexit:                                        ; preds = %resetQueryRepresentation.exit.i, %bb.ad, %bb.af
  %i.mn = and i32 %3, 1
  %.not100 = icmp eq i32 %i.mn, 0
  %i.mo = extractelement <2 x double> %i.fg, i64 0 ; 3 uses
  br i1 %.not100, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.mp = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.mr = zext nneg i32 %i.mp to i64
  %.idx.i = shl nuw nsw i64 %i.mr, 2
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %bb.ar, %.thread.i
  %.020.i = phi ptr [ %i.ne, %.thread.i ], [ %i.bb, %bb.ar ] ; 2 uses
  %.01519.i = phi i32 [ %i.nd, %.thread.i ], [ 0, %bb.ar ]
  %i.mt = load i32, ptr %.020.i, align 4          ; 3 uses
  %i.mu = and i32 %i.mt, 1
  %.not.i110 = icmp eq i32 %i.mu, 0
  br i1 %.not.i110, label %.thread.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i109
  %i.mv = lshr i32 %i.mt, 12
  %i.mw = lshr i32 %i.mt, 1
  %i.mx = and i32 %i.mw, 2047
  %i.my = add nuw nsw i32 %i.mv, 1
  %narrow.i111 = add nuw nsw i32 %i.my, %i.mx
  %i.mz = and i32 %narrow.i111, 4194302
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 1
  %.fr.i = freeze i16 %i.nc
  %narrow18.i = call i16 @llvm.umax.i16(i16 %.fr.i, i16 1)
  %spec.select.v.i = zext i16 %narrow18.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.as, %.lr.ph.i109
  %spec.select.v.pn.i = phi i32 [ %spec.select.v.i, %bb.as ], [ 1, %.lr.ph.i109 ]
  %i.nd = add i32 %spec.select.v.pn.i, %.01519.i  ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.020.i, i64 4 ; 2 uses
  %i.nf = icmp ult ptr %i.ne, %i.ms
  br i1 %i.nf, label %.lr.ph.i109, label %cnt_length.exit, !llvm.loop !10

cnt_length.exit:                                  ; preds = %.thread.i
  %i.ng = add i32 %i.nd, 1
  %i.nh = sitofp i32 %i.ng to double
  %i.ni = call double @log(double noundef %i.nh) #10
  %i.nj = fdiv double %i.mo, %i.ni
  br label %bb.at

bb.at:                                            ; preds = %cnt_length.exit, %bb.aq, %.loopexit
  %.1 = phi double [ %i.nj, %cnt_length.exit ], [ %i.mo, %bb.aq ], [ %i.mo, %.loopexit ] ; 4 uses
  %i.nk = and i32 %3, 2
  %.not101 = icmp eq i32 %i.nk, 0
  br i1 %.not101, label %cnt_length.exit124.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nl = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.nm = sext i32 %i.nl to i64
  %.idx.i112 = shl nsw i64 %i.nm, 2
  %i.nn = getelementptr inbounds i8, ptr %i.bb, i64 %.idx.i112 ; 2 uses
  %i.no = icmp sgt i32 %i.nl, 0
  br i1 %i.no, label %.lr.ph.i114, label %cnt_length.exit124.thread

.lr.ph.i114:                                      ; preds = %bb.au, %.thread.i122
  %.020.i115 = phi ptr [ %i.oa, %.thread.i122 ], [ %i.bb, %bb.au ] ; 2 uses
  %.01519.i116 = phi i32 [ %i.nz, %.thread.i122 ], [ 0, %bb.au ]
  %i.np = load i32, ptr %.020.i115, align 4       ; 3 uses
  %i.nq = and i32 %i.np, 1
  %.not.i117 = icmp eq i32 %i.nq, 0
  br i1 %.not.i117, label %.thread.i122, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i114
  %i.nr = lshr i32 %i.np, 12
  %i.ns = lshr i32 %i.np, 1
  %i.nt = and i32 %i.ns, 2047
  %i.nu = add nuw nsw i32 %i.nr, 1
  %narrow.i118 = add nuw nsw i32 %i.nu, %i.nt
  %i.nv = and i32 %narrow.i118, 4194302
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 1
  %.fr.i119 = freeze i16 %i.ny
  %narrow18.i120 = call i16 @llvm.umax.i16(i16 %.fr.i119, i16 1)
  %spec.select.v.i121 = zext i16 %narrow18.i120 to i32
  br label %.thread.i122

.thread.i122:                                     ; preds = %bb.av, %.lr.ph.i114
  %spec.select.v.pn.i123 = phi i32 [ %spec.select.v.i121, %bb.av ], [ 1, %.lr.ph.i114 ]
  %i.nz = add i32 %spec.select.v.pn.i123, %.01519.i116 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.020.i115, i64 4 ; 2 uses
  %i.ob = icmp ult ptr %i.oa, %i.nn
  br i1 %i.ob, label %.lr.ph.i114, label %cnt_length.exit124, !llvm.loop !10

cnt_length.exit124:                               ; preds = %.thread.i122
  %i.oc = icmp sgt i32 %i.nz, 0
  br i1 %i.oc, label %bb.aw, label %cnt_length.exit124.thread

bb.aw:                                            ; preds = %cnt_length.exit124
  %i.od = uitofp nneg i32 %i.nz to double
  %i.oe = fdiv double %.1, %i.od
  br label %cnt_length.exit124.thread

cnt_length.exit124.thread:                        ; preds = %bb.au, %cnt_length.exit124, %bb.aw, %bb.at
  %.2 = phi double [ %i.oe, %bb.aw ], [ %.1, %cnt_length.exit124 ], [ %.1, %bb.at ], [ %.1, %bb.au ] ; 2 uses
  %i.of = and i32 %3, 4
  %i.og = icmp ne i32 %i.of, 0
  %i.oh = icmp sgt i32 %.090, 0
  %or.cond5 = select i1 %i.og, i1 %i.oh, i1 false
  %i.oi = fcmp ogt double %.087, 0.000000e+00
  %or.cond7 = select i1 %or.cond5, i1 %i.oi, i1 false
  %i.oj = uitofp nneg i32 %.090 to double
  %i.ok = fdiv double %i.oj, %.087
  %i.ol = fdiv double %.2, %i.ok
  %.3 = select i1 %or.cond7, double %i.ol, double %.2 ; 3 uses
  %i.om = and i32 %3, 8
  %.not102 = icmp eq i32 %i.om, 0
  br i1 %.not102, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %cnt_length.exit124.thread
  %i.on = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.op = uitofp nneg i32 %i.on to double
  %i.oq = fdiv double %.3, %i.op
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %cnt_length.exit124.thread
  %.4 = phi double [ %i.oq, %bb.ay ], [ %.3, %bb.ax ], [ %.3, %cnt_length.exit124.thread ] ; 3 uses
  %i.or = and i32 %3, 16
  %.not103 = icmp eq i32 %i.or, 0
  br i1 %.not103, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.os = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ou = add nuw i32 %i.os, 1
  %i.ov = sitofp i32 %i.ou to double
  %i.ow = call double @log(double noundef %i.ov) #10
  %i.ox = fdiv double %i.ow, f0x3FE62E42FEFA39EF
  %i.oy = fdiv double %.4, %i.ox
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.5 = phi double [ %i.oy, %bb.bb ], [ %.4, %bb.ba ], [ %.4, %bb.az ] ; 3 uses
  %i.oz = and i32 %3, 32
  %.not104 = icmp eq i32 %i.oz, 0
  %i.pa = fadd double %.5, 1.000000e+00
  %i.pb = fdiv double %.5, %i.pa
  %.6 = select i1 %.not104, double %.5, double %i.pb
  call void @pfree(ptr noundef nonnull %.3.i) #10
  %i.pc = load ptr, ptr %i.at, align 8
  call void @pfree(ptr noundef %i.pc) #10
  %i.pd = fptrunc double %.6 to float
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %get_docrep.exit.thread
  %.082 = phi float [ %i.pd, %bb.bc ], [ 0.000000e+00, %get_docrep.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret float %.082
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rankcd_wtt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call fastcc void @getWeights(ptr noundef %i.e, ptr noundef %i.a)
  %i.m = call fastcc float @calc_rank_cd(ptr noundef nonnull %i.a, ptr noundef %i.i, ptr noundef %i.l, i32 noundef 0)
  %i.n = load i64, ptr %i.b, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %.not = icmp eq ptr %i.e, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.e) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = load i64, ptr %i.f, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %.not18 = icmp eq ptr %i.i, %i.q
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.i) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = load i64, ptr %i.j, align 8
  %.not19 = icmp eq i64 %i.k, %i.r
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pfree(ptr noundef %i.l) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = bitcast float %i.m to i32
  %i.t = sext i32 %i.s to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.t
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rankcd_ttf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call fastcc float @calc_rank_cd(ptr noundef nonnull @default_weights, ptr noundef %i.d, ptr noundef %i.g, i32 noundef %i.j)
  %i.l = load i64, ptr %i.a, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %.not = icmp eq ptr %i.d, %i.m
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = load i64, ptr %i.e, align 8
  %.not13 = icmp eq i64 %i.f, %i.n
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.g) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = bitcast float %i.k to i32
  %i.p = sext i32 %i.o to i64
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ts_rankcd_tt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = tail call fastcc float @calc_rank_cd(ptr noundef nonnull @default_weights, ptr noundef %i.d, ptr noundef %i.g, i32 noundef 0)
  %i.i = load i64, ptr %i.a, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %.not = icmp eq ptr %i.d, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.e, align 8
  %.not12 = icmp eq i64 %i.f, %i.k
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.g) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = bitcast float %i.h to i32
  %i.m = sext i32 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ArrayGetNItems(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @array_contains_nulls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc float @calc_rank_or(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.WordEntryPosVector1, align 2 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %i.b, align 4
  store i16 1, ptr %3, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i16 0, ptr %i.e, align 2
  %i.f = call fastcc ptr @SortAndUniqItems(ptr noundef %2, ptr noundef %i.b) ; 2 uses
  %i.g = load i32, ptr %i.b, align 4              ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  br i1 %i.h, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %wide.trip.count85 = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph75, %.loopexit
  %indvars.iv82 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next83, %.loopexit ] ; 2 uses
  %.05173 = phi float [ 0.000000e+00, %.lr.ph75 ], [ %.2, %.loopexit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv82
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call fastcc ptr @find_wordentry(ptr noundef %1, ptr noundef %2, ptr noundef %i.l, ptr noundef %i.a) ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %.lr.ph70, label %.loopexit

.lr.ph70:                                         ; preds = %.preheader, %._crit_edge
  %.05069 = phi ptr [ %i.be, %._crit_edge ], [ %i.m, %.preheader ] ; 2 uses
  %.15268 = phi float [ %i.bd, %._crit_edge ], [ %.05173, %.preheader ]
  %i.r = load i32, ptr %.05069, align 4           ; 3 uses
  %i.s = and i32 %i.r, 1
  %.not60 = icmp eq i32 %i.s, 0
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph70
  %i.t = load i32, ptr %i.j, align 4
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.u
  %i.w = lshr i32 %i.r, 12
  %i.x = lshr i32 %i.r, 1
  %i.y = and i32 %i.x, 2047
  %i.z = add nuw nsw i32 %i.w, 1
  %narrow = add nuw nsw i32 %i.z, %i.y
  %i.aa = and i32 %narrow, 4194302
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %i.u
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ab
  %i.af = getelementptr i8, ptr %i.ae, i64 10
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph70, %bb.c
  %.056 = phi ptr [ %i.af, %bb.c ], [ %i.e, %.lr.ph70 ] ; 3 uses
  %.055.in.in = phi ptr [ %i.ac, %bb.c ], [ %3, %.lr.ph70 ]
  %.055.in = load i16, ptr %.055.in.in, align 1   ; 4 uses
  %.not79 = icmp eq i16 %.055.in, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i16 %.055.in to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %4 = icmp eq i16 %.055.in, 1
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.a
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.a ], [ %indvars.iv.next.a, %.lr.ph ] ; 4 uses
  %.065 = phi i32 [ 0, %.lr.ph.preheader.a ], [ %.1.a, %.lr.ph ]
  %.04764 = phi float [ -1.000000e+00, %.lr.ph.preheader.a ], [ %.148.a, %.lr.ph ] ; 2 uses
  %.04963 = phi float [ 0.000000e+00, %.lr.ph.preheader.a ], [ %i.aq, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.a ], [ %niter.next.1, %.lr.ph ]
  %5 = getelementptr inbounds nuw [2 x i8], ptr %.056, i64 %indvars.iv
  %6 = load i16, ptr %5, align 2
  %7 = lshr i16 %6, 14
  %8 = zext nneg i16 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  %10 = load float, ptr %9, align 4               ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %11 = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %12 = mul i32 %11, %11
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %10, %13
  %15 = fadd float %.04963, %14
  %16 = fcmp ogt float %10, %.04764               ; 2 uses
  %.148 = select i1 %16, float %10, float %.04764 ; 2 uses
  %17 = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %16, i32 %17, i32 %.065
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.056, i64 %indvars.iv.next
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = lshr i16 %i.ah, 14
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4          ; 3 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next.a to i32 ; 2 uses
  %i.an = mul i32 %i.am, %i.am
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fdiv float %i.al, %i.ao
  %i.aq = fadd float %15, %i.ap                   ; 3 uses
  %i.ar = fcmp ogt float %i.al, %.148             ; 2 uses
  %.148.a = select i1 %i.ar, float %i.al, float %.148 ; 3 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i32
  %.1.a = select i1 %i.ar, i32 %i.as, i32 %.1     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %exitcond.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %exitcond.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !25

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.a, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.065.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.a, %._crit_edge.loopexit.unr-lcssa ]
  %.04764.epil.init = phi float [ -1.000000e+00, %.lr.ph.preheader ], [ %.148.a, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.04963.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod94 = trunc i16 %.055.in to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %18 = getelementptr inbounds nuw [2 x i8], ptr %.056, i64 %indvars.iv.epil.init
  %19 = load i16, ptr %18, align 2
  %20 = lshr i16 %19, 14
  %21 = zext nneg i16 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %21
  %23 = load float, ptr %22, align 4              ; 3 uses
  %24 = trunc i64 %indvars.iv.epil.init to i32
  %25 = add i32 %24, 1                            ; 2 uses
  %26 = mul i32 %25, %25
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %23, %27
  %29 = fadd float %.04963.epil.init, %28
  %30 = fcmp ogt float %23, %.04764.epil.init     ; 2 uses
  %.148.epil = select i1 %30, float %23, float %.04764.epil.init
  %31 = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.1.epil = select i1 %30, i32 %31, i32 %.065.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi float [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %29, %.lr.ph.epil.preheader ]
  %.148.lcssa = phi float [ %.148.a, %._crit_edge.loopexit.unr-lcssa ], [ %.148.epil, %.lr.ph.epil.preheader ]
  %.1.lcssa = phi i32 [ %.1.a, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  %i.at = add nuw nsw i32 %.1.lcssa, 1            ; 2 uses
  %i.au = mul i32 %i.at, %i.at
  %i.av = sitofp i32 %i.au to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.049.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %.lcssa, %._crit_edge.loopexit ]
  %.047.lcssa = phi float [ -1.000000e+00, %bb.d ], [ %.148.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi float [ 1.000000e+00, %bb.d ], [ %i.av, %._crit_edge.loopexit ]
  %i.aw = fpext float %.15268 to double
  %i.ax = fdiv float %.047.lcssa, %.0.lcssa
  %i.ay = fsub float %.049.lcssa, %i.ax
  %i.az = fadd float %.047.lcssa, %i.ay
  %i.ba = fpext float %i.az to double
  %i.bb = fdiv double %i.ba, f0x3FFA51A662532707
  %i.bc = fadd double %i.bb, %i.aw
  %i.bd = fptrunc double %i.bc to float           ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05069, i64 4 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.n
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp slt i64 %i.bh, %i.p
  br i1 %i.bi, label %.lr.ph70, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.b
  %.2 = phi float [ %.05173, %bb.b ], [ %.05173, %.preheader ], [ %i.bd, %._crit_edge ] ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge76, label %bb.b, !llvm.loop !27

._crit_edge76:                                    ; preds = %.loopexit, %bb.a
  %.051.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.2, %.loopexit ] ; 2 uses
  %i.bj = uitofp nneg i32 %i.g to float
  %i.bk = fdiv float %.051.lcssa, %i.bj
  %.3 = select i1 %i.h, float %i.bk, float %.051.lcssa
  tail call void @pfree(ptr noundef %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret float %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @SortAndUniqItems(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, 12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %1, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.h) #10 ; 8 uses
  %i.j = load i32, ptr %1, align 4                ; 2 uses
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %1, align 4
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.l = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.a ]
  %.03543 = phi ptr [ %.136, %bb.c ], [ %i.i, %bb.a ] ; 3 uses
  %.03842 = phi ptr [ %i.q, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.m = load i8, ptr %.03842, align 4
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store ptr %.03842, ptr %.03543, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.03543, i64 8
  %.pre = load i32, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.l, %.lr.ph ] ; 2 uses
  %.136 = phi ptr [ %i.o, %bb.b ], [ %.03543, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03842, i64 12
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %1, align 4
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.035.lcssa = phi ptr [ %i.i, %bb.a ], [ %.136, %bb.c ]
  %i.s = ptrtoint ptr %.035.lcssa to i64
  %i.t = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 3                   ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  store i32 %i.w, ptr %1, align 4
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.y = and i64 %i.v, 2147483647
  tail call void @qsort_arg(ptr noundef %i.i, i64 noundef %i.y, i64 noundef 8, ptr noundef nonnull @compareQueryOperand, ptr noundef nonnull %i.f) #10
  %i.z = load i32, ptr %1, align 4
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %bb.d
  %.244 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.f
  %.246 = phi ptr [ %.2, %bb.f ], [ %.244, %.lr.ph48.preheader ] ; 3 uses
  %.045 = phi ptr [ %.1, %bb.f ], [ %i.i, %.lr.ph48.preheader ] ; 3 uses
  %i.ab = load ptr, ptr %.246, align 8
  %i.ac = load ptr, ptr %.045, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = lshr i32 %i.ae, 12
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ag
  %i.ai = and i32 %i.ae, 4095
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = lshr i32 %i.ak, 12
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.am
  %i.ao = and i32 %i.ak, 4095
  %i.ap = tail call i32 @tsCompareString(ptr noundef nonnull %i.ah, i32 noundef %i.ai, ptr noundef nonnull %i.an, i32 noundef %i.ao, i1 noundef zeroext false) #10
  %.not40 = icmp eq i32 %i.ap, 0
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph48
  %i.aq = getelementptr inbounds nuw i8, ptr %.045, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %.246, align 8
  store ptr %i.ar, ptr %i.aq, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph48
  %.1 = phi ptr [ %i.aq, %bb.e ], [ %.045, %.lr.ph48 ] ; 2 uses
  %.2 = getelementptr inbounds nuw i8, ptr %.246, i64 8 ; 2 uses
  %i.as = ptrtoint ptr %.2 to i64
  %i.at = sub i64 %i.as, %i.t
  %i.au = ashr exact i64 %i.at, 3
  %i.av = load i32, ptr %1, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph48, label %._crit_edge49, !llvm.loop !29

._crit_edge49:                                    ; preds = %bb.f, %bb.d
  %.0.lcssa = phi ptr [ %i.i, %bb.d ], [ %.1, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.t
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %._crit_edge49
  ret ptr %i.i
}

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_wordentry(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  store i32 0, ptr %3, align 4
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.055 = phi ptr [ %i.a, %.lr.ph ], [ %.1, %bb.d ] ; 4 uses
  %.04554 = phi ptr [ %i.e, %.lr.ph ], [ %.146, %bb.d ] ; 2 uses
  %i.j = ptrtoint ptr %.04554 to i64
  %i.k = ptrtoint ptr %.055 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = sdiv i64 %i.m, 2
  %i.o = getelementptr inbounds [4 x i8], ptr %.055, i64 %i.n ; 6 uses
  %i.p = load i32, ptr %i.h, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  %i.t = load i32, ptr %i.i, align 4              ; 2 uses
  %i.u = lshr i32 %i.t, 12
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = and i32 %i.t, 4095
  %i.y = load i32, ptr %i.b, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.z
  %i.ab = load i32, ptr %i.o, align 4             ; 2 uses
  %i.ac = lshr i32 %i.ab, 12
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = lshr i32 %i.ab, 1
  %i.ag = and i32 %i.af, 2047
  %i.ah = tail call i32 @tsCompareString(ptr noundef nonnull %i.w, i32 noundef %i.x, ptr noundef nonnull %i.ae, i32 noundef %i.ag, i1 noundef zeroext false) #10 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.aj = icmp sgt i32 %i.ah, 0                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.146 = select i1 %i.aj, ptr %.04554, ptr %i.o  ; 3 uses
  %.1 = select i1 %i.aj, ptr %i.ak, ptr %.055     ; 3 uses
  %i.al = icmp ult ptr %.1, %.146
  br i1 %i.al, label %bb.b, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.051 = phi ptr [ %.055, %bb.c ], [ %i.a, %bb.a ], [ %.1, %bb.d ]
  %.247 = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.a ], [ %.146, %bb.d ] ; 3 uses
  %.144 = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.a ], [ %i.o, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.an = load i8, ptr %i.am, align 2, !range !18, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.loopexit
  %.not = icmp ult ptr %.051, %.247
  %spec.select = select i1 %.not, ptr %.144, ptr %.247 ; 2 uses
  store i32 0, ptr %3, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.b, align 4
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as
  %i.au = icmp ult ptr %spec.select, %i.at
  br i1 %i.au, label %.lr.ph59, label %.critedge

.lr.ph59:                                         ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph59, %bb.g
  %i.aw = phi i64 [ %i.as, %.lr.ph59 ], [ %i.bt, %bb.g ]
  %.358 = phi ptr [ %spec.select, %.lr.ph59 ], [ %i.br, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aw
  %i.ay = load i32, ptr %i.aq, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %i.bc = load i32, ptr %i.av, align 4            ; 2 uses
  %i.bd = lshr i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = and i32 %i.bc, 4095
  %i.bh = load i32, ptr %.358, align 4            ; 2 uses
  %i.bi = lshr i32 %i.bh, 12
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bj
  %i.bl = lshr i32 %i.bh, 1
  %i.bm = and i32 %i.bl, 2047
  %i.bn = tail call i32 @tsCompareString(ptr noundef nonnull %i.bf, i32 noundef %i.bg, ptr noundef nonnull %i.bk, i32 noundef %i.bm, i1 noundef zeroext true) #10
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bp = load i32, ptr %3, align 4
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %3, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.358, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.b, align 4
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bt
  %i.bv = icmp ult ptr %i.br, %i.bu
  br i1 %i.bv, label %bb.f, label %.critedge, !llvm.loop !31

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %.loopexit
  %i.bw = load i32, ptr %3, align 4
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = select i1 %i.bx, ptr %.247, ptr null
  ret ptr %i.by
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @compareQueryOperand(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = lshr i32 %i.d, 12
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = and i32 %i.d, 4095
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = lshr i32 %i.j, 12
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.n = and i32 %i.j, 4095
  %i.o = tail call i32 @tsCompareString(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %i.m, i32 noundef %i.n, i1 noundef zeroext false) #10
  ret i32 %i.o
}

declare i32 @tsCompareString(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @compareDocR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 16383                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i16, ptr %i.e, align 8
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = and i32 %i.g, 16383                      ; 2 uses
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i32 %i.c, 14                        ; 2 uses
  %i.k = lshr i32 %i.g, 14                        ; 2 uses
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt ptr %i.n, %i.p
  %i.s = select i1 %i.r, i32 1, i32 -1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i32 %i.j, %i.k
  %i.u = select i1 %i.t, i32 1, i32 -1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.v = icmp samesign ugt i32 %i.d, %i.h
  %i.w = select i1 %i.v, i32 1, i32 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ %i.w, %bb.f ], [ %i.s, %bb.d ], [ %i.u, %bb.e ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @check_stack_depth() local_unnamed_addr #2

declare zeroext i1 @TS_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @checkcondition_QueryOperand(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = getelementptr inbounds [32776 x i8], ptr %i.b, i64 %i.h ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  store i32 %i.m, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.l, align 4
  %i.t = sub i32 16384, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.u
  store ptr %i.v, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{null}
!17 = distinct !{!17, !5}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
end_hunk_0
