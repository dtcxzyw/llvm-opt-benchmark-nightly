Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/dynamic_tree?download=true
inline.NumInlined: 146
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2AABB = type { %struct.b2Vec2, %struct.b2Vec2 }
%struct.b2Vec2 = type { float, float }
%struct.b2TreeNodeChildren = type { i32, i32 }
%union.anon.0 = type { i32 }
%struct.b2DynamicTree = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.b2RayCastInput = type { %struct.b2Vec2, %struct.b2Vec2, float }
%struct.b2BoxCastInput = type { %struct.b2AABB, %struct.b2Vec2, float }
%struct.b2RebuildItem = type { i32, i32, i32, i32, i32 }

@b2_defaultTreeNode = internal unnamed_addr constant { %struct.b2AABB, i64, { %struct.b2TreeNodeChildren }, %union.anon.0, i16, i16 } { %struct.b2AABB zeroinitializer, i64 1, { %struct.b2TreeNodeChildren } { %struct.b2TreeNodeChildren { i32 -1, i32 -1 } }, %union.anon.0 { i32 -1 }, i16 0, i16 1 }, align 8

; Function Attrs: nounwind uwtable
define void @b2DynamicTree_Create(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2DynamicTree) align 8 captures(none) initializes((0, 20), (24, 72)) %0, i32 noundef %1) local_unnamed_addr #0 {
.lr.ph.preheader:
  %i.a = tail call noundef range(i32 16, -2147483648) i32 @llvm.smax.i32(i32 %1, i32 16)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.c, align 8, !tbaa !15
  %i.d = shl nuw nsw i32 %i.a, 1                  ; 3 uses
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !17
  %i.h = zext nneg i32 %i.e to i64
  %i.i = mul nuw nsw i64 %i.h, 40                 ; 2 uses
  %i.j = tail call ptr @b2Alloc(i64 noundef %i.i) #15 ; 12 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.i, i1 false)
  %i.k = add nsw i32 %i.d, -2                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 6         ; 3 uses
  %i.l = add nsw i32 %i.d, -3
  %i.m = icmp ult i32 %i.l, 7
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = trunc nuw nsw i64 %indvars.iv.next.epil to i32
  store i32 %i.p, ptr %i.o, align 8, !tbaa !19
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.q = zext nneg i32 %i.k to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 -1, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.v, i8 0, i64 36, i1 false)
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.y, ptr %i.x, align 8, !tbaa !19
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !19
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.next.1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !19
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.next.2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !19
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.next.3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !19
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.next.4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !19
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.next.5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !19
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.next.6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = trunc nuw nsw i64 %indvars.iv.next.7 to i32
  store i32 %i.at, ptr %i.as, align 8, !tbaa !19
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @b2Alloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @b2DynamicTree_Destroy(ptr nofree noundef captures(none) initializes((8, 16), (20, 32), (68, 72)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, 40
  tail call void @b2Free(ptr noundef %i.a, i64 noundef %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @b2Free(ptr noundef %i.g, i64 noundef %i.k) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = load i32, ptr %i.h, align 8, !tbaa !24
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 4
  tail call void @b2Free(ptr noundef %i.m, i64 noundef %i.p) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %i.h, align 8, !tbaa !24
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  tail call void @b2Free(ptr noundef %i.r, i64 noundef %i.u) #15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = load i32, ptr %i.h, align 8, !tbaa !24
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  tail call void @b2Free(ptr noundef %i.w, i64 noundef %i.z) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  ret void
}

declare void @b2Free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @b2DynamicTree_CreateProxy(ptr nofree noundef captures(none) %0, <2 x float> %1, <2 x float> %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @b2AllocateNode(ptr noundef %0) ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.c ; 6 uses
  store <2 x float> %1, ptr %i.d, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %4, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i16 0, ptr %i.g, align 4, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 38
  store i16 5, ptr %i.h, align 2, !tbaa !35
  tail call fastcc void @b2InsertLeaf(ptr noundef nonnull %0, i32 noundef %i.a, i1 noundef zeroext true)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !21
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @b2AllocateNode(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = ashr i32 %i.f, 1
  %i.h = add nsw i32 %i.g, %i.f                   ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !16
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, 40
  %i.k = tail call ptr @b2Alloc(i64 noundef %i.j) #15 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.d, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !18
  %i.q = load i32, ptr %i.l, align 4, !tbaa !17   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [40 x i8], ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.e, align 8, !tbaa !16
  %i.u = sub nsw i32 %i.t, %i.q
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.w, i1 false)
  %i.x = sext i32 %i.f to i64
  %i.y = mul nsw i64 %i.x, 40
  tail call void @b2Free(ptr noundef %i.d, i64 noundef %i.y) #15
  %i.z = load i32, ptr %i.l, align 4, !tbaa !17   ; 2 uses
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !16
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = sext i32 %i.ab to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ad = sext i32 %i.z to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ao, %.lr.ph ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !18
  %i.af = getelementptr inbounds [40 x i8], ptr %i.ae, i64 %.pre-phi
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 -1, ptr %i.ag, align 8, !tbaa !19
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !17  ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !20
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18
  %i.aj = getelementptr inbounds [40 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !19
  %i.am = load i32, ptr %i.e, align 8, !tbaa !16
  %i.an = add nsw i32 %i.am, -1
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !42

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.aq = phi i32 [ %i.ah, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !18
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [40 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !19
  store i32 %i.av, ptr %i.a, align 4, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) @b2_defaultTreeNode, i64 40, i1 false), !tbaa.struct !45
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !17
  ret i32 %i.aq
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @b2InsertLeaf(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !15
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 -1, ptr %i.g, align 8, !tbaa !19
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.074.0.copyload = load <2 x float>, ptr %i.j, align 8, !tbaa !27 ; 10 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !27 ; 10 uses
  %i.k = fadd <2 x float> %.sroa.074.0.copyload, %.sroa.5.0.copyload
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01) ; 2 uses
  %i.m = fsub <2 x float> %.sroa.5.0.copyload, %.sroa.074.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.m, %shift
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = fmul float %i.n, 2.000000e+00            ; 2 uses
  %i.p = sext i32 %i.b to i64                     ; 2 uses
  %i.q = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i16, ptr %i.r, align 4, !tbaa !34
  %.not19.i = icmp eq i16 %i.s, 0
  br i1 %.not19.i, label %b2FindBestSibling.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !27 ; 3 uses
  %.sroa.076.0.copyload.i = load <2 x float>, ptr %i.q, align 8, !tbaa !27 ; 3 uses
  %i.t = fcmp ogt <2 x float> %.sroa.5.0.copyload.i, %.sroa.5.0.copyload
  %i.u = select <2 x i1> %i.t, <2 x float> %.sroa.5.0.copyload.i, <2 x float> %.sroa.5.0.copyload
  %i.v = fcmp olt <2 x float> %.sroa.076.0.copyload.i, %.sroa.074.0.copyload
  %i.w = select <2 x i1> %i.v, <2 x float> %.sroa.076.0.copyload.i, <2 x float> %.sroa.074.0.copyload
  %i.x = fsub <2 x float> %i.u, %i.w
  %i.y = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.x)
  %i.z = fmul float %i.y, 2.000000e+00            ; 2 uses
  %i.aa = fsub <2 x float> %.sroa.5.0.copyload.i, %.sroa.076.0.copyload.i
  %i.ab = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aa)
  %i.ac = fmul float %i.ab, 2.000000e+00
  %i.ad = shufflevector <2 x float> %.sroa.074.0.copyload, <2 x float> %.sroa.5.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %i.ae = phi ptr [ %i.cx, %bb.k ], [ %i.q, %.lr.ph.preheader.i ] ; 2 uses
  %.010925.i = phi float [ %.1110.i, %bb.k ], [ %i.ac, %.lr.ph.preheader.i ]
  %.011124.i = phi float [ %.1112.i, %bb.k ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %.011623.i = phi i32 [ %.1117.i, %bb.k ], [ %i.b, %.lr.ph.preheader.i ]
  %.011922.i = phi float [ %.58.i, %bb.k ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %.012221.i = phi i32 [ %.51276.i, %bb.k ], [ %i.b, %.lr.ph.preheader.i ]
  %.012820.i = phi float [ %i.am, %bb.k ], [ 0.000000e+00, %.lr.ph.preheader.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !19 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19 ; 3 uses
  %i.aj = fadd float %.011124.i, %.012820.i       ; 2 uses
  %i.ak = fcmp olt float %i.aj, %.011922.i        ; 2 uses
  %.1123.i = select i1 %i.ak, i32 %.011623.i, i32 %.012221.i ; 2 uses
  %.1120.i = select i1 %i.ak, float %i.aj, float %.011922.i ; 3 uses
  %i.al = fsub float %.011124.i, %.010925.i
  %i.am = fadd float %i.al, %.012820.i            ; 5 uses
  %i.an = sext i32 %i.ag to i64
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !34
  %i.ar = icmp eq i16 %i.aq, 0                    ; 4 uses
  %i.as = sext i32 %i.ai to i64
  %i.at = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.av = load i16, ptr %i.au, align 4, !tbaa !34
  %i.aw = icmp eq i16 %i.av, 0
  %.sroa.029.0.copyload.i = load <2 x float>, ptr %i.ao, align 8, !tbaa !27 ; 4 uses
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.632.0.copyload.i = load <2 x float>, ptr %.sroa.632.0..sroa_idx.i, align 8, !tbaa !27 ; 4 uses
  %i.ax = fcmp olt <2 x float> %.sroa.029.0.copyload.i, %.sroa.074.0.copyload
  %i.ay = select <2 x i1> %i.ax, <2 x float> %.sroa.029.0.copyload.i, <2 x float> %.sroa.074.0.copyload
  %i.az = fcmp ogt <2 x float> %.sroa.632.0.copyload.i, %.sroa.5.0.copyload
  %i.ba = select <2 x i1> %i.az, <2 x float> %.sroa.632.0.copyload.i, <2 x float> %.sroa.5.0.copyload
  %i.bb = fsub <2 x float> %i.ba, %i.ay           ; 2 uses
  %shift128 = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop129 = fadd <2 x float> %i.bb, %shift128
  %i.bc = extractelement <2 x float> %foldExtExtBinop129, i64 0
  %i.bd = fmul float %i.bc, 2.000000e+00          ; 3 uses
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = fadd float %i.am, %i.bd                 ; 2 uses
  %i.bf = fcmp olt float %i.be, %.1120.i          ; 2 uses
  %.2124.i = select i1 %i.bf, i32 %i.ag, i32 %.1123.i
  %.2121.i = select i1 %i.bf, float %i.be, float %.1120.i
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = fsub <2 x float> %.sroa.632.0.copyload.i, %.sroa.029.0.copyload.i
  %i.bh = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bg)
  %i.bi = fmul float %i.bh, 2.000000e+00          ; 2 uses
  %i.bj = fadd float %i.am, %i.bd
  %i.bk = fsub float %i.o, %i.bi                  ; 2 uses
  %i.bl = fcmp olt float %i.bk, 0.000000e+00
  %i.bm = select i1 %i.bl, float %i.bk, float 0.000000e+00
  %i.bn = fadd float %i.bj, %i.bm
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3125.i = phi i32 [ %.2124.i, %bb.d ], [ %.1123.i, %bb.e ] ; 2 uses
  %.3.i = phi float [ %.2121.i, %bb.d ], [ %.1120.i, %bb.e ] ; 3 uses
  %.0114.i = phi float [ f0x7F7FFFFF, %bb.d ], [ %i.bn, %bb.e ] ; 3 uses
  %.0108.i = phi float [ 0.000000e+00, %bb.d ], [ %i.bi, %bb.e ]
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.at, align 8, !tbaa !27 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !27 ; 4 uses
  %i.bo = shufflevector <2 x float> %.sroa.012.0.copyload.i, <2 x float> %.sroa.5.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bp = shufflevector <2 x float> %.sroa.074.0.copyload, <2 x float> %.sroa.6.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bq = fcmp olt <4 x float> %i.bo, %i.bp
  %i.br = shufflevector <2 x float> %.sroa.012.0.copyload.i, <2 x float> %.sroa.6.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = select <4 x i1> %i.bq, <4 x float> %i.br, <4 x float> %i.ad ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bu = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bv = fsub <2 x float> %i.bt, %i.bu           ; 2 uses
  %shift131 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fadd <2 x float> %i.bv, %shift131
  %i.bw = extractelement <2 x float> %foldExtExtBinop132, i64 0
  %i.bx = fmul float %i.bw, 2.000000e+00          ; 3 uses
  br i1 %i.aw, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.by = fsub <2 x float> %.sroa.6.0.copyload.i, %.sroa.012.0.copyload.i
  %i.bz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by)
  %i.ca = fmul float %i.bz, 2.000000e+00          ; 2 uses
  %i.cb = fadd float %i.am, %i.bx
  %i.cc = fsub float %i.o, %i.ca                  ; 2 uses
end_hunk_0
begin_hunk_1_@b2DynamicTree_SetCategoryBits:bb.a
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33
  %i.s = or i64 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !33
  %.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !19  ; 2 uses
  %.not = icmp eq i32 %.0, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @b2DynamicTree_GetCategoryBits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @b2DynamicTree_GetHeight(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.h = load i16, ptr %i.g, align 4, !tbaa !34
  %i.i = zext i16 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @b2DynamicTree_GetAreaRatio(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load <2 x float>, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load <2 x float>, ptr %i.h, align 8
  %i.j = fsub <2 x float> %i.i, %i.g              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.k, 2.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = zext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.017.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.1, %bb.d ]
  %i.q = fdiv float %.017.lcssa, %i.l
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.01727 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 38
  %.val = load i16, ptr %i.s, align 2, !tbaa !35
  %i.t = and i16 %.val, 5
  %or.cond = icmp ne i16 %i.t, 1
  %i.u = icmp eq i64 %indvars.iv, %i.p
  %or.cond26 = or i1 %i.u, %or.cond
  br i1 %or.cond26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = load <2 x float>, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load <2 x float>, ptr %i.w, align 8
  %i.y = fsub <2 x float> %i.x, %i.v
  %i.z = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.y)
  %i.aa = fmul float %i.z, 2.000000e+00
  %i.ab = fadd float %.01727, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1 = phi float [ %i.ab, %bb.c ], [ %.01727, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.018 = phi float [ %i.q, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  ret float %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [40 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.e, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload = load <2 x float>, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.3.0 = phi <2 x float> [ %.sroa.3.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @b2DynamicTree_Validate(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @b2DynamicTree_ValidateNoEnlarged(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @b2DynamicTree_GetByteCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = mul i32 %i.b, 40
  %i.d = add i32 %i.c, 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = shl i32 %i.f, 5
  %i.h = add i32 %i.d, %i.g
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @b2DynamicTree_GetUserData(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @b2DynamicTree_GetAABB(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_Query(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  store i32 %i.f, ptr %i.a, align 16, !tbaa !36
  br label %.outer

.outer:                                           ; preds = %.split, %bb.b
  %.sroa.4.0.ph = phi i32 [ %i.ag, %.split ], [ 0, %bb.b ] ; 3 uses
  %.sroa.023.0.ph = phi i32 [ %i.o, %.split ], [ 0, %bb.b ] ; 2 uses
  %.027.ph = phi i32 [ %i.i, %.split ], [ 1, %bb.b ] ; 2 uses
  %i.g = icmp sgt i32 %.027.ph, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.outer
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.02739 = phi i32 [ %.027.ph, %.lr.ph ], [ %.2, %bb.h ] ; 4 uses
  %.sroa.023.038 = phi i32 [ %.sroa.023.0.ph, %.lr.ph ], [ %i.o, %bb.h ]
  %i.i = add nsw i32 %.02739, -1                  ; 5 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.m ; 7 uses
  %i.o = add nuw nsw i32 %.sroa.023.038, 1        ; 4 uses
  %i.p = load <2 x float>, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = shufflevector <2 x float> %1, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fcmp ule <4 x float> %i.s, %i.t
  %i.v = freeze <4 x i1> %i.u
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !33
  %i.aa = and i64 %i.z, %3
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.n, i64 38
  %.val = load i16, ptr %i.ab, align 2, !tbaa !35
  %i.ac = and i16 %.val, 4
  %.not30 = icmp eq i16 %i.ac, 0
  br i1 %.not30, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = tail call zeroext i1 %4(i32 noundef %i.l, i64 noundef %i.ae, ptr noundef %5) #15
  %i.ag = add nuw nsw i32 %.sroa.4.0.ph, 1        ; 2 uses
  br i1 %i.af, label %.outer, label %.loopexit, !llvm.loop !54

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp samesign ult i32 %.02739, 1024
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  store i32 %i.aj, ptr %i.k, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = add nuw nsw i32 %.02739, 1
  %i.an = zext nneg i32 %.02739 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f
  %.2 = phi i32 [ %i.i, %bb.c ], [ %i.am, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.d ] ; 2 uses
  %i.ap = icmp sgt i32 %.2, 0
  br i1 %i.ap, label %bb.c, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %.split, %.outer, %bb.h
  %.sroa.4.3 = phi i32 [ %.sroa.4.0.ph, %bb.h ], [ %.sroa.4.0.ph, %.outer ], [ %i.ag, %.split ]
  %.sroa.023.1 = phi i32 [ %i.o, %bb.h ], [ %.sroa.023.0.ph, %.outer ], [ %i.o, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aq = zext i32 %.sroa.4.3 to i64
  %i.ar = shl nuw i64 %i.aq, 32
  %i.as = zext i32 %.sroa.023.1 to i64
  %i.at = or disjoint i64 %i.ar, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.loopexit
  %.sroa.023.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.at, %.loopexit ]
  ret i64 %.sroa.023.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_QueryAll(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  store i32 %i.f, ptr %i.a, align 16, !tbaa !36
  br label %.outer

.outer:                                           ; preds = %.split, %bb.b
  %.sroa.4.0.ph = phi i32 [ %i.ad, %.split ], [ 0, %bb.b ] ; 3 uses
  %.sroa.021.0.ph = phi i32 [ %i.o, %.split ], [ 0, %bb.b ] ; 2 uses
  %.025.ph = phi i32 [ %i.i, %.split ], [ 1, %bb.b ] ; 2 uses
  %i.g = icmp sgt i32 %.025.ph, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.outer
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.02536 = phi i32 [ %.025.ph, %.lr.ph ], [ %.2, %bb.g ] ; 4 uses
  %.sroa.021.035 = phi i32 [ %.sroa.021.0.ph, %.lr.ph ], [ %i.o, %bb.g ]
  %i.i = add nsw i32 %.02536, -1                  ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.m ; 6 uses
  %i.o = add nuw nsw i32 %.sroa.021.035, 1        ; 4 uses
  %i.p = load <2 x float>, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = shufflevector <2 x float> %1, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fcmp ule <4 x float> %i.s, %i.t
  %i.v = freeze <4 x i1> %i.u
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.n, i64 38
  %.val = load i16, ptr %i.y, align 2, !tbaa !35
  %i.z = and i16 %.val, 4
  %.not = icmp eq i16 %i.z, 0
  br i1 %.not, label %bb.e, label %.split

.split:                                           ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ac = tail call zeroext i1 %3(i32 noundef %i.l, i64 noundef %i.ab, ptr noundef %4) #15
  %i.ad = add nuw nsw i32 %.sroa.4.0.ph, 1        ; 2 uses
  br i1 %i.ac, label %.outer, label %.loopexit, !llvm.loop !55

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp samesign ult i32 %.02536, 1024
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !19
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.aj = add nuw nsw i32 %.02536, 1
  %i.ak = zext nneg i32 %.02536 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.2 = phi i32 [ %i.i, %bb.c ], [ %i.aj, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.am = icmp sgt i32 %.2, 0
  br i1 %i.am, label %bb.c, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %.split, %.outer, %bb.g
  %.sroa.4.3 = phi i32 [ %.sroa.4.0.ph, %bb.g ], [ %.sroa.4.0.ph, %.outer ], [ %i.ad, %.split ]
  %.sroa.021.1 = phi i32 [ %i.o, %bb.g ], [ %.sroa.021.0.ph, %.outer ], [ %i.o, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.an = zext i32 %.sroa.4.3 to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = zext i32 %.sroa.021.1 to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit
  %.sroa.021.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.aq, %.loopexit ]
  ret i64 %.sroa.021.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_RayCast(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %5 = alloca %struct.b2RayCastInput, align 4     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.059.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !27 ; 5 uses
  %i.f = fmul <2 x float> %.sroa.056.0.copyload, %.sroa.056.0.copyload
  %i.g = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.f) ; 2 uses
  %i.h = fcmp ogt float %i.g, f0x057A0000
  br i1 %i.h, label %bb.c, label %b2Normalize.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @sqrtf(float noundef %i.g) #15
  %i.i = fdiv float 1.000000e+00, %sqrt.i
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %.sroa.056.0.copyload, %i.k
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.b, %bb.c
  %.sroa.012.0.i = phi <2 x float> [ %i.l, %bb.c ], [ zeroinitializer, %bb.b ] ; 3 uses
  %i.m = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.n = extractelement <2 x float> %.sroa.012.0.i, i64 1 ; 3 uses
  %i.o = fneg float %i.n
  %.sroa.0.4.vec.extract.i97 = extractelement <2 x float> %.sroa.012.0.i, i64 0 ; 3 uses
  %i.p = fcmp ogt float %i.n, 0.000000e+00
  %i.q = select i1 %i.p, float %i.n, float %i.o
  %i.r = fcmp olt float %.sroa.0.4.vec.extract.i97, 0.000000e+00
  %i.s = fneg float %.sroa.0.4.vec.extract.i97
  %i.t = select i1 %i.r, float %i.s, float %.sroa.0.4.vec.extract.i97
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !58 ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %.sroa.056.0.copyload, %i.x
  %i.z = fadd <2 x float> %.sroa.059.0.copyload, %i.y ; 4 uses
  %i.aa = fcmp olt <2 x float> %.sroa.059.0.copyload, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.z
  %i.ac = fcmp ogt <2 x float> %.sroa.059.0.copyload, %i.z
  %i.ad = select <2 x i1> %i.ac, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !15
  store i32 %i.af, ptr %i.a, align 16, !tbaa !36
  %i.ag = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 16, i1 false), !tbaa.struct !59
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.t, i64 1
  br label %bb.d

bb.d:                                             ; preds = %b2Normalize.exit, %select.unfold
  %.sroa.078.0191 = phi i32 [ 0, %b2Normalize.exit ], [ %.sroa.078.1, %select.unfold ] ; 2 uses
  %.sroa.4.0190 = phi i32 [ 0, %b2Normalize.exit ], [ %.sroa.4.4, %select.unfold ] ; 7 uses
  %.082189 = phi i32 [ 1, %b2Normalize.exit ], [ %.5, %select.unfold ] ; 4 uses
  %.sroa.043.0188 = phi <2 x float> [ %i.ab, %b2Normalize.exit ], [ %.sroa.043.6, %select.unfold ] ; 8 uses
  %.sroa.5.0187 = phi <2 x float> [ %i.ad, %b2Normalize.exit ], [ %.sroa.5.6, %select.unfold ] ; 8 uses
  %.086186 = phi float [ %i.v, %b2Normalize.exit ], [ %.6, %select.unfold ] ; 9 uses
  %i.ak = add nsw i32 %.082189, -1                ; 8 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36 ; 3 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %select.unfold, label %bb.e, !llvm.loop !56

bb.e:                                             ; preds = %bb.d
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [40 x i8], ptr %i.ag, i64 %i.ap ; 7 uses
  %i.ar = add nsw i32 %.sroa.078.0191, 1          ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !33
  %i.au = and i64 %i.at, %2
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %select.unfold, label %bb.f, !llvm.loop !56

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !27 ; 3 uses
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.aq, align 8, !tbaa !27 ; 3 uses
  %i.aw = shufflevector <2 x float> %.sroa.043.0188, <2 x float> %.sroa.013.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ax = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5.0187, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = fcmp ule <4 x float> %i.aw, %i.ax
  %i.az = freeze <4 x i1> %i.ay
  %i.ba = bitcast <4 x i1> %i.az to i4
  %i.bb = icmp eq i4 %i.ba, -1
  br i1 %i.bb, label %bb.g, label %select.unfold, !llvm.loop !56

bb.g:                                             ; preds = %bb.f
  %i.bc = fadd <2 x float> %.sroa.6.0.copyload, %.sroa.013.0.copyload
  %i.bd = fsub <2 x float> %.sroa.6.0.copyload, %.sroa.013.0.copyload
  %i.be = fmul <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.bf = fsub <2 x float> %.sroa.059.0.copyload, %i.be
  %i.bg = fmul <2 x float> %i.m, %i.bf            ; 2 uses
  %shift = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bg
  %i.bh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bi = call float @llvm.fabs.f32(float %i.bh)
  %i.bj = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bk = fmul <2 x float> %i.aj, %i.bj
  %i.bl = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bk)
  %i.bm = fcmp olt float %i.bl, %i.bi
  br i1 %i.bm, label %select.unfold, label %bb.h, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr i8, ptr %i.aq, i64 38
  %.val = load i16, ptr %i.bn, align 2, !tbaa !35
  %i.bo = and i16 %.val, 4
  %.not = icmp eq i16 %i.bo, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %.086186, ptr %i.ah, align 4, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !19
  %i.br = call float %3(ptr noundef nonnull %5, i32 noundef %i.an, i64 noundef %i.bq, ptr noundef %4) #15 ; 5 uses
  %i.bs = add nsw i32 %.sroa.4.0190, 1            ; 3 uses
  %i.bt = fcmp une float %i.br, 0.000000e+00
  br i1 %i.bt, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bu = fcmp ule float %i.br, 0.000000e+00
  %i.bv = fcmp ugt float %i.br, %.086186
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %.sroa.056.0.copyload, %i.bx
  %i.bz = fadd <2 x float> %.sroa.059.0.copyload, %i.by ; 4 uses
  %i.ca = fcmp olt <2 x float> %.sroa.059.0.copyload, %i.bz
  %i.cb = select <2 x i1> %i.ca, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.bz
  %i.cc = fcmp ogt <2 x float> %.sroa.059.0.copyload, %i.bz
  %i.cd = select <2 x i1> %i.cc, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.bz
  br label %select.unfold

bb.l:                                             ; preds = %bb.h
  %i.ce = icmp samesign ult i32 %.082189, 1024
  br i1 %i.ce, label %bb.m, label %select.unfold

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !19 ; 3 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [40 x i8], ptr %i.ag, i64 %i.ch ; 2 uses
  %i.cj = load <2 x float>, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load <2 x float>, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !19 ; 3 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [40 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.cq = load <2 x float>, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load <2 x float>, ptr %i.cr, align 8
  %i.ct = fadd <2 x float> %i.cj, %i.cl
  %i.cu = fmul <2 x float> %i.ct, splat (float 5.000000e-01)
  %i.cv = fsub <2 x float> %.sroa.059.0.copyload, %i.cu ; 2 uses
  %i.cw = fmul <2 x float> %i.cv, %i.cv
  %i.cx = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cw)
  %i.cy = fadd <2 x float> %i.cq, %i.cs
  %i.cz = fmul <2 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fsub <2 x float> %.sroa.059.0.copyload, %i.cz ; 2 uses
  %i.db = fmul <2 x float> %i.da, %i.da
  %i.dc = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.db)
  %i.dd = fcmp olt float %i.cx, %i.dc             ; 2 uses
  %i.de = zext nneg i32 %.082189 to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.de
  %. = select i1 %i.dd, i32 %i.cn, i32 %i.cg
  %.195 = select i1 %i.dd, i32 %i.cg, i32 %i.cn
  store i32 %., ptr %i.am, align 4, !tbaa !36
  store i32 %.195, ptr %i.df, align 4, !tbaa !36
  %.183 = add nuw nsw i32 %.082189, 1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.k, %bb.j, %bb.f, %bb.e, %bb.l, %bb.m, %bb.g, %bb.d
  %.6 = phi float [ %.086186, %bb.d ], [ %.086186, %bb.e ], [ %.086186, %bb.f ], [ %.086186, %bb.l ], [ %.086186, %bb.g ], [ %.086186, %bb.m ], [ %.086186, %bb.j ], [ %i.br, %bb.k ]
  %.sroa.5.6 = phi <2 x float> [ %.sroa.5.0187, %bb.d ], [ %.sroa.5.0187, %bb.e ], [ %.sroa.5.0187, %bb.f ], [ %.sroa.5.0187, %bb.l ], [ %.sroa.5.0187, %bb.g ], [ %.sroa.5.0187, %bb.m ], [ %.sroa.5.0187, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.043.6 = phi <2 x float> [ %.sroa.043.0188, %bb.d ], [ %.sroa.043.0188, %bb.e ], [ %.sroa.043.0188, %bb.f ], [ %.sroa.043.0188, %bb.l ], [ %.sroa.043.0188, %bb.g ], [ %.sroa.043.0188, %bb.m ], [ %.sroa.043.0188, %bb.j ], [ %i.cb, %bb.k ]
  %.5 = phi i32 [ %i.ak, %bb.d ], [ %i.ak, %bb.e ], [ %i.ak, %bb.f ], [ %i.ak, %bb.l ], [ %i.ak, %bb.g ], [ %.183, %bb.m ], [ %i.ak, %bb.j ], [ %i.ak, %bb.k ] ; 2 uses
  %.sroa.4.4 = phi i32 [ %.sroa.4.0190, %bb.d ], [ %.sroa.4.0190, %bb.e ], [ %.sroa.4.0190, %bb.f ], [ %.sroa.4.0190, %bb.l ], [ %.sroa.4.0190, %bb.g ], [ %.sroa.4.0190, %bb.m ], [ %i.bs, %bb.j ], [ %i.bs, %bb.k ] ; 2 uses
  %.sroa.078.1 = phi i32 [ %.sroa.078.0191, %bb.d ], [ %i.ar, %bb.e ], [ %i.ar, %bb.f ], [ %i.ar, %bb.l ], [ %i.ar, %bb.g ], [ %i.ar, %bb.m ], [ %i.ar, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  %i.dg = icmp sgt i32 %.5, 0
  br i1 %i.dg, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.i, %select.unfold
  %.sroa.4.5 = phi i32 [ %.sroa.4.4, %select.unfold ], [ %i.bs, %bb.i ]
  %.sroa.078.2 = phi i32 [ %.sroa.078.1, %select.unfold ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.dh = zext i32 %.sroa.4.5 to i64
  %i.di = shl nuw i64 %i.dh, 32
  %i.dj = zext i32 %.sroa.078.2 to i64
  %i.dk = or disjoint i64 %i.di, %i.dj
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread
  %.sroa.078.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.dk, %.thread ]
  ret i64 %.sroa.078.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_BoxCast(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.b2BoxCastInput, align 4     ; 5 uses
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.062.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 8 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0.copyload = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !27 ; 8 uses
  %i.e = fadd <2 x float> %.sroa.062.0.copyload, %.sroa.9.0.copyload
  %i.f = fmul <2 x float> %i.e, splat (float 5.000000e-01) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !27 ; 4 uses
  %i.h = shufflevector <2 x float> %.sroa.057.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.4.vec.extract.i111 = extractelement <2 x float> %.sroa.057.0.copyload, i64 0 ; 3 uses
  %i.i = fsub <2 x float> %.sroa.9.0.copyload, %.sroa.062.0.copyload
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  %i.k = extractelement <2 x float> %.sroa.057.0.copyload, i64 1 ; 3 uses
  %i.l = fneg float %i.k
  %i.m = fcmp ogt float %i.k, 0.000000e+00
  %i.n = select i1 %i.m, float %i.k, float %i.l
  %i.o = fcmp olt float %.sroa.0.4.vec.extract.i111, 0.000000e+00
  %i.p = fneg float %.sroa.0.4.vec.extract.i111
  %i.q = select i1 %i.o, float %i.p, float %.sroa.0.4.vec.extract.i111
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !62 ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %.sroa.057.0.copyload ; 2 uses
  %i.w = fadd <2 x float> %.sroa.062.0.copyload, %i.v ; 2 uses
  %i.x = fcmp olt <2 x float> %.sroa.062.0.copyload, %i.w
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.062.0.copyload, <2 x float> %i.w
  %i.z = fadd <2 x float> %.sroa.9.0.copyload, %i.v ; 2 uses
  %i.aa = fcmp ogt <2 x float> %.sroa.9.0.copyload, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x float> %.sroa.9.0.copyload, <2 x float> %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 24, i1 false), !tbaa.struct !63
  %i.ac = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !15
  store i32 %i.ae, ptr %i.a, align 16, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.q, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %select.unfold
  %.sroa.085.0236 = phi i32 [ 0, %bb.b ], [ %.sroa.085.1, %select.unfold ] ; 2 uses
  %.sroa.4.0235 = phi i32 [ 0, %bb.b ], [ %.sroa.4.4, %select.unfold ] ; 7 uses
  %.089234 = phi i32 [ 1, %bb.b ], [ %.5, %select.unfold ] ; 4 uses
  %.sroa.045.0233 = phi <2 x float> [ %i.y, %bb.b ], [ %.sroa.045.6, %select.unfold ] ; 8 uses
  %.sroa.5.0232 = phi <2 x float> [ %i.ab, %bb.b ], [ %.sroa.5.6, %select.unfold ] ; 8 uses
  %.093231 = phi float [ %i.s, %bb.b ], [ %.6, %select.unfold ] ; 9 uses
  %i.ai = add nsw i32 %.089234, -1                ; 8 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36 ; 3 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %select.unfold, label %bb.d, !llvm.loop !60

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.an ; 7 uses
  %i.ap = add nsw i32 %.sroa.085.0236, 1          ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = and i64 %i.ar, %2
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %select.unfold, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  %i.au = load <2 x float>, ptr %i.ao, align 8    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load <2 x float>, ptr %i.av, align 8    ; 3 uses
  %i.ax = shufflevector <2 x float> %.sroa.045.0233, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> %.sroa.5.0232, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = fcmp ule <4 x float> %i.ax, %i.ay
  %i.ba = freeze <4 x i1> %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp eq i4 %i.bb, -1
  br i1 %i.bc, label %bb.f, label %select.unfold, !llvm.loop !60

bb.f:                                             ; preds = %bb.e
  %i.bd = fadd <2 x float> %i.au, %i.aw
  %i.be = fsub <2 x float> %i.aw, %i.au
  %i.bf = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bg = fsub <2 x float> %i.f, %i.bf
  %i.bh = fmul <2 x float> %i.h, %i.bg            ; 2 uses
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bh
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fmul <2 x float> %i.be, splat (float 5.000000e-01)
  %i.bl = fadd <2 x float> %i.j, %i.bk
  %i.bm = fmul <2 x float> %i.ah, %i.bl
  %i.bn = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bm)
  %i.bo = fcmp olt float %i.bn, %i.bj
  br i1 %i.bo, label %select.unfold, label %bb.g, !llvm.loop !60

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr i8, ptr %i.ao, i64 38
  %.val = load i16, ptr %i.bp, align 2, !tbaa !35
  %i.bq = and i16 %.val, 4
  %.not = icmp eq i16 %i.bq, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %.093231, ptr %i.af, align 4, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !19
  %i.bt = call float %3(ptr noundef nonnull %5, i32 noundef %i.al, i64 noundef %i.bs, ptr noundef %4) #15 ; 5 uses
  %i.bu = add nsw i32 %.sroa.4.0235, 1            ; 3 uses
  %i.bv = fcmp une float %i.bt, 0.000000e+00
  br i1 %i.bv, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bw = fcmp ogt float %i.bt, 0.000000e+00
  %i.bx = fcmp olt float %i.bt, %.093231
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %select.unfold

bb.j:                                             ; preds = %bb.i
  %i.by = load <2 x float>, ptr %i.g, align 4
  %i.bz = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.by           ; 2 uses
  %i.cc = fadd <2 x float> %.sroa.062.0.copyload, %i.cb ; 2 uses
  %i.cd = fcmp olt <2 x float> %.sroa.062.0.copyload, %i.cc
  %i.ce = select <2 x i1> %i.cd, <2 x float> %.sroa.062.0.copyload, <2 x float> %i.cc
  %i.cf = fadd <2 x float> %.sroa.9.0.copyload, %i.cb ; 2 uses
  %i.cg = fcmp ogt <2 x float> %.sroa.9.0.copyload, %i.cf
  %i.ch = select <2 x i1> %i.cg, <2 x float> %.sroa.9.0.copyload, <2 x float> %i.cf
  br label %select.unfold

bb.k:                                             ; preds = %bb.g
  %i.ci = icmp samesign ult i32 %.089234, 1024
  br i1 %i.ci, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !19 ; 3 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.cl ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load <2 x float>, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !19 ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.cs ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load <2 x float>, ptr %i.cv, align 8
  %i.cx = fadd <2 x float> %i.cn, %i.cp
  %i.cy = fmul <2 x float> %i.cx, splat (float 5.000000e-01)
  %i.cz = fsub <2 x float> %i.f, %i.cy            ; 2 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz
  %i.db = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da)
  %i.dc = fadd <2 x float> %i.cu, %i.cw
  %i.dd = fmul <2 x float> %i.dc, splat (float 5.000000e-01)
  %i.de = fsub <2 x float> %i.f, %i.dd            ; 2 uses
  %i.df = fmul <2 x float> %i.de, %i.de
  %i.dg = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.df)
  %i.dh = fcmp olt float %i.db, %i.dg             ; 2 uses
  %i.di = zext nneg i32 %.089234 to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di
  %. = select i1 %i.dh, i32 %i.cr, i32 %i.ck
  %.239 = select i1 %i.dh, i32 %i.ck, i32 %i.cr
  store i32 %., ptr %i.ak, align 4, !tbaa !36
  store i32 %.239, ptr %i.dj, align 4, !tbaa !36
  %.190 = add nuw nsw i32 %.089234, 1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.j, %bb.i, %bb.e, %bb.d, %bb.k, %bb.l, %bb.f, %bb.c
  %.6 = phi float [ %.093231, %bb.c ], [ %.093231, %bb.d ], [ %.093231, %bb.e ], [ %.093231, %bb.k ], [ %.093231, %bb.f ], [ %.093231, %bb.l ], [ %.093231, %bb.i ], [ %i.bt, %bb.j ]
  %.sroa.5.6 = phi <2 x float> [ %.sroa.5.0232, %bb.c ], [ %.sroa.5.0232, %bb.d ], [ %.sroa.5.0232, %bb.e ], [ %.sroa.5.0232, %bb.k ], [ %.sroa.5.0232, %bb.f ], [ %.sroa.5.0232, %bb.l ], [ %.sroa.5.0232, %bb.i ], [ %i.ch, %bb.j ]
  %.sroa.045.6 = phi <2 x float> [ %.sroa.045.0233, %bb.c ], [ %.sroa.045.0233, %bb.d ], [ %.sroa.045.0233, %bb.e ], [ %.sroa.045.0233, %bb.k ], [ %.sroa.045.0233, %bb.f ], [ %.sroa.045.0233, %bb.l ], [ %.sroa.045.0233, %bb.i ], [ %i.ce, %bb.j ]
  %.5 = phi i32 [ %i.ai, %bb.c ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ], [ %i.ai, %bb.k ], [ %i.ai, %bb.f ], [ %.190, %bb.l ], [ %i.ai, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.sroa.4.4 = phi i32 [ %.sroa.4.0235, %bb.c ], [ %.sroa.4.0235, %bb.d ], [ %.sroa.4.0235, %bb.e ], [ %.sroa.4.0235, %bb.k ], [ %.sroa.4.0235, %bb.f ], [ %.sroa.4.0235, %bb.l ], [ %i.bu, %bb.i ], [ %i.bu, %bb.j ] ; 2 uses
  %.sroa.085.1 = phi i32 [ %.sroa.085.0236, %bb.c ], [ %i.ap, %bb.d ], [ %i.ap, %bb.e ], [ %i.ap, %bb.k ], [ %i.ap, %bb.f ], [ %i.ap, %bb.l ], [ %i.ap, %bb.i ], [ %i.ap, %bb.j ] ; 2 uses
  %i.dk = icmp sgt i32 %.5, 0
  br i1 %i.dk, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.h, %select.unfold
  %.sroa.4.5 = phi i32 [ %.sroa.4.4, %select.unfold ], [ %i.bu, %bb.h ]
  %.sroa.085.2 = phi i32 [ %.sroa.085.1, %select.unfold ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.dl = zext i32 %.sroa.4.5 to i64
  %i.dm = shl nuw i64 %i.dl, 32
  %i.dn = zext i32 %.sroa.085.2 to i64
  %i.do = or disjoint i64 %i.dm, %i.dn
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.thread
  %.sroa.085.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.do, %.thread ]
  ret i64 %.sroa.085.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i32 @b2DynamicTree_Rebuild(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1024 x %struct.b2RebuildItem], align 16 ; 11 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp sgt i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = sext i32 %i.f to i64
  %i.m = shl nsw i64 %i.l, 2
  tail call void @b2Free(ptr noundef %i.k, i64 noundef %i.m) #15
  %i.n = sext i32 %i.i to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call ptr @b2Alloc(i64 noundef %i.o) #15
  store ptr %i.p, ptr %i.j, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %i.e, align 8, !tbaa !24
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  tail call void @b2Free(ptr noundef %i.r, i64 noundef %i.u) #15
  %i.v = shl nsw i64 %i.n, 3
  %i.w = tail call ptr @b2Alloc(i64 noundef %i.v) #15 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !25
  store i32 %i.i, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge80, %bb.c
  %i.x = phi ptr [ %.pre, %._crit_edge80 ], [ %i.w, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !15   ; 3 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  br i1 %1, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.d, %bb.g
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %.053.ph.us = phi i32 [ %i.br, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.052.ph.us = phi i32 [ %i.bu, %bb.g ], [ %i.z, %bb.d ] ; 2 uses
  %.051.ph.us = phi ptr [ %i.bw, %bb.g ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.051.ph.us, i64 36
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !34
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %._crit_edge62.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.outer.us, %bb.f
  %.05159.us.us = phi ptr [ %i.au, %bb.f ], [ %.051.ph.us, %.outer.us ] ; 2 uses
  %.05258.us.us = phi i32 [ %i.am, %bb.f ], [ %.052.ph.us, %.outer.us ] ; 2 uses
  %.05357.us.us = phi i32 [ %.1.us.us, %bb.f ], [ %.053.ph.us, %.outer.us ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05159.us.us, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19 ; 3 uses
  %i.an = icmp slt i32 %.05357.us.us, 1024
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.05159.us.us, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = add nsw i32 %.05357.us.us, 1
  %i.ar = sext i32 %.05357.us.us to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ar
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us
  %.1.us.us = phi i32 [ %i.aq, %bb.e ], [ %.05357.us.us, %.lr.ph.us ] ; 2 uses
  %i.at = sext i32 %i.am to i64
  %i.au = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.at ; 3 uses
  %i.av = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.aw = load ptr, ptr %0, align 8, !tbaa !18
  %i.ax = sext i32 %.05258.us.us to i64           ; 2 uses
  %i.ay = getelementptr inbounds [40 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %i.av, ptr %i.az, align 8, !tbaa !19
  %i.ba = load ptr, ptr %0, align 8, !tbaa !18
  %i.bb = getelementptr inbounds [40 x i8], ptr %i.ba, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 38
  store i16 0, ptr %i.bc, align 2, !tbaa !35
  store i32 %.05258.us.us, ptr %i.ag, align 4, !tbaa !20
  %i.bd = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.ah, align 4, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !34
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %._crit_edge62.split.us.us, label %.lr.ph.us

._crit_edge62.split.us.us:                        ; preds = %bb.f, %.outer.us
  %.053.lcssa.us = phi i32 [ %.053.ph.us, %.outer.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.052.lcssa.us = phi i32 [ %.052.ph.us, %.outer.us ], [ %i.am, %bb.f ]
  %.051.lcssa.us = phi ptr [ %.051.ph.us, %.outer.us ], [ %i.au, %bb.f ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv77
  store i32 %.052.lcssa.us, ptr %i.bi, align 4, !tbaa !36
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv77
  %i.bk = load <2 x float>, ptr %.051.lcssa.us, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.051.lcssa.us, i64 8
  %i.bm = load <2 x float>, ptr %i.bl, align 8
  %i.bn = fadd <2 x float> %i.bk, %i.bm
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01)
  store <2 x float> %i.bo, ptr %i.bj, align 4, !tbaa !27
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.051.lcssa.us, i64 32
  store i32 -1, ptr %i.bp, align 8, !tbaa !19
  %i.bq = icmp eq i32 %.053.lcssa.us, 0
  br i1 %i.bq, label %.split69.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge62.split.us.us
  %i.br = add nsw i32 %.053.lcssa.us, -1          ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.bv
  br label %.outer.us

.outer:                                           ; preds = %bb.d, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %bb.d ] ; 4 uses
  %.053.ph = phi i32 [ %i.dj, %bb.k ], [ 0, %bb.d ] ; 2 uses
  %.052.ph = phi i32 [ %i.dm, %bb.k ], [ %i.z, %bb.d ] ; 2 uses
  %.051.ph = phi ptr [ %i.do, %bb.k ], [ %i.ac, %bb.d ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.051.ph, i64 36
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !34
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.j
  %.05159 = phi ptr [ %i.cv, %bb.j ], [ %.051.ph, %.outer ] ; 4 uses
  %.05258 = phi i32 [ %i.cn, %bb.j ], [ %.052.ph, %.outer ] ; 3 uses
  %.05357 = phi i32 [ %.1, %bb.j ], [ %.053.ph, %.outer ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05159, i64 38
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !35
  %i.cc = and i16 %i.cb, 2
  %.not = icmp eq i16 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %.outer
  %.053.lcssa = phi i32 [ %.053.ph, %.outer ], [ %.05357, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %.052.lcssa = phi i32 [ %.052.ph, %.outer ], [ %.05258, %.lr.ph ], [ %i.cn, %bb.j ]
  %.051.lcssa = phi ptr [ %.051.ph, %.outer ], [ %.05159, %.lr.ph ], [ %i.cv, %bb.j ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store i32 %.052.lcssa, ptr %i.cd, align 4, !tbaa !36
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.cf = load <2 x float>, ptr %.051.lcssa, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 8
  %i.ch = load <2 x float>, ptr %i.cg, align 8
  %i.ci = fadd <2 x float> %i.cf, %i.ch
  %i.cj = fmul <2 x float> %i.ci, splat (float 5.000000e-01)
  store <2 x float> %i.cj, ptr %i.ce, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 32
  store i32 -1, ptr %i.ck, align 8, !tbaa !19
  %i.cl = icmp eq i32 %.053.lcssa, 0
  br i1 %i.cl, label %.split69.us, label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.05159, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !19 ; 3 uses
  %i.co = icmp slt i32 %.05357, 1024
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %.05159, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !19
  %i.cr = add nsw i32 %.05357, 1
  %i.cs = sext i32 %.05357 to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs
  store i32 %i.cq, ptr %i.ct, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.cr, %bb.i ], [ %.05357, %bb.h ] ; 2 uses
  %i.cu = sext i32 %i.cn to i64
  %i.cv = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.cu ; 3 uses
  %i.cw = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.cx = load ptr, ptr %0, align 8, !tbaa !18
  %i.cy = sext i32 %.05258 to i64                 ; 2 uses
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store i32 %i.cw, ptr %i.da, align 8, !tbaa !19
  %i.db = load ptr, ptr %0, align 8, !tbaa !18
  %i.dc = getelementptr inbounds [40 x i8], ptr %i.db, i64 %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 38
  store i16 0, ptr %i.dd, align 2, !tbaa !35
  store i32 %.05258, ptr %i.ag, align 4, !tbaa !20
  %i.de = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.df = add nsw i32 %i.de, -1
  store i32 %i.df, ptr %i.ah, align 4, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !34
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge
  %i.dj = add nsw i32 %.053.lcssa, -1             ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !36 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.dn
  br label %.outer

.split69.us:                                      ; preds = %._crit_edge, %._crit_edge62.split.us.us
  %.us-phi70.in = phi i64 [ %indvars.iv.next78, %._crit_edge62.split.us.us ], [ %indvars.iv.next, %._crit_edge ]
  %.us-phi71.in = phi i64 [ %indvars.iv77, %._crit_edge62.split.us.us ], [ %indvars.iv, %._crit_edge ]
  %.us-phi70 = trunc i64 %.us-phi70.in to i32     ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !18    ; 10 uses
  %i.dq = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 5 uses
  %i.dr = and i64 %.us-phi71.in, 4294967295
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split69.us
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !36
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i32 -1, ptr %i.dw, align 8, !tbaa !19
  %i.dx = load i32, ptr %i.dq, align 4, !tbaa !36
  br label %b2BuildTree.exit

bb.m:                                             ; preds = %.split69.us
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.dz = tail call fastcc i32 @b2AllocateNode(ptr noundef nonnull %0)
  store i32 %i.dz, ptr %2, align 16, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.ea, align 4, !tbaa !66
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.eb, align 8, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.us-phi70, ptr %i.ec, align 16, !tbaa !68
  %i.ed = tail call fastcc i32 @b2PartitionMid(ptr noundef %i.dq, ptr noundef %i.dy, i32 noundef range(i32 -2147483647, -2147483648) %.us-phi70)
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !69
  br label %.outer88

.outer88:                                         ; preds = %.outer88.backedge, %bb.m
  %.ph = phi i32 [ -1, %bb.m ], [ %.ph.be, %.outer88.backedge ]
  %.098.i.ph = phi i32 [ 0, %bb.m ], [ %.098.i.ph.be, %.outer88.backedge ] ; 4 uses
  %i.ef = sext i32 %.098.i.ph to i64
  %i.eg = getelementptr inbounds [20 x i8], ptr %2, i64 %i.ef ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.outer88, %bb.y
  %i.ei = phi i32 [ %i.ej, %bb.y ], [ %.ph, %.outer88 ]
  %i.ej = add nsw i32 %i.ei, 1                    ; 4 uses
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !66
  switch i32 %i.ej, label %bb.t [
    i32 2, label %bb.o
    i32 0, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  %i.ek = icmp eq i32 %.098.i.ph, 0
  br i1 %i.ek, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = add nsw i32 %.098.i.ph, -1              ; 2 uses
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [20 x i8], ptr %2, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !65 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !66 ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  %i.eu = load i32, ptr %i.eg, align 4, !tbaa !65 ; 3 uses
  br i1 %i.et, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i32 %i.eu, ptr %i.ev, align 8, !tbaa !19
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.ex ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store i32 %i.eo, ptr %i.ez, align 8, !tbaa !19
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !19
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.fc ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !19
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.fg ; 4 uses
  %i.fi = load <2 x float>, ptr %i.fd, align 8    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fk = load <2 x float>, ptr %i.fj, align 8    ; 2 uses
  %i.fl = load <2 x float>, ptr %i.fh, align 8    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fn = load <2 x float>, ptr %i.fm, align 8    ; 2 uses
  %i.fo = fcmp olt <2 x float> %i.fi, %i.fl
  %i.fp = select <2 x i1> %i.fo, <2 x float> %i.fi, <2 x float> %i.fl
  %i.fq = fcmp ogt <2 x float> %i.fk, %i.fn
  %i.fr = select <2 x i1> %i.fq, <2 x float> %i.fk, <2 x float> %i.fn
  store <2 x float> %i.fp, ptr %i.ey, align 8, !tbaa !27
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store <2 x float> %i.fr, ptr %.sroa.433.0..sroa_idx.i, align 8, !tbaa !27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  %i.ft = load i16, ptr %i.fs, align 4, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !34
  %i.fw = tail call noundef i16 @llvm.umax.i16(i16 %i.ft, i16 %i.fv)
  %i.fx = add i16 %i.fw, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 36
  store i16 %i.fx, ptr %i.fy, align 4, !tbaa !34
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !33
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !33
  %i.gd = or i64 %i.gc, %i.ga
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !33
  br label %.outer88.backedge

bb.t:                                             ; preds = %bb.n
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.sink125.i = phi i64 [ 12, %bb.t ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ 16, %bb.t ], [ 12, %bb.n ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sink125.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sink.i
  %.099.i = load i32, ptr %i.gg, align 4, !tbaa !36 ; 2 uses
  %.0100.i = load i32, ptr %i.gf, align 4, !tbaa !36 ; 5 uses
  %i.gh = sub nsw i32 %.099.i, %.0100.i           ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.gj = sext i32 %.0100.i to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !36 ; 3 uses
  %i.gm = load i32, ptr %i.eg, align 4, !tbaa !65 ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.gn ; 2 uses
  %i.gp = icmp eq i32 %i.ej, 0
  br i1 %i.gp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  store i32 %i.gl, ptr %i.gq, align 8, !tbaa !19
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  store i32 %i.gl, ptr %i.gr, align 4, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gs = sext i32 %i.gl to i64
  %i.gt = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store i32 %i.gm, ptr %i.gu, align 8, !tbaa !19
  br label %bb.n

bb.z:                                             ; preds = %bb.u
  %i.gv = add nsw i32 %.098.i.ph, 1               ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [20 x i8], ptr %2, i64 %i.gw ; 5 uses
  %i.gy = tail call fastcc i32 @b2AllocateNode(ptr noundef nonnull %0)
  store i32 %i.gy, ptr %i.gx, align 4, !tbaa !65
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 -1, ptr %i.gz, align 4, !tbaa !66
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i32 %.0100.i, ptr %i.ha, align 4, !tbaa !67
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i32 %.099.i, ptr %i.hb, align 4, !tbaa !68
  %i.hc = sext i32 %.0100.i to i64                ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.hc
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.hc
  %i.hf = tail call fastcc i32 @b2PartitionMid(ptr noundef %i.hd, ptr noundef %i.he, i32 noundef %i.gh)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.hh = add nsw i32 %i.hf, %.0100.i
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !69
  br label %.outer88.backedge

.outer88.backedge:                                ; preds = %bb.z, %bb.s
  %.ph.be = phi i32 [ %i.es, %bb.s ], [ -1, %bb.z ]
  %.098.i.ph.be = phi i32 [ %i.el, %bb.s ], [ %i.gv, %bb.z ]
  br label %.outer88

bb.aa:                                            ; preds = %bb.o
  %i.hi = load i32, ptr %2, align 16, !tbaa !65   ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.hj ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !19
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.hn ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 28
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !19
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.hr ; 4 uses
  %i.ht = load <2 x float>, ptr %i.ho, align 8    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hv = load <2 x float>, ptr %i.hu, align 8    ; 2 uses
  %i.hw = load <2 x float>, ptr %i.hs, align 8    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hy = load <2 x float>, ptr %i.hx, align 8    ; 2 uses
  %i.hz = fcmp olt <2 x float> %i.ht, %i.hw
  %i.ia = select <2 x i1> %i.hz, <2 x float> %i.ht, <2 x float> %i.hw
  %i.ib = fcmp ogt <2 x float> %i.hv, %i.hy
  %i.ic = select <2 x i1> %i.ib, <2 x float> %i.hv, <2 x float> %i.hy
  store <2 x float> %i.ia, ptr %i.hk, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store <2 x float> %i.ic, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  %i.ie = load i16, ptr %i.id, align 4, !tbaa !34
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 36
  %i.ig = load i16, ptr %i.if, align 4, !tbaa !34
  %i.ih = tail call noundef i16 @llvm.umax.i16(i16 %i.ie, i16 %i.ig)
  %i.ii = add i16 %i.ih, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  store i16 %i.ii, ptr %i.ij, align 4, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !33
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !33
  %i.io = or i64 %i.in, %i.il
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %b2BuildTree.exit

b2BuildTree.exit:                                 ; preds = %bb.l, %bb.aa
  %.0.i = phi i32 [ %i.dx, %bb.l ], [ %i.hi, %bb.aa ]
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %b2BuildTree.exit
  %.0 = phi i32 [ %.us-phi70, %b2BuildTree.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1073741824, 2147483647) i32 @b2PartitionMid(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %bb.b, label %.new

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %2, 2
  br label %bb.k

.new:                                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.c = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %.sroa.068.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 2 uses
  %unroll_iter = and i64 %i.c, -2
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod214 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.f = fcmp olt <2 x float> %i.ac, %i.e
  %i.g = select <2 x i1> %i.f, <2 x float> %i.ac, <2 x float> %i.e
  %i.h = fcmp ogt <2 x float> %i.ae, %i.e
  %i.i = select <2 x i1> %i.h, <2 x float> %i.ae, <2 x float> %i.e
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa211 = phi <2 x float> [ %i.ac, %.unr-lcssa ], [ %i.g, %.epil.preheader ] ; 2 uses
  %.lcssa210 = phi <2 x float> [ %i.ae, %.unr-lcssa ], [ %i.i, %.epil.preheader ] ; 2 uses
  %i.j = fsub <2 x float> %.lcssa210, %.lcssa211  ; 2 uses
  %i.k = fadd <2 x float> %.lcssa210, %.lcssa211  ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fmul float %i.n, 5.000000e-01            ; 2 uses
  %i.p = extractelement <2 x float> %i.j, i64 0
  %i.q = extractelement <2 x float> %i.j, i64 1
  %i.r = fcmp ogt float %i.p, %i.q
  br i1 %i.r, label %.preheader, label %.preheader128

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.sroa.068.0140 = phi <2 x float> [ %.sroa.068.0.copyload, %.new ], [ %i.ac, %bb.d ] ; 2 uses
  %.sroa.065.0139 = phi <2 x float> [ %.sroa.068.0.copyload, %.new ], [ %i.ae, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 4 uses
  %i.u = fcmp olt <2 x float> %.sroa.068.0140, %i.t
  %i.v = select <2 x i1> %i.u, <2 x float> %.sroa.068.0140, <2 x float> %i.t ; 2 uses
  %i.w = fcmp ogt <2 x float> %.sroa.065.0139, %i.t
  %i.x = select <2 x i1> %i.w, <2 x float> %.sroa.065.0139, <2 x float> %i.t ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 4 uses
  %i.ab = fcmp olt <2 x float> %i.v, %i.aa
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.v, <2 x float> %i.aa ; 4 uses
  %i.ad = fcmp ogt <2 x float> %i.x, %i.aa
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.x, <2 x float> %i.aa ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !70

.preheader:                                       ; preds = %bb.c, %.critedge113
  %.0102147 = phi i32 [ %.2, %.critedge113 ], [ %2, %bb.c ] ; 3 uses
  %.0104146 = phi i32 [ %.2106, %.critedge113 ], [ 0, %bb.c ] ; 2 uses
  %i.af = sext i32 %.0104146 to i64
  %i.ag = sext i32 %.0102147 to i64               ; 3 uses
  %i.ah = add nsw i32 %.0104146, 1
  %smax169 = tail call i32 @llvm.smax.i32(i32 %.0102147, i32 %i.ah)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.f
  %indvars.iv167 = phi i64 [ %i.af, %.preheader ], [ %indvars.iv.next168, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv167
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !77
  %i.ak = fcmp olt float %i.aj, %i.m
  br i1 %i.ak, label %bb.f, label %.critedge.split.loop.exit188

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.al = icmp slt i64 %indvars.iv.next168, %i.ag
  br i1 %i.al, label %bb.e, label %.critedge, !llvm.loop !71

.critedge.split.loop.exit188:                     ; preds = %bb.e
  %i.am = trunc nsw i64 %indvars.iv167 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.split.loop.exit188
  %.1105.lcssa = phi i32 [ %i.am, %.critedge.split.loop.exit188 ], [ %smax169, %bb.f ] ; 5 uses
  %i.an = sext i32 %.1105.lcssa to i64            ; 3 uses
  %i.ao = icmp sgt i32 %.0102147, %.1105.lcssa
  br i1 %i.ao, label %.lr.ph202, label %.critedge113

bb.g:                                             ; preds = %.lr.ph202
  %i.ap = icmp sgt i64 %indvars.iv.next172, %i.an
  br i1 %i.ap, label %.lr.ph202, label %.critedge113, !llvm.loop !72

.lr.ph202:                                        ; preds = %.critedge, %bb.g
  %indvars.iv171201 = phi i64 [ %indvars.iv.next172, %bb.g ], [ %i.ag, %.critedge ]
  %indvars.iv.next172 = add nsw i64 %indvars.iv171201, -1 ; 7 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next172
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !77
  %i.as = fcmp ult float %i.ar, %i.m
  br i1 %i.as, label %.critedge2, label %bb.g, !llvm.loop !72

.critedge2:                                       ; preds = %.lr.ph202
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next172 ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next172 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !36
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !36
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !36
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.az = load i64, ptr %i.ay, align 4, !tbaa !27
  %i.ba = load i64, ptr %i.at, align 4, !tbaa !27
  store i64 %i.ba, ptr %i.ay, align 4, !tbaa !27
  store i64 %i.az, ptr %i.at, align 4, !tbaa !27
  %i.bb = add nsw i32 %.1105.lcssa, 1
  br label %.critedge113

.critedge113:                                     ; preds = %bb.g, %.critedge, %.critedge2
  %.2106 = phi i32 [ %i.bb, %.critedge2 ], [ %.1105.lcssa, %.critedge ], [ %.1105.lcssa, %bb.g ] ; 3 uses
  %.2.in = phi i64 [ %indvars.iv.next172, %.critedge2 ], [ %i.ag, %.critedge ], [ %indvars.iv.next172, %bb.g ]
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %i.bc = icmp slt i32 %.2106, %.2
  br i1 %i.bc, label %.preheader, label %.loopexit, !llvm.loop !73

.preheader128:                                    ; preds = %bb.c, %.critedge114
  %.3143 = phi i32 [ %.5, %.critedge114 ], [ %2, %bb.c ] ; 3 uses
  %.3107142 = phi i32 [ %.5109, %.critedge114 ], [ 0, %bb.c ] ; 2 uses
  %i.bd = sext i32 %.3107142 to i64
  %i.be = sext i32 %.3143 to i64                  ; 3 uses
  %i.bf = add nsw i32 %.3107142, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %.3143, i32 %i.bf)
  br label %bb.h

bb.h:                                             ; preds = %.preheader128, %bb.i
  %indvars.iv161 = phi i64 [ %i.bd, %.preheader128 ], [ %indvars.iv.next162, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv161
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !78
  %i.bj = fcmp olt float %i.bi, %i.o
  br i1 %i.bj, label %bb.i, label %.critedge4.split.loop.exit186

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.bk = icmp slt i64 %indvars.iv.next162, %i.be
  br i1 %i.bk, label %bb.h, label %.critedge4, !llvm.loop !74

.critedge4.split.loop.exit186:                    ; preds = %bb.h
  %i.bl = trunc nsw i64 %indvars.iv161 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.i, %.critedge4.split.loop.exit186
  %.4108.lcssa = phi i32 [ %i.bl, %.critedge4.split.loop.exit186 ], [ %smax, %bb.i ] ; 5 uses
  %i.bm = sext i32 %.4108.lcssa to i64            ; 3 uses
  %i.bn = icmp sgt i32 %.3143, %.4108.lcssa
  br i1 %i.bn, label %.lr.ph, label %.critedge114

bb.j:                                             ; preds = %.lr.ph
  %i.bo = icmp sgt i64 %indvars.iv.next165, %i.bm
  br i1 %i.bo, label %.lr.ph, label %.critedge114, !llvm.loop !75

.lr.ph:                                           ; preds = %.critedge4, %bb.j
  %indvars.iv164200 = phi i64 [ %indvars.iv.next165, %bb.j ], [ %i.be, %.critedge4 ]
  %indvars.iv.next165 = add nsw i64 %indvars.iv164200, -1 ; 6 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next165 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !78
  %i.bs = fcmp ult float %i.br, %i.o
  br i1 %i.bs, label %.critedge6, label %bb.j, !llvm.loop !75

.critedge6:                                       ; preds = %.lr.ph
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next165 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !36
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !36
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !36
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.by = load i64, ptr %i.bx, align 4, !tbaa !27
  %i.bz = load i64, ptr %i.bp, align 4, !tbaa !27
  store i64 %i.bz, ptr %i.bx, align 4, !tbaa !27
  store i64 %i.by, ptr %i.bp, align 4, !tbaa !27
  %i.ca = add nsw i32 %.4108.lcssa, 1
  br label %.critedge114

.critedge114:                                     ; preds = %bb.j, %.critedge4, %.critedge6
  %.5109 = phi i32 [ %i.ca, %.critedge6 ], [ %.4108.lcssa, %.critedge4 ], [ %.4108.lcssa, %bb.j ] ; 3 uses
  %.5.in = phi i64 [ %indvars.iv.next165, %.critedge6 ], [ %i.be, %.critedge4 ], [ %indvars.iv.next165, %bb.j ]
  %.5 = trunc i64 %.5.in to i32                   ; 2 uses
  %i.cb = icmp slt i32 %.5109, %.5
  br i1 %i.cb, label %.preheader128, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %.critedge114, %.critedge113
  %.6 = phi i32 [ %.2106, %.critedge113 ], [ %.5109, %.critedge114 ] ; 3 uses
  %i.cc = icmp sgt i32 %.6, 0
  %i.cd = icmp slt i32 %.6, %2
  %or.cond = and i1 %i.cc, %i.cd
  %i.ce = lshr i32 %2, 1
  %.0 = select i1 %or.cond, i32 %.6, i32 %i.ce
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %.0, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !22}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS10b2TreeNode", !9, i64 0}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"p1 _ZTS6b2AABB", !9, i64 0}
!13 = !{!"p1 _ZTS6b2Vec2", !9, i64 0}
!14 = !{!"b2DynamicTree", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !11, i64 32, !12, i64 40, !13, i64 48, !11, i64 56, !6, i64 64}
!15 = !{!14, !6, i64 8}
!16 = !{!14, !6, i64 16}
!17 = !{!14, !6, i64 12}
!18 = !{!14, !10, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!14, !6, i64 20}
!21 = !{!14, !6, i64 24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!14, !11, i64 32}
!24 = !{!14, !6, i64 64}
!25 = !{!14, !13, i64 48}
!26 = !{!"float", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"b2Vec2", !26, i64 0, !26, i64 4}
!29 = !{!"b2AABB", !28, i64 0, !28, i64 8}
!30 = !{!"long", !5, i64 0}
!31 = !{!"short", !5, i64 0}
!32 = !{!"b2TreeNode", !29, i64 0, !30, i64 16, !5, i64 24, !5, i64 32, !31, i64 36, !31, i64 38}
!33 = !{!32, !30, i64 16}
!34 = !{!32, !31, i64 36}
!35 = !{!32, !31, i64 38}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !39}
!38 = distinct !{!38, !22}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!14, !12, i64 40}
!41 = !{!14, !11, i64 56}
!42 = distinct !{!42, !22}
!43 = !{!30, !30, i64 0}
!44 = !{!31, !31, i64 0}
!45 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 8, !43, i64 24, i64 8, !19, i64 32, i64 4, !19, i64 36, i64 2, !44, i64 38, i64 2, !44}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = !{!29, !26, i64 0}
!49 = !{!29, !26, i64 4}
!50 = !{!29, !26, i64 8}
!51 = !{!29, !26, i64 12}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = !{!"b2RayCastInput", !28, i64 0, !28, i64 8, !26, i64 16}
!58 = !{!57, !26, i64 16}
!59 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27}
!60 = distinct !{!60, !22}
!61 = !{!"b2BoxCastInput", !29, i64 0, !28, i64 16, !26, i64 24}
!62 = !{!61, !26, i64 24}
!63 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27, i64 20, i64 4, !27, i64 24, i64 4, !27}
!64 = !{!"b2RebuildItem", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!65 = !{!64, !6, i64 0}
!66 = !{!64, !6, i64 4}
!67 = !{!64, !6, i64 8}
!68 = !{!64, !6, i64 16}
!69 = !{!64, !6, i64 12}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = !{!28, !26, i64 0}
!78 = !{!28, !26, i64 4}
end_hunk_1
