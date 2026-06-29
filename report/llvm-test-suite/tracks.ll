inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, ptr, i64 }
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Reading track data from:\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Number of 2D tracks = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Number of 3D tracks = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Number of segments = %ld\0A\00", align 1
@str = private unnamed_addr constant [40 x i8] c"Importing ray tracing data from file...\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @generate_2D_tracks(ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 8 uses
  %i.c = shl i64 %i.b, 5                          ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #15 ; 9 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !15
  %i.f = add i64 %i.e, %i.c
  store i64 %i.f, ptr %1, align 8, !tbaa !15
  %i.g = icmp sgt i64 %i.b, 0
  br i1 %i.g, label %.lr.ph, label %generate_2D_segments.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.4.0.copyload15 = load float, ptr %.sroa.4.0..sroa_idx14, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.h = sitofp i64 %.sroa.3.0.copyload to float
  %i.i = sitofp i64 %.sroa.3.0.copyload to double
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.j = shl i64 %i.u, 4                          ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 5 uses
  %i.l = load i64, ptr %1, align 8, !tbaa !15
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %1, align 8, !tbaa !15
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.b, 4
  br i1 %i.n, label %.lr.ph41.i.epil.preheader, label %._crit_edge.loopexit.i.new

._crit_edge.loopexit.i.new:                       ; preds = %._crit_edge.loopexit.i
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph41.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.03236.i = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %bb.b ]
  %.03335.i = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %bb.b ] ; 2 uses
  %i.o = tail call double @sqrt(double noundef %i.i) #16, !tbaa !4
  %i.p = fptrunc double %i.o to float
  %i.q = tail call float @nrand(float noundef %i.h, float noundef %i.p) #16
  %i.r = fptosi float %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03335.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !16
  %i.u = add nsw i64 %.03236.i, %i.r              ; 2 uses
  %i.v = add nuw nsw i64 %.03335.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b

.lr.ph41.i:                                       ; preds = %.lr.ph41.i, %._crit_edge.loopexit.i.new
  %.03039.i = phi i64 [ 0, %._crit_edge.loopexit.i.new ], [ %i.au, %.lr.ph41.i ] ; 5 uses
  %.03138.i = phi i64 [ 0, %._crit_edge.loopexit.i.new ], [ %i.at, %.lr.ph41.i ] ; 2 uses
  %niter = phi i64 [ 0, %._crit_edge.loopexit.i.new ], [ %niter.next.3, %.lr.ph41.i ]
  %i.w = getelementptr inbounds [16 x i8], ptr %i.k, i64 %.03138.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.w, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ab = add nsw i64 %i.aa, %.03138.i            ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = add nsw i64 %i.ag, %i.ab                ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16
  %i.an = add nsw i64 %i.am, %i.ah                ; 2 uses
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.an
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = add nsw i64 %i.as, %i.an                ; 2 uses
  %i.au = add nuw nsw i64 %.03039.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.preheader.unr-lcssa, label %.lr.ph41.i

.preheader.i.preheader.unr-lcssa:                 ; preds = %.lr.ph41.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.preheader, label %.lr.ph41.i.epil.preheader

.lr.ph41.i.epil.preheader:                        ; preds = %.preheader.i.preheader.unr-lcssa, %._crit_edge.loopexit.i
  %.03039.i.epil.init = phi i64 [ 0, %._crit_edge.loopexit.i ], [ %i.au, %.preheader.i.preheader.unr-lcssa ]
  %.03138.i.epil.init = phi i64 [ 0, %._crit_edge.loopexit.i ], [ %i.at, %.preheader.i.preheader.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %.lr.ph41.i.epil

.lr.ph41.i.epil:                                  ; preds = %.lr.ph41.i.epil, %.lr.ph41.i.epil.preheader
  %.03039.i.epil = phi i64 [ %i.bb, %.lr.ph41.i.epil ], [ %.03039.i.epil.init, %.lr.ph41.i.epil.preheader ] ; 2 uses
  %.03138.i.epil = phi i64 [ %i.ba, %.lr.ph41.i.epil ], [ %.03138.i.epil.init, %.lr.ph41.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph41.i.epil ], [ 0, %.lr.ph41.i.epil.preheader ]
  %i.av = getelementptr inbounds [16 x i8], ptr %i.k, i64 %.03138.i.epil
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i.epil ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = add nsw i64 %i.az, %.03138.i.epil
  %i.bb = add nuw nsw i64 %.03039.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.preheader, label %.lr.ph41.i.epil, !llvm.loop !19

.preheader.i.preheader:                           ; preds = %.lr.ph41.i.epil, %.preheader.i.preheader.unr-lcssa
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge44.i
  %.02945.i = phi i64 [ %i.bi, %._crit_edge44.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.02945.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16 ; 3 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph43.i, label %._crit_edge44.i

.lr.ph43.i:                                       ; preds = %.preheader.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = uitofp nneg i64 %i.be to float
  br label %bb.c

._crit_edge44.i:                                  ; preds = %bb.c, %.preheader.i
  %i.bi = add nuw nsw i64 %.02945.i, 1            ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.bi, %i.b
  br i1 %exitcond48.not.i, label %generate_2D_segments.exit, label %.preheader.i

bb.c:                                             ; preds = %bb.c, %.lr.ph43.i
  %.042.i = phi i64 [ 0, %.lr.ph43.i ], [ %i.bo, %bb.c ] ; 2 uses
  %i.bj = tail call float @urand() #16
  %i.bk = fmul float %.sroa.4.0.copyload15, %i.bj
  %i.bl = fdiv float %i.bk, %i.bh
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.042.i
  store float %i.bl, ptr %i.bn, align 8, !tbaa !21
  %i.bo = add nuw nsw i64 %.042.i, 1              ; 2 uses
  %exitcond11.not = icmp eq i64 %i.bo, %i.be
  br i1 %exitcond11.not, label %._crit_edge44.i, label %bb.c

generate_2D_segments.exit:                        ; preds = %._crit_edge44.i, %bb.a
  ret ptr %i.d

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.bp = tail call float @urand() #16
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.bp, ptr %i.bq, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.lr.ph.i, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare float @urand() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @generate_2D_segments(ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge46

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.d = sitofp i64 %.sroa.3.0.copyload to float
  %i.e = sitofp i64 %.sroa.3.0.copyload to double
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = shl i64 %i.q, 4                          ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #15 ; 5 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !15
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %2, align 8, !tbaa !15
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.b, 4
  br i1 %i.j, label %.lr.ph41.epil.preheader, label %._crit_edge.loopexit.new

._crit_edge.loopexit.new:                         ; preds = %._crit_edge.loopexit
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph41

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.03236 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ]
  %.03335 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  %i.k = tail call double @sqrt(double noundef %i.e) #16, !tbaa !4
  %i.l = fptrunc double %i.k to float
  %i.m = tail call float @nrand(float noundef %i.d, float noundef %i.l) #16
  %i.n = fptosi float %i.m to i64                 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03335
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !16
  %i.q = add nsw i64 %.03236, %i.n                ; 2 uses
  %i.r = add nuw nsw i64 %.03335, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

.preheader.lr.ph.unr-lcssa:                       ; preds = %.lr.ph41
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.lr.ph, label %.lr.ph41.epil.preheader

.lr.ph41.epil.preheader:                          ; preds = %.preheader.lr.ph.unr-lcssa, %._crit_edge.loopexit
  %.03039.epil.init = phi i64 [ 0, %._crit_edge.loopexit ], [ %i.az, %.preheader.lr.ph.unr-lcssa ]
  %.03138.epil.init = phi i64 [ 0, %._crit_edge.loopexit ], [ %i.ay, %.preheader.lr.ph.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph41.epil

.lr.ph41.epil:                                    ; preds = %.lr.ph41.epil, %.lr.ph41.epil.preheader
  %.03039.epil = phi i64 [ %i.y, %.lr.ph41.epil ], [ %.03039.epil.init, %.lr.ph41.epil.preheader ] ; 2 uses
  %.03138.epil = phi i64 [ %i.x, %.lr.ph41.epil ], [ %.03138.epil.init, %.lr.ph41.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph41.epil ], [ 0, %.lr.ph41.epil.preheader ]
  %i.s = getelementptr inbounds [16 x i8], ptr %i.g, i64 %.03138.epil
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039.epil ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.s, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = add nsw i64 %i.w, %.03138.epil
  %i.y = add nuw nsw i64 %.03039.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.lr.ph, label %.lr.ph41.epil, !llvm.loop !24

.preheader.lr.ph:                                 ; preds = %.lr.ph41.epil, %.preheader.lr.ph.unr-lcssa
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load float, ptr %i.z, align 8
  br label %.preheader

.lr.ph41:                                         ; preds = %.lr.ph41, %._crit_edge.loopexit.new
  %.03039 = phi i64 [ 0, %._crit_edge.loopexit.new ], [ %i.az, %.lr.ph41 ] ; 5 uses
  %.03138 = phi i64 [ 0, %._crit_edge.loopexit.new ], [ %i.ay, %.lr.ph41 ] ; 2 uses
  %niter = phi i64 [ 0, %._crit_edge.loopexit.new ], [ %niter.next.3, %.lr.ph41 ]
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.g, i64 %.03138
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add nsw i64 %i.af, %.03138              ; 2 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.am = add nsw i64 %i.al, %i.ag                ; 2 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.am
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = add nsw i64 %i.ar, %i.am                ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.as
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  store ptr %i.at, ptr %i.av, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.ay = add nsw i64 %i.ax, %i.as                ; 2 uses
  %i.az = add nuw nsw i64 %.03039, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.lr.ph.unr-lcssa, label %.lr.ph41

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge44
  %.02945 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bf, %._crit_edge44 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.02945 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  br label %bb.c

._crit_edge46:                                    ; preds = %._crit_edge44, %bb.a
  ret void

._crit_edge44:                                    ; preds = %bb.c, %.preheader
  %i.bf = add nuw nsw i64 %.02945, 1              ; 2 uses
  %exitcond48.not = icmp eq i64 %i.bf, %i.b
  br i1 %exitcond48.not, label %._crit_edge46, label %.preheader

bb.c:                                             ; preds = %.lr.ph43, %bb.c
  %.042 = phi i64 [ 0, %.lr.ph43 ], [ %i.bn, %bb.c ] ; 2 uses
  %i.bg = tail call float @urand() #16
  %i.bh = fmul float %i.bg, %i.aa
  %i.bi = load i64, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %i.bj = sitofp i64 %i.bi to float
  %i.bk = fdiv float %i.bh, %i.bj
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.042
  store float %i.bk, ptr %i.bm, align 8, !tbaa !21
  %i.bn = add nuw nsw i64 %.042, 1                ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.bi
  br i1 %i.bo, label %bb.c, label %._crit_edge44
}

; Function Attrs: nounwind uwtable
define dso_local i64 @segments_per_2D_track_distribution(ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = sitofp i64 %i.b to float
  %i.d = sitofp i64 %i.b to double
  %i.e = tail call double @sqrt(double noundef %i.d) #16, !tbaa !4
  %i.f = fptrunc double %i.e to float
  %i.g = tail call float @nrand(float noundef %i.c, float noundef %i.f) #16
  %i.h = fptosi float %i.g to i64
  ret i64 %i.h
}

declare float @nrand(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @free_2D_tracks(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.b) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @generate_tracks(ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 8 uses
  %i.c = shl i64 %i.b, 3                          ; 3 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #15 ; 9 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !15
  %i.f = add i64 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 8 uses
  %i.i = sext i32 %i.h to i64                     ; 7 uses
  %i.j = mul i64 %i.c, %i.i                       ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 5 uses
  %i.l = add i64 %i.j, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = mul i64 %i.n, 40                         ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #15 ; 3 uses
  %i.q = add i64 %i.o, %i.l                       ; 2 uses
  %i.r = icmp sgt i64 %i.b, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge114.split.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.b, 4
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph

.preheader78.lr.ph.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader78.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader78.lr.ph.unr-lcssa, %.lr.ph.preheader
  %.07280.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aq, %.preheader78.lr.ph.unr-lcssa ]
  %lcmp.mod237 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod237)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.07280.epil = phi i64 [ %i.w, %.lr.ph.epil ], [ %.07280.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.t = mul nsw i64 %.07280.epil, %i.i
  %i.u = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07280.epil
  store ptr %i.u, ptr %i.v, align 8, !tbaa !28
  %i.w = add nuw nsw i64 %.07280.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader78.lr.ph, label %.lr.ph.epil, !llvm.loop !30

.preheader78.lr.ph:                               ; preds = %.lr.ph.epil, %.preheader78.lr.ph.unr-lcssa
  %i.x = icmp sgt i32 %i.h, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  br i1 %i.x, label %.preheader78.preheader, label %._crit_edge84.split

.preheader78.preheader:                           ; preds = %.preheader78.lr.ph
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert198 = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat199 = shufflevector <2 x i64> %broadcast.splatinsert198, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader78

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07280 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ab = mul nsw i64 %.07280, %i.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07280
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !28
  %i.ae = or disjoint i64 %.07280, 1              ; 2 uses
  %i.af = mul nsw i64 %i.ae, %i.i
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ae
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !28
  %i.ai = or disjoint i64 %.07280, 2              ; 2 uses
  %i.aj = mul nsw i64 %i.ai, %i.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ai
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !28
  %i.am = or disjoint i64 %.07280, 3              ; 2 uses
  %i.an = mul nsw i64 %i.am, %i.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.am
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !28
  %i.aq = add nuw nsw i64 %.07280, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader78.lr.ph.unr-lcssa, label %.lr.ph

.preheader78:                                     ; preds = %.preheader78.preheader, %._crit_edge
  %.07483 = phi i64 [ %i.ey, %._crit_edge ], [ 0, %.preheader78.preheader ] ; 3 uses
  %i.ar = mul nuw nsw i64 %.07483, %i.i           ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07483
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader78
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <2 x i64> splat (i64 2), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.au = add nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %.reass = add nuw <2 x i64> %vec.ind, %invariant.op
  %i.av = mul nsw <2 x i64> %i.au, %broadcast.splat199
  %i.aw = mul nsw <2 x i64> %.reass, %broadcast.splat199
  %wide.gep = getelementptr inbounds [40 x i8], ptr %i.p, <2 x i64> %i.av
  %wide.gep200 = getelementptr inbounds [40 x i8], ptr %i.p, <2 x i64> %i.aw
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x ptr> %wide.gep, ptr %i.ax, align 8, !tbaa !31
  store <2 x ptr> %wide.gep200, ptr %i.ay, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader78, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader78 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge84.split:                              ; preds = %._crit_edge, %.preheader78.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !35
  %.fr124 = freeze i32 %i.bb                      ; 3 uses
  %i.bc = sext i32 %.fr124 to i64                 ; 9 uses
  %i.bd = shl i64 %i.n, 3
  %i.be = mul i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #15 ; 8 uses
  %i.bg = add i64 %i.be, %i.q
  store i64 %i.bg, ptr %2, align 8, !tbaa !15
  %i.bh = icmp sgt i32 %i.h, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load i32, ptr %i.bi, align 8            ; 5 uses
  %3 = sdiv i32 %i.h, 2                           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load float, ptr %i.bk, align 8          ; 4 uses
  %i.bm = icmp sgt i32 %i.bj, 0
  %or.cond = select i1 %i.bh, i1 %i.bm, i1 false
  br i1 %or.cond, label %.preheader77.lr.ph.split.split.us, label %._crit_edge114.split

.preheader77.lr.ph.split.split.us:                ; preds = %._crit_edge84.split
  %4 = icmp sgt i32 %.fr124, 0
  br i1 %4, label %.preheader77.us.us.us.preheader, label %.preheader77.lr.ph.split.split.us.a

.preheader77.lr.ph.split.split.us.a:              ; preds = %.preheader77.lr.ph.split.split.us
  %5 = zext nneg i32 %3 to i64
  %i.bn = zext nneg i32 %i.h to i64
  %wide.trip.count176 = zext nneg i32 %i.bj to i64
  %wide.trip.count161 = zext nneg i32 %i.bj to i64
  br label %.preheader77.us

.preheader77.us.us.us.preheader:                  ; preds = %.preheader77.lr.ph.split.split.us
  %wide.trip.count156 = zext nneg i32 %.fr124 to i64
  %6 = shl nuw nsw i64 %wide.trip.count156, 2     ; 4 uses
  %wide.trip.count166 = zext nneg i32 %3 to i64
  %wide.trip.count172 = zext nneg i32 %i.h to i64
  %wide.trip.count159 = zext nneg i32 %i.bj to i64
  %wide.trip.count167 = zext nneg i32 %i.bj to i64
  br label %.preheader77.us.us.us

.preheader77.us.us.us:                            ; preds = %.preheader77.us.us.us.preheader, %._crit_edge102.split.us.us.split.us.us.split.us.us
  %.071113.us.us.us = phi i64 [ %i.dk, %._crit_edge102.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader77.us.us.us.preheader ] ; 2 uses
  %.073112.us.us.us = phi i64 [ %.us-phi.us.us.us.us.us.us, %._crit_edge102.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader77.us.us.us.preheader ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.071113.us.us.us
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge92.us.us.us.us.us.us, %.preheader77.us.us.us
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %._crit_edge92.us.us.us.us.us.us ], [ 0, %.preheader77.us.us.us ] ; 3 uses
  %.1100.us.us.us.us.us.us = phi i64 [ %.us-phi.us.us.us.us.us.us, %._crit_edge92.us.us.us.us.us.us ], [ %.073112.us.us.us, %.preheader77.us.us.us ] ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv173, %wide.trip.count166
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv173 ; 7 uses
  %.pre179 = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  br i1 %i.bq, label %.lr.ph87.us.us.us.us.us.us.us.us, label %.lr.ph87.us96.us.us.us.us.us.us

._crit_edge92.us.us.us.us.us.us:                  ; preds = %.lr.ph87.us96.us.us.us.us.us.us, %.lr.ph87.us.us.us.us.us.us.us.us
  %.us-phi.us.us.us.us.us.us = phi i64 [ %8, %.lr.ph87.us.us.us.us.us.us.us.us ], [ %7, %.lr.ph87.us96.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count172
  br i1 %exitcond177.not, label %._crit_edge102.split.us.us.split.us.us.split.us.us, label %.preheader.us.us.us.us.us.us

.lr.ph87.us96.us.us.us.us.us.us:                  ; preds = %.preheader.us.us.us.us.us.us, %.lr.ph87.us96.us.us.us.us.us.us
  %i.bs = phi ptr [ %i.ci, %.lr.ph87.us96.us.us.us.us.us.us ], [ %.pre179, %.preheader.us.us.us.us.us.us ]
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.lr.ph87.us96.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us ] ; 5 uses
  %.289.us94.us.us.us.us.us.us = phi i64 [ %7, %.lr.ph87.us96.us.us.us.us.us.us ], [ %.1100.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv.next159 to i32
  %i.bu = uitofp nneg i32 %i.bt to float
  %i.bv = fmul float %i.bl, %i.bu
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %indvars.iv158
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store float %i.bv, ptr %i.bx, align 4, !tbaa !36
  %i.by = tail call float @urand() #16
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %indvars.iv158 ; 2 uses
  store float %i.by, ptr %i.ca, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.289.us94.us.us.us.us.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !40
  %i.cd = add i64 %.289.us94.us.us.us.us.us.us, %i.bc ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cd
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.cf, i64 %indvars.iv158
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !41
  %i.ci = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %indvars.iv158 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %6, i1 false), !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cn, i8 0, i64 %6, i1 false), !tbaa !42
  %7 = add i64 %i.cd, %i.bc                       ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge92.us.us.us.us.us.us, label %.lr.ph87.us96.us.us.us.us.us.us

.lr.ph87.us.us.us.us.us.us.us.us:                 ; preds = %.preheader.us.us.us.us.us.us, %.lr.ph87.us.us.us.us.us.us.us.us
  %i.co = phi ptr [ %i.de, %.lr.ph87.us.us.us.us.us.us.us.us ], [ %.pre179, %.preheader.us.us.us.us.us.us ]
  %indvars.iv168 = phi i64 [ %indvars.iv.next165, %.lr.ph87.us.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us ] ; 6 uses
  %.289.us.us.us.us.us.us.us.us = phi i64 [ %8, %.lr.ph87.us.us.us.us.us.us.us.us ], [ %.1100.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ] ; 2 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv168 to i32
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = fmul float %i.bl, %i.cq
  %i.cs = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %indvars.iv168
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store float %i.cr, ptr %i.ct, align 4, !tbaa !36
  %i.cu = tail call float @urand() #16
  %i.cv = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %indvars.iv168 ; 2 uses
  store float %i.cu, ptr %i.cw, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.289.us.us.us.us.us.us.us.us
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !40
  %i.cz = add i64 %.289.us.us.us.us.us.us.us.us, %i.bc ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cz
  %i.db = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %indvars.iv168
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !41
  %i.de = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %indvars.iv168 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %6, i1 false), !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dj, i8 0, i64 %6, i1 false), !tbaa !42
  %8 = add i64 %i.cz, %i.bc                       ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge92.us.us.us.us.us.us, label %.lr.ph87.us.us.us.us.us.us.us.us

._crit_edge102.split.us.us.split.us.us.split.us.us: ; preds = %._crit_edge92.us.us.us.us.us.us
  %i.dk = add nuw nsw i64 %.071113.us.us.us, 1    ; 2 uses
  %exitcond178.not = icmp eq i64 %i.dk, %i.b
  br i1 %exitcond178.not, label %._crit_edge114.split, label %.preheader77.us.us.us

.preheader77.us:                                  ; preds = %.preheader77.lr.ph.split.split.us.a, %._crit_edge102.split.us.us.split
  %.071113.us = phi i64 [ %i.ex, %._crit_edge102.split.us.us.split ], [ 0, %.preheader77.lr.ph.split.split.us.a ] ; 2 uses
  %.073112.us = phi i64 [ %.us-phi.us.us, %._crit_edge102.split.us.us.split ], [ 0, %.preheader77.lr.ph.split.split.us.a ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.071113.us
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !28
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge92.us.us, %.preheader77.us
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %._crit_edge92.us.us ], [ 0, %.preheader77.us ] ; 3 uses
  %.1100.us.us = phi i64 [ %.us-phi.us.us, %._crit_edge92.us.us ], [ %.073112.us, %.preheader77.us ] ; 2 uses
  %i.dn = icmp samesign ult i64 %indvars.iv147, %5
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv147 ; 6 uses
  br i1 %i.dn, label %._crit_edge88.us.us.us, label %.lr.ph91.split.us108.us

.lr.ph91.split.us108.us:                          ; preds = %.preheader.us.us, %.lr.ph91.split.us108.us
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph91.split.us108.us ], [ 0, %.preheader.us.us ] ; 4 uses
  %.289.us105.us = phi i64 [ %i.ef, %.lr.ph91.split.us108.us ], [ %.1100.us.us, %.preheader.us.us ] ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 3 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv.next138 to i32
  %i.dq = uitofp nneg i32 %i.dp to float
  %i.dr = fmul float %i.bl, %i.dq
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %i.ds, i64 %indvars.iv137
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store float %i.dr, ptr %i.du, align 4, !tbaa !36
  %i.dv = tail call float @urand() #16
  %i.dw = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %indvars.iv137 ; 2 uses
  store float %i.dv, ptr %i.dx, align 8, !tbaa !39
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.289.us105.us
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !40
  %i.ea = add i64 %.289.us105.us, %i.bc           ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ea
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.ed = getelementptr inbounds nuw [40 x i8], ptr %i.ec, i64 %indvars.iv137
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !41
  %i.ef = add i64 %i.ea, %i.bc                    ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count176
  br i1 %exitcond141.not, label %._crit_edge92.us.us, label %.lr.ph91.split.us108.us

._crit_edge92.us.us:                              ; preds = %.lr.ph91.split.us108.us, %._crit_edge88.us.us.us
  %.us-phi.us.us = phi i64 [ %i.ew, %._crit_edge88.us.us.us ], [ %i.ef, %.lr.ph91.split.us108.us ] ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %i.bn
  br i1 %exitcond151.not, label %._crit_edge102.split.us.us.split, label %.preheader.us.us

._crit_edge88.us.us.us:                           ; preds = %.preheader.us.us, %._crit_edge88.us.us.us
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %._crit_edge88.us.us.us ], [ 0, %.preheader.us.us ] ; 5 uses
  %.289.us.us.us = phi i64 [ %i.ew, %._crit_edge88.us.us.us ], [ %.1100.us.us, %.preheader.us.us ] ; 2 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv142 to i32
  %i.eh = uitofp nneg i32 %i.eg to float
  %i.ei = fmul float %i.bl, %i.eh
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.ej, i64 %indvars.iv142
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store float %i.ei, ptr %i.el, align 4, !tbaa !36
  %i.em = tail call float @urand() #16
  %i.en = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %indvars.iv142 ; 2 uses
  store float %i.em, ptr %i.eo, align 8, !tbaa !39
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.289.us.us.us
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !40
  %i.er = add i64 %.289.us.us.us, %i.bc           ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.er
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.et, i64 %indvars.iv142
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !41
  %i.ew = add i64 %i.er, %i.bc                    ; 2 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count161
  br i1 %exitcond146.not, label %._crit_edge92.us.us, label %._crit_edge88.us.us.us

._crit_edge102.split.us.us.split:                 ; preds = %._crit_edge92.us.us
  %i.ex = add nuw nsw i64 %.071113.us, 1          ; 2 uses
  %exitcond152.not = icmp eq i64 %i.ex, %i.b
  br i1 %exitcond152.not, label %._crit_edge114.split, label %.preheader77.us

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ey = add nuw nsw i64 %.07483, 1              ; 2 uses
  %exitcond136.not = icmp eq i64 %i.ey, %i.b
  br i1 %exitcond136.not, label %._crit_edge84.split, label %.preheader78

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ez = add nuw nsw i64 %i.ar, %indvars.iv
  %i.fa = mul nsw i64 %i.ez, %i.aa
  %i.fb = getelementptr inbounds [40 x i8], ptr %i.p, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond135.not, label %._crit_edge, label %scalar.ph, !llvm.loop !43

._crit_edge114.split.critedge:                    ; preds = %bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !35
  %.fr124.c = freeze i32 %i.fe
  %i.ff = sext i32 %.fr124.c to i64
  %i.fg = shl i64 %i.n, 3
  %i.fh = mul i64 %i.fg, %i.ff
  %i.fi = add i64 %i.fh, %i.q
  store i64 %i.fi, ptr %2, align 8, !tbaa !15
  br label %._crit_edge114.split

._crit_edge114.split:                             ; preds = %._crit_edge102.split.us.us.split, %._crit_edge102.split.us.us.split.us.us.split.us.us, %._crit_edge114.split.critedge, %._crit_edge84.split
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_tracks(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @generate_polar_angles(ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 3 uses
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = uitofp nneg i32 %i.b to double           ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.h = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.i = fadd nnan <4 x double> %i.h, splat (double 5.000000e-01)
  %i.j = fmul nnan <4 x double> %i.i, splat (double f0x400921FB54442D18)
  %i.k = fdiv <4 x double> %i.j, %broadcast.splat
  %i.l = fptrunc <4 x double> %i.k to <4 x float>
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <4 x float> %i.l, ptr %i.m, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret ptr %i.e

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = uitofp nneg i32 %i.o to double
  %i.q = fadd nnan double %i.p, 5.000000e-01
  %i.r = fmul nnan double %i.q, f0x400921FB54442D18
  %i.s = fdiv double %i.r, %i.g
  %i.t = fptrunc double %i.s to float
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.t, ptr %i.u, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !45
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @load_OpenMOC_tracks(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 3 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %i.e = alloca double, align 8                   ; 3 uses
  %i.f = alloca double, align 8                   ; 3 uses
  %i.g = alloca double, align 8                   ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = alloca double, align 8                   ; 6 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct._G_fpos_t, align 8          ; 4 uses
  %i.o = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 33 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.q = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = tail call ptr @llvm.stacksave.p0()
  %i.u = alloca i8, i64 %i.s, align 16
  %i.v = sext i32 %i.r to i64
  %i.w = call i64 @fread(ptr noundef nonnull %i.u, i64 noundef %i.v, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 11 uses
  %i.y = tail call i64 @fread(ptr noundef nonnull %i.x, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.z = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.aa = load double, ptr %i.b, align 8, !tbaa !46
  %i.ab = fptrunc double %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ab, ptr %i.ac, align 4, !tbaa !48
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !49  ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = alloca i32, i64 %i.ae, align 16         ; 6 uses
  %i.ag = alloca i32, i64 %i.ae, align 16
  %i.ah = alloca i32, i64 %i.ae, align 16
  %i.ai = alloca double, i64 %i.ae, align 16
  %i.aj = sext i32 %i.ad to i64
  %i.ak = call i64 @fread(ptr noundef nonnull %i.af, i64 noundef 4, i64 noundef %i.aj, ptr noundef %i.o) ; 0 uses
  %i.al = load i32, ptr %i.x, align 4, !tbaa !49
  %i.am = sext i32 %i.al to i64
  %i.an = call i64 @fread(ptr noundef nonnull %i.ag, i64 noundef 4, i64 noundef %i.am, ptr noundef %i.o) ; 0 uses
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !49
  %i.ap = sext i32 %i.ao to i64
  %i.aq = call i64 @fread(ptr noundef nonnull %i.ah, i64 noundef 4, i64 noundef %i.ap, ptr noundef %i.o) ; 0 uses
  %i.ar = load i32, ptr %i.x, align 4, !tbaa !49
  %i.as = sext i32 %i.ar to i64
  %i.at = call i64 @fread(ptr noundef nonnull %i.ai, i64 noundef 8, i64 noundef %i.as, ptr noundef %i.o) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store i64 0, ptr %i.au, align 8, !tbaa !8
  %i.av = load i32, ptr %i.x, align 4, !tbaa !49  ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.av to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.av, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi197 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %wide.load = load <2 x i32>, ptr %i.ax, align 16, !tbaa !4
  %wide.load198 = load <2 x i32>, ptr %i.ay, align 8, !tbaa !4
  %i.az = sext <2 x i32> %wide.load to <2 x i64>
  %i.ba = sext <2 x i32> %wide.load198 to <2 x i64>
  %i.bb = add <2 x i64> %vec.phi, %i.az           ; 2 uses
  %i.bc = add <2 x i64> %vec.phi197, %i.ba        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi i64 [ 0, %.lr.ph ], [ %i.be, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa196 = phi i64 [ %i.be, %middle.block ], [ %i.ci, %scalar.ph ] ; 2 uses
  store i64 %.lcssa196, ptr %i.au, align 8, !tbaa !8
  %i.bf = shl i64 %.lcssa196, 5
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.bg = phi i64 [ %i.bf, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bg) #15 ; 2 uses
  %i.bi = load i64, ptr %3, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bk = call i32 @fgetpos(ptr noundef %i.o, ptr noundef nonnull %4) ; 0 uses
  %i.bl = load i32, ptr %i.x, align 4, !tbaa !49  ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader110.lr.ph, label %._crit_edge122

.preheader110.lr.ph:                              ; preds = %bb.b
  br i1 %1, label %.preheader110.us, label %.preheader110

.preheader110.us:                                 ; preds = %.preheader110.lr.ph, %._crit_edge119.split.us.us
  %i.bn = phi i32 [ %i.br, %._crit_edge119.split.us.us ], [ %i.bl, %.preheader110.lr.ph ]
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %._crit_edge119.split.us.us ], [ 0, %.preheader110.lr.ph ] ; 2 uses
  %.0107120.us = phi i64 [ %.1108.lcssa.us, %._crit_edge119.split.us.us ], [ 0, %.preheader110.lr.ph ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv154
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph118.us, label %._crit_edge119.split.us.us

._crit_edge119.split.us.us.loopexit:              ; preds = %._crit_edge115.split.us.us.us
  %.pre174 = load i32, ptr %i.x, align 4, !tbaa !49
  br label %._crit_edge119.split.us.us

._crit_edge119.split.us.us:                       ; preds = %._crit_edge119.split.us.us.loopexit, %.preheader110.us
  %i.br = phi i32 [ %i.bn, %.preheader110.us ], [ %.pre174, %._crit_edge119.split.us.us.loopexit ] ; 2 uses
  %.1108.lcssa.us = phi i64 [ %.0107120.us, %.preheader110.us ], [ %i.by, %._crit_edge119.split.us.us.loopexit ] ; 2 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next155, %i.bs
  br i1 %i.bt, label %.preheader110.us, label %._crit_edge122

.lr.ph118.us:                                     ; preds = %.preheader110.us, %._crit_edge115.split.us.us.us
  %.0105117.us.us = phi i32 [ %i.ca, %._crit_edge115.split.us.us.us ], [ 0, %.preheader110.us ]
  %.1108116.us.us = phi i64 [ %i.by, %._crit_edge115.split.us.us.us ], [ %.0107120.us, %.preheader110.us ]
  %i.bu = tail call i32 @fseek(ptr noundef %i.o, i64 noundef 44, i32 noundef 1) ; 0 uses
  %i.bv = call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.bw = load i32, ptr %i.i, align 4, !tbaa !4   ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = add nsw i64 %.1108116.us.us, %i.bx      ; 2 uses
  %i.bz = icmp sgt i32 %i.bw, 0
  br i1 %i.bz, label %.lr.ph114.us.us, label %._crit_edge115.split.us.us.us

._crit_edge115.split.us.us.us:                    ; preds = %.lr.ph114.us.us, %.lr.ph118.us
  %i.ca = add nuw nsw i32 %.0105117.us.us, 1      ; 2 uses
  %exitcond153.not = icmp eq i32 %i.ca, %i.bp
  br i1 %exitcond153.not, label %._crit_edge119.split.us.us.loopexit, label %.lr.ph118.us

.lr.ph114.us.us:                                  ; preds = %.lr.ph118.us, %.lr.ph114.us.us
  %.0104112.us.us.us = phi i32 [ %i.cd, %.lr.ph114.us.us ], [ 0, %.lr.ph118.us ]
  %i.cb = tail call i32 @fseek(ptr noundef %i.o, i64 noundef 16, i32 noundef 1) ; 0 uses
  %i.cc = tail call i32 @fseek(ptr noundef %i.o, i64 noundef 8, i32 noundef 1) ; 0 uses
  %i.cd = add nuw nsw i32 %.0104112.us.us.us, 1   ; 2 uses
  %exitcond152.not = icmp eq i32 %i.cd, %i.bw
  br i1 %exitcond152.not, label %._crit_edge115.split.us.us.us, label %.lr.ph114.us.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ce = phi i64 [ %i.ci, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %i.ce, %i.ch                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !51

.preheader110:                                    ; preds = %.preheader110.lr.ph, %._crit_edge119.split
  %i.cj = phi i32 [ %i.cu, %._crit_edge119.split ], [ %i.bl, %.preheader110.lr.ph ]
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %._crit_edge119.split ], [ 0, %.preheader110.lr.ph ] ; 2 uses
  %.0107120 = phi i64 [ %.1108.lcssa, %._crit_edge119.split ], [ 0, %.preheader110.lr.ph ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv149
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph118, label %._crit_edge119.split

._crit_edge122:                                   ; preds = %._crit_edge119.split, %._crit_edge119.split.us.us, %bb.b
  %.0107.lcssa = phi i64 [ 0, %bb.b ], [ %.1108.lcssa.us, %._crit_edge119.split.us.us ], [ %.1108.lcssa, %._crit_edge119.split ] ; 3 uses
  %i.cn = shl i64 %.0107.lcssa, 4                 ; 2 uses
  %i.co = tail call noalias ptr @malloc(i64 noundef %i.cn) #15
  %i.cp = load i64, ptr %3, align 8, !tbaa !15
  %i.cq = add i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %3, align 8, !tbaa !15
  %i.cr = call i32 @fsetpos(ptr noundef %i.o, ptr noundef nonnull %4) ; 0 uses
  %i.cs = load i32, ptr %i.x, align 4, !tbaa !49  ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.preheader, label %._crit_edge139

._crit_edge119.split.loopexit:                    ; preds = %._crit_edge115.split
  %.pre = load i32, ptr %i.x, align 4, !tbaa !49
  br label %._crit_edge119.split

._crit_edge119.split:                             ; preds = %._crit_edge119.split.loopexit, %.preheader110
  %i.cu = phi i32 [ %i.cj, %.preheader110 ], [ %.pre, %._crit_edge119.split.loopexit ] ; 2 uses
  %.1108.lcssa = phi i64 [ %.0107120, %.preheader110 ], [ %i.db, %._crit_edge119.split.loopexit ] ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next150, %i.cv
  br i1 %i.cw, label %.preheader110, label %._crit_edge122

.lr.ph118:                                        ; preds = %.preheader110, %._crit_edge115.split
  %.0105117 = phi i32 [ %i.dd, %._crit_edge115.split ], [ 0, %.preheader110 ]
  %.1108116 = phi i64 [ %i.db, %._crit_edge115.split ], [ %.0107120, %.preheader110 ]
  %i.cx = tail call i32 @fseek(ptr noundef %i.o, i64 noundef 44, i32 noundef 1) ; 0 uses
  %i.cy = call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.cz = load i32, ptr %i.i, align 4, !tbaa !4   ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = add nsw i64 %.1108116, %i.da            ; 2 uses
  %i.dc = icmp sgt i32 %i.cz, 0
  br i1 %i.dc, label %.lr.ph114, label %._crit_edge115.split

._crit_edge115.split:                             ; preds = %.lr.ph114, %.lr.ph118
  %i.dd = add nuw nsw i32 %.0105117, 1            ; 2 uses
  %exitcond148.not = icmp eq i32 %i.dd, %i.cl
  br i1 %exitcond148.not, label %._crit_edge119.split.loopexit, label %.lr.ph118

.lr.ph114:                                        ; preds = %.lr.ph118, %.lr.ph114
  %.0104112 = phi i32 [ %i.df, %.lr.ph114 ], [ 0, %.lr.ph118 ]
  %i.de = tail call i32 @fseek(ptr noundef %i.o, i64 noundef 16, i32 noundef 1) ; 0 uses
  %i.df = add nuw nsw i32 %.0104112, 1            ; 2 uses
  %exitcond147.not = icmp eq i32 %i.df, %i.cz
  br i1 %exitcond147.not, label %._crit_edge115.split, label %.lr.ph114

.preheader:                                       ; preds = %._crit_edge122, %._crit_edge133
  %i.dg = phi i32 [ %i.ed, %._crit_edge133 ], [ %i.cs, %._crit_edge122 ]
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._crit_edge133 ], [ 0, %._crit_edge122 ] ; 2 uses
  %.0101137 = phi i32 [ %.1.lcssa, %._crit_edge133 ], [ 0, %._crit_edge122 ] ; 2 uses
  %.0102136 = phi i32 [ %.1103.lcssa, %._crit_edge133 ], [ 0, %._crit_edge122 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv171
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph132.preheader, label %._crit_edge133

.lr.ph132.preheader:                              ; preds = %.preheader
  %i.dk = sext i32 %.0102136 to i64
  br label %.lr.ph132

._crit_edge139:                                   ; preds = %._crit_edge133, %._crit_edge122
  %i.dl = load i64, ptr %i.au, align 8, !tbaa !8  ; 2 uses
  %i.dm = sdiv i64 %.0107.lcssa, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !25
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.dl) ; 0 uses
  %i.dp = load i64, ptr %i.au, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !26
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul nsw i64 %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !52
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul nsw i64 %i.dt, %i.dw                ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !27
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %i.dx) ; 0 uses
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %.0107.lcssa) ; 0 uses
  %i.eb = call i32 @fclose(ptr noundef %i.o)      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.stackrestore.p0(ptr %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.bh

._crit_edge133.loopexit:                          ; preds = %._crit_edge128
  %i.ec = trunc nsw i64 %indvars.iv.next168 to i32
  %.pre175 = load i32, ptr %i.x, align 4, !tbaa !49
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.preheader
  %i.ed = phi i32 [ %i.dg, %.preheader ], [ %.pre175, %._crit_edge133.loopexit ] ; 2 uses
  %.1103.lcssa = phi i32 [ %.0102136, %.preheader ], [ %i.ec, %._crit_edge133.loopexit ]
  %.1.lcssa = phi i32 [ %.0101137, %.preheader ], [ %i.eu, %._crit_edge133.loopexit ]
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next172, %i.ee
  br i1 %i.ef, label %.preheader, label %._crit_edge139

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %._crit_edge128
  %indvars.iv167 = phi i64 [ %i.dk, %.lr.ph132.preheader ], [ %indvars.iv.next168, %._crit_edge128 ] ; 2 uses
  %.099131 = phi i32 [ 0, %.lr.ph132.preheader ], [ %i.fi, %._crit_edge128 ]
  %.1130 = phi i32 [ %.0101137, %.lr.ph132.preheader ], [ %i.eu, %._crit_edge128 ] ; 2 uses
  %i.eg = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.eh = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.ei = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.ej = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.ek = call i64 @fread(ptr noundef nonnull %i.g, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.el = call i64 @fread(ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.em = call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.en = load i32, ptr %i.i, align 4, !tbaa !4   ; 4 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %indvars.iv167 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.eo, ptr %i.eq, align 8, !tbaa !16
  %i.er = sext i32 %.1130 to i64
  %i.es = getelementptr inbounds [16 x i8], ptr %i.co, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %i.es, ptr %i.et, align 8, !tbaa !18
  %i.eu = add i32 %i.en, %.1130                   ; 2 uses
  %i.ev = call float @urand() #16
  store float %i.ev, ptr %i.ep, align 8, !tbaa !23
  %i.ew = icmp sgt i32 %i.en, 0
  br i1 %i.ew, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %.lr.ph132
  %wide.trip.count165 = zext nneg i32 %i.en to i64 ; 2 uses
  br i1 %1, label %.lr.ph127.split.us, label %.lr.ph127.split

.lr.ph127.split.us:                               ; preds = %.lr.ph127, %.lr.ph127.split.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %.lr.ph127.split.us ], [ 0, %.lr.ph127 ] ; 2 uses
  %i.ex = call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.ey = call i64 @fread(ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.ez = call i64 @fread(ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.fa = load double, ptr %i.j, align 8, !tbaa !46
  %i.fb = fptrunc double %i.fa to float
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv162 ; 2 uses
  store float %i.fb, ptr %i.fc, align 8, !tbaa !21
  %i.fd = load i32, ptr %i.l, align 4, !tbaa !4
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !53
  %i.fg = call i64 @fread(ptr noundef nonnull %i.m, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.fh = call i64 @fread(ptr noundef nonnull %i.n, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge128, label %.lr.ph127.split.us

._crit_edge128:                                   ; preds = %.lr.ph127.split, %.lr.ph127.split.us, %.lr.ph132
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.fi = add nuw nsw i32 %.099131, 1             ; 2 uses
  %exitcond170.not = icmp eq i32 %i.fi, %i.di
  br i1 %exitcond170.not, label %._crit_edge133.loopexit, label %.lr.ph132

.lr.ph127.split:                                  ; preds = %.lr.ph127, %.lr.ph127.split
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %.lr.ph127.split ], [ 0, %.lr.ph127 ] ; 2 uses
  %i.fj = call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.fk = call i64 @fread(ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.fl = call i64 @fread(ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.fm = load double, ptr %i.j, align 8, !tbaa !46
  %i.fn = fptrunc double %i.fm to float
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv157 ; 2 uses
  store float %i.fn, ptr %i.fo, align 8, !tbaa !21
  %i.fp = load i32, ptr %i.l, align 4, !tbaa !4
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !53
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count165
  br i1 %exitcond161.not, label %._crit_edge128, label %.lr.ph127.split
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #10

; Function Attrs: nofree nounwind
declare noundef i32 @fgetpos(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fsetpos(ptr noundef captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 80}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20, !10, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 44, !12, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !12, i64 72, !12, i64 80, !5, i64 88, !12, i64 96, !5, i64 104, !5, i64 108, !12, i64 112, !12, i64 120, !11, i64 128, !13, i64 136, !12, i64 144}
!10 = !{!"float", !6, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !12, i64 8}
!17 = !{!"", !10, i64 0, !12, i64 8, !14, i64 16, !5, i64 24}
!18 = !{!17, !14, i64 16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!22, !10, i64 0}
!22 = !{!"", !10, i64 0, !12, i64 8}
!23 = !{!17, !10, i64 0}
!24 = distinct !{!24, !20}
!25 = !{!9, !12, i64 48}
!26 = !{!9, !5, i64 32}
!27 = !{!9, !12, i64 96}
!28 = !{!29, !29, i64 0}
!29 = !{!"any p2 pointer", !14, i64 0}
!30 = distinct !{!30, !20}
!31 = !{!14, !14, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!9, !5, i64 36}
!36 = !{!37, !10, i64 4}
!37 = !{!"", !10, i64 0, !10, i64 4, !12, i64 8, !12, i64 16, !38, i64 24, !38, i64 32}
!38 = !{!"p1 float", !14, i64 0}
!39 = !{!37, !10, i64 0}
!40 = !{!37, !38, i64 24}
!41 = !{!37, !38, i64 32}
!42 = !{!10, !10, i64 0}
!43 = distinct !{!43, !34, !33}
!44 = distinct !{!44, !33, !34}
!45 = distinct !{!45, !34, !33}
!46 = !{!47, !47, i64 0}
!47 = !{!"double", !6, i64 0}
!48 = !{!9, !10, i64 20}
!49 = !{!9, !5, i64 28}
!50 = distinct !{!50, !33, !34}
!51 = distinct !{!51, !34, !33}
!52 = !{!9, !5, i64 88}
!53 = !{!22, !12, i64 8}
end_hunk_0
