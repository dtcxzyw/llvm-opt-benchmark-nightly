Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcNpnSave?download=true
inline.NumInlined: 37
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@Npn_TruthPermute_rec.count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%03d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot open NPN function file \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Skipping token %s that does not look like a 16-digit hex number.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" %d %d\0A\00", align 1
@pNpnMan = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"Removing old table with %d entries.\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Created new table with %d entries from file \22%s\22.\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"There is no table with entries.\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Dumped table with %d entries from file \22%s\22.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Creating new table with 0 entries.\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define void @Npn_TruthPermute_rec(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #20
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #21 ; 2 uses
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %0) #22 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.f = icmp eq i32 %1, %2
  br i1 %i.f, label %bb.c, label %.preheader

.preheader:                                       ; preds = %Abc_UtilStrsav.exit
  %.not34 = icmp sgt i32 %1, %2
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = add nsw i32 %1, 1
  %i.j = add i32 %2, 1
  br label %bb.d

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.k = load i32, ptr @Npn_TruthPermute_rec.count, align 4, !tbaa !9 ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr @Npn_TruthPermute_rec.count, align 4, !tbaa !9
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.k, ptr noundef %i.e) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %i.h, align 1, !tbaa !10
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  store i8 %i.p, ptr %i.h, align 1, !tbaa !10
  store i8 %i.n, ptr %i.o, align 1, !tbaa !10
  tail call void @Npn_TruthPermute_rec(ptr noundef %i.e, i32 noundef %i.i, i32 noundef %2)
  %i.q = load i8, ptr %i.h, align 1, !tbaa !10
  %i.r = load i8, ptr %i.o, align 1, !tbaa !10
  store i8 %i.r, ptr %i.h, align 1, !tbaa !10
  store i8 %i.q, ptr %i.o, align 1, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.j, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d, !llvm.loop !28

._crit_edge:                                      ; preds = %.preheader
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %bb.e, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.e) #22
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @Npn_TruthPadWord(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %1, 6
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 6
  %i.c = and i64 %0, 4294967295
  %i.d = mul nuw i64 %i.c, 4294967297
  %.022 = select i1 %i.b, i64 %i.d, i64 %0        ; 2 uses
  %i.e = icmp slt i32 %1, 5
  %i.f = and i64 %.022, 281470681808895
  %i.g = mul nuw i64 %i.f, 65537
  %.1 = select i1 %i.e, i64 %i.g, i64 %.022       ; 2 uses
  %i.h = icmp slt i32 %1, 4
  %i.i = and i64 %.1, 71777214294589695
  %i.j = mul nuw i64 %i.i, 257
  %.2 = select i1 %i.h, i64 %i.j, i64 %.1         ; 2 uses
  %i.k = icmp slt i32 %1, 3
  %i.l = and i64 %.2, 1085102592571150095
  %i.m = mul nuw i64 %i.l, 17
  %.3 = select i1 %i.k, i64 %i.m, i64 %.2         ; 2 uses
  %i.n = icmp slt i32 %1, 2
  %i.o = and i64 %.3, 3689348814741910323
  %i.p = mul nuw i64 %i.o, 5
  %.4 = select i1 %i.n, i64 %i.p, i64 %.3         ; 2 uses
  %i.q = icmp eq i32 %1, 0
  %i.r = and i64 %.4, 6148914691236517205
  %i.s = mul nuw i64 %i.r, 3
  %.5 = select i1 %i.q, i64 %i.s, i64 %.4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %.5, %bb.b ], [ %0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @Npn_ManResize(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
Abc_Clock.exit:
  %1 = alloca %struct.timespec, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = add i32 %i.f, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %Abc_Clock.exit
  %.012.i = phi i32 [ %i.g, %Abc_Clock.exit ], [ %i.h, %.critedge.i.backedge ] ; 2 uses
  %i.h = add i32 %.012.i, 1                       ; 6 uses
  %i.i = and i32 %.012.i, 1
  %.not.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.h, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.a:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.k = mul nuw nsw i32 %i.j, %i.j
  %.not.i = icmp ugt i32 %i.k, %i.h
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.a
  %.01116.i = phi i32 [ %i.j, %bb.a ], [ 3, %.preheader.i ] ; 2 uses
  %i.l = urem i32 %i.h, %.01116.i
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge.i.backedge, label %bb.a

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.a
  store i32 %i.h, ptr %i.d, align 8, !tbaa !17
  %i.n = zext nneg i32 %i.h to i64                ; 2 uses
  %i.o = call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #23 ; 2 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !16
  %i.p = icmp sgt i32 %i.e, 0
  br i1 %i.p, label %.lr.ph53.preheader, label %._crit_edge54

.lr.ph53.preheader:                               ; preds = %Abc_PrimeCudd.exit
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9    ; 2 uses
  %.not.i39 = icmp eq i32 %i.r, 0
  br i1 %.not.i39, label %._crit_edge, label %Npn_ManObj.exit

Npn_ManObj.exit:                                  ; preds = %.lr.ph53
  %i.s = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21   ; 2 uses
  %.not.i40 = icmp eq i32 %i.w, 0
  %2 = sext i32 %i.w to i64
  %3 = getelementptr inbounds [16 x i8], ptr %i.s, i64 %2
  %.ph = select i1 %.not.i40, ptr null, ptr %3
  %.val38 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %4 = ptrtoint ptr %.val38 to i64
  br label %bb.b

bb.b:                                             ; preds = %Npn_ManObj.exit43, %Npn_ManObj.exit
  %.03149 = phi ptr [ %.ph, %Npn_ManObj.exit ], [ %9, %Npn_ManObj.exit43 ] ; 3 uses
  %.03248 = phi ptr [ %i.u, %Npn_ManObj.exit ], [ %.03149, %Npn_ManObj.exit43 ] ; 3 uses
  %i.x = load i64, ptr %.03248, align 8, !tbaa !22 ; 3 uses
  %i.y = mul i64 %i.x, 101
  %i.z = mul i64 %i.x, 733
  %i.aa = xor i64 %i.y, %i.z
  %i.ab = mul i64 %i.x, 1777
  %i.ac = xor i64 %i.aa, %i.ab
  %i.ad = urem i64 %i.ac, %i.n
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.03248, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !21
  %i.ah = ptrtoint ptr %.03248 to i64
  %i.ai = sub i64 %i.ah, %4
  %i.aj = lshr exact i64 %i.ai, 4
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %i.ae, align 4, !tbaa !9
  %.not37 = icmp eq ptr %.03149, null
  br i1 %.not37, label %._crit_edge, label %Npn_ManObj.exit43

Npn_ManObj.exit43:                                ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %.03149, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !21       ; 2 uses
  %.not.i42 = icmp eq i32 %6, 0
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [16 x i8], ptr %.val38, i64 %7
  %9 = select i1 %.not.i42, ptr null, ptr %8
  br label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b, %.lr.ph53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !30

._crit_edge54:                                    ; preds = %._crit_edge, %Abc_PrimeCudd.exit
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge54
  call void @free(ptr noundef nonnull %i.c) #22
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge54, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @Npn_ManAdd(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !17
  %i.b = mul i64 %1, 101
  %i.c = mul i64 %1, 733
  %i.d = xor i64 %i.b, %i.c
  %i.e = mul i64 %1, 1777
  %i.f = xor i64 %i.d, %i.e
  %i.g = sext i32 %.val to i64
  %i.h = urem i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = shl nsw i32 %i.j, 1                      ; 2 uses
  store i32 %i.n, ptr %i.k, align 4, !tbaa !24
  %i.o = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 4                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.q) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  store ptr %i.t, ptr %0, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %sext = shl i64 %i.h, 32
  %i.w = ashr exact i64 %sext, 30
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9    ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %Npn_ManObj.exit43, label %Npn_ManObj.exit

Npn_ManObj.exit:                                  ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !18
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph._crit_edge:                                ; preds = %Npn_ManObj.exit41, %Npn_ManObj.exit
  %.03548.lcssa = phi ptr [ %i.ab, %Npn_ManObj.exit ], [ %i.al, %Npn_ManObj.exit41 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03548.lcssa, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !25
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !25
  br label %bb.h

.lr.ph61:                                         ; preds = %Npn_ManObj.exit, %Npn_ManObj.exit41
  %.0354860 = phi ptr [ %i.al, %Npn_ManObj.exit41 ], [ %i.ab, %Npn_ManObj.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0354860, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21 ; 2 uses
  %.not.i40 = icmp eq i32 %i.ai, 0
  br i1 %.not.i40, label %Npn_ManObj.exit43.loopexit, label %Npn_ManObj.exit41

Npn_ManObj.exit41:                                ; preds = %.lr.ph61
  %i.aj = load ptr, ptr %0, align 8, !tbaa !18
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !22
  %i.an = icmp eq i64 %i.am, %1
  br i1 %i.an, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !31

Npn_ManObj.exit43.loopexit:                       ; preds = %.lr.ph61
  %i.ao = getelementptr inbounds nuw i8, ptr %.0354860, i64 12
  br label %Npn_ManObj.exit43

Npn_ManObj.exit43:                                ; preds = %Npn_ManObj.exit43.loopexit, %bb.f
  %.0.lcssa = phi ptr [ %i.x, %bb.f ], [ %i.ao, %Npn_ManObj.exit43.loopexit ]
  %i.ap = load i32, ptr %i.i, align 8, !tbaa !23  ; 5 uses
  store i32 %i.ap, ptr %.0.lcssa, align 4, !tbaa !9
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.i, align 8, !tbaa !23
  %.not.i42 = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i42)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !18
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.as ; 5 uses
  store i64 %1, ptr %i.at, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 1, ptr %i.au, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !21
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ax = mul nsw i32 %i.aw, 3
  %.not44 = icmp slt i32 %i.ap, %i.ax
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Npn_ManObj.exit43
  tail call void @Npn_ManResize(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %Npn_ManObj.exit43, %bb.g, %.lr.ph._crit_edge
  %.036 = phi ptr [ %.03548.lcssa, %.lr.ph._crit_edge ], [ %i.at, %bb.g ], [ %i.at, %Npn_ManObj.exit43 ]
  ret ptr %.036
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @Npn_ManRead(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.c)
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2, ptr noundef %1)
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %i.f = call ptr @strtok(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3) #22 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.backedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i8, ptr %i.f, align 1, !tbaa !10
  %i.i = icmp eq i8 %i.h, 35
  br i1 %i.i, label %.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #20
  %.not12 = icmp eq i64 %i.j, 16
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 0, ptr noundef nonnull @.str.4)
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.f, %.lr.ph, %bb.c
  %i.k = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.c)
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

bb.f:                                             ; preds = %bb.d
  %i.l = call i32 @Extra_ReadHexadecimal(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, i32 noundef 6) #22 ; 0 uses
  %i.m = load i64, ptr %i.b, align 8
  %i.n = call ptr @Npn_ManAdd(ptr noundef %0, i64 noundef %i.m)
  %i.o = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #22
  %i.p = call i64 @strtol(ptr noundef nonnull captures(none) %i.o, ptr noundef null, i32 noundef 10) #22, !inline_history !33
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !25
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.s = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.g

end_hunk_0
