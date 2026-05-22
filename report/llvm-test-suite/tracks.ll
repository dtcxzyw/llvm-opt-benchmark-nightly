inline.NumInlined: 2
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
define dso_local noalias noundef ptr @generate_2D_tracks(ptr noundef readonly byval(%struct.Input) align 8 captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 8 uses
  %i.c = shl i64 %i.b, 5                          ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #14 ; 9 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !15
  %i.f = add i64 %i.e, %i.c
  store i64 %i.f, ptr %1, align 8, !tbaa !15
  %i.g = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.4.0.copyload15 = load float, ptr %.sroa.4.0..sroa_idx14, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.h = sitofp i64 %.sroa.3.0.copyload to float
  %i.i = sitofp i64 %.sroa.3.0.copyload to double
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %2 = shl i64 %i.s, 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge, %._crit_edge.loopexit.i
  %.sroa.4.0.copyload16 = phi float [ %.sroa.4.0.copyload, %._crit_edge ], [ %.sroa.4.0.copyload15, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %2, %._crit_edge.loopexit.i ] ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %.032.lcssa.i) #14 ; 5 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !15
  %i.l = add i64 %i.k, %.032.lcssa.i
  store i64 %i.l, ptr %1, align 8, !tbaa !15
  br i1 %i.g, label %.lr.ph41.i.preheader, label %generate_2D_segments.exit

.lr.ph41.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %3 = icmp ult i64 %i.b, 4
  br i1 %3, label %.lr.ph41.i.epil.preheader, label %.lr.ph41.i.preheader.new

.lr.ph41.i.preheader.new:                         ; preds = %.lr.ph41.i.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph41.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.03236.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %bb.b ]
  %.03335.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %i.m = tail call double @sqrt(double noundef %i.i) #15, !tbaa !4
  %i.n = fptrunc double %i.m to float
  %i.o = tail call float @nrand(float noundef %i.h, float noundef %i.n) #15
  %i.p = fptosi float %i.o to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03335.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !16
  %i.s = add nsw i64 %.03236.i, %i.p              ; 2 uses
  %i.t = add nuw nsw i64 %.03335.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b

.lr.ph41.i:                                       ; preds = %.lr.ph41.i, %.lr.ph41.i.preheader.new
  %.03039.i = phi i64 [ 0, %.lr.ph41.i.preheader.new ], [ %i.as, %.lr.ph41.i ] ; 5 uses
  %.03138.i = phi i64 [ 0, %.lr.ph41.i.preheader.new ], [ %i.ar, %.lr.ph41.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph41.i.preheader.new ], [ %niter.next.3, %.lr.ph41.i ]
  %i.u = getelementptr inbounds [16 x i8], ptr %i.j, i64 %.03138.i
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.u, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
  %i.z = add nsw i64 %i.y, %.03138.i              ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.z
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = add nsw i64 %i.ae, %i.z                 ; 2 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.af
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.al = add nsw i64 %i.ak, %i.af                ; 2 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.al
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = add nsw i64 %i.aq, %i.al                ; 2 uses
  %i.as = add nuw nsw i64 %.03039.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.preheader.unr-lcssa, label %.lr.ph41.i

.preheader.i.preheader.unr-lcssa:                 ; preds = %.lr.ph41.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.preheader, label %.lr.ph41.i.epil.preheader

.lr.ph41.i.epil.preheader:                        ; preds = %.preheader.i.preheader.unr-lcssa, %.lr.ph41.i.preheader
  %.03039.i.epil.init = phi i64 [ 0, %.lr.ph41.i.preheader ], [ %i.as, %.preheader.i.preheader.unr-lcssa ]
  %.03138.i.epil.init = phi i64 [ 0, %.lr.ph41.i.preheader ], [ %i.ar, %.preheader.i.preheader.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph41.i.epil

.lr.ph41.i.epil:                                  ; preds = %.lr.ph41.i.epil, %.lr.ph41.i.epil.preheader
  %.03039.i.epil = phi i64 [ %i.az, %.lr.ph41.i.epil ], [ %.03039.i.epil.init, %.lr.ph41.i.epil.preheader ] ; 2 uses
  %.03138.i.epil = phi i64 [ %i.ay, %.lr.ph41.i.epil ], [ %.03138.i.epil.init, %.lr.ph41.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph41.i.epil ], [ 0, %.lr.ph41.i.epil.preheader ]
  %i.at = getelementptr inbounds [16 x i8], ptr %i.j, i64 %.03138.i.epil
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.03039.i.epil ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.at, ptr %i.av, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.ay = add nsw i64 %i.ax, %.03138.i.epil
  %i.az = add nuw nsw i64 %.03039.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.preheader, label %.lr.ph41.i.epil, !llvm.loop !19

.preheader.i.preheader:                           ; preds = %.lr.ph41.i.epil, %.preheader.i.preheader.unr-lcssa
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge44.i
  %.02945.i = phi i64 [ %i.bg, %._crit_edge44.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.02945.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !16 ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph43.i, label %._crit_edge44.i

.lr.ph43.i:                                       ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = uitofp nneg i64 %i.bc to float
  br label %bb.c

._crit_edge44.i:                                  ; preds = %bb.c, %.preheader.i
  %i.bg = add nuw nsw i64 %.02945.i, 1            ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.bg, %i.b
  br i1 %exitcond48.not.i, label %generate_2D_segments.exit, label %.preheader.i

bb.c:                                             ; preds = %bb.c, %.lr.ph43.i
  %.042.i = phi i64 [ 0, %.lr.ph43.i ], [ %i.bm, %bb.c ] ; 2 uses
  %i.bh = tail call float @urand() #15
  %i.bi = fmul float %.sroa.4.0.copyload16, %i.bh
  %i.bj = fdiv float %i.bi, %i.bf
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.042.i
  store float %i.bj, ptr %i.bl, align 8, !tbaa !21
  %i.bm = add nuw nsw i64 %.042.i, 1              ; 2 uses
  %exitcond11.not = icmp eq i64 %i.bm, %i.bc
  br i1 %exitcond11.not, label %._crit_edge44.i, label %bb.c

generate_2D_segments.exit:                        ; preds = %._crit_edge44.i, %._crit_edge.i
  ret ptr %i.d

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.bn = tail call float @urand() #15
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.bn, ptr %i.bo, align 8, !tbaa !23
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
define dso_local void @generate_2D_segments(ptr noundef readonly byval(%struct.Input) align 8 captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.d = sitofp i64 %.sroa.3.0.copyload to float
  %i.e = sitofp i64 %.sroa.3.0.copyload to double
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %3 = shl i64 %i.o, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.032.lcssa = phi i64 [ 0, %bb.a ], [ %3, %._crit_edge.loopexit ] ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %.032.lcssa) #14 ; 5 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !15
  %i.h = add i64 %i.g, %.032.lcssa
  store i64 %i.h, ptr %2, align 8, !tbaa !15
  br i1 %i.c, label %.lr.ph41.preheader, label %._crit_edge46

.lr.ph41.preheader:                               ; preds = %._crit_edge
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %4 = icmp ult i64 %i.b, 4
  br i1 %4, label %.lr.ph41.epil.preheader, label %.lr.ph41.preheader.new

.lr.ph41.preheader.new:                           ; preds = %.lr.ph41.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph41

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.03236 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.b ]
  %.03335 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.i = tail call double @sqrt(double noundef %i.e) #15, !tbaa !4
  %i.j = fptrunc double %i.i to float
  %i.k = tail call float @nrand(float noundef %i.d, float noundef %i.j) #15
  %i.l = fptosi float %i.k to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03335
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !16
  %i.o = add nsw i64 %.03236, %i.l                ; 2 uses
  %i.p = add nuw nsw i64 %.03335, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

.preheader.lr.ph.unr-lcssa:                       ; preds = %.lr.ph41
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.lr.ph, label %.lr.ph41.epil.preheader

.lr.ph41.epil.preheader:                          ; preds = %.preheader.lr.ph.unr-lcssa, %.lr.ph41.preheader
  %.03039.epil.init = phi i64 [ 0, %.lr.ph41.preheader ], [ %i.ax, %.preheader.lr.ph.unr-lcssa ]
  %.03138.epil.init = phi i64 [ 0, %.lr.ph41.preheader ], [ %i.aw, %.preheader.lr.ph.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph41.epil

.lr.ph41.epil:                                    ; preds = %.lr.ph41.epil, %.lr.ph41.epil.preheader
  %.03039.epil = phi i64 [ %i.w, %.lr.ph41.epil ], [ %.03039.epil.init, %.lr.ph41.epil.preheader ] ; 2 uses
  %.03138.epil = phi i64 [ %i.v, %.lr.ph41.epil ], [ %.03138.epil.init, %.lr.ph41.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph41.epil ], [ 0, %.lr.ph41.epil.preheader ]
  %i.q = getelementptr inbounds [16 x i8], ptr %i.f, i64 %.03138.epil
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039.epil ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16
  %i.v = add nsw i64 %i.u, %.03138.epil
  %i.w = add nuw nsw i64 %.03039.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.lr.ph, label %.lr.ph41.epil, !llvm.loop !24

.preheader.lr.ph:                                 ; preds = %.lr.ph41.epil, %.preheader.lr.ph.unr-lcssa
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load float, ptr %i.x, align 8
  br label %.preheader

.lr.ph41:                                         ; preds = %.lr.ph41, %.lr.ph41.preheader.new
  %.03039 = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %i.ax, %.lr.ph41 ] ; 5 uses
  %.03138 = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %i.aw, %.lr.ph41 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %niter.next.3, %.lr.ph41 ]
  %i.z = getelementptr inbounds [16 x i8], ptr %i.f, i64 %.03138
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ae = add nsw i64 %i.ad, %.03138              ; 2 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = add nsw i64 %i.aj, %i.ae                ; 2 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.ak
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store ptr %i.al, ptr %i.an, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.aq = add nsw i64 %i.ap, %i.ak                ; 2 uses
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.aq
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03039 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = add nsw i64 %i.av, %i.aq                ; 2 uses
  %i.ax = add nuw nsw i64 %.03039, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.lr.ph.unr-lcssa, label %.lr.ph41

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge44
  %.02945 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bd, %._crit_edge44 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.02945 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %bb.c

._crit_edge46:                                    ; preds = %._crit_edge44, %._crit_edge
  ret void

._crit_edge44:                                    ; preds = %bb.c, %.preheader
  %i.bd = add nuw nsw i64 %.02945, 1              ; 2 uses
  %exitcond48.not = icmp eq i64 %i.bd, %i.b
  br i1 %exitcond48.not, label %._crit_edge46, label %.preheader

bb.c:                                             ; preds = %.lr.ph43, %bb.c
  %.042 = phi i64 [ 0, %.lr.ph43 ], [ %i.bl, %bb.c ] ; 2 uses
  %i.be = tail call float @urand() #15
  %i.bf = fmul float %i.be, %i.y
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !16 ; 2 uses
  %i.bh = sitofp i64 %i.bg to float
  %i.bi = fdiv float %i.bf, %i.bh
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.042
  store float %i.bi, ptr %i.bk, align 8, !tbaa !21
  %i.bl = add nuw nsw i64 %.042, 1                ; 2 uses
  %i.bm = icmp slt i64 %i.bl, %i.bg
  br i1 %i.bm, label %bb.c, label %._crit_edge44
}

; Function Attrs: nounwind uwtable
define dso_local i64 @segments_per_2D_track_distribution(ptr noundef readonly byval(%struct.Input) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = sitofp i64 %i.b to float
  %i.d = sitofp i64 %i.b to double
  %i.e = tail call double @sqrt(double noundef %i.d) #15, !tbaa !4
  %i.f = fptrunc double %i.e to float
  %i.g = tail call float @nrand(float noundef %i.c, float noundef %i.f) #15
  %i.h = fptosi float %i.g to i64
  ret i64 %i.h
}

declare float @nrand(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @free_2D_tracks(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.b) #15
  tail call void @free(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @generate_tracks(ptr noundef readonly byval(%struct.Input) align 8 captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 8 uses
  %i.c = shl i64 %i.b, 3                          ; 3 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #14 ; 9 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !15
  %i.f = add i64 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 7 uses
  %i.i = sext i32 %i.h to i64                     ; 7 uses
  %i.j = mul i64 %i.c, %i.i                       ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 5 uses
  %i.l = add i64 %i.j, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = mul i64 %i.n, 40                         ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #14 ; 3 uses
  %i.q = add i64 %i.o, %i.l
  %i.r = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge84

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
  %.07280.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bg, %.preheader78.lr.ph.unr-lcssa ]
  %lcmp.mod239 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod239)
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
  br i1 %i.x, label %.preheader78.us.preheader, label %._crit_edge84

.preheader78.us.preheader:                        ; preds = %.preheader78.lr.ph
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert201 = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat202 = shufflevector <2 x i64> %broadcast.splatinsert201, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader78.us

.preheader78.us:                                  ; preds = %.preheader78.us.preheader, %._crit_edge.us
  %.07483.us = phi i64 [ %i.aq, %._crit_edge.us ], [ 0, %.preheader78.us.preheader ] ; 3 uses
  %i.ab = mul nuw nsw i64 %.07483.us, %i.i        ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07483.us
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader78.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <2 x i64> splat (i64 2), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ae = add nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %.reass = add nuw <2 x i64> %vec.ind, %invariant.op
  %i.af = mul nsw <2 x i64> %i.ae, %broadcast.splat202
  %i.ag = mul nsw <2 x i64> %.reass, %broadcast.splat202
  %i.ah = getelementptr inbounds [40 x i8], ptr %i.p, <2 x i64> %i.af
  %i.ai = getelementptr inbounds [40 x i8], ptr %i.p, <2 x i64> %i.ag
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x ptr> %i.ah, ptr %i.aj, align 8, !tbaa !31
  store <2 x ptr> %i.ai, ptr %i.ak, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader78.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader78.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.am = add nuw nsw i64 %i.ab, %indvars.iv
  %i.an = mul nsw i64 %i.am, %i.aa
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.p, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond138.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !35

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.aq = add nuw nsw i64 %.07483.us, 1           ; 2 uses
  %exitcond139.not = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond139.not, label %._crit_edge84, label %.preheader78.us

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07280 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bg, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ar = mul nsw i64 %.07280, %i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07280
  store ptr %i.as, ptr %i.at, align 8, !tbaa !28
  %i.au = or disjoint i64 %.07280, 1              ; 2 uses
  %i.av = mul nsw i64 %i.au, %i.i
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !28
  %i.ay = or disjoint i64 %.07280, 2              ; 2 uses
  %i.az = mul nsw i64 %i.ay, %i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !28
  %i.bc = or disjoint i64 %.07280, 3              ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.i
  %i.be = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bc
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !28
  %i.bg = add nuw nsw i64 %.07280, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader78.lr.ph.unr-lcssa, label %.lr.ph

._crit_edge84:                                    ; preds = %._crit_edge.us, %.preheader78.lr.ph, %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !36
  %.fr125 = freeze i32 %i.bi                      ; 6 uses
  %i.bj = sext i32 %.fr125 to i64                 ; 9 uses
  %i.bk = shl i64 %i.n, 3
  %i.bl = mul i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bl) #14 ; 8 uses
  %i.bn = add i64 %i.bl, %i.q
  store i64 %i.bn, ptr %2, align 8, !tbaa !15
  br i1 %i.r, label %.preheader77.lr.ph, label %._crit_edge112

.preheader77.lr.ph:                               ; preds = %._crit_edge84
  %3 = icmp sgt i32 %i.h, 0
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %5 = load i32, ptr %4, align 8                  ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load float, ptr %6, align 8                ; 4 uses
  %8 = icmp sgt i32 %5, 0
  %or.cond = select i1 %3, i1 %8, i1 false
  br i1 %or.cond, label %.preheader77.lr.ph.split.us.split.us, label %._crit_edge112

.preheader77.lr.ph.split.us.split.us:             ; preds = %.preheader77.lr.ph
  %i.bo = icmp sgt i32 %.fr125, 0
  %i.bp = lshr i32 %i.h, 1
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %wide.trip.count179 = zext nneg i32 %i.h to i64 ; 2 uses
  %wide.trip.count164 = zext nneg i32 %5 to i64   ; 2 uses
  br i1 %i.bo, label %.preheader77.us.us.us.us.preheader, label %.preheader77.us.us.preheader

.preheader77.us.us.preheader:                     ; preds = %.preheader77.lr.ph.split.us.split.us
  %wide.trip.count148 = zext nneg i32 %5 to i64
  br label %.preheader77.us.us

.preheader77.us.us.us.us.preheader:               ; preds = %.preheader77.lr.ph.split.us.split.us
  %wide.trip.count159 = zext nneg i32 %.fr125 to i64 ; 9 uses
  %wide.trip.count174 = zext nneg i32 %5 to i64
  %wide.trip.count169 = zext nneg i32 %.fr125 to i64
  %min.iters.check217 = icmp ult i32 %.fr125, 8
  %n.vec220 = and i64 %wide.trip.count159, 2147483640 ; 3 uses
  %cmp.n225 = icmp eq i64 %n.vec220, %wide.trip.count159
  %xtraiter240 = and i64 %wide.trip.count159, 3   ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %min.iters.check204 = icmp ult i32 %.fr125, 8
  %n.vec207 = and i64 %wide.trip.count159, 2147483640 ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec207, %wide.trip.count159
  %xtraiter242 = and i64 %wide.trip.count159, 3   ; 2 uses
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br label %.preheader77.us.us.us.us

.preheader77.us.us.us.us:                         ; preds = %.preheader77.us.us.us.us.preheader, %._crit_edge.split.us.us.us.split.us.us.split.us.us
  %.071111.us.us.us.us = phi i64 [ %i.fd, %._crit_edge.split.us.us.us.split.us.us.split.us.us ], [ 0, %.preheader77.us.us.us.us.preheader ] ; 2 uses
  %.073110.us.us.us.us = phi i64 [ %.us-phi.us.us.us.us.us.us.us, %._crit_edge.split.us.us.us.split.us.us.split.us.us ], [ 0, %.preheader77.us.us.us.us.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.071111.us.us.us.us
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  br label %.preheader.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us:                  ; preds = %._crit_edge90.us.us.us.us.us.us.us, %.preheader77.us.us.us.us
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %._crit_edge90.us.us.us.us.us.us.us ], [ 0, %.preheader77.us.us.us.us ] ; 3 uses
  %.199.us.us.us.us.us.us.us = phi i64 [ %.us-phi.us.us.us.us.us.us.us, %._crit_edge90.us.us.us.us.us.us.us ], [ %.073110.us.us.us.us, %.preheader77.us.us.us.us ] ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv176, %i.bq
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv176 ; 7 uses
  %.pre182 = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  br i1 %i.bt, label %.lr.ph86.us.us.us.us.us.us.us.us.us, label %.lr.ph86.us95.us.us.us.us.us.us.us

._crit_edge90.us.us.us.us.us.us.us:               ; preds = %._crit_edge.us96.us.us.us.us.us.us.us, %._crit_edge.us91.us.us.us.us.us.us.us.us
  %.us-phi.us.us.us.us.us.us.us = phi i64 [ %i.fc, %._crit_edge.us91.us.us.us.us.us.us.us.us ], [ %i.dl, %._crit_edge.us96.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge.split.us.us.us.split.us.us.split.us.us, label %.preheader.us.us.us.us.us.us.us

.lr.ph86.us95.us.us.us.us.us.us.us:               ; preds = %.preheader.us.us.us.us.us.us.us, %._crit_edge.us96.us.us.us.us.us.us.us
  %i.bv = phi ptr [ %i.cl, %._crit_edge.us96.us.us.us.us.us.us.us ], [ %.pre182, %.preheader.us.us.us.us.us.us.us ]
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge.us96.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us.us ] ; 5 uses
  %.287.us93.us.us.us.us.us.us.us = phi i64 [ %i.dl, %._crit_edge.us96.us.us.us.us.us.us.us ], [ %.199.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 3 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv.next162 to i32
  %i.bx = uitofp nneg i32 %i.bw to float
  %i.by = fmul float %7, %i.bx
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %indvars.iv161
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store float %i.by, ptr %i.ca, align 4, !tbaa !37
  %i.cb = tail call float @urand() #15
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %indvars.iv161 ; 2 uses
  store float %i.cb, ptr %i.cd, align 8, !tbaa !40
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.287.us93.us.us.us.us.us.us.us
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !41
  %i.cg = add i64 %.287.us93.us.us.us.us.us.us.us, %i.bj ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cg
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.ci, i64 %indvars.iv161
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !42
  %i.cl = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %indvars.iv161 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !42 ; 7 uses
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = ptrtoaddr ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %diff.check215 = icmp ult i64 %i.ct, 32
  %or.cond229 = select i1 %min.iters.check217, i1 true, i1 %diff.check215
  br i1 %or.cond229, label %scalar.ph216.preheader, label %vector.body221

vector.body221:                                   ; preds = %.lr.ph86.us95.us.us.us.us.us.us.us, %vector.body221
  %index222 = phi i64 [ %index.next223, %vector.body221 ], [ 0, %.lr.ph86.us95.us.us.us.us.us.us.us ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index222 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <4 x float> zeroinitializer, ptr %i.cu, align 4, !tbaa !43
  store <4 x float> zeroinitializer, ptr %i.cv, align 4, !tbaa !43
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index222 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x float> zeroinitializer, ptr %i.cw, align 4, !tbaa !43
  store <4 x float> zeroinitializer, ptr %i.cx, align 4, !tbaa !43
  %index.next223 = add nuw i64 %index222, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next223, %n.vec220
  br i1 %i.cy, label %middle.block224, label %vector.body221, !llvm.loop !44

middle.block224:                                  ; preds = %vector.body221
  br i1 %cmp.n225, label %._crit_edge.us96.us.us.us.us.us.us.us, label %scalar.ph216.preheader

scalar.ph216.preheader:                           ; preds = %.lr.ph86.us95.us.us.us.us.us.us.us, %middle.block224
  %indvars.iv156.ph = phi i64 [ 0, %.lr.ph86.us95.us.us.us.us.us.us.us ], [ %n.vec220, %middle.block224 ] ; 3 uses
  br i1 %lcmp.mod241.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol

scalar.ph216.prol:                                ; preds = %scalar.ph216.preheader, %scalar.ph216.prol
  %indvars.iv156.prol = phi i64 [ %indvars.iv.next157.prol, %scalar.ph216.prol ], [ %indvars.iv156.ph, %scalar.ph216.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph216.prol ], [ 0, %scalar.ph216.preheader ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv156.prol
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !43
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv156.prol
  store float 0.000000e+00, ptr %i.da, align 4, !tbaa !43
  %indvars.iv.next157.prol = add nuw nsw i64 %indvars.iv156.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter240
  br i1 %prol.iter.cmp.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol, !llvm.loop !45

scalar.ph216.prol.loopexit:                       ; preds = %scalar.ph216.prol, %scalar.ph216.preheader
  %indvars.iv156.unr = phi i64 [ %indvars.iv156.ph, %scalar.ph216.preheader ], [ %indvars.iv.next157.prol, %scalar.ph216.prol ]
  %i.db = sub nsw i64 %indvars.iv156.ph, %wide.trip.count159
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge.us96.us.us.us.us.us.us.us, label %scalar.ph216

scalar.ph216:                                     ; preds = %scalar.ph216.prol.loopexit, %scalar.ph216
  %indvars.iv156 = phi i64 [ %indvars.iv.next157.3, %scalar.ph216 ], [ %indvars.iv156.unr, %scalar.ph216.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv156
  store float 0.000000e+00, ptr %i.dd, align 4, !tbaa !43
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv156
  store float 0.000000e+00, ptr %i.de, align 4, !tbaa !43
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next157
  store float 0.000000e+00, ptr %i.df, align 4, !tbaa !43
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next157
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !43
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next157.1
  store float 0.000000e+00, ptr %i.dh, align 4, !tbaa !43
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next157.1
  store float 0.000000e+00, ptr %i.di, align 4, !tbaa !43
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next157.2
  store float 0.000000e+00, ptr %i.dj, align 4, !tbaa !43
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next157.2
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !43
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %exitcond160.not.3 = icmp eq i64 %indvars.iv.next157.3, %wide.trip.count159
  br i1 %exitcond160.not.3, label %._crit_edge.us96.us.us.us.us.us.us.us, label %scalar.ph216, !llvm.loop !46

._crit_edge.us96.us.us.us.us.us.us.us:            ; preds = %scalar.ph216.prol.loopexit, %scalar.ph216, %middle.block224
  %i.dl = add i64 %i.cg, %i.bj                    ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge90.us.us.us.us.us.us.us, label %.lr.ph86.us95.us.us.us.us.us.us.us

.lr.ph86.us.us.us.us.us.us.us.us.us:              ; preds = %.preheader.us.us.us.us.us.us.us, %._crit_edge.us91.us.us.us.us.us.us.us.us
  %i.dm = phi ptr [ %i.ec, %._crit_edge.us91.us.us.us.us.us.us.us.us ], [ %.pre182, %.preheader.us.us.us.us.us.us.us ]
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._crit_edge.us91.us.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us.us ] ; 6 uses
  %.287.us.us.us.us.us.us.us.us.us = phi i64 [ %i.fc, %._crit_edge.us91.us.us.us.us.us.us.us.us ], [ %.199.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ] ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv171 to i32
  %i.do = uitofp nneg i32 %i.dn to float
  %i.dp = fmul float %7, %i.do
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %indvars.iv171
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store float %i.dp, ptr %i.dr, align 4, !tbaa !37
  %i.ds = tail call float @urand() #15
  %i.dt = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %indvars.iv171 ; 2 uses
  store float %i.ds, ptr %i.du, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.287.us.us.us.us.us.us.us.us.us
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !41
  %i.dx = add i64 %.287.us.us.us.us.us.us.us.us.us, %i.bj ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dx
  %i.dz = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dz, i64 %indvars.iv171
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !42
  %i.ec = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %i.ed = getelementptr inbounds nuw [40 x i8], ptr %i.ec, i64 %indvars.iv171 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !41 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !42 ; 7 uses
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = ptrtoaddr ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %diff.check = icmp ult i64 %i.ek, 32
  %or.cond232 = select i1 %min.iters.check204, i1 true, i1 %diff.check
  br i1 %or.cond232, label %scalar.ph203.preheader, label %vector.body208

vector.body208:                                   ; preds = %.lr.ph86.us.us.us.us.us.us.us.us.us, %vector.body208
  %index209 = phi i64 [ %index.next210, %vector.body208 ], [ 0, %.lr.ph86.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index209 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <4 x float> zeroinitializer, ptr %i.el, align 4, !tbaa !43
  store <4 x float> zeroinitializer, ptr %i.em, align 4, !tbaa !43
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index209 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x float> zeroinitializer, ptr %i.en, align 4, !tbaa !43
  store <4 x float> zeroinitializer, ptr %i.eo, align 4, !tbaa !43
  %index.next210 = add nuw i64 %index209, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next210, %n.vec207
  br i1 %i.ep, label %middle.block211, label %vector.body208, !llvm.loop !47

middle.block211:                                  ; preds = %vector.body208
  br i1 %cmp.n212, label %._crit_edge.us91.us.us.us.us.us.us.us.us, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %.lr.ph86.us.us.us.us.us.us.us.us.us, %middle.block211
  %indvars.iv166.ph = phi i64 [ 0, %.lr.ph86.us.us.us.us.us.us.us.us.us ], [ %n.vec207, %middle.block211 ] ; 3 uses
  br i1 %lcmp.mod243.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv166.prol = phi i64 [ %indvars.iv.next167.prol, %scalar.ph203.prol ], [ %indvars.iv166.ph, %scalar.ph203.preheader ] ; 3 uses
  %prol.iter244 = phi i64 [ %prol.iter244.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv166.prol
  store float 0.000000e+00, ptr %i.eq, align 4, !tbaa !43
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv166.prol
  store float 0.000000e+00, ptr %i.er, align 4, !tbaa !43
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.prol, 1 ; 2 uses
  %prol.iter244.next = add i64 %prol.iter244, 1   ; 2 uses
  %prol.iter244.cmp.not = icmp eq i64 %prol.iter244.next, %xtraiter242
  br i1 %prol.iter244.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !48

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %scalar.ph203.preheader ], [ %indvars.iv.next167.prol, %scalar.ph203.prol ]
  %i.es = sub nsw i64 %indvars.iv166.ph, %wide.trip.count159
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %._crit_edge.us91.us.us.us.us.us.us.us.us, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.3, %scalar.ph203 ], [ %indvars.iv166.unr, %scalar.ph203.prol.loopexit ] ; 6 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv166
  store float 0.000000e+00, ptr %i.eu, align 4, !tbaa !43
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv166
  store float 0.000000e+00, ptr %i.ev, align 4, !tbaa !43
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next167
  store float 0.000000e+00, ptr %i.ew, align 4, !tbaa !43
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next167
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !43
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next167.1
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !43
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next167.1
  store float 0.000000e+00, ptr %i.ez, align 4, !tbaa !43
  %indvars.iv.next167.2 = add nuw nsw i64 %indvars.iv166, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next167.2
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !43
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next167.2
  store float 0.000000e+00, ptr %i.fb, align 4, !tbaa !43
  %indvars.iv.next167.3 = add nuw nsw i64 %indvars.iv166, 4 ; 2 uses
  %exitcond170.not.3 = icmp eq i64 %indvars.iv.next167.3, %wide.trip.count169
  br i1 %exitcond170.not.3, label %._crit_edge.us91.us.us.us.us.us.us.us.us, label %scalar.ph203, !llvm.loop !49

._crit_edge.us91.us.us.us.us.us.us.us.us:         ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203, %middle.block211
  %i.fc = add i64 %i.dx, %i.bj                    ; 2 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge90.us.us.us.us.us.us.us, label %.lr.ph86.us.us.us.us.us.us.us.us.us

._crit_edge.split.us.us.us.split.us.us.split.us.us: ; preds = %._crit_edge90.us.us.us.us.us.us.us
  %i.fd = add nuw nsw i64 %.071111.us.us.us.us, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %i.fd, %i.b
  br i1 %exitcond181.not, label %._crit_edge112, label %.preheader77.us.us.us.us

.preheader77.us.us:                               ; preds = %.preheader77.us.us.preheader, %._crit_edge.split.us.us.us.split
  %.071111.us.us = phi i64 [ %i.gq, %._crit_edge.split.us.us.us.split ], [ 0, %.preheader77.us.us.preheader ] ; 2 uses
  %.073110.us.us = phi i64 [ %.us-phi.us.us.us, %._crit_edge.split.us.us.us.split ], [ 0, %.preheader77.us.us.preheader ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.071111.us.us
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !28
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge90.us.us.us, %.preheader77.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %._crit_edge90.us.us.us ], [ 0, %.preheader77.us.us ] ; 3 uses
  %.199.us.us.us = phi i64 [ %.us-phi.us.us.us, %._crit_edge90.us.us.us ], [ %.073110.us.us, %.preheader77.us.us ] ; 2 uses
  %i.fg = icmp samesign ult i64 %indvars.iv150, %i.bq
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv150 ; 6 uses
  br i1 %i.fg, label %._crit_edge.us91.us.us.us, label %.lr.ph89.split.us106.us.us

.lr.ph89.split.us106.us.us:                       ; preds = %.preheader.us.us.us, %.lr.ph89.split.us106.us.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.lr.ph89.split.us106.us.us ], [ 0, %.preheader.us.us.us ] ; 4 uses
  %.287.us103.us.us = phi i64 [ %i.fy, %.lr.ph89.split.us106.us.us ], [ %.199.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 3 uses
  %i.fi = trunc nuw nsw i64 %indvars.iv.next141 to i32
  %i.fj = uitofp nneg i32 %i.fi to float
  %i.fk = fmul float %7, %i.fj
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %indvars.iv140
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store float %i.fk, ptr %i.fn, align 4, !tbaa !37
  %i.fo = tail call float @urand() #15
  %i.fp = load ptr, ptr %i.fh, align 8, !tbaa !31
  %i.fq = getelementptr inbounds nuw [40 x i8], ptr %i.fp, i64 %indvars.iv140 ; 2 uses
  store float %i.fo, ptr %i.fq, align 8, !tbaa !40
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.287.us103.us.us
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !41
  %i.ft = add i64 %.287.us103.us.us, %i.bj        ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ft
  %i.fv = load ptr, ptr %i.fh, align 8, !tbaa !31
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fv, i64 %indvars.iv140
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !42
  %i.fy = add i64 %i.ft, %i.bj                    ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count164
  br i1 %exitcond144.not, label %._crit_edge90.us.us.us, label %.lr.ph89.split.us106.us.us

._crit_edge90.us.us.us:                           ; preds = %.lr.ph89.split.us106.us.us, %._crit_edge.us91.us.us.us
  %.us-phi.us.us.us = phi i64 [ %i.gp, %._crit_edge.us91.us.us.us ], [ %i.fy, %.lr.ph89.split.us106.us.us ] ; 2 uses
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count179
  br i1 %exitcond154.not, label %._crit_edge.split.us.us.us.split, label %.preheader.us.us.us

._crit_edge.us91.us.us.us:                        ; preds = %.preheader.us.us.us, %._crit_edge.us91.us.us.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %._crit_edge.us91.us.us.us ], [ 0, %.preheader.us.us.us ] ; 5 uses
  %.287.us.us.us.us = phi i64 [ %i.gp, %._crit_edge.us91.us.us.us ], [ %.199.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %i.fz = trunc nuw nsw i64 %indvars.iv145 to i32
  %i.ga = uitofp nneg i32 %i.fz to float
  %i.gb = fmul float %7, %i.ga
  %i.gc = load ptr, ptr %i.fh, align 8, !tbaa !31
  %i.gd = getelementptr inbounds nuw [40 x i8], ptr %i.gc, i64 %indvars.iv145
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store float %i.gb, ptr %i.ge, align 4, !tbaa !37
  %i.gf = tail call float @urand() #15
  %i.gg = load ptr, ptr %i.fh, align 8, !tbaa !31
  %i.gh = getelementptr inbounds nuw [40 x i8], ptr %i.gg, i64 %indvars.iv145 ; 2 uses
  store float %i.gf, ptr %i.gh, align 8, !tbaa !40
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.287.us.us.us.us
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !41
  %i.gk = add i64 %.287.us.us.us.us, %i.bj        ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.gk
  %i.gm = load ptr, ptr %i.fh, align 8, !tbaa !31
  %i.gn = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %indvars.iv145
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !42
  %i.gp = add i64 %i.gk, %i.bj                    ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge90.us.us.us, label %._crit_edge.us91.us.us.us

._crit_edge.split.us.us.us.split:                 ; preds = %._crit_edge90.us.us.us
  %i.gq = add nuw nsw i64 %.071111.us.us, 1       ; 2 uses
  %exitcond155.not = icmp eq i64 %i.gq, %i.b
  br i1 %exitcond155.not, label %._crit_edge112, label %.preheader77.us.us

._crit_edge112:                                   ; preds = %._crit_edge.split.us.us.us.split, %._crit_edge.split.us.us.us.split.us.us.split.us.us, %.preheader77.lr.ph, %._crit_edge84
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_tracks(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @free(ptr noundef %0) #15
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @generate_polar_angles(ptr noundef readonly byval(%struct.Input) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #14 ; 3 uses
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
  store <4 x float> %i.l, ptr %i.m, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !50

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
  store float %i.t, ptr %i.u, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !51
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @load_OpenMOC_tracks(ptr noundef %0, i1 noundef zeroext %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.q = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = tail call ptr @llvm.stacksave.p0()
  %i.u = alloca i8, i64 %i.s, align 16
  %i.v = sext i32 %i.r to i64
  %i.w = call i64 @fread(ptr noundef nonnull %i.u, i64 noundef %i.v, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 11 uses
  %i.y = tail call i64 @fread(ptr noundef nonnull %i.x, i64 noundef 4, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.z = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.aa = load double, ptr %i.b, align 8, !tbaa !52
  %i.ab = fptrunc double %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ab, ptr %i.ac, align 4, !tbaa !54
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !55  ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = alloca i32, i64 %i.ae, align 16         ; 6 uses
  %i.ag = alloca i32, i64 %i.ae, align 16
  %i.ah = alloca i32, i64 %i.ae, align 16
  %i.ai = alloca double, i64 %i.ae, align 16
  %i.aj = sext i32 %i.ad to i64
  %i.ak = call i64 @fread(ptr noundef nonnull %i.af, i64 noundef 4, i64 noundef %i.aj, ptr noundef %i.o) ; 0 uses
  %i.al = load i32, ptr %i.x, align 4, !tbaa !55
  %i.am = sext i32 %i.al to i64
  %i.an = call i64 @fread(ptr noundef nonnull %i.ag, i64 noundef 4, i64 noundef %i.am, ptr noundef %i.o) ; 0 uses
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !55
  %i.ap = sext i32 %i.ao to i64
  %i.aq = call i64 @fread(ptr noundef nonnull %i.ah, i64 noundef 4, i64 noundef %i.ap, ptr noundef %i.o) ; 0 uses
  %i.ar = load i32, ptr %i.x, align 4, !tbaa !55
  %i.as = sext i32 %i.ar to i64
  %i.at = call i64 @fread(ptr noundef nonnull %i.ai, i64 noundef 8, i64 noundef %i.as, ptr noundef %i.o) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store i64 0, ptr %i.au, align 8, !tbaa !8
  %i.av = load i32, ptr %i.x, align 4, !tbaa !55  ; 3 uses
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
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !56

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
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bg) #14 ; 2 uses
  %i.bi = load i64, ptr %3, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bk = call i32 @fgetpos(ptr noundef %i.o, ptr noundef nonnull %4) ; 0 uses
  %i.bl = load i32, ptr %i.x, align 4, !tbaa !55  ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader110.lr.ph, label %._crit_edge122

end_hunk_0
