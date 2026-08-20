inline.NumInlined: 53
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.7 = private unnamed_addr constant [12 x i8] c"Pin+Wire: {\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" %3.2f\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" }  \00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Wire %3.2f  Degree %d  Type: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Cascade\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Cluster\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Node %3d : Lev =%3d   \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Del%d =%4.2f  \00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Critical delay %5.2f. Critical outputs %5.2f %%\0A\00", align 1
@str = private unnamed_addr constant [66 x i8] c"Running mapper into LUT structures with the following parameters:\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Abc_NtkIfifStart(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13 ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !31 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.val.val, ptr %i.e, align 8, !tbaa !34
  %i.f = sext i32 %.val.val to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 28) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !35
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Abc_NtkIfifStop(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_ObjSortByDelay(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %.val = load i32, ptr %i.a, align 4, !tbaa !36  ; 2 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph48, label %.critedge

.lr.ph48:                                         ; preds = %bb.a
  %.val34 = load ptr, ptr %1, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %1, i64 32
  %.val35 = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr i8, ptr %.val34, i64 32
  %.val34.val = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr i8, ptr %.val34.val, i64 8
  %.val34.val.val = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph48, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val35, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val34.val.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %i.m, i64 20
  %.val36 = load i32, ptr %i.o, align 4
  %i.p = and i32 %.val36, 15
  switch i32 %i.p, label %.preheader [
    i32 5, label %.loopexit
    i32 2, label %.loopexit
  ]

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.val39 = load ptr, ptr %i.f, align 8, !tbaa !35
  %invariant.gep = getelementptr [4 x i8], ptr %.val39, i64 %i.g ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.s = phi float [ %.pre, %.lr.ph ], [ %i.aa, %bb.e ]
  %i.t = phi ptr [ %i.m, %.lr.ph ], [ %i.ai, %bb.e ] ; 3 uses
  %indvars.iv49 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next50, %bb.e ] ; 3 uses
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, -1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next50 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %.val40 = load i32, ptr %i.w, align 8, !tbaa !46
  %i.x = sext i32 %.val40 to i64
  %gep = getelementptr [28 x i8], ptr %invariant.gep, i64 %i.x
  %i.y = load float, ptr %gep, align 4, !tbaa !45
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next50
  %i.aa = load float, ptr %i.z, align 4, !tbaa !45 ; 2 uses
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr i8, ptr %i.t, i64 16
  %.val38 = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ad = sext i32 %.val38 to i64
  %gep45 = getelementptr [28 x i8], ptr %invariant.gep, i64 %i.ad
  %i.ae = load float, ptr %gep45, align 4, !tbaa !45
  %i.af = fadd float %i.ae, %i.s
  %i.ag = fcmp olt float %i.ab, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv49
  store ptr %i.t, ptr %i.u, align 8, !tbaa !44
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = phi ptr [ %i.v, %bb.c ], [ %i.t, %bb.d ]
  %i.aj = icmp sgt i64 %indvars.iv49, 1
  br i1 %i.aj, label %bb.c, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.b, %bb.b
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !49

.critedge:                                        ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @Abc_ObjDelay0(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %1, i64 28
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !36 ; 5 uses
  %i.c = icmp sgt i32 %.val.i, 0
  br i1 %i.c, label %.lr.ph48.i, label %._crit_edge

.lr.ph48.i:                                       ; preds = %bb.a
  %.val34.i = load ptr, ptr %1, align 8, !tbaa !39
  %i.d = getelementptr i8, ptr %1, i64 32
  %.val35.i = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr i8, ptr %.val34.i, i64 32
  %.val34.val.i = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %.val34.val.i, i64 8
  %.val34.val.val.i = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = zext nneg i32 %.val.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph48.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val34.val.val.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %i.m, i64 20
  %.val36.i = load i32, ptr %i.o, align 4
  %i.p = and i32 %.val36.i, 15
  switch i32 %i.p, label %.preheader.i [
    i32 5, label %.loopexit.i
    i32 2, label %.loopexit.i
  ]

.preheader.i:                                     ; preds = %bb.b
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.val39.i = load ptr, ptr %i.g, align 8, !tbaa !35
  %invariant.gep.i = getelementptr i8, ptr %.val39.i, i64 4 ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %i.s = phi float [ %.pre.i, %.lr.ph.i ], [ %i.aa, %bb.e ]
  %i.t = phi ptr [ %i.m, %.lr.ph.i ], [ %i.ai, %bb.e ] ; 3 uses
  %indvars.iv49.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next50.i, %bb.e ] ; 3 uses
  %indvars.iv.next50.i = add nsw i64 %indvars.iv49.i, -1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next50.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %.val40.i = load i32, ptr %i.w, align 8, !tbaa !46
  %i.x = sext i32 %.val40.i to i64
  %gep.i = getelementptr [28 x i8], ptr %invariant.gep.i, i64 %i.x
  %i.y = load float, ptr %gep.i, align 4, !tbaa !45
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next50.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !45 ; 2 uses
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr i8, ptr %i.t, i64 16
  %.val38.i = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ad = sext i32 %.val38.i to i64
  %gep45.i = getelementptr [28 x i8], ptr %invariant.gep.i, i64 %i.ad
  %i.ae = load float, ptr %gep45.i, align 4, !tbaa !45
  %i.af = fadd float %i.s, %i.ae
  %i.ag = fcmp olt float %i.ab, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv49.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !44
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi ptr [ %i.v, %bb.c ], [ %i.t, %bb.d ]
  %i.aj = icmp sgt i64 %indvars.iv49.i, 1
  br i1 %i.aj, label %bb.c, label %.loopexit.i, !llvm.loop !47

.loopexit.i:                                      ; preds = %bb.e, %.preheader.i, %bb.b, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.b, !llvm.loop !49

.lr.ph:                                           ; preds = %.loopexit.i
  %i.ak = getelementptr i8, ptr %0, i64 24
  %.val11 = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ao = icmp eq i32 %.val.i, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.014 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.bm, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !44
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %.val12 = load i32, ptr %i.ar, align 8, !tbaa !46
  %i.as = sext i32 %.val12 to i64
  %i.at = getelementptr inbounds [28 x i8], ptr %.val11, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !45
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !45
  %i.ay = fadd float %i.av, %i.ax                 ; 2 uses
  %i.az = fcmp ogt float %.014, %i.ay
  %i.ba = select i1 %i.az, float %.014, float %i.ay ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !44
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %.val12.1 = load i32, ptr %i.bd, align 8, !tbaa !46
  %i.be = sext i32 %.val12.1 to i64
  %i.bf = getelementptr inbounds [28 x i8], ptr %.val11, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !45
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !45
  %i.bk = fadd float %i.bh, %i.bj                 ; 2 uses
  %i.bl = fcmp ogt float %i.ba, %i.bk
  %i.bm = select i1 %i.bl, float %i.ba, float %i.bk ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !50

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.014.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i32 %.val.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !44
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %.val12.epil = load i32, ptr %i.bp, align 8, !tbaa !46
  %i.bq = sext i32 %.val12.epil to i64
  %i.br = getelementptr inbounds [28 x i8], ptr %.val11, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !45
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.epil.init
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !45
  %i.bw = fadd float %i.bt, %i.bv                 ; 2 uses
  %i.bx = fcmp ogt float %.014.epil.init, %i.bw
  %i.by = select i1 %i.bx, float %.014.epil.init, float %i.bw
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ], [ %i.by, %.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret float %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @Abc_ObjDelay1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %1, i64 28
  %.val45 = load i32, ptr %i.b, align 4, !tbaa !36 ; 3 uses
  %i.c = icmp sgt i32 %.val45, 0
  br i1 %i.c, label %.lr.ph48.i, label %.loopexit

.lr.ph48.i:                                       ; preds = %bb.a
  %.val34.i = load ptr, ptr %1, align 8, !tbaa !39
  %i.d = getelementptr i8, ptr %1, i64 32
  %.val35.i = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr i8, ptr %.val34.i, i64 32
  %.val34.val.i = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %.val34.val.i, i64 8
  %.val34.val.val.i = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = zext nneg i32 %.val45 to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph48.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val34.val.val.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %i.m, i64 20
  %.val36.i = load i32, ptr %i.o, align 4
  %i.p = and i32 %.val36.i, 15
  switch i32 %i.p, label %.preheader.i [
    i32 5, label %.loopexit.i
    i32 2, label %.loopexit.i
  ]

.preheader.i:                                     ; preds = %bb.b
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.val39.i = load ptr, ptr %i.g, align 8, !tbaa !35
  %invariant.gep.i = getelementptr i8, ptr %.val39.i, i64 4 ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %i.s = phi float [ %.pre.i, %.lr.ph.i ], [ %i.aa, %bb.e ]
  %i.t = phi ptr [ %i.m, %.lr.ph.i ], [ %i.ai, %bb.e ] ; 3 uses
  %indvars.iv49.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next50.i, %bb.e ] ; 3 uses
  %indvars.iv.next50.i = add nsw i64 %indvars.iv49.i, -1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next50.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %.val40.i = load i32, ptr %i.w, align 8, !tbaa !46
  %i.x = sext i32 %.val40.i to i64
  %gep.i = getelementptr [28 x i8], ptr %invariant.gep.i, i64 %i.x
  %i.y = load float, ptr %gep.i, align 4, !tbaa !45
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next50.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !45 ; 2 uses
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr i8, ptr %i.t, i64 16
  %.val38.i = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ad = sext i32 %.val38.i to i64
  %gep45.i = getelementptr [28 x i8], ptr %invariant.gep.i, i64 %i.ad
  %i.ae = load float, ptr %gep45.i, align 4, !tbaa !45
  %i.af = fadd float %i.s, %i.ae
  %i.ag = fcmp olt float %i.ab, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv49.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !44
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi ptr [ %i.v, %bb.c ], [ %i.t, %bb.d ]
  %i.aj = icmp sgt i64 %indvars.iv49.i, 1
  br i1 %i.aj, label %bb.c, label %.loopexit.i, !llvm.loop !47

.loopexit.i:                                      ; preds = %bb.e, %.preheader.i, %bb.b, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.b, !llvm.loop !49

.lr.ph:                                           ; preds = %.loopexit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 148
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51
  %i.ao = getelementptr i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.ar = sext i32 %i.an to i64
  %wide.trip.count = zext nneg i32 %.val45 to i64
  %.val50 = load ptr, ptr %i.ao, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.04253 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bk, %bb.h ] ; 2 uses
  %i.as = icmp slt i64 %indvars.iv, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val51 = load i32, ptr %i.av, align 8, !tbaa !46
  %i.aw = sext i32 %.val51 to i64
  %i.ax = getelementptr inbounds [28 x i8], ptr %.val50, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !45
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !45 ; 2 uses
  %i.bc = fadd float %i.az, %i.bb                 ; 3 uses
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load float, ptr %i.ax, align 4, !tbaa !45
  %i.be = fadd float %i.bb, %i.bd
  %i.bf = load float, ptr %i.aq, align 8, !tbaa !54
  %i.bg = fsub float %i.be, %i.bf                 ; 2 uses
  %i.bh = fcmp olt float %i.bc, %i.bg
  %i.bi = select i1 %i.bh, float %i.bc, float %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi float [ %i.bi, %bb.g ], [ %i.bc, %bb.f ] ; 2 uses
  %i.bj = fcmp ogt float %.04253, %.0
  %i.bk = select i1 %i.bj, float %.04253, float %.0 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !55

.loopexit:                                        ; preds = %bb.h, %bb.a
  %.044 = phi float [ 0.000000e+00, %bb.a ], [ %i.bk, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret float %.044
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @Abc_ObjDelayDegree(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 28
  %.val.i = load i32, ptr %i.f, align 4, !tbaa !36 ; 7 uses
  %i.g = icmp sgt i32 %.val.i, 0
  br i1 %i.g, label %.lr.ph48.i, label %._crit_edge

.lr.ph48.i:                                       ; preds = %bb.a
  %.val34.i = load ptr, ptr %1, align 8, !tbaa !39
  %i.h = getelementptr i8, ptr %1, i64 32
  %.val35.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.i = getelementptr i8, ptr %.val34.i, i64 32
  %.val34.val.i = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr i8, ptr %.val34.val.i, i64 8
  %.val34.val.val.i = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = sext i32 %i.e to i64
  %wide.trip.count.i = zext nneg i32 %.val.i to i64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph48.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !42
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %.val34.val.val.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.r, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %i.r, i64 20
  %.val36.i = load i32, ptr %i.t, align 4
  %i.u = and i32 %.val36.i, 15
  switch i32 %i.u, label %.preheader.i [
    i32 5, label %.loopexit.i
    i32 2, label %.loopexit.i
  ]

.preheader.i:                                     ; preds = %bb.b
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.val39.i = load ptr, ptr %i.k, align 8, !tbaa !35
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val39.i, i64 %i.l ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %i.v = phi float [ %.pre.i, %.lr.ph.i ], [ %i.ad, %bb.e ]
  %i.w = phi ptr [ %i.r, %.lr.ph.i ], [ %i.al, %bb.e ] ; 3 uses
  %indvars.iv49.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next50.i, %bb.e ] ; 3 uses
  %indvars.iv.next50.i = add nsw i64 %indvars.iv49.i, -1 ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next50.i ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val40.i = load i32, ptr %i.z, align 8, !tbaa !46
  %i.aa = sext i32 %.val40.i to i64
  %gep.i = getelementptr [28 x i8], ptr %invariant.gep.i, i64 %i.aa
  %i.ab = load float, ptr %gep.i, align 4, !tbaa !45
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next50.i
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !45 ; 2 uses
  %i.ae = fadd float %i.ab, %i.ad
  %i.af = getelementptr i8, ptr %i.w, i64 16
  %.val38.i = load i32, ptr %i.af, align 8, !tbaa !46
  %i.ag = sext i32 %.val38.i to i64
  %gep45.i = getelementptr [28 x i8], ptr %invariant.gep.i, i64 %i.ag
  %i.ah = load float, ptr %gep45.i, align 4, !tbaa !45
  %i.ai = fadd float %i.v, %i.ah
  %i.aj = fcmp olt float %i.ae, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv49.i
  store ptr %i.w, ptr %i.x, align 8, !tbaa !44
  store ptr %i.y, ptr %i.ak, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi ptr [ %i.y, %bb.c ], [ %i.w, %bb.d ]
  %i.am = icmp sgt i64 %indvars.iv49.i, 1
  br i1 %i.am, label %bb.c, label %.loopexit.i, !llvm.loop !47

.loopexit.i:                                      ; preds = %bb.e, %.preheader.i, %bb.b, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.b, !llvm.loop !49

.lr.ph:                                           ; preds = %.loopexit.i
  %i.an = getelementptr i8, ptr %0, i64 24
  %.val28 = load ptr, ptr %i.an, align 8, !tbaa !35 ; 3 uses
  %i.ao = sext i32 %i.e to i64                    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  %i.aq = icmp sgt i32 %2, 0
  br i1 %i.aq, label %bb.f, label %.lr.ph.split.us

bb.f:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.as = zext nneg i32 %2 to i64
  %i.at = load ptr, ptr %i.a, align 16, !tbaa !44
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %.val29.peel = load i32, ptr %i.au, align 8, !tbaa !46
  %i.av = sext i32 %.val29.peel to i64
  %i.aw = getelementptr inbounds [28 x i8], ptr %.val28, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ao
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !45
  %i.az = load float, ptr %i.ap, align 4, !tbaa !45 ; 2 uses
  %i.ba = fadd float %i.ay, %i.az                 ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.aw, i64 %i.as
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !45
  %i.be = fadd float %i.az, %i.bd
  %i.bf = load float, ptr %i.ar, align 8, !tbaa !54
  %i.bg = fsub float %i.be, %i.bf                 ; 2 uses
  %i.bh = fcmp olt float %i.ba, %i.bg
  %i.bi = select i1 %i.bh, float %i.ba, float %i.bg ; 2 uses
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  %i.bk = select i1 %i.bj, float 0.000000e+00, float %i.bi ; 3 uses
  %exitcond39.peel.not = icmp eq i32 %.val.i, 1
  br i1 %exitcond39.peel.not, label %._crit_edge, label %.lr.ph.split.peel.next

.lr.ph.split.peel.next:                           ; preds = %bb.f
  %wide.trip.count38 = zext nneg i32 %.val.i to i64
  %invariant.gep43 = getelementptr [4 x i8], ptr %.val28, i64 %i.ao ; 3 uses
  %i.bl = add nsw i64 %wide.trip.count38, -1      ; 3 uses
  %xtraiter52 = and i64 %i.bl, 1
  %i.bm = icmp eq i32 %.val.i, 2
  br i1 %i.bm, label %.epil.preheader51, label %.lr.ph.split.peel.next.new

.lr.ph.split.peel.next.new:                       ; preds = %.lr.ph.split.peel.next
  %unroll_iter56 = and i64 %i.bl, -2
  br label %bb.h

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %invariant.gep = getelementptr [4 x i8], ptr %.val28, i64 %i.ao ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bn = icmp eq i32 %.val.i, 1
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.split.us.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next.1, %bb.g ] ; 4 uses
  %.02331.us = phi float [ 0.000000e+00, %.lr.ph.split.us.new ], [ %i.ch, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !44
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %.val29.us = load i32, ptr %i.bq, align 8, !tbaa !46
  %i.br = sext i32 %.val29.us to i64
  %gep = getelementptr [28 x i8], ptr %invariant.gep, i64 %i.br
  %i.bs = load float, ptr %gep, align 4, !tbaa !45
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !45
  %i.bv = fadd float %i.bs, %i.bu                 ; 2 uses
  %i.bw = fcmp ogt float %.02331.us, %i.bv
  %i.bx = select i1 %i.bw, float %.02331.us, float %i.bv ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %.val29.us.1 = load i32, ptr %i.ca, align 8, !tbaa !46
  %i.cb = sext i32 %.val29.us.1 to i64
  %gep.1 = getelementptr [28 x i8], ptr %invariant.gep, i64 %i.cb
  %i.cc = load float, ptr %gep.1, align 4, !tbaa !45
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !45
  %i.cf = fadd float %i.cc, %i.ce                 ; 2 uses
  %i.cg = fcmp ogt float %i.bx, %i.cf
  %i.ch = select i1 %i.cg, float %i.bx, float %i.cf ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit47.unr-lcssa, label %bb.g, !llvm.loop !56

bb.h:                                             ; preds = %bb.h, %.lr.ph.split.peel.next.new
  %indvars.iv35 = phi i64 [ 1, %.lr.ph.split.peel.next.new ], [ %indvars.iv.next36.1, %bb.h ] ; 4 uses
  %.02331 = phi float [ %i.bk, %.lr.ph.split.peel.next.new ], [ %i.db, %bb.h ] ; 2 uses
  %niter57 = phi i64 [ 0, %.lr.ph.split.peel.next.new ], [ %niter57.next.1, %bb.h ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv35
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !44
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %.val29 = load i32, ptr %i.ck, align 8, !tbaa !46
  %i.cl = sext i32 %.val29 to i64
  %gep44 = getelementptr [28 x i8], ptr %invariant.gep43, i64 %i.cl
  %i.cm = load float, ptr %gep44, align 4, !tbaa !45
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv35
  %i.co = load float, ptr %i.cn, align 4, !tbaa !45
  %i.cp = fadd float %i.cm, %i.co                 ; 2 uses
  %i.cq = fcmp ogt float %.02331, %i.cp
  %i.cr = select i1 %i.cq, float %.02331, float %i.cp ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next36
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val29.1 = load i32, ptr %i.cu, align 8, !tbaa !46
  %i.cv = sext i32 %.val29.1 to i64
  %gep44.1 = getelementptr [28 x i8], ptr %invariant.gep43, i64 %i.cv
  %i.cw = load float, ptr %gep44.1, align 4, !tbaa !45
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next36
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !45
  %i.cz = fadd float %i.cw, %i.cy                 ; 2 uses
  %i.da = fcmp ogt float %i.cr, %i.cz
  %i.db = select i1 %i.da, float %i.cr, float %i.cz ; 3 uses
  %indvars.iv.next36.1 = add nuw nsw i64 %indvars.iv35, 2 ; 2 uses
  %niter57.next.1 = add nuw i64 %niter57, 2       ; 2 uses
  %niter57.ncmp.1 = icmp eq i64 %niter57.next.1, %unroll_iter56
  br i1 %niter57.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !57

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %._crit_edge, label %.epil.preheader51

.epil.preheader51:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.peel.next
  %indvars.iv35.epil.init = phi i64 [ 1, %.lr.ph.split.peel.next ], [ %indvars.iv.next36.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02331.epil.init = phi float [ %i.bk, %.lr.ph.split.peel.next ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv35.epil.init
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %.val29.epil = load i32, ptr %i.de, align 8, !tbaa !46
  %i.df = sext i32 %.val29.epil to i64
  %gep44.epil = getelementptr [28 x i8], ptr %invariant.gep43, i64 %i.df
  %i.dg = load float, ptr %gep44.epil, align 4, !tbaa !45
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv35.epil.init
  %i.di = load float, ptr %i.dh, align 4, !tbaa !45
  %i.dj = fadd float %i.dg, %i.di                 ; 2 uses
  %i.dk = fcmp ogt float %.02331.epil.init, %i.dj
  %i.dl = select i1 %i.dk, float %.02331.epil.init, float %i.dj
  br label %._crit_edge

._crit_edge.loopexit47.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit47.unr-lcssa, %.lr.ph.split.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next.1, %._crit_edge.loopexit47.unr-lcssa ] ; 2 uses
  %.02331.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us ], [ %i.ch, %._crit_edge.loopexit47.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i32 %.val.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !44
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %.val29.us.epil = load i32, ptr %i.do, align 8, !tbaa !46
  %i.dp = sext i32 %.val29.us.epil to i64
  %gep.epil = getelementptr [28 x i8], ptr %invariant.gep, i64 %i.dp
  %i.dq = load float, ptr %gep.epil, align 4, !tbaa !45
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.epil.init
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !45
  %i.dt = fadd float %i.dq, %i.ds                 ; 2 uses
  %i.du = fcmp ogt float %.02331.us.epil.init, %i.dt
  %i.dv = select i1 %i.du, float %.02331.us.epil.init, float %i.dt
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit47.unr-lcssa, %.epil.preheader51, %._crit_edge.loopexit.unr-lcssa, %bb.a, %bb.f
  %.023.lcssa = phi float [ %i.dl, %.epil.preheader51 ], [ %i.bk, %bb.f ], [ 0.000000e+00, %bb.a ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ], [ %i.ch, %._crit_edge.loopexit47.unr-lcssa ], [ %i.dv, %.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret float %.023.lcssa
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkPerformIfif(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 8 uses
  %i.b = alloca [6 x ptr], align 16               ; 12 uses
  %i.c = tail call i32 @Abc_NtkToAig(ptr noundef %0) #14 ; 0 uses
  %i.d = tail call i32 @Abc_NtkLevel(ptr noundef %0) #14 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !61
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !45
  %i.p = fpext float %i.o to double
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.p) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.c, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = load float, ptr %i.x, align 8, !tbaa !54
  %i.z = fpext float %i.y to double
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !64
  %.not89 = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %.not89, ptr @.str.12, ptr @.str.11
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.z, i32 noundef %i.ab, ptr noundef nonnull %i.ae) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.ag = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13 ; 6 uses
  store ptr %0, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %1, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr i8, ptr %.val.i, i64 4
end_hunk_0
