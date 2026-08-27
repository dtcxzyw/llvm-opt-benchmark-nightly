Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilPath?download=true
inline.NumInlined: 214
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"testpath.aig\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"paths\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"grid_%dx%d_e%03d.aig\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Finished dumping AIG into file \22%s\22.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Edge = %d. Arc = %d.\0ACurrent state: \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%d(%d) \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Next state: \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Processing edge %d = {%d %d}\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Frontier: \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Return value = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"States = %8d   Paths = %24.0f  \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"Vars = %d   Iters = %d   Ave = %.0f   Total = %.0f  \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Estimate = %.0f\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Extending GIA object storage: %d -> %d.\0A\00", align 1
@Hsh_VecManHash.s_Primes = internal unnamed_addr constant [7 x i32] [i32 4177, i32 5147, i32 5647, i32 6343, i32 7103, i32 7873, i32 8147], align 16
@.str.20 = private unnamed_addr constant [25 x i8] c"Vector has %d entries: {\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@str.1 = private unnamed_addr constant [37 x i8] c"\0A\0A=================================\0A\00", align 1
@str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.3 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@str.4 = private unnamed_addr constant [65 x i8] c"Hard limit on the number of nodes (2^29) is reached. Quitting...\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Abc_NodeVarX(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %1, %0
  %i.b = add nsw i32 %i.a, %2
  %i.c = shl nsw i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Abc_NodeVarY(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = add i32 %i.a, %2
  %i.c = mul i32 %i.b, %0
  %i.d = add nsw i32 %i.c, %1
  %i.e = shl nsw i32 %i.d, 1
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define ptr @Abc_EnumeratePaths(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Gia_ManStart(i32 noundef 10000) #27 ; 10 uses
  %i.b = add nsw i32 %0, 1                        ; 6 uses
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #28 ; 7 uses
  %i.e = shl nsw i32 %0, 1
  %i.f = mul nsw i32 %i.e, %i.b                   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05459 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  tail call fastcc void @Gia_ManAppendCi(ptr noundef %i.a)
  %i.h = add nuw nsw i32 %.05459, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @Gia_ManHashAlloc(ptr noundef %i.a) #27
  store i32 1, ptr %i.d, align 4, !tbaa !10
  %.not60 = icmp slt i32 %0, 1
  br i1 %.not60, label %._crit_edge72, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph63

.lr.ph71:                                         ; preds = %.lr.ph63
  %i.i = mul i32 %i.b, %0
  %.promoted = load i32, ptr %i.d, align 4, !tbaa !10
  %i.j = zext nneg i32 %i.b to i64                ; 2 uses
  %i.k = zext nneg i32 %0 to i64
  br label %.lr.ph67

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.lr.ph63
  %indvars.iv = phi i64 [ 1, %.lr.ph63.preheader ], [ %indvars.iv.next, %.lr.ph63 ] ; 3 uses
  %i.l = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.o = shl i32 %indvars.iv.tr, 1
  %i.p = tail call i32 @Gia_ManHashAnd(ptr noundef %i.a, i32 noundef %i.n, i32 noundef %i.o) #27
  store i32 %i.p, ptr %i.l, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond74.not, label %.lr.ph71, label %.lr.ph63, !llvm.loop !11

.lr.ph67:                                         ; preds = %.lr.ph71, %._crit_edge68
  %indvars.iv80 = phi i64 [ 1, %.lr.ph71 ], [ %indvars.iv.next81, %._crit_edge68 ] ; 4 uses
  %i.q = phi i32 [ %.promoted, %.lr.ph71 ], [ %i.t, %._crit_edge68 ]
  %i.r = trunc i64 %indvars.iv80 to i32
  %.tr = add i32 %i.i, %i.r
  %i.s = shl i32 %.tr, 1
  %i.t = tail call i32 @Gia_ManHashAnd(ptr noundef %i.a, i32 noundef %i.q, i32 noundef %i.s) #27 ; 2 uses
  store i32 %i.t, ptr %i.d, align 4, !tbaa !10
  %i.u = mul nuw nsw i64 %indvars.iv80, %i.k
  %i.v = trunc nuw nsw i64 %indvars.iv80 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.b
  %indvars.iv75 = phi i64 [ 1, %.lr.ph67 ], [ %indvars.iv.next76, %bb.b ] ; 4 uses
  %i.w = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv75 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10
  %i.z = add nuw nsw i64 %indvars.iv75, %i.u
  %.tr87 = trunc i64 %i.z to i32
  %i.aa = shl i32 %.tr87, 1
  %i.ab = tail call i32 @Gia_ManHashAnd(ptr noundef %i.a, i32 noundef %i.y, i32 noundef %i.aa) #27
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !10
  %i.ad = trunc i64 %indvars.iv75 to i32
  %i.ae = add i32 %i.b, %i.ad
  %i.af = mul i32 %i.ae, %0
  %i.ag = add nsw i32 %i.af, %i.v
  %i.ah = shl nsw i32 %i.ag, 1
  %i.ai = tail call i32 @Gia_ManHashAnd(ptr noundef %i.a, i32 noundef %i.ac, i32 noundef %i.ah) #27
  %i.aj = tail call i32 @Gia_ManHashOr(ptr noundef %i.a, i32 noundef %i.ab, i32 noundef %i.ai) #27
  store i32 %i.aj, ptr %i.w, align 4, !tbaa !10
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %i.j
  br i1 %exitcond79.not, label %._crit_edge68, label %bb.b, !llvm.loop !12

._crit_edge68:                                    ; preds = %bb.b
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %i.j
  br i1 %exitcond84.not, label %._crit_edge72, label %.lr.ph67, !llvm.loop !13

._crit_edge72:                                    ; preds = %._crit_edge68, %._crit_edge
  %i.ak = sext i32 %0 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10
  tail call fastcc void @Gia_ManAppendCo(ptr noundef %i.a, i32 noundef %i.am)
  %i.an = tail call ptr @Gia_ManCleanup(ptr noundef %i.a) #27
  tail call void @Gia_ManStop(ptr noundef %i.a) #27
  tail call void @free(ptr noundef nonnull %i.d) #27
  ret ptr %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Gia_ManAppendCi(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 4 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2684354559                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !36
  %i.g = and i32 %.val, 536870911
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 32
  %i.j = and i64 %i.c, -2305843004918726657
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 4
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !14   ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36   ; 7 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !38
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  store ptr %i.w, ptr %i.s, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %i.o, 1073741823
  %i.y = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aa, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  store ptr %i.af, ptr %i.z, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.l, align 8, !tbaa !38
  %.pre = load i32, ptr %i.n, align 4, !tbaa !36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.ag = phi i32 [ %i.o, %bb.a ], [ %i.o, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = ptrtoint ptr %i.a to i64
  %i.ai = ptrtoint ptr %.val11 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 12
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = add nsw i32 %i.ag, 1
  store i32 %i.ao, ptr %i.n, align 4, !tbaa !36
  %i.ap = sext i32 %i.ag to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !10
  ret void
}

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #3

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Gia_ManHashOr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Gia_ManAppendCo(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 8 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2147483648                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = ptrtoint ptr %.val20 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %1, 1
  %i.k = sub i32 %i.i, %i.j
  %i.l = and i32 %i.k, 536870911
  %i.m = zext nneg i32 %i.l to i64
  %i.n = and i64 %i.c, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !36
  %i.w = and i32 %.val, 536870911
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = and i64 %i.s, -2305843004918726657
  %i.aa = or disjoint i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.a, align 4
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !40  ; 6 uses
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.ac = ptrtoint ptr %.val19 to i64
  %i.ad = sub i64 %i.e, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36 ; 7 uses
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !38
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.ap = phi ptr [ %i.an, %bb.d ], [ %i.ao, %bb.e ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.at, null
  %i.au = zext nneg i32 %spec.select.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.av) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.av) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = phi ptr [ %i.aw, %bb.h ], [ %i.ax, %bb.i ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ab, align 8, !tbaa !38
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi i32 [ %i.ah, %bb.a ], [ %i.ah, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !36
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.af, ptr %i.be, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.bh = load i64, ptr %i.a, align 4
  %i.bi = and i64 %i.bh, 536870911
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bj
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Vec_IntPush.exit
  ret void
}

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @Abc_EnumeratePathsTest() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Abc_EnumeratePaths(i32 noundef 2) ; 2 uses
  tail call void @Gia_AigerWrite(ptr noundef %i.a, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 0) #27
  tail call void @Gia_ManStop(ptr noundef %i.a) #27
  ret void
}

declare void @Gia_AigerWrite(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_GraphGrid(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = shl nsw i32 %0, 2
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %i.c = mul nsw i32 %i.a, %i.b                   ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 6 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !36
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !38
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #30
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  %i.l = icmp sgt i32 %0, 0
  br i1 %i.l, label %.preheader48.lr.ph, label %._crit_edge72

.preheader48.lr.ph:                               ; preds = %Vec_IntAlloc.exit
  %.not = icmp eq i32 %0, 1
  br label %.preheader48

.preheader48:                                     ; preds = %bb.ab, %.preheader48.lr.ph
  %.promoted54 = phi ptr [ %i.j, %.preheader48.lr.ph ], [ %storemerge69, %bb.ab ] ; 2 uses
  %.promoted50 = phi i32 [ %spec.store.select.i, %.preheader48.lr.ph ], [ %spec.select.sink.i.i4265, %bb.ab ] ; 2 uses
  %.promoted = phi i32 [ 0, %.preheader48.lr.ph ], [ %i.bu, %bb.ab ] ; 2 uses
  %.02871 = phi i32 [ 0, %.preheader48.lr.ph ], [ %i.bv, %bb.ab ] ; 4 uses
  br i1 %.not, label %bb.o, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader48
  %i.m = mul nuw nsw i32 %.02871, %0
  %i.n = sext i32 %.promoted to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPushTwo.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPushTwo.exit ] ; 10 uses
  %storemerge4755 = phi ptr [ %.promoted54, %.lr.ph ], [ %storemerge4756, %Vec_IntPushTwo.exit ] ; 6 uses
  %spec.select.sink.i.i51 = phi i32 [ %.promoted50, %.lr.ph ], [ %spec.select.sink.i.i52, %Vec_IntPushTwo.exit ] ; 3 uses
  %.049 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %Vec_IntPushTwo.exit ] ; 2 uses
  %i.o = add nuw nsw i32 %.049, %i.m              ; 2 uses
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = trunc nsw i64 %indvars.iv to i32
  %i.r = icmp eq i32 %spec.select.sink.i.i51, %i.q
  br i1 %i.r, label %bb.d, label %Vec_IntPush.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = icmp slt i64 %indvars.iv, 16
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i = icmp eq ptr %storemerge4755, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge4755, i64 noundef 64) #29
  br label %Vec_IntPush.exit.i

bb.g:                                             ; preds = %bb.e
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntPush.exit.i

bb.h:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.w = shl i32 %indvars.iv.tr, 1
  %spec.select.i.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 4 uses
  %i.x = sext i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv, %i.x
  br i1 %.not.i9.i.i, label %bb.i, label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i.i = icmp eq ptr %storemerge4755, null
  %i.y = zext nneg i32 %spec.select.i.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %storemerge4755, i64 noundef %i.z) #29
  br label %Vec_IntPush.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #30
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.h, %bb.c
  %storemerge4757 = phi ptr [ %storemerge4755, %bb.c ], [ %storemerge4755, %bb.h ], [ %i.u, %bb.g ], [ %i.t, %bb.f ], [ %i.aa, %bb.j ], [ %i.ab, %bb.k ] ; 4 uses
  %spec.select.sink.i.i53 = phi i32 [ %spec.select.sink.i.i51, %bb.c ], [ %spec.select.sink.i.i51, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i.i, %bb.j ], [ %spec.select.i.i, %bb.k ] ; 3 uses
  %i.ac = add nsw i64 %indvars.iv, 1              ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %storemerge4757, i64 %indvars.iv
  store i32 %i.o, ptr %i.ad, align 4, !tbaa !10
  %i.ae = trunc nsw i64 %i.ac to i32
  %i.af = icmp eq i32 %spec.select.sink.i.i53, %i.ae
  br i1 %i.af, label %bb.l, label %Vec_IntPushTwo.exit

bb.l:                                             ; preds = %Vec_IntPush.exit.i
  %i.ag = icmp slt i64 %indvars.iv, 15
  br i1 %i.ag, label %Vec_IntGrow.exit11.sink.split.i6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp samesign ult i64 %indvars.iv, 1073741822
  %.tr = trunc i64 %i.ac to i32
  %i.ai = shl i32 %.tr, 1
  %spec.select.i3.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 3 uses
  %i.aj = sext i32 %spec.select.i3.i to i64
  %.not.i9.i4.i = icmp samesign ult i64 %i.ac, %i.aj
  br i1 %.not.i9.i4.i, label %bb.n, label %Vec_IntPushTwo.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = zext nneg i32 %spec.select.i3.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  br label %Vec_IntGrow.exit11.sink.split.i6.i

Vec_IntGrow.exit11.sink.split.i6.i:               ; preds = %bb.n, %bb.l
  %.sink.i = phi i64 [ %i.al, %bb.n ], [ 64, %bb.l ]
  %spec.select.sink.i7.i = phi i32 [ %spec.select.i3.i, %bb.n ], [ 16, %bb.l ]
  %i.am = tail call ptr @realloc(ptr noundef nonnull %storemerge4757, i64 noundef %.sink.i) #29
  br label %Vec_IntPushTwo.exit

Vec_IntPushTwo.exit:                              ; preds = %Vec_IntPush.exit.i, %bb.m, %Vec_IntGrow.exit11.sink.split.i6.i
  %storemerge4756 = phi ptr [ %storemerge4757, %Vec_IntPush.exit.i ], [ %storemerge4757, %bb.m ], [ %i.am, %Vec_IntGrow.exit11.sink.split.i6.i ] ; 4 uses
  %spec.select.sink.i.i52 = phi i32 [ %spec.select.sink.i.i53, %Vec_IntPush.exit.i ], [ %spec.select.sink.i.i53, %bb.m ], [ %spec.select.sink.i7.i, %Vec_IntGrow.exit11.sink.split.i6.i ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %storemerge4756, i64 %i.ac
  store i32 %i.p, ptr %i.an, align 4, !tbaa !10
  %i.ao = add nuw nsw i32 %.049, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !42

._crit_edge:                                      ; preds = %Vec_IntPushTwo.exit
  %i.ap = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !36
  store i32 %spec.select.sink.i.i52, ptr %i.d, align 8
  store ptr %storemerge4756, ptr %i.k, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %.preheader48
  %.promoted67 = phi ptr [ %storemerge4756, %._crit_edge ], [ %.promoted54, %.preheader48 ]
  %.promoted63 = phi i32 [ %spec.select.sink.i.i52, %._crit_edge ], [ %.promoted50, %.preheader48 ]
  %.promoted61 = phi i32 [ %i.ap, %._crit_edge ], [ %.promoted, %.preheader48 ]
  %i.aq = icmp eq i32 %.02871, %i.b
  br i1 %i.aq, label %._crit_edge72, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.o
  %i.ar = mul nuw nsw i32 %.02871, %0
  %i.as = sext i32 %.promoted61 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph59, %Vec_IntPushTwo.exit46
  %indvars.iv76 = phi i64 [ %i.as, %.lr.ph59 ], [ %indvars.iv.next77, %Vec_IntPushTwo.exit46 ] ; 10 uses
  %storemerge68 = phi ptr [ %.promoted67, %.lr.ph59 ], [ %storemerge69, %Vec_IntPushTwo.exit46 ] ; 6 uses
  %spec.select.sink.i.i4264 = phi i32 [ %.promoted63, %.lr.ph59 ], [ %spec.select.sink.i.i4265, %Vec_IntPushTwo.exit46 ] ; 3 uses
  %.158 = phi i32 [ 0, %.lr.ph59 ], [ %i.bt, %Vec_IntPushTwo.exit46 ] ; 2 uses
  %i.at = add nuw nsw i32 %.158, %i.ar            ; 2 uses
  %i.au = add nuw nsw i32 %i.at, %0
  %i.av = trunc nsw i64 %indvars.iv76 to i32
  %i.aw = icmp eq i32 %spec.select.sink.i.i4264, %i.av
  br i1 %i.aw, label %bb.q, label %Vec_IntPush.exit.i31

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp slt i64 %indvars.iv76, 16
  br i1 %i.ax, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not9.i.i.i44 = icmp eq ptr %storemerge68, null
  br i1 %.not9.i.i.i44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge68, i64 noundef 64) #29
  br label %Vec_IntPush.exit.i31

bb.t:                                             ; preds = %bb.r
  %i.az = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntPush.exit.i31

bb.u:                                             ; preds = %bb.q
  %i.ba = icmp samesign ult i64 %indvars.iv76, 1073741823
  %indvars.iv76.tr = trunc i64 %indvars.iv76 to i32
  %i.bb = shl i32 %indvars.iv76.tr, 1
  %spec.select.i.i38 = select i1 %i.ba, i32 %i.bb, i32 2147483647 ; 4 uses
  %i.bc = sext i32 %spec.select.i.i38 to i64
  %.not.i9.i.i39 = icmp samesign ult i64 %indvars.iv76, %i.bc
  br i1 %.not.i9.i.i39, label %bb.v, label %Vec_IntPush.exit.i31

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i.i40 = icmp eq ptr %storemerge68, null
  %i.bd = zext nneg i32 %spec.select.i.i38 to i64
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  br i1 %.not9.i10.i.i40, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = tail call ptr @realloc(ptr noundef nonnull %storemerge68, i64 noundef %i.be) #29
  br label %Vec_IntPush.exit.i31

bb.x:                                             ; preds = %bb.v
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.be) #30
  br label %Vec_IntPush.exit.i31

Vec_IntPush.exit.i31:                             ; preds = %bb.t, %bb.s, %bb.x, %bb.w, %bb.u, %bb.p
  %storemerge70 = phi ptr [ %storemerge68, %bb.p ], [ %storemerge68, %bb.u ], [ %i.az, %bb.t ], [ %i.ay, %bb.s ], [ %i.bf, %bb.w ], [ %i.bg, %bb.x ] ; 4 uses
  %spec.select.sink.i.i4266 = phi i32 [ %spec.select.sink.i.i4264, %bb.p ], [ %spec.select.sink.i.i4264, %bb.u ], [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i.i38, %bb.w ], [ %spec.select.i.i38, %bb.x ] ; 3 uses
  %i.bh = add nsw i64 %indvars.iv76, 1            ; 4 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %storemerge70, i64 %indvars.iv76
  store i32 %i.at, ptr %i.bi, align 4, !tbaa !10
  %i.bj = trunc nsw i64 %i.bh to i32
  %i.bk = icmp eq i32 %spec.select.sink.i.i4266, %i.bj
  br i1 %i.bk, label %bb.y, label %Vec_IntPushTwo.exit46

bb.y:                                             ; preds = %Vec_IntPush.exit.i31
  %i.bl = icmp slt i64 %indvars.iv76, 15
  br i1 %i.bl, label %Vec_IntGrow.exit11.sink.split.i6.i34, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = icmp samesign ult i64 %indvars.iv76, 1073741822
  %.tr100 = trunc i64 %i.bh to i32
  %i.bn = shl i32 %.tr100, 1
  %spec.select.i3.i32 = select i1 %i.bm, i32 %i.bn, i32 2147483647 ; 3 uses
  %i.bo = sext i32 %spec.select.i3.i32 to i64
  %.not.i9.i4.i33 = icmp samesign ult i64 %i.bh, %i.bo
  br i1 %.not.i9.i4.i33, label %bb.aa, label %Vec_IntPushTwo.exit46

bb.aa:                                            ; preds = %bb.z
  %i.bp = zext nneg i32 %spec.select.i3.i32 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  br label %Vec_IntGrow.exit11.sink.split.i6.i34

Vec_IntGrow.exit11.sink.split.i6.i34:             ; preds = %bb.aa, %bb.y
  %.sink.i35 = phi i64 [ %i.bq, %bb.aa ], [ 64, %bb.y ]
  %spec.select.sink.i7.i36 = phi i32 [ %spec.select.i3.i32, %bb.aa ], [ 16, %bb.y ]
  %i.br = tail call ptr @realloc(ptr noundef nonnull %storemerge70, i64 noundef %.sink.i35) #29
  br label %Vec_IntPushTwo.exit46

Vec_IntPushTwo.exit46:                            ; preds = %Vec_IntPush.exit.i31, %bb.z, %Vec_IntGrow.exit11.sink.split.i6.i34
  %storemerge69 = phi ptr [ %storemerge70, %Vec_IntPush.exit.i31 ], [ %storemerge70, %bb.z ], [ %i.br, %Vec_IntGrow.exit11.sink.split.i6.i34 ] ; 4 uses
  %spec.select.sink.i.i4265 = phi i32 [ %spec.select.sink.i.i4266, %Vec_IntPush.exit.i31 ], [ %spec.select.sink.i.i4266, %bb.z ], [ %spec.select.sink.i7.i36, %Vec_IntGrow.exit11.sink.split.i6.i34 ] ; 3 uses
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %storemerge69, i64 %i.bh
  store i32 %i.au, ptr %i.bs, align 4, !tbaa !10
  %i.bt = add nuw nsw i32 %.158, 1                ; 2 uses
  %exitcond79.not = icmp eq i32 %i.bt, %0
  br i1 %exitcond79.not, label %bb.ab, label %bb.p, !llvm.loop !43

bb.ab:                                            ; preds = %Vec_IntPushTwo.exit46
  %i.bu = trunc nsw i64 %indvars.iv.next77 to i32 ; 2 uses
  store i32 %i.bu, ptr %i.f, align 4, !tbaa !36
  store i32 %spec.select.sink.i.i4265, ptr %i.d, align 8
  store ptr %storemerge69, ptr %i.k, align 8
  %i.bv = add nuw nsw i32 %.02871, 1
  br label %.preheader48

._crit_edge72:                                    ; preds = %bb.o, %Vec_IntAlloc.exit
  ret ptr %i.d
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_GraphNodeLife(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = shl nsw i32 %1, 1
  %i.b = mul nsw i32 %i.a, %1                     ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 5 uses
  %i.d = add i32 %i.b, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !38
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !39
  store i32 %i.b, ptr %i.e, align 4, !tbaa !36
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #30 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !39
  store i32 %i.b, ptr %i.e, align 4, !tbaa !36
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %i.b to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 -1, i64 %i.l, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val27 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 4
  %.val34 = load i32, ptr %i.m, align 4, !tbaa !36 ; 2 uses
  %i.n = icmp sgt i32 %.val34, 1
  br i1 %i.n, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %Vec_IntStartFull.exit
  %i.o = getelementptr i8, ptr %0, i64 8
  %.val29 = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.p = zext nneg i32 %.val34 to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %._crit_edge38
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %._crit_edge38 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = shl nsw i32 %i.r, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %.val27, i64 %i.v ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.z = lshr exact i64 %indvars.iv, 1
  %i.aa = trunc nuw nsw i64 %i.z to i32
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.ab = shl nsw i32 %i.t, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %.val27, i64 %i.ac ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = icmp eq i32 %i.ae, -1
  %i.ag = lshr exact i64 %indvars.iv, 1
  %i.ah = trunc nuw nsw i64 %i.ag to i32          ; 3 uses
  br i1 %i.af, label %bb.e, label %._crit_edge38

bb.e:                                             ; preds = %bb.d
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !10
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %bb.d, %bb.e
  %i.ai = getelementptr i8, ptr %i.w, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !10
  %i.aj = getelementptr i8, ptr %i.ad, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = or disjoint i64 %indvars.iv.next, 1
  %i.al = icmp samesign ult i64 %i.ak, %i.p
  br i1 %i.al, label %.critedge, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %._crit_edge38, %Vec_IntStartFull.exit
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_GraphFrontiers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val29 = load i32, ptr %i.a, align 4, !tbaa !36 ; 2 uses
  %i.b = sdiv i32 %.val29, 2                      ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 7 uses
  %i.d = add nsw i32 %i.b, -1
  %or.cond.i = icmp ult i32 %i.d, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 0, ptr %i.e, align 4, !tbaa !45
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !47
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_WecAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 16) #28
  br label %Vec_WecAlloc.exit

Vec_WecAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr i8, ptr %1, i64 4
  %.val28 = load i32, ptr %i.j, align 4, !tbaa !36
  %i.k = sdiv i32 %.val28, 2                      ; 2 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 8 uses
  %i.m = add nsw i32 %i.k, -1
  %or.cond.i33 = icmp ult i32 %i.m, 15
  %spec.store.select.i34 = select i1 %or.cond.i33, i32 16, i32 %i.k ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 9 uses
  store i32 0, ptr %i.n, align 4, !tbaa !36
  store i32 %spec.store.select.i34, ptr %i.l, align 8, !tbaa !38
  %.not.i35 = icmp eq i32 %spec.store.select.i34, 0
  br i1 %.not.i35, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Vec_WecAlloc.exit
  %i.o = sext i32 %spec.store.select.i34 to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #30
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Vec_WecAlloc.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %Vec_WecAlloc.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 15 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !39
  br i1 %.not.i, label %bb.d, label %Vec_WecPushLevel.exit

bb.d:                                             ; preds = %Vec_IntAlloc.exit
  %.not13.i.i = icmp eq ptr %i.h, null
  br i1 %.not13.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.h, i64 noundef 256) #29
  br label %Vec_WecGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #30
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 3 uses
  store ptr %i.v, ptr %i.i, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.v, i8 0, i64 256, i1 false)
end_hunk_0
begin_hunk_1_@Abc_EnumerateFrontierTest:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.g
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !99

._crit_edge.i.i:                                  ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.c, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i) #27
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.c) #27
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %Vec_WecFree.exit
  tail call void @free(ptr noundef nonnull %i.l) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WecFree.exit, %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #27
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i12, label %Vec_IntFree.exit13, label %bb.e

bb.e:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.n) #27
  br label %Vec_IntFree.exit13

Vec_IntFree.exit13:                               ; preds = %Vec_IntFree.exit, %bb.e
  tail call void @free(ptr noundef nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind uwtable
define double @Abc_Word2Double(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.067 = phi double [ 0.000000e+00, %bb.a ], [ %.1.1, %bb.f ] ; 2 uses
  %i.a = shl nuw i64 1, %indvars.iv
  %i.b = and i64 %i.a, %0
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = uitofp nneg i32 %i.c to double
  %exp2 = tail call double @exp2(double %i.d) #27
  %i.e = fadd double %.067, %exp2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi double [ %i.e, %bb.c ], [ %.067, %bb.b ] ; 2 uses
  %i.f = shl nuw i64 2, %indvars.iv
  %i.g = and i64 %i.f, %0
  %.not.1 = icmp eq i64 %i.g, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = trunc i64 %indvars.iv to i32
  %i.i = or disjoint i32 %i.h, 1
  %i.j = uitofp nneg i32 %i.i to double
  %exp2.1 = tail call double @exp2(double %i.j) #27
  %i.k = fadd double %.1, %exp2.1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi double [ %i.k, %bb.e ], [ %.1, %bb.d ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %bb.g, label %bb.b, !llvm.loop !108

bb.g:                                             ; preds = %bb.f
  ret double %.1.1
}

; Function Attrs: nounwind uwtable
define void @Abc_GraphSolve(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #27 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 100, ptr %i.b, align 8, !tbaa !38
  %i.d = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #30 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val102 = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %.val102, i64 4
  %.val102.val = load i32, ptr %i.g, align 4, !tbaa !36 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !109
  %i.j = sub i32 %i.i, %.val102.val
  %i.k = tail call ptr @sat_solver_new() #27      ; 7 uses
  %i.l = load i32, ptr %i.h, align 8, !tbaa !109
  tail call void @sat_solver_setnvars(ptr noundef %i.k, i32 noundef %i.l) #27
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !114
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.v = tail call i32 @sat_solver_addclause(ptr noundef %i.k, ptr noundef %i.s, ptr noundef %i.u) #27 ; 0 uses
  %i.w = load i32, ptr %i.m, align 8, !tbaa !114
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !36
  %i.z = icmp sgt i32 %.val102.val, 0
  br i1 %i.z, label %.lr.ph138, label %.preheader134

..preheader134_crit_edge:                         ; preds = %Vec_IntPush.exit
  %i.aa = trunc nsw i64 %indvars.iv.next158 to i32 ; 2 uses
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !36
  store i32 %spec.select.sink.i140, ptr %i.b, align 8
  store ptr %storemerge144, ptr %i.e, align 8
  br label %.preheader134

.preheader134:                                    ; preds = %..preheader134_crit_edge, %._crit_edge
  %.val94 = phi i32 [ %i.aa, %..preheader134_crit_edge ], [ 0, %._crit_edge ] ; 10 uses
  %.val101 = phi ptr [ %storemerge144, %..preheader134_crit_edge ], [ %i.d, %._crit_edge ] ; 11 uses
  %i.ab = icmp sgt i32 %.val94, 0
  %i.ac = sext i32 %.val94 to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.val101, i64 %i.ac ; 2 uses
  %wide.trip.count = zext i32 %.val94 to i64      ; 7 uses
  %wide.trip.count167 = zext nneg i32 %.val94 to i64
  %wide.trip.count172 = zext nneg i32 %.val94 to i64
  %i.ae = tail call i32 @sat_solver_solve_lexsat(ptr noundef %i.k, ptr noundef %.val101, i32 noundef %.val94) #27
  %.not180 = icmp eq i32 %i.ae, 1
  br i1 %.not180, label %.preheader133.preheader, label %.thread

.preheader133.preheader:                          ; preds = %.preheader134
  %min.iters.check206 = icmp ult i32 %.val94, 8
  %n.vec208 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count
  %min.iters.check194 = icmp ult i32 %.val94, 8
  %n.vec196 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n203 = icmp eq i64 %n.vec196, %wide.trip.count
  %min.iters.check = icmp ult i32 %.val94, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.val102.val, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader133

.lr.ph138:                                        ; preds = %._crit_edge, %Vec_IntPush.exit
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %Vec_IntPush.exit ], [ 0, %._crit_edge ] ; 7 uses
  %storemerge143 = phi ptr [ %storemerge144, %Vec_IntPush.exit ], [ %i.d, %._crit_edge ] ; 6 uses
  %spec.select.sink.i141 = phi i32 [ %spec.select.sink.i140, %Vec_IntPush.exit ], [ 100, %._crit_edge ] ; 3 uses
  %.083136 = phi i32 [ %i.av, %Vec_IntPush.exit ], [ 0, %._crit_edge ] ; 2 uses
  %i.af = add nsw i32 %i.j, %.083136
  %i.ag = shl nsw i32 %i.af, 1
  %i.ah = or disjoint i32 %i.ag, 1
  %i.ai = trunc nsw i64 %indvars.iv157 to i32
  %i.aj = icmp eq i32 %spec.select.sink.i141, %i.ai
  br i1 %i.aj, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %.lr.ph138
  %i.ak = icmp samesign ult i64 %indvars.iv157, 16
  br i1 %i.ak, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge143, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge143, i64 noundef 64) #29
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.am = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.an = icmp samesign ult i64 %indvars.iv157, 1073741823
  %indvars.iv157.tr = trunc i64 %indvars.iv157 to i32
  %i.ao = shl i32 %indvars.iv157.tr, 1
  %spec.select.i = select i1 %i.an, i32 %i.ao, i32 2147483647 ; 4 uses
  %i.ap = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv157, %i.ap
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge143, null
  %i.aq = zext nneg i32 %spec.select.i to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = tail call ptr @realloc(ptr noundef nonnull %storemerge143, i64 noundef %i.ar) #29
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.ar) #30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %.lr.ph138, %bb.g
  %storemerge144 = phi ptr [ %storemerge143, %.lr.ph138 ], [ %storemerge143, %bb.g ], [ %i.am, %bb.f ], [ %i.al, %bb.e ], [ %i.as, %bb.i ], [ %i.at, %bb.j ] ; 4 uses
  %spec.select.sink.i140 = phi i32 [ %spec.select.sink.i141, %.lr.ph138 ], [ %spec.select.sink.i141, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %storemerge144, i64 %indvars.iv157
  store i32 %i.ah, ptr %i.au, align 4, !tbaa !10
  %i.av = add nuw nsw i32 %.083136, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %.val102.val
  br i1 %exitcond.not, label %..preheader134_crit_edge, label %.lr.ph138, !llvm.loop !117

bb.k:                                             ; preds = %.critedge2._crit_edge
  %i.aw = tail call i32 @sat_solver_solve_lexsat(ptr noundef %i.k, ptr noundef %.val101, i32 noundef %.val94) #27
  %.not = icmp eq i32 %i.aw, 1
  br i1 %.not, label %.preheader133, label %.thread, !llvm.loop !118

.preheader133:                                    ; preds = %.preheader133.preheader, %bb.k
  %.188152183 = phi i32 [ %i.cs, %bb.k ], [ 0, %.preheader133.preheader ]
  %.079153182 = phi i64 [ %spec.select, %bb.k ], [ 0, %.preheader133.preheader ] ; 4 uses
  %.078154181 = phi i64 [ %.1.lcssa, %bb.k ], [ 0, %.preheader133.preheader ] ; 2 uses
  br i1 %i.ab, label %.lr.ph146.preheader, label %.critedge.thread

.lr.ph146.preheader:                              ; preds = %.preheader133
  br i1 %min.iters.check206, label %.lr.ph146.preheader218, label %vector.body209

vector.body209:                                   ; preds = %.lr.ph146.preheader, %vector.body209
  %index210 = phi i64 [ %index.next213, %vector.body209 ], [ 0, %.lr.ph146.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val101, i64 %index210 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load211 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !10
  %wide.load212 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !10
  %i.az = xor <4 x i32> %wide.load211, splat (i32 1)
  %i.ba = xor <4 x i32> %wide.load212, splat (i32 1)
  store <4 x i32> %i.az, ptr %i.ax, align 4, !tbaa !10
  store <4 x i32> %i.ba, ptr %i.ay, align 4, !tbaa !10
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.bb, label %middle.block214, label %vector.body209, !llvm.loop !119

middle.block214:                                  ; preds = %vector.body209
  br i1 %cmp.n215, label %.critedge, label %.lr.ph146.preheader218

.lr.ph146.preheader218:                           ; preds = %.lr.ph146.preheader, %middle.block214
  %indvars.iv160.ph = phi i64 [ 0, %.lr.ph146.preheader ], [ %n.vec208, %middle.block214 ]
  br label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146.preheader218, %.lr.ph146
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %.lr.ph146 ], [ %indvars.iv160.ph, %.lr.ph146.preheader218 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val101, i64 %indvars.iv160 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10
  %i.be = xor i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !10
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count
  br i1 %exitcond163.not, label %.critedge, label %.lr.ph146, !llvm.loop !120

.critedge:                                        ; preds = %.lr.ph146, %middle.block214
  %i.bf = tail call i32 @sat_solver_addclause(ptr noundef %i.k, ptr noundef nonnull %.val101, ptr noundef nonnull %i.ad) #27
  %.not90 = icmp eq i32 %i.bf, 0
  br i1 %.not90, label %.thread, label %.preheader

.critedge.thread:                                 ; preds = %.preheader133
  %i.bg = tail call i32 @sat_solver_addclause(ptr noundef %i.k, ptr noundef %.val101, ptr noundef %i.ad) #27
  %.not90179 = icmp eq i32 %i.bg, 0
  br i1 %.not90179, label %.thread, label %.critedge2._crit_edge

.preheader:                                       ; preds = %.critedge
  br i1 %min.iters.check194, label %.lr.ph148.preheader, label %vector.body197

vector.body197:                                   ; preds = %.preheader, %vector.body197
  %index198 = phi i64 [ %index.next201, %vector.body197 ], [ 0, %.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val101, i64 %index198 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load199 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !10
  %wide.load200 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !10
  %i.bj = xor <4 x i32> %wide.load199, splat (i32 1)
  %i.bk = xor <4 x i32> %wide.load200, splat (i32 1)
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !10
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !10
  %index.next201 = add nuw i64 %index198, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.bl, label %middle.block202, label %vector.body197, !llvm.loop !121

middle.block202:                                  ; preds = %vector.body197
  br i1 %cmp.n203, label %.critedge2.preheader, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %.preheader, %middle.block202
  %indvars.iv164.ph = phi i64 [ 0, %.preheader ], [ %n.vec196, %middle.block202 ]
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %.lr.ph148
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.lr.ph148 ], [ %indvars.iv164.ph, %.lr.ph148.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val101, i64 %indvars.iv164 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10
  %i.bo = xor i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !10
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %.critedge2.preheader, label %.lr.ph148, !llvm.loop !122

.critedge2.preheader:                             ; preds = %.lr.ph148, %middle.block202
  br i1 %min.iters.check, label %.critedge2.preheader217, label %vector.body

vector.body:                                      ; preds = %.critedge2.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.critedge2.preheader ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ce, %vector.body ], [ zeroinitializer, %.critedge2.preheader ]
  %vec.phi191 = phi <2 x i64> [ %i.cf, %vector.body ], [ zeroinitializer, %.critedge2.preheader ]
  %vec.ind = phi <2 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1>, %.critedge2.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val101, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %wide.load = load <2 x i32>, ptr %i.bp, align 4, !tbaa !10
  %wide.load192 = load <2 x i32>, ptr %i.bq, align 4, !tbaa !10
  %i.br = and <2 x i32> %wide.load, splat (i32 1)
  %i.bs = and <2 x i32> %wide.load192, splat (i32 1)
  %i.bt = icmp eq <2 x i32> %i.br, zeroinitializer
  %i.bu = icmp eq <2 x i32> %i.bs, zeroinitializer
  %i.bv = xor <2 x i32> %vec.ind, splat (i32 -1)
  %i.bw = add <2 x i32> %broadcast.splat, %i.bv
  %reass.sub = sub <2 x i32> %broadcast.splat, %vec.ind
  %i.bx = add <2 x i32> %reass.sub, splat (i32 -3)
  %i.by = zext nneg <2 x i32> %i.bw to <2 x i64>
  %i.bz = zext nneg <2 x i32> %i.bx to <2 x i64>
  %i.ca = shl nuw <2 x i64> splat (i64 1), %i.by
  %i.cb = shl nuw <2 x i64> splat (i64 1), %i.bz
  %i.cc = select <2 x i1> %i.bt, <2 x i64> %i.ca, <2 x i64> zeroinitializer
  %i.cd = select <2 x i1> %i.bu, <2 x i64> %i.cb, <2 x i64> zeroinitializer
  %i.ce = or <2 x i64> %i.cc, %vec.phi            ; 2 uses
  %i.cf = or <2 x i64> %i.cd, %vec.phi191         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.critedge2._crit_edge, label %.critedge2.preheader217

.critedge2.preheader217:                          ; preds = %.critedge2.preheader, %middle.block
  %indvars.iv169.ph = phi i64 [ 0, %.critedge2.preheader ], [ %n.vec, %middle.block ]
  %.1150.ph = phi i64 [ 0, %.critedge2.preheader ], [ %i.ch, %middle.block ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.preheader217, %.critedge2
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %.critedge2 ], [ %indvars.iv169.ph, %.critedge2.preheader217 ] ; 3 uses
  %.1150 = phi i64 [ %.2, %.critedge2 ], [ %.1150.ph, %.critedge2.preheader217 ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val101, i64 %indvars.iv169
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !10
  %i.ck = and i32 %i.cj, 1
  %.not91 = icmp eq i32 %i.ck, 0
  %i.cl = trunc nuw nsw i64 %indvars.iv169 to i32
  %i.cm = xor i32 %i.cl, -1
  %i.cn = add i32 %.val102.val, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = select i1 %.not91, i64 %i.cp, i64 0
  %.2 = or i64 %i.cq, %.1150                      ; 2 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.critedge2._crit_edge, label %.critedge2, !llvm.loop !124

.critedge2._crit_edge:                            ; preds = %.critedge2, %middle.block, %.critedge.thread
  %.1.lcssa = phi i64 [ 0, %.critedge.thread ], [ %i.ch, %middle.block ], [ %.2, %.critedge2 ] ; 4 uses
  %i.cr = icmp eq i64 %.079153182, 0
  %spec.select = select i1 %i.cr, i64 %.1.lcssa, i64 %.079153182 ; 3 uses
  %i.cs = add nuw nsw i32 %.188152183, 1          ; 2 uses
  %exitcond174.not = icmp eq i32 %i.cs, 1000
  br i1 %exitcond174.not, label %.critedge2._crit_edge..thread_crit_edge, label %bb.k, !llvm.loop !118

.critedge2._crit_edge..thread_crit_edge:          ; preds = %.critedge2._crit_edge
  br label %.thread, !llvm.loop !118

.thread:                                          ; preds = %bb.k, %.critedge, %.critedge.thread, %.critedge2._crit_edge..thread_crit_edge, %.preheader134
  %.079.lcssa = phi i64 [ %spec.select, %.critedge2._crit_edge..thread_crit_edge ], [ 0, %.preheader134 ], [ %spec.select, %bb.k ], [ %.079153182, %.critedge ], [ %.079153182, %.critedge.thread ] ; 3 uses
  %.078.lcssa = phi i64 [ %.1.lcssa, %.critedge2._crit_edge..thread_crit_edge ], [ 0, %.preheader134 ], [ %.1.lcssa, %bb.k ], [ %.078154181, %.critedge ], [ %.078154181, %.critedge.thread ]
  %i.ct = sub i64 %.078.lcssa, %.079.lcssa        ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.thread
  %indvars.iv.i = phi i64 [ 0, %.thread ], [ %indvars.iv.next.i.1, %bb.p ] ; 5 uses
  %.067.i = phi double [ 0.000000e+00, %.thread ], [ %.1.i.1, %bb.p ] ; 2 uses
  %i.cu = shl nuw i64 1, %indvars.iv.i
end_hunk_1
