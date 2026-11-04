Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@ImageToPOT:bb.a
  %i.q = fdiv float %i.p, f0x3F317218
  %i.r = tail call float @llvm.ceil.f32(float %i.q)
  %exp2f11 = tail call float @exp2f(float %i.r) #52
  %i.s = fptosi float %exp2f11 to i32             ; 2 uses
  %i.t = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.t, %i.m
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.f, align 4
  %.not12 = icmp eq i32 %i.u, %i.s
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ImageResizeCanvas(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, i32 %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #17

; Function Attrs: nounwind uwtable
define void @ImageAlphaCrop(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #34 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %GetImageAlphaBorder.exit, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.d
  %i.j = icmp sgt i32 %.sroa.4.0.copyload, 0
  br i1 %i.j, label %.preheader.lr.ph.i, label %._crit_edge64.thread.i

.preheader.lr.ph.i:                               ; preds = %.preheader50.i
  %i.k = icmp sgt i32 %.sroa.3.0.copyload, 0
  %i.l = fmul float %1, 2.550000e+02
  %i.m = fptoui float %i.l to i8                  ; 3 uses
  br i1 %i.k, label %.preheader.us.preheader.i, label %._crit_edge64.thread.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.n = zext nneg i32 %.sroa.3.0.copyload to i64 ; 3 uses
  %wide.trip.count77.i = zext nneg i32 %.sroa.4.0.copyload to i64
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %.sroa.3.0.copyload, 1
  %unroll_iter = and i64 %i.n, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %.sroa.3.0.copyload to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv74.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next75.i, %._crit_edge.us.i ] ; 3 uses
  %.063.us.i = phi i32 [ 65536, %.preheader.us.preheader.i ], [ %.3.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.03661.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %.238.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.03960.us.i = phi i32 [ 65536, %.preheader.us.preheader.i ], [ %.342.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.04359.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %.346.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.p = mul nuw nsw i64 %indvars.iv74.i, %i.n
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv74.i to i32 ; 6 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.h ], [ 0, %.preheader.us.i ] ; 4 uses
  %.155.us.i = phi i32 [ %.3.us.i.1, %bb.h ], [ %.063.us.i, %.preheader.us.i ] ; 2 uses
  %.13753.us.i = phi i32 [ %.238.us.i.1, %bb.h ], [ %.03661.us.i, %.preheader.us.i ] ; 2 uses
  %.14052.us.i = phi i32 [ %.342.us.i.1, %bb.h ], [ %.03960.us.i, %.preheader.us.i ] ; 2 uses
  %.14451.us.i = phi i32 [ %.346.us.i.1, %bb.h ], [ %.04359.us.i, %.preheader.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.preheader.us.i ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp ugt i8 %i.u, %i.m
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.us.i.new
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %spec.select.us.i = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %.155.us.i)
  %.245.us.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %.14451.us.i)
  %.241.us.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.14052.us.i)
  %spec.select49.us.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.13753.us.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.new
  %.346.us.i = phi i32 [ %.14451.us.i, %.preheader.us.i.new ], [ %.245.us.i, %bb.e ] ; 2 uses
  %.342.us.i = phi i32 [ %.14052.us.i, %.preheader.us.i.new ], [ %.241.us.i, %bb.e ] ; 2 uses
  %.238.us.i = phi i32 [ %.13753.us.i, %.preheader.us.i.new ], [ %spec.select49.us.i, %bb.e ] ; 2 uses
  %.3.us.i = phi i32 [ %.155.us.i, %.preheader.us.i.new ], [ %spec.select.us.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp ugt i8 %i.z, %i.m
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %spec.select.us.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %.3.us.i)
  %.245.us.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %.346.us.i)
  %.241.us.i.1 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.342.us.i)
  %spec.select49.us.i.1 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.238.us.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.346.us.i.1 = phi i32 [ %.346.us.i, %bb.f ], [ %.245.us.i.1, %bb.g ] ; 3 uses
  %.342.us.i.1 = phi i32 [ %.342.us.i, %bb.f ], [ %.241.us.i.1, %bb.g ] ; 3 uses
  %.238.us.i.1 = phi i32 [ %.238.us.i, %bb.f ], [ %spec.select49.us.i.1, %bb.g ] ; 3 uses
  %.3.us.i.1 = phi i32 [ %.3.us.i, %bb.f ], [ %spec.select.us.i.1, %bb.g ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.155.us.i.epil.init = phi i32 [ %.063.us.i, %.preheader.us.i ], [ %.3.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.13753.us.i.epil.init = phi i32 [ %.03661.us.i, %.preheader.us.i ], [ %.238.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.14052.us.i.epil.init = phi i32 [ %.03960.us.i, %.preheader.us.i ], [ %.342.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.14451.us.i.epil.init = phi i32 [ %.04359.us.i, %.preheader.us.i ], [ %.346.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.epil.init
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp ugt i8 %i.ae, %i.m
  br i1 %i.af, label %bb.i, label %._crit_edge.us.i

bb.i:                                             ; preds = %.epil.preheader
  %i.ag = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32 ; 2 uses
  %spec.select.us.i.epil = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %.155.us.i.epil.init)
  %.245.us.i.epil = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.14451.us.i.epil.init)
  %.241.us.i.epil = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.14052.us.i.epil.init)
  %spec.select49.us.i.epil = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.13753.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.epil.preheader, %bb.i, %._crit_edge.us.i.unr-lcssa
  %.346.us.i.lcssa = phi i32 [ %.346.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.14451.us.i.epil.init, %.epil.preheader ], [ %.245.us.i.epil, %bb.i ] ; 3 uses
  %.342.us.i.lcssa = phi i32 [ %.342.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.14052.us.i.epil.init, %.epil.preheader ], [ %.241.us.i.epil, %bb.i ] ; 3 uses
  %.238.us.i.lcssa = phi i32 [ %.238.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.13753.us.i.epil.init, %.epil.preheader ], [ %spec.select49.us.i.epil, %bb.i ] ; 2 uses
  %.3.us.i.lcssa = phi i32 [ %.3.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.155.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.i ] ; 4 uses
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count77.i
  br i1 %exitcond78.not.i, label %._crit_edge64.i, label %.preheader.us.i

._crit_edge64.i:                                  ; preds = %._crit_edge.us.i
  %i.ah = icmp ne i32 %.3.us.i.lcssa, 65536
  %i.ai = icmp ne i32 %.346.us.i.lcssa, 65536
  %or.cond.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.j, label %._crit_edge64.thread.i

bb.j:                                             ; preds = %._crit_edge64.i
  %i.aj = add nuw nsw i32 %.346.us.i.lcssa, 1
  %i.ak = sub i32 %i.aj, %.3.us.i.lcssa
  %reass.sub = sub i32 %.238.us.i.lcssa, %.342.us.i.lcssa
  %i.al = add i32 %reass.sub, 1
  %i.am = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %.342.us.i.lcssa, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %.3.us.i.lcssa, i64 3
  %i.aq = sitofp <4 x i32> %i.ap to <4 x float>   ; 2 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  br label %._crit_edge64.thread.i

._crit_edge64.thread.i:                           ; preds = %bb.j, %._crit_edge64.i, %.preheader.lr.ph.i, %.preheader50.i
  %.sroa.030.0.i = phi <2 x float> [ %i.ar, %bb.j ], [ zeroinitializer, %._crit_edge64.i ], [ zeroinitializer, %.preheader50.i ], [ zeroinitializer, %.preheader.lr.ph.i ]
  %.sroa.432.0.i = phi <2 x float> [ %i.as, %bb.j ], [ zeroinitializer, %._crit_edge64.i ], [ zeroinitializer, %.preheader50.i ], [ zeroinitializer, %.preheader.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.i) #52
  br label %GetImageAlphaBorder.exit

GetImageAlphaBorder.exit:                         ; preds = %bb.d, %._crit_edge64.thread.i
  %.sroa.030.1.i = phi <2 x float> [ %.sroa.030.0.i, %._crit_edge64.thread.i ], [ zeroinitializer, %bb.d ]
  %.sroa.432.1.i = phi <2 x float> [ %.sroa.432.0.i, %._crit_edge64.thread.i ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.at = fptosi <2 x float> %.sroa.432.1.i to <2 x i32>
  %2 = icmp eq <2 x i32> %i.at, zeroinitializer   ; 2 uses
  %3 = extractelement <2 x i1> %2, i64 0
  %4 = extractelement <2 x i1> %2, i64 1
  %or.cond = select i1 %3, i1 true, i1 %4
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %GetImageAlphaBorder.exit
  tail call void @ImageCrop(ptr noundef nonnull %0, <2 x float> %.sroa.030.1.i, <2 x float> %.sroa.432.1.i)
  br label %bb.l

bb.l:                                             ; preds = %GetImageAlphaBorder.exit, %bb.k, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @GetImageAlphaBorder(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %.preheader50

.preheader50:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge64.thread

.preheader.lr.ph:                                 ; preds = %.preheader50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = fmul float %1, 2.550000e+02
  %i.i = fptoui float %i.h to i8                  ; 3 uses
  br i1 %i.g, label %.preheader.us.preheader, label %._crit_edge64.thread

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.j = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count77 = zext nneg i32 %i.c to i64
  %xtraiter = and i64 %i.j, 1
  %i.k = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %i.j, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %i.f to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv74 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next75, %._crit_edge.us ] ; 3 uses
  %.063.us = phi i32 [ 65536, %.preheader.us.preheader ], [ %.3.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.03661.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.238.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.03960.us = phi i32 [ 65536, %.preheader.us.preheader ], [ %.342.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.04359.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.346.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.l = mul nuw nsw i64 %indvars.iv74, %i.j
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv74 to i32   ; 6 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader.us ] ; 4 uses
  %.155.us = phi i32 [ %.3.us.1, %bb.e ], [ %.063.us, %.preheader.us ] ; 2 uses
  %.13753.us = phi i32 [ %.238.us.1, %bb.e ], [ %.03661.us, %.preheader.us ] ; 2 uses
  %.14052.us = phi i32 [ %.342.us.1, %bb.e ], [ %.03960.us, %.preheader.us ] ; 2 uses
  %.14451.us = phi i32 [ %.346.us.1, %bb.e ], [ %.04359.us, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp ugt i8 %i.q, %i.i
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.us.new
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.155.us)
  %.245.us = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %.14451.us)
  %.241.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us)
  %spec.select49.us = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.new
  %.346.us = phi i32 [ %.14451.us, %.preheader.us.new ], [ %.245.us, %bb.b ] ; 2 uses
  %.342.us = phi i32 [ %.14052.us, %.preheader.us.new ], [ %.241.us, %bb.b ] ; 2 uses
  %.238.us = phi i32 [ %.13753.us, %.preheader.us.new ], [ %spec.select49.us, %bb.b ] ; 2 uses
  %.3.us = phi i32 [ %.155.us, %.preheader.us.new ], [ %spec.select.us, %bb.b ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp ugt i8 %i.v, %i.i
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %spec.select.us.1 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.3.us)
  %.245.us.1 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.346.us)
  %.241.us.1 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.342.us)
  %spec.select49.us.1 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.238.us)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.346.us.1 = phi i32 [ %.346.us, %bb.c ], [ %.245.us.1, %bb.d ] ; 3 uses
  %.342.us.1 = phi i32 [ %.342.us, %bb.c ], [ %.241.us.1, %bb.d ] ; 3 uses
  %.238.us.1 = phi i32 [ %.238.us, %bb.c ], [ %spec.select49.us.1, %bb.d ] ; 3 uses
  %.3.us.1 = phi i32 [ %.3.us, %bb.c ], [ %spec.select.us.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.155.us.epil.init = phi i32 [ %.063.us, %.preheader.us ], [ %.3.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13753.us.epil.init = phi i32 [ %.03661.us, %.preheader.us ], [ %.238.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14052.us.epil.init = phi i32 [ %.03960.us, %.preheader.us ], [ %.342.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14451.us.epil.init = phi i32 [ %.04359.us, %.preheader.us ], [ %.346.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp ugt i8 %i.aa, %i.i
  br i1 %i.ab, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %.epil.preheader
  %i.ac = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %spec.select.us.epil = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %.155.us.epil.init)
  %.245.us.epil = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %.14451.us.epil.init)
  %.241.us.epil = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us.epil.init)
  %spec.select49.us.epil = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.f, %._crit_edge.us.unr-lcssa
  %.346.us.lcssa = phi i32 [ %.346.us.1, %._crit_edge.us.unr-lcssa ], [ %.14451.us.epil.init, %.epil.preheader ], [ %.245.us.epil, %bb.f ] ; 3 uses
  %.342.us.lcssa = phi i32 [ %.342.us.1, %._crit_edge.us.unr-lcssa ], [ %.14052.us.epil.init, %.epil.preheader ], [ %.241.us.epil, %bb.f ] ; 3 uses
  %.238.us.lcssa = phi i32 [ %.238.us.1, %._crit_edge.us.unr-lcssa ], [ %.13753.us.epil.init, %.epil.preheader ], [ %spec.select49.us.epil, %bb.f ] ; 2 uses
  %.3.us.lcssa = phi i32 [ %.3.us.1, %._crit_edge.us.unr-lcssa ], [ %.155.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.f ] ; 4 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge64, label %.preheader.us

._crit_edge64:                                    ; preds = %._crit_edge.us
  %i.ad = icmp ne i32 %.3.us.lcssa, 65536
  %i.ae = icmp ne i32 %.346.us.lcssa, 65536
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge64.thread

bb.g:                                             ; preds = %._crit_edge64
  %i.af = add nuw nsw i32 %.346.us.lcssa, 1
  %i.ag = sub i32 %i.af, %.3.us.lcssa
  %reass.sub = sub i32 %.238.us.lcssa, %.342.us.lcssa
  %i.ah = add i32 %reass.sub, 1
  %i.ai = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.ag, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %.342.us.lcssa, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %.3.us.lcssa, i64 3
  %i.am = sitofp <4 x i32> %i.al to <4 x float>   ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge64.thread

._crit_edge64.thread:                             ; preds = %.preheader.lr.ph, %.preheader50, %bb.g, %._crit_edge64
  %.sroa.030.0 = phi <2 x float> [ %i.an, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  %.sroa.432.0 = phi <2 x float> [ %i.ao, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge64.thread, %bb.a
  %.sroa.030.1 = phi <2 x float> [ %.sroa.030.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.sroa.432.1 = phi <2 x float> [ %.sroa.432.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.432.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @ImageAlphaClear(ptr nofree noundef readonly captures(none) %0, i32 %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %1 to i8   ; 3 uses
  %.sroa.7.0.extract.shift = lshr i32 %1, 8
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %1, 16
  %.sroa.12.0.extract.trunc = trunc i32 %.sroa.12.0.extract.shift to i8 ; 2 uses
  %.sroa.17.0.extract.shift = lshr i32 %1, 24
  %.sroa.17.0.extract.trunc = trunc nuw i32 %.sroa.17.0.extract.shift to i8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 13 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@ImageDrawRectangleRec:bb.a
  %.sroa.17.5 = select i1 %i.s, <2 x float> %.sroa.17.4, <2 x float> %.sroa.17.12.vec.insert93 ; 3 uses
  %i.u = fcmp ult float %.sroa.039.0.vec.extract44, %i.n
  %i.v = fcmp ult float %.sroa.039.4.vec.extract57.pre-phi, %i.r
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.sroa.17.8.vec.extract76 = extractelement <2 x float> %.sroa.17.5, i64 0
  %foldExtExtBinop115 = fadd <2 x float> %.sroa.039.1, %.sroa.17.5
  %i.w = extractelement <2 x float> %foldExtExtBinop115, i64 0
  %i.x = fcmp ugt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.sroa.17.12.vec.extract95 = extractelement <2 x float> %.sroa.17.5, i64 1 ; 2 uses
  %i.y = fadd float %.sroa.039.4.vec.extract57.pre-phi, %.sroa.17.12.vec.extract95
  %i.z = fcmp ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = fptosi float %.sroa.039.4.vec.extract57.pre-phi to i32 ; 2 uses
  %i.ab = fptosi float %.sroa.039.0.vec.extract44 to i32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @GetPixelDataSize(i32 noundef 1, i32 noundef 1, i32 noundef %i.ad) ; 7 uses
  tail call void @ImageDrawPixel(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.aa, i32 %3)
  %i.af = load i32, ptr %i.c, align 8
  %i.ag = mul nsw i32 %i.af, %i.aa
  %i.ah = add nsw i32 %i.ag, %i.ab
  %i.ai = mul nsw i32 %i.ah, %i.ae
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 8 uses
  %i.am = fptosi float %.sroa.17.8.vec.extract76 to i32 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.ao = fptosi float %.sroa.17.12.vec.extract95 to i32 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph106, label %.loopexit

.lr.ph106:                                        ; preds = %._crit_edge
  %i.aq = mul nsw i32 %i.ae, %i.am
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = add nsw i32 %i.ao, -1                   ; 3 uses
  %xtraiter = and i32 %i.as, 1
  %i.at = icmp eq i32 %i.ao, 2
  br i1 %i.at, label %.epil.preheader, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter = and i32 %i.as, -2
  br label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.098103 = phi i32 [ %i.ba, %.lr.ph ], [ 1, %bb.g ] ; 4 uses
  %i.au = sub nsw i32 %i.am, %.098103
  %.098. = tail call i32 @llvm.smin.i32(i32 %.098103, i32 %i.au)
  %i.av = mul nsw i32 %.098103, %i.ae
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %i.aw
  %i.ay = mul nsw i32 %.098., %i.ae
  %i.az = sext i32 %i.ay to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.al, i64 %i.az, i1 false)
  %i.ba = shl nsw i32 %.098103, 1                 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.am
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.h, %.lr.ph106.new
  %.0104 = phi i32 [ 1, %.lr.ph106.new ], [ %i.bn, %bb.h ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph106.new ], [ %niter.next.1, %bb.h ]
  %i.bc = load i32, ptr %i.c, align 8
  %i.bd = mul i32 %.0104, %i.ae
  %i.be = mul i32 %i.bd, %i.bc
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.al, i64 %i.ar, i1 false)
  %i.bh = add nuw nsw i32 %.0104, 1
  %i.bi = load i32, ptr %i.c, align 8
  %i.bj = mul i32 %i.bh, %i.ae
  %i.bk = mul i32 %i.bj, %i.bi
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.al, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.al, i64 %i.ar, i1 false)
  %i.bn = add nuw nsw i32 %.0104, 2               ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph106
  %.0104.epil.init = phi i32 [ 1, %.lr.ph106 ], [ %i.bn, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod117 = trunc i32 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.bo = load i32, ptr %i.c, align 8
  %i.bp = mul i32 %.0104.epil.init, %i.ae
  %i.bq = mul i32 %i.bp, %i.bo
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.al, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.al, i64 %i.ar, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.e, %bb.f, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 %3) local_unnamed_addr #39 {
bb.a:
  %i.a = fptosi <2 x float> %1 to <2 x i32>
  %i.b = sitofp <2 x i32> %i.a to <2 x float>
  %i.c = fptosi <2 x float> %2 to <2 x i32>
  %i.d = sitofp <2 x i32> %i.c to <2 x float>
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.b, <2 x float> %i.d, i32 %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleLines(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 noundef %3, i32 %4) local_unnamed_addr #39 {
bb.a:
  %.sroa.016.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.016.0.vec.extract to i32
  %i.b = sitofp i32 %i.a to float                 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %i.d = fptosi <2 x float> %i.c to <2 x i32>
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 2 uses
  %i.f = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %.sroa.9.12.vec.extract = extractelement <2 x float> %2, i64 1
  %i.g = shl nsw i32 %3, 1
  %i.h = sitofp i32 %i.g to float
  %i.i = fsub float %.sroa.9.12.vec.extract, %i.h
  %i.j = fptosi float %i.i to i32
  %i.k = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.l = insertelement <2 x i32> %i.k, i32 %i.j, i64 1
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 5 uses
  %.sroa.3.12.vec.insert.i = shufflevector <2 x float> %i.e, <2 x float> %i.m, <2 x i32> <i32 1, i32 2> ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.f, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  %shift = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.m
  %i.n = fadd <2 x float> %1, %2
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fsub <2 x float> %i.n, %i.o              ; 2 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.r = fptosi <2 x float> %i.q to <2 x i32>
  %i.s = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  %i.t = insertelement <2 x float> %i.s, float %i.b, i64 0
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.t, <2 x float> %i.m, i32 %4)
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.s, <2 x float> %i.m, i32 %4)
  %i.u = extractelement <2 x float> %i.p, i64 1
  %i.v = fptosi float %i.u to i32
  %i.w = sitofp i32 %i.v to float
  %.sroa.0.4.vec.insert.i46 = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.w, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i46, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangle(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = fcmp ogt <2 x float> %1, %2
  %i.c = select <2 x i1> %i.b, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.d = fcmp ogt <2 x float> %i.c, %3
  %i.e = select <2 x i1> %i.d, <2 x float> %i.c, <2 x float> %3
  %i.f = fptosi <2 x float> %i.e to <2 x i32>
  %i.g = load <2 x i32>, ptr %i.a, align 8
  %i.h = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.g, <2 x i32> %i.f) ; 3 uses
  %i.i = fcmp olt <2 x float> %1, %2
  %i.j = select <2 x i1> %i.i, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.k = fcmp olt <2 x float> %i.j, %3
  %i.l = select <2 x i1> %i.k, <2 x float> %i.j, <2 x float> %3
  %i.m = fptosi <2 x float> %i.l to <2 x i32>
  %i.n = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.m, <2 x i32> zeroinitializer) ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %3, %2
  %foldExtExtBinop223 = fsub <2 x float> %2, %3
  %foldExtExtBinop225 = fsub <2 x float> %1, %3
  %i.o = shufflevector <2 x float> %foldExtExtBinop225, <2 x float> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %i.p = fptosi <2 x float> %i.o to <2 x i32>     ; 2 uses
  %i.q = fsub <2 x float> %3, %1                  ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %foldExtExtBinop223, <2 x i32> <i32 0, i32 2>
  %i.t = fptosi <2 x float> %i.s to <2 x i32>     ; 2 uses
  %i.u = fsub <2 x float> %2, %1                  ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.r              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = extractelement <2 x float> %i.v, i64 1
  %i.y = fcmp ogt float %i.w, %i.x                ; 3 uses
  %foldExtExtBinop227 = fsub <2 x float> %1, %2
  %i.z = shufflevector <2 x float> %i.u, <2 x float> %foldExtExtBinop227, <2 x i32> <i32 1, i32 2>
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 2 uses
  %i.ab = sub nsw <2 x i32> zeroinitializer, %i.p
  %i.ac = sub nsw <2 x i32> zeroinitializer, %i.t
  %i.ad = sub nsw <2 x i32> zeroinitializer, %i.aa
  %i.ae = select i1 %i.y, <2 x i32> %i.ac, <2 x i32> %i.t ; 2 uses
  %i.af = select i1 %i.y, <2 x i32> %i.ab, <2 x i32> %i.p ; 2 uses
  %i.ag = select i1 %i.y, <2 x i32> %i.ad, <2 x i32> %i.aa ; 3 uses
  %i.ah = icmp sgt <2 x i32> %i.n, %i.h           ; 2 uses
  %5 = extractelement <2 x i1> %i.ah, i64 0
  %6 = extractelement <2 x i1> %i.ah, i64 1
  %or.cond = select i1 %6, i1 true, i1 %5
  br i1 %or.cond, label %._crit_edge210.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.ai = uitofp nneg <2 x i32> %i.n to <2 x float> ; 3 uses
  %i.aj = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ak = fsub <2 x float> %i.ai, %1
  %i.al = fmul <2 x float> %i.ak, %i.aj
  %i.am = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.al)
  %i.an = fptosi float %i.am to i32
  %i.ao = sitofp <2 x i32> %i.af to <2 x float>
  %i.ap = sitofp <2 x i32> %i.ae to <2 x float>
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 0, i32 2>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = fmul <2 x float> %i.as, %i.ao
  %i.au = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.av = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 3>
  %i.aw = fsub <2 x float> %i.au, %i.av
  %i.ax = fmul <2 x float> %i.aw, %i.ap
  %i.ay = fadd <2 x float> %i.at, %i.ax
  %i.az = fptosi <2 x float> %i.ay to <2 x i32>
  %i.ba = extractelement <2 x i32> %i.n, i64 1
  %i.bb = extractelement <2 x i32> %i.n, i64 0
  %i.bc = extractelement <2 x i32> %i.ag, i64 1
  %i.bd = extractelement <2 x i32> %i.h, i64 1
  %i.be = extractelement <2 x i32> %i.ag, i64 0
  %i.bf = extractelement <2 x i32> %i.h, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0183209 = phi i32 [ %i.bj, %._crit_edge ], [ %i.ba, %.preheader.preheader ] ; 3 uses
  %.0184208 = phi i32 [ %i.bi, %._crit_edge ], [ %i.an, %.preheader.preheader ] ; 2 uses
  %i.bg = phi <2 x i32> [ %i.bh, %._crit_edge ], [ %i.az, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge210.split:                             ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.d
  %i.bh = add nsw <2 x i32> %i.bg, %i.ae
  %i.bi = add nsw i32 %.0184208, %i.bc
  %i.bj = add nuw i32 %.0183209, 1
  %exitcond211.not = icmp eq i32 %.0183209, %i.bd
  br i1 %exitcond211.not, label %._crit_edge210.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.d
  %.0204 = phi i32 [ %i.bb, %.preheader ], [ %i.bq, %bb.d ] ; 3 uses
  %.0180203 = phi i32 [ %.0184208, %.preheader ], [ %i.bp, %bb.d ] ; 2 uses
  %i.bk = phi <2 x i32> [ %i.bg, %.preheader ], [ %i.bo, %bb.d ] ; 3 uses
  %shift = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop229 = or <2 x i32> %i.bk, %shift
  %i.bl = extractelement <2 x i32> %foldExtExtBinop229, i64 0
  %i.bm = or i32 %i.bl, %.0180203
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %.0204, i32 noundef %.0183209, i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bo = add nsw <2 x i32> %i.bk, %i.af
  %i.bp = add nsw i32 %.0180203, %i.be
  %i.bq = add nuw i32 %.0204, 1
  %exitcond.not = icmp eq i32 %.0204, %i.bf
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleEx(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #38 {
bb.a:
  %.sroa.280.0.extract.shift = lshr i32 %5, 8
  %.sroa.482.0.extract.shift = lshr i32 %5, 24
  %i.a = fcmp olt <2 x float> %1, %2
  %i.b = select <2 x i1> %i.a, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.c = fcmp olt <2 x float> %i.b, %3
  %i.d = select <2 x i1> %i.c, <2 x float> %i.b, <2 x float> %3
  %i.e = fptosi <2 x float> %i.d to <2 x i32>
  %i.f = fcmp ogt <2 x float> %1, %2
  %i.g = select <2 x i1> %i.f, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.h = fcmp ogt <2 x float> %i.g, %3
  %i.i = select <2 x i1> %i.h, <2 x float> %i.g, <2 x float> %3 ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fptosi float %i.j to i32
  %i.l = extractelement <2 x float> %i.i, i64 1
  %i.m = fptosi float %i.l to i32
  %i.n = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.e, <2 x i32> zeroinitializer) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.k) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %.0210 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.m) ; 2 uses
  %.sroa.385.0.extract.shift = lshr i32 %4, 16
  %i.s = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.t = insertelement <4 x i32> %i.s, i32 %4, i64 1
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = lshr <4 x i32> %i.u, <i32 16, i32 8, i32 0, i32 24>
  %i.w = fsub <2 x float> %2, %1                  ; 2 uses
  %i.x = fsub <2 x float> %3, %1                  ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.z = fmul <2 x float> %i.w, %i.y              ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = fcmp ogt float %i.aa, %i.ab
  %foldExtExtBinop = fsub <2 x float> %3, %2
  %foldExtExtBinop253 = fsub <2 x float> %2, %3
  %foldExtExtBinop255 = fsub <2 x float> %1, %3
  %i.ad = shufflevector <2 x float> %foldExtExtBinop255, <2 x float> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>   ; 4 uses
  %i.af = shufflevector <2 x float> %i.x, <2 x float> %foldExtExtBinop253, <2 x i32> <i32 0, i32 2>
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>   ; 4 uses
  %foldExtExtBinop257 = fsub <2 x float> %1, %2
  %i.ah = shufflevector <2 x float> %i.w, <2 x float> %foldExtExtBinop257, <2 x i32> <i32 1, i32 2>
  %i.ai = fptosi <2 x float> %i.ah to <2 x i32>   ; 2 uses
  %i.aj = shufflevector <2 x i32> %i.ae, <2 x i32> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.ak = shufflevector <2 x i32> %i.ag, <2 x i32> %i.ae, <2 x i32> <i32 0, i32 3>
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = sub nsw <2 x i32> zeroinitializer, %i.ae ; 3 uses
  %i.am = sub nsw <2 x i32> zeroinitializer, %i.ag ; 3 uses
  %i.an = sub nsw <2 x i32> zeroinitializer, %i.ai
  %i.ao = shufflevector <2 x i32> %i.al, <2 x i32> %i.am, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <2 x i32> %i.am, <2 x i32> %i.al, <2 x i32> <i32 0, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = phi <2 x i32> [ %i.am, %bb.b ], [ %i.ag, %bb.a ]
  %i.ar = phi <2 x i32> [ %i.ao, %bb.b ], [ %i.aj, %bb.a ]
  %i.as = phi <2 x i32> [ %i.ap, %bb.b ], [ %i.ak, %bb.a ]
  %i.at = phi <2 x i32> [ %i.al, %bb.b ], [ %i.ae, %bb.a ]
  %i.au = phi <2 x i32> [ %i.an, %bb.b ], [ %i.ai, %bb.a ] ; 3 uses
  %i.av = uitofp nneg <2 x i32> %i.n to <2 x float> ; 3 uses
  %i.aw = sitofp <2 x i32> %i.as to <2 x float>
  %i.ax = sitofp <2 x i32> %i.ar to <2 x float>
  %i.ay = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.az = fsub <2 x float> %i.av, %i.ay
  %i.ba = fmul <2 x float> %i.az, %i.ax
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 3, i32 0>
  %i.bd = fsub <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.bd, %i.aw
  %i.bf = fadd <2 x float> %i.ba, %i.be
  %i.bg = fptosi <2 x float> %i.bf to <2 x i32>   ; 3 uses
  %i.bh = sitofp <2 x i32> %i.au to <2 x float>
  %i.bi = fsub <2 x float> %i.av, %1
  %i.bj = fmul <2 x float> %i.bi, %i.bh           ; 2 uses
  %shift = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop259 = fadd <2 x float> %i.bj, %shift
  %i.bk = extractelement <2 x float> %foldExtExtBinop259, i64 0
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = extractelement <2 x i32> %i.bg, i64 0
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = extractelement <2 x i32> %i.bg, i64 1
  %i.bp = add i32 %i.bn, %i.bo
  %i.bq = sitofp i32 %i.bp to float
  %i.br = fdiv float 2.550000e+02, %i.bq          ; 2 uses
  %i.bs = extractelement <2 x i32> %i.n, i64 1    ; 2 uses
  %.not235 = icmp sgt i32 %i.bs, %.0210
  br i1 %.not235, label %._crit_edge240.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bt = extractelement <2 x i32> %i.n, i64 0    ; 2 uses
  %.not229230 = icmp sgt i32 %i.bt, %spec.select
  %i.bu = insertelement <4 x i32> poison, i32 %.sroa.385.0.extract.shift, i64 0
  %i.bv = insertelement <4 x i32> %i.bu, i32 %.sroa.280.0.extract.shift, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %4, i64 2
  %i.bx = insertelement <4 x i32> %i.bw, i32 %.sroa.482.0.extract.shift, i64 3
  %i.by = and <4 x i32> %i.bx, <i32 255, i32 255, i32 255, i32 -1>
  %i.bz = and <4 x i32> %i.v, <i32 255, i32 255, i32 255, i32 -1>
  br i1 %.not229230, label %._crit_edge240.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ca = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cb = bitcast i32 %6 to <4 x i8>
  %i.cc = shufflevector <4 x i8> %i.cb, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.cd = extractelement <2 x i32> %i.au, i64 0
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cf = zext <4 x i8> %i.cc to <4 x i32>
  %i.cg = extractelement <2 x i32> %i.au, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0216239 = phi i32 [ %i.ck, %._crit_edge ], [ %i.bs, %.preheader.preheader ] ; 3 uses
  %.0217238 = phi i32 [ %i.cj, %._crit_edge ], [ %i.bl, %.preheader.preheader ] ; 2 uses
  %i.ch = phi <2 x i32> [ %i.ci, %._crit_edge ], [ %i.bg, %.preheader.preheader ] ; 2 uses
  br label %bb.d

._crit_edge240.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.c
  ret void

._crit_edge:                                      ; preds = %bb.f
  %i.ci = add nsw <2 x i32> %i.ch, %i.aq
  %i.cj = add nsw i32 %.0217238, %i.cg
  %i.ck = add nuw i32 %.0216239, 1
  %exitcond241.not = icmp eq i32 %.0216239, %.0210
  br i1 %exitcond241.not, label %._crit_edge240.split, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.f
  %.0212234 = phi i32 [ %i.bt, %.preheader ], [ %i.dm, %bb.f ] ; 3 uses
end_hunk_1
