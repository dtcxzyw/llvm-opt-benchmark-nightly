Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@BrotliZopfliComputeShortestPath:bb.a
  %i.acv = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %1 ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !35
  %i.acy = and i32 %i.acx, 134217727
  %i.acz = icmp eq i32 %i.acy, 0
  br i1 %i.acz, label %.lr.ph.i250, label %.critedge.i246

.lr.ph.i250:                                      ; preds = %._crit_edge541, %bb.dg
  %i.ada = phi ptr [ %i.ade, %bb.dg ], [ %i.acv, %._crit_edge541 ] ; 2 uses
  %.018.i = phi i64 [ %i.add, %bb.dg ], [ %1, %._crit_edge541 ] ; 2 uses
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !33
  %i.adc = icmp eq i32 %i.adb, 1
  br i1 %i.adc, label %bb.dg, label %.critedge.i246

bb.dg:                                            ; preds = %.lr.ph.i250
  %i.add = add i64 %.018.i, -1                    ; 3 uses
  %i.ade = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.add ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !35
  %i.adh = and i32 %i.adg, 134217727
  %i.adi = icmp eq i32 %i.adh, 0
  br i1 %i.adi, label %.lr.ph.i250, label %.critedge.i246, !llvm.loop !168

.critedge.i246:                                   ; preds = %bb.dg, %.lr.ph.i250, %._crit_edge541
  %.0.lcssa.i247 = phi i64 [ %1, %._crit_edge541 ], [ %.018.i, %.lr.ph.i250 ], [ %i.add, %bb.dg ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.acv, %._crit_edge541 ], [ %i.ada, %.lr.ph.i250 ], [ %i.ade, %bb.dg ]
  %i.adj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 12
  store i32 -1, ptr %i.adj, align 4, !tbaa !9
  %.not23.i = icmp eq i64 %.0.lcssa.i247, 0
  br i1 %.not23.i, label %ComputeShortestPathFromNodes.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.critedge.i246, %.lr.ph26.i
  %.125.i248 = phi i64 [ %i.ads, %.lr.ph26.i ], [ %.0.lcssa.i247, %.critedge.i246 ] ; 2 uses
  %.01724.i = phi i64 [ %i.adv, %.lr.ph26.i ], [ 0, %.critedge.i246 ]
  %i.adk = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.125.i248 ; 2 uses
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !33
  %i.adm = and i32 %i.adl, 33554431
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !35
  %i.adp = and i32 %i.ado, 134217727
  %i.adq = add nuw nsw i32 %i.adp, %i.adm         ; 2 uses
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = sub i64 %.125.i248, %i.adr             ; 3 uses
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 12
  store i32 %i.adq, ptr %i.adu, align 4, !tbaa !9
  %i.adv = add i64 %.01724.i, 1                   ; 2 uses
  %.not.i249 = icmp eq i64 %i.ads, 0
  br i1 %.not.i249, label %ComputeShortestPathFromNodes.exit, label %.lr.ph26.i, !llvm.loop !169

ComputeShortestPathFromNodes.exit:                ; preds = %.lr.ph26.i, %.critedge.i246
  %.017.lcssa.i = phi i64 [ 0, %.critedge.i246 ], [ %i.adv, %.lr.ph26.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  ret i64 %.017.lcssa.i
}

declare hidden ptr @BrotliAllocate(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @ZopfliCostModelSetFromLiteralCosts(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  tail call void @BrotliEstimateBitCostsForLiterals(i64 noundef %1, i64 noundef %i.f, i64 noundef %3, ptr noundef %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #13
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !160
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.preheader41.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.f, 1
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.lr.ph

.preheader41.preheader.loopexit.unr-lcssa:        ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader41.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader41.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.aa, %.preheader41.preheader.loopexit.unr-lcssa ]
  %.043.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %.preheader41.preheader.loopexit.unr-lcssa ]
  %.03842.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ac, %.preheader41.preheader.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.043.epil.init
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !160
  %i.m = fadd float %.03842.epil.init, %i.l
  %i.n = fadd float %.epil.init, %i.m
  store float %i.n, ptr %i.k, align 4, !tbaa !160
  br label %.preheader41.preheader

.preheader41.preheader:                           ; preds = %.lr.ph.epil.preheader, %.preheader41.preheader.loopexit.unr-lcssa, %bb.a
  br label %.preheader41

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.o = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.043 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 2 uses
  %.03842 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.043
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !160
  %i.s = fadd float %.03842, %i.r                 ; 2 uses
  %i.t = fadd float %i.o, %i.s                    ; 4 uses
  store float %i.t, ptr %i.q, align 4, !tbaa !160
  %i.u = fsub float %i.t, %i.o
  %i.v = fsub float %i.s, %i.u
  %i.w = add nuw i64 %.043, 2                     ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !160
  %i.z = fadd float %i.v, %i.y                    ; 2 uses
  %i.aa = fadd float %i.t, %i.z                   ; 4 uses
  store float %i.aa, ptr %i.x, align 4, !tbaa !160
  %i.ab = fsub float %i.aa, %i.t
  %i.ac = fsub float %i.z, %i.ab                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader41.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !170

.preheader:                                       ; preds = %FastLog2.exit40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.not47 = icmp eq i32 %i.ae, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph46

.preheader41:                                     ; preds = %.preheader41.preheader, %FastLog2.exit40
  %.144 = phi i64 [ %i.ao, %FastLog2.exit40 ], [ 0, %.preheader41.preheader ] ; 4 uses
  %i.ag = add nuw nsw i64 %.144, 11               ; 2 uses
  %i.ah = icmp samesign ult i64 %.144, 245
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader41
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ag
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !171
  br label %FastLog2.exit40

bb.c:                                             ; preds = %.preheader41
  %i.ak = uitofp nneg i64 %i.ag to double
  %i.al = tail call double @log2(double noundef %i.ak) #13
  br label %FastLog2.exit40

FastLog2.exit40:                                  ; preds = %bb.b, %bb.c
  %.0.i39 = phi double [ %i.aj, %bb.b ], [ %i.al, %bb.c ]
  %i.am = fptrunc double %.0.i39 to float
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.144
  store float %i.am, ptr %i.an, align 4, !tbaa !160
  %i.ao = add nuw nsw i64 %.144, 1                ; 2 uses
  %exitcond48.not = icmp eq i64 %i.ao, 704
  br i1 %exitcond48.not, label %.preheader, label %.preheader41, !llvm.loop !173

.lr.ph46:                                         ; preds = %.preheader, %FastLog2.exit
  %.245 = phi i64 [ %i.ay, %FastLog2.exit ], [ 0, %.preheader ] ; 3 uses
  %i.ap = add nuw nsw i64 %.245, 20
  %i.aq = and i64 %i.ap, 4294967295               ; 3 uses
  %i.ar = icmp samesign ult i64 %i.aq, 256
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph46
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !171
  br label %FastLog2.exit

bb.e:                                             ; preds = %.lr.ph46
  %i.au = uitofp nneg i64 %i.aq to double
  %i.av = tail call double @log2(double noundef %i.au) #13
  br label %FastLog2.exit

FastLog2.exit:                                    ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.at, %bb.d ], [ %i.av, %bb.e ]
  %i.aw = fptrunc double %.0.i to float
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.245
  store float %i.aw, ptr %i.ax, align 4, !tbaa !160
  %i.ay = add nuw nsw i64 %.245, 1                ; 2 uses
  %exitcond49.not = icmp eq i64 %i.ay, %i.af
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph46, !llvm.loop !174

._crit_edge:                                      ; preds = %FastLog2.exit, %.preheader
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @kBrotliLog2Table, i64 88), align 8, !tbaa !171
  %i.ba = fptrunc double %i.az to float
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store float %i.ba, ptr %i.bb, align 8, !tbaa !175
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @UpdateNodes(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef nonnull captures(none) %11, ptr nofree noundef captures(none) %12) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i64 %2, %1                           ; 4 uses
  %i.d = and i64 %4, %i.c                         ; 2 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %6)
  %i.f = add i64 %i.b, %i.c
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %6) ; 3 uses
  %i.h = sub i64 %0, %2                           ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = icmp sgt i32 %i.j, 10                    ; 2 uses
  %i.l = select i1 %i.k, i64 325, i64 150
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = add i64 %i.b, %1
  tail call fastcc void @EvaluateNode(i64 noundef %i.o, i64 noundef %2, i64 noundef %6, i64 noundef %i.n, ptr noundef %7, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 256 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 2832 ; 2 uses
  %i.r = add i64 %2, 2                            ; 2 uses
  %.not21.i = icmp ugt i64 %i.r, %0
  br i1 %.not21.i, label %ComputeMinimumCopyLength.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.s = load i64, ptr %i.p, align 8, !tbaa !57
  %i.t = sub i64 0, %i.s
  %i.u = and i64 %i.t, 7
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load float, ptr %i.w, align 4, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 2840
  %i.z = load float, ptr %i.y, align 8, !tbaa !175
  %i.aa = fadd float %i.x, %i.z
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %2
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !160
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !161
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !160
  %i.ah = fsub float %i.ad, %i.ag
  %i.ai = fadd float %i.aa, %i.ah
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %i.aj = phi i64 [ %i.at, %bb.b ], [ %i.r, %.lr.ph.i.preheader ]
  %.025.i = phi i64 [ %.1.i264, %bb.b ], [ 10, %.lr.ph.i.preheader ] ; 2 uses
  %.01524.i = phi i64 [ %.116.i, %bb.b ], [ 4, %.lr.ph.i.preheader ] ; 2 uses
  %.01723.i = phi i64 [ %i.ao, %bb.b ], [ 2, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi float [ %.119.i, %bb.b ], [ %i.ai, %.lr.ph.i.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !9
  %i.an = fcmp ugt float %i.am, %.01822.i
  br i1 %i.an, label %ComputeMinimumCopyLength.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.ao = add i64 %.01723.i, 1                    ; 4 uses
  %i.ap = icmp eq i64 %i.ao, %.025.i              ; 3 uses
  %i.aq = fadd float %.01822.i, 1.000000e+00
  %.119.i = select i1 %i.ap, float %i.aq, float %.01822.i
  %i.ar = zext i1 %i.ap to i64
  %.116.i = shl i64 %.01524.i, %i.ar
  %i.as = select i1 %i.ap, i64 %.01524.i, i64 0
  %.1.i264 = add i64 %i.as, %.025.i
  %i.at = add i64 %i.ao, %2                       ; 2 uses
  %.not.i265 = icmp ugt i64 %i.at, %0
  br i1 %.not.i265, label %ComputeMinimumCopyLength.exit, label %.lr.ph.i, !llvm.loop !176

ComputeMinimumCopyLength.exit:                    ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.017.lcssa.i = phi i64 [ 2, %bb.a ], [ %.01723.i, %.lr.ph.i ], [ %i.ao, %bb.b ] ; 2 uses
  %i.au = add i64 %.017.lcssa.i, -1               ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.h
  %i.aw = add i64 %i.g, %i.n                      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.d ; 4 uses
  %i.ay = icmp ugt i64 %i.h, 7
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 2816 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %12, i64 %2 ; 2 uses
  %.not368 = icmp eq i64 %8, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %ComputeMinimumCopyLength.exit, %.loopexit303
  %.0216366 = phi i64 [ 0, %ComputeMinimumCopyLength.exit ], [ %i.mv, %.loopexit303 ] ; 5 uses
  %.0217365 = phi i64 [ 0, %ComputeMinimumCopyLength.exit ], [ %.9, %.loopexit303 ] ; 3 uses
  %.val = load i64, ptr %i.p, align 8, !tbaa !57  ; 2 uses
  %i.bf = tail call range(i64 0, 9) i64 @llvm.umin.i64(i64 %.val, i64 8)
  %i.bg = icmp samesign ult i64 %.0216366, %i.bf
  br i1 %i.bg, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.bh = sub i64 %.0216366, %.val
  %i.bi = and i64 %i.bh, 7
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %i.bi ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !161
  %i.bl = sub i64 %2, %i.bk                       ; 10 uses
  %i.bm = icmp ult i64 %i.bl, 6
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = trunc nuw nsw i64 %i.bl to i16
  br label %GetInsertLengthCode.exit

bb.f:                                             ; preds = %bb.d
  %i.bo = icmp ult i64 %i.bl, 130
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = add nsw i64 %i.bl, -2                   ; 2 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = sub nuw nsw i32 30, %i.br               ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = lshr i64 %i.bp, %i.bv
  %i.bx = add nuw nsw i64 %i.bw, %i.bu
  %i.by = trunc nuw nsw i64 %i.bx to i16
  %i.bz = add nuw nsw i16 %i.by, 2
  br label %GetInsertLengthCode.exit

bb.h:                                             ; preds = %bb.f
  %i.ca = icmp ult i64 %i.bl, 2114
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = trunc nuw nsw i64 %i.bl to i32
  %i.cc = add nsw i32 %i.cb, -66
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  %i.cf = sub nuw nsw i16 41, %i.ce
  br label %GetInsertLengthCode.exit

bb.j:                                             ; preds = %bb.h
  %i.cg = icmp ult i64 %i.bl, 6210
  br i1 %i.cg, label %GetInsertLengthCode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp ult i64 %i.bl, 22594
  %..i = select i1 %i.ch, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i = phi i16 [ %i.bn, %bb.e ], [ %i.bz, %bb.g ], [ %i.cf, %bb.i ], [ 21, %bb.j ], [ %..i, %bb.k ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !164
  %i.ck = zext nneg i16 %.0.i to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsExtra, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = uitofp i32 %i.cm to float
  %i.co = fadd float %i.cj, %i.cn
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %2
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !160
  %i.cs = load float, ptr %i.cp, align 4, !tbaa !160
  %i.ct = fsub float %i.cr, %i.cs
  %i.cu = fadd float %i.co, %i.ct                 ; 3 uses
  br i1 %i.av, label %.lr.ph351, label %FindMatchLengthWithLimit.exit

.lr.ph351:                                        ; preds = %GetInsertLengthCode.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cw = icmp samesign ult i16 %.0.i, 8
  %i.cx = lshr i16 %.0.i, 3
  %narrow.i243 = mul nuw nsw i16 %i.cx, 3
  %i.cy = shl nuw nsw i16 %.0.i, 3
  %i.cz = and i16 %i.cy, 56
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph351, %.loopexit
  %.0211349 = phi i64 [ 0, %.lr.ph351 ], [ %i.in, %.loopexit ] ; 7 uses
  %.0213348 = phi i64 [ %i.au, %.lr.ph351 ], [ %.2215.ph, %.loopexit ] ; 14 uses
  %.1218347 = phi i64 [ %.0217365, %.lr.ph351 ], [ %.4.ph, %.loopexit ] ; 10 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @kDistanceCacheIndex, i64 %.0211349
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @kDistanceCacheOffset, i64 %.0211349
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dh = add nsw i32 %i.dg, %i.de                ; 3 uses
  %i.di = sext i32 %i.dh to i64                   ; 6 uses
  %i.dj = sub nuw i64 %i.c, %i.di
  %i.dk = add i64 %.0213348, %i.d                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9   ; 2 uses
  %i.dn = icmp ugt i64 %i.dk, %4
  br i1 %i.dn, label %FindMatchLengthWithLimit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = icmp ult i64 %i.aw, %i.di
  br i1 %i.do, label %.loopexit, label %bb.n, !prof !66

bb.n:                                             ; preds = %bb.m
  %.not = icmp ult i64 %i.e, %i.di
  br i1 %.not, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not234.not = icmp eq i32 %i.dh, 0
  br i1 %.not234.not, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = and i64 %i.dj, %4                       ; 2 uses
  %i.dq = add i64 %i.dp, %.0213348                ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, %4
  br i1 %i.dr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 %i.dq
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  %.not235 = icmp eq i8 %i.dm, %i.dt
  br i1 %.not235, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 %i.dp ; 4 uses
  br i1 %i.ay, label %.lr.ph, label %.lr.ph320.preheader

.preheader301:                                    ; preds = %bb.t
  %.not.i253316 = icmp eq i64 %i.ee, 0
  br i1 %.not.i253316, label %.critedge.i254, label %.lr.ph320.preheader

.lr.ph320.preheader:                              ; preds = %bb.r, %.preheader301
  %.022.i248.lcssa420 = phi i64 [ %i.ee, %.preheader301 ], [ %i.h, %bb.r ] ; 2 uses
  %.024.i247.lcssa419 = phi ptr [ %i.ec, %.preheader301 ], [ %i.ax, %bb.r ]
  %.026.i246.lcssa418 = phi ptr [ %i.ed, %.preheader301 ], [ %i.du, %bb.r ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.026.i246.lcssa418, i64 %.022.i248.lcssa420
  br label %.lr.ph320

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.022.i248313 = phi i64 [ %i.ee, %bb.t ], [ %i.h, %bb.r ]
  %.024.i247312 = phi ptr [ %i.ec, %bb.t ], [ %i.ax, %bb.r ] ; 2 uses
  %.026.i246311 = phi ptr [ %i.ed, %bb.t ], [ %i.du, %bb.r ] ; 3 uses
  %.0.copyload.i260 = load i64, ptr %.024.i247312, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.026.i246311, align 1 ; 2 uses
  %.not30.i256 = icmp eq i64 %.0.copyload.i260, %.0.copyload.i
  br i1 %.not30.i256, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.dv = xor i64 %.0.copyload.i, %.0.copyload.i260
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dv, i1 true)
  %i.dx = ptrtoint ptr %.026.i246311 to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = lshr i64 %i.dw, 3
  %i.eb = add i64 %i.dz, %i.ea
  br label %FindMatchLengthWithLimit.exit259

bb.t:                                             ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %.024.i247312, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.026.i246311, i64 8 ; 3 uses
  %i.ee = add i64 %.022.i248313, -8               ; 4 uses
  %i.ef = icmp ugt i64 %i.ee, 7
  br i1 %i.ef, label %.lr.ph, label %.preheader301, !llvm.loop !68

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %bb.u
  %.123.i252319 = phi i64 [ %i.ej, %bb.u ], [ %.022.i248.lcssa420, %.lr.ph320.preheader ]
  %.125.i251318 = phi ptr [ %i.ek, %bb.u ], [ %.024.i247.lcssa419, %.lr.ph320.preheader ] ; 2 uses
  %.228.i250317 = phi ptr [ %i.el, %bb.u ], [ %.026.i246.lcssa418, %.lr.ph320.preheader ] ; 3 uses
  %i.eg = load i8, ptr %.228.i250317, align 1, !tbaa !9
  %i.eh = load i8, ptr %.125.i251318, align 1, !tbaa !9
  %i.ei = icmp eq i8 %i.eg, %i.eh
  br i1 %i.ei, label %bb.u, label %.critedge.i254

bb.u:                                             ; preds = %.lr.ph320
  %i.ej = add nsw i64 %.123.i252319, -1           ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.125.i251318, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %.228.i250317, i64 1
  %.not.i253 = icmp eq i64 %i.ej, 0
  br i1 %.not.i253, label %.critedge.i254, label %.lr.ph320, !llvm.loop !69

.critedge.i254:                                   ; preds = %bb.u, %.lr.ph320, %.preheader301
  %.228.i250.lcssa = phi ptr [ %i.ed, %.preheader301 ], [ %.228.i250317, %.lr.ph320 ], [ %scevgep, %bb.u ]
  %i.em = ptrtoint ptr %.228.i250.lcssa to i64
  %i.en = ptrtoint ptr %i.du to i64
  %i.eo = sub i64 %i.em, %i.en
  br label %FindMatchLengthWithLimit.exit259

bb.v:                                             ; preds = %bb.n
  %i.ep = icmp ult i64 %i.g, %i.di
  br i1 %i.ep, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.eq = load i64, ptr %i.m, align 8, !tbaa !47
  %i.er = add i64 %i.eq, %i.g                     ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0206 = phi i64 [ 0, %bb.w ], [ %i.es, %bb.x ] ; 3 uses
  %i.es = add i64 %.0206, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !36 ; 2 uses
  %i.ev = add i64 %i.eu, %i.di
  %.not231 = icmp ult i64 %i.er, %i.ev
  br i1 %.not231, label %bb.y, label %bb.x, !llvm.loop !177

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0206
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !36 ; 2 uses
  %i.ey = add i64 %i.ex, %i.di
  %i.ez = sub i64 %i.er, %i.ey                    ; 2 uses
  %i.fa = add i64 %i.ex, %i.ez
  %i.fb = sub i64 %i.eu, %i.fa
  %i.fc = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.h) ; 4 uses
  %.not232 = icmp ult i64 %.0213348, %i.fc
  br i1 %.not232, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0206
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !178
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.ez  ; 5 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 %.0213348
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %.not233 = icmp eq i8 %i.dm, %i.fh
  br i1 %.not233, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.fi = icmp ugt i64 %i.fc, 7
  br i1 %i.fi, label %.lr.ph327, label %.lr.ph335.preheader

.preheader:                                       ; preds = %bb.ac
  %.not.i331 = icmp eq i64 %i.fs, 0
  br i1 %.not.i331, label %.critedge.i, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %bb.aa, %.preheader
  %.022.i.lcssa427 = phi i64 [ %i.fs, %.preheader ], [ %i.fc, %bb.aa ] ; 2 uses
  %.024.i.lcssa426 = phi ptr [ %i.fq, %.preheader ], [ %i.ax, %bb.aa ]
  %.026.i.lcssa425 = phi ptr [ %i.fr, %.preheader ], [ %i.ff, %bb.aa ] ; 2 uses
  %scevgep382 = getelementptr i8, ptr %.026.i.lcssa425, i64 %.022.i.lcssa427
  br label %.lr.ph335

.lr.ph327:                                        ; preds = %bb.aa, %bb.ac
  %.022.i326 = phi i64 [ %i.fs, %bb.ac ], [ %i.fc, %bb.aa ]
  %.024.i325 = phi ptr [ %i.fq, %bb.ac ], [ %i.ax, %bb.aa ] ; 2 uses
  %.026.i324 = phi ptr [ %i.fr, %bb.ac ], [ %i.ff, %bb.aa ] ; 3 uses
  %.0.copyload.i262 = load i64, ptr %.024.i325, align 1 ; 2 uses
  %.0.copyload.i261 = load i64, ptr %.026.i324, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i262, %.0.copyload.i261
  br i1 %.not30.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph327
  %i.fj = xor i64 %.0.copyload.i261, %.0.copyload.i262
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fj, i1 true)
  %i.fl = ptrtoint ptr %.026.i324 to i64
  %i.fm = ptrtoint ptr %i.ff to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = lshr i64 %i.fk, 3
  %i.fp = add i64 %i.fn, %i.fo
  br label %FindMatchLengthWithLimit.exit259

bb.ac:                                            ; preds = %.lr.ph327
  %i.fq = getelementptr inbounds nuw i8, ptr %.024.i325, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.026.i324, i64 8 ; 3 uses
  %i.fs = add i64 %.022.i326, -8                  ; 4 uses
  %i.ft = icmp ugt i64 %i.fs, 7
  br i1 %i.ft, label %.lr.ph327, label %.preheader, !llvm.loop !68

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %bb.ad
  %.123.i334 = phi i64 [ %i.fx, %bb.ad ], [ %.022.i.lcssa427, %.lr.ph335.preheader ]
  %.125.i333 = phi ptr [ %i.fy, %bb.ad ], [ %.024.i.lcssa426, %.lr.ph335.preheader ] ; 2 uses
  %.228.i332 = phi ptr [ %i.fz, %bb.ad ], [ %.026.i.lcssa425, %.lr.ph335.preheader ] ; 3 uses
  %i.fu = load i8, ptr %.228.i332, align 1, !tbaa !9
  %i.fv = load i8, ptr %.125.i333, align 1, !tbaa !9
  %i.fw = icmp eq i8 %i.fu, %i.fv
  br i1 %i.fw, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %.lr.ph335
  %i.fx = add nsw i64 %.123.i334, -1              ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.125.i333, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.228.i332, i64 1
  %.not.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph335, !llvm.loop !69

.critedge.i:                                      ; preds = %bb.ad, %.lr.ph335, %.preheader
  %.228.i.lcssa = phi ptr [ %i.fr, %.preheader ], [ %.228.i332, %.lr.ph335 ], [ %scevgep382, %bb.ad ]
  %i.ga = ptrtoint ptr %.228.i.lcssa to i64
  %i.gb = ptrtoint ptr %i.ff to i64
  %i.gc = sub i64 %i.ga, %i.gb
  br label %FindMatchLengthWithLimit.exit259

FindMatchLengthWithLimit.exit259:                 ; preds = %.critedge.i, %bb.ab, %.critedge.i254, %bb.s
  %.1210 = phi i64 [ %i.eo, %.critedge.i254 ], [ %i.eb, %bb.s ], [ %i.gc, %.critedge.i ], [ %i.fp, %bb.ab ] ; 2 uses
  %i.gd = load ptr, ptr %i.bb, align 8, !tbaa !55
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.0211349
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !160
  %i.gg = fadd float %i.cu, %i.gf
  %.0205339 = add i64 %.0213348, 1                ; 2 uses
  %.not236340 = icmp ugt i64 %.0205339, %.1210
  br i1 %.not236340, label %.loopexit, label %.lr.ph344

.lr.ph344:                                        ; preds = %FindMatchLengthWithLimit.exit259
  %i.gh = icmp eq i64 %.0211349, 0
  %or.cond.i = and i1 %i.cw, %i.gh
  %i.gi = shl nuw nsw i64 %.0211349, 27
  %i.gj = add nuw nsw i64 %i.gi, 134217728
  %i.gk = or i64 %i.gj, %i.bl
  %i.gl = trunc i64 %i.gk to i32
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph344, %bb.al
  %.0205343 = phi i64 [ %.0205339, %.lr.ph344 ], [ %.0205, %bb.al ] ; 10 uses
end_hunk_0
