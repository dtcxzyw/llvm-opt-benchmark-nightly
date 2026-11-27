Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/island?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"contact counts\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"joint counts\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ranks\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"root map\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"component body counts\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"component contact counts\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"component joint counts\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"island ids\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @b2CreateIsland(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.b = tail call i32 @b2AllocId(ptr noundef nonnull %i.a) #6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !120
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2092 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !121  ; 4 uses
  %.not = icmp slt i32 %i.b, %i.h
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !65  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = shl nsw i32 %i.h, 6
  %i.j = icmp eq i32 %i.h, 0
  %i.k = shl nsw i32 %i.h, 1
  %spec.select = select i1 %i.j, i32 8, i32 %i.k  ; 2 uses
  %i.l = shl nsw i32 %spec.select, 6
  %i.m = sext i32 %i.i to i64
  %i.n = sext i32 %i.l to i64
  %i.o = tail call ptr @b2GrowAlloc(ptr noundef %.pre, i64 noundef %i.m, i64 noundef %i.n) #6 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !65
  store i32 %spec.select, ptr %i.g, align 4, !tbaa !121
  %.pre45 = load i32, ptr %i.d, align 8, !tbaa !120
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %.pre45, %bb.c ], [ %i.b, %bb.b ]
  %i.q = phi ptr [ %i.o, %bb.c ], [ %.pre, %bb.b ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [64 x i8], ptr %i.q, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 64, i1 false)
  %i.t = load i32, ptr %i.d, align 8, !tbaa !120
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.d, align 8, !tbaa !120
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds [88 x i8], ptr %i.w, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.aa = sext i32 %i.b to i64
  %i.ab = getelementptr inbounds [64 x i8], ptr %i.z, i64 %i.aa ; 5 uses
  store i32 %1, ptr %i.ab, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.b, ptr %i.ag, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 76 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ah, i8 0, i64 52, i1 false)
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !87 ; 4 uses
  %.not.i = icmp slt i32 %i.aj, %i.ak
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !122 ; 2 uses
  br i1 %.not.i, label %b2EmplaceHelper.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = shl nsw i32 %i.ak, 2
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = shl nsw i32 %i.ak, 1
  %i.ao = select i1 %i.am, i32 8, i32 %i.an       ; 2 uses
  %i.ap = shl nsw i32 %i.ao, 2
  %i.aq = sext i32 %i.al to i64
  %i.ar = sext i32 %i.ap to i64
  %i.as = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i, i64 noundef %i.aq, i64 noundef %i.ar) #6 ; 2 uses
  store ptr %i.as, ptr %i.ac, align 8, !tbaa !122
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !87
  %.pre17.i = load i32, ptr %i.ad, align 8, !tbaa !87
  br label %b2EmplaceHelper.exit

b2EmplaceHelper.exit:                             ; preds = %bb.e, %bb.f
  %i.at = phi i32 [ %.pre17.i, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.au = phi ptr [ %i.as, %bb.f ], [ %.pre.i, %bb.e ]
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %i.ad, align 8, !tbaa !87
  %i.aw = shl nsw i32 %i.at, 2
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  store i32 %i.b, ptr %i.ay, align 4, !tbaa !89
  ret ptr %i.ab
}

declare i32 @b2AllocId(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @b2GrowAlloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define hidden void @b2DestroyIsland(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2448 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !90
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.a, align 8, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.f ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.j = load i32, ptr %i.g, align 8, !tbaa !72
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [88 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !85   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !84
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr [4 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89   ; 2 uses
  %i.w = sext i32 %i.n to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.w
  store i32 %i.v, ptr %i.x, align 4, !tbaa !87
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.n, ptr %i.aa, align 4, !tbaa !85
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !84
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.p, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !91
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !92
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @b2Free(ptr noundef %i.ae, i64 noundef %i.ai) #6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !94
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.an, 12
  tail call void @b2Free(ptr noundef %i.ak, i64 noundef %i.ao) #6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !96
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, 12
  tail call void @b2Free(ptr noundef %i.aq, i64 noundef %i.au) #6
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 4294967295, ptr %2, align 8
  store i64 -1, ptr %i.g, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @b2FreeId(ptr noundef nonnull %i.av, i32 noundef %1) #6
  ret void
}

declare void @b2Free(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @b2FreeId(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @b2LinkContact(ptr noundef %0, ptr nofree noundef captures(none) initializes((24, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 2 uses
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = sext i32 %i.c to i64
  %i.i = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !99
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !99   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 2
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @b2WakeSolverSet(ptr noundef nonnull %0, i32 noundef %i.n) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !99
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @b2WakeSolverSet(ptr noundef nonnull %0, i32 noundef %i.s) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !100
  %i.y = tail call fastcc i32 @b2MergeIslands(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %i.x) ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 2080
  %.val = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !103 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !126
  %i.aj = load i32, ptr %1, align 4, !tbaa !125
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 44 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !94 ; 4 uses
  %.not.i = icmp slt i32 %i.af, %i.am
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 2 uses
  br i1 %.not.i, label %b2AddContactToIsland.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = mul nsw i32 %i.am, 12
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = shl nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.ao, i32 8, i32 %i.ap ; 2 uses
  %i.aq = mul nsw i32 %spec.select.i, 12
  %i.ar = sext i32 %i.an to i64
  %i.as = sext i32 %i.aq to i64
  %i.at = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i, i64 noundef %i.ar, i64 noundef %i.as) #6 ; 2 uses
  store ptr %i.at, ptr %i.ad, align 8, !tbaa !93
  store i32 %spec.select.i, ptr %i.al, align 4, !tbaa !94
  %.pre1.i = load i32, ptr %i.ae, align 8, !tbaa !103
  br label %b2AddContactToIsland.exit

b2AddContactToIsland.exit:                        ; preds = %bb.g, %bb.h
  %i.au = phi i32 [ %.pre1.i, %bb.h ], [ %i.af, %bb.g ]
  %i.av = phi ptr [ %i.at, %bb.h ], [ %.pre.i, %bb.g ]
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [12 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  store i32 %i.ai, ptr %i.ax, align 4, !tbaa !87
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !87
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ae, align 8, !tbaa !103
  ret void
}

declare void @b2WakeSolverSet(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @b2MergeIslands(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, -1
  br i1 %i.c, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105
  %.not = icmp slt i32 %i.k, %i.m                 ; 2 uses
  %. = select i1 %.not, ptr %i.i, ptr %i.g        ; 11 uses
  %.174 = select i1 %.not, ptr %i.g, ptr %i.i     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %., i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !86   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %., i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %., i64 28 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !92   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %., i64 24 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !105  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.174, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.174, i64 24 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !105  ; 2 uses
  %i.x = add nsw i32 %i.w, %i.t                   ; 2 uses
  %i.y = icmp slt i32 %i.r, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = shl i32 %i.r, 2
  %i.aa = shl i32 %i.x, 2
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !91
  %i.ac = sext i32 %i.z to i64
  %i.ad = sext i32 %i.aa to i64
  %i.ae = tail call ptr @b2GrowAlloc(ptr noundef %i.ab, i64 noundef %i.ac, i64 noundef %i.ad) #6
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !91
  %i.af = load i32, ptr %i.s, align 8, !tbaa !105 ; 2 uses
  %i.ag = load i32, ptr %i.v, align 8, !tbaa !105 ; 2 uses
  %i.ah = add nsw i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.q, align 4, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi i32 [ %i.af, %bb.e ], [ %i.t, %bb.d ]
  %i.aj = phi i32 [ %i.ag, %bb.e ], [ %i.w, %bb.d ]
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %.pre.pre = load ptr, ptr %i.p, align 8, !tbaa !91
  br label %bb.g

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.174, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.174, i64 40 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %.loopexit177

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.pre = phi ptr [ %.pre.pre, %.lr.ph ], [ %.pre197, %bb.i ] ; 2 uses
  %i.aq = phi i32 [ %i.ai, %.lr.ph ], [ %i.bl, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !91
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !87 ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [104 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  store i32 %i.o, ptr %i.ax, align 4, !tbaa !100
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i32 %i.aq, ptr %i.ay, align 8, !tbaa !106
  %i.az = load i32, ptr %i.q, align 4, !tbaa !92  ; 4 uses
  %.not173 = icmp slt i32 %i.aq, %i.az
end_hunk_0
begin_hunk_1_@b2MergeIslands:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ew = phi i32 [ %.pre196, %bb.r ], [ %i.ef, %bb.q ]
  %i.ex = phi ptr [ %i.ev, %bb.r ], [ %.pre195, %bb.q ]
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds [12 x i8], ptr %i.ex, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ez, ptr noundef nonnull align 4 dereferenceable(12) %i.eh, i64 12, i1 false), !tbaa.struct !111
  %i.fa = load i32, ptr %i.dp, align 8, !tbaa !112
  %i.fb = add nsw i32 %i.fa, 1                    ; 2 uses
  store i32 %i.fb, ptr %i.dp, align 8, !tbaa !112
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.fc = load i32, ptr %i.dj, align 8, !tbaa !112
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next190, %i.fd
  br i1 %i.fe, label %bb.q, label %.loopexit, !llvm.loop !129

.loopexit:                                        ; preds = %bb.s, %bb.p, %.loopexit177
  %i.ff = getelementptr inbounds nuw i8, ptr %.174, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !119
  %i.fh = getelementptr inbounds nuw i8, ptr %., i64 12 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !119
  %i.fj = add nsw i32 %i.fi, %i.fg
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !119
  %i.fk = getelementptr inbounds nuw i8, ptr %.174, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !86
  tail call void @b2DestroyIsland(ptr noundef nonnull %0, i32 noundef %i.fl)
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
  %.0 = phi i32 [ %i.o, %.loopexit ], [ %1, %bb.a ], [ %2, %bb.b ], [ %1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2UnlinkContact(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [64 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !104  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !87
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !87
  %.not.i = icmp eq i32 %i.h, %i.m
  br i1 %.not.i, label %b2RemoveHelper.exit.thread, label %b2RemoveHelper.exit

b2RemoveHelper.exit:                              ; preds = %bb.a
  %i.n = mul nsw i32 %i.h, 12
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o
  %i.q = mul nsw i32 %i.m, 12
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(12) %i.s, i64 12, i1 false)
  %i.t = load i32, ptr %i.k, align 8, !tbaa !87
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %b2RemoveHelper.exit.thread, label %bb.b

bb.b:                                             ; preds = %b2RemoveHelper.exit
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.v = sext i32 %i.h to i64
  %i.w = getelementptr inbounds [12 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = load i32, ptr %i.w, align 4, !tbaa !110
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [64 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  store i32 %i.h, ptr %i.ac, align 4, !tbaa !104
  br label %b2RemoveHelper.exit.thread

b2RemoveHelper.exit.thread:                       ; preds = %bb.a, %bb.b, %b2RemoveHelper.exit
  store i32 -1, ptr %i.a, align 4, !tbaa !102
  store i32 -1, ptr %i.g, align 4, !tbaa !104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !119
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b2ValidateIsland(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2LinkJoint(ptr noundef %0, ptr nofree noundef captures(none) initializes((48, 56)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !131
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !131
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99   ; 3 uses
  %i.m = icmp eq i32 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99   ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %.thread20.sink.split, label %.thread20

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %i.o, 2
  %i.r = icmp sgt i32 %i.l, 2
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %.thread20.sink.split, label %.thread20

.thread20.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.o, %bb.b ], [ %i.l, %bb.c ]
  tail call void @b2WakeSolverSet(ptr noundef nonnull %0, i32 noundef %.sink) #6
  br label %.thread20

.thread20:                                        ; preds = %.thread20.sink.split, %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !100
  %i.w = tail call fastcc i32 @b2MergeIslands(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.v) ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 2080
  %.val = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.w, ptr %i.aa, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !112 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !132
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !131
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !131
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 60 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !96 ; 4 uses
  %.not.i = icmp slt i32 %i.ad, %i.ak
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  br i1 %.not.i, label %b2AddJointToIsland.exit, label %bb.d

bb.d:                                             ; preds = %.thread20
  %i.al = mul nsw i32 %i.ak, 12
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = shl nsw i32 %i.ak, 1
  %spec.select.i = select i1 %i.am, i32 8, i32 %i.an ; 2 uses
  %i.ao = mul nsw i32 %spec.select.i, 12
  %i.ap = sext i32 %i.al to i64
  %i.aq = sext i32 %i.ao to i64
  %i.ar = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i, i64 noundef %i.ap, i64 noundef %i.aq) #6 ; 2 uses
  store ptr %i.ar, ptr %i.ab, align 8, !tbaa !95
  store i32 %spec.select.i, ptr %i.aj, align 4, !tbaa !96
  %.pre1.i = load i32, ptr %i.ac, align 8, !tbaa !112
  br label %b2AddJointToIsland.exit

b2AddJointToIsland.exit:                          ; preds = %.thread20, %bb.d
  %i.as = phi i32 [ %.pre1.i, %bb.d ], [ %i.ad, %.thread20 ]
  %i.at = phi ptr [ %i.ar, %bb.d ], [ %.pre.i, %.thread20 ]
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [12 x i8], ptr %i.at, i64 %i.au ; 3 uses
  store i32 %i.ag, ptr %i.av, align 4, !tbaa !87
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !87
  %i.aw = load i32, ptr %i.ac, align 8, !tbaa !112
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ac, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2UnlinkJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !118  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !87
  %i.n = add nsw i32 %i.m, -1                     ; 3 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !87
  %.not.i = icmp eq i32 %i.i, %i.n
  br i1 %.not.i, label %b2RemoveHelper.exit.thread, label %b2RemoveHelper.exit

b2RemoveHelper.exit:                              ; preds = %bb.b
  %i.o = mul nsw i32 %i.i, 12
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p
  %i.r = mul nsw i32 %i.n, 12
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) %i.t, i64 12, i1 false)
  %i.u = load i32, ptr %i.l, align 8, !tbaa !87
  %.not = icmp eq i32 %i.u, -1
  br i1 %.not, label %b2RemoveHelper.exit.thread, label %bb.c

bb.c:                                             ; preds = %b2RemoveHelper.exit
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.w = sext i32 %i.i to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !115
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [72 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  store i32 %i.i, ptr %i.ad, align 4, !tbaa !118
  br label %b2RemoveHelper.exit.thread

b2RemoveHelper.exit.thread:                       ; preds = %bb.b, %bb.c, %b2RemoveHelper.exit
  store i64 -1, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !119
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %b2RemoveHelper.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SplitIsland(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105  ; 8 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !93   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !112  ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !95   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96
  %i.w = shl i32 %i.g, 2                          ; 5 uses
  %i.x = tail call ptr @b2StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str) #6 ; 39 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 3 uses
  %i.z = tail call ptr @b2StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.1) #6 ; 12 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 3 uses
  %i.ab = tail call ptr @b2StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.2) #6 ; 12 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64              ; 3 uses
  %i.ad = tail call ptr @b2StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.3) #6 ; 10 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 3 uses
  %i.af = icmp sgt i32 %i.g, 0                    ; 4 uses
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.g, 40
  br i1 %min.iters.check, label %.lr.ph.preheader642, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ag = sub i64 %i.y, %i.ae
  %diff.check = icmp ugt i64 %i.ag, -32
  %i.ah = sub i64 %i.y, %i.aa
  %diff.check622 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check622
  %i.ai = sub i64 %i.y, %i.ac
  %diff.check623 = icmp ugt i64 %i.ai, -32
  %conflict.rdx624 = or i1 %conflict.rdx, %diff.check623
  %i.aj = sub i64 %i.ae, %i.aa
  %diff.check625 = icmp ugt i64 %i.aj, -32
  %conflict.rdx626 = or i1 %conflict.rdx624, %diff.check625
  %i.ak = sub i64 %i.ae, %i.ac
  %diff.check627 = icmp ugt i64 %i.ak, -32
  %conflict.rdx628 = or i1 %conflict.rdx626, %diff.check627
  %i.al = sub i64 %i.aa, %i.ac
  %diff.check629 = icmp ugt i64 %i.al, -32
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  br i1 %conflict.rdx630, label %.lr.ph.preheader642, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %vec.ind, ptr %i.am, align 4, !tbaa !87
  store <4 x i32> %step.add, ptr %i.an, align 4, !tbaa !87
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !87
  store <4 x i32> zeroinitializer, ptr %i.ap, align 4, !tbaa !87
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !87
  store <4 x i32> zeroinitializer, ptr %i.ar, align 4, !tbaa !87
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !87
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader642

.lr.ph.preheader642:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader642
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.ph
  %i.aw = trunc nuw nsw i64 %indvars.iv.ph to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !87
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.ph
  store i32 0, ptr %i.ax, align 4, !tbaa !87
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.ph
  store i32 0, ptr %i.ay, align 4, !tbaa !87
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.ph
  store i32 0, ptr %i.az, align 4, !tbaa !87
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader642
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader642 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ba = add nsw i64 %wide.trip.count, -1
  %i.bb = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !97 ; 4 uses
  %i.be = icmp sgt i32 %i.m, 0                    ; 2 uses
  br i1 %i.be, label %.lr.ph445.preheader, label %.preheader432

.lr.ph445.preheader:                              ; preds = %._crit_edge
  %wide.trip.count487 = zext nneg i32 %i.m to i64
  br label %.lr.ph445

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !87
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 0, ptr %i.bh, align 4, !tbaa !87
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 0, ptr %i.bi, align 4, !tbaa !87
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 0, ptr %i.bj, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.bl = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !87
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  store i32 0, ptr %i.bm, align 4, !tbaa !87
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  store i32 0, ptr %i.bn, align 4, !tbaa !87
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  store i32 0, ptr %i.bo, align 4, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !134

.preheader432:                                    ; preds = %b2IslandFindParent.exit, %._crit_edge
  %i.bp = icmp sgt i32 %i.s, 0                    ; 2 uses
  br i1 %i.bp, label %.lr.ph447.preheader, label %._crit_edge448

.lr.ph447.preheader:                              ; preds = %.preheader432
  %wide.trip.count492 = zext nneg i32 %i.s to i64
  br label %.lr.ph447

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %b2IslandFindParent.exit
  %indvars.iv484 = phi i64 [ 0, %.lr.ph445.preheader ], [ %indvars.iv.next485, %b2IslandFindParent.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv484 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !146
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !147
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [104 x i8], ptr %i.bd, i64 %i.bv
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds [104 x i8], ptr %i.bd, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !106 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !106 ; 5 uses
  %i.cd = icmp ne i32 %i.ca, -1                   ; 2 uses
  %i.ce = icmp ne i32 %i.cc, -1
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph445
  %i.cf = sext i32 %i.ca to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cf ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !87 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ch, %i.ca
  br i1 %.not11.i.i, label %b2IslandFindParent.exit.i, label %.lr.ph.i.i

end_hunk_1
