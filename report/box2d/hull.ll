Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/hull?download=true
inline.NumInlined: 35
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2RecurseHull:bb.a
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.r = zext nneg i32 %.149 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.048.lcssa = phi i64 [ 0, %bb.e ], [ %i.r, %._crit_edge.loopexit ]
  %.046.lcssa = phi float [ %i.o, %bb.e ], [ %.147, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.045, %bb.e ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %i.s = tail call float @b2GetLengthUnitsPerMeter() #6
  %i.t = fmul float %i.s, 5.000000e-03
  %i.u = fmul float %i.t, 2.000000e+00
  %i.v = fcmp olt float %.046.lcssa, %i.u
  br i1 %i.v, label %bb.i, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.176 = phi i32 [ %.045, %.lr.ph.preheader ], [ %.2, %bb.g ] ; 3 uses
  %.04675 = phi float [ %i.o, %.lr.ph.preheader ], [ %.147, %bb.g ] ; 2 uses
  %.04874 = phi i32 [ 0, %.lr.ph.preheader ], [ %.149, %bb.g ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.x = load <2 x float>, ptr %i.w, align 4      ; 2 uses
  %i.y = fsub <2 x float> %i.x, %1
  %i.z = fmul <2 x float> %.sroa.012.0.i, %i.y    ; 2 uses
  %shift103 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fsub <2 x float> %i.z, %shift103
  %i.aa = extractelement <2 x float> %foldExtExtBinop104, i64 0 ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %.04675           ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %.149 = select i1 %i.ab, i32 %i.ac, i32 %.04874 ; 2 uses
  %.147 = select i1 %i.ab, float %i.aa, float %.04675 ; 2 uses
  %i.ad = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.176, 1
  %i.af = sext i32 %.176 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %5, i64 %i.af
  store <2 x float> %i.x, ptr %i.ag, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.2 = phi i32 [ %i.ae, %bb.f ], [ %.176, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !18

bb.h:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.048.lcssa
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ah, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %6, <2 x float> %1, <2 x float> %.sroa.0.0.copyload, ptr noundef %5, i32 noundef %.1.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %7, <2 x float> %.sroa.0.0.copyload, <2 x float> %2, ptr noundef %5, i32 noundef %.1.lcssa)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10 ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph82.preheader, label %._crit_edge83

.lr.ph82.preheader:                               ; preds = %bb.h
  %wide.trip.count92 = zext nneg i32 %i.aj to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count92, 1
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter = and i64 %wide.trip.count92, 2147483646
  br label %.lr.ph82

._crit_edge83.loopexit.unr-lcssa:                 ; preds = %.lr.ph82
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge83.loopexit, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %._crit_edge83.loopexit.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv89.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next90.1, %._crit_edge83.loopexit.unr-lcssa ]
  %lcmp.mod106 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.am = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.a, align 4, !tbaa !10
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv89.epil.init
  %i.ar = load i64, ptr %i.aq, align 4
  store i64 %i.ar, ptr %i.ap, align 4
  br label %._crit_edge83.loopexit

._crit_edge83.loopexit:                           ; preds = %._crit_edge83.loopexit.unr-lcssa, %.lr.ph82.epil.preheader
  %.pre = load i32, ptr %i.a, align 4, !tbaa !10
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %bb.h
  %i.as = phi i32 [ %.pre, %._crit_edge83.loopexit ], [ 0, %bb.h ] ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.a, align 4, !tbaa !10
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au
  store <2 x float> %.sroa.0.0.copyload, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10 ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph86.preheader, label %._crit_edge87

.lr.ph86.preheader:                               ; preds = %._crit_edge83
  %wide.trip.count97 = zext nneg i32 %i.ax to i64 ; 2 uses
  %xtraiter107 = and i64 %wide.trip.count97, 1
  %i.az = icmp eq i32 %i.ax, 1
  br i1 %i.az, label %.lr.ph86.epil.preheader, label %.lr.ph86.preheader.new

.lr.ph86.preheader.new:                           ; preds = %.lr.ph86.preheader
  %unroll_iter110 = and i64 %wide.trip.count97, 2147483646
  br label %.lr.ph86

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv89 = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %indvars.iv.next90.1, %.lr.ph82 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter.next.1, %.lr.ph82 ]
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !10
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv89
  %i.bf = load i64, ptr %i.be, align 4
  store i64 %i.bf, ptr %i.bd, align 4
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !10
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv89
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 4
  store i64 %i.bm, ptr %i.bj, align 4
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge83.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !19

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %.lr.ph86
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %._crit_edge87, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv94.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next95.1, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod109 = trunc i32 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !10
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv94.epil.init
  %i.bs = load i64, ptr %i.br, align 4
  store i64 %i.bs, ptr %i.bq, align 4
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %.lr.ph86.epil.preheader, %._crit_edge87.loopexit.unr-lcssa, %._crit_edge83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.i

.lr.ph86:                                         ; preds = %.lr.ph86, %.lr.ph86.preheader.new
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %indvars.iv.next95.1, %.lr.ph86 ] ; 3 uses
  %niter111 = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %niter111.next.1, %.lr.ph86 ]
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !10
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv94
  %i.by = load i64, ptr %i.bx, align 4
  store i64 %i.by, ptr %i.bw, align 4
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !10
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv94
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 4
  store i64 %i.cf, ptr %i.cc, align 4
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %._crit_edge87.loopexit.unr-lcssa, label %.lr.ph86, !llvm.loop !20

bb.i:                                             ; preds = %._crit_edge, %._crit_edge87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @b2ValidateHull(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 17 uses
  %i.c = add i32 %i.b, -9
  %or.cond = icmp ult i32 %i.c, -6
  br i1 %or.cond, label %.critedge, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1                     ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %wide.trip.count121 = zext nneg i32 %i.b to i64
  %.not = icmp ne i32 %i.d, 0                     ; 2 uses
  %.sroa.028.0.copyload.us.peel = load <2 x float>, ptr %0, align 4 ; 8 uses
  %i.f = zext i1 %.not to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = load <2 x float>, ptr %i.g, align 4
  %i.i = fsub <2 x float> %i.h, %.sroa.028.0.copyload.us.peel ; 3 uses
  %i.j = fmul <2 x float> %i.i, %i.i
  %i.k = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.j) ; 2 uses
  %i.l = fcmp ogt float %i.k, f0x057A0000
  br i1 %i.l, label %bb.b, label %b2Normalize.exit.us.peel

bb.b:                                             ; preds = %.lr.ph115
  %sqrt.i.us.peel = tail call nnan float @llvm.sqrt.f32(float %i.k)
  %i.m = fdiv nnan float 1.000000e+00, %sqrt.i.us.peel
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.i, %i.o
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.us.peel

b2Normalize.exit.us.peel:                         ; preds = %bb.b, %.lr.ph115
  %.sroa.012.0.i.us.peel = phi <2 x float> [ %i.q, %bb.b ], [ zeroinitializer, %.lr.ph115 ] ; 7 uses
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %._crit_edge, label %1

1:                                                ; preds = %b2Normalize.exit.us.peel
  br i1 %.not, label %9, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load <2 x float>, ptr %3, align 4
  %5 = fsub <2 x float> %4, %.sroa.028.0.copyload.us.peel
  %6 = fmul <2 x float> %.sroa.012.0.i.us.peel, %5 ; 2 uses
  %shift.1.peel = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1.peel = fsub <2 x float> %6, %shift.1.peel
  %7 = extractelement <2 x float> %foldExtExtBinop.1.peel, i64 0
  %8 = fcmp ult float %7, 0.000000e+00
  br i1 %8, label %9, label %.critedge

9:                                                ; preds = %2, %1
  %cond142 = icmp eq i32 %i.b, 2
  br i1 %cond142, label %.lr.ph115.peel.newph, label %bb.c

bb.c:                                             ; preds = %9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load <2 x float>, ptr %i.r, align 4
  %i.t = fsub <2 x float> %i.s, %.sroa.028.0.copyload.us.peel
  %i.u = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.t ; 2 uses
  %shift.2.peel = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2.peel = fsub <2 x float> %i.u, %shift.2.peel
  %i.v = extractelement <2 x float> %foldExtExtBinop.2.peel, i64 0
  %i.w = fcmp ult float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %cond143.a = icmp eq i32 %i.b, 3
  br i1 %cond143.a, label %.lr.ph115.peel.newph, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load <2 x float>, ptr %i.x, align 4
  %i.z = fsub <2 x float> %i.y, %.sroa.028.0.copyload.us.peel
  %i.aa = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.z ; 2 uses
  %shift.3.peel = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3.peel = fsub <2 x float> %i.aa, %shift.3.peel
  %i.ab = extractelement <2 x float> %foldExtExtBinop.3.peel, i64 0
  %i.ac = fcmp ult float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %cond144.a = icmp eq i32 %i.b, 4
  br i1 %cond144.a, label %.lr.ph115.peel.newph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load <2 x float>, ptr %i.ad, align 4
  %i.af = fsub <2 x float> %i.ae, %.sroa.028.0.copyload.us.peel
  %i.ag = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.af ; 2 uses
  %shift.4.peel = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4.peel = fsub <2 x float> %i.ag, %shift.4.peel
  %i.ah = extractelement <2 x float> %foldExtExtBinop.4.peel, i64 0
  %i.ai = fcmp ult float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %cond145.a = icmp eq i32 %i.b, 5
  br i1 %cond145.a, label %.lr.ph115.peel.newph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = fsub <2 x float> %i.ak, %.sroa.028.0.copyload.us.peel
  %i.am = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.al ; 2 uses
  %shift.5.peel = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5.peel = fsub <2 x float> %i.am, %shift.5.peel
  %i.an = extractelement <2 x float> %foldExtExtBinop.5.peel, i64 0
  %i.ao = fcmp ult float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %cond146 = icmp eq i32 %i.b, 6
  br i1 %cond146, label %.lr.ph115.peel.newph, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = fsub <2 x float> %i.aq, %.sroa.028.0.copyload.us.peel
  %i.as = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ar ; 2 uses
  %shift.6.peel = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6.peel = fsub <2 x float> %i.as, %shift.6.peel
  %i.at = extractelement <2 x float> %foldExtExtBinop.6.peel, i64 0
  %i.au = fcmp ult float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %cond147 = icmp eq i32 %i.b, 7
  br i1 %cond147, label %.lr.ph115.peel.newph, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load <2 x float>, ptr %i.av, align 4
  %i.ax = fsub <2 x float> %i.aw, %.sroa.028.0.copyload.us.peel
  %i.ay = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ax ; 2 uses
  %shift.7.peel = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7.peel = fsub <2 x float> %i.ay, %shift.7.peel
  %i.az = extractelement <2 x float> %foldExtExtBinop.7.peel, i64 0
  %i.ba = fcmp ult float %i.az, 0.000000e+00
  br i1 %i.ba, label %..loopexit_crit_edge.us.peel, label %.critedge

..loopexit_crit_edge.us.peel:                     ; preds = %bb.m
  %exitcond122.not.peel = icmp eq i32 %i.b, 1
  br i1 %exitcond122.not.peel, label %._crit_edge, label %.lr.ph115.peel.newph

.lr.ph115.peel.newph:                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %9, %..loopexit_crit_edge.us.peel
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.1 = icmp eq i32 %i.b, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.2 = icmp eq i32 %i.b, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.3 = icmp eq i32 %i.b, 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %exitcond.not.4 = icmp eq i32 %i.b, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %exitcond.not.5 = icmp eq i32 %i.b, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %exitcond.not.6 = icmp eq i32 %i.b, 7
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.n

bb.n:                                             ; preds = %..loopexit_crit_edge.us, %.lr.ph115.peel.newph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %..loopexit_crit_edge.us ], [ 1, %.lr.ph115.peel.newph ] ; 10 uses
  %.not141 = icmp samesign ult i64 %indvars.iv118, %i.e ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv118
  %.sroa.028.0.copyload.us = load <2 x float>, ptr %i.bi, align 4 ; 9 uses
  %i.bj = select i1 %.not141, i64 %indvars.iv.next119, i64 0 ; 7 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load <2 x float>, ptr %i.bk, align 4
  %i.bm = fsub <2 x float> %i.bl, %.sroa.028.0.copyload.us ; 3 uses
  %i.bn = fmul <2 x float> %i.bm, %i.bm
  %i.bo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bn) ; 2 uses
  %i.bp = fcmp ogt float %i.bo, f0x057A0000
  br i1 %i.bp, label %bb.o, label %b2Normalize.exit.us

bb.o:                                             ; preds = %bb.n
  %sqrt.i.us = tail call nnan float @llvm.sqrt.f32(float %i.bo)
  %i.bq = fdiv nnan float 1.000000e+00, %sqrt.i.us
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bm, %i.bs
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.us

b2Normalize.exit.us:                              ; preds = %bb.n, %bb.o
  %.sroa.012.0.i.us = phi <2 x float> [ %i.bu, %bb.o ], [ zeroinitializer, %bb.n ] ; 8 uses
  br i1 %.not141, label %bb.p, label %bb.q

bb.p:                                             ; preds = %b2Normalize.exit.us
  %i.bv = load <2 x float>, ptr %0, align 4
  %i.bw = fsub <2 x float> %i.bv, %.sroa.028.0.copyload.us
  %i.bx = fmul <2 x float> %.sroa.012.0.i.us, %i.bw ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bx, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bz = fcmp ult float %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.q, label %.critedge

bb.q:                                             ; preds = %b2Normalize.exit.us, %bb.p
  %i.ca = icmp eq i64 %indvars.iv118, 1
  br i1 %i.ca, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = load <2 x float>, ptr %i.bb, align 4
  %i.cc = fsub <2 x float> %i.cb, %.sroa.028.0.copyload.us
  %i.cd = fmul <2 x float> %.sroa.012.0.i.us, %i.cc ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fsub <2 x float> %i.cd, %shift.1
  %i.ce = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.cf = fcmp ult float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = icmp eq i64 %indvars.iv118, 2
  %i.ch = icmp eq i64 %i.bj, 2
  %or.cond72.us.2 = or i1 %i.cg, %i.ch
  br i1 %or.cond72.us.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = load <2 x float>, ptr %i.bc, align 4
  %i.cj = fsub <2 x float> %i.ci, %.sroa.028.0.copyload.us
  %i.ck = fmul <2 x float> %.sroa.012.0.i.us, %i.cj ; 2 uses
  %shift.2 = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2 = fsub <2 x float> %i.ck, %shift.2
  %i.cl = extractelement <2 x float> %foldExtExtBinop.2, i64 0
  %i.cm = fcmp ult float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %exitcond.not.2, label %..loopexit_crit_edge.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = icmp eq i64 %indvars.iv118, 3
  %i.co = icmp eq i64 %i.bj, 3
  %or.cond72.us.3 = or i1 %i.cn, %i.co
  br i1 %or.cond72.us.3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load <2 x float>, ptr %i.bd, align 4
  %i.cq = fsub <2 x float> %i.cp, %.sroa.028.0.copyload.us
  %i.cr = fmul <2 x float> %.sroa.012.0.i.us, %i.cq ; 2 uses
  %shift.3 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3 = fsub <2 x float> %i.cr, %shift.3
  %i.cs = extractelement <2 x float> %foldExtExtBinop.3, i64 0
  %i.ct = fcmp ult float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = icmp eq i64 %indvars.iv118, 4
  %i.cv = icmp eq i64 %i.bj, 4
  %or.cond72.us.4 = or i1 %i.cu, %i.cv
  br i1 %or.cond72.us.4, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = load <2 x float>, ptr %i.be, align 4
  %i.cx = fsub <2 x float> %i.cw, %.sroa.028.0.copyload.us
  %i.cy = fmul <2 x float> %.sroa.012.0.i.us, %i.cx ; 2 uses
  %shift.4 = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4 = fsub <2 x float> %i.cy, %shift.4
  %i.cz = extractelement <2 x float> %foldExtExtBinop.4, i64 0
  %i.da = fcmp ult float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %exitcond.not.4, label %..loopexit_crit_edge.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = icmp eq i64 %indvars.iv118, 5
  %i.dc = icmp eq i64 %i.bj, 5
  %or.cond72.us.5 = or i1 %i.db, %i.dc
  br i1 %or.cond72.us.5, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load <2 x float>, ptr %i.bf, align 4
  %i.de = fsub <2 x float> %i.dd, %.sroa.028.0.copyload.us
  %i.df = fmul <2 x float> %.sroa.012.0.i.us, %i.de ; 2 uses
  %shift.5 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5 = fsub <2 x float> %i.df, %shift.5
  %i.dg = extractelement <2 x float> %foldExtExtBinop.5, i64 0
  %i.dh = fcmp ult float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %exitcond.not.5, label %..loopexit_crit_edge.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = icmp eq i64 %indvars.iv118, 6
  %i.dj = icmp eq i64 %i.bj, 6
  %or.cond72.us.6 = or i1 %i.di, %i.dj
  br i1 %or.cond72.us.6, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = load <2 x float>, ptr %i.bg, align 4
  %i.dl = fsub <2 x float> %i.dk, %.sroa.028.0.copyload.us
  %i.dm = fmul <2 x float> %.sroa.012.0.i.us, %i.dl ; 2 uses
  %shift.6 = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6 = fsub <2 x float> %i.dm, %shift.6
  %i.dn = extractelement <2 x float> %foldExtExtBinop.6, i64 0
  %i.do = fcmp ult float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %exitcond.not.6, label %..loopexit_crit_edge.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dp = icmp eq i64 %indvars.iv118, 7
  %i.dq = icmp eq i64 %i.bj, 7
  %or.cond72.us.7 = or i1 %i.dp, %i.dq
  br i1 %or.cond72.us.7, label %..loopexit_crit_edge.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = load <2 x float>, ptr %i.bh, align 4
  %i.ds = fsub <2 x float> %i.dr, %.sroa.028.0.copyload.us
  %i.dt = fmul <2 x float> %.sroa.012.0.i.us, %i.ds ; 2 uses
  %shift.7 = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7 = fsub <2 x float> %i.dt, %shift.7
  %i.du = extractelement <2 x float> %foldExtExtBinop.7, i64 0
  %i.dv = fcmp ult float %i.du, 0.000000e+00
  br i1 %i.dv, label %..loopexit_crit_edge.us, label %.critedge

..loopexit_crit_edge.us:                          ; preds = %bb.ai, %bb.aj, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %bb.n, !llvm.loop !21

._crit_edge:                                      ; preds = %b2Normalize.exit.us.peel, %..loopexit_crit_edge.us, %..loopexit_crit_edge.us.peel
  %i.dw = tail call float @b2GetLengthUnitsPerMeter() #6
  %i.dx = fmul float %i.dw, 5.000000e-03
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !10  ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 0)
  %wide.trip.count126 = zext nneg i32 %smax to i64
  %exitcond127.not132 = icmp slt i32 %i.dy, 1
  br i1 %exitcond127.not132, label %.critedge, label %.lr.ph

bb.ak:                                            ; preds = %b2Normalize.exit97
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.critedge, label %.lr.ph, !llvm.loop !22

.lr.ph:                                           ; preds = %._crit_edge, %bb.ak
  %indvars.iv123133 = phi i64 [ %indvars.iv.next124, %bb.ak ], [ 0, %._crit_edge ] ; 3 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123133, 1 ; 3 uses
  %i.dz = trunc nuw i64 %indvars.iv.next124 to i32
  %i.ea = srem i32 %i.dz, %i.dy
  %i.eb = trunc i64 %indvars.iv123133 to i32
  %i.ec = add i32 %i.eb, 2
  %i.ed = srem i32 %i.ec, %i.dy
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv123133
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.ee, align 4 ; 2 uses
  %i.ef = zext nneg i32 %i.ea to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ef
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.eg, align 4
  %i.eh = zext nneg i32 %i.ed to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ei, align 4
  %i.ej = fsub <2 x float> %.sroa.07.0.copyload, %.sroa.09.0.copyload ; 3 uses
  %i.ek = fmul <2 x float> %i.ej, %i.ej
  %i.el = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ek) ; 2 uses
  %i.em = fcmp ogt float %i.el, f0x057A0000
  br i1 %i.em, label %bb.al, label %b2Normalize.exit97

bb.al:                                            ; preds = %.lr.ph
  %sqrt.i94 = tail call nnan float @llvm.sqrt.f32(float %i.el)
  %i.en = fdiv nnan float 1.000000e+00, %sqrt.i94
  %i.eo = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ej, %i.ep
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit97

b2Normalize.exit97:                               ; preds = %.lr.ph, %bb.al
  %.sroa.012.0.i93 = phi <2 x float> [ %i.er, %bb.al ], [ zeroinitializer, %.lr.ph ]
  %i.es = fsub <2 x float> %.sroa.08.0.copyload, %.sroa.09.0.copyload
  %i.et = fmul <2 x float> %i.es, %.sroa.012.0.i93 ; 2 uses
  %shift136 = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fsub <2 x float> %i.et, %shift136
  %i.eu = extractelement <2 x float> %foldExtExtBinop137, i64 0
  %i.ev = fcmp ugt float %i.eu, %i.dx
  br i1 %i.ev, label %bb.ak, label %b2Normalize.exit97..critedge.loopexit_crit_edge, !llvm.loop !22

b2Normalize.exit97..critedge.loopexit_crit_edge:  ; preds = %b2Normalize.exit97
  br label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %2, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.p, %bb.r, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.ak, %._crit_edge, %b2Normalize.exit97..critedge.loopexit_crit_edge, %bb.a
  %.10 = phi i1 [ true, %bb.ak ], [ false, %bb.a ], [ false, %b2Normalize.exit97..critedge.loopexit_crit_edge ], [ true, %._crit_edge ], [ false, %bb.aj ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %2 ]
  ret i1 %.10
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"b2Hull", !4, i64 0, !5, i64 64}
!10 = !{!9, !5, i64 64}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !23}
!22 = distinct !{!22, !8}
!23 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
