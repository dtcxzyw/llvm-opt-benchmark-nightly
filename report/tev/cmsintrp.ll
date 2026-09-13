Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsintrp?download=true
inline.NumInlined: 120
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_cmsSetInterpolationRoutine:bb.a
    i32 11, label %bb.r
    i32 12, label %bb.s
    i32 13, label %bb.t
    i32 14, label %bb.u
    i32 15, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.o, 1
  %.not41.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %LinLerp1D.LinLerp1Dfloat.i = select i1 %.not41.i, ptr @LinLerp1D, ptr @LinLerp1Dfloat
  br label %DefaultInterpolatorsFactory.exit

bb.f:                                             ; preds = %bb.d
  %Eval1Input.Eval1InputFloat.i = select i1 %.not41.i, ptr @Eval1Input, ptr @Eval1InputFloat
  br label %DefaultInterpolatorsFactory.exit

bb.g:                                             ; preds = %bb.c
  %.not39.i = icmp eq i32 %i.r, 0
  %BilinearInterp16.BilinearInterpFloat.i = select i1 %.not39.i, ptr @BilinearInterp16, ptr @BilinearInterpFloat
  br label %DefaultInterpolatorsFactory.exit

bb.h:                                             ; preds = %bb.c
  %.not36.i = icmp eq i32 %i.s, 0
  %.not37.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %.not36.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %TrilinearInterp16.TrilinearInterpFloat.i = select i1 %.not37.i, ptr @TrilinearInterp16, ptr @TrilinearInterpFloat
  br label %DefaultInterpolatorsFactory.exit

bb.j:                                             ; preds = %bb.h
  %TetrahedralInterp16.TetrahedralInterpFloat.i = select i1 %.not37.i, ptr @TetrahedralInterp16, ptr @TetrahedralInterpFloat
  br label %DefaultInterpolatorsFactory.exit

bb.k:                                             ; preds = %bb.c
  %.not35.i = icmp eq i32 %i.r, 0
  %Eval4Inputs.Eval4InputsFloat.i = select i1 %.not35.i, ptr @Eval4Inputs, ptr @Eval4InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.l:                                             ; preds = %bb.c
  %.not34.i = icmp eq i32 %i.r, 0
  %Eval5Inputs.Eval5InputsFloat.i = select i1 %.not34.i, ptr @Eval5Inputs, ptr @Eval5InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.m:                                             ; preds = %bb.c
  %.not33.i = icmp eq i32 %i.r, 0
  %Eval6Inputs.Eval6InputsFloat.i = select i1 %.not33.i, ptr @Eval6Inputs, ptr @Eval6InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.n:                                             ; preds = %bb.c
  %.not32.i = icmp eq i32 %i.r, 0
  %Eval7Inputs.Eval7InputsFloat.i = select i1 %.not32.i, ptr @Eval7Inputs, ptr @Eval7InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.o:                                             ; preds = %bb.c
  %.not31.i = icmp eq i32 %i.r, 0
  %Eval8Inputs.Eval8InputsFloat.i = select i1 %.not31.i, ptr @Eval8Inputs, ptr @Eval8InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.p:                                             ; preds = %bb.c
  %.not30.i = icmp eq i32 %i.r, 0
  %Eval9Inputs.Eval9InputsFloat.i = select i1 %.not30.i, ptr @Eval9Inputs, ptr @Eval9InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.q:                                             ; preds = %bb.c
  %.not29.i = icmp eq i32 %i.r, 0
  %Eval10Inputs.Eval10InputsFloat.i = select i1 %.not29.i, ptr @Eval10Inputs, ptr @Eval10InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.r:                                             ; preds = %bb.c
  %.not28.i = icmp eq i32 %i.r, 0
  %Eval11Inputs.Eval11InputsFloat.i = select i1 %.not28.i, ptr @Eval11Inputs, ptr @Eval11InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.s:                                             ; preds = %bb.c
  %.not27.i = icmp eq i32 %i.r, 0
  %Eval12Inputs.Eval12InputsFloat.i = select i1 %.not27.i, ptr @Eval12Inputs, ptr @Eval12InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.t:                                             ; preds = %bb.c
  %.not26.i = icmp eq i32 %i.r, 0
  %Eval13Inputs.Eval13InputsFloat.i = select i1 %.not26.i, ptr @Eval13Inputs, ptr @Eval13InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.u:                                             ; preds = %bb.c
  %.not25.i = icmp eq i32 %i.r, 0
  %Eval14Inputs.Eval14InputsFloat.i = select i1 %.not25.i, ptr @Eval14Inputs, ptr @Eval14InputsFloat
  br label %DefaultInterpolatorsFactory.exit

bb.v:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.r, 0
  %Eval15Inputs.Eval15InputsFloat.i = select i1 %.not.i, ptr @Eval15Inputs, ptr @Eval15InputsFloat
  br label %DefaultInterpolatorsFactory.exit

DefaultInterpolatorsFactory.exit:                 ; preds = %.thread, %bb.c, %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.1.i = phi ptr [ null, %.thread ], [ %Eval7Inputs.Eval7InputsFloat.i, %bb.n ], [ %LinLerp1D.LinLerp1Dfloat.i, %bb.e ], [ %Eval10Inputs.Eval10InputsFloat.i, %bb.q ], [ %Eval1Input.Eval1InputFloat.i, %bb.f ], [ %Eval15Inputs.Eval15InputsFloat.i, %bb.v ], [ %BilinearInterp16.BilinearInterpFloat.i, %bb.g ], [ %Eval8Inputs.Eval8InputsFloat.i, %bb.o ], [ %TrilinearInterp16.TrilinearInterpFloat.i, %bb.i ], [ %Eval14Inputs.Eval14InputsFloat.i, %bb.u ], [ %TetrahedralInterp16.TetrahedralInterpFloat.i, %bb.j ], [ %Eval11Inputs.Eval11InputsFloat.i, %bb.r ], [ %Eval4Inputs.Eval4InputsFloat.i, %bb.k ], [ %Eval13Inputs.Eval13InputsFloat.i, %bb.t ], [ %Eval5Inputs.Eval5InputsFloat.i, %bb.l ], [ %Eval9Inputs.Eval9InputsFloat.i, %bb.p ], [ %Eval6Inputs.Eval6InputsFloat.i, %bb.m ], [ %Eval12Inputs.Eval12InputsFloat.i, %bb.s ], [ null, %bb.c ] ; 2 uses
  store ptr %.sroa.0.1.i, ptr %i.b, align 8, !tbaa !14
  %i.w = icmp ne ptr %.sroa.0.1.i, null
  %i.x = zext i1 %i.w to i32
  br label %bb.w

bb.w:                                             ; preds = %DefaultInterpolatorsFactory.exit, %bb.b
  %. = phi i32 [ %i.x, %DefaultInterpolatorsFactory.exit ], [ 1, %bb.b ]
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define ptr @_cmsComputeInterpParamsEx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %2, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef 15) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 216) #7 ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %5, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %2, ptr %i.e, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %3, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %4, ptr %i.g, align 8, !tbaa !19
  store ptr %0, ptr %i.b, align 8, !tbaa !20
  %.not55 = icmp eq i32 %2, 0
  br i1 %.not55, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %3, ptr %i.h, align 4, !tbaa !21
  br label %._crit_edge54

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %i.k = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 14
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.n, ptr %i.o, align 4, !tbaa !21
  %i.p = add i32 %i.n, -1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.p, ptr %i.q, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.s, ptr %i.t, align 4, !tbaa !21
  %i.u = add i32 %i.s, -1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 %i.u, ptr %i.v, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !39

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod64 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21   ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  store i32 %i.x, ptr %i.y, align 4, !tbaa !21
  %i.z = add i32 %i.x, -1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 7 uses
  store i32 %3, ptr %i.ab, align 4, !tbaa !21
  %.not63 = icmp eq i32 %2, 1
  br i1 %.not63, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %._crit_edge
  %i.ac = zext nneg i32 %2 to i64                 ; 5 uses
  %load_initial = load i32, ptr %i.ab, align 4    ; 2 uses
  %xtraiter65 = and i64 %i.k, 3                   ; 3 uses
  %i.ad = add nsw i32 %2, -2
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter68 = and i64 %i.k, -4
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53, %.lr.ph53.preheader.new
  %i.af = phi i32 [ %load_initial, %.lr.ph53.preheader.new ], [ %i.av, %.lr.ph53 ]
  %indvars.iv57 = phi i64 [ 1, %.lr.ph53.preheader.new ], [ %indvars.iv.next58.3, %.lr.ph53 ] ; 6 uses
  %niter69 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter69.next.3, %.lr.ph53 ]
  %6 = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv57
  %i.ag = sub nuw nsw i64 %i.ac, %indvars.iv57
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = mul i32 %i.ai, %i.af                    ; 2 uses
  store i32 %i.aj, ptr %6, align 4, !tbaa !21
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %7 = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next58
  %i.ak = sub nuw nsw i64 %i.ac, %indvars.iv.next58
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = mul i32 %i.am, %i.aj                    ; 2 uses
  store i32 %i.an, ptr %7, align 4, !tbaa !21
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %8 = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next58.1
  %i.ao = sub nuw nsw i64 %i.ac, %indvars.iv.next58.1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21
  %i.ar = mul i32 %i.aq, %i.an                    ; 2 uses
  store i32 %i.ar, ptr %8, align 4, !tbaa !21
  %indvars.iv.next58.2 = add nuw nsw i64 %indvars.iv57, 3 ; 2 uses
  %9 = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next58.2
  %i.as = sub nuw nsw i64 %i.ac, %indvars.iv.next58.2
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %i.av = mul i32 %i.au, %i.ar                    ; 3 uses
  store i32 %i.av, ptr %9, align 4, !tbaa !21
  %indvars.iv.next58.3 = add nuw nsw i64 %indvars.iv57, 4 ; 2 uses
  %niter69.next.3 = add nuw i64 %niter69, 4       ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %._crit_edge54.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !40

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.epil.init = phi i32 [ %load_initial, %.lr.ph53.preheader ], [ %i.av, %._crit_edge54.loopexit.unr-lcssa ]
  %indvars.iv57.epil.init = phi i64 [ 1, %.lr.ph53.preheader ], [ %indvars.iv.next58.3, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter65, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %i.aw = phi i32 [ %.epil.init, %.lr.ph53.epil.preheader ], [ %i.ba, %.lr.ph53.epil ]
  %indvars.iv57.epil = phi i64 [ %indvars.iv57.epil.init, %.lr.ph53.epil.preheader ], [ %indvars.iv.next58.epil, %.lr.ph53.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph53.epil.preheader ], [ %epil.iter.next, %.lr.ph53.epil ]
  %10 = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv57.epil
  %i.ax = sub nuw nsw i64 %i.ac, %indvars.iv57.epil
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  %i.ba = mul i32 %i.az, %i.aw                    ; 2 uses
  store i32 %i.ba, ptr %10, align 4, !tbaa !21
  %indvars.iv.next58.epil = add nuw nsw i64 %indvars.iv57.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter65
  br i1 %epil.iter.cmp.not, label %._crit_edge54, label %.lr.ph53.epil, !llvm.loop !41

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.epil, %._crit_edge.thread, %._crit_edge
  %i.bb = tail call i32 @_cmsSetInterpolationRoutine(ptr noundef %0, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge54
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %3) #7
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.b) #7
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge54, %bb.c, %bb.f, %bb.b
  %.046 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.c ], [ %i.b, %._crit_edge54 ]
  ret ptr %.046
}

declare void @cmsSignalError(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @_cmsMallocZero(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_cmsFree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @_cmsComputeInterpParams(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [15 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x i32> %i.c, ptr %i.a, align 16, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.c, ptr %i.d, align 16, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> %i.c, ptr %i.e, align 16, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %1, ptr %i.f, align 16, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %1, ptr %i.g, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %1, ptr %i.h, align 8, !tbaa !21
  %i.i = call ptr @_cmsComputeInterpParamsEx(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define void @_cmsFreeInterpParams(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @_cmsFree(ptr noundef %i.a, ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @LinLerp1Dfloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load float, ptr %0, align 4, !tbaa !25   ; 4 uses
  %i.d = fcmp olt float %i.c, f0x3089705F
  %i.e = fcmp uno float %i.c, 0.000000e+00
  %or.cond.i = or i1 %i.d, %i.e
  %i.f = fcmp ogt float %i.c, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.c
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = fcmp oeq float %i.h, 1.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 3 uses
  br i1 %i.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.j = zext i32 %.pre to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %.pre, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.l = phi i64 [ %i.j, %._crit_edge ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = uitofp i32 %.pre to float
  %i.p = fmul float %i.h, %i.o                    ; 2 uses
  %i.q = fpext float %i.p to double               ; 2 uses
  %i.r = tail call double @llvm.floor.f64(double %i.q)
  %i.s = fptosi double %i.r to i32                ; 2 uses
  %i.t = tail call double @llvm.ceil.f64(double %i.q)
  %i.u = fptosi double %i.t to i32
  %i.v = sitofp i32 %i.s to float
  %i.w = fsub float %i.p, %i.v
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !25 ; 2 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !25
  %i.ad = fsub float %i.ac, %i.z
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.w, float %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.ae, %bb.d ], [ %i.n, %bb.c ]
  store float %storemerge, ptr %1, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @LinLerp1D(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i16 %i.c, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 3 uses
  br i1 %i.e, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.f = zext i32 %.pre to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %.pre, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.h = phi i64 [ %i.f, %._crit_edge ], [ 0, %bb.b ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = mul i32 %.pre, %i.d                      ; 2 uses
  %i.l = add nsw i32 %i.k, 32767
  %i.m = sdiv i32 %i.l, 65535
  %i.n = add nsw i32 %i.m, %i.k                   ; 2 uses
  %i.o = ashr i32 %i.n, 16
  %i.p = and i32 %i.n, 65535
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27   ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !27
  %i.v = zext i16 %i.s to i32
  %i.w = zext i16 %i.u to i32
  %i.x = sub nsw i32 %i.w, %i.v
  %i.y = mul i32 %i.x, %i.p
  %i.z = add i32 %i.y, 32768
  %i.aa = lshr i32 %i.z, 16
  %i.ab = trunc nuw i32 %i.aa to i16
  %i.ac = add i16 %i.s, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i16 [ %i.ac, %bb.d ], [ %i.j, %bb.c ]
  store i16 %storemerge, ptr %1, align 2, !tbaa !27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval1InputFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 15 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 4 uses
  %i.f = fcmp olt float %i.e, f0x3089705F
  %i.g = fcmp uno float %i.e, 0.000000e+00
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = fcmp ogt float %i.e, 1.000000e+00
  %i.i = select i1 %i.h, float 1.000000e+00, float %i.e
  %i.j = select i1 %or.cond.i, float 0.000000e+00, float %i.i ; 2 uses
  %i.k = fcmp oeq float %i.j, 1.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 3 uses
  br i1 %i.k, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %.pre, 0
  br i1 %i.l, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.a, %bb.b
end_hunk_0
