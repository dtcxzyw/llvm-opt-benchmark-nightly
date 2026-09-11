Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmslut?download=true
inline.NumInlined: 60
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@cmsStageSampleCLutFloat:bb.a
  %indvars.iv.next142.epil = add nuw nsw i64 %indvars.iv141.epil, 1
  %epil.iter198.next = add i64 %epil.iter198, 1   ; 2 uses
  %epil.iter198.cmp.not = icmp eq i64 %epil.iter198.next, %xtraiter197
  br i1 %epil.iter198.cmp.not, label %.loopexit.us99, label %.lr.ph77.us96.epil, !llvm.loop !126

.loopexit.us99:                                   ; preds = %.loopexit.us99.loopexit.unr-lcssa, %.lr.ph77.us96.epil, %bb.j
  %i.fl = add i32 %.05279.us85, %.fr125
  %i.fm = add nuw i32 %.05478.us86, 1             ; 2 uses
  %exitcond146.not = icmp eq i32 %i.fm, %i.x
  br i1 %exitcond146.not, label %CubeSize.exit.thread, label %.preheader69.us84, !llvm.loop !124

.preheader69.lr.ph.split.split:                   ; preds = %.preheader69.lr.ph.split
  br i1 %i.aa, label %.preheader69, label %.preheader69.us104.preheader

.preheader69.us104.preheader:                     ; preds = %.preheader69.lr.ph.split.split
  %wide.trip.count = zext nneg i32 %.fr125 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.fn = icmp ult i32 %.fr125, 4
  %unroll_iter = and i64 %wide.trip.count, 124
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod190 = icmp ne i64 %xtraiter, 0
  br label %.preheader69.us104

.preheader69.us104:                               ; preds = %.preheader69.us104.preheader, %bb.k
  %.05279.us105 = phi i32 [ %i.gq, %bb.k ], [ 0, %.preheader69.us104.preheader ] ; 2 uses
  %.05478.us106 = phi i32 [ %i.gr, %bb.k ], [ 0, %.preheader69.us104.preheader ]
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !55
  %.not.us107 = icmp eq ptr %i.fo, null
  br i1 %.not.us107, label %..loopexit68_crit_edge.us111, label %.preheader67.us108.preheader

.preheader67.us108.preheader:                     ; preds = %.preheader69.us104
  %i.fp = sext i32 %.05279.us105 to i64           ; 5 uses
  br i1 %i.fn, label %.preheader67.us108.epil.preheader, label %.preheader67.us108

.preheader67.us108:                               ; preds = %.preheader67.us108.preheader, %.preheader67.us108
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader67.us108 ], [ 0, %.preheader67.us108.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader67.us108 ], [ 0, %.preheader67.us108.preheader ]
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %indvars.iv
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.fp
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !40
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.ft, ptr %i.fu, align 16, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fv = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.fw = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next
  %i.fx = getelementptr [4 x i8], ptr %i.fw, i64 %i.fp
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !40
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store float %i.fy, ptr %i.fz, align 4, !tbaa !40
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ga = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.gb = getelementptr [4 x i8], ptr %i.ga, i64 %indvars.iv.next.1
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.fp
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !40
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.1
  store float %i.gd, ptr %i.ge, align 8, !tbaa !40
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.gf = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.gg = getelementptr [4 x i8], ptr %i.gf, i64 %indvars.iv.next.2
  %i.gh = getelementptr [4 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !40
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.2
  store float %i.gi, ptr %i.gj, align 4, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit68_crit_edge.us111.loopexit.unr-lcssa, label %.preheader67.us108, !llvm.loop !120

..loopexit68_crit_edge.us111.loopexit.unr-lcssa:  ; preds = %.preheader67.us108
  br i1 %lcmp.mod.not, label %..loopexit68_crit_edge.us111, label %.preheader67.us108.epil.preheader

.preheader67.us108.epil.preheader:                ; preds = %..loopexit68_crit_edge.us111.loopexit.unr-lcssa, %.preheader67.us108.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader67.us108.preheader ], [ %indvars.iv.next.3, %..loopexit68_crit_edge.us111.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod190)
  br label %.preheader67.us108.epil

.preheader67.us108.epil:                          ; preds = %.preheader67.us108.epil, %.preheader67.us108.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader67.us108.epil.preheader ], [ %indvars.iv.next.epil, %.preheader67.us108.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader67.us108.epil.preheader ], [ %epil.iter.next, %.preheader67.us108.epil ]
  %i.gk = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.gl = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv.epil
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %i.fp
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !40
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil
  store float %i.gn, ptr %i.go, align 4, !tbaa !40
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit68_crit_edge.us111, label %.preheader67.us108.epil, !llvm.loop !127

..loopexit68_crit_edge.us111:                     ; preds = %..loopexit68_crit_edge.us111.loopexit.unr-lcssa, %.preheader67.us108.epil, %.preheader69.us104
  %i.gp = call i32 %1(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2) #17
  %.not60.us113 = icmp eq i32 %i.gp, 0
  br i1 %.not60.us113, label %CubeSize.exit.thread, label %bb.k

bb.k:                                             ; preds = %..loopexit68_crit_edge.us111
  %i.gq = add i32 %.05279.us105, %.fr125
  %i.gr = add nuw i32 %.05478.us106, 1            ; 2 uses
  %exitcond134.not = icmp eq i32 %i.gr, %i.x
  br i1 %exitcond134.not, label %CubeSize.exit.thread, label %.preheader69.us104, !llvm.loop !124

.preheader69:                                     ; preds = %.preheader69.lr.ph.split.split, %bb.l
  %.05478 = phi i32 [ %i.gt, %bb.l ], [ 0, %.preheader69.lr.ph.split.split ]
  %i.gs = call i32 %1(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2) #17
  %.not60 = icmp eq i32 %i.gs, 0
  br i1 %.not60, label %CubeSize.exit.thread, label %bb.l

bb.l:                                             ; preds = %.preheader69
  %i.gt = add nuw i32 %.05478, 1                  ; 2 uses
  %exitcond135.not = icmp eq i32 %i.gt, %i.x
  br i1 %exitcond135.not, label %CubeSize.exit.thread, label %.preheader69, !llvm.loop !124

CubeSize.exit.thread:                             ; preds = %bb.e, %.lr.ph.i, %..loopexit68_crit_edge.us111, %bb.k, %.preheader69, %bb.l, %.loopexit68.us92, %.loopexit.us99, %.loopexit68.us, %.loopexit.us, %._crit_edge.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge.i ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.loopexit68.us ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %.loopexit68.us92 ], [ 1, %.loopexit.us ], [ 1, %.loopexit.us99 ], [ 0, %.preheader69 ], [ 0, %..loopexit68_crit_edge.us111 ], [ 0, %.lr.ph.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cmsSliceSpace16(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp ugt i32 %0, 15
  br i1 %i.b, label %CubeSize.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq i32 %0, 0
  br i1 %.not16.i, label %.preheader, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.d = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.c, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.018.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.i, %bb.c ]
  %i.e = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %.fr23.i = freeze i32 %i.g                      ; 3 uses
  %i.h = icmp ult i32 %.fr23.i, 2
  br i1 %i.h, label %CubeSize.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = mul i32 %.fr23.i, %.018.i                ; 4 uses
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.fr23.i, i32 %i.i)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %CubeSize.exit.thread, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %i.j = add i32 %i.i, -286331154
  %or.cond = icmp ult i32 %i.j, -286331153
  br i1 %or.cond, label %CubeSize.exit.thread, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge.i
  %i.k = zext nneg i32 %0 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.g
  %.02533.us = phi i32 [ %i.af, %bb.g ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %_cmsQuantizeVal.exit.us
  %indvars.iv = phi i64 [ %i.k, %.preheader.us ], [ %i.l, %_cmsQuantizeVal.exit.us ] ; 2 uses
  %.02332.us = phi i32 [ %.02533.us, %.preheader.us ], [ %i.p, %_cmsQuantizeVal.exit.us ] ; 2 uses
  %i.l = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30   ; 3 uses
  %i.o = urem i32 %.02332.us, %i.n
  %i.p = udiv i32 %.02332.us, %i.n
  %i.q = uitofp nneg i32 %i.o to double
  %i.r = fmul nnan double %i.q, 6.553500e+04
  %i.s = add i32 %i.n, -1
  %i.t = uitofp i32 %i.s to double
  %i.u = fdiv double %i.r, %i.t
  %i.v = fadd double %i.u, 5.000000e-01           ; 2 uses
  %i.w = fcmp ult double %i.v, 6.553500e+04
  br i1 %i.w, label %bb.f, label %_cmsQuantizeVal.exit.us

bb.f:                                             ; preds = %bb.e
  %i.x = fadd double %i.v, -3.276700e+04
  %i.y = fadd double %i.x, f0x4238000000000000
  %i.z = bitcast double %i.y to i64
  %i.aa = lshr i64 %i.z, 16
  %i.ab = trunc i64 %i.aa to i16
  %i.ac = add i16 %i.ab, 32767
  br label %_cmsQuantizeVal.exit.us

_cmsQuantizeVal.exit.us:                          ; preds = %bb.f, %bb.e
  %.0.i.i.us = phi i16 [ %i.ac, %bb.f ], [ -1, %bb.e ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.l
  store i16 %.0.i.i.us, ptr %i.ad, align 2, !tbaa !57
  %4 = trunc nuw i64 %indvars.iv to i32
  %i.ae = icmp sgt i32 %4, 1
  br i1 %i.ae, label %bb.e, label %._crit_edge.us, !llvm.loop !128

bb.g:                                             ; preds = %._crit_edge.us
  %i.af = add nuw nsw i32 %.02533.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.i
  br i1 %exitcond.not, label %CubeSize.exit.thread, label %.preheader.us, !llvm.loop !129

._crit_edge.us:                                   ; preds = %_cmsQuantizeVal.exit.us
  %i.ag = call i32 %2(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %3) #17
  %.not.us = icmp eq i32 %i.ag, 0
  br i1 %.not.us, label %CubeSize.exit.thread, label %bb.g

.preheader:                                       ; preds = %bb.b
  %i.ah = call i32 %2(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %3) #17
  %.not = icmp ne i32 %i.ah, 0
  %spec.select = zext i1 %.not to i32
  br label %CubeSize.exit.thread

CubeSize.exit.thread:                             ; preds = %.lr.ph.i, %bb.d, %bb.g, %._crit_edge.us, %.preheader, %._crit_edge.i, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge.us ], [ 0, %bb.a ], [ %spec.select, %.preheader ], [ 0, %._crit_edge.i ], [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cmsSliceSpaceFloat(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp ugt i32 %0, 15
  br i1 %i.b, label %CubeSize.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq i32 %0, 0
  br i1 %.not16.i, label %.preheader, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.d = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.c, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.018.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.i, %bb.c ]
  %i.e = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %.fr23.i = freeze i32 %i.g                      ; 3 uses
  %i.h = icmp ult i32 %.fr23.i, 2
  br i1 %i.h, label %CubeSize.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = mul i32 %.fr23.i, %.018.i                ; 4 uses
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.fr23.i, i32 %i.i)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %CubeSize.exit.thread, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %i.j = add i32 %i.i, -286331154
  %or.cond = icmp ult i32 %i.j, -286331153
  br i1 %or.cond, label %CubeSize.exit.thread, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge.i
  %i.k = zext nneg i32 %0 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.g
  %.02533.us = phi i32 [ %i.ah, %bb.g ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %_cmsQuantizeVal.exit.us
  %indvars.iv = phi i64 [ %i.k, %.preheader.us ], [ %i.l, %_cmsQuantizeVal.exit.us ] ; 2 uses
  %.02332.us = phi i32 [ %.02533.us, %.preheader.us ], [ %i.p, %_cmsQuantizeVal.exit.us ] ; 2 uses
  %i.l = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30   ; 3 uses
  %i.o = urem i32 %.02332.us, %i.n
  %i.p = udiv i32 %.02332.us, %i.n
  %i.q = uitofp nneg i32 %i.o to double
  %i.r = fmul nnan double %i.q, 6.553500e+04
  %i.s = add i32 %i.n, -1
  %i.t = uitofp i32 %i.s to double
  %i.u = fdiv double %i.r, %i.t
  %i.v = fadd double %i.u, 5.000000e-01           ; 2 uses
  %i.w = fcmp ult double %i.v, 6.553500e+04
  br i1 %i.w, label %bb.f, label %_cmsQuantizeVal.exit.us

bb.f:                                             ; preds = %bb.e
  %i.x = fadd double %i.v, -3.276700e+04
  %i.y = fadd double %i.x, f0x4238000000000000
  %i.z = bitcast double %i.y to i64
  %i.aa = lshr i64 %i.z, 16
  %i.ab = trunc i64 %i.aa to i16
  %i.ac = add i16 %i.ab, 32767
  %i.ad = uitofp i16 %i.ac to float
  br label %_cmsQuantizeVal.exit.us

_cmsQuantizeVal.exit.us:                          ; preds = %bb.f, %bb.e
  %.0.i.i.us = phi float [ %i.ad, %bb.f ], [ 6.553500e+04, %bb.e ]
  %i.ae = fdiv float %.0.i.i.us, 6.553500e+04
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l
  store float %i.ae, ptr %i.af, align 4, !tbaa !40
  %4 = trunc nuw i64 %indvars.iv to i32
  %i.ag = icmp sgt i32 %4, 1
  br i1 %i.ag, label %bb.e, label %._crit_edge.us, !llvm.loop !130

bb.g:                                             ; preds = %._crit_edge.us
  %i.ah = add nuw nsw i32 %.02533.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.i
  br i1 %exitcond.not, label %CubeSize.exit.thread, label %.preheader.us, !llvm.loop !131

._crit_edge.us:                                   ; preds = %_cmsQuantizeVal.exit.us
  %i.ai = call i32 %2(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %3) #17
  %.not.us = icmp eq i32 %i.ai, 0
  br i1 %.not.us, label %CubeSize.exit.thread, label %bb.g

.preheader:                                       ; preds = %bb.b
  %i.aj = call i32 %2(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %3) #17
  %.not = icmp ne i32 %i.aj, 0
  %spec.select = zext i1 %.not to i32
  br label %CubeSize.exit.thread

CubeSize.exit.thread:                             ; preds = %.lr.ph.i, %bb.d, %bb.g, %._crit_edge.us, %.preheader, %._crit_edge.i, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge.us ], [ 0, %bb.a ], [ %spec.select, %.preheader ], [ 0, %._crit_edge.i ], [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @_cmsStageAllocLab2XYZ(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 64) #17 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_cmsStageAllocPlaceholder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i32> <i32 2016570400, i32 2016570400, i32 3, i32 3>, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @EvaluateLab2XYZ, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %_cmsStageAllocPlaceholder.exit

_cmsStageAllocPlaceholder.exit:                   ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @EvaluateLab2XYZ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.cmsCIELab, align 8          ; 5 uses
  %4 = alloca %struct.cmsCIEXYZ, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = load float, ptr %0, align 4, !tbaa !40
  %i.b = fpext float %i.a to double
  %i.c = fmul double %i.b, 1.000000e+02
  store double %i.c, ptr %3, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load <2 x float>, ptr %i.d, align 4, !tbaa !40
  %i.g = fpext <2 x float> %i.f to <2 x double>
  %i.h = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double -1.280000e+02))
  store <2 x double> %i.h, ptr %i.e, align 8, !tbaa !45
  call void @cmsLab2XYZ(ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  %i.i = load <2 x double>, ptr %4, align 16, !tbaa !45
  %i.j = fdiv <2 x double> %i.i, splat (double f0x3FFFFFE000000000)
  %i.k = fptrunc <2 x double> %i.j to <2 x float>
  store <2 x float> %i.k, ptr %1, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load double, ptr %i.l, align 16, !tbaa !63
  %i.n = fdiv double %i.m, f0x3FFFFFE000000000
  %i.o = fptrunc double %i.n to float
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.o, ptr %i.p, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @_cmsStageAllocLabV2ToV4curves(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @cmsBuildTabulatedToneCurve16(ptr noundef %0, i32 noundef 258, ptr noundef null) #17 ; 3 uses
  store ptr %i.b, ptr %i.a, align 16, !tbaa !38
  %i.c = tail call ptr @cmsBuildTabulatedToneCurve16(ptr noundef %0, i32 noundef 258, ptr noundef null) #17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !38
  %i.e = tail call ptr @cmsBuildTabulatedToneCurve16(ptr noundef %0, i32 noundef 258, ptr noundef null) #17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.f, align 16, !tbaa !38
  %i.g = icmp eq ptr %i.b, null
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.j = mul <8 x i32> %vec.ind, splat (i32 65535)
  %i.k = add <8 x i32> %i.j, splat (i32 128)
  %i.l = lshr <8 x i32> %i.k, splat (i32 8)
  %i.m = trunc nuw <8 x i32> %i.l to <8 x i16>
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 2, !tbaa !57
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.o = icmp eq i64 %index.next, 256
  br i1 %i.o, label %scalar.ph, label %vector.body, !llvm.loop !133

bb.b:                                             ; preds = %scalar.ph29, %scalar.ph, %bb.a
  call void @cmsFreeToneCurveTriple(ptr noundef nonnull %i.a) #17
  br label %bb.d

scalar.ph:                                        ; preds = %vector.body
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  store i16 -1, ptr %i.p, align 2, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 514
  store i16 -1, ptr %i.q, align 2, !tbaa !57
  %i.r = icmp eq ptr %i.c, null
  br i1 %i.r, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %scalar.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139  ; 3 uses
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %.preheader.1
  %index32 = phi i64 [ 0, %.preheader.1 ], [ %index.next34, %vector.body31 ] ; 2 uses
  %vec.ind33 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader.1 ], [ %vec.ind.next35, %vector.body31 ] ; 2 uses
  %i.u = mul <8 x i32> %vec.ind33, splat (i32 65535)
  %i.v = add <8 x i32> %i.u, splat (i32 128)
  %i.w = lshr <8 x i32> %i.v, splat (i32 8)
  %i.x = trunc nuw <8 x i32> %i.w to <8 x i16>
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index32
  store <8 x i16> %i.x, ptr %i.y, align 2, !tbaa !57
  %index.next34 = add nuw i64 %index32, 8         ; 2 uses
  %vec.ind.next35 = add <8 x i32> %vec.ind33, splat (i32 8)
  %i.z = icmp eq i64 %index.next34, 256
  br i1 %i.z, label %scalar.ph29, label %vector.body31, !llvm.loop !134

scalar.ph29:                                      ; preds = %vector.body31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 512
  store i16 -1, ptr %i.aa, align 2, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 514
  store i16 -1, ptr %i.ab, align 2, !tbaa !57
  %i.ac = icmp eq ptr %i.e, null
  br i1 %i.ac, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %scalar.ph29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !139 ; 3 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %.preheader.2
  %index40 = phi i64 [ 0, %.preheader.2 ], [ %index.next42, %vector.body39 ] ; 2 uses
  %vec.ind41 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader.2 ], [ %vec.ind.next43, %vector.body39 ] ; 2 uses
  %i.af = mul <8 x i32> %vec.ind41, splat (i32 65535)
  %i.ag = add <8 x i32> %i.af, splat (i32 128)
  %i.ah = lshr <8 x i32> %i.ag, splat (i32 8)
  %i.ai = trunc nuw <8 x i32> %i.ah to <8 x i16>
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %index40
  store <8 x i16> %i.ai, ptr %i.aj, align 2, !tbaa !57
  %index.next42 = add nuw i64 %index40, 8         ; 2 uses
  %vec.ind.next43 = add <8 x i32> %vec.ind41, splat (i32 8)
  %i.ak = icmp eq i64 %index.next42, 256
  br i1 %i.ak, label %scalar.ph37, label %vector.body39, !llvm.loop !135

scalar.ph37:                                      ; preds = %vector.body39
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  store i16 -1, ptr %i.al, align 2, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 514
  store i16 -1, ptr %i.am, align 2, !tbaa !57
  %i.an = call ptr @cmsStageAllocToneCurves(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.a) ; 3 uses
  call void @cmsFreeToneCurveTriple(ptr noundef nonnull %i.a) #17
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %scalar.ph37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 840971296, ptr %i.ap, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph37, %bb.c, %bb.b
  %.017 = phi ptr [ null, %bb.b ], [ %i.an, %bb.c ], [ null, %scalar.ph37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.017
}

declare ptr @cmsBuildTabulatedToneCurve16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @cmsFreeToneCurveTriple(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @_cmsStageAllocLabV2ToV4(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @cmsStageAllocMatrix(ptr noundef %0, i32 noundef 3, i32 noundef 3, ptr noundef nonnull @_cmsStageAllocLabV2ToV4.V2ToV4, ptr noundef null) ; 3 uses
end_hunk_0
