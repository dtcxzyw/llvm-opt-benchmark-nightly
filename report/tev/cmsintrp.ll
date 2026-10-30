Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsintrp?download=true
inline.NumInlined: 120
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_cmsComputeInterpParamsEx:bb.a
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
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 6 uses
  store i32 %3, ptr %i.ab, align 4, !tbaa !21
  %.not63 = icmp eq i32 %2, 1
  br i1 %.not63, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %._crit_edge
  %i.ac = zext nneg i32 %2 to i64                 ; 5 uses
  %xtraiter65 = and i64 %i.k, 3                   ; 3 uses
  %i.ad = add nsw i32 %2, -2
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter68 = and i64 %i.k, -4
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53, %.lr.ph53.preheader.new
  %i.af = phi i32 [ %3, %.lr.ph53.preheader.new ], [ %i.ay, %.lr.ph53 ]
  %indvars.iv57 = phi i64 [ 1, %.lr.ph53.preheader.new ], [ %indvars.iv.next58.3, %.lr.ph53 ] ; 6 uses
  %niter69 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter69.next.3, %.lr.ph53 ]
  %i.ag = sub nuw nsw i64 %i.ac, %indvars.iv57
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = mul i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv57
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !21
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.al = sub nuw nsw i64 %i.ac, %indvars.iv.next58
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ao = mul i32 %i.an, %i.aj                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next58
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !21
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %i.aq = sub nuw nsw i64 %i.ac, %indvars.iv.next58.1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = mul i32 %i.as, %i.ao                    ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next58.1
  store i32 %i.at, ptr %i.au, align 4, !tbaa !21
  %indvars.iv.next58.2 = add nuw nsw i64 %indvars.iv57, 3 ; 2 uses
  %i.av = sub nuw nsw i64 %i.ac, %indvars.iv.next58.2
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.ay = mul i32 %i.ax, %i.at                    ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next58.2
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !21
  %indvars.iv.next58.3 = add nuw nsw i64 %indvars.iv57, 4 ; 2 uses
  %niter69.next.3 = add nuw i64 %niter69, 4       ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %._crit_edge54.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !40

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.epil.init = phi i32 [ %3, %.lr.ph53.preheader ], [ %i.ay, %._crit_edge54.loopexit.unr-lcssa ]
  %indvars.iv57.epil.init = phi i64 [ 1, %.lr.ph53.preheader ], [ %indvars.iv.next58.3, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter65, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %i.ba = phi i32 [ %.epil.init, %.lr.ph53.epil.preheader ], [ %i.be, %.lr.ph53.epil ]
  %indvars.iv57.epil = phi i64 [ %indvars.iv57.epil.init, %.lr.ph53.epil.preheader ], [ %indvars.iv.next58.epil, %.lr.ph53.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph53.epil.preheader ], [ %epil.iter.next, %.lr.ph53.epil ]
  %i.bb = sub nuw nsw i64 %i.ac, %indvars.iv57.epil
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  %i.be = mul i32 %i.bd, %i.ba                    ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv57.epil
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !21
  %indvars.iv.next58.epil = add nuw nsw i64 %indvars.iv57.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter65
  br i1 %epil.iter.cmp.not, label %._crit_edge54, label %.lr.ph53.epil, !llvm.loop !41

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.epil, %._crit_edge.thread, %._crit_edge
  %i.bg = tail call i32 @_cmsSetInterpolationRoutine(ptr noundef %0, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.bg, 0
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
  %i.c = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.c, f0x3089705F
  %i.d = fcmp ogt float %i.c, 1.000000e+00
  %i.e = select i1 %i.d, float 1.000000e+00, float %i.c
  %i.f = select i1 %or.cond.i, float 0.000000e+00, float %i.e ; 2 uses
  %i.g = fcmp oeq float %i.f, 1.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 3 uses
  br i1 %i.g, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.h = zext i32 %.pre to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.pre, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.j = phi i64 [ %i.h, %._crit_edge ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = uitofp i32 %.pre to float
  %i.n = fmul float %i.f, %i.m                    ; 2 uses
  %i.o = fpext float %i.n to double               ; 2 uses
  %i.p = tail call double @llvm.floor.f64(double %i.o)
  %i.q = fptosi double %i.p to i32                ; 2 uses
  %i.r = tail call double @llvm.ceil.f64(double %i.o)
  %i.s = fptosi double %i.r to i32
  %i.t = sitofp i32 %i.q to float
  %i.u = fsub float %i.n, %i.t
  %i.v = sext i32 %i.q to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !25 ; 2 uses
  %i.y = sext i32 %i.s to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !25
  %i.ab = fsub float %i.aa, %i.x
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.u, float %i.x)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.ac, %bb.d ], [ %i.l, %bb.c ]
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
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.e, f0x3089705F
  %i.f = fcmp ogt float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.e
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = fcmp oeq float %i.h, 1.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 3 uses
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %.pre, 0
  br i1 %i.j, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ 0, %bb.b ], [ %.pre, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  %i.n = mul i32 %i.m, %i.k                       ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17   ; 3 uses
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %wide.trip.count49 = zext i32 %i.p to i64       ; 6 uses
  %min.iters.check65 = icmp ult i32 %i.p, 20
  br i1 %min.iters.check65, label %.lr.ph42.preheader78, label %vector.scevcheck61

vector.scevcheck61:                               ; preds = %.lr.ph42.preheader
  %i.q = add nsw i64 %wide.trip.count49, -1       ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = xor i32 %i.n, -1
  %i.t = icmp ult i32 %i.s, %i.r
  %i.u = icmp ugt i64 %i.q, 4294967295
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %.lr.ph42.preheader78, label %vector.memcheck66

vector.memcheck66:                                ; preds = %vector.scevcheck61
  %i.w = zext i32 %i.n to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add i64 %i.x, %i.d
  %i.z = sub i64 %i.y, %i.a
  %diff.check67 = icmp ugt i64 %i.z, -32
  br i1 %diff.check67, label %.lr.ph42.preheader78, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck66
  %n.vec69 = and i64 %wide.trip.count49, 4294967288 ; 3 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next74, %vector.body70 ] ; 3 uses
  %i.aa = trunc nuw i64 %index71 to i32
  %i.ab = add i32 %i.n, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load72 = load <4 x float>, ptr %i.ad, align 4, !tbaa !25
  %wide.load73 = load <4 x float>, ptr %i.ae, align 4, !tbaa !25
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index71 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x float> %wide.load72, ptr %i.af, align 4, !tbaa !25
  store <4 x float> %wide.load73, ptr %i.ag, align 4, !tbaa !25
  %index.next74 = add nuw i64 %index71, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.ah, label %middle.block75, label %vector.body70, !llvm.loop !42

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %n.vec69, %wide.trip.count49
  br i1 %cmp.n76, label %.loopexit, label %.lr.ph42.preheader78

.lr.ph42.preheader78:                             ; preds = %vector.memcheck66, %vector.scevcheck61, %.lr.ph42.preheader, %middle.block75
  %indvars.iv46.ph = phi i64 [ 0, %vector.memcheck66 ], [ 0, %vector.scevcheck61 ], [ 0, %.lr.ph42.preheader ], [ %n.vec69, %middle.block75 ] ; 3 uses
  %xtraiter81 = and i64 %wide.trip.count49, 3     ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader78, %.lr.ph42.prol
  %indvars.iv46.prol = phi i64 [ %indvars.iv.next47.prol, %.lr.ph42.prol ], [ %indvars.iv46.ph, %.lr.ph42.preheader78 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph42.prol ], [ 0, %.lr.ph42.preheader78 ]
  %i.ai = trunc nuw i64 %indvars.iv46.prol to i32
  %i.aj = add i32 %i.n, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !25
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv46.prol
  store float %i.am, ptr %i.an, align 4, !tbaa !25
  %indvars.iv.next47.prol = add nuw nsw i64 %indvars.iv46.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol, !llvm.loop !43

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader78
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %.lr.ph42.preheader78 ], [ %indvars.iv.next47.prol, %.lr.ph42.prol ]
  %i.ao = sub nsw i64 %indvars.iv46.ph, %wide.trip.count49
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.3, %.lr.ph42 ], [ %indvars.iv46.unr, %.lr.ph42.prol.loopexit ] ; 6 uses
  %i.aq = trunc nuw i64 %indvars.iv46 to i32
  %i.ar = add i32 %i.n, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv46
  store float %i.au, ptr %i.av, align 4, !tbaa !25
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv.next47 to i32
  %i.ax = add i32 %i.n, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !25
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next47
  store float %i.ba, ptr %i.bb, align 4, !tbaa !25
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %i.bc = trunc nuw i64 %indvars.iv.next47.1 to i32
  %i.bd = add i32 %i.n, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !25
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next47.1
  store float %i.bg, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next47.2 = add nuw nsw i64 %indvars.iv46, 3 ; 2 uses
  %i.bi = trunc nuw i64 %indvars.iv.next47.2 to i32
  %i.bj = add i32 %i.n, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !25
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next47.2
  store float %i.bm, ptr %i.bn, align 4, !tbaa !25
  %indvars.iv.next47.3 = add nuw nsw i64 %indvars.iv46, 4 ; 2 uses
  %exitcond50.not.3 = icmp eq i64 %indvars.iv.next47.3, %wide.trip.count49
  br i1 %exitcond50.not.3, label %.loopexit, label %.lr.ph42, !llvm.loop !44

bb.c:                                             ; preds = %bb.b
  %i.bo = uitofp i32 %.pre to float
  %i.bp = fmul float %i.h, %i.bo                  ; 2 uses
  %i.bq = fpext float %i.bp to double             ; 2 uses
  %i.br = tail call double @llvm.floor.f64(double %i.bq)
  %i.bs = fptosi double %i.br to i32              ; 2 uses
  %i.bt = tail call double @llvm.ceil.f64(double %i.bq)
  %i.bu = fptosi double %i.bt to i32
  %i.bv = sitofp i32 %i.bs to float
  %i.bw = fsub float %i.bp, %i.bv                 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !21 ; 2 uses
  %i.bz = mul i32 %i.by, %i.bs                    ; 6 uses
  %i.ca = mul i32 %i.by, %i.bu                    ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.cc to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %i.cc, 16
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.cd = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = xor i32 %i.bz, -1
  %i.cg = icmp ult i32 %i.cf, %i.ce
  %i.ch = xor i32 %i.ca, -1
  %i.ci = icmp ult i32 %i.ch, %i.ce
  %i.cj = icmp ugt i64 %i.cd, 4294967295
  %i.ck = or i1 %i.ci, %i.cj
  %i.cl = or i1 %i.cg, %i.ck
  br i1 %i.cl, label %.lr.ph.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cm = zext i32 %i.ca to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = sub i64 %i.a, %i.d                      ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co
  %diff.check = icmp ugt i64 %i.cp, -32
  %i.cq = zext i32 %i.bz to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = sub i64 %i.cr, %i.co
  %diff.check57 = icmp ugt i64 %i.cs, -32
  %conflict.rdx = or i1 %diff.check, %diff.check57
  br i1 %conflict.rdx, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = trunc nuw i64 %index to i32             ; 2 uses
  %i.cu = add i32 %i.bz, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <4 x float>, ptr %i.cw, align 4, !tbaa !25 ; 2 uses
  %wide.load58 = load <4 x float>, ptr %i.cx, align 4, !tbaa !25 ; 2 uses
  %i.cy = add i32 %i.ca, %i.ct
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cz ; 2 uses
end_hunk_0
begin_hunk_1_@Eval1Input:bb.a
  %i.bb = trunc nuw i64 %indvars.iv.next45 to i32
  %i.bc = add i32 %i.l, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !27
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next45
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !27
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %i.bh = trunc nuw i64 %indvars.iv.next45.1 to i32
  %i.bi = add i32 %i.l, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !27
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next45.1
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !27
  %indvars.iv.next45.2 = add nuw nsw i64 %indvars.iv44, 3 ; 2 uses
  %i.bn = trunc nuw i64 %indvars.iv.next45.2 to i32
  %i.bo = add i32 %i.l, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !27
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next45.2
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !27
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %exitcond48.not.3 = icmp eq i64 %indvars.iv.next45.3, %wide.trip.count47
  br i1 %exitcond48.not.3, label %.loopexit, label %.lr.ph40, !llvm.loop !50

bb.c:                                             ; preds = %bb.b
  %i.bt = mul i32 %.pre, %i.f                     ; 2 uses
  %i.bu = add nsw i32 %i.bt, 32767
  %i.bv = sdiv i32 %i.bu, 65535
  %i.bw = add nsw i32 %i.bv, %i.bt                ; 2 uses
  %i.bx = ashr i32 %i.bw, 16                      ; 2 uses
  %i.by = and i32 %i.bw, 65535                    ; 4 uses
  %i.bz = add nsw i32 %i.bx, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !21 ; 2 uses
  %i.cc = mul i32 %i.cb, %i.bx                    ; 6 uses
  %i.cd = mul i32 %i.cb, %i.bz                    ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.cf to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %i.cf, 24
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.cg = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = xor i32 %i.cc, -1
  %i.cj = icmp ult i32 %i.ci, %i.ch
  %i.ck = xor i32 %i.cd, -1
  %i.cl = icmp ult i32 %i.ck, %i.ch
  %i.cm = icmp ugt i64 %i.cg, 4294967295
  %i.cn = or i1 %i.cl, %i.cm
  %i.co = or i1 %i.cj, %i.cn
  br i1 %i.co, label %.lr.ph.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cp = zext i32 %i.cd to i64
  %i.cq = shl nuw nsw i64 %i.cp, 1
  %i.cr = sub i64 %i.a, %i.d                      ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %diff.check = icmp ugt i64 %i.cs, -16
  %i.ct = zext i32 %i.cc to i64
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = sub i64 %i.cu, %i.cr
  %diff.check54 = icmp ugt i64 %i.cv, -16
  %conflict.rdx = or i1 %diff.check, %diff.check54
  br i1 %conflict.rdx, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cw = trunc nuw i64 %index to i32             ; 2 uses
  %i.cx = add i32 %i.cc, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cy
  %wide.load = load <8 x i16>, ptr %i.cz, align 2, !tbaa !27 ; 2 uses
  %i.da = zext <8 x i16> %wide.load to <8 x i32>
  %i.db = add i32 %i.cd, %i.cw
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dc
  %wide.load55 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !27
  %i.de = zext <8 x i16> %wide.load55 to <8 x i32>
  %i.df = sub nsw <8 x i32> %i.de, %i.da
  %i.dg = mul <8 x i32> %i.df, %broadcast.splat
  %i.dh = add <8 x i32> %i.dg, splat (i32 32768)
  %i.di = lshr <8 x i32> %i.dh, splat (i32 16)
  %i.dj = trunc nuw <8 x i32> %i.di to <8 x i16>
  %i.dk = add <8 x i16> %wide.load, %i.dj
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.dk, ptr %i.dl, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader79
  %i.dn = trunc nuw i64 %indvars.iv.ph to i32     ; 2 uses
  %i.do = add i32 %i.cc, %i.dn
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !27 ; 2 uses
  %i.ds = zext i16 %i.dr to i32
  %i.dt = add i32 %i.cd, %i.dn
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !27
  %i.dx = zext i16 %i.dw to i32
  %i.dy = sub nsw i32 %i.dx, %i.ds
  %i.dz = mul i32 %i.dy, %i.by
  %i.ea = add i32 %i.dz, 32768
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = trunc nuw i32 %i.eb to i16
  %i.ed = add i16 %i.dr, %i.ec
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !27
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader79
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader79 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ef = add nsw i64 %wide.trip.count, -1
  %i.eg = icmp eq i64 %indvars.iv.ph, %i.ef
  br i1 %i.eg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.eh = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ei = add i32 %i.cc, %i.eh
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !27 ; 2 uses
  %i.em = zext i16 %i.el to i32
  %i.en = add i32 %i.cd, %i.eh
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !27
  %i.er = zext i16 %i.eq to i32
  %i.es = sub nsw i32 %i.er, %i.em
  %i.et = mul i32 %i.es, %i.by
  %i.eu = add i32 %i.et, 32768
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = trunc nuw i32 %i.ev to i16
  %i.ex = add i16 %i.el, %i.ew
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ez = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.fa = add i32 %i.cc, %i.ez
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !27 ; 2 uses
  %i.fe = zext i16 %i.fd to i32
  %i.ff = add i32 %i.cd, %i.ez
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !27
  %i.fj = zext i16 %i.fi to i32
  %i.fk = sub nsw i32 %i.fj, %i.fe
  %i.fl = mul i32 %i.fk, %i.by
  %i.fm = add i32 %i.fl, 32768
  %i.fn = lshr i32 %i.fm, 16
  %i.fo = trunc nuw i32 %i.fn to i16
  %i.fp = add i16 %i.fd, %i.fo
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !52

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph40.prol.loopexit, %.lr.ph40, %middle.block, %middle.block71, %vec.epilog.middle.block, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BilinearInterpFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.e = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 3 uses
  %3 = fcmp ult <2 x float> %i.e, splat (float f0x3089705F)
  %i.f = fcmp ogt <2 x float> %i.e, splat (float 1.000000e+00)
  %i.g = select <2 x i1> %i.f, <2 x float> splat (float 1.000000e+00), <2 x float> %i.e
  %i.h = select <2 x i1> %3, <2 x float> zeroinitializer, <2 x float> %i.g ; 2 uses
  %i.i = load <2 x i32>, ptr %i.d, align 8, !tbaa !21
  %i.j = uitofp <2 x i32> %i.i to <2 x float>
  %i.k = fmul <2 x float> %i.h, %i.j              ; 3 uses
  %i.l = fpext <2 x float> %i.k to <2 x double>
  %i.m = fadd <2 x double> %i.l, splat (double f0x4238000000000000)
  %i.n = bitcast <2 x double> %i.m to <2 x i64>
  %i.o = trunc <2 x i64> %i.n to <2 x i32>
  %i.p = ashr <2 x i32> %i.o, splat (i32 16)      ; 3 uses
  %i.q = sitofp <2 x i32> %i.p to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.k, %i.q  ; 2 uses
  %foldExtExtBinop83 = fsub <2 x float> %i.k, %i.q ; 2 uses
  %i.r = extractelement <2 x float> %foldExtExtBinop83, i64 1
  %i.s = icmp sgt i32 %i.c, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21   ; 2 uses
  %i.x = extractelement <2 x i32> %i.p, i64 1
  %i.y = mul i32 %i.x, %i.w                       ; 3 uses
  %i.z = fcmp ult <2 x float> %i.h, splat (float 1.000000e+00) ; 2 uses
  %i.aa = extractelement <2 x i1> %i.z, i64 1
  %i.ab = select i1 %i.aa, i32 %i.w, i32 0
  %i.ac = add i32 %i.y, %i.ab                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = extractelement <2 x i32> %i.p, i64 0
  %i.ag = mul i32 %i.af, %i.ae                    ; 3 uses
  %i.ah = extractelement <2 x i1> %i.z, i64 0
  %spec.select = select i1 %i.ah, i32 %i.ae, i32 0
  %i.ai = add i32 %i.ag, %spec.select             ; 2 uses
  %i.aj = add nsw i32 %i.y, %i.ag
  %i.ak = add nsw i32 %i.ac, %i.ag
  %i.al = add nsw i32 %i.y, %i.ai
  %i.am = add nsw i32 %i.ac, %i.ai
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = sext i32 %i.al to i64                   ; 2 uses
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.u, i64 %i.an ; 2 uses
  %invariant.gep61 = getelementptr [4 x i8], ptr %i.u, i64 %i.ao ; 2 uses
  %invariant.gep63 = getelementptr [4 x i8], ptr %i.u, i64 %i.ap ; 2 uses
  %invariant.gep65 = getelementptr [4 x i8], ptr %i.u, i64 %i.aq ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ar = ptrtoaddr ptr %i.u to i64
  %i.as = shl nsw i64 %i.aq, 2
  %i.at = sub i64 %i.a, %i.ar                     ; 4 uses
  %i.au = sub i64 %i.as, %i.at
  %diff.check = icmp ugt i64 %i.au, -16
  %i.av = shl nsw i64 %i.ap, 2
  %i.aw = sub i64 %i.av, %i.at
  %diff.check72 = icmp ugt i64 %i.aw, -16
  %conflict.rdx = or i1 %diff.check, %diff.check72
  %i.ax = shl nsw i64 %i.ao, 2
  %i.ay = sub i64 %i.ax, %i.at
  %diff.check73 = icmp ugt i64 %i.ay, -16
  %conflict.rdx74 = or i1 %conflict.rdx, %diff.check73
  %i.az = shl nsw i64 %i.an, 2
  %i.ba = sub i64 %i.az, %i.at
  %diff.check75 = icmp ugt i64 %i.ba, -16
  %conflict.rdx76 = or i1 %conflict.rdx74, %diff.check75
  br i1 %conflict.rdx76, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat78 = shufflevector <2 x float> %foldExtExtBinop83, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bb = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep61, i64 %index
  %wide.load79 = load <4 x float>, ptr %i.bc, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %invariant.gep63, i64 %index
  %wide.load80 = load <4 x float>, ptr %i.bd, align 4, !tbaa !25
  %i.be = getelementptr [4 x i8], ptr %invariant.gep65, i64 %index
  %wide.load81 = load <4 x float>, ptr %i.be, align 4, !tbaa !25
  %i.bf = fsub <4 x float> %wide.load80, %wide.load
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat, <4 x float> %wide.load) ; 2 uses
  %i.bh = fsub <4 x float> %wide.load81, %wide.load79
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %broadcast.splat, <4 x float> %wide.load79)
  %i.bj = fsub <4 x float> %i.bi, %i.bg
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat78, <4 x float> %i.bg)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.bk, ptr %i.bl, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.bn = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bo = load float, ptr %gep, align 4, !tbaa !25
  %gep62 = getelementptr [4 x i8], ptr %invariant.gep61, i64 %indvars.iv
  %i.bp = load float, ptr %gep62, align 4, !tbaa !25
  %gep64 = getelementptr [4 x i8], ptr %invariant.gep63, i64 %indvars.iv
  %i.bq = load float, ptr %gep64, align 4, !tbaa !25
  %gep66 = getelementptr [4 x i8], ptr %invariant.gep65, i64 %indvars.iv
  %i.br = load float, ptr %gep66, align 4, !tbaa !25
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bq, i64 1
  %i.bu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bo, i64 1 ; 2 uses
  %i.bw = fsub <2 x float> %i.bt, %i.bv
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bn, <2 x float> %i.bv) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = extractelement <2 x float> %i.bx, i64 1 ; 2 uses
  %i.ca = fsub float %i.by, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.r, float %i.bz)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.cb, ptr %i.cc, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BilinearInterp16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = mul i32 %i.g, %i.e                       ; 2 uses
  %i.i = add nsw i32 %i.h, 32767
  %i.j = sdiv i32 %i.i, 65535
  %i.k = add nsw i32 %i.j, %i.h                   ; 2 uses
  %i.l = and i32 %i.k, 65535                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !27   ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = mul i32 %i.q, %i.o                       ; 2 uses
  %i.s = add nsw i32 %i.r, 32767
  %i.t = sdiv i32 %i.s, 65535
  %i.u = add nsw i32 %i.t, %i.r                   ; 2 uses
  %i.v = and i32 %i.u, 65535                      ; 2 uses
  %i.w = icmp sgt i32 %i.c, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 5 uses
  %i.z = ashr i32 %i.u, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 2 uses
  %i.ac = mul i32 %i.z, %i.ab                     ; 3 uses
  %i.ad = icmp eq i16 %i.n, -1
  %i.ae = select i1 %i.ad, i32 0, i32 %i.ab
  %i.af = add i32 %i.ac, %i.ae                    ; 2 uses
  %i.ag = ashr i32 %i.k, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.aj = mul i32 %i.ag, %i.ai                    ; 3 uses
  %i.ak = icmp eq i16 %i.d, -1
  %spec.select = select i1 %i.ak, i32 0, i32 %i.ai
  %i.al = add i32 %i.aj, %spec.select             ; 2 uses
  %i.am = add nsw i32 %i.ac, %i.aj
  %i.an = add nsw i32 %i.af, %i.aj
  %i.ao = add nsw i32 %i.ac, %i.al
  %i.ap = add nsw i32 %i.af, %i.al
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = sext i32 %i.ao to i64                   ; 2 uses
  %i.at = sext i32 %i.ap to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.y, i64 %i.aq ; 2 uses
  %invariant.gep55 = getelementptr [2 x i8], ptr %i.y, i64 %i.ar ; 2 uses
  %invariant.gep57 = getelementptr [2 x i8], ptr %i.y, i64 %i.as ; 2 uses
  %invariant.gep59 = getelementptr [2 x i8], ptr %i.y, i64 %i.at ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = ptrtoaddr ptr %i.y to i64
  %i.av = shl nsw i64 %i.at, 1
  %i.aw = sub i64 %i.a, %i.au                     ; 4 uses
  %i.ax = sub i64 %i.av, %i.aw
  %diff.check = icmp ugt i64 %i.ax, -16
  %i.ay = shl nsw i64 %i.as, 1
  %i.az = sub i64 %i.ay, %i.aw
  %diff.check66 = icmp ugt i64 %i.az, -16
  %conflict.rdx = or i1 %diff.check, %diff.check66
  %i.ba = shl nsw i64 %i.ar, 1
  %i.bb = sub i64 %i.ba, %i.aw
  %diff.check67 = icmp ugt i64 %i.bb, -16
  %conflict.rdx68 = or i1 %conflict.rdx, %diff.check67
  %i.bc = shl nsw i64 %i.aq, 1
  %i.bd = sub i64 %i.bc, %i.aw
  %diff.check69 = icmp ugt i64 %i.bd, -16
  %conflict.rdx70 = or i1 %conflict.rdx68, %diff.check69
  br i1 %conflict.rdx70, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert71 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat72 = shufflevector <8 x i32> %broadcast.splatinsert71, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.be = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.be, align 2, !tbaa !27 ; 2 uses
  %i.bf = zext <8 x i16> %wide.load to <8 x i32>
  %i.bg = getelementptr [2 x i8], ptr %invariant.gep55, i64 %index
  %wide.load73 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !27 ; 2 uses
  %i.bh = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.bi = getelementptr [2 x i8], ptr %invariant.gep57, i64 %index
  %wide.load74 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !27
  %i.bj = zext <8 x i16> %wide.load74 to <8 x i32>
  %i.bk = getelementptr [2 x i8], ptr %invariant.gep59, i64 %index
  %wide.load75 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !27
  %i.bl = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.bm = sub nsw <8 x i32> %i.bj, %i.bf
  %i.bn = mul nsw <8 x i32> %i.bm, %broadcast.splat
  %i.bo = add nsw <8 x i32> %i.bn, splat (i32 32768)
  %i.bp = lshr <8 x i32> %i.bo, splat (i32 16)
  %i.bq = trunc nuw <8 x i32> %i.bp to <8 x i16>
  %i.br = add <8 x i16> %wide.load, %i.bq         ; 2 uses
  %i.bs = zext <8 x i16> %i.br to <8 x i32>
  %i.bt = sub nsw <8 x i32> %i.bl, %i.bh
  %i.bu = mul nsw <8 x i32> %i.bt, %broadcast.splat
  %i.bv = add nsw <8 x i32> %i.bu, splat (i32 32768)
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  %i.by = add <8 x i16> %wide.load73, %i.bx
  %i.bz = zext <8 x i16> %i.by to <8 x i32>
  %i.ca = sub nsw <8 x i32> %i.bz, %i.bs
  %i.cb = mul nsw <8 x i32> %i.ca, %broadcast.splat72
  %i.cc = add nsw <8 x i32> %i.cb, splat (i32 32768)
  %i.cd = lshr <8 x i32> %i.cc, splat (i32 16)
  %i.ce = trunc nuw <8 x i32> %i.cd to <8 x i16>
  %i.cf = add <8 x i16> %i.br, %i.ce
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.cf, ptr %i.cg, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ci = load i16, ptr %gep, align 2, !tbaa !27  ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %gep56 = getelementptr [2 x i8], ptr %invariant.gep55, i64 %indvars.iv
  %i.ck = load i16, ptr %gep56, align 2, !tbaa !27 ; 2 uses
  %i.cl = zext i16 %i.ck to i32
  %gep58 = getelementptr [2 x i8], ptr %invariant.gep57, i64 %indvars.iv
  %i.cm = load i16, ptr %gep58, align 2, !tbaa !27
  %i.cn = zext i16 %i.cm to i32
  %gep60 = getelementptr [2 x i8], ptr %invariant.gep59, i64 %indvars.iv
  %i.co = load i16, ptr %gep60, align 2, !tbaa !27
  %i.cp = zext i16 %i.co to i32
  %i.cq = sub nsw i32 %i.cn, %i.cj
  %i.cr = mul nsw i32 %i.cq, %i.l
  %i.cs = add nsw i32 %i.cr, 32768
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = add i16 %i.ci, %i.cu                    ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = sub nsw i32 %i.cp, %i.cl
  %i.cy = mul nsw i32 %i.cx, %i.l
  %i.cz = add nsw i32 %i.cy, 32768
  %i.da = lshr i32 %i.cz, 16
  %i.db = trunc nuw i32 %i.da to i16
  %i.dc = add i16 %i.ck, %i.db
  %i.dd = zext i16 %i.dc to i32
  %i.de = sub nsw i32 %i.dd, %i.cw
  %i.df = mul nsw i32 %i.de, %i.v
  %i.dg = add nsw i32 %i.df, 32768
  %i.dh = lshr i32 %i.dg, 16
  %i.di = trunc nuw i32 %i.dh to i16
  %i.dj = add i16 %i.cv, %i.di
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @TrilinearInterpFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.d, f0x3089705F
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  %i.f = select i1 %i.e, float 1.000000e+00, float %i.d
  %i.g = select i1 %or.cond.i, float 0.000000e+00, float %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = uitofp i32 %i.i to float
  %i.k = fmul float %i.g, %i.j                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !25 ; 3 uses
  %3 = fcmp ult <2 x float> %i.n, splat (float f0x3089705F)
  %i.o = fcmp ogt <2 x float> %i.n, splat (float 1.000000e+00)
  %i.p = select <2 x i1> %i.o, <2 x float> splat (float 1.000000e+00), <2 x float> %i.n
  %i.q = select <2 x i1> %3, <2 x float> zeroinitializer, <2 x float> %i.p ; 2 uses
  %i.r = tail call float @llvm.floor.f32(float %i.k)
  %i.s = fptosi float %i.r to i32                 ; 2 uses
  %i.t = sitofp i32 %i.s to float
  %i.u = fsub float %i.k, %i.t                    ; 2 uses
  %i.v = load <2 x i32>, ptr %i.m, align 4, !tbaa !21
  %i.w = uitofp <2 x i32> %i.v to <2 x float>
  %i.x = fmul <2 x float> %i.q, %i.w              ; 3 uses
  %i.y = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.x)
  %i.z = fptosi <2 x float> %i.y to <2 x i32>     ; 3 uses
  %i.aa = sitofp <2 x i32> %i.z to <2 x float>    ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.x, %i.aa ; 2 uses
  %foldExtExtBinop164 = fsub <2 x float> %i.x, %i.aa ; 2 uses
  %i.ab = extractelement <2 x float> %foldExtExtBinop164, i64 1
  %i.ac = icmp sgt i32 %i.c, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.z, i64 1
  %i.ai = mul i32 %i.ag, %i.ah                    ; 5 uses
  %i.aj = fcmp ult <2 x float> %i.q, splat (float 1.000000e+00) ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 1
  %i.al = select i1 %i.ak, i32 %i.ag, i32 0
  %i.am = add i32 %i.ai, %i.al                    ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %i.ap = extractelement <2 x i32> %i.z, i64 0
  %i.aq = mul i32 %i.ao, %i.ap                    ; 3 uses
  %i.ar = extractelement <2 x i1> %i.aj, i64 0
  %i.as = select i1 %i.ar, i32 %i.ao, i32 0
  %i.at = add i32 %i.aq, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21 ; 2 uses
  %i.aw = mul i32 %i.av, %i.s                     ; 3 uses
  %i.ax = fcmp ult float %i.g, 1.000000e+00
  %spec.select = select i1 %i.ax, i32 %i.av, i32 0
  %i.ay = add i32 %i.aw, %spec.select             ; 2 uses
  %i.az = add nsw i32 %i.aq, %i.aw                ; 2 uses
  %i.ba = add nsw i32 %i.ai, %i.az
  %i.bb = add nsw i32 %i.am, %i.az
  %i.bc = add nsw i32 %i.at, %i.aw                ; 2 uses
  %i.bd = add nsw i32 %i.bc, %i.ai
  %i.be = add nsw i32 %i.am, %i.bc
  %i.bf = add nsw i32 %i.aq, %i.ay                ; 2 uses
  %i.bg = add nsw i32 %i.ai, %i.bf
  %i.bh = add nsw i32 %i.am, %i.bf
  %i.bi = add nsw i32 %i.at, %i.ay                ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.ai
  %i.bk = add nsw i32 %i.am, %i.bi
  %i.bl = sext i32 %i.ba to i64                   ; 2 uses
  %i.bm = sext i32 %i.bb to i64                   ; 2 uses
  %i.bn = sext i32 %i.bd to i64                   ; 2 uses
  %i.bo = sext i32 %i.be to i64                   ; 2 uses
  %i.bp = sext i32 %i.bg to i64                   ; 2 uses
  %i.bq = sext i32 %i.bh to i64                   ; 2 uses
  %i.br = sext i32 %i.bj to i64                   ; 2 uses
  %i.bs = sext i32 %i.bk to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ae, i64 %i.bl ; 2 uses
  %invariant.gep112 = getelementptr [4 x i8], ptr %i.ae, i64 %i.bm ; 2 uses
  %invariant.gep114 = getelementptr [4 x i8], ptr %i.ae, i64 %i.bn ; 2 uses
  %invariant.gep116 = getelementptr [4 x i8], ptr %i.ae, i64 %i.bo ; 2 uses
  %invariant.gep118 = getelementptr [4 x i8], ptr %i.ae, i64 %i.bp ; 2 uses
  %invariant.gep120 = getelementptr [4 x i8], ptr %i.ae, i64 %i.bq ; 2 uses
  %invariant.gep122 = getelementptr [4 x i8], ptr %i.ae, i64 %i.br ; 2 uses
  %invariant.gep124 = getelementptr [4 x i8], ptr %i.ae, i64 %i.bs ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bt = ptrtoaddr ptr %i.ae to i64
  %i.bu = shl nsw i64 %i.bs, 2
  %i.bv = sub i64 %i.a, %i.bt                     ; 8 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %diff.check = icmp ugt i64 %i.bw, -16
  %i.bx = shl nsw i64 %i.br, 2
  %i.by = sub i64 %i.bx, %i.bv
  %diff.check139 = icmp ugt i64 %i.by, -16
  %conflict.rdx = or i1 %diff.check, %diff.check139
  %i.bz = shl nsw i64 %i.bq, 2
  %i.ca = sub i64 %i.bz, %i.bv
  %diff.check140 = icmp ugt i64 %i.ca, -16
  %conflict.rdx141 = or i1 %conflict.rdx, %diff.check140
  %i.cb = shl nsw i64 %i.bp, 2
  %i.cc = sub i64 %i.cb, %i.bv
  %diff.check142 = icmp ugt i64 %i.cc, -16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  %i.cd = shl nsw i64 %i.bo, 2
  %i.ce = sub i64 %i.cd, %i.bv
  %diff.check144 = icmp ugt i64 %i.ce, -16
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144
  %i.cf = shl nsw i64 %i.bn, 2
  %i.cg = sub i64 %i.cf, %i.bv
  %diff.check146 = icmp ugt i64 %i.cg, -16
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  %i.ch = shl nsw i64 %i.bm, 2
  %i.ci = sub i64 %i.ch, %i.bv
  %diff.check148 = icmp ugt i64 %i.ci, -16
  %conflict.rdx149 = or i1 %conflict.rdx147, %diff.check148
  %i.cj = shl nsw i64 %i.bl, 2
  %i.ck = sub i64 %i.cj, %i.bv
  %diff.check150 = icmp ugt i64 %i.ck, -16
  %conflict.rdx151 = or i1 %conflict.rdx149, %diff.check150
  br i1 %conflict.rdx151, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat153 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat155 = shufflevector <2 x float> %foldExtExtBinop164, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cl = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.cl, align 4, !tbaa !25 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %invariant.gep112, i64 %index
  %wide.load156 = load <4 x float>, ptr %i.cm, align 4, !tbaa !25 ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %invariant.gep114, i64 %index
  %wide.load157 = load <4 x float>, ptr %i.cn, align 4, !tbaa !25 ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %invariant.gep116, i64 %index
  %wide.load158 = load <4 x float>, ptr %i.co, align 4, !tbaa !25 ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %invariant.gep118, i64 %index
  %wide.load159 = load <4 x float>, ptr %i.cp, align 4, !tbaa !25
  %i.cq = getelementptr [4 x i8], ptr %invariant.gep120, i64 %index
  %wide.load160 = load <4 x float>, ptr %i.cq, align 4, !tbaa !25
  %i.cr = getelementptr [4 x i8], ptr %invariant.gep122, i64 %index
  %wide.load161 = load <4 x float>, ptr %i.cr, align 4, !tbaa !25
  %i.cs = getelementptr [4 x i8], ptr %invariant.gep124, i64 %index
  %wide.load162 = load <4 x float>, ptr %i.cs, align 4, !tbaa !25
  %i.ct = fsub <4 x float> %wide.load159, %wide.load
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %broadcast.splat, <4 x float> %wide.load) ; 2 uses
  %i.cv = fsub <4 x float> %wide.load160, %wide.load156
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %broadcast.splat, <4 x float> %wide.load156) ; 2 uses
  %i.cx = fsub <4 x float> %wide.load161, %wide.load157
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %broadcast.splat, <4 x float> %wide.load157)
  %i.cz = fsub <4 x float> %wide.load162, %wide.load158
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %broadcast.splat, <4 x float> %wide.load158)
  %i.db = fsub <4 x float> %i.cy, %i.cu
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %broadcast.splat153, <4 x float> %i.cu) ; 2 uses
  %i.dd = fsub <4 x float> %i.da, %i.cw
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %broadcast.splat153, <4 x float> %i.cw)
  %i.df = fsub <4 x float> %i.de, %i.dc
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %broadcast.splat155, <4 x float> %i.dc)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.dg, ptr %i.dh, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dj = insertelement <4 x float> poison, float %i.u, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dm = load float, ptr %gep, align 4, !tbaa !25
  %gep113 = getelementptr [4 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.dn = load float, ptr %gep113, align 4, !tbaa !25
  %gep115 = getelementptr [4 x i8], ptr %invariant.gep114, i64 %indvars.iv
  %i.do = load float, ptr %gep115, align 4, !tbaa !25
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.dp = load float, ptr %gep117, align 4, !tbaa !25
  %gep119 = getelementptr [4 x i8], ptr %invariant.gep118, i64 %indvars.iv
  %i.dq = load float, ptr %gep119, align 4, !tbaa !25
  %gep121 = getelementptr [4 x i8], ptr %invariant.gep120, i64 %indvars.iv
  %i.dr = load float, ptr %gep121, align 4, !tbaa !25
  %gep123 = getelementptr [4 x i8], ptr %invariant.gep122, i64 %indvars.iv
  %i.ds = load float, ptr %gep123, align 4, !tbaa !25
  %gep125 = getelementptr [4 x i8], ptr %invariant.gep124, i64 %indvars.iv
  %i.dt = load float, ptr %gep125, align 4, !tbaa !25
  %i.du = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %i.dr, i64 1
  %i.dw = insertelement <4 x float> %i.dv, float %i.ds, i64 2
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 3
  %i.dy = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %i.dn, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.do, i64 2
  %i.eb = insertelement <4 x float> %i.ea, float %i.dp, i64 3 ; 2 uses
  %i.ec = fsub <4 x float> %i.dx, %i.eb
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.dk, <4 x float> %i.eb) ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ef = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.eg = fsub <2 x float> %i.ee, %i.ef
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.dl, <2 x float> %i.ef) ; 3 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %shift = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop166 = fsub <2 x float> %shift, %i.eh
end_hunk_1
begin_hunk_2_@TrilinearInterp16:bb.a
  %i.cm = sub i64 %i.cl, %i.bz
  %diff.check140 = icmp ugt i64 %i.cm, -16
  %conflict.rdx141 = or i1 %conflict.rdx139, %diff.check140
  %i.cn = shl nsw i64 %i.bp, 1
  %i.co = sub i64 %i.cn, %i.bz
  %diff.check142 = icmp ugt i64 %i.co, -16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  br i1 %conflict.rdx143, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert144 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat145 = shufflevector <8 x i32> %broadcast.splatinsert144, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert146 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat147 = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cp = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cp, align 2, !tbaa !27 ; 2 uses
  %i.cq = zext <8 x i16> %wide.load to <8 x i32>
  %i.cr = getelementptr [2 x i8], ptr %invariant.gep104, i64 %index
  %wide.load148 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !27 ; 2 uses
  %i.cs = zext <8 x i16> %wide.load148 to <8 x i32>
  %i.ct = getelementptr [2 x i8], ptr %invariant.gep106, i64 %index
  %wide.load149 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !27 ; 2 uses
  %i.cu = zext <8 x i16> %wide.load149 to <8 x i32>
  %i.cv = getelementptr [2 x i8], ptr %invariant.gep108, i64 %index
  %wide.load150 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !27 ; 2 uses
  %i.cw = zext <8 x i16> %wide.load150 to <8 x i32>
  %i.cx = getelementptr [2 x i8], ptr %invariant.gep110, i64 %index
  %wide.load151 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !27
  %i.cy = zext <8 x i16> %wide.load151 to <8 x i32>
  %i.cz = getelementptr [2 x i8], ptr %invariant.gep112, i64 %index
  %wide.load152 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !27
  %i.da = zext <8 x i16> %wide.load152 to <8 x i32>
  %i.db = getelementptr [2 x i8], ptr %invariant.gep114, i64 %index
  %wide.load153 = load <8 x i16>, ptr %i.db, align 2, !tbaa !27
  %i.dc = zext <8 x i16> %wide.load153 to <8 x i32>
  %i.dd = getelementptr [2 x i8], ptr %invariant.gep116, i64 %index
  %wide.load154 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !27
  %i.de = zext <8 x i16> %wide.load154 to <8 x i32>
  %i.df = sub nsw <8 x i32> %i.cy, %i.cq
  %i.dg = mul nsw <8 x i32> %i.df, %broadcast.splat
  %i.dh = add nsw <8 x i32> %i.dg, splat (i32 32768)
  %i.di = lshr <8 x i32> %i.dh, splat (i32 16)
  %i.dj = trunc nuw <8 x i32> %i.di to <8 x i16>
  %i.dk = add <8 x i16> %wide.load, %i.dj         ; 2 uses
  %i.dl = zext <8 x i16> %i.dk to <8 x i32>
  %i.dm = sub nsw <8 x i32> %i.da, %i.cs
  %i.dn = mul nsw <8 x i32> %i.dm, %broadcast.splat
  %i.do = add nsw <8 x i32> %i.dn, splat (i32 32768)
  %i.dp = lshr <8 x i32> %i.do, splat (i32 16)
  %i.dq = trunc nuw <8 x i32> %i.dp to <8 x i16>
  %i.dr = add <8 x i16> %wide.load148, %i.dq      ; 2 uses
  %i.ds = zext <8 x i16> %i.dr to <8 x i32>
  %i.dt = sub nsw <8 x i32> %i.dc, %i.cu
  %i.du = mul nsw <8 x i32> %i.dt, %broadcast.splat
  %i.dv = add nsw <8 x i32> %i.du, splat (i32 32768)
  %i.dw = lshr <8 x i32> %i.dv, splat (i32 16)
  %i.dx = trunc nuw <8 x i32> %i.dw to <8 x i16>
  %i.dy = add <8 x i16> %wide.load149, %i.dx
  %i.dz = zext <8 x i16> %i.dy to <8 x i32>
  %i.ea = sub nsw <8 x i32> %i.de, %i.cw
  %i.eb = mul nsw <8 x i32> %i.ea, %broadcast.splat
  %i.ec = add nsw <8 x i32> %i.eb, splat (i32 32768)
  %i.ed = lshr <8 x i32> %i.ec, splat (i32 16)
  %i.ee = trunc nuw <8 x i32> %i.ed to <8 x i16>
  %i.ef = add <8 x i16> %wide.load150, %i.ee
  %i.eg = zext <8 x i16> %i.ef to <8 x i32>
  %i.eh = sub nsw <8 x i32> %i.dz, %i.dl
  %i.ei = mul nsw <8 x i32> %i.eh, %broadcast.splat145
  %i.ej = add nsw <8 x i32> %i.ei, splat (i32 32768)
  %i.ek = lshr <8 x i32> %i.ej, splat (i32 16)
  %i.el = trunc nuw <8 x i32> %i.ek to <8 x i16>
  %i.em = add <8 x i16> %i.dk, %i.el              ; 2 uses
  %i.en = zext <8 x i16> %i.em to <8 x i32>
  %i.eo = sub nsw <8 x i32> %i.eg, %i.ds
  %i.ep = mul nsw <8 x i32> %i.eo, %broadcast.splat145
  %i.eq = add nsw <8 x i32> %i.ep, splat (i32 32768)
  %i.er = lshr <8 x i32> %i.eq, splat (i32 16)
  %i.es = trunc nuw <8 x i32> %i.er to <8 x i16>
  %i.et = add <8 x i16> %i.dr, %i.es
  %i.eu = zext <8 x i16> %i.et to <8 x i32>
  %i.ev = sub nsw <8 x i32> %i.eu, %i.en
  %i.ew = mul nsw <8 x i32> %i.ev, %broadcast.splat147
  %i.ex = add nsw <8 x i32> %i.ew, splat (i32 32768)
  %i.ey = lshr <8 x i32> %i.ex, splat (i32 16)
  %i.ez = trunc nuw <8 x i32> %i.ey to <8 x i16>
  %i.fa = add <8 x i16> %i.em, %i.ez
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.fa, ptr %i.fb, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fd = load i16, ptr %gep, align 2, !tbaa !27  ; 2 uses
  %i.fe = zext i16 %i.fd to i32
  %gep105 = getelementptr [2 x i8], ptr %invariant.gep104, i64 %indvars.iv
  %i.ff = load i16, ptr %gep105, align 2, !tbaa !27 ; 2 uses
  %i.fg = zext i16 %i.ff to i32
  %gep107 = getelementptr [2 x i8], ptr %invariant.gep106, i64 %indvars.iv
  %i.fh = load i16, ptr %gep107, align 2, !tbaa !27 ; 2 uses
  %i.fi = zext i16 %i.fh to i32
  %gep109 = getelementptr [2 x i8], ptr %invariant.gep108, i64 %indvars.iv
  %i.fj = load i16, ptr %gep109, align 2, !tbaa !27 ; 2 uses
  %i.fk = zext i16 %i.fj to i32
  %gep111 = getelementptr [2 x i8], ptr %invariant.gep110, i64 %indvars.iv
  %i.fl = load i16, ptr %gep111, align 2, !tbaa !27
  %i.fm = zext i16 %i.fl to i32
  %gep113 = getelementptr [2 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.fn = load i16, ptr %gep113, align 2, !tbaa !27
  %i.fo = zext i16 %i.fn to i32
  %gep115 = getelementptr [2 x i8], ptr %invariant.gep114, i64 %indvars.iv
  %i.fp = load i16, ptr %gep115, align 2, !tbaa !27
  %i.fq = zext i16 %i.fp to i32
  %gep117 = getelementptr [2 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.fr = load i16, ptr %gep117, align 2, !tbaa !27
  %i.fs = zext i16 %i.fr to i32
  %i.ft = sub nsw i32 %i.fm, %i.fe
  %i.fu = mul nsw i32 %i.ft, %i.l
  %i.fv = add nsw i32 %i.fu, 32768
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = trunc nuw i32 %i.fw to i16
  %i.fy = add i16 %i.fd, %i.fx                    ; 2 uses
  %i.fz = zext i16 %i.fy to i32
  %i.ga = sub nsw i32 %i.fo, %i.fg
  %i.gb = mul nsw i32 %i.ga, %i.l
  %i.gc = add nsw i32 %i.gb, 32768
  %i.gd = lshr i32 %i.gc, 16
  %i.ge = trunc nuw i32 %i.gd to i16
  %i.gf = add i16 %i.ff, %i.ge                    ; 2 uses
  %i.gg = zext i16 %i.gf to i32
  %i.gh = sub nsw i32 %i.fq, %i.fi
  %i.gi = mul nsw i32 %i.gh, %i.l
  %i.gj = add nsw i32 %i.gi, 32768
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = add i16 %i.fh, %i.gl
  %i.gn = zext i16 %i.gm to i32
  %i.go = sub nsw i32 %i.fs, %i.fk
  %i.gp = mul nsw i32 %i.go, %i.l
  %i.gq = add nsw i32 %i.gp, 32768
  %i.gr = lshr i32 %i.gq, 16
  %i.gs = trunc nuw i32 %i.gr to i16
  %i.gt = add i16 %i.fj, %i.gs
  %i.gu = zext i16 %i.gt to i32
  %i.gv = sub nsw i32 %i.gn, %i.fz
  %i.gw = mul nsw i32 %i.gv, %i.v
  %i.gx = add nsw i32 %i.gw, 32768
  %i.gy = lshr i32 %i.gx, 16
  %i.gz = trunc nuw i32 %i.gy to i16
  %i.ha = add i16 %i.fy, %i.gz                    ; 2 uses
  %i.hb = zext i16 %i.ha to i32
  %i.hc = sub nsw i32 %i.gu, %i.gg
  %i.hd = mul nsw i32 %i.hc, %i.v
  %i.he = add nsw i32 %i.hd, 32768
  %i.hf = lshr i32 %i.he, 16
  %i.hg = trunc nuw i32 %i.hf to i16
  %i.hh = add i16 %i.gf, %i.hg
  %i.hi = zext i16 %i.hh to i32
  %i.hj = sub nsw i32 %i.hi, %i.hb
  %i.hk = mul nsw i32 %i.hj, %i.af
  %i.hl = add nsw i32 %i.hk, 32768
  %i.hm = lshr i32 %i.hl, 16
  %i.hn = trunc nuw i32 %i.hm to i16
  %i.ho = add i16 %i.ha, %i.hn
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @TetrahedralInterpFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 26 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17   ; 15 uses
  %i.g = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.g, f0x3089705F
  %i.h = fcmp ogt float %i.g, 1.000000e+00
  %i.i = select i1 %i.h, float 1.000000e+00, float %i.g
  %i.j = select i1 %or.cond.i, float 0.000000e+00, float %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !25 ; 3 uses
  %3 = fcmp ult <2 x float> %i.m, splat (float f0x3089705F)
  %i.n = fcmp ogt <2 x float> %i.m, splat (float 1.000000e+00)
  %i.o = select <2 x i1> %i.n, <2 x float> splat (float 1.000000e+00), <2 x float> %i.m
  %i.p = select <2 x i1> %3, <2 x float> zeroinitializer, <2 x float> %i.o ; 2 uses
  %i.q = load <3 x i32>, ptr %i.k, align 8, !tbaa !21
  %i.r = shufflevector <3 x i32> %i.q, <3 x i32> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.s = uitofp <4 x i32> %i.r to <4 x float>
  %i.t = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.j, i64 3
  %i.v = fmul <4 x float> %i.u, %i.s              ; 4 uses
  %i.w = extractelement <4 x float> %i.v, i64 3
  %i.x = tail call float @llvm.floor.f32(float %i.w)
  %i.y = extractelement <4 x float> %i.v, i64 0
  %i.z = tail call float @llvm.floor.f32(float %i.y)
  %i.aa = extractelement <4 x float> %i.v, i64 1
  %i.ab = tail call float @llvm.floor.f32(float %i.aa)
  %i.ac = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.ab, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.x, i64 3
  %i.af = fptosi <4 x float> %i.ae to <4 x i32>   ; 4 uses
  %i.ag = sitofp <4 x i32> %i.af to <4 x float>
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ai = fsub <4 x float> %i.v, %i.ah            ; 28 uses
  %i.aj = extractelement <4 x float> %i.ai, i64 3 ; 10 uses
  %i.ak = extractelement <4 x float> %i.ai, i64 1 ; 11 uses
  %i.al = extractelement <4 x float> %i.ai, i64 0 ; 10 uses
  %i.am = icmp sgt i32 %i.f, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21 ; 2 uses
  %i.ap = extractelement <4 x i32> %i.af, i64 1
  %i.aq = mul i32 %i.ao, %i.ap                    ; 5 uses
  %i.ar = fcmp ult <2 x float> %i.p, splat (float 1.000000e+00) ; 2 uses
  %i.as = extractelement <2 x i1> %i.ar, i64 1
  %i.at = select i1 %i.as, i32 %i.ao, i32 0
  %i.au = add i32 %i.aq, %i.at                    ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.ax = extractelement <4 x i32> %i.af, i64 0
  %i.ay = mul i32 %i.aw, %i.ax                    ; 4 uses
  %i.az = extractelement <2 x i1> %i.ar, i64 0
  %i.ba = select i1 %i.az, i32 %i.aw, i32 0
  %i.bb = add i32 %i.ay, %i.ba                    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21 ; 2 uses
  %i.be = extractelement <4 x i32> %i.af, i64 3
  %i.bf = mul i32 %i.bd, %i.be                    ; 4 uses
  %i.bg = fcmp ult float %i.j, 1.000000e+00
  %spec.select = select i1 %i.bg, i32 %i.bd, i32 0
  %i.bh = add i32 %i.bf, %spec.select             ; 3 uses
  %i.bi = add i32 %i.ay, %i.bf                    ; 2 uses
  %i.bj = add i32 %i.aq, %i.bi                    ; 2 uses
  %i.bk = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.bl = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bm = fcmp ult <4 x float> %i.bk, %i.bl       ; 3 uses
  %i.bn = shufflevector <4 x i1> %i.bm, <4 x i1> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.bo = fcmp ult float %i.al, %i.ak
  %i.bp = extractelement <4 x i1> %i.bm, i64 3
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bo
  %i.bq = add nsw i32 %i.ay, %i.bh                ; 2 uses
  %i.br = add nsw i32 %i.bq, %i.aq                ; 2 uses
  %i.bs = add nsw i32 %i.bb, %i.bh                ; 2 uses
  %i.bt = add nsw i32 %i.bs, %i.aq                ; 2 uses
  %i.bu = add nsw i32 %i.au, %i.bs                ; 6 uses
  %i.bv = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.bw = fcmp ult <4 x float> %i.ai, %i.bv
  %i.bx = add nsw i32 %i.au, %i.bq
  %i.by = add i32 %i.au, %i.bh
  %i.bz = add i32 %i.by, %i.ay
  %i.ca = add nsw i32 %i.au, %i.bi                ; 2 uses
  %i.cb = add nsw i32 %i.bb, %i.bf                ; 2 uses
  %i.cc = add nsw i32 %i.cb, %i.aq                ; 2 uses
  %i.cd = add nsw i32 %i.au, %i.cb
  %i.ce = or <4 x i1> %i.bw, %i.bn                ; 4 uses
  %i.cf = add i32 %i.au, %i.bb
  %i.cg = add i32 %i.cf, %i.bf
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ch = sext i32 %i.bj to i64                   ; 2 uses
  %i.ci = sext i32 %i.br to i64                   ; 2 uses
  %i.cj = sext i32 %i.bt to i64                   ; 2 uses
  %i.ck = sext i32 %i.bu to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.c, i64 %i.ch ; 2 uses
  %invariant.gep304 = getelementptr [4 x i8], ptr %i.c, i64 %i.ci ; 2 uses
  %invariant.gep306 = getelementptr [4 x i8], ptr %i.c, i64 %i.cj ; 2 uses
  %invariant.gep308 = getelementptr [4 x i8], ptr %i.c, i64 %i.ck ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 12
  br i1 %min.iters.check, label %.lr.ph.split.preheader588, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = sub i64 %i.a, %i.d                      ; 4 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %diff.check = icmp ugt i64 %i.cn, -16
  %i.co = shl nsw i64 %i.cj, 2
  %i.cp = sub i64 %i.co, %i.cm
  %diff.check363 = icmp ugt i64 %i.cp, -16
  %conflict.rdx = or i1 %diff.check, %diff.check363
  %i.cq = shl nsw i64 %i.ci, 2
  %i.cr = sub i64 %i.cq, %i.cm
  %diff.check364 = icmp ugt i64 %i.cr, -16
  %conflict.rdx365 = or i1 %conflict.rdx, %diff.check364
  %i.cs = shl nsw i64 %i.ch, 2
  %i.ct = sub i64 %i.cs, %i.cm
  %diff.check366 = icmp ugt i64 %i.ct, -16
  %conflict.rdx367 = or i1 %conflict.rdx365, %diff.check366
  br i1 %conflict.rdx367, label %.lr.ph.split.preheader588, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat369 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat371 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cu = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.cu, align 4, !tbaa !25 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %invariant.gep304, i64 %index
  %wide.load372 = load <4 x float>, ptr %i.cv, align 4, !tbaa !25 ; 2 uses
  %i.cw = fsub <4 x float> %wide.load372, %wide.load
  %i.cx = getelementptr [4 x i8], ptr %invariant.gep306, i64 %index
  %wide.load373 = load <4 x float>, ptr %i.cx, align 4, !tbaa !25 ; 2 uses
  %i.cy = fsub <4 x float> %wide.load373, %wide.load372
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep308, i64 %index
  %wide.load374 = load <4 x float>, ptr %i.cz, align 4, !tbaa !25
  %i.da = fsub <4 x float> %wide.load374, %wide.load373
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %broadcast.splat369, <4 x float> %i.db)
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %broadcast.splat371, <4 x float> %i.dc)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.dd, ptr %i.de, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader588

.lr.ph.split.preheader588:                        ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.dg = fcmp ult float %i.aj, %i.ak
  %i.dh = extractelement <4 x i1> %i.bm, i64 1
  %or.cond234 = select i1 %i.dg, i1 true, i1 %i.dh
  %i.di = sext i32 %i.bj to i64                   ; 12 uses
  br i1 %or.cond234, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.dj = sext i32 %i.br to i64                   ; 2 uses
  %i.dk = sext i32 %i.bu to i64                   ; 2 uses
  %i.dl = sext i32 %i.bx to i64                   ; 2 uses
  %wide.trip.count260 = zext nneg i32 %i.f to i64 ; 3 uses
  %invariant.gep310 = getelementptr [4 x i8], ptr %i.c, i64 %i.di ; 2 uses
  %invariant.gep312 = getelementptr [4 x i8], ptr %i.c, i64 %i.dj ; 2 uses
  %invariant.gep314 = getelementptr [4 x i8], ptr %i.c, i64 %i.dk ; 2 uses
  %invariant.gep316 = getelementptr [4 x i8], ptr %i.c, i64 %i.dl ; 2 uses
  %min.iters.check384 = icmp ult i32 %i.f, 12
  br i1 %min.iters.check384, label %.lr.ph.split.us.split.preheader586, label %vector.memcheck385

vector.memcheck385:                               ; preds = %.lr.ph.split.us.split.preheader
  %i.dm = shl nsw i64 %i.dl, 2
  %i.dn = sub i64 %i.a, %i.d                      ; 4 uses
  %i.do = sub i64 %i.dm, %i.dn
  %diff.check386 = icmp ugt i64 %i.do, -16
  %i.dp = shl nsw i64 %i.dk, 2
  %i.dq = sub i64 %i.dp, %i.dn
  %diff.check387 = icmp ugt i64 %i.dq, -16
  %conflict.rdx388 = or i1 %diff.check386, %diff.check387
  %i.dr = shl nsw i64 %i.dj, 2
  %i.ds = sub i64 %i.dr, %i.dn
  %diff.check389 = icmp ugt i64 %i.ds, -16
  %conflict.rdx390 = or i1 %conflict.rdx388, %diff.check389
  %i.dt = shl nsw i64 %i.di, 2
  %i.du = sub i64 %i.dt, %i.dn
  %diff.check391 = icmp ugt i64 %i.du, -16
  %conflict.rdx392 = or i1 %conflict.rdx390, %diff.check391
  br i1 %conflict.rdx392, label %.lr.ph.split.us.split.preheader586, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck385
  %n.vec394 = and i64 %wide.trip.count260, 2147483644 ; 3 uses
  %broadcast.splat396 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat398 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat400 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph393
  %index402 = phi i64 [ 0, %vector.ph393 ], [ %index.next407, %vector.body401 ] ; 6 uses
  %i.dv = getelementptr [4 x i8], ptr %invariant.gep310, i64 %index402
  %wide.load403 = load <4 x float>, ptr %i.dv, align 4, !tbaa !25 ; 2 uses
  %i.dw = getelementptr [4 x i8], ptr %invariant.gep312, i64 %index402
  %wide.load404 = load <4 x float>, ptr %i.dw, align 4, !tbaa !25 ; 2 uses
  %i.dx = fsub <4 x float> %wide.load404, %wide.load403
  %i.dy = getelementptr [4 x i8], ptr %invariant.gep314, i64 %index402
  %wide.load405 = load <4 x float>, ptr %i.dy, align 4, !tbaa !25
  %i.dz = getelementptr [4 x i8], ptr %invariant.gep316, i64 %index402
end_hunk_2
begin_hunk_3_@TetrahedralInterp16:bb.a
  %i.oq = add <8 x i32> %i.op, %i.om              ; 2 uses
  %i.or = ashr <8 x i32> %i.oq, splat (i32 16)
  %i.os = add nsw <8 x i32> %i.or, %i.oq
  %i.ot = lshr <8 x i32> %i.os, splat (i32 16)
  %i.ou = trunc nuw <8 x i32> %i.ot to <8 x i16>
  %i.ov = add <8 x i16> %wide.load472, %i.ou
  store <8 x i16> %i.ov, ptr %next.gep468, align 2, !tbaa !27
  %index.next473 = add nuw i64 %index466, 8       ; 2 uses
  %i.ow = icmp eq i64 %index.next473, %n.vec458
  br i1 %i.ow, label %middle.block474, label %vector.body465, !llvm.loop !84

middle.block474:                                  ; preds = %vector.body465
  %cmp.n475 = icmp eq i64 %n.vec458, %i.nf
  br i1 %cmp.n475, label %.loopexit, label %scalar.ph447.preheader

scalar.ph447.preheader:                           ; preds = %vector.memcheck449, %.lr.ph271, %middle.block474
  %.4270.ph = phi i32 [ %i.f, %vector.memcheck449 ], [ %i.f, %.lr.ph271 ], [ %i.nw, %middle.block474 ]
  %.4217269.ph = phi ptr [ %i.ba, %vector.memcheck449 ], [ %i.ba, %.lr.ph271 ], [ %i.ny, %middle.block474 ]
  %.4223268.ph = phi ptr [ %1, %vector.memcheck449 ], [ %1, %.lr.ph271 ], [ %i.nz, %middle.block474 ]
  br label %scalar.ph447

scalar.ph447:                                     ; preds = %scalar.ph447.preheader, %scalar.ph447
  %.4270 = phi i32 [ %i.py, %scalar.ph447 ], [ %.4270.ph, %scalar.ph447.preheader ]
  %.4217269 = phi ptr [ %i.pg, %scalar.ph447 ], [ %.4217269.ph, %scalar.ph447.preheader ] ; 5 uses
  %.4223268 = phi ptr [ %i.px, %scalar.ph447 ], [ %.4223268.ph, %scalar.ph447.preheader ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %.4217269, i64 %i.nc
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !27
  %i.oz = zext i16 %i.oy to i32
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %.4217269, i64 %i.nd
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !27
  %i.pc = zext i16 %i.pb to i32                   ; 2 uses
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %.4217269, i64 %i.ne
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !27
  %i.pf = zext i16 %i.pe to i32                   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.4217269, i64 2
  %i.ph = load i16, ptr %.4217269, align 2, !tbaa !27 ; 2 uses
  %i.pi = zext i16 %i.ph to i32
  %i.pj = sub nsw i32 %i.oz, %i.pf
  %i.pk = sub nsw i32 %i.pf, %i.pc
  %i.pl = sub nsw i32 %i.pc, %i.pi
  %i.pm = mul nsw i32 %i.pj, %i.ag
  %i.pn = mul nsw i32 %i.pl, %i.bb
  %i.po = mul nsw i32 %i.pk, %i.ka
  %i.pp = add i32 %i.pm, 32769
  %i.pq = add i32 %i.pp, %i.po
  %i.pr = add i32 %i.pq, %i.pn                    ; 2 uses
  %i.ps = ashr i32 %i.pr, 16
  %i.pt = add nsw i32 %i.ps, %i.pr
  %i.pu = lshr i32 %i.pt, 16
  %i.pv = trunc nuw i32 %i.pu to i16
  %i.pw = add i16 %i.ph, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %.4223268, i64 2
  store i16 %i.pw, ptr %.4223268, align 2, !tbaa !27
  %i.py = add i32 %.4270, -1                      ; 2 uses
  %.not236 = icmp eq i32 %i.py, 0
  br i1 %.not236, label %.loopexit, label %scalar.ph447, !llvm.loop !85

bb.k:                                             ; preds = %bb.i
  br i1 %.not235272, label %.loopexit, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.k
  %i.pz = add i32 %i.aw, %i.ar                    ; 2 uses
  %i.qa = add i32 %i.pz, %spec.select
  %i.qb = zext i32 %i.qa to i64                   ; 3 uses
  %i.qc = zext i32 %i.pz to i64                   ; 3 uses
  %i.qd = zext i32 %i.aw to i64                   ; 3 uses
  %i.qe = zext i32 %i.f to i64                    ; 2 uses
  %min.iters.check488 = icmp ult i32 %i.f, 16
  br i1 %min.iters.check488, label %scalar.ph487.preheader, label %vector.memcheck489

vector.memcheck489:                               ; preds = %.lr.ph276
  %i.qf = shl nuw nsw i64 %i.az, 1                ; 4 uses
  %i.qg = add i64 %i.qf, %i.d
  %i.qh = sub i64 %i.qg, %i.a
  %diff.check490 = icmp ugt i64 %i.qh, -16
  %i.qi = shl nuw nsw i64 %i.qd, 1
  %i.qj = add i64 %i.qi, %i.d
  %i.qk = add i64 %i.qj, %i.qf
  %i.ql = sub i64 %i.qk, %i.a
  %diff.check491 = icmp ugt i64 %i.ql, -16
  %conflict.rdx492 = or i1 %diff.check490, %diff.check491
  %i.qm = shl nuw nsw i64 %i.qc, 1
  %i.qn = add i64 %i.qf, %i.d
  %i.qo = add i64 %i.qn, %i.qm
  %i.qp = sub i64 %i.qo, %i.a
  %diff.check493 = icmp ugt i64 %i.qp, -16
  %conflict.rdx494 = or i1 %conflict.rdx492, %diff.check493
  %i.qq = shl nuw nsw i64 %i.qb, 1
  %i.qr = add i64 %i.qq, %i.d
  %i.qs = add i64 %i.qr, %i.qf
  %i.qt = sub i64 %i.qs, %i.a
  %diff.check495 = icmp ugt i64 %i.qt, -16
  %conflict.rdx496 = or i1 %conflict.rdx494, %diff.check495
  br i1 %conflict.rdx496, label %scalar.ph487.preheader, label %vector.ph497

vector.ph497:                                     ; preds = %vector.memcheck489
  %n.vec498 = and i64 %i.qe, 4294967288           ; 4 uses
  %i.qu = trunc nuw i64 %n.vec498 to i32
  %i.qv = sub i32 %i.f, %i.qu
  %i.qw = shl nuw nsw i64 %n.vec498, 1            ; 2 uses
  %i.qx = getelementptr i8, ptr %i.ba, i64 %i.qw
  %i.qy = getelementptr i8, ptr %1, i64 %i.qw
  %broadcast.splat500 = shufflevector <4 x i32> %i.af, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat502 = shufflevector <4 x i32> %i.af, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat504 = shufflevector <4 x i32> %i.af, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph497
  %index506 = phi i64 [ 0, %vector.ph497 ], [ %index.next513, %vector.body505 ] ; 2 uses
  %i.qz = shl i64 %index506, 1                    ; 2 uses
  %next.gep507 = getelementptr i8, ptr %i.ba, i64 %i.qz ; 4 uses
  %next.gep508 = getelementptr i8, ptr %1, i64 %i.qz
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %next.gep507, i64 %i.qb
  %wide.load509 = load <8 x i16>, ptr %i.ra, align 2, !tbaa !27
  %i.rb = zext <8 x i16> %wide.load509 to <8 x i32>
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %next.gep507, i64 %i.qc
  %wide.load510 = load <8 x i16>, ptr %i.rc, align 2, !tbaa !27
  %i.rd = zext <8 x i16> %wide.load510 to <8 x i32> ; 2 uses
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %next.gep507, i64 %i.qd
  %wide.load511 = load <8 x i16>, ptr %i.re, align 2, !tbaa !27
  %i.rf = zext <8 x i16> %wide.load511 to <8 x i32> ; 2 uses
  %wide.load512 = load <8 x i16>, ptr %next.gep507, align 2, !tbaa !27 ; 2 uses
  %i.rg = zext <8 x i16> %wide.load512 to <8 x i32>
  %i.rh = sub nsw <8 x i32> %i.rb, %i.rd
  %i.ri = sub nsw <8 x i32> %i.rd, %i.rf
  %i.rj = sub nsw <8 x i32> %i.rf, %i.rg
  %i.rk = mul nsw <8 x i32> %i.rh, %broadcast.splat500
  %i.rl = mul nsw <8 x i32> %i.ri, %broadcast.splat502
  %i.rm = mul nsw <8 x i32> %i.rj, %broadcast.splat504
  %i.rn = add <8 x i32> %i.rk, splat (i32 32769)
  %i.ro = add <8 x i32> %i.rn, %i.rl
  %i.rp = add <8 x i32> %i.ro, %i.rm              ; 2 uses
  %i.rq = ashr <8 x i32> %i.rp, splat (i32 16)
  %i.rr = add nsw <8 x i32> %i.rq, %i.rp
  %i.rs = lshr <8 x i32> %i.rr, splat (i32 16)
  %i.rt = trunc nuw <8 x i32> %i.rs to <8 x i16>
  %i.ru = add <8 x i16> %wide.load512, %i.rt
  store <8 x i16> %i.ru, ptr %next.gep508, align 2, !tbaa !27
  %index.next513 = add nuw i64 %index506, 8       ; 2 uses
  %i.rv = icmp eq i64 %index.next513, %n.vec498
  br i1 %i.rv, label %middle.block514, label %vector.body505, !llvm.loop !86

middle.block514:                                  ; preds = %vector.body505
  %cmp.n515 = icmp eq i64 %n.vec498, %i.qe
  br i1 %cmp.n515, label %.loopexit, label %scalar.ph487.preheader

scalar.ph487.preheader:                           ; preds = %vector.memcheck489, %.lr.ph276, %middle.block514
  %.5275.ph = phi i32 [ %i.f, %vector.memcheck489 ], [ %i.f, %.lr.ph276 ], [ %i.qv, %middle.block514 ]
  %.5218274.ph = phi ptr [ %i.ba, %vector.memcheck489 ], [ %i.ba, %.lr.ph276 ], [ %i.qx, %middle.block514 ]
  %.5224273.ph = phi ptr [ %1, %vector.memcheck489 ], [ %1, %.lr.ph276 ], [ %i.qy, %middle.block514 ]
  br label %scalar.ph487

scalar.ph487:                                     ; preds = %scalar.ph487.preheader, %scalar.ph487
  %.5275 = phi i32 [ %i.su, %scalar.ph487 ], [ %.5275.ph, %scalar.ph487.preheader ]
  %.5218274 = phi ptr [ %i.sc, %scalar.ph487 ], [ %.5218274.ph, %scalar.ph487.preheader ] ; 5 uses
  %.5224273 = phi ptr [ %i.st, %scalar.ph487 ], [ %.5224273.ph, %scalar.ph487.preheader ] ; 2 uses
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %.5218274, i64 %i.qb
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !27
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %.5218274, i64 %i.qc
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !27
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %.5218274, i64 %i.qd
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !27
  %i.sc = getelementptr inbounds nuw i8, ptr %.5218274, i64 2
  %i.sd = load i16, ptr %.5218274, align 2, !tbaa !27 ; 2 uses
  %i.se = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 -32767>, i16 %i.rx, i64 0
  %i.sf = insertelement <4 x i16> %i.se, i16 %i.rz, i64 1
  %i.sg = insertelement <4 x i16> %i.sf, i16 %i.sb, i64 2 ; 2 uses
  %i.sh = zext <4 x i16> %i.sg to <4 x i32>
  %i.si = shufflevector <4 x i16> %i.sg, <4 x i16> <i16 poison, i16 poison, i16 poison, i16 0>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %i.sj = insertelement <4 x i16> %i.si, i16 %i.sd, i64 2
  %i.sk = zext <4 x i16> %i.sj to <4 x i32>
  %i.sl = sub nsw <4 x i32> %i.sh, %i.sk
  %i.sm = mul nsw <4 x i32> %i.sl, %i.af
  %i.sn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sm) ; 2 uses
  %i.so = ashr i32 %i.sn, 16
  %i.sp = add nsw i32 %i.so, %i.sn
  %i.sq = lshr i32 %i.sp, 16
  %i.sr = trunc nuw i32 %i.sq to i16
  %i.ss = add i16 %i.sd, %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %.5224273, i64 2
  store i16 %i.ss, ptr %.5224273, align 2, !tbaa !27
  %i.su = add i32 %.5275, -1                      ; 2 uses
  %.not235 = icmp eq i32 %i.su, 0
  br i1 %.not235, label %.loopexit, label %scalar.ph487, !llvm.loop !87

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph327, %scalar.ph367, %scalar.ph407, %scalar.ph447, %scalar.ph487, %middle.block, %middle.block354, %middle.block394, %middle.block434, %middle.block474, %middle.block514, %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval4InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.e, f0x3089705F
  %i.f = fcmp ogt float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.e
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = uitofp i32 %i.j to float
  %i.l = fmul float %i.h, %i.k                    ; 2 uses
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.p = ashr i32 %.sroa.0.0.extract.trunc.i, 16  ; 2 uses
  %i.q = sitofp i32 %i.p to float
  %i.r = fsub float %i.l, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.p, %i.t                       ; 2 uses
  %i.v = fcmp ult float %i.h, 1.000000e+00
  %spec.select = select i1 %i.v, i32 %i.t, i32 0
  %i.w = add i32 %i.u, %spec.select
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @TetrahedralInterpFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !19
  call void @TetrahedralInterpFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ag to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 16, !tbaa !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.ai, align 16, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load35 = load <4 x float>, ptr %i.aj, align 16, !tbaa !25
  %wide.load36 = load <4 x float>, ptr %i.ak, align 16, !tbaa !25
  %i.al = fsub <4 x float> %wide.load35, %wide.load
  %i.am = fsub <4 x float> %wide.load36, %wide.load34
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !25
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !25
  %i.aw = fsub float %i.av, %i.at
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.r, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ax, ptr %i.ay, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval4Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 7 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = mul i32 %i.f, %i.d                       ; 2 uses
  %i.h = add nsw i32 %i.g, 32767
  %i.i = sdiv i32 %i.h, 65535
  %i.j = add nsw i32 %i.i, %i.g                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.m = load i16, ptr %i.k, align 2, !tbaa !27
  %i.n = load <3 x i16>, ptr %i.k, align 2, !tbaa !27 ; 3 uses
  %i.o = shufflevector <3 x i16> %i.n, <3 x i16> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.p = zext <4 x i16> %i.o to <4 x i32>
  %i.q = load <3 x i32>, ptr %i.l, align 4, !tbaa !21
  %i.r = shufflevector <3 x i32> %i.q, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.s = mul <4 x i32> %i.r, %i.p                 ; 2 uses
  %i.t = add nsw <4 x i32> %i.s, splat (i32 32767)
  %i.u = sdiv <4 x i32> %i.t, splat (i32 65535)
  %i.v = add nsw <4 x i32> %i.u, %i.s             ; 4 uses
  %i.w = ashr i32 %i.j, 16
  %i.x = extractelement <4 x i32> %i.v, i64 1
  %i.y = ashr i32 %i.x, 16
  %i.z = extractelement <4 x i32> %i.v, i64 3
  %i.aa = ashr i32 %i.z, 16
  %i.ab = extractelement <4 x i32> %i.v, i64 0
  %i.ac = ashr i32 %i.ab, 16
  %i.ad = and i32 %i.j, 65535                     ; 2 uses
  %i.ae = and <4 x i32> %i.v, splat (i32 65535)   ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = mul i32 %i.ah, %i.w                     ; 2 uses
  %i.aj = icmp eq i16 %i.c, -1
  %spec.select = select i1 %i.aj, i32 0, i32 %i.ah
  %i.ak = add i32 %i.ai, %spec.select
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %i.an = mul i32 %i.am, %i.y                     ; 7 uses
  %i.ao = icmp eq i16 %i.m, -1
  %i.ap = select i1 %i.ao, i32 0, i32 %i.am
  %i.aq = add i32 %i.an, %i.ap                    ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.at = mul i32 %i.as, %i.aa                    ; 7 uses
  %i.au = extractelement <3 x i16> %i.n, i64 1
  %i.av = icmp eq i16 %i.au, -1
  %i.aw = select i1 %i.av, i32 0, i32 %i.as
  %i.ax = add i32 %i.at, %i.aw                    ; 6 uses
  %i.ay = load i32, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.az = mul i32 %i.ac, %i.ay                    ; 9 uses
  %i.ba = extractelement <3 x i16> %i.n, i64 2
  %i.bb = icmp eq i16 %i.ba, -1
  %i.bc = select i1 %i.bb, i32 0, i32 %i.ay
  %i.bd = add i32 %i.az, %i.bc                    ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = sext i32 %i.ai to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bg ; 24 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !17 ; 6 uses
  %.not486 = icmp eq i32 %i.bj, 0
  br i1 %.not486, label %._crit_edge485, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bk = add i32 %i.at, %i.an                    ; 2 uses
  %i.bl = add i32 %i.az, %i.bk                    ; 4 uses
  %i.bm = extractelement <4 x i32> %i.ae, i64 1   ; 8 uses
  %i.bn = extractelement <4 x i32> %i.ae, i64 3   ; 9 uses
  %.not461 = icmp samesign ult i32 %i.bm, %i.bn   ; 2 uses
  %i.bo = extractelement <4 x i32> %i.ae, i64 0   ; 8 uses
  %.not462 = icmp samesign ult i32 %i.bn, %i.bo   ; 2 uses
  %or.cond = select i1 %.not461, i1 true, i1 %.not462
  %i.bp = add i32 %i.aq, %i.at                    ; 2 uses
  %i.bq = add i32 %i.bp, %i.az                    ; 4 uses
  %i.br = add i32 %i.ax, %i.aq                    ; 2 uses
  %i.bs = add i32 %i.br, %i.az                    ; 4 uses
  %i.bt = add i32 %i.bd, %i.br                    ; 8 uses
  %.not463 = icmp samesign ult i32 %i.bm, %i.bo   ; 2 uses
  %.not464 = icmp samesign ult i32 %i.bo, %i.bn   ; 2 uses
  %or.cond469 = select i1 %.not463, i1 true, i1 %.not464
  %i.bu = add nsw i32 %i.bd, %i.bp
  %.not465 = icmp samesign ult i32 %i.bo, %i.bm   ; 2 uses
  %brmerge = or i1 %.not461, %.not465
  %i.bv = add i32 %i.bd, %i.aq
  %i.bw = add i32 %i.bv, %i.at
  %i.bx = add nsw i32 %i.bd, %i.bk                ; 2 uses
  %.not466 = icmp samesign ult i32 %i.bn, %i.bm   ; 2 uses
  %brmerge470 = or i1 %.not466, %.not463
  %i.by = add nsw i32 %i.ax, %i.an                ; 2 uses
  %i.bz = add nsw i32 %i.by, %i.az                ; 2 uses
  %brmerge471 = or i1 %.not462, %.not465
end_hunk_3
begin_hunk_4_@Eval4Inputs:bb.a
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  br i1 %or.cond474, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lx = add i32 %i.ju, %i.kz
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !27
  %i.mb = zext i16 %i.ma to i32                   ; 2 uses
  %i.mc = sub nsw i32 %i.mb, %i.le
  %i.md = add i32 %i.jx, %i.kz
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !27
  %i.mh = zext i16 %i.mg to i32
  %i.mi = add i32 %i.kc, %i.kz
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !27
  %i.mm = zext i16 %i.ml to i32                   ; 2 uses
  %i.mn = sub nsw i32 %i.mh, %i.mm
  %i.mo = sub nsw i32 %i.mm, %i.mb
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  br i1 %brmerge475, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mp = add i32 %i.kf, %i.kz
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.mq
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !27
  %i.mt = zext i16 %i.ms to i32                   ; 2 uses
  %i.mu = add i32 %i.kg, %i.kz
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !27
  %i.my = zext i16 %i.mx to i32                   ; 2 uses
  %i.mz = sub nsw i32 %i.mt, %i.my
  %i.na = add i32 %i.jx, %i.kz
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !27
  %i.ne = zext i16 %i.nd to i32
  %i.nf = sub nsw i32 %i.ne, %i.mt
  %i.ng = sub nsw i32 %i.my, %i.le
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  br i1 %brmerge476, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.nh = add i32 %i.jw, %i.kz
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.ni
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !27
  %i.nl = zext i16 %i.nk to i32                   ; 2 uses
  %i.nm = add i32 %i.kj, %i.kz
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.nn
  %i.np = load i16, ptr %i.no, align 2, !tbaa !27
  %i.nq = zext i16 %i.np to i32                   ; 2 uses
  %i.nr = sub nsw i32 %i.nl, %i.nq
  %i.ns = sub nsw i32 %i.nq, %i.le
  %i.nt = add i32 %i.jx, %i.kz
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.nu
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !27
  %i.nx = zext i16 %i.nw to i32
  %i.ny = sub nsw i32 %i.nx, %i.nl
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  br i1 %brmerge477, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.nz = add i32 %i.jx, %i.kz
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.oa
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !27
  %i.od = zext i16 %i.oc to i32
  %i.oe = add i32 %i.kk, %i.kz
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.of
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !27
  %i.oi = zext i16 %i.oh to i32                   ; 2 uses
  %i.oj = sub nsw i32 %i.od, %i.oi
  %i.ok = add i32 %i.kj, %i.kz
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !tbaa !27
  %i.oo = zext i16 %i.on to i32                   ; 2 uses
  %i.op = sub nsw i32 %i.oo, %i.le
  %i.oq = sub nsw i32 %i.oi, %i.oo
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %brmerge478, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.or = add i32 %i.jx, %i.kz
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.os
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !27
  %i.ov = zext i16 %i.ou to i32
  %i.ow = add i32 %i.km, %i.kz
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.ox
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !27
  %i.pa = zext i16 %i.oz to i32                   ; 2 uses
  %i.pb = sub nsw i32 %i.ov, %i.pa
  %i.pc = add i32 %i.kg, %i.kz
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !27
  %i.pg = zext i16 %i.pf to i32                   ; 2 uses
  %i.ph = sub nsw i32 %i.pa, %i.pg
  %i.pi = sub nsw i32 %i.pg, %i.le
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.o, %bb.s, %bb.w, %bb.u, %bb.q, %bb.m
  %.1448 = phi i32 [ %i.lk, %bb.m ], [ %i.mc, %bb.o ], [ %i.mz, %bb.q ], [ %i.nr, %bb.s ], [ %i.oj, %bb.u ], [ %i.pb, %bb.w ], [ 0, %bb.v ]
  %.1446 = phi i32 [ %i.lq, %bb.m ], [ %i.mn, %bb.o ], [ %i.nf, %bb.q ], [ %i.ns, %bb.s ], [ %i.op, %bb.u ], [ %i.ph, %bb.w ], [ 0, %bb.v ]
  %.1444 = phi i32 [ %i.lw, %bb.m ], [ %i.mo, %bb.o ], [ %i.ng, %bb.q ], [ %i.ny, %bb.s ], [ %i.oq, %bb.u ], [ %i.pi, %bb.w ], [ 0, %bb.v ]
  %i.pj = mul nsw i32 %.1448, %i.bm
  %i.pk = mul nsw i32 %.1446, %i.bn
  %i.pl = add nsw i32 %i.pk, %i.pj
  %i.pm = mul nsw i32 %.1444, %i.bo
  %i.pn = add nsw i32 %i.pl, %i.pm                ; 2 uses
  %i.po = add nsw i32 %i.pn, 32767
  %i.pp = sdiv i32 %i.po, 65535
  %i.pq = add i32 %i.pn, 32768
  %i.pr = add i32 %i.pq, %i.pp
  %i.ps = lshr i32 %i.pr, 16
  %i.pt = trunc nuw i32 %i.ps to i16
  %i.pu = add i16 %i.ld, %i.pt
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv496
  store i16 %i.pu, ptr %i.pv, align 2, !tbaa !27
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %wide.trip.count499
  br i1 %exitcond500.not, label %.lr.ph484.preheader, label %bb.l, !llvm.loop !94

.lr.ph484:                                        ; preds = %.lr.ph484.preheader531, %.lr.ph484
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %.lr.ph484 ], [ %indvars.iv501.ph, %.lr.ph484.preheader531 ] ; 4 uses
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv501
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !27 ; 2 uses
  %i.py = zext i16 %i.px to i32
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv501
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !27
  %i.qb = zext i16 %i.qa to i32
  %i.qc = sub nsw i32 %i.qb, %i.py
  %i.qd = mul i32 %i.qc, %i.ad
  %i.qe = add i32 %i.qd, 32768
  %i.qf = lshr i32 %i.qe, 16
  %i.qg = trunc nuw i32 %i.qf to i16
  %i.qh = add i16 %i.px, %i.qg
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv501
  store i16 %i.qh, ptr %i.qi, align 2, !tbaa !27
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %wide.trip.count504
  br i1 %exitcond505.not, label %._crit_edge485, label %.lr.ph484, !llvm.loop !95

._crit_edge485:                                   ; preds = %.lr.ph484, %middle.block528, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval5InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 6 uses
  %i.b = alloca [128 x float], align 16           ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x float], align 16           ; 5 uses
  %i.d = alloca [128 x float], align 16           ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x float], align 16           ; 6 uses
  %i.f = alloca [128 x float], align 16           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.1260.0.copyload = load i32, ptr %.sroa.1260.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 3 uses
  %5 = fcmp ult <2 x float> %i.l, splat (float f0x3089705F)
  %i.m = fcmp ogt <2 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <2 x i1> %i.m, <2 x float> splat (float 1.000000e+00), <2 x float> %i.l
  %i.o = select <2 x i1> %5, <2 x float> zeroinitializer, <2 x float> %i.n ; 2 uses
  %i.p = fcmp ult <2 x float> %i.o, splat (float 1.000000e+00) ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %spec.select = select i1 %i.q, i32 %i.k, i32 0
  %i.r = load <2 x i32>, ptr %i.i, align 8
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 3 uses
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = fadd <2 x double> %i.u, splat (double f0x4238000000000000)
  %i.w = bitcast <2 x double> %i.v to <2 x i64>
  %i.x = trunc <2 x i64> %i.w to <2 x i32>
  %i.y = ashr <2 x i32> %i.x, splat (i32 16)      ; 3 uses
  %i.z = sitofp <2 x i32> %i.y to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.t, %i.z  ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = extractelement <2 x i32> %i.y, i64 0
  %i.ac = mul i32 %i.ab, %i.k                     ; 2 uses
  %i.ad = add i32 %i.ac, %spec.select
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %foldExtExtBinop116 = fsub <2 x float> %i.t, %i.z ; 3 uses
  %i.ag = extractelement <2 x float> %foldExtExtBinop116, i64 1 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 1
  %i.ai = mul i32 %i.ah, %.sroa.1260.0.copyload   ; 2 uses
  %i.aj = extractelement <2 x i1> %i.p, i64 1
  %spec.select.i = select i1 %i.aj, i32 %.sroa.1260.0.copyload, i32 0
  %i.ak = add i32 %i.ai, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx43, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx48, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.80..sroa_idx, i64 12, i1 false)
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %4, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.14.0..sroa_idx66, ptr noundef nonnull align 4 dereferenceable(44) %i.j, i64 44, i1 false)
  %.sroa.1468.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx74, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.750.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.80..sroa_idx, i64 12, i1 false)
  %i.al = sext i32 %i.ai to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @TetrahedralInterpFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ao
  store ptr %i.ap, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  call void @TetrahedralInterpFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %.sroa.5.0.copyload, 0    ; 2 uses
  br i1 %.not.i, label %Eval4InputsFloat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x float>, ptr %i.aq, align 16, !tbaa !25 ; 2 uses
  %wide.load80 = load <4 x float>, ptr %i.ar, align 16, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load81 = load <4 x float>, ptr %i.as, align 16, !tbaa !25
  %wide.load82 = load <4 x float>, ptr %i.at, align 16, !tbaa !25
  %i.au = fsub <4 x float> %wide.load81, %wide.load
  %i.av = fsub <4 x float> %wide.load82, %wide.load80
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %wide.load80)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %i.aw, ptr %i.ay, align 16, !tbaa !25
  store <4 x float> %i.ax, ptr %i.az, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Eval4InputsFloat.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25
  %i.bf = fsub float %i.be, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ag, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store float %i.bg, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Eval4InputsFloat.exit, label %.lr.ph.i, !llvm.loop !97

Eval4InputsFloat.exit:                            ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.bi = sext i32 %i.ad to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx45, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.80..sroa_idx, i64 12, i1 false)
  %.sroa.12.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx63, align 8
  %.sroa.14.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %3, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.14.0..sroa_idx67, ptr noundef nonnull align 4 dereferenceable(44) %i.j, i64 44, i1 false)
  %.sroa.1468.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx76, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.750.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.80..sroa_idx, i64 12, i1 false)
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.al
  store ptr %i.bk, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @TetrahedralInterpFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ao
  store ptr %i.bl, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @TetrahedralInterpFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not.i, label %Eval4InputsFloat.exit42.thread, label %.lr.ph.preheader.i36

Eval4InputsFloat.exit42.thread:                   ; preds = %Eval4InputsFloat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i36:                             ; preds = %Eval4InputsFloat.exit
  %wide.trip.count.i37 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check84, label %.lr.ph.i38.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.preheader.i36
  %n.vec86 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat88 = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index90 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load91 = load <4 x float>, ptr %i.bm, align 16, !tbaa !25 ; 2 uses
  %wide.load92 = load <4 x float>, ptr %i.bn, align 16, !tbaa !25 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index90 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load93 = load <4 x float>, ptr %i.bo, align 16, !tbaa !25
  %wide.load94 = load <4 x float>, ptr %i.bp, align 16, !tbaa !25
  %i.bq = fsub <4 x float> %wide.load93, %wide.load91
  %i.br = fsub <4 x float> %wide.load94, %wide.load92
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %broadcast.splat88, <4 x float> %wide.load91)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %broadcast.splat88, <4 x float> %wide.load92)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index90 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 16, !tbaa !25
  store <4 x float> %i.bt, ptr %i.bv, align 16, !tbaa !25
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bw, label %middle.block96, label %vector.body89, !llvm.loop !98

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec86, %wide.trip.count.i37
  br i1 %cmp.n97, label %.lr.ph.preheader, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %.lr.ph.preheader.i36, %middle.block96
  %indvars.iv.i39.ph = phi i64 [ 0, %.lr.ph.preheader.i36 ], [ %n.vec86, %middle.block96 ]
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i40, %.lr.ph.i38 ], [ %indvars.iv.i39.ph, %.lr.ph.i38.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i39
  %i.by = load float, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i39
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !25
  %i.cb = fsub float %i.ca, %i.by
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ag, float %i.by)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i39
  store float %i.cc, ptr %i.cd, align 4, !tbaa !25
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i37
  br i1 %exitcond.not.i41, label %.lr.ph.preheader, label %.lr.ph.i38, !llvm.loop !99

.lr.ph.preheader:                                 ; preds = %.lr.ph.i38, %middle.block96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check100 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check100, label %.lr.ph.preheader118, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.preheader
  %n.vec102 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat104 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body105 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index106 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load107 = load <4 x float>, ptr %i.ce, align 16, !tbaa !25 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cf, align 16, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index106 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load109 = load <4 x float>, ptr %i.cg, align 16, !tbaa !25
  %wide.load110 = load <4 x float>, ptr %i.ch, align 16, !tbaa !25
  %i.ci = fsub <4 x float> %wide.load109, %wide.load107
  %i.cj = fsub <4 x float> %wide.load110, %wide.load108
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %broadcast.splat104, <4 x float> %wide.load107)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %broadcast.splat104, <4 x float> %wide.load108)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index106 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !25
  store <4 x float> %i.cl, ptr %i.cn, align 4, !tbaa !25
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.co, label %middle.block112, label %vector.body105, !llvm.loop !100

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %n.vec102, %wide.trip.count.i37
  br i1 %cmp.n113, label %._crit_edge, label %.lr.ph.preheader118

.lr.ph.preheader118:                              ; preds = %.lr.ph.preheader, %middle.block112
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec102, %middle.block112 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader118, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader118 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !25 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !25
  %i.ct = fsub float %i.cs, %i.cq
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.aa, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph, %middle.block112, %Eval4InputsFloat.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval5Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %i.j = add nsw i32 %i.i, 32767
  %i.k = sdiv i32 %i.j, 65535
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = ashr i32 %i.l, 16                        ; 2 uses
  %i.n = and i32 %i.l, 65535                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = mul i32 %i.m, %i.p
  %.not = icmp ne i16 %i.e, -1
  %i.r = zext i1 %.not to i32
  %i.s = add nsw i32 %i.m, %i.r
  %i.t = mul i32 %i.s, %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  call void @Eval4Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aa
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !19
  call void @Eval4Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ad to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ae, align 16, !tbaa !27 ; 2 uses
  %i.af = zext <8 x i16> %wide.load to <8 x i32>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load30 = load <8 x i16>, ptr %i.ag, align 16, !tbaa !27
  %i.ah = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.ai = sub nsw <8 x i32> %i.ah, %i.af
  %i.aj = mul <8 x i32> %i.ai, %broadcast.splat
  %i.ak = add <8 x i32> %i.aj, splat (i32 32768)
  %i.al = lshr <8 x i32> %i.ak, splat (i32 16)
  %i.am = trunc nuw <8 x i32> %i.al to <8 x i16>
  %i.an = add <8 x i16> %wide.load, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader31 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !27 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !27
  %i.av = zext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.av, %i.as
  %i.ax = mul i32 %i.aw, %i.n
  %i.ay = add i32 %i.ax, 32768
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = add i16 %i.ar, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval6InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.e, f0x3089705F
  %i.f = fcmp ogt float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.e
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = uitofp i32 %i.j to float
  %i.l = fmul float %i.h, %i.k                    ; 2 uses
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.p = ashr i32 %.sroa.0.0.extract.trunc.i, 16  ; 2 uses
  %i.q = sitofp i32 %i.p to float
  %i.r = fsub float %i.l, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.p, %i.t                       ; 2 uses
  %i.v = fcmp ult float %i.h, 1.000000e+00
  %spec.select = select i1 %i.v, i32 %i.t, i32 0
  %i.w = add i32 %i.u, %spec.select
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.x, ptr noundef nonnull align 4 dereferenceable(20) %i.y, i64 20, i1 false)
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @Eval5InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !19
  call void @Eval5InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ag to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 16, !tbaa !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.ai, align 16, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load35 = load <4 x float>, ptr %i.aj, align 16, !tbaa !25
  %wide.load36 = load <4 x float>, ptr %i.ak, align 16, !tbaa !25
  %i.al = fsub <4 x float> %wide.load35, %wide.load
  %i.am = fsub <4 x float> %wide.load36, %wide.load34
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !25
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !25
  %i.aw = fsub float %i.av, %i.at
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.r, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ax, ptr %i.ay, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval6Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 6 uses
  %i.b = alloca [128 x i16], align 16             ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x i16], align 16             ; 5 uses
  %i.d = alloca [128 x i16], align 16             ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x i16], align 16             ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = mul i32 %i.l, %i.j                       ; 2 uses
  %i.n = add nsw i32 %i.m, 32767
  %i.o = sdiv i32 %i.n, 65535
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.q = ashr i32 %i.p, 16                        ; 2 uses
  %i.r = and i32 %i.p, 65535                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.q, %i.t
  %.not = icmp ne i16 %i.i, -1
  %i.v = zext i1 %.not to i32
  %i.w = add nsw i32 %i.q, %i.v
  %i.x = mul i32 %i.w, %i.t
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 156
  %.sroa.1253.0.copyload = load i32, ptr %.sroa.1253.0..sroa_idx, align 4 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.743.80.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !27 ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %i.ad = mul i32 %.sroa.743.80.copyload, %i.ac   ; 2 uses
  %i.ae = add nsw i32 %i.ad, 32767
  %i.af = sdiv i32 %i.ae, 65535
  %i.ag = add nsw i32 %i.af, %i.ad                ; 2 uses
  %i.ah = ashr i32 %i.ag, 16                      ; 2 uses
  %i.ai = and i32 %i.ag, 65535                    ; 4 uses
  %i.aj = mul i32 %i.ah, %.sroa.1253.0.copyload
  %.not.i = icmp ne i16 %i.ab, -1
  %i.ak = zext i1 %.not.i to i32
  %i.al = add nsw i32 %i.ah, %i.ak
  %i.am = mul i32 %i.al, %.sroa.1253.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx41, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.80..sroa_idx, i64 16, i1 false)
  %.sroa.12.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx51, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx54, align 4
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %4, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  %.sroa.1461.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx67, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.743.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.80..sroa_idx, i64 16, i1 false)
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.an
  store ptr %i.ao, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  call void @Eval4Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aq
  store ptr %i.ar, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  call void @Eval4Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not28.i = icmp eq i32 %.sroa.5.0.copyload, 0  ; 2 uses
  br i1 %.not28.i, label %Eval5Inputs.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
end_hunk_4
begin_hunk_5_@Eval6Inputs:bb.a
  br i1 %exitcond.not.i, label %Eval5Inputs.exit, label %.lr.ph.i, !llvm.loop !107

Eval5Inputs.exit:                                 ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.br = sext i32 %i.x to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.br ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx38, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx42, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.80..sroa_idx, i64 16, i1 false)
  %.sroa.12.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx52, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx56, align 4
  %.sroa.14.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14.0..sroa_idx60, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  %.sroa.1461.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx69, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.743.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.80..sroa_idx, i64 16, i1 false)
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.an
  store ptr %i.bt, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval4Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.aq
  store ptr %i.bu, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval4Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not28.i, label %Eval5Inputs.exit35.thread, label %.lr.ph.preheader.i29

Eval5Inputs.exit35.thread:                        ; preds = %Eval5Inputs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i29:                             ; preds = %Eval5Inputs.exit
  %wide.trip.count.i30 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check76 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check76, label %.lr.ph.i31.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i29
  %n.vec78 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body81 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index82
  %wide.load83 = load <8 x i16>, ptr %i.bv, align 16, !tbaa !27 ; 2 uses
  %i.bw = zext <8 x i16> %wide.load83 to <8 x i32>
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index82
  %wide.load84 = load <8 x i16>, ptr %i.bx, align 16, !tbaa !27
  %i.by = zext <8 x i16> %wide.load84 to <8 x i32>
  %i.bz = sub nsw <8 x i32> %i.by, %i.bw
  %i.ca = mul <8 x i32> %i.bz, %broadcast.splat80
  %i.cb = add <8 x i32> %i.ca, splat (i32 32768)
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 16)
  %i.cd = trunc nuw <8 x i32> %i.cc to <8 x i16>
  %i.ce = add <8 x i16> %wide.load83, %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index82
  store <8 x i16> %i.ce, ptr %i.cf, align 16, !tbaa !27
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cg, label %middle.block86, label %vector.body81, !llvm.loop !108

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %n.vec78, %wide.trip.count.i30
  br i1 %cmp.n87, label %.lr.ph.preheader, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %.lr.ph.preheader.i29, %middle.block86
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %n.vec78, %middle.block86 ]
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i31 ], [ %indvars.iv.i32.ph, %.lr.ph.i31.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i32
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !27 ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i32
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.cm, %i.cj
  %i.co = mul i32 %i.cn, %i.ai
  %i.cp = add i32 %i.co, 32768
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = add i16 %i.ci, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i32
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !27
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i30
  br i1 %exitcond.not.i34, label %.lr.ph.preheader, label %.lr.ph.i31, !llvm.loop !109

.lr.ph.preheader:                                 ; preds = %.lr.ph.i31, %middle.block86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check90 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check90, label %.lr.ph.preheader103, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph.preheader
  %n.vec92 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body95 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index96
  %wide.load97 = load <8 x i16>, ptr %i.cu, align 16, !tbaa !27 ; 2 uses
  %i.cv = zext <8 x i16> %wide.load97 to <8 x i32>
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index96
  %wide.load98 = load <8 x i16>, ptr %i.cw, align 16, !tbaa !27
  %i.cx = zext <8 x i16> %wide.load98 to <8 x i32>
  %i.cy = sub nsw <8 x i32> %i.cx, %i.cv
  %i.cz = mul <8 x i32> %i.cy, %broadcast.splat94
  %i.da = add <8 x i32> %i.cz, splat (i32 32768)
  %i.db = lshr <8 x i32> %i.da, splat (i32 16)
  %i.dc = trunc nuw <8 x i32> %i.db to <8 x i16>
  %i.dd = add <8 x i16> %wide.load97, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96
  store <8 x i16> %i.dd, ptr %i.de, align 2, !tbaa !27
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.df, label %middle.block100, label %vector.body95, !llvm.loop !110

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %n.vec92, %wide.trip.count.i30
  br i1 %cmp.n101, label %._crit_edge, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %.lr.ph.preheader, %middle.block100
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec92, %middle.block100 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader103, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader103 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !27 ; 2 uses
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !27
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.dl, %i.di
  %i.dn = mul i32 %i.dm, %i.r
  %i.do = add i32 %i.dn, 32768
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = add i16 %i.dh, %i.dq
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph, %middle.block100, %Eval5Inputs.exit35.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval7InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 6 uses
  %i.b = alloca [128 x float], align 16           ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x float], align 16           ; 5 uses
  %i.d = alloca [128 x float], align 16           ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x float], align 16           ; 6 uses
  %i.f = alloca [128 x float], align 16           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.1260.0.copyload = load i32, ptr %.sroa.1260.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 3 uses
  %5 = fcmp ult <2 x float> %i.l, splat (float f0x3089705F)
  %i.m = fcmp ogt <2 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <2 x i1> %i.m, <2 x float> splat (float 1.000000e+00), <2 x float> %i.l
  %i.o = select <2 x i1> %5, <2 x float> zeroinitializer, <2 x float> %i.n ; 2 uses
  %i.p = fcmp ult <2 x float> %i.o, splat (float 1.000000e+00) ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %spec.select = select i1 %i.q, i32 %i.k, i32 0
  %i.r = load <2 x i32>, ptr %i.i, align 8
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 3 uses
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = fadd <2 x double> %i.u, splat (double f0x4238000000000000)
  %i.w = bitcast <2 x double> %i.v to <2 x i64>
  %i.x = trunc <2 x i64> %i.w to <2 x i32>
  %i.y = ashr <2 x i32> %i.x, splat (i32 16)      ; 3 uses
  %i.z = sitofp <2 x i32> %i.y to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.t, %i.z  ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = extractelement <2 x i32> %i.y, i64 0
  %i.ac = mul i32 %i.ab, %i.k                     ; 2 uses
  %i.ad = add i32 %i.ac, %spec.select
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %foldExtExtBinop116 = fsub <2 x float> %i.t, %i.z ; 3 uses
  %i.ag = extractelement <2 x float> %foldExtExtBinop116, i64 1 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 1
  %i.ai = mul i32 %i.ah, %.sroa.1260.0.copyload   ; 2 uses
  %i.aj = extractelement <2 x i1> %i.p, i64 1
  %spec.select.i = select i1 %i.aj, i32 %.sroa.1260.0.copyload, i32 0
  %i.ak = add i32 %i.ai, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx43, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx48, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10.80..sroa_idx, i64 20, i1 false)
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %4, i64 164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.14.0..sroa_idx66, ptr noundef nonnull align 4 dereferenceable(36) %i.j, i64 36, i1 false)
  %.sroa.1468.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx74, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.750.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10.80..sroa_idx, i64 20, i1 false)
  %i.al = sext i32 %i.ai to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @Eval5InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ao
  store ptr %i.ap, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  call void @Eval5InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %.sroa.5.0.copyload, 0    ; 2 uses
  br i1 %.not.i, label %Eval6InputsFloat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x float>, ptr %i.aq, align 16, !tbaa !25 ; 2 uses
  %wide.load80 = load <4 x float>, ptr %i.ar, align 16, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load81 = load <4 x float>, ptr %i.as, align 16, !tbaa !25
  %wide.load82 = load <4 x float>, ptr %i.at, align 16, !tbaa !25
  %i.au = fsub <4 x float> %wide.load81, %wide.load
  %i.av = fsub <4 x float> %wide.load82, %wide.load80
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %wide.load80)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %i.aw, ptr %i.ay, align 16, !tbaa !25
  store <4 x float> %i.ax, ptr %i.az, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Eval6InputsFloat.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25
  %i.bf = fsub float %i.be, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ag, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store float %i.bg, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Eval6InputsFloat.exit, label %.lr.ph.i, !llvm.loop !113

Eval6InputsFloat.exit:                            ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.bi = sext i32 %i.ad to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx45, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10.80..sroa_idx, i64 20, i1 false)
  %.sroa.12.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx63, align 8
  %.sroa.14.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %3, i64 164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.14.0..sroa_idx67, ptr noundef nonnull align 4 dereferenceable(36) %i.j, i64 36, i1 false)
  %.sroa.1468.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx76, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.750.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10.80..sroa_idx, i64 20, i1 false)
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.al
  store ptr %i.bk, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval5InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ao
  store ptr %i.bl, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval5InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not.i, label %Eval6InputsFloat.exit42.thread, label %.lr.ph.preheader.i36

Eval6InputsFloat.exit42.thread:                   ; preds = %Eval6InputsFloat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i36:                             ; preds = %Eval6InputsFloat.exit
  %wide.trip.count.i37 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check84, label %.lr.ph.i38.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.preheader.i36
  %n.vec86 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat88 = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index90 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load91 = load <4 x float>, ptr %i.bm, align 16, !tbaa !25 ; 2 uses
  %wide.load92 = load <4 x float>, ptr %i.bn, align 16, !tbaa !25 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index90 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load93 = load <4 x float>, ptr %i.bo, align 16, !tbaa !25
  %wide.load94 = load <4 x float>, ptr %i.bp, align 16, !tbaa !25
  %i.bq = fsub <4 x float> %wide.load93, %wide.load91
  %i.br = fsub <4 x float> %wide.load94, %wide.load92
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %broadcast.splat88, <4 x float> %wide.load91)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %broadcast.splat88, <4 x float> %wide.load92)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index90 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 16, !tbaa !25
  store <4 x float> %i.bt, ptr %i.bv, align 16, !tbaa !25
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bw, label %middle.block96, label %vector.body89, !llvm.loop !114

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec86, %wide.trip.count.i37
  br i1 %cmp.n97, label %.lr.ph.preheader, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %.lr.ph.preheader.i36, %middle.block96
  %indvars.iv.i39.ph = phi i64 [ 0, %.lr.ph.preheader.i36 ], [ %n.vec86, %middle.block96 ]
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i40, %.lr.ph.i38 ], [ %indvars.iv.i39.ph, %.lr.ph.i38.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i39
  %i.by = load float, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i39
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !25
  %i.cb = fsub float %i.ca, %i.by
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ag, float %i.by)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i39
  store float %i.cc, ptr %i.cd, align 4, !tbaa !25
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i37
  br i1 %exitcond.not.i41, label %.lr.ph.preheader, label %.lr.ph.i38, !llvm.loop !115

.lr.ph.preheader:                                 ; preds = %.lr.ph.i38, %middle.block96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check100 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check100, label %.lr.ph.preheader118, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.preheader
  %n.vec102 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat104 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body105 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index106 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load107 = load <4 x float>, ptr %i.ce, align 16, !tbaa !25 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cf, align 16, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index106 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load109 = load <4 x float>, ptr %i.cg, align 16, !tbaa !25
  %wide.load110 = load <4 x float>, ptr %i.ch, align 16, !tbaa !25
  %i.ci = fsub <4 x float> %wide.load109, %wide.load107
  %i.cj = fsub <4 x float> %wide.load110, %wide.load108
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %broadcast.splat104, <4 x float> %wide.load107)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %broadcast.splat104, <4 x float> %wide.load108)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index106 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !25
  store <4 x float> %i.cl, ptr %i.cn, align 4, !tbaa !25
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.co, label %middle.block112, label %vector.body105, !llvm.loop !116

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %n.vec102, %wide.trip.count.i37
  br i1 %cmp.n113, label %._crit_edge, label %.lr.ph.preheader118

.lr.ph.preheader118:                              ; preds = %.lr.ph.preheader, %middle.block112
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec102, %middle.block112 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader118, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader118 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !25 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !25
  %i.ct = fsub float %i.cs, %i.cq
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.aa, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %.lr.ph, %middle.block112, %Eval6InputsFloat.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval7Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %i.j = add nsw i32 %i.i, 32767
  %i.k = sdiv i32 %i.j, 65535
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = ashr i32 %i.l, 16                        ; 2 uses
  %i.n = and i32 %i.l, 65535                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = mul i32 %i.m, %i.p
  %.not = icmp ne i16 %i.e, -1
  %i.r = zext i1 %.not to i32
  %i.s = add nsw i32 %i.m, %i.r
  %i.t = mul i32 %i.s, %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 4 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  call void @Eval6Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aa
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !19
  call void @Eval6Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ad to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ae, align 16, !tbaa !27 ; 2 uses
  %i.af = zext <8 x i16> %wide.load to <8 x i32>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load30 = load <8 x i16>, ptr %i.ag, align 16, !tbaa !27
  %i.ah = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.ai = sub nsw <8 x i32> %i.ah, %i.af
  %i.aj = mul <8 x i32> %i.ai, %broadcast.splat
  %i.ak = add <8 x i32> %i.aj, splat (i32 32768)
  %i.al = lshr <8 x i32> %i.ak, splat (i32 16)
  %i.am = trunc nuw <8 x i32> %i.al to <8 x i16>
  %i.an = add <8 x i16> %wide.load, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader31 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !27 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !27
  %i.av = zext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.av, %i.as
  %i.ax = mul i32 %i.aw, %i.n
  %i.ay = add i32 %i.ax, 32768
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = add i16 %i.ar, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval8InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.e, f0x3089705F
  %i.f = fcmp ogt float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.e
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = uitofp i32 %i.j to float
  %i.l = fmul float %i.h, %i.k                    ; 2 uses
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.p = ashr i32 %.sroa.0.0.extract.trunc.i, 16  ; 2 uses
  %i.q = sitofp i32 %i.p to float
  %i.r = fsub float %i.l, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.p, %i.t                       ; 2 uses
  %i.v = fcmp ult float %i.h, 1.000000e+00
  %spec.select = select i1 %i.v, i32 %i.t, i32 0
  %i.w = add i32 %i.u, %spec.select
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, ptr noundef nonnull align 4 dereferenceable(28) %i.y, i64 28, i1 false)
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @Eval7InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !19
  call void @Eval7InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ag to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 16, !tbaa !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.ai, align 16, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load35 = load <4 x float>, ptr %i.aj, align 16, !tbaa !25
  %wide.load36 = load <4 x float>, ptr %i.ak, align 16, !tbaa !25
  %i.al = fsub <4 x float> %wide.load35, %wide.load
  %i.am = fsub <4 x float> %wide.load36, %wide.load34
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !25
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !25
  %i.aw = fsub float %i.av, %i.at
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.r, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ax, ptr %i.ay, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval8Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 6 uses
  %i.b = alloca [128 x i16], align 16             ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x i16], align 16             ; 5 uses
  %i.d = alloca [128 x i16], align 16             ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x i16], align 16             ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = mul i32 %i.l, %i.j                       ; 2 uses
  %i.n = add nsw i32 %i.m, 32767
  %i.o = sdiv i32 %i.n, 65535
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.q = ashr i32 %i.p, 16                        ; 2 uses
  %i.r = and i32 %i.p, 65535                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.q, %i.t
  %.not = icmp ne i16 %i.i, -1
  %i.v = zext i1 %.not to i32
  %i.w = add nsw i32 %i.q, %i.v
  %i.x = mul i32 %i.w, %i.t
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 164
  %.sroa.1253.0.copyload = load i32, ptr %.sroa.1253.0..sroa_idx, align 4 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.743.80.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !27 ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %i.ad = mul i32 %.sroa.743.80.copyload, %i.ac   ; 2 uses
  %i.ae = add nsw i32 %i.ad, 32767
  %i.af = sdiv i32 %i.ae, 65535
  %i.ag = add nsw i32 %i.af, %i.ad                ; 2 uses
  %i.ah = ashr i32 %i.ag, 16                      ; 2 uses
  %i.ai = and i32 %i.ag, 65535                    ; 4 uses
  %i.aj = mul i32 %i.ah, %.sroa.1253.0.copyload
  %.not.i = icmp ne i16 %i.ab, -1
  %i.ak = zext i1 %.not.i to i32
  %i.al = add nsw i32 %i.ah, %i.ak
  %i.am = mul i32 %i.al, %.sroa.1253.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx41, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.10.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.80..sroa_idx, i64 24, i1 false)
  %.sroa.12.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx51, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %4, i64 164
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx54, align 4
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %.sroa.1461.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx67, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.80..sroa_idx, i64 24, i1 false)
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.an
  store ptr %i.ao, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  call void @Eval6Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aq
  store ptr %i.ar, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  call void @Eval6Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not28.i = icmp eq i32 %.sroa.5.0.copyload, 0  ; 2 uses
  br i1 %.not28.i, label %Eval7Inputs.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
end_hunk_5
begin_hunk_6_@Eval8Inputs:bb.a
  br i1 %exitcond.not.i, label %Eval7Inputs.exit, label %.lr.ph.i, !llvm.loop !123

Eval7Inputs.exit:                                 ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.br = sext i32 %i.x to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.br ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx38, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx42, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.10.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.80..sroa_idx, i64 24, i1 false)
  %.sroa.12.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx52, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %3, i64 164
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx56, align 4
  %.sroa.14.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %3, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx60, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %.sroa.1461.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx69, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.80..sroa_idx, i64 24, i1 false)
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.an
  store ptr %i.bt, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval6Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.aq
  store ptr %i.bu, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval6Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not28.i, label %Eval7Inputs.exit35.thread, label %.lr.ph.preheader.i29

Eval7Inputs.exit35.thread:                        ; preds = %Eval7Inputs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i29:                             ; preds = %Eval7Inputs.exit
  %wide.trip.count.i30 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check76 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check76, label %.lr.ph.i31.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i29
  %n.vec78 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body81 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index82
  %wide.load83 = load <8 x i16>, ptr %i.bv, align 16, !tbaa !27 ; 2 uses
  %i.bw = zext <8 x i16> %wide.load83 to <8 x i32>
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index82
  %wide.load84 = load <8 x i16>, ptr %i.bx, align 16, !tbaa !27
  %i.by = zext <8 x i16> %wide.load84 to <8 x i32>
  %i.bz = sub nsw <8 x i32> %i.by, %i.bw
  %i.ca = mul <8 x i32> %i.bz, %broadcast.splat80
  %i.cb = add <8 x i32> %i.ca, splat (i32 32768)
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 16)
  %i.cd = trunc nuw <8 x i32> %i.cc to <8 x i16>
  %i.ce = add <8 x i16> %wide.load83, %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index82
  store <8 x i16> %i.ce, ptr %i.cf, align 16, !tbaa !27
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cg, label %middle.block86, label %vector.body81, !llvm.loop !124

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %n.vec78, %wide.trip.count.i30
  br i1 %cmp.n87, label %.lr.ph.preheader, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %.lr.ph.preheader.i29, %middle.block86
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %n.vec78, %middle.block86 ]
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i31 ], [ %indvars.iv.i32.ph, %.lr.ph.i31.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i32
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !27 ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i32
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.cm, %i.cj
  %i.co = mul i32 %i.cn, %i.ai
  %i.cp = add i32 %i.co, 32768
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = add i16 %i.ci, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i32
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !27
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i30
  br i1 %exitcond.not.i34, label %.lr.ph.preheader, label %.lr.ph.i31, !llvm.loop !125

.lr.ph.preheader:                                 ; preds = %.lr.ph.i31, %middle.block86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check90 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check90, label %.lr.ph.preheader103, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph.preheader
  %n.vec92 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body95 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index96
  %wide.load97 = load <8 x i16>, ptr %i.cu, align 16, !tbaa !27 ; 2 uses
  %i.cv = zext <8 x i16> %wide.load97 to <8 x i32>
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index96
  %wide.load98 = load <8 x i16>, ptr %i.cw, align 16, !tbaa !27
  %i.cx = zext <8 x i16> %wide.load98 to <8 x i32>
  %i.cy = sub nsw <8 x i32> %i.cx, %i.cv
  %i.cz = mul <8 x i32> %i.cy, %broadcast.splat94
  %i.da = add <8 x i32> %i.cz, splat (i32 32768)
  %i.db = lshr <8 x i32> %i.da, splat (i32 16)
  %i.dc = trunc nuw <8 x i32> %i.db to <8 x i16>
  %i.dd = add <8 x i16> %wide.load97, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96
  store <8 x i16> %i.dd, ptr %i.de, align 2, !tbaa !27
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.df, label %middle.block100, label %vector.body95, !llvm.loop !126

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %n.vec92, %wide.trip.count.i30
  br i1 %cmp.n101, label %._crit_edge, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %.lr.ph.preheader, %middle.block100
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec92, %middle.block100 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader103, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader103 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !27 ; 2 uses
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !27
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.dl, %i.di
  %i.dn = mul i32 %i.dm, %i.r
  %i.do = add i32 %i.dn, 32768
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = add i16 %i.dh, %i.dq
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %.lr.ph, %middle.block100, %Eval7Inputs.exit35.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval9InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 6 uses
  %i.b = alloca [128 x float], align 16           ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x float], align 16           ; 5 uses
  %i.d = alloca [128 x float], align 16           ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x float], align 16           ; 6 uses
  %i.f = alloca [128 x float], align 16           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 168
  %.sroa.1260.0.copyload = load i32, ptr %.sroa.1260.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 3 uses
  %5 = fcmp ult <2 x float> %i.l, splat (float f0x3089705F)
  %i.m = fcmp ogt <2 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <2 x i1> %i.m, <2 x float> splat (float 1.000000e+00), <2 x float> %i.l
  %i.o = select <2 x i1> %5, <2 x float> zeroinitializer, <2 x float> %i.n ; 2 uses
  %i.p = fcmp ult <2 x float> %i.o, splat (float 1.000000e+00) ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %spec.select = select i1 %i.q, i32 %i.k, i32 0
  %i.r = load <2 x i32>, ptr %i.i, align 8
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 3 uses
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = fadd <2 x double> %i.u, splat (double f0x4238000000000000)
  %i.w = bitcast <2 x double> %i.v to <2 x i64>
  %i.x = trunc <2 x i64> %i.w to <2 x i32>
  %i.y = ashr <2 x i32> %i.x, splat (i32 16)      ; 3 uses
  %i.z = sitofp <2 x i32> %i.y to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.t, %i.z  ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = extractelement <2 x i32> %i.y, i64 0
  %i.ac = mul i32 %i.ab, %i.k                     ; 2 uses
  %i.ad = add i32 %i.ac, %spec.select
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %foldExtExtBinop116 = fsub <2 x float> %i.t, %i.z ; 3 uses
  %i.ag = extractelement <2 x float> %foldExtExtBinop116, i64 1 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 1
  %i.ai = mul i32 %i.ah, %.sroa.1260.0.copyload   ; 2 uses
  %i.aj = extractelement <2 x i1> %i.p, i64 1
  %spec.select.i = select i1 %i.aj, i32 %.sroa.1260.0.copyload, i32 0
  %i.ak = add i32 %i.ai, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx43, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx48, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.10.80..sroa_idx, i64 28, i1 false)
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %4, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14.0..sroa_idx66, ptr noundef nonnull align 4 dereferenceable(28) %i.j, i64 28, i1 false)
  %.sroa.1468.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx74, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.750.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.10.80..sroa_idx, i64 28, i1 false)
  %i.al = sext i32 %i.ai to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @Eval7InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ao
  store ptr %i.ap, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  call void @Eval7InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %.sroa.5.0.copyload, 0    ; 2 uses
  br i1 %.not.i, label %Eval8InputsFloat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x float>, ptr %i.aq, align 16, !tbaa !25 ; 2 uses
  %wide.load80 = load <4 x float>, ptr %i.ar, align 16, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load81 = load <4 x float>, ptr %i.as, align 16, !tbaa !25
  %wide.load82 = load <4 x float>, ptr %i.at, align 16, !tbaa !25
  %i.au = fsub <4 x float> %wide.load81, %wide.load
  %i.av = fsub <4 x float> %wide.load82, %wide.load80
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %wide.load80)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %i.aw, ptr %i.ay, align 16, !tbaa !25
  store <4 x float> %i.ax, ptr %i.az, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Eval8InputsFloat.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25
  %i.bf = fsub float %i.be, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ag, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store float %i.bg, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Eval8InputsFloat.exit, label %.lr.ph.i, !llvm.loop !129

Eval8InputsFloat.exit:                            ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.bi = sext i32 %i.ad to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx45, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.10.80..sroa_idx, i64 28, i1 false)
  %.sroa.12.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx63, align 8
  %.sroa.14.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %3, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14.0..sroa_idx67, ptr noundef nonnull align 4 dereferenceable(28) %i.j, i64 28, i1 false)
  %.sroa.1468.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx76, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.750.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.10.80..sroa_idx, i64 28, i1 false)
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.al
  store ptr %i.bk, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval7InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ao
  store ptr %i.bl, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval7InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not.i, label %Eval8InputsFloat.exit42.thread, label %.lr.ph.preheader.i36

Eval8InputsFloat.exit42.thread:                   ; preds = %Eval8InputsFloat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i36:                             ; preds = %Eval8InputsFloat.exit
  %wide.trip.count.i37 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check84, label %.lr.ph.i38.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.preheader.i36
  %n.vec86 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat88 = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index90 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load91 = load <4 x float>, ptr %i.bm, align 16, !tbaa !25 ; 2 uses
  %wide.load92 = load <4 x float>, ptr %i.bn, align 16, !tbaa !25 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index90 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load93 = load <4 x float>, ptr %i.bo, align 16, !tbaa !25
  %wide.load94 = load <4 x float>, ptr %i.bp, align 16, !tbaa !25
  %i.bq = fsub <4 x float> %wide.load93, %wide.load91
  %i.br = fsub <4 x float> %wide.load94, %wide.load92
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %broadcast.splat88, <4 x float> %wide.load91)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %broadcast.splat88, <4 x float> %wide.load92)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index90 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 16, !tbaa !25
  store <4 x float> %i.bt, ptr %i.bv, align 16, !tbaa !25
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bw, label %middle.block96, label %vector.body89, !llvm.loop !130

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec86, %wide.trip.count.i37
  br i1 %cmp.n97, label %.lr.ph.preheader, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %.lr.ph.preheader.i36, %middle.block96
  %indvars.iv.i39.ph = phi i64 [ 0, %.lr.ph.preheader.i36 ], [ %n.vec86, %middle.block96 ]
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i40, %.lr.ph.i38 ], [ %indvars.iv.i39.ph, %.lr.ph.i38.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i39
  %i.by = load float, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i39
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !25
  %i.cb = fsub float %i.ca, %i.by
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ag, float %i.by)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i39
  store float %i.cc, ptr %i.cd, align 4, !tbaa !25
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i37
  br i1 %exitcond.not.i41, label %.lr.ph.preheader, label %.lr.ph.i38, !llvm.loop !131

.lr.ph.preheader:                                 ; preds = %.lr.ph.i38, %middle.block96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check100 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check100, label %.lr.ph.preheader118, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.preheader
  %n.vec102 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat104 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body105 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index106 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load107 = load <4 x float>, ptr %i.ce, align 16, !tbaa !25 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cf, align 16, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index106 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load109 = load <4 x float>, ptr %i.cg, align 16, !tbaa !25
  %wide.load110 = load <4 x float>, ptr %i.ch, align 16, !tbaa !25
  %i.ci = fsub <4 x float> %wide.load109, %wide.load107
  %i.cj = fsub <4 x float> %wide.load110, %wide.load108
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %broadcast.splat104, <4 x float> %wide.load107)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %broadcast.splat104, <4 x float> %wide.load108)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index106 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !25
  store <4 x float> %i.cl, ptr %i.cn, align 4, !tbaa !25
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.co, label %middle.block112, label %vector.body105, !llvm.loop !132

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %n.vec102, %wide.trip.count.i37
  br i1 %cmp.n113, label %._crit_edge, label %.lr.ph.preheader118

.lr.ph.preheader118:                              ; preds = %.lr.ph.preheader, %middle.block112
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec102, %middle.block112 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader118, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader118 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !25 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !25
  %i.ct = fsub float %i.cs, %i.cq
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.aa, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph, %middle.block112, %Eval8InputsFloat.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval9Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %i.j = add nsw i32 %i.i, 32767
  %i.k = sdiv i32 %i.j, 65535
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = ashr i32 %i.l, 16                        ; 2 uses
  %i.n = and i32 %i.l, 65535                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = mul i32 %i.m, %i.p
  %.not = icmp ne i16 %i.e, -1
  %i.r = zext i1 %.not to i32
  %i.s = add nsw i32 %i.m, %i.r
  %i.t = mul i32 %i.s, %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  call void @Eval8Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aa
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !19
  call void @Eval8Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ad to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ae, align 16, !tbaa !27 ; 2 uses
  %i.af = zext <8 x i16> %wide.load to <8 x i32>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load30 = load <8 x i16>, ptr %i.ag, align 16, !tbaa !27
  %i.ah = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.ai = sub nsw <8 x i32> %i.ah, %i.af
  %i.aj = mul <8 x i32> %i.ai, %broadcast.splat
  %i.ak = add <8 x i32> %i.aj, splat (i32 32768)
  %i.al = lshr <8 x i32> %i.ak, splat (i32 16)
  %i.am = trunc nuw <8 x i32> %i.al to <8 x i16>
  %i.an = add <8 x i16> %wide.load, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader31 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !27 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !27
  %i.av = zext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.av, %i.as
  %i.ax = mul i32 %i.aw, %i.n
  %i.ay = add i32 %i.ax, 32768
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = add i16 %i.ar, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval10InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.e, f0x3089705F
  %i.f = fcmp ogt float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.e
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = uitofp i32 %i.j to float
  %i.l = fmul float %i.h, %i.k                    ; 2 uses
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.p = ashr i32 %.sroa.0.0.extract.trunc.i, 16  ; 2 uses
  %i.q = sitofp i32 %i.p to float
  %i.r = fsub float %i.l, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.p, %i.t                       ; 2 uses
  %i.v = fcmp ult float %i.h, 1.000000e+00
  %spec.select = select i1 %i.v, i32 %i.t, i32 0
  %i.w = add i32 %i.u, %spec.select
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.x, ptr noundef nonnull align 4 dereferenceable(36) %i.y, i64 36, i1 false)
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @Eval9InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !19
  call void @Eval9InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ag to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 16, !tbaa !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.ai, align 16, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load35 = load <4 x float>, ptr %i.aj, align 16, !tbaa !25
  %wide.load36 = load <4 x float>, ptr %i.ak, align 16, !tbaa !25
  %i.al = fsub <4 x float> %wide.load35, %wide.load
  %i.am = fsub <4 x float> %wide.load36, %wide.load34
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !25
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !25
  %i.aw = fsub float %i.av, %i.at
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.r, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ax, ptr %i.ay, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval10Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 6 uses
  %i.b = alloca [128 x i16], align 16             ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x i16], align 16             ; 5 uses
  %i.d = alloca [128 x i16], align 16             ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x i16], align 16             ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = mul i32 %i.l, %i.j                       ; 2 uses
  %i.n = add nsw i32 %i.m, 32767
  %i.o = sdiv i32 %i.n, 65535
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.q = ashr i32 %i.p, 16                        ; 2 uses
  %i.r = and i32 %i.p, 65535                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.q, %i.t
  %.not = icmp ne i16 %i.i, -1
  %i.v = zext i1 %.not to i32
  %i.w = add nsw i32 %i.q, %i.v
  %i.x = mul i32 %i.w, %i.t
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 172
  %.sroa.1253.0.copyload = load i32, ptr %.sroa.1253.0..sroa_idx, align 4 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.743.80.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !27 ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %i.ad = mul i32 %.sroa.743.80.copyload, %i.ac   ; 2 uses
  %i.ae = add nsw i32 %i.ad, 32767
  %i.af = sdiv i32 %i.ae, 65535
  %i.ag = add nsw i32 %i.af, %i.ad                ; 2 uses
  %i.ah = ashr i32 %i.ag, 16                      ; 2 uses
  %i.ai = and i32 %i.ag, 65535                    ; 4 uses
  %i.aj = mul i32 %i.ah, %.sroa.1253.0.copyload
  %.not.i = icmp ne i16 %i.ab, -1
  %i.ak = zext i1 %.not.i to i32
  %i.al = add nsw i32 %i.ah, %i.ak
  %i.am = mul i32 %i.al, %.sroa.1253.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx41, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.10.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.80..sroa_idx, i64 32, i1 false)
  %.sroa.12.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx51, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %4, i64 172
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx54, align 4
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %4, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.1461.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx67, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.743.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.80..sroa_idx, i64 32, i1 false)
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.an
  store ptr %i.ao, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  call void @Eval8Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aq
  store ptr %i.ar, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  call void @Eval8Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not28.i = icmp eq i32 %.sroa.5.0.copyload, 0  ; 2 uses
  br i1 %.not28.i, label %Eval9Inputs.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
end_hunk_6
begin_hunk_7_@Eval10Inputs:bb.a
  br i1 %exitcond.not.i, label %Eval9Inputs.exit, label %.lr.ph.i, !llvm.loop !139

Eval9Inputs.exit:                                 ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.br = sext i32 %i.x to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.br ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx38, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx42, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.10.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.80..sroa_idx, i64 32, i1 false)
  %.sroa.12.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx52, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx56, align 4
  %.sroa.14.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx60, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.1461.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx69, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.743.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.80..sroa_idx, i64 32, i1 false)
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.an
  store ptr %i.bt, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval8Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.aq
  store ptr %i.bu, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval8Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not28.i, label %Eval9Inputs.exit35.thread, label %.lr.ph.preheader.i29

Eval9Inputs.exit35.thread:                        ; preds = %Eval9Inputs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i29:                             ; preds = %Eval9Inputs.exit
  %wide.trip.count.i30 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check76 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check76, label %.lr.ph.i31.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i29
  %n.vec78 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body81 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index82
  %wide.load83 = load <8 x i16>, ptr %i.bv, align 16, !tbaa !27 ; 2 uses
  %i.bw = zext <8 x i16> %wide.load83 to <8 x i32>
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index82
  %wide.load84 = load <8 x i16>, ptr %i.bx, align 16, !tbaa !27
  %i.by = zext <8 x i16> %wide.load84 to <8 x i32>
  %i.bz = sub nsw <8 x i32> %i.by, %i.bw
  %i.ca = mul <8 x i32> %i.bz, %broadcast.splat80
  %i.cb = add <8 x i32> %i.ca, splat (i32 32768)
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 16)
  %i.cd = trunc nuw <8 x i32> %i.cc to <8 x i16>
  %i.ce = add <8 x i16> %wide.load83, %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index82
  store <8 x i16> %i.ce, ptr %i.cf, align 16, !tbaa !27
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cg, label %middle.block86, label %vector.body81, !llvm.loop !140

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %n.vec78, %wide.trip.count.i30
  br i1 %cmp.n87, label %.lr.ph.preheader, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %.lr.ph.preheader.i29, %middle.block86
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %n.vec78, %middle.block86 ]
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i31 ], [ %indvars.iv.i32.ph, %.lr.ph.i31.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i32
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !27 ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i32
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.cm, %i.cj
  %i.co = mul i32 %i.cn, %i.ai
  %i.cp = add i32 %i.co, 32768
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = add i16 %i.ci, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i32
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !27
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i30
  br i1 %exitcond.not.i34, label %.lr.ph.preheader, label %.lr.ph.i31, !llvm.loop !141

.lr.ph.preheader:                                 ; preds = %.lr.ph.i31, %middle.block86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check90 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check90, label %.lr.ph.preheader103, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph.preheader
  %n.vec92 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body95 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index96
  %wide.load97 = load <8 x i16>, ptr %i.cu, align 16, !tbaa !27 ; 2 uses
  %i.cv = zext <8 x i16> %wide.load97 to <8 x i32>
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index96
  %wide.load98 = load <8 x i16>, ptr %i.cw, align 16, !tbaa !27
  %i.cx = zext <8 x i16> %wide.load98 to <8 x i32>
  %i.cy = sub nsw <8 x i32> %i.cx, %i.cv
  %i.cz = mul <8 x i32> %i.cy, %broadcast.splat94
  %i.da = add <8 x i32> %i.cz, splat (i32 32768)
  %i.db = lshr <8 x i32> %i.da, splat (i32 16)
  %i.dc = trunc nuw <8 x i32> %i.db to <8 x i16>
  %i.dd = add <8 x i16> %wide.load97, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96
  store <8 x i16> %i.dd, ptr %i.de, align 2, !tbaa !27
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.df, label %middle.block100, label %vector.body95, !llvm.loop !142

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %n.vec92, %wide.trip.count.i30
  br i1 %cmp.n101, label %._crit_edge, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %.lr.ph.preheader, %middle.block100
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec92, %middle.block100 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader103, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader103 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !27 ; 2 uses
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !27
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.dl, %i.di
  %i.dn = mul i32 %i.dm, %i.r
  %i.do = add i32 %i.dn, 32768
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = add i16 %i.dh, %i.dq
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph, %middle.block100, %Eval9Inputs.exit35.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval11InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 6 uses
  %i.b = alloca [128 x float], align 16           ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x float], align 16           ; 5 uses
  %i.d = alloca [128 x float], align 16           ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x float], align 16           ; 6 uses
  %i.f = alloca [128 x float], align 16           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.1260.0.copyload = load i32, ptr %.sroa.1260.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 3 uses
  %5 = fcmp ult <2 x float> %i.l, splat (float f0x3089705F)
  %i.m = fcmp ogt <2 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <2 x i1> %i.m, <2 x float> splat (float 1.000000e+00), <2 x float> %i.l
  %i.o = select <2 x i1> %5, <2 x float> zeroinitializer, <2 x float> %i.n ; 2 uses
  %i.p = fcmp ult <2 x float> %i.o, splat (float 1.000000e+00) ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %spec.select = select i1 %i.q, i32 %i.k, i32 0
  %i.r = load <2 x i32>, ptr %i.i, align 8
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 3 uses
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = fadd <2 x double> %i.u, splat (double f0x4238000000000000)
  %i.w = bitcast <2 x double> %i.v to <2 x i64>
  %i.x = trunc <2 x i64> %i.w to <2 x i32>
  %i.y = ashr <2 x i32> %i.x, splat (i32 16)      ; 3 uses
  %i.z = sitofp <2 x i32> %i.y to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.t, %i.z  ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = extractelement <2 x i32> %i.y, i64 0
  %i.ac = mul i32 %i.ab, %i.k                     ; 2 uses
  %i.ad = add i32 %i.ac, %spec.select
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %foldExtExtBinop116 = fsub <2 x float> %i.t, %i.z ; 3 uses
  %i.ag = extractelement <2 x float> %foldExtExtBinop116, i64 1 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 1
  %i.ai = mul i32 %i.ah, %.sroa.1260.0.copyload   ; 2 uses
  %i.aj = extractelement <2 x i1> %i.p, i64 1
  %spec.select.i = select i1 %i.aj, i32 %.sroa.1260.0.copyload, i32 0
  %i.ak = add i32 %i.ai, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx43, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx48, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.10.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.10.80..sroa_idx, i64 36, i1 false)
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %4, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.0..sroa_idx66, ptr noundef nonnull align 4 dereferenceable(20) %i.j, i64 20, i1 false)
  %.sroa.1468.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx74, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.750.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.10.80..sroa_idx, i64 36, i1 false)
  %i.al = sext i32 %i.ai to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @Eval9InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ao
  store ptr %i.ap, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  call void @Eval9InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %.sroa.5.0.copyload, 0    ; 2 uses
  br i1 %.not.i, label %Eval10InputsFloat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x float>, ptr %i.aq, align 16, !tbaa !25 ; 2 uses
  %wide.load80 = load <4 x float>, ptr %i.ar, align 16, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load81 = load <4 x float>, ptr %i.as, align 16, !tbaa !25
  %wide.load82 = load <4 x float>, ptr %i.at, align 16, !tbaa !25
  %i.au = fsub <4 x float> %wide.load81, %wide.load
  %i.av = fsub <4 x float> %wide.load82, %wide.load80
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %wide.load80)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %i.aw, ptr %i.ay, align 16, !tbaa !25
  store <4 x float> %i.ax, ptr %i.az, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Eval10InputsFloat.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25
  %i.bf = fsub float %i.be, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ag, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store float %i.bg, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Eval10InputsFloat.exit, label %.lr.ph.i, !llvm.loop !145

Eval10InputsFloat.exit:                           ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.bi = sext i32 %i.ad to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx45, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.10.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.10.80..sroa_idx, i64 36, i1 false)
  %.sroa.12.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx63, align 8
  %.sroa.14.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %3, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.0..sroa_idx67, ptr noundef nonnull align 4 dereferenceable(20) %i.j, i64 20, i1 false)
  %.sroa.1468.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx76, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.750.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.10.80..sroa_idx, i64 36, i1 false)
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.al
  store ptr %i.bk, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval9InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ao
  store ptr %i.bl, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval9InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not.i, label %Eval10InputsFloat.exit42.thread, label %.lr.ph.preheader.i36

Eval10InputsFloat.exit42.thread:                  ; preds = %Eval10InputsFloat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i36:                             ; preds = %Eval10InputsFloat.exit
  %wide.trip.count.i37 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check84, label %.lr.ph.i38.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.preheader.i36
  %n.vec86 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat88 = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index90 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load91 = load <4 x float>, ptr %i.bm, align 16, !tbaa !25 ; 2 uses
  %wide.load92 = load <4 x float>, ptr %i.bn, align 16, !tbaa !25 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index90 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load93 = load <4 x float>, ptr %i.bo, align 16, !tbaa !25
  %wide.load94 = load <4 x float>, ptr %i.bp, align 16, !tbaa !25
  %i.bq = fsub <4 x float> %wide.load93, %wide.load91
  %i.br = fsub <4 x float> %wide.load94, %wide.load92
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %broadcast.splat88, <4 x float> %wide.load91)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %broadcast.splat88, <4 x float> %wide.load92)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index90 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 16, !tbaa !25
  store <4 x float> %i.bt, ptr %i.bv, align 16, !tbaa !25
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bw, label %middle.block96, label %vector.body89, !llvm.loop !146

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec86, %wide.trip.count.i37
  br i1 %cmp.n97, label %.lr.ph.preheader, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %.lr.ph.preheader.i36, %middle.block96
  %indvars.iv.i39.ph = phi i64 [ 0, %.lr.ph.preheader.i36 ], [ %n.vec86, %middle.block96 ]
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i40, %.lr.ph.i38 ], [ %indvars.iv.i39.ph, %.lr.ph.i38.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i39
  %i.by = load float, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i39
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !25
  %i.cb = fsub float %i.ca, %i.by
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ag, float %i.by)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i39
  store float %i.cc, ptr %i.cd, align 4, !tbaa !25
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i37
  br i1 %exitcond.not.i41, label %.lr.ph.preheader, label %.lr.ph.i38, !llvm.loop !147

.lr.ph.preheader:                                 ; preds = %.lr.ph.i38, %middle.block96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check100 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check100, label %.lr.ph.preheader118, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.preheader
  %n.vec102 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat104 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body105 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index106 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load107 = load <4 x float>, ptr %i.ce, align 16, !tbaa !25 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cf, align 16, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index106 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load109 = load <4 x float>, ptr %i.cg, align 16, !tbaa !25
  %wide.load110 = load <4 x float>, ptr %i.ch, align 16, !tbaa !25
  %i.ci = fsub <4 x float> %wide.load109, %wide.load107
  %i.cj = fsub <4 x float> %wide.load110, %wide.load108
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %broadcast.splat104, <4 x float> %wide.load107)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %broadcast.splat104, <4 x float> %wide.load108)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index106 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !25
  store <4 x float> %i.cl, ptr %i.cn, align 4, !tbaa !25
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.co, label %middle.block112, label %vector.body105, !llvm.loop !148

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %n.vec102, %wide.trip.count.i37
  br i1 %cmp.n113, label %._crit_edge, label %.lr.ph.preheader118

.lr.ph.preheader118:                              ; preds = %.lr.ph.preheader, %middle.block112
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec102, %middle.block112 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader118, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader118 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !25 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !25
  %i.ct = fsub float %i.cs, %i.cq
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.aa, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph, %middle.block112, %Eval10InputsFloat.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval11Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %i.j = add nsw i32 %i.i, 32767
  %i.k = sdiv i32 %i.j, 65535
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = ashr i32 %i.l, 16                        ; 2 uses
  %i.n = and i32 %i.l, 65535                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = mul i32 %i.m, %i.p
  %.not = icmp ne i16 %i.e, -1
  %i.r = zext i1 %.not to i32
  %i.s = add nsw i32 %i.m, %i.r
  %i.t = mul i32 %i.s, %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 4 dereferenceable(40) %i.v, i64 40, i1 false)
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  call void @Eval10Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aa
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !19
  call void @Eval10Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ad to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ae, align 16, !tbaa !27 ; 2 uses
  %i.af = zext <8 x i16> %wide.load to <8 x i32>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load30 = load <8 x i16>, ptr %i.ag, align 16, !tbaa !27
  %i.ah = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.ai = sub nsw <8 x i32> %i.ah, %i.af
  %i.aj = mul <8 x i32> %i.ai, %broadcast.splat
  %i.ak = add <8 x i32> %i.aj, splat (i32 32768)
  %i.al = lshr <8 x i32> %i.ak, splat (i32 16)
  %i.am = trunc nuw <8 x i32> %i.al to <8 x i16>
  %i.an = add <8 x i16> %wide.load, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader31 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !27 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !27
  %i.av = zext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.av, %i.as
  %i.ax = mul i32 %i.aw, %i.n
  %i.ay = add i32 %i.ax, 32768
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = add i16 %i.ar, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval12InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.e, f0x3089705F
  %i.f = fcmp ogt float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.e
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = uitofp i32 %i.j to float
  %i.l = fmul float %i.h, %i.k                    ; 2 uses
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.p = ashr i32 %.sroa.0.0.extract.trunc.i, 16  ; 2 uses
  %i.q = sitofp i32 %i.p to float
  %i.r = fsub float %i.l, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.p, %i.t                       ; 2 uses
  %i.v = fcmp ult float %i.h, 1.000000e+00
  %spec.select = select i1 %i.v, i32 %i.t, i32 0
  %i.w = add i32 %i.u, %spec.select
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.x, ptr noundef nonnull align 4 dereferenceable(44) %i.y, i64 44, i1 false)
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @Eval11InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !19
  call void @Eval11InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ag to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 16, !tbaa !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.ai, align 16, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load35 = load <4 x float>, ptr %i.aj, align 16, !tbaa !25
  %wide.load36 = load <4 x float>, ptr %i.ak, align 16, !tbaa !25
  %i.al = fsub <4 x float> %wide.load35, %wide.load
  %i.am = fsub <4 x float> %wide.load36, %wide.load34
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !25
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !25
  %i.aw = fsub float %i.av, %i.at
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.r, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ax, ptr %i.ay, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval12Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 6 uses
  %i.b = alloca [128 x i16], align 16             ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x i16], align 16             ; 5 uses
  %i.d = alloca [128 x i16], align 16             ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x i16], align 16             ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = mul i32 %i.l, %i.j                       ; 2 uses
  %i.n = add nsw i32 %i.m, 32767
  %i.o = sdiv i32 %i.n, 65535
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.q = ashr i32 %i.p, 16                        ; 2 uses
  %i.r = and i32 %i.p, 65535                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.q, %i.t
  %.not = icmp ne i16 %i.i, -1
  %i.v = zext i1 %.not to i32
  %i.w = add nsw i32 %i.q, %i.v
  %i.x = mul i32 %i.w, %i.t
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 180
  %.sroa.1253.0.copyload = load i32, ptr %.sroa.1253.0..sroa_idx, align 4 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.743.80.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !27 ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %i.ad = mul i32 %.sroa.743.80.copyload, %i.ac   ; 2 uses
  %i.ae = add nsw i32 %i.ad, 32767
  %i.af = sdiv i32 %i.ae, 65535
  %i.ag = add nsw i32 %i.af, %i.ad                ; 2 uses
  %i.ah = ashr i32 %i.ag, 16                      ; 2 uses
  %i.ai = and i32 %i.ag, 65535                    ; 4 uses
  %i.aj = mul i32 %i.ah, %.sroa.1253.0.copyload
  %.not.i = icmp ne i16 %i.ab, -1
  %i.ak = zext i1 %.not.i to i32
  %i.al = add nsw i32 %i.ah, %i.ak
  %i.am = mul i32 %i.al, %.sroa.1253.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx41, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.10.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.80..sroa_idx, i64 40, i1 false)
  %.sroa.12.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx51, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx54, align 4
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %.sroa.1461.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx67, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.743.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.80..sroa_idx, i64 40, i1 false)
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.an
  store ptr %i.ao, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  call void @Eval10Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aq
  store ptr %i.ar, ptr %.sroa.1461.0..sroa_idx62, align 8, !tbaa !19
  call void @Eval10Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not28.i = icmp eq i32 %.sroa.5.0.copyload, 0  ; 2 uses
  br i1 %.not28.i, label %Eval11Inputs.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
end_hunk_7
begin_hunk_8_@Eval12Inputs:bb.a
  br i1 %exitcond.not.i, label %Eval11Inputs.exit, label %.lr.ph.i, !llvm.loop !155

Eval11Inputs.exit:                                ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.br = sext i32 %i.x to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.br ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx38, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx42, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.10.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.80..sroa_idx, i64 40, i1 false)
  %.sroa.12.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx52, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %3, i64 180
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx56, align 4
  %.sroa.14.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx60, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %.sroa.1461.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx69, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.743.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.80..sroa_idx, i64 40, i1 false)
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.an
  store ptr %i.bt, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval10Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.aq
  store ptr %i.bu, ptr %.sroa.1461.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval10Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not28.i, label %Eval11Inputs.exit35.thread, label %.lr.ph.preheader.i29

Eval11Inputs.exit35.thread:                       ; preds = %Eval11Inputs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i29:                             ; preds = %Eval11Inputs.exit
  %wide.trip.count.i30 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check76 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check76, label %.lr.ph.i31.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i29
  %n.vec78 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body81 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index82
  %wide.load83 = load <8 x i16>, ptr %i.bv, align 16, !tbaa !27 ; 2 uses
  %i.bw = zext <8 x i16> %wide.load83 to <8 x i32>
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index82
  %wide.load84 = load <8 x i16>, ptr %i.bx, align 16, !tbaa !27
  %i.by = zext <8 x i16> %wide.load84 to <8 x i32>
  %i.bz = sub nsw <8 x i32> %i.by, %i.bw
  %i.ca = mul <8 x i32> %i.bz, %broadcast.splat80
  %i.cb = add <8 x i32> %i.ca, splat (i32 32768)
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 16)
  %i.cd = trunc nuw <8 x i32> %i.cc to <8 x i16>
  %i.ce = add <8 x i16> %wide.load83, %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index82
  store <8 x i16> %i.ce, ptr %i.cf, align 16, !tbaa !27
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cg, label %middle.block86, label %vector.body81, !llvm.loop !156

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %n.vec78, %wide.trip.count.i30
  br i1 %cmp.n87, label %.lr.ph.preheader, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %.lr.ph.preheader.i29, %middle.block86
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %n.vec78, %middle.block86 ]
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i31 ], [ %indvars.iv.i32.ph, %.lr.ph.i31.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i32
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !27 ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i32
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.cm, %i.cj
  %i.co = mul i32 %i.cn, %i.ai
  %i.cp = add i32 %i.co, 32768
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = add i16 %i.ci, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i32
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !27
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i30
  br i1 %exitcond.not.i34, label %.lr.ph.preheader, label %.lr.ph.i31, !llvm.loop !157

.lr.ph.preheader:                                 ; preds = %.lr.ph.i31, %middle.block86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check90 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check90, label %.lr.ph.preheader103, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph.preheader
  %n.vec92 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body95 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index96
  %wide.load97 = load <8 x i16>, ptr %i.cu, align 16, !tbaa !27 ; 2 uses
  %i.cv = zext <8 x i16> %wide.load97 to <8 x i32>
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index96
  %wide.load98 = load <8 x i16>, ptr %i.cw, align 16, !tbaa !27
  %i.cx = zext <8 x i16> %wide.load98 to <8 x i32>
  %i.cy = sub nsw <8 x i32> %i.cx, %i.cv
  %i.cz = mul <8 x i32> %i.cy, %broadcast.splat94
  %i.da = add <8 x i32> %i.cz, splat (i32 32768)
  %i.db = lshr <8 x i32> %i.da, splat (i32 16)
  %i.dc = trunc nuw <8 x i32> %i.db to <8 x i16>
  %i.dd = add <8 x i16> %wide.load97, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96
  store <8 x i16> %i.dd, ptr %i.de, align 2, !tbaa !27
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.df, label %middle.block100, label %vector.body95, !llvm.loop !158

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %n.vec92, %wide.trip.count.i30
  br i1 %cmp.n101, label %._crit_edge, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %.lr.ph.preheader, %middle.block100
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec92, %middle.block100 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader103, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader103 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !27 ; 2 uses
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !27
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.dl, %i.di
  %i.dn = mul i32 %i.dm, %i.r
  %i.do = add i32 %i.dn, 32768
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = add i16 %i.dh, %i.dq
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !159

._crit_edge:                                      ; preds = %.lr.ph, %middle.block100, %Eval11Inputs.exit35.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval13InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 6 uses
  %i.b = alloca [128 x float], align 16           ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x float], align 16           ; 5 uses
  %i.d = alloca [128 x float], align 16           ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x float], align 16           ; 6 uses
  %i.f = alloca [128 x float], align 16           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.1260.0.copyload = load i32, ptr %.sroa.1260.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 3 uses
  %5 = fcmp ult <2 x float> %i.l, splat (float f0x3089705F)
  %i.m = fcmp ogt <2 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <2 x i1> %i.m, <2 x float> splat (float 1.000000e+00), <2 x float> %i.l
  %i.o = select <2 x i1> %5, <2 x float> zeroinitializer, <2 x float> %i.n ; 2 uses
  %i.p = fcmp ult <2 x float> %i.o, splat (float 1.000000e+00) ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %spec.select = select i1 %i.q, i32 %i.k, i32 0
  %i.r = load <2 x i32>, ptr %i.i, align 8
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 3 uses
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = fadd <2 x double> %i.u, splat (double f0x4238000000000000)
  %i.w = bitcast <2 x double> %i.v to <2 x i64>
  %i.x = trunc <2 x i64> %i.w to <2 x i32>
  %i.y = ashr <2 x i32> %i.x, splat (i32 16)      ; 3 uses
  %i.z = sitofp <2 x i32> %i.y to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.t, %i.z  ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = extractelement <2 x i32> %i.y, i64 0
  %i.ac = mul i32 %i.ab, %i.k                     ; 2 uses
  %i.ad = add i32 %i.ac, %spec.select
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %foldExtExtBinop116 = fsub <2 x float> %i.t, %i.z ; 3 uses
  %i.ag = extractelement <2 x float> %foldExtExtBinop116, i64 1 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 1
  %i.ai = mul i32 %i.ah, %.sroa.1260.0.copyload   ; 2 uses
  %i.aj = extractelement <2 x i1> %i.p, i64 1
  %spec.select.i = select i1 %i.aj, i32 %.sroa.1260.0.copyload, i32 0
  %i.ak = add i32 %i.ai, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx43, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx48, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.10.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.10.80..sroa_idx, i64 44, i1 false)
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %4, i64 188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.0..sroa_idx66, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  %.sroa.1468.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx74, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.750.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.10.80..sroa_idx, i64 44, i1 false)
  %i.al = sext i32 %i.ai to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @Eval11InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ao
  store ptr %i.ap, ptr %.sroa.1468.0..sroa_idx69, align 8, !tbaa !19
  call void @Eval11InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %.sroa.5.0.copyload, 0    ; 2 uses
  br i1 %.not.i, label %Eval12InputsFloat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x float>, ptr %i.aq, align 16, !tbaa !25 ; 2 uses
  %wide.load80 = load <4 x float>, ptr %i.ar, align 16, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load81 = load <4 x float>, ptr %i.as, align 16, !tbaa !25
  %wide.load82 = load <4 x float>, ptr %i.at, align 16, !tbaa !25
  %i.au = fsub <4 x float> %wide.load81, %wide.load
  %i.av = fsub <4 x float> %wide.load82, %wide.load80
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %wide.load80)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %i.aw, ptr %i.ay, align 16, !tbaa !25
  store <4 x float> %i.ax, ptr %i.az, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Eval12InputsFloat.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25
  %i.bf = fsub float %i.be, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ag, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store float %i.bg, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Eval12InputsFloat.exit, label %.lr.ph.i, !llvm.loop !161

Eval12InputsFloat.exit:                           ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.bi = sext i32 %i.ad to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx45, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.10.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.10.80..sroa_idx, i64 44, i1 false)
  %.sroa.12.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx63, align 8
  %.sroa.14.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %3, i64 188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.0..sroa_idx67, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  %.sroa.1468.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx76, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.750.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.10.80..sroa_idx, i64 44, i1 false)
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.al
  store ptr %i.bk, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval11InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ao
  store ptr %i.bl, ptr %.sroa.1468.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval11InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not.i, label %Eval12InputsFloat.exit42.thread, label %.lr.ph.preheader.i36

Eval12InputsFloat.exit42.thread:                  ; preds = %Eval12InputsFloat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i36:                             ; preds = %Eval12InputsFloat.exit
  %wide.trip.count.i37 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check84, label %.lr.ph.i38.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.preheader.i36
  %n.vec86 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat88 = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index90 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load91 = load <4 x float>, ptr %i.bm, align 16, !tbaa !25 ; 2 uses
  %wide.load92 = load <4 x float>, ptr %i.bn, align 16, !tbaa !25 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index90 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load93 = load <4 x float>, ptr %i.bo, align 16, !tbaa !25
  %wide.load94 = load <4 x float>, ptr %i.bp, align 16, !tbaa !25
  %i.bq = fsub <4 x float> %wide.load93, %wide.load91
  %i.br = fsub <4 x float> %wide.load94, %wide.load92
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %broadcast.splat88, <4 x float> %wide.load91)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %broadcast.splat88, <4 x float> %wide.load92)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index90 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 16, !tbaa !25
  store <4 x float> %i.bt, ptr %i.bv, align 16, !tbaa !25
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bw, label %middle.block96, label %vector.body89, !llvm.loop !162

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec86, %wide.trip.count.i37
  br i1 %cmp.n97, label %.lr.ph.preheader, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %.lr.ph.preheader.i36, %middle.block96
  %indvars.iv.i39.ph = phi i64 [ 0, %.lr.ph.preheader.i36 ], [ %n.vec86, %middle.block96 ]
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i40, %.lr.ph.i38 ], [ %indvars.iv.i39.ph, %.lr.ph.i38.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i39
  %i.by = load float, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i39
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !25
  %i.cb = fsub float %i.ca, %i.by
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ag, float %i.by)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i39
  store float %i.cc, ptr %i.cd, align 4, !tbaa !25
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i37
  br i1 %exitcond.not.i41, label %.lr.ph.preheader, label %.lr.ph.i38, !llvm.loop !163

.lr.ph.preheader:                                 ; preds = %.lr.ph.i38, %middle.block96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check100 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check100, label %.lr.ph.preheader118, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.preheader
  %n.vec102 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat104 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body105 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index106 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load107 = load <4 x float>, ptr %i.ce, align 16, !tbaa !25 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.cf, align 16, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index106 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load109 = load <4 x float>, ptr %i.cg, align 16, !tbaa !25
  %wide.load110 = load <4 x float>, ptr %i.ch, align 16, !tbaa !25
  %i.ci = fsub <4 x float> %wide.load109, %wide.load107
  %i.cj = fsub <4 x float> %wide.load110, %wide.load108
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %broadcast.splat104, <4 x float> %wide.load107)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %broadcast.splat104, <4 x float> %wide.load108)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index106 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !25
  store <4 x float> %i.cl, ptr %i.cn, align 4, !tbaa !25
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.co, label %middle.block112, label %vector.body105, !llvm.loop !164

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %n.vec102, %wide.trip.count.i37
  br i1 %cmp.n113, label %._crit_edge, label %.lr.ph.preheader118

.lr.ph.preheader118:                              ; preds = %.lr.ph.preheader, %middle.block112
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec102, %middle.block112 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader118, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader118 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !25 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !25
  %i.ct = fsub float %i.cs, %i.cq
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.aa, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph, %middle.block112, %Eval12InputsFloat.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval13Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [128 x i16], align 16             ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %i.j = add nsw i32 %i.i, 32767
  %i.k = sdiv i32 %i.j, 65535
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = ashr i32 %i.l, 16                        ; 2 uses
  %i.n = and i32 %i.l, 65535                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = mul i32 %i.m, %i.p
  %.not = icmp ne i16 %i.e, -1
  %i.r = zext i1 %.not to i32
  %i.s = add nsw i32 %i.m, %i.r
  %i.t = mul i32 %i.s, %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 4 dereferenceable(48) %i.v, i64 48, i1 false)
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  call void @Eval12Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aa
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !19
  call void @Eval12Inputs(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ad to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ae, align 16, !tbaa !27 ; 2 uses
  %i.af = zext <8 x i16> %wide.load to <8 x i32>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load30 = load <8 x i16>, ptr %i.ag, align 16, !tbaa !27
  %i.ah = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.ai = sub nsw <8 x i32> %i.ah, %i.af
  %i.aj = mul <8 x i32> %i.ai, %broadcast.splat
  %i.ak = add <8 x i32> %i.aj, splat (i32 32768)
  %i.al = lshr <8 x i32> %i.ak, splat (i32 16)
  %i.am = trunc nuw <8 x i32> %i.al to <8 x i16>
  %i.an = add <8 x i16> %wide.load, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader31 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !27 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !27
  %i.av = zext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.av, %i.as
  %i.ax = mul i32 %i.aw, %i.n
  %i.ay = add i32 %i.ax, 32768
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = add i16 %i.ar, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval14InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 5 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.e = load float, ptr %0, align 4, !tbaa !25   ; 3 uses
  %or.cond.i = fcmp ult float %i.e, f0x3089705F
  %i.f = fcmp ogt float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.e
  %i.h = select i1 %or.cond.i, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = uitofp i32 %i.j to float
  %i.l = fmul float %i.h, %i.k                    ; 2 uses
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.p = ashr i32 %.sroa.0.0.extract.trunc.i, 16  ; 2 uses
  %i.q = sitofp i32 %i.p to float
  %i.r = fsub float %i.l, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.p, %i.t                       ; 2 uses
  %i.v = fcmp ult float %i.h, 1.000000e+00
  %spec.select = select i1 %i.v, i32 %i.t, i32 0
  %i.w = add i32 %i.u, %spec.select
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.x, ptr noundef nonnull align 4 dereferenceable(52) %i.y, i64 52, i1 false)
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @Eval13InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !19
  call void @Eval13InputsFloat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.ag to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 16, !tbaa !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.ai, align 16, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load35 = load <4 x float>, ptr %i.aj, align 16, !tbaa !25
  %wide.load36 = load <4 x float>, ptr %i.ak, align 16, !tbaa !25
  %i.al = fsub <4 x float> %wide.load35, %wide.load
  %i.am = fsub <4 x float> %wide.load36, %wide.load34
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !25
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !25
  %i.aw = fsub float %i.av, %i.at
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.r, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ax, ptr %i.ay, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !169

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval14Inputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 6 uses
  %i.b = alloca [128 x i16], align 16             ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x i16], align 16             ; 5 uses
  %i.d = alloca [128 x i16], align 16             ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x i16], align 16             ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = mul i32 %i.l, %i.j                       ; 2 uses
  %i.n = add nsw i32 %i.m, 32767
  %i.o = sdiv i32 %i.n, 65535
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.q = ashr i32 %i.p, 16                        ; 2 uses
  %i.r = and i32 %i.p, 65535                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = mul i32 %i.q, %i.t
  %.not = icmp ne i16 %i.i, -1
  %i.v = zext i1 %.not to i32
  %i.w = add nsw i32 %i.q, %i.v
  %i.x = mul i32 %i.w, %i.t
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 188
  %.sroa.1253.0.copyload = load i32, ptr %.sroa.1253.0..sroa_idx, align 4 ; 4 uses
  %.sroa.14.0.copyload = load i64, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.743.80.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !27 ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %i.ad = mul i32 %.sroa.743.80.copyload, %i.ac   ; 2 uses
  %i.ae = add nsw i32 %i.ad, 32767
  %i.af = sdiv i32 %i.ae, 65535
  %i.ag = add nsw i32 %i.af, %i.ad                ; 2 uses
  %i.ah = ashr i32 %i.ag, 16                      ; 2 uses
  %i.ai = and i32 %i.ag, 65535                    ; 4 uses
  %i.aj = mul i32 %i.ah, %.sroa.1253.0.copyload
  %.not.i = icmp ne i16 %i.ab, -1
  %i.ak = zext i1 %.not.i to i32
  %i.al = add nsw i32 %i.ah, %i.ak
  %i.am = mul i32 %i.al, %.sroa.1253.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx41, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.10.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.80..sroa_idx, i64 48, i1 false)
  %.sroa.12.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx51, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %4, i64 188
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx54, align 4
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx59, align 8, !tbaa !14
  %.sroa.1463.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx69, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.743.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.80..sroa_idx, i64 48, i1 false)
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.an
  store ptr %i.ao, ptr %.sroa.1463.0..sroa_idx64, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  call void @Eval12Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aq
  store ptr %i.ar, ptr %.sroa.1463.0..sroa_idx64, align 8, !tbaa !19
  call void @Eval12Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not28.i = icmp eq i32 %.sroa.5.0.copyload, 0  ; 2 uses
  br i1 %.not28.i, label %Eval13Inputs.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
end_hunk_8
begin_hunk_9_@Eval14Inputs:bb.a
  br i1 %exitcond.not.i, label %Eval13Inputs.exit, label %.lr.ph.i, !llvm.loop !171

Eval13Inputs.exit:                                ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.br = sext i32 %i.x to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.br ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx38, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx42, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.743.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.10.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.80..sroa_idx, i64 48, i1 false)
  %.sroa.12.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx52, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1253.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %3, i64 188
  store i32 %.sroa.1253.0.copyload, ptr %.sroa.1253.0..sroa_idx56, align 4
  %.sroa.14.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx61, align 8, !tbaa !14
  %.sroa.1463.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx71, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.743.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.80..sroa_idx, i64 48, i1 false)
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.an
  store ptr %i.bt, ptr %.sroa.1463.0..sroa_idx66, align 8, !tbaa !19
  call void @Eval12Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.aq
  store ptr %i.bu, ptr %.sroa.1463.0..sroa_idx66, align 8, !tbaa !19
  call void @Eval12Inputs(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not28.i, label %Eval13Inputs.exit35.thread, label %.lr.ph.preheader.i29

Eval13Inputs.exit35.thread:                       ; preds = %Eval13Inputs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i29:                             ; preds = %Eval13Inputs.exit
  %wide.trip.count.i30 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check78 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check78, label %.lr.ph.i31.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.preheader.i29
  %n.vec80 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert81 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph79
  %index84 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body83 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index84
  %wide.load85 = load <8 x i16>, ptr %i.bv, align 16, !tbaa !27 ; 2 uses
  %i.bw = zext <8 x i16> %wide.load85 to <8 x i32>
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index84
  %wide.load86 = load <8 x i16>, ptr %i.bx, align 16, !tbaa !27
  %i.by = zext <8 x i16> %wide.load86 to <8 x i32>
  %i.bz = sub nsw <8 x i32> %i.by, %i.bw
  %i.ca = mul <8 x i32> %i.bz, %broadcast.splat82
  %i.cb = add <8 x i32> %i.ca, splat (i32 32768)
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 16)
  %i.cd = trunc nuw <8 x i32> %i.cc to <8 x i16>
  %i.ce = add <8 x i16> %wide.load85, %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index84
  store <8 x i16> %i.ce, ptr %i.cf, align 16, !tbaa !27
  %index.next87 = add nuw i64 %index84, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.cg, label %middle.block88, label %vector.body83, !llvm.loop !172

middle.block88:                                   ; preds = %vector.body83
  %cmp.n89 = icmp eq i64 %n.vec80, %wide.trip.count.i30
  br i1 %cmp.n89, label %.lr.ph.preheader, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %.lr.ph.preheader.i29, %middle.block88
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %n.vec80, %middle.block88 ]
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i31 ], [ %indvars.iv.i32.ph, %.lr.ph.i31.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i32
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !27 ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i32
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.cm, %i.cj
  %i.co = mul i32 %i.cn, %i.ai
  %i.cp = add i32 %i.co, 32768
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = add i16 %i.ci, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i32
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !27
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i30
  br i1 %exitcond.not.i34, label %.lr.ph.preheader, label %.lr.ph.i31, !llvm.loop !173

.lr.ph.preheader:                                 ; preds = %.lr.ph.i31, %middle.block88
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %wide.trip.count = zext i32 %.sroa.5.0.copyload to i64
  %min.iters.check92 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check92, label %.lr.ph.preheader105, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader
  %n.vec94 = and i64 %wide.trip.count.i30, 4294967288 ; 3 uses
  %broadcast.splatinsert95 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph93
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body97 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index98
  %wide.load99 = load <8 x i16>, ptr %i.cu, align 16, !tbaa !27 ; 2 uses
  %i.cv = zext <8 x i16> %wide.load99 to <8 x i32>
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index98
  %wide.load100 = load <8 x i16>, ptr %i.cw, align 16, !tbaa !27
  %i.cx = zext <8 x i16> %wide.load100 to <8 x i32>
  %i.cy = sub nsw <8 x i32> %i.cx, %i.cv
  %i.cz = mul <8 x i32> %i.cy, %broadcast.splat96
  %i.da = add <8 x i32> %i.cz, splat (i32 32768)
  %i.db = lshr <8 x i32> %i.da, splat (i32 16)
  %i.dc = trunc nuw <8 x i32> %i.db to <8 x i16>
  %i.dd = add <8 x i16> %wide.load99, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index98
  store <8 x i16> %i.dd, ptr %i.de, align 2, !tbaa !27
  %index.next101 = add nuw i64 %index98, 8        ; 2 uses
  %i.df = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.df, label %middle.block102, label %vector.body97, !llvm.loop !174

middle.block102:                                  ; preds = %vector.body97
  %cmp.n103 = icmp eq i64 %n.vec94, %wide.trip.count.i30
  br i1 %cmp.n103, label %._crit_edge, label %.lr.ph.preheader105

.lr.ph.preheader105:                              ; preds = %.lr.ph.preheader, %middle.block102
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec94, %middle.block102 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader105, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader105 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !27 ; 2 uses
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !27
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.dl, %i.di
  %i.dn = mul i32 %i.dm, %i.r
  %i.do = add i32 %i.dn, 32768
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = add i16 %i.dh, %i.dq
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !175

._crit_edge:                                      ; preds = %.lr.ph, %middle.block102, %Eval13Inputs.exit35.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Eval15InputsFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 6 uses
  %i.b = alloca [128 x float], align 16           ; 6 uses
  %3 = alloca %struct._cms_interp_struc, align 8  ; 15 uses
  %i.c = alloca [128 x float], align 16           ; 5 uses
  %i.d = alloca [128 x float], align 16           ; 5 uses
  %4 = alloca %struct._cms_interp_struc, align 8  ; 14 uses
  %i.e = alloca [128 x float], align 16           ; 6 uses
  %i.f = alloca [128 x float], align 16           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.sroa.1260.0.copyload = load i32, ptr %.sroa.1260.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.10.80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !25 ; 3 uses
  %5 = fcmp ult <2 x float> %i.l, splat (float f0x3089705F)
  %i.m = fcmp ogt <2 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <2 x i1> %i.m, <2 x float> splat (float 1.000000e+00), <2 x float> %i.l
  %i.o = select <2 x i1> %5, <2 x float> zeroinitializer, <2 x float> %i.n ; 2 uses
  %i.p = fcmp ult <2 x float> %i.o, splat (float 1.000000e+00) ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %spec.select = select i1 %i.q, i32 %i.k, i32 0
  %i.r = load <2 x i32>, ptr %i.i, align 8
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 3 uses
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = fadd <2 x double> %i.u, splat (double f0x4238000000000000)
  %i.w = bitcast <2 x double> %i.v to <2 x i64>
  %i.x = trunc <2 x i64> %i.w to <2 x i32>
  %i.y = ashr <2 x i32> %i.x, splat (i32 16)      ; 3 uses
  %i.z = sitofp <2 x i32> %i.y to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.t, %i.z  ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = extractelement <2 x i32> %i.y, i64 0
  %i.ac = mul i32 %i.ab, %i.k                     ; 2 uses
  %i.ad = add i32 %i.ac, %spec.select
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %foldExtExtBinop118 = fsub <2 x float> %i.t, %i.z ; 3 uses
  %i.ag = extractelement <2 x float> %foldExtExtBinop118, i64 1 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 1
  %i.ai = mul i32 %i.ah, %.sroa.1260.0.copyload   ; 2 uses
  %i.aj = extractelement <2 x i1> %i.p, i64 1
  %spec.select.i = select i1 %i.aj, i32 %.sroa.1260.0.copyload, i32 0
  %i.ak = add i32 %i.ai, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx43, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx48, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.10.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.10.80..sroa_idx, i64 52, i1 false)
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i32 %i.k, ptr %.sroa.14.0..sroa_idx66, align 4, !tbaa !14
  %.sroa.1470.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx76, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.750.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.10.80..sroa_idx, i64 52, i1 false)
  %i.al = sext i32 %i.ai to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %.sroa.1470.0..sroa_idx71, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @Eval13InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ao
  store ptr %i.ap, ptr %.sroa.1470.0..sroa_idx71, align 8, !tbaa !19
  call void @Eval13InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %.sroa.5.0.copyload, 0    ; 2 uses
  br i1 %.not.i, label %Eval14InputsFloat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop118, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x float>, ptr %i.aq, align 16, !tbaa !25 ; 2 uses
  %wide.load82 = load <4 x float>, ptr %i.ar, align 16, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load83 = load <4 x float>, ptr %i.as, align 16, !tbaa !25
  %wide.load84 = load <4 x float>, ptr %i.at, align 16, !tbaa !25
  %i.au = fsub <4 x float> %wide.load83, %wide.load
  %i.av = fsub <4 x float> %wide.load84, %wide.load82
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %wide.load82)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %i.aw, ptr %i.ay, align 16, !tbaa !25
  store <4 x float> %i.ax, ptr %i.az, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Eval14InputsFloat.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25
  %i.bf = fsub float %i.be, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ag, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store float %i.bg, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Eval14InputsFloat.exit, label %.lr.ph.i, !llvm.loop !177

Eval14InputsFloat.exit:                           ; preds = %.lr.ph.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.bi = sext i32 %i.ad to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx45, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i64 60, i1 false)
  %.sroa.750.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.10.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.10.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.10.80..sroa_idx, i64 52, i1 false)
  %.sroa.12.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  %.sroa.1260.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i32 %.sroa.1260.0.copyload, ptr %.sroa.1260.0..sroa_idx63, align 8
  %.sroa.14.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %3, i64 196
  store i32 %i.k, ptr %.sroa.14.0..sroa_idx68, align 4, !tbaa !14
  %.sroa.1470.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.18.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx78, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.750.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.10.80..sroa_idx, i64 52, i1 false)
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.al
  store ptr %i.bk, ptr %.sroa.1470.0..sroa_idx73, align 8, !tbaa !19
  call void @Eval13InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ao
  store ptr %i.bl, ptr %.sroa.1470.0..sroa_idx73, align 8, !tbaa !19
  call void @Eval13InputsFloat(ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  br i1 %.not.i, label %Eval14InputsFloat.exit42.thread, label %.lr.ph.preheader.i36

Eval14InputsFloat.exit42.thread:                  ; preds = %Eval14InputsFloat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %._crit_edge

.lr.ph.preheader.i36:                             ; preds = %Eval14InputsFloat.exit
  %wide.trip.count.i37 = zext i32 %.sroa.5.0.copyload to i64 ; 5 uses
  %min.iters.check86 = icmp ult i32 %.sroa.5.0.copyload, 8
  br i1 %min.iters.check86, label %.lr.ph.i38.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.preheader.i36
  %n.vec88 = and i64 %wide.trip.count.i37, 4294967288 ; 3 uses
  %broadcast.splat90 = shufflevector <2 x float> %foldExtExtBinop118, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph87
  %index92 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body91 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index92 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load93 = load <4 x float>, ptr %i.bm, align 16, !tbaa !25 ; 2 uses
  %wide.load94 = load <4 x float>, ptr %i.bn, align 16, !tbaa !25 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index92 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load95 = load <4 x float>, ptr %i.bo, align 16, !tbaa !25
  %wide.load96 = load <4 x float>, ptr %i.bp, align 16, !tbaa !25
  %i.bq = fsub <4 x float> %wide.load95, %wide.load93
  %i.br = fsub <4 x float> %wide.load96, %wide.load94
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %broadcast.splat90, <4 x float> %wide.load93)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %broadcast.splat90, <4 x float> %wide.load94)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 16, !tbaa !25
  store <4 x float> %i.bt, ptr %i.bv, align 16, !tbaa !25
  %index.next97 = add nuw i64 %index92, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next97, %n.vec88
  br i1 %i.bw, label %middle.block98, label %vector.body91, !llvm.loop !178

middle.block98:                                   ; preds = %vector.body91
  %cmp.n99 = icmp eq i64 %n.vec88, %wide.trip.count.i37
  br i1 %cmp.n99, label %.lr.ph.preheader, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %.lr.ph.preheader.i36, %middle.block98
  %indvars.iv.i39.ph = phi i64 [ 0, %.lr.ph.preheader.i36 ], [ %n.vec88, %middle.block98 ]
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i40, %.lr.ph.i38 ], [ %indvars.iv.i39.ph, %.lr.ph.i38.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i39
  %i.by = load float, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i39
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !25
  %i.cb = fsub float %i.ca, %i.by
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ag, float %i.by)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i39
end_hunk_9
