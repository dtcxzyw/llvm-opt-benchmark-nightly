Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model_trainer?download=true
inline.NumInlined: 5768
inline.NumDeleted: 2088
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN14saisxx_private10suffixsortIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEiT_T0_T1_SE_SE_b:bb.a

.preheader.i327:                                  ; preds = %.lr.ph.preheader.i331, %bb.aa
  br i1 %i.fn, label %.lr.ph11.i328.preheader, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332

.lr.ph11.i328.preheader:                          ; preds = %.preheader.i327
  %i.kf = add nsw i64 %3, -1
  %xtraiter547 = and i64 %3, 3                    ; 3 uses
  %i.kg = icmp ult i64 %i.kf, 3
  br i1 %i.kg, label %.lr.ph11.i328.epil.preheader, label %.lr.ph11.i328.preheader.new

.lr.ph11.i328.preheader.new:                      ; preds = %.lr.ph11.i328.preheader
  %unroll_iter551 = and i64 %3, 9223372036854775804
  br label %.lr.ph11.i328

.lr.ph11.i328:                                    ; preds = %.lr.ph11.i328, %.lr.ph11.i328.preheader.new
  %.110.i329 = phi i64 [ 0, %.lr.ph11.i328.preheader.new ], [ %i.li, %.lr.ph11.i328 ] ; 5 uses
  %niter552 = phi i64 [ 0, %.lr.ph11.i328.preheader.new ], [ %niter552.next.3, %.lr.ph11.i328 ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i329
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !149
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kj ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !107
  %i.km = add nsw i64 %i.kl, 1
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !107
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i329
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !149
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kq ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !107
  %i.kt = add nsw i64 %i.ks, 1
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !107
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i329
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !149
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kx ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !107
  %i.la = add nsw i64 %i.kz, 1
  store i64 %i.la, ptr %i.ky, align 8, !tbaa !107
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i329
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !149
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.le ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !107
  %i.lh = add nsw i64 %i.lg, 1
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !107
  %i.li = add nuw nsw i64 %.110.i329, 4           ; 2 uses
  %niter552.next.3 = add nuw nsw i64 %niter552, 4 ; 2 uses
  %niter552.ncmp.3 = icmp eq i64 %niter552.next.3, %unroll_iter551
  br i1 %niter552.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332.loopexit.unr-lcssa, label %.lr.ph11.i328, !llvm.loop !18

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332.loopexit.unr-lcssa: ; preds = %.lr.ph11.i328
  %lcmp.mod549.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod549.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332, label %.lr.ph11.i328.epil.preheader

.lr.ph11.i328.epil.preheader:                     ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332.loopexit.unr-lcssa, %.lr.ph11.i328.preheader
  %.110.i329.epil.init = phi i64 [ 0, %.lr.ph11.i328.preheader ], [ %i.li, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332.loopexit.unr-lcssa ]
  %lcmp.mod550 = icmp ne i64 %xtraiter547, 0
  tail call void @llvm.assume(i1 %lcmp.mod550)
  br label %.lr.ph11.i328.epil

.lr.ph11.i328.epil:                               ; preds = %.lr.ph11.i328.epil, %.lr.ph11.i328.epil.preheader
  %.110.i329.epil = phi i64 [ %i.lp, %.lr.ph11.i328.epil ], [ %.110.i329.epil.init, %.lr.ph11.i328.epil.preheader ] ; 2 uses
  %epil.iter548 = phi i64 [ %epil.iter548.next, %.lr.ph11.i328.epil ], [ 0, %.lr.ph11.i328.epil.preheader ]
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i329.epil
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !149
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ll ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !107
  %i.lo = add nsw i64 %i.ln, 1
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !107
  %i.lp = add nuw nsw i64 %.110.i329.epil, 1
  %epil.iter548.next = add i64 %epil.iter548, 1   ; 2 uses
  %epil.iter548.cmp.not = icmp eq i64 %epil.iter548.next, %xtraiter547
  br i1 %epil.iter548.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332, label %.lr.ph11.i328.epil, !llvm.loop !689

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332.loopexit.unr-lcssa, %.lr.ph11.i328.epil, %.preheader.i327
  br i1 %i.ke, label %.lr.ph28.i334.preheader, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338

.lr.ph28.i334.preheader:                          ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332
  %i.lq = add nsw i64 %4, -1
  %xtraiter553 = and i64 %4, 3                    ; 3 uses
  %i.lr = icmp ult i64 %i.lq, 3
  br i1 %i.lr, label %.lr.ph28.i334.epil.preheader, label %.lr.ph28.i334.preheader.new

.lr.ph28.i334.preheader.new:                      ; preds = %.lr.ph28.i334.preheader
  %unroll_iter557 = and i64 %4, 9223372036854775804
  br label %.lr.ph28.i334

.lr.ph28.i334:                                    ; preds = %.lr.ph28.i334, %.lr.ph28.i334.preheader.new
  %.027.i335 = phi i64 [ 0, %.lr.ph28.i334.preheader.new ], [ %i.mg, %.lr.ph28.i334 ]
  %.02026.i336 = phi i64 [ 0, %.lr.ph28.i334.preheader.new ], [ %i.mh, %.lr.ph28.i334 ] ; 5 uses
  %niter558 = phi i64 [ 0, %.lr.ph28.i334.preheader.new ], [ %niter558.next.3, %.lr.ph28.i334 ]
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.02026.i336 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !107
  %i.lu = add nsw i64 %i.lt, %.027.i335           ; 2 uses
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !107
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.02026.i336
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !107
  %i.ly = add nsw i64 %i.lx, %i.lu                ; 2 uses
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !107
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.02026.i336
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !107
  %i.mc = add nsw i64 %i.mb, %i.ly                ; 2 uses
  store i64 %i.mc, ptr %i.ma, align 8, !tbaa !107
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.02026.i336
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !107
  %i.mg = add nsw i64 %i.mf, %i.mc                ; 3 uses
  store i64 %i.mg, ptr %i.me, align 8, !tbaa !107
  %i.mh = add nuw nsw i64 %.02026.i336, 4         ; 2 uses
  %niter558.next.3 = add nuw nsw i64 %niter558, 4 ; 2 uses
  %niter558.ncmp.3 = icmp eq i64 %niter558.next.3, %unroll_iter557
  br i1 %niter558.ncmp.3, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa, label %.lr.ph28.i334, !llvm.loop !19

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa: ; preds = %.lr.ph28.i334
  %lcmp.mod555.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod555.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338, label %.lr.ph28.i334.epil.preheader

.lr.ph28.i334.epil.preheader:                     ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa, %.lr.ph28.i334.preheader
  %.027.i335.epil.init = phi i64 [ 0, %.lr.ph28.i334.preheader ], [ %i.mg, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa ]
  %.02026.i336.epil.init = phi i64 [ 0, %.lr.ph28.i334.preheader ], [ %i.mh, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa ]
  %lcmp.mod556 = icmp ne i64 %xtraiter553, 0
  tail call void @llvm.assume(i1 %lcmp.mod556)
  br label %.lr.ph28.i334.epil

.lr.ph28.i334.epil:                               ; preds = %.lr.ph28.i334.epil, %.lr.ph28.i334.epil.preheader
  %.027.i335.epil = phi i64 [ %i.mk, %.lr.ph28.i334.epil ], [ %.027.i335.epil.init, %.lr.ph28.i334.epil.preheader ]
  %.02026.i336.epil = phi i64 [ %i.ml, %.lr.ph28.i334.epil ], [ %.02026.i336.epil.init, %.lr.ph28.i334.epil.preheader ] ; 2 uses
  %epil.iter554 = phi i64 [ %epil.iter554.next, %.lr.ph28.i334.epil ], [ 0, %.lr.ph28.i334.epil.preheader ]
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.02026.i336.epil ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !107
  %i.mk = add nsw i64 %i.mj, %.027.i335.epil      ; 2 uses
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !107
  %i.ml = add nuw nsw i64 %.02026.i336.epil, 1
  %epil.iter554.next = add i64 %epil.iter554, 1   ; 2 uses
  %epil.iter554.cmp.not = icmp eq i64 %epil.iter554.next, %xtraiter553
  br i1 %epil.iter554.cmp.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338, label %.lr.ph28.i334.epil, !llvm.loop !690

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338: ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa, %.lr.ph28.i334.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit332
  %i.mm = icmp slt i64 %.0264.lcssa, %3
  br i1 %i.mm, label %.lr.ph474.preheader, label %.preheader

.lr.ph474.preheader:                              ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338
  %i.mn = shl i64 %.0264.lcssa, 3
  %scevgep483 = getelementptr i8, ptr %1, i64 %i.mn
  %i.mo = sub i64 %3, %.0264.lcssa
  %i.mp = shl i64 %i.mo, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep483, i8 0, i64 %i.mp, i1 false), !tbaa !107
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph474.preheader, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338
  br i1 %i.gw, label %.lr.ph476.preheader, label %._crit_edge477

.lr.ph476.preheader:                              ; preds = %.preheader
  %xtraiter559 = and i64 %.0264.lcssa, 1
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod560.not, label %.lr.ph476.prol.loopexit, label %.lr.ph476.prol

.lr.ph476.prol:                                   ; preds = %.lr.ph476.preheader
  %.12.prol = add nsw i64 %.0264.lcssa, -1        ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.12.prol ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.mq, align 8, !tbaa !107
  %i.ms = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !149
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.mu ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !107
  %i.mx = add nsw i64 %i.mw, -1                   ; 2 uses
  store i64 %i.mx, ptr %i.mv, align 8, !tbaa !107
  %i.my = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mx
  store i64 %i.mr, ptr %i.my, align 8, !tbaa !107
  br label %.lr.ph476.prol.loopexit

.lr.ph476.prol.loopexit:                          ; preds = %.lr.ph476.prol, %.lr.ph476.preheader
  %.12.in475.unr = phi i64 [ %.0264.lcssa, %.lr.ph476.preheader ], [ %.12.prol, %.lr.ph476.prol ]
  %i.mz = icmp eq i64 %.0264.lcssa, 1
  br i1 %i.mz, label %._crit_edge477, label %.lr.ph476

.lr.ph476:                                        ; preds = %.lr.ph476.prol.loopexit, %.lr.ph476
  %.12.in475 = phi i64 [ %.12.1, %.lr.ph476 ], [ %.12.in475.unr, %.lr.ph476.prol.loopexit ] ; 3 uses
  %i.na = getelementptr [8 x i8], ptr %1, i64 %.12.in475
  %i.nb = getelementptr i8, ptr %i.na, i64 -8     ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.nb, align 8, !tbaa !107
  %i.nd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !149
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.nf ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !107
  %i.ni = add nsw i64 %i.nh, -1                   ; 2 uses
  store i64 %i.ni, ptr %i.ng, align 8, !tbaa !107
  %i.nj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ni
  store i64 %i.nc, ptr %i.nj, align 8, !tbaa !107
  %.12.1 = add nsw i64 %.12.in475, -2             ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.12.1 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.nk, align 8, !tbaa !107
  %i.nm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !149
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.no ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !107
  %i.nr = add nsw i64 %i.nq, -1                   ; 2 uses
  store i64 %i.nr, ptr %i.np, align 8, !tbaa !107
  %i.ns = getelementptr inbounds [8 x i8], ptr %1, i64 %i.nr
  store i64 %i.nl, ptr %i.ns, align 8, !tbaa !107
  %i.nt = icmp sgt i64 %.12.in475, 2
  br i1 %i.nt, label %.lr.ph476, label %._crit_edge477, !llvm.loop !691

._crit_edge477:                                   ; preds = %.lr.ph476.prol.loopexit, %.lr.ph476, %.preheader
  br i1 %5, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge477
  tail call void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEES8_lEEvT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr noundef nonnull %i.kd, ptr noundef nonnull %i.kd, i64 noundef %3, i64 noundef %4)
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge477
  %i.nu = tail call noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEES8_lEEiT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr noundef nonnull %i.kd, ptr noundef nonnull %i.kd, i64 noundef %3, i64 noundef %4)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0272 = phi i32 [ 0, %bb.ab ], [ %i.nu, %bb.ac ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.kd) #28
  br label %bb.ah

bb.ae:                                            ; preds = %.loopexit
  %i.nv = getelementptr inbounds [8 x i8], ptr %1, i64 %3 ; 14 uses
  %i.nw = sub nsw i64 %2, %4
  %.not312 = icmp sgt i64 %4, %i.nw
  %spec.select403.idx = select i1 %.not312, i64 0, i64 %4
  %spec.select403 = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %spec.select403.idx ; 10 uses
  %i.nx = icmp sgt i64 %4, 0                      ; 2 uses
  br i1 %i.nx, label %.lr.ph.preheader.i343, label %.preheader.i339

.lr.ph.preheader.i343:                            ; preds = %bb.ae
  %i.ny = shl nuw i64 %4, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.nv, i8 0, i64 %i.ny, i1 false), !tbaa !107
  br label %.preheader.i339

.preheader.i339:                                  ; preds = %.lr.ph.preheader.i343, %bb.ae
  br i1 %i.fn, label %.lr.ph12.i340.preheader, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344

.lr.ph12.i340.preheader:                          ; preds = %.preheader.i339
  %i.nz = add nsw i64 %3, -1
  %xtraiter533 = and i64 %3, 3                    ; 3 uses
  %i.oa = icmp ult i64 %i.nz, 3
  br i1 %i.oa, label %.lr.ph12.i340.epil.preheader, label %.lr.ph12.i340.preheader.new

.lr.ph12.i340.preheader.new:                      ; preds = %.lr.ph12.i340.preheader
  %unroll_iter537 = and i64 %3, 9223372036854775804
  br label %.lr.ph12.i340

.lr.ph12.i340:                                    ; preds = %.lr.ph12.i340, %.lr.ph12.i340.preheader.new
  %.111.i341 = phi i64 [ 0, %.lr.ph12.i340.preheader.new ], [ %i.pc, %.lr.ph12.i340 ] ; 5 uses
  %niter538 = phi i64 [ 0, %.lr.ph12.i340.preheader.new ], [ %niter538.next.3, %.lr.ph12.i340 ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.111.i341
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !149
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.od ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !107
  %i.og = add nsw i64 %i.of, 1
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !107
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.111.i341
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !149
  %i.ok = zext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.ok ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !107
  %i.on = add nsw i64 %i.om, 1
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !107
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.111.i341
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !149
  %i.or = zext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.or ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !107
  %i.ou = add nsw i64 %i.ot, 1
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !107
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.111.i341
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !149
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.oy ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !107
  %i.pb = add nsw i64 %i.pa, 1
  store i64 %i.pb, ptr %i.oz, align 8, !tbaa !107
  %i.pc = add nuw nsw i64 %.111.i341, 4           ; 2 uses
  %niter538.next.3 = add nuw nsw i64 %niter538, 4 ; 2 uses
  %niter538.ncmp.3 = icmp eq i64 %niter538.next.3, %unroll_iter537
  br i1 %niter538.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344.loopexit.unr-lcssa, label %.lr.ph12.i340, !llvm.loop !20

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344.loopexit.unr-lcssa: ; preds = %.lr.ph12.i340
  %lcmp.mod535.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod535.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344, label %.lr.ph12.i340.epil.preheader

.lr.ph12.i340.epil.preheader:                     ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344.loopexit.unr-lcssa, %.lr.ph12.i340.preheader
  %.111.i341.epil.init = phi i64 [ 0, %.lr.ph12.i340.preheader ], [ %i.pc, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344.loopexit.unr-lcssa ]
  %lcmp.mod536 = icmp ne i64 %xtraiter533, 0
  tail call void @llvm.assume(i1 %lcmp.mod536)
  br label %.lr.ph12.i340.epil

.lr.ph12.i340.epil:                               ; preds = %.lr.ph12.i340.epil, %.lr.ph12.i340.epil.preheader
  %.111.i341.epil = phi i64 [ %i.pj, %.lr.ph12.i340.epil ], [ %.111.i341.epil.init, %.lr.ph12.i340.epil.preheader ] ; 2 uses
  %epil.iter534 = phi i64 [ %epil.iter534.next, %.lr.ph12.i340.epil ], [ 0, %.lr.ph12.i340.epil.preheader ]
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.111.i341.epil
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !149
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.pf ; 2 uses
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !107
  %i.pi = add nsw i64 %i.ph, 1
  store i64 %i.pi, ptr %i.pg, align 8, !tbaa !107
  %i.pj = add nuw nsw i64 %.111.i341.epil, 1
  %epil.iter534.next = add i64 %epil.iter534, 1   ; 2 uses
  %epil.iter534.cmp.not = icmp eq i64 %epil.iter534.next, %xtraiter533
  br i1 %epil.iter534.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344, label %.lr.ph12.i340.epil, !llvm.loop !692

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344.loopexit.unr-lcssa, %.lr.ph12.i340.epil, %.preheader.i339
  br i1 %i.nx, label %.lr.ph28.i346.preheader, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350

.lr.ph28.i346.preheader:                          ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344
  %xtraiter539 = and i64 %4, 3                    ; 3 uses
  %i.pk = icmp ult i64 %4, 4
  br i1 %i.pk, label %.lr.ph28.i346.epil.preheader, label %.lr.ph28.i346.preheader.new

.lr.ph28.i346.preheader.new:                      ; preds = %.lr.ph28.i346.preheader
  %unroll_iter543 = and i64 %4, 9223372036854775804
  br label %.lr.ph28.i346

.lr.ph28.i346:                                    ; preds = %.lr.ph28.i346, %.lr.ph28.i346.preheader.new
  %.027.i347 = phi i64 [ 0, %.lr.ph28.i346.preheader.new ], [ %i.qc, %.lr.ph28.i346 ]
  %.01626.i348 = phi i64 [ 0, %.lr.ph28.i346.preheader.new ], [ %i.qe, %.lr.ph28.i346 ] ; 6 uses
  %niter544 = phi i64 [ 0, %.lr.ph28.i346.preheader.new ], [ %niter544.next.3, %.lr.ph28.i346 ]
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %.01626.i348
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !107
  %i.pn = add nsw i64 %i.pm, %.027.i347           ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %.01626.i348
  store i64 %i.pn, ptr %i.po, align 8, !tbaa !107
  %i.pp = or disjoint i64 %.01626.i348, 1         ; 2 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.pp
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !107
  %i.ps = add nsw i64 %i.pr, %i.pn                ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.pp
  store i64 %i.ps, ptr %i.pt, align 8, !tbaa !107
  %i.pu = or disjoint i64 %.01626.i348, 2         ; 2 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.pu
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !107
  %i.px = add nsw i64 %i.pw, %i.ps                ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.pu
  store i64 %i.px, ptr %i.py, align 8, !tbaa !107
  %i.pz = or disjoint i64 %.01626.i348, 3         ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.pz
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !107
  %i.qc = add nsw i64 %i.qb, %i.px                ; 3 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.pz
  store i64 %i.qc, ptr %i.qd, align 8, !tbaa !107
  %i.qe = add nuw nsw i64 %.01626.i348, 4         ; 2 uses
  %niter544.next.3 = add nuw nsw i64 %niter544, 4 ; 2 uses
  %niter544.ncmp.3 = icmp eq i64 %niter544.next.3, %unroll_iter543
  br i1 %niter544.ncmp.3, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa, label %.lr.ph28.i346, !llvm.loop !21

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa: ; preds = %.lr.ph28.i346
  %lcmp.mod541.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod541.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350, label %.lr.ph28.i346.epil.preheader

.lr.ph28.i346.epil.preheader:                     ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa, %.lr.ph28.i346.preheader
  %.027.i347.epil.init = phi i64 [ 0, %.lr.ph28.i346.preheader ], [ %i.qc, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa ]
  %.01626.i348.epil.init = phi i64 [ 0, %.lr.ph28.i346.preheader ], [ %i.qe, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa ]
  %lcmp.mod542 = icmp ne i64 %xtraiter539, 0
  tail call void @llvm.assume(i1 %lcmp.mod542)
  br label %.lr.ph28.i346.epil

.lr.ph28.i346.epil:                               ; preds = %.lr.ph28.i346.epil, %.lr.ph28.i346.epil.preheader
  %.027.i347.epil = phi i64 [ %i.qh, %.lr.ph28.i346.epil ], [ %.027.i347.epil.init, %.lr.ph28.i346.epil.preheader ]
  %.01626.i348.epil = phi i64 [ %i.qj, %.lr.ph28.i346.epil ], [ %.01626.i348.epil.init, %.lr.ph28.i346.epil.preheader ] ; 3 uses
  %epil.iter540 = phi i64 [ %epil.iter540.next, %.lr.ph28.i346.epil ], [ 0, %.lr.ph28.i346.epil.preheader ]
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %.01626.i348.epil
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !107
  %i.qh = add nsw i64 %i.qg, %.027.i347.epil      ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %.01626.i348.epil
  store i64 %i.qh, ptr %i.qi, align 8, !tbaa !107
  %i.qj = add nuw nsw i64 %.01626.i348.epil, 1
  %epil.iter540.next = add i64 %epil.iter540, 1   ; 2 uses
  %epil.iter540.cmp.not = icmp eq i64 %epil.iter540.next, %xtraiter539
  br i1 %epil.iter540.cmp.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350, label %.lr.ph28.i346.epil, !llvm.loop !693

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350: ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa, %.lr.ph28.i346.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEElEEvT_T0_T1_SE_.exit344
  %i.qk = icmp slt i64 %.0264.lcssa, %3
  br i1 %i.qk, label %.lr.ph469.preheader, label %.preheader405

.lr.ph469.preheader:                              ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350
  %i.ql = shl i64 %.0264.lcssa, 3
  %scevgep482 = getelementptr i8, ptr %1, i64 %i.ql
  %i.qm = sub i64 %3, %.0264.lcssa
  %i.qn = shl i64 %i.qm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep482, i8 0, i64 %i.qn, i1 false), !tbaa !107
  br label %.preheader405

.preheader405:                                    ; preds = %.lr.ph469.preheader, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350
  br i1 %i.gw, label %.lr.ph471.preheader, label %._crit_edge472

.lr.ph471.preheader:                              ; preds = %.preheader405
  %xtraiter545 = and i64 %.0264.lcssa, 1
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph471.prol.loopexit, label %.lr.ph471.prol

.lr.ph471.prol:                                   ; preds = %.lr.ph471.preheader
  %.14.prol = add nsw i64 %.0264.lcssa, -1        ; 2 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.14.prol ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.qo, align 8, !tbaa !107
  %i.qq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !149
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.qs ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !107
  %i.qv = add nsw i64 %i.qu, -1                   ; 2 uses
  store i64 %i.qv, ptr %i.qt, align 8, !tbaa !107
  %i.qw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.qv
  store i64 %i.qp, ptr %i.qw, align 8, !tbaa !107
  br label %.lr.ph471.prol.loopexit

.lr.ph471.prol.loopexit:                          ; preds = %.lr.ph471.prol, %.lr.ph471.preheader
  %.14.in470.unr = phi i64 [ %.0264.lcssa, %.lr.ph471.preheader ], [ %.14.prol, %.lr.ph471.prol ]
  %i.qx = icmp eq i64 %.0264.lcssa, 1
  br i1 %i.qx, label %._crit_edge472, label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.prol.loopexit, %.lr.ph471
  %.14.in470 = phi i64 [ %.14.1, %.lr.ph471 ], [ %.14.in470.unr, %.lr.ph471.prol.loopexit ] ; 3 uses
  %i.qy = getelementptr [8 x i8], ptr %1, i64 %.14.in470
  %i.qz = getelementptr i8, ptr %i.qy, i64 -8     ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.qz, align 8, !tbaa !107
  %i.rb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !149
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.rd ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !107
  %i.rg = add nsw i64 %i.rf, -1                   ; 2 uses
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !107
  %i.rh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.rg
  store i64 %i.ra, ptr %i.rh, align 8, !tbaa !107
  %.14.1 = add nsw i64 %.14.in470, -2             ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.14.1 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.ri, align 8, !tbaa !107
  %i.rk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.rj
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !149
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.rm ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !107
  %i.rp = add nsw i64 %i.ro, -1                   ; 2 uses
  store i64 %i.rp, ptr %i.rn, align 8, !tbaa !107
  %i.rq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.rp
  store i64 %i.rj, ptr %i.rq, align 8, !tbaa !107
  %i.rr = icmp sgt i64 %.14.in470, 2
  br i1 %i.rr, label %.lr.ph471, label %._crit_edge472, !llvm.loop !694

._crit_edge472:                                   ; preds = %.lr.ph471.prol.loopexit, %.lr.ph471, %.preheader405
  br i1 %5, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge472
  tail call void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEESB_lEEvT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr %i.nv, ptr %spec.select403, i64 noundef %3, i64 noundef %4)
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge472
  %i.rs = tail call noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEESB_lEEiT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr %i.nv, ptr %spec.select403, i64 noundef %3, i64 noundef %4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad, %._crit_edge459
  %.0 = phi i32 [ -2, %._crit_edge459 ], [ %.0272, %bb.ad ], [ 0, %bb.af ], [ %i.rs, %bb.ag ]
  ret i32 %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEES8_lEEvT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = shl nuw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.c, i1 false), !tbaa !107
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.d = icmp sgt i64 %4, 0
  br i1 %i.d, label %.lr.ph11.i.preheader, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit

.lr.ph11.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.e = icmp ult i64 %4, 4
  br i1 %i.e, label %.lr.ph11.i.epil.preheader, label %.lr.ph11.i.preheader.new

.lr.ph11.i.preheader.new:                         ; preds = %.lr.ph11.i.preheader
  %unroll_iter = and i64 %4, 9223372036854775804
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.i.preheader.new
  %.110.i = phi i64 [ 0, %.lr.ph11.i.preheader.new ], [ %i.ag, %.lr.ph11.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph11.i.preheader.new ], [ %niter.next.3, %.lr.ph11.i ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !149
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !149
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !107
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !107
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !149
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !107
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !149
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !107
  %i.ag = add nuw nsw i64 %.110.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa, label %.lr.ph11.i, !llvm.loop !18

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph11.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit, label %.lr.ph11.i.epil.preheader

.lr.ph11.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa, %.lr.ph11.i.preheader
  %.110.i.epil.init = phi i64 [ 0, %.lr.ph11.i.preheader ], [ %i.ag, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph11.i.epil

.lr.ph11.i.epil:                                  ; preds = %.lr.ph11.i.epil, %.lr.ph11.i.epil.preheader
  %.110.i.epil = phi i64 [ %i.an, %.lr.ph11.i.epil ], [ %.110.i.epil.init, %.lr.ph11.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph11.i.epil ], [ 0, %.lr.ph11.i.epil.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !149
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !107
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !107
  %i.an = add nuw nsw i64 %.110.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit, label %.lr.ph11.i.epil, !llvm.loop !695

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa, %.lr.ph11.i.epil, %.preheader.i, %bb.a
  %i.ao = icmp sgt i64 %5, 0                      ; 3 uses
  br i1 %i.ao, label %.lr.ph.i.preheader, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit

.lr.ph.i.preheader:                               ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit
  %xtraiter134 = and i64 %5, 3                    ; 3 uses
  %i.ap = icmp ult i64 %5, 4
  br i1 %i.ap, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter138 = and i64 %5, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.125.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %.12124.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bj, %.lr.ph.i ] ; 6 uses
  %niter139 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter139.next.3, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.12124.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !107
  %i.as = add nsw i64 %i.ar, %.125.i              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.12124.i
  store i64 %.125.i, ptr %i.at, align 8, !tbaa !107
  %i.au = or disjoint i64 %.12124.i, 1            ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !107
  %i.ax = add nsw i64 %i.aw, %i.as                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  store i64 %i.as, ptr %i.ay, align 8, !tbaa !107
  %i.az = or disjoint i64 %.12124.i, 2            ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !107
  %i.bc = add nsw i64 %i.bb, %i.ax                ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  store i64 %i.ax, ptr %i.bd, align 8, !tbaa !107
  %i.be = or disjoint i64 %.12124.i, 3            ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !107
  %i.bh = add nsw i64 %i.bg, %i.bc                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.be
  store i64 %i.bc, ptr %i.bi, align 8, !tbaa !107
  %i.bj = add nuw nsw i64 %.12124.i, 4            ; 2 uses
  %niter139.next.3 = add nuw nsw i64 %niter139, 4 ; 2 uses
  %niter139.ncmp.3 = icmp eq i64 %niter139.next.3, %unroll_iter138
  br i1 %niter139.ncmp.3, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod136.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod136.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.125.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bh, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa ]
  %.12124.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bj, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter134, 0
  tail call void @llvm.assume(i1 %lcmp.mod137)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.125.i.epil = phi i64 [ %i.bm, %.lr.ph.i.epil ], [ %.125.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.12124.i.epil = phi i64 [ %i.bo, %.lr.ph.i.epil ], [ %.12124.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter135 = phi i64 [ %epil.iter135.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.12124.i.epil
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107
  %i.bm = add nsw i64 %i.bl, %.125.i.epil
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.12124.i.epil
  store i64 %.125.i.epil, ptr %i.bn, align 8, !tbaa !107
  %i.bo = add nuw nsw i64 %.12124.i.epil, 1
  %epil.iter135.next = add i64 %epil.iter135, 1   ; 2 uses
  %epil.iter135.cmp.not = icmp eq i64 %epil.iter135.next, %xtraiter134
  br i1 %epil.iter135.cmp.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit, label %.lr.ph.i.epil, !llvm.loop !696

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit: ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit
  %i.bp = add nsw i64 %4, -1                      ; 4 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !149 ; 3 uses
  %i.bs = zext i32 %i.br to i64
end_hunk_0
begin_hunk_1_@_ZN14saisxx_private10suffixsortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEiT_T0_T1_SA_SA_b:bb.a
  %i.jv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ju) #31 ; 19 uses
  %i.jw = icmp sgt i64 %4, 0                      ; 2 uses
  br i1 %i.jw, label %.lr.ph.preheader.i331, label %.preheader.i327

.lr.ph.preheader.i331:                            ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jv, i8 0, i64 %i.jt, i1 false), !tbaa !107
  br label %.preheader.i327

.preheader.i327:                                  ; preds = %.lr.ph.preheader.i331, %bb.aa
  br i1 %i.fd, label %.lr.ph11.i328.preheader, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332

.lr.ph11.i328.preheader:                          ; preds = %.preheader.i327
  %i.jx = add nsw i64 %3, -1
  %xtraiter547 = and i64 %3, 3                    ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 3
  br i1 %i.jy, label %.lr.ph11.i328.epil.preheader, label %.lr.ph11.i328.preheader.new

.lr.ph11.i328.preheader.new:                      ; preds = %.lr.ph11.i328.preheader
  %unroll_iter551 = and i64 %3, 9223372036854775804
  br label %.lr.ph11.i328

.lr.ph11.i328:                                    ; preds = %.lr.ph11.i328, %.lr.ph11.i328.preheader.new
  %.110.i329 = phi i64 [ 0, %.lr.ph11.i328.preheader.new ], [ %i.kw, %.lr.ph11.i328 ] ; 5 uses
  %niter552 = phi i64 [ 0, %.lr.ph11.i328.preheader.new ], [ %niter552.next.3, %.lr.ph11.i328 ]
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.110.i329
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !107
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.ka ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !107
  %i.kd = add nsw i64 %i.kc, 1
  store i64 %i.kd, ptr %i.kb, align 8, !tbaa !107
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.110.i329
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !107
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.kg ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !107
  %i.kj = add nsw i64 %i.ki, 1
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !107
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.110.i329
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !107
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.km ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !107
  %i.kp = add nsw i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !107
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.110.i329
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !107
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.ks ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !107
  %i.kv = add nsw i64 %i.ku, 1
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !107
  %i.kw = add nuw nsw i64 %.110.i329, 4           ; 2 uses
  %niter552.next.3 = add nuw nsw i64 %niter552, 4 ; 2 uses
  %niter552.ncmp.3 = icmp eq i64 %niter552.next.3, %unroll_iter551
  br i1 %niter552.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332.loopexit.unr-lcssa, label %.lr.ph11.i328, !llvm.loop !24

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332.loopexit.unr-lcssa: ; preds = %.lr.ph11.i328
  %lcmp.mod549.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod549.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332, label %.lr.ph11.i328.epil.preheader

.lr.ph11.i328.epil.preheader:                     ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332.loopexit.unr-lcssa, %.lr.ph11.i328.preheader
  %.110.i329.epil.init = phi i64 [ 0, %.lr.ph11.i328.preheader ], [ %i.kw, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332.loopexit.unr-lcssa ]
  %lcmp.mod550 = icmp ne i64 %xtraiter547, 0
  tail call void @llvm.assume(i1 %lcmp.mod550)
  br label %.lr.ph11.i328.epil

.lr.ph11.i328.epil:                               ; preds = %.lr.ph11.i328.epil, %.lr.ph11.i328.epil.preheader
  %.110.i329.epil = phi i64 [ %i.lc, %.lr.ph11.i328.epil ], [ %.110.i329.epil.init, %.lr.ph11.i328.epil.preheader ] ; 2 uses
  %epil.iter548 = phi i64 [ %epil.iter548.next, %.lr.ph11.i328.epil ], [ 0, %.lr.ph11.i328.epil.preheader ]
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.110.i329.epil
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !107
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.ky ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !107
  %i.lb = add nsw i64 %i.la, 1
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !107
  %i.lc = add nuw nsw i64 %.110.i329.epil, 1
  %epil.iter548.next = add i64 %epil.iter548, 1   ; 2 uses
  %epil.iter548.cmp.not = icmp eq i64 %epil.iter548.next, %xtraiter547
  br i1 %epil.iter548.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332, label %.lr.ph11.i328.epil, !llvm.loop !722

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332.loopexit.unr-lcssa, %.lr.ph11.i328.epil, %.preheader.i327
  br i1 %i.jw, label %.lr.ph28.i334.preheader, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338

.lr.ph28.i334.preheader:                          ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332
  %i.ld = add nsw i64 %4, -1
  %xtraiter553 = and i64 %4, 3                    ; 3 uses
  %i.le = icmp ult i64 %i.ld, 3
  br i1 %i.le, label %.lr.ph28.i334.epil.preheader, label %.lr.ph28.i334.preheader.new

.lr.ph28.i334.preheader.new:                      ; preds = %.lr.ph28.i334.preheader
  %unroll_iter557 = and i64 %4, 9223372036854775804
  br label %.lr.ph28.i334

.lr.ph28.i334:                                    ; preds = %.lr.ph28.i334, %.lr.ph28.i334.preheader.new
  %.027.i335 = phi i64 [ 0, %.lr.ph28.i334.preheader.new ], [ %i.lt, %.lr.ph28.i334 ]
  %.02026.i336 = phi i64 [ 0, %.lr.ph28.i334.preheader.new ], [ %i.lu, %.lr.ph28.i334 ] ; 5 uses
  %niter558 = phi i64 [ 0, %.lr.ph28.i334.preheader.new ], [ %niter558.next.3, %.lr.ph28.i334 ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.02026.i336 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !107
  %i.lh = add nsw i64 %i.lg, %.027.i335           ; 2 uses
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !107
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.02026.i336
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !107
  %i.ll = add nsw i64 %i.lk, %i.lh                ; 2 uses
  store i64 %i.ll, ptr %i.lj, align 8, !tbaa !107
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.02026.i336
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !107
  %i.lp = add nsw i64 %i.lo, %i.ll                ; 2 uses
  store i64 %i.lp, ptr %i.ln, align 8, !tbaa !107
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.02026.i336
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !107
  %i.lt = add nsw i64 %i.ls, %i.lp                ; 3 uses
  store i64 %i.lt, ptr %i.lr, align 8, !tbaa !107
  %i.lu = add nuw nsw i64 %.02026.i336, 4         ; 2 uses
  %niter558.next.3 = add nuw nsw i64 %niter558, 4 ; 2 uses
  %niter558.ncmp.3 = icmp eq i64 %niter558.next.3, %unroll_iter557
  br i1 %niter558.ncmp.3, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa, label %.lr.ph28.i334, !llvm.loop !19

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa: ; preds = %.lr.ph28.i334
  %lcmp.mod555.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod555.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338, label %.lr.ph28.i334.epil.preheader

.lr.ph28.i334.epil.preheader:                     ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa, %.lr.ph28.i334.preheader
  %.027.i335.epil.init = phi i64 [ 0, %.lr.ph28.i334.preheader ], [ %i.lt, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa ]
  %.02026.i336.epil.init = phi i64 [ 0, %.lr.ph28.i334.preheader ], [ %i.lu, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa ]
  %lcmp.mod556 = icmp ne i64 %xtraiter553, 0
  tail call void @llvm.assume(i1 %lcmp.mod556)
  br label %.lr.ph28.i334.epil

.lr.ph28.i334.epil:                               ; preds = %.lr.ph28.i334.epil, %.lr.ph28.i334.epil.preheader
  %.027.i335.epil = phi i64 [ %i.lx, %.lr.ph28.i334.epil ], [ %.027.i335.epil.init, %.lr.ph28.i334.epil.preheader ]
  %.02026.i336.epil = phi i64 [ %i.ly, %.lr.ph28.i334.epil ], [ %.02026.i336.epil.init, %.lr.ph28.i334.epil.preheader ] ; 2 uses
  %epil.iter554 = phi i64 [ %epil.iter554.next, %.lr.ph28.i334.epil ], [ 0, %.lr.ph28.i334.epil.preheader ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.02026.i336.epil ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !107
  %i.lx = add nsw i64 %i.lw, %.027.i335.epil      ; 2 uses
  store i64 %i.lx, ptr %i.lv, align 8, !tbaa !107
  %i.ly = add nuw nsw i64 %.02026.i336.epil, 1
  %epil.iter554.next = add i64 %epil.iter554, 1   ; 2 uses
  %epil.iter554.cmp.not = icmp eq i64 %epil.iter554.next, %xtraiter553
  br i1 %epil.iter554.cmp.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338, label %.lr.ph28.i334.epil, !llvm.loop !723

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338: ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338.loopexit.unr-lcssa, %.lr.ph28.i334.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES3_lEEvT_T0_T1_SA_.exit332
  %i.lz = icmp slt i64 %.0264.lcssa, %3
  br i1 %i.lz, label %.lr.ph474.preheader, label %.preheader

.lr.ph474.preheader:                              ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338
  %i.ma = shl i64 %.0264.lcssa, 3
  %scevgep483 = getelementptr i8, ptr %1, i64 %i.ma
  %i.mb = sub i64 %3, %.0264.lcssa
  %i.mc = shl i64 %i.mb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep483, i8 0, i64 %i.mc, i1 false), !tbaa !107
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph474.preheader, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit338
  br i1 %i.gm, label %.lr.ph476.preheader, label %._crit_edge477

.lr.ph476.preheader:                              ; preds = %.preheader
  %xtraiter559 = and i64 %.0264.lcssa, 1
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod560.not, label %.lr.ph476.prol.loopexit, label %.lr.ph476.prol

.lr.ph476.prol:                                   ; preds = %.lr.ph476.preheader
  %.12.prol = add nsw i64 %.0264.lcssa, -1        ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.12.prol ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.md, align 8, !tbaa !107
  %i.mf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.me
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !107
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.mg ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !107
  %i.mj = add nsw i64 %i.mi, -1                   ; 2 uses
  store i64 %i.mj, ptr %i.mh, align 8, !tbaa !107
  %i.mk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mj
  store i64 %i.me, ptr %i.mk, align 8, !tbaa !107
  br label %.lr.ph476.prol.loopexit

.lr.ph476.prol.loopexit:                          ; preds = %.lr.ph476.prol, %.lr.ph476.preheader
  %.12.in475.unr = phi i64 [ %.0264.lcssa, %.lr.ph476.preheader ], [ %.12.prol, %.lr.ph476.prol ]
  %i.ml = icmp eq i64 %.0264.lcssa, 1
  br i1 %i.ml, label %._crit_edge477, label %.lr.ph476

.lr.ph476:                                        ; preds = %.lr.ph476.prol.loopexit, %.lr.ph476
  %.12.in475 = phi i64 [ %.12.1, %.lr.ph476 ], [ %.12.in475.unr, %.lr.ph476.prol.loopexit ] ; 3 uses
  %i.mm = getelementptr [8 x i8], ptr %1, i64 %.12.in475
  %i.mn = getelementptr i8, ptr %i.mm, i64 -8     ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.mn, align 8, !tbaa !107
  %i.mp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.mo
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !107
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.mq ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !107
  %i.mt = add nsw i64 %i.ms, -1                   ; 2 uses
  store i64 %i.mt, ptr %i.mr, align 8, !tbaa !107
  %i.mu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mt
  store i64 %i.mo, ptr %i.mu, align 8, !tbaa !107
  %.12.1 = add nsw i64 %.12.in475, -2             ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.12.1 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.mv, align 8, !tbaa !107
  %i.mx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !107
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.my ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !107
  %i.nb = add nsw i64 %i.na, -1                   ; 2 uses
  store i64 %i.nb, ptr %i.mz, align 8, !tbaa !107
  %i.nc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.nb
  store i64 %i.mw, ptr %i.nc, align 8, !tbaa !107
  %i.nd = icmp sgt i64 %.12.in475, 2
  br i1 %i.nd, label %.lr.ph476, label %._crit_edge477, !llvm.loop !724

._crit_edge477:                                   ; preds = %.lr.ph476.prol.loopexit, %.lr.ph476, %.preheader
  br i1 %5, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge477
  tail call void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_S3_lEEvT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr noundef nonnull %i.jv, ptr noundef nonnull %i.jv, i64 noundef %3, i64 noundef %4)
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge477
  %i.ne = tail call noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_S3_lEEiT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr noundef nonnull %i.jv, ptr noundef nonnull %i.jv, i64 noundef %3, i64 noundef %4)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0272 = phi i32 [ 0, %bb.ab ], [ %i.ne, %bb.ac ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.jv) #28
  br label %bb.ah

bb.ae:                                            ; preds = %.loopexit
  %i.nf = getelementptr inbounds [8 x i8], ptr %1, i64 %3 ; 14 uses
  %i.ng = sub nsw i64 %2, %4
  %.not312 = icmp sgt i64 %4, %i.ng
  %spec.select403.idx = select i1 %.not312, i64 0, i64 %4
  %spec.select403 = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %spec.select403.idx ; 10 uses
  %i.nh = icmp sgt i64 %4, 0                      ; 2 uses
  br i1 %i.nh, label %.lr.ph.preheader.i343, label %.preheader.i339

.lr.ph.preheader.i343:                            ; preds = %bb.ae
  %i.ni = shl nuw i64 %4, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.nf, i8 0, i64 %i.ni, i1 false), !tbaa !107
  br label %.preheader.i339

.preheader.i339:                                  ; preds = %.lr.ph.preheader.i343, %bb.ae
  br i1 %i.fd, label %.lr.ph12.i340.preheader, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344

.lr.ph12.i340.preheader:                          ; preds = %.preheader.i339
  %i.nj = add nsw i64 %3, -1
  %xtraiter533 = and i64 %3, 3                    ; 3 uses
  %i.nk = icmp ult i64 %i.nj, 3
  br i1 %i.nk, label %.lr.ph12.i340.epil.preheader, label %.lr.ph12.i340.preheader.new

.lr.ph12.i340.preheader.new:                      ; preds = %.lr.ph12.i340.preheader
  %unroll_iter537 = and i64 %3, 9223372036854775804
  br label %.lr.ph12.i340

.lr.ph12.i340:                                    ; preds = %.lr.ph12.i340, %.lr.ph12.i340.preheader.new
  %.111.i341 = phi i64 [ 0, %.lr.ph12.i340.preheader.new ], [ %i.oi, %.lr.ph12.i340 ] ; 5 uses
  %niter538 = phi i64 [ 0, %.lr.ph12.i340.preheader.new ], [ %niter538.next.3, %.lr.ph12.i340 ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.111.i341
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !107
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.nm ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !107
  %i.np = add nsw i64 %i.no, 1
  store i64 %i.np, ptr %i.nn, align 8, !tbaa !107
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.111.i341
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !107
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.ns ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !107
  %i.nv = add nsw i64 %i.nu, 1
  store i64 %i.nv, ptr %i.nt, align 8, !tbaa !107
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.111.i341
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !107
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.ny ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !107
  %i.ob = add nsw i64 %i.oa, 1
  store i64 %i.ob, ptr %i.nz, align 8, !tbaa !107
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.111.i341
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !107
  %i.of = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.oe ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !107
  %i.oh = add nsw i64 %i.og, 1
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !107
  %i.oi = add nuw nsw i64 %.111.i341, 4           ; 2 uses
  %niter538.next.3 = add nuw nsw i64 %niter538, 4 ; 2 uses
  %niter538.ncmp.3 = icmp eq i64 %niter538.next.3, %unroll_iter537
  br i1 %niter538.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344.loopexit.unr-lcssa, label %.lr.ph12.i340, !llvm.loop !25

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344.loopexit.unr-lcssa: ; preds = %.lr.ph12.i340
  %lcmp.mod535.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod535.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344, label %.lr.ph12.i340.epil.preheader

.lr.ph12.i340.epil.preheader:                     ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344.loopexit.unr-lcssa, %.lr.ph12.i340.preheader
  %.111.i341.epil.init = phi i64 [ 0, %.lr.ph12.i340.preheader ], [ %i.oi, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344.loopexit.unr-lcssa ]
  %lcmp.mod536 = icmp ne i64 %xtraiter533, 0
  tail call void @llvm.assume(i1 %lcmp.mod536)
  br label %.lr.ph12.i340.epil

.lr.ph12.i340.epil:                               ; preds = %.lr.ph12.i340.epil, %.lr.ph12.i340.epil.preheader
  %.111.i341.epil = phi i64 [ %i.oo, %.lr.ph12.i340.epil ], [ %.111.i341.epil.init, %.lr.ph12.i340.epil.preheader ] ; 2 uses
  %epil.iter534 = phi i64 [ %epil.iter534.next, %.lr.ph12.i340.epil ], [ 0, %.lr.ph12.i340.epil.preheader ]
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.111.i341.epil
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !107
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.ok ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !107
  %i.on = add nsw i64 %i.om, 1
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !107
  %i.oo = add nuw nsw i64 %.111.i341.epil, 1
  %epil.iter534.next = add i64 %epil.iter534, 1   ; 2 uses
  %epil.iter534.cmp.not = icmp eq i64 %epil.iter534.next, %xtraiter533
  br i1 %epil.iter534.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344, label %.lr.ph12.i340.epil, !llvm.loop !725

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344.loopexit.unr-lcssa, %.lr.ph12.i340.epil, %.preheader.i339
  br i1 %i.nh, label %.lr.ph28.i346.preheader, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350

.lr.ph28.i346.preheader:                          ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344
  %xtraiter539 = and i64 %4, 3                    ; 3 uses
  %i.op = icmp ult i64 %4, 4
  br i1 %i.op, label %.lr.ph28.i346.epil.preheader, label %.lr.ph28.i346.preheader.new

.lr.ph28.i346.preheader.new:                      ; preds = %.lr.ph28.i346.preheader
  %unroll_iter543 = and i64 %4, 9223372036854775804
  br label %.lr.ph28.i346

.lr.ph28.i346:                                    ; preds = %.lr.ph28.i346, %.lr.ph28.i346.preheader.new
  %.027.i347 = phi i64 [ 0, %.lr.ph28.i346.preheader.new ], [ %i.ph, %.lr.ph28.i346 ]
  %.01626.i348 = phi i64 [ 0, %.lr.ph28.i346.preheader.new ], [ %i.pj, %.lr.ph28.i346 ] ; 6 uses
  %niter544 = phi i64 [ 0, %.lr.ph28.i346.preheader.new ], [ %niter544.next.3, %.lr.ph28.i346 ]
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.01626.i348
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !107
  %i.os = add nsw i64 %i.or, %.027.i347           ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %.01626.i348
  store i64 %i.os, ptr %i.ot, align 8, !tbaa !107
  %i.ou = or disjoint i64 %.01626.i348, 1         ; 2 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.ou
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !107
  %i.ox = add nsw i64 %i.ow, %i.os                ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.ou
  store i64 %i.ox, ptr %i.oy, align 8, !tbaa !107
  %i.oz = or disjoint i64 %.01626.i348, 2         ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.oz
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !107
  %i.pc = add nsw i64 %i.pb, %i.ox                ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.oz
  store i64 %i.pc, ptr %i.pd, align 8, !tbaa !107
  %i.pe = or disjoint i64 %.01626.i348, 3         ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !107
  %i.ph = add nsw i64 %i.pg, %i.pc                ; 3 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %i.pe
  store i64 %i.ph, ptr %i.pi, align 8, !tbaa !107
  %i.pj = add nuw nsw i64 %.01626.i348, 4         ; 2 uses
  %niter544.next.3 = add nuw nsw i64 %niter544, 4 ; 2 uses
  %niter544.ncmp.3 = icmp eq i64 %niter544.next.3, %unroll_iter543
  br i1 %niter544.ncmp.3, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa, label %.lr.ph28.i346, !llvm.loop !21

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa: ; preds = %.lr.ph28.i346
  %lcmp.mod541.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod541.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350, label %.lr.ph28.i346.epil.preheader

.lr.ph28.i346.epil.preheader:                     ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa, %.lr.ph28.i346.preheader
  %.027.i347.epil.init = phi i64 [ 0, %.lr.ph28.i346.preheader ], [ %i.ph, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa ]
  %.01626.i348.epil.init = phi i64 [ 0, %.lr.ph28.i346.preheader ], [ %i.pj, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa ]
  %lcmp.mod542 = icmp ne i64 %xtraiter539, 0
  tail call void @llvm.assume(i1 %lcmp.mod542)
  br label %.lr.ph28.i346.epil

.lr.ph28.i346.epil:                               ; preds = %.lr.ph28.i346.epil, %.lr.ph28.i346.epil.preheader
  %.027.i347.epil = phi i64 [ %i.pm, %.lr.ph28.i346.epil ], [ %.027.i347.epil.init, %.lr.ph28.i346.epil.preheader ]
  %.01626.i348.epil = phi i64 [ %i.po, %.lr.ph28.i346.epil ], [ %.01626.i348.epil.init, %.lr.ph28.i346.epil.preheader ] ; 3 uses
  %epil.iter540 = phi i64 [ %epil.iter540.next, %.lr.ph28.i346.epil ], [ 0, %.lr.ph28.i346.epil.preheader ]
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.01626.i348.epil
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !107
  %i.pm = add nsw i64 %i.pl, %.027.i347.epil      ; 2 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %spec.select403, i64 %.01626.i348.epil
  store i64 %i.pm, ptr %i.pn, align 8, !tbaa !107
  %i.po = add nuw nsw i64 %.01626.i348.epil, 1
  %epil.iter540.next = add i64 %epil.iter540, 1   ; 2 uses
  %epil.iter540.cmp.not = icmp eq i64 %epil.iter540.next, %xtraiter539
  br i1 %epil.iter540.cmp.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350, label %.lr.ph28.i346.epil, !llvm.loop !726

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350: ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350.loopexit.unr-lcssa, %.lr.ph28.i346.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_lEEvT_T0_T1_SA_.exit344
  %i.pp = icmp slt i64 %.0264.lcssa, %3
  br i1 %i.pp, label %.lr.ph469.preheader, label %.preheader405

.lr.ph469.preheader:                              ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350
  %i.pq = shl i64 %.0264.lcssa, 3
  %scevgep482 = getelementptr i8, ptr %1, i64 %i.pq
  %i.pr = sub i64 %3, %.0264.lcssa
  %i.ps = shl i64 %i.pr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep482, i8 0, i64 %i.ps, i1 false), !tbaa !107
  br label %.preheader405

.preheader405:                                    ; preds = %.lr.ph469.preheader, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEvT_S8_T0_b.exit350
  br i1 %i.gm, label %.lr.ph471.preheader, label %._crit_edge472

.lr.ph471.preheader:                              ; preds = %.preheader405
  %xtraiter545 = and i64 %.0264.lcssa, 1
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph471.prol.loopexit, label %.lr.ph471.prol

.lr.ph471.prol:                                   ; preds = %.lr.ph471.preheader
  %.14.prol = add nsw i64 %.0264.lcssa, -1        ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.14.prol ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.pt, align 8, !tbaa !107
  %i.pv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.pu
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !107
  %i.px = getelementptr inbounds [8 x i8], ptr %spec.select403, i64 %i.pw ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !107
  %i.pz = add nsw i64 %i.py, -1                   ; 2 uses
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !107
  %i.qa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.pz
  store i64 %i.pu, ptr %i.qa, align 8, !tbaa !107
  br label %.lr.ph471.prol.loopexit

.lr.ph471.prol.loopexit:                          ; preds = %.lr.ph471.prol, %.lr.ph471.preheader
  %.14.in470.unr = phi i64 [ %.0264.lcssa, %.lr.ph471.preheader ], [ %.14.prol, %.lr.ph471.prol ]
  %i.qb = icmp eq i64 %.0264.lcssa, 1
  br i1 %i.qb, label %._crit_edge472, label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.prol.loopexit, %.lr.ph471
  %.14.in470 = phi i64 [ %.14.1, %.lr.ph471 ], [ %.14.in470.unr, %.lr.ph471.prol.loopexit ] ; 3 uses
  %i.qc = getelementptr [8 x i8], ptr %1, i64 %.14.in470
  %i.qd = getelementptr i8, ptr %i.qc, i64 -8     ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.qd, align 8, !tbaa !107
  %i.qf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !107
  %i.qh = getelementptr inbounds [8 x i8], ptr %spec.select403, i64 %i.qg ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !107
  %i.qj = add nsw i64 %i.qi, -1                   ; 2 uses
  store i64 %i.qj, ptr %i.qh, align 8, !tbaa !107
  %i.qk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.qj
  store i64 %i.qe, ptr %i.qk, align 8, !tbaa !107
  %.14.1 = add nsw i64 %.14.in470, -2             ; 2 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.14.1 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !107 ; 2 uses
  store i64 0, ptr %i.ql, align 8, !tbaa !107
  %i.qn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.qm
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !107
  %i.qp = getelementptr inbounds [8 x i8], ptr %spec.select403, i64 %i.qo ; 2 uses
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !107
  %i.qr = add nsw i64 %i.qq, -1                   ; 2 uses
  store i64 %i.qr, ptr %i.qp, align 8, !tbaa !107
  %i.qs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.qr
  store i64 %i.qm, ptr %i.qs, align 8, !tbaa !107
  %i.qt = icmp sgt i64 %.14.in470, 2
  br i1 %i.qt, label %.lr.ph471, label %._crit_edge472, !llvm.loop !727

._crit_edge472:                                   ; preds = %.lr.ph471.prol.loopexit, %.lr.ph471, %.preheader405
  br i1 %5, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge472
  tail call void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_S7_lEEvT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr %i.nf, ptr %spec.select403, i64 noundef %3, i64 noundef %4)
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge472
  %i.qu = tail call noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES7_S7_lEEiT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr %i.nf, ptr %spec.select403, i64 noundef %3, i64 noundef %4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad, %._crit_edge459
  %.0 = phi i32 [ -2, %._crit_edge459 ], [ %.0272, %bb.ad ], [ 0, %bb.af ], [ %i.qu, %bb.ag ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPlS4_IlSaIlEEEES8_lEEiT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = shl nuw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.c, i1 false), !tbaa !107
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.d = icmp sgt i64 %4, 0
  br i1 %i.d, label %.lr.ph11.i.preheader, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit

.lr.ph11.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.e = icmp ult i64 %4, 4
  br i1 %i.e, label %.lr.ph11.i.epil.preheader, label %.lr.ph11.i.preheader.new

.lr.ph11.i.preheader.new:                         ; preds = %.lr.ph11.i.preheader
  %unroll_iter = and i64 %4, 9223372036854775804
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.i.preheader.new
  %.110.i = phi i64 [ 0, %.lr.ph11.i.preheader.new ], [ %i.ag, %.lr.ph11.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph11.i.preheader.new ], [ %niter.next.3, %.lr.ph11.i ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !149
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !149
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !107
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !107
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !149
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !107
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !149
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !107
  %i.ag = add nuw nsw i64 %.110.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa, label %.lr.ph11.i, !llvm.loop !18

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph11.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit, label %.lr.ph11.i.epil.preheader

.lr.ph11.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa, %.lr.ph11.i.preheader
  %.110.i.epil.init = phi i64 [ 0, %.lr.ph11.i.preheader ], [ %i.ag, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod151)
  br label %.lr.ph11.i.epil

.lr.ph11.i.epil:                                  ; preds = %.lr.ph11.i.epil, %.lr.ph11.i.epil.preheader
  %.110.i.epil = phi i64 [ %i.an, %.lr.ph11.i.epil ], [ %.110.i.epil.init, %.lr.ph11.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph11.i.epil ], [ 0, %.lr.ph11.i.epil.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.110.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !149
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !107
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !107
  %i.an = add nuw nsw i64 %.110.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit, label %.lr.ph11.i.epil, !llvm.loop !728

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit.loopexit.unr-lcssa, %.lr.ph11.i.epil, %.preheader.i, %bb.a
  %i.ao = icmp sgt i64 %5, 0                      ; 3 uses
  br i1 %i.ao, label %.lr.ph.i.preheader, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit

.lr.ph.i.preheader:                               ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit
  %xtraiter152 = and i64 %5, 3                    ; 3 uses
  %i.ap = icmp ult i64 %5, 4
  br i1 %i.ap, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter156 = and i64 %5, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.125.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %.12124.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bj, %.lr.ph.i ] ; 6 uses
  %niter157 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter157.next.3, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.12124.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !107
  %i.as = add nsw i64 %i.ar, %.125.i              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.12124.i
  store i64 %.125.i, ptr %i.at, align 8, !tbaa !107
  %i.au = or disjoint i64 %.12124.i, 1            ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !107
  %i.ax = add nsw i64 %i.aw, %i.as                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  store i64 %i.as, ptr %i.ay, align 8, !tbaa !107
  %i.az = or disjoint i64 %.12124.i, 2            ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !107
  %i.bc = add nsw i64 %i.bb, %i.ax                ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  store i64 %i.ax, ptr %i.bd, align 8, !tbaa !107
  %i.be = or disjoint i64 %.12124.i, 3            ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !107
  %i.bh = add nsw i64 %i.bg, %i.bc                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.be
  store i64 %i.bc, ptr %i.bi, align 8, !tbaa !107
  %i.bj = add nuw nsw i64 %.12124.i, 4            ; 2 uses
  %niter157.next.3 = add nuw nsw i64 %niter157, 4 ; 2 uses
  %niter157.ncmp.3 = icmp eq i64 %niter157.next.3, %unroll_iter156
  br i1 %niter157.ncmp.3, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.125.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bh, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa ]
  %.12124.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bj, %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod155 = icmp ne i64 %xtraiter152, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.125.i.epil = phi i64 [ %i.bm, %.lr.ph.i.epil ], [ %.125.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.12124.i.epil = phi i64 [ %i.bo, %.lr.ph.i.epil ], [ %.12124.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter153 = phi i64 [ %epil.iter153.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.12124.i.epil
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107
  %i.bm = add nsw i64 %i.bl, %.125.i.epil
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.12124.i.epil
  store i64 %.125.i.epil, ptr %i.bn, align 8, !tbaa !107
  %i.bo = add nuw nsw i64 %.12124.i.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit, label %.lr.ph.i.epil, !llvm.loop !729

_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit: ; preds = %_ZN14saisxx_private10getBucketsIPllEEvT_S2_T0_b.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPllEEvT_T0_T1_SB_.exit
  %i.bp = add nsw i64 %4, -1                      ; 4 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !149 ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !107
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu ; 3 uses
  %i.bw = icmp sgt i64 %4, 1
end_hunk_1
begin_hunk_2_@_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEES8_iEEvT_T0_T1_SE_T2_SF_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.096.1 = phi ptr [ %.sroa.096.0118, %bb.e ], [ %i.cu, %bb.f ] ; 2 uses
  %.164 = phi i32 [ %.063119, %bb.e ], [ %i.cj, %bb.f ] ; 2 uses
  %.not77 = icmp eq i32 %i.cd, 1
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !149
  %i.cz = icmp ult i32 %i.cy, %.164
  %i.da = sub nsw i32 0, %i.cd
  %spec.select78 = select i1 %i.cz, i32 %i.da, i32 %i.cg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select78, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.096.1, i64 4
  store i32 %i.db, ptr %.sroa.096.1, align 4, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.sroa.096.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.096.0118, %bb.d ]
  %.2 = phi i32 [ %.164, %bb.i ], [ %.063119, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !882

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.dd = phi i1 [ false, %bb.c ], [ true, %bb.j ] ; 2 uses
  br i1 %i.a, label %bb.k, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i91, label %.preheader.i84

.lr.ph.preheader.i91:                             ; preds = %bb.k
  %i.de = zext nneg i32 %5 to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.df, i1 false), !tbaa !116
  br label %.preheader.i84

.preheader.i84:                                   ; preds = %.lr.ph.preheader.i91, %bb.k
  br i1 %i.dd, label %.lr.ph11.preheader.i85, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92

.lr.ph11.preheader.i85:                           ; preds = %.preheader.i84
  %wide.trip.count.i86 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter150 = and i64 %wide.trip.count.i86, 3  ; 3 uses
  %i.dg = add i32 %4, -1
  %i.dh = icmp ult i32 %i.dg, 3
  br i1 %i.dh, label %.lr.ph11.i87.epil.preheader, label %.lr.ph11.preheader.i85.new

.lr.ph11.preheader.i85.new:                       ; preds = %.lr.ph11.preheader.i85
  %unroll_iter154 = and i64 %wide.trip.count.i86, 2147483644
  br label %.lr.ph11.i87

.lr.ph11.i87:                                     ; preds = %.lr.ph11.i87, %.lr.ph11.preheader.i85.new
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph11.preheader.i85.new ], [ %indvars.iv.next.i89.3, %.lr.ph11.i87 ] ; 5 uses
  %niter155 = phi i64 [ 0, %.lr.ph11.preheader.i85.new ], [ %niter155.next.3, %.lr.ph11.i87 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !149
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !116
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !116
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !149
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !116
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !116
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !149
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !116
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !116
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !149
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !116
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !116
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %niter155.next.3 = add i64 %niter155, 4         ; 2 uses
  %niter155.ncmp.3 = icmp eq i64 %niter155.next.3, %unroll_iter154
  br i1 %niter155.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92.loopexit.unr-lcssa, label %.lr.ph11.i87, !llvm.loop !27

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92.loopexit.unr-lcssa: ; preds = %.lr.ph11.i87
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod152.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92, label %.lr.ph11.i87.epil.preheader

.lr.ph11.i87.epil.preheader:                      ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92.loopexit.unr-lcssa, %.lr.ph11.preheader.i85
  %indvars.iv.i88.epil.init = phi i64 [ 0, %.lr.ph11.preheader.i85 ], [ %indvars.iv.next.i89.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92.loopexit.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  tail call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph11.i87.epil

.lr.ph11.i87.epil:                                ; preds = %.lr.ph11.i87.epil, %.lr.ph11.i87.epil.preheader
  %indvars.iv.i88.epil = phi i64 [ %indvars.iv.i88.epil.init, %.lr.ph11.i87.epil.preheader ], [ %indvars.iv.next.i89.epil, %.lr.ph11.i87.epil ] ; 2 uses
  %epil.iter151 = phi i64 [ 0, %.lr.ph11.i87.epil.preheader ], [ %epil.iter151.next, %.lr.ph11.i87.epil ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88.epil
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !149
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !116
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !116
  %indvars.iv.next.i89.epil = add nuw nsw i64 %indvars.iv.i88.epil, 1
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92, label %.lr.ph11.i87.epil, !llvm.loop !883

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92.loopexit.unr-lcssa, %.lr.ph11.i87.epil, %.preheader.i84, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter156 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.ep = icmp ult i32 %5, 4
  br i1 %i.ep, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter160 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.fe, %.lr.ph28.i ]
  %niter161 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter161.next.3, %.lr.ph28.i ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !116
  %i.es = add nsw i32 %i.er, %.027.i              ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.es, ptr %i.et, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !116
  %i.ew = add nsw i32 %i.ev, %i.es                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !116
  %i.fa = add nsw i32 %i.ez, %i.ew                ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !116
  %i.fe = add nsw i32 %i.fd, %i.fa                ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter161.next.3 = add i64 %niter161, 4         ; 2 uses
  %niter161.ncmp.3 = icmp eq i64 %niter161.next.3, %unroll_iter160
  br i1 %niter161.ncmp.3, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !28

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.fe, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fi, %.lr.ph28.i.epil ]
  %epil.iter157 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph28.i.epil ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !116
  %i.fi = add nsw i32 %i.fh, %.027.i.epil         ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter157.next = add i64 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i64 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94, label %.lr.ph28.i.epil, !llvm.loop !884

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94: ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit92
  br i1 %i.dd, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94
  %i.fk = load i32, ptr %3, align 4, !tbaa !116
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fl
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = zext nneg i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124, %bb.t
  %indvars.iv127 = phi i64 [ %i.fo, %.lr.ph124 ], [ %indvars.iv.next128, %bb.t ] ; 3 uses
  %.3122 = phi i32 [ 0, %.lr.ph124 ], [ %.5, %bb.t ] ; 4 uses
  %.sroa.096.3121 = phi ptr [ %i.fm, %.lr.ph124 ], [ %.sroa.096.5, %bb.t ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv127 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !116 ; 5 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.fs = add nsw i32 %i.fq, -1                   ; 3 uses
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !149 ; 3 uses
  %.not = icmp eq i32 %i.fv, %.3122
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fw = ptrtoint ptr %.sroa.096.3121 to i64
  %i.fx = sub i64 %i.fw, %i.fn
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = zext i32 %.3122 to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ga
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !116
  %i.gc = zext i32 %i.fv to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !116
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.096.4 = phi ptr [ %.sroa.096.3121, %bb.m ], [ %i.gg, %bb.n ]
  %.4 = phi i32 [ %.3122, %bb.m ], [ %i.fv, %bb.n ] ; 2 uses
  %i.gh = icmp eq i32 %i.fs, 0
  br i1 %i.gh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = zext nneg i32 %i.fq to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !149
  %i.gm = icmp ugt i32 %i.gl, %.4
  br i1 %i.gm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gn = sub nsw i32 0, %i.fq
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.go = phi i32 [ %i.gn, %bb.q ], [ %i.fs, %bb.p ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.096.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.gq = xor i32 %i.fq, -1
  store i32 %i.gq, ptr %i.fp, align 4, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.096.5 = phi ptr [ %i.gp, %bb.r ], [ %.sroa.096.3121, %bb.s ]
  %.5 = phi i32 [ %.4, %bb.r ], [ %.3122, %bb.s ]
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, -1
  %i.gr = icmp sgt i64 %indvars.iv127, 0
  br i1 %i.gr, label %bb.l, label %._crit_edge125, !llvm.loop !885

._crit_edge125:                                   ; preds = %bb.t, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEESB_iEEvT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr %2, ptr %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %5 to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false), !tbaa !116
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph12.preheader.i, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit

.lr.ph12.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %4, 4
  br i1 %i.f, label %.lr.ph12.i.epil.preheader, label %.lr.ph12.preheader.i.new

.lr.ph12.preheader.i.new:                         ; preds = %.lr.ph12.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph12.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %niter.next.3, %.lr.ph12.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !149
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !116
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !149
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !116
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !149
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !116
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !116
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !149
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !116
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa, label %.lr.ph12.i, !llvm.loop !29

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph12.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit, label %.lr.ph12.i.epil.preheader

.lr.ph12.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa, %.lr.ph12.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %indvars.iv.next.i.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph12.i.epil

.lr.ph12.i.epil:                                  ; preds = %.lr.ph12.i.epil, %.lr.ph12.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph12.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph12.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph12.i.epil.preheader ], [ %epil.iter.next, %.lr.ph12.i.epil ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !149
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !116
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !116
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit, label %.lr.ph12.i.epil, !llvm.loop !886

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa, %.lr.ph12.i.epil, %.preheader.i, %bb.a
  %i.an = icmp sgt i32 %5, 0                      ; 3 uses
  br i1 %i.an, label %.lr.ph.preheader.i68, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit

.lr.ph.preheader.i68:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit
  %wide.trip.count.i69 = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter143 = and i64 %wide.trip.count.i69, 3  ; 3 uses
  %i.ao = icmp ult i32 %5, 4
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i68.new

.lr.ph.preheader.i68.new:                         ; preds = %.lr.ph.preheader.i68
  %unroll_iter147 = and i64 %wide.trip.count.i69, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i68.new
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %indvars.iv.next.i71.3, %.lr.ph.i ] ; 6 uses
  %.125.i = phi i32 [ 0, %.lr.ph.preheader.i68.new ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %niter148 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %niter148.next.3, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i70
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !116
  %i.ar = add nsw i32 %i.aq, %.125.i              ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i70
  store i32 %.125.i, ptr %i.as, align 4, !tbaa !116
  %indvars.iv.next.i71 = or disjoint i64 %indvars.iv.i70, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i71
  %i.au = load i32, ptr %i.at, align 4, !tbaa !116
  %i.av = add nsw i32 %i.au, %i.ar                ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i71
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !116
  %indvars.iv.next.i71.1 = or disjoint i64 %indvars.iv.i70, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i71.1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !116
end_hunk_2
begin_hunk_3_@_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEESB_iEEvT_T0_T1_SE_T2_SF_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.085.1 = phi ptr [ %.sroa.085.0117, %bb.e ], [ %i.cu, %bb.f ] ; 2 uses
  %.155 = phi i32 [ %.054118, %bb.e ], [ %i.cj, %bb.f ] ; 2 uses
  %.not66 = icmp eq i32 %i.cd, 1
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !149
  %i.cz = icmp ult i32 %i.cy, %.155
  %i.da = sub nsw i32 0, %i.cd
  %spec.select67 = select i1 %i.cz, i32 %i.da, i32 %i.cg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select67, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.085.1, i64 4
  store i32 %i.db, ptr %.sroa.085.1, align 4, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.sroa.085.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.085.0117, %bb.d ]
  %.2 = phi i32 [ %.155, %bb.i ], [ %.054118, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !888

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.dd = phi i1 [ false, %bb.c ], [ true, %bb.j ] ; 2 uses
  br i1 %i.a, label %bb.k, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i80, label %.preheader.i73

.lr.ph.preheader.i80:                             ; preds = %bb.k
  %i.de = zext nneg i32 %5 to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.df, i1 false), !tbaa !116
  br label %.preheader.i73

.preheader.i73:                                   ; preds = %.lr.ph.preheader.i80, %bb.k
  br i1 %i.dd, label %.lr.ph12.preheader.i74, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81

.lr.ph12.preheader.i74:                           ; preds = %.preheader.i73
  %wide.trip.count.i75 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count.i75, 3  ; 3 uses
  %i.dg = add i32 %4, -1
  %i.dh = icmp ult i32 %i.dg, 3
  br i1 %i.dh, label %.lr.ph12.i76.epil.preheader, label %.lr.ph12.preheader.i74.new

.lr.ph12.preheader.i74.new:                       ; preds = %.lr.ph12.preheader.i74
  %unroll_iter153 = and i64 %wide.trip.count.i75, 2147483644
  br label %.lr.ph12.i76

.lr.ph12.i76:                                     ; preds = %.lr.ph12.i76, %.lr.ph12.preheader.i74.new
  %indvars.iv.i77 = phi i64 [ 0, %.lr.ph12.preheader.i74.new ], [ %indvars.iv.next.i78.3, %.lr.ph12.i76 ] ; 5 uses
  %niter154 = phi i64 [ 0, %.lr.ph12.preheader.i74.new ], [ %niter154.next.3, %.lr.ph12.i76 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !149
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !116
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !116
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !149
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !116
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !116
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !149
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !116
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !116
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !149
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !116
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !116
  %indvars.iv.next.i78.3 = add nuw nsw i64 %indvars.iv.i77, 4 ; 2 uses
  %niter154.next.3 = add i64 %niter154, 4         ; 2 uses
  %niter154.ncmp.3 = icmp eq i64 %niter154.next.3, %unroll_iter153
  br i1 %niter154.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81.loopexit.unr-lcssa, label %.lr.ph12.i76, !llvm.loop !29

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81.loopexit.unr-lcssa: ; preds = %.lr.ph12.i76
  %lcmp.mod151.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81, label %.lr.ph12.i76.epil.preheader

.lr.ph12.i76.epil.preheader:                      ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81.loopexit.unr-lcssa, %.lr.ph12.preheader.i74
  %indvars.iv.i77.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i74 ], [ %indvars.iv.next.i78.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81.loopexit.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph12.i76.epil

.lr.ph12.i76.epil:                                ; preds = %.lr.ph12.i76.epil, %.lr.ph12.i76.epil.preheader
  %indvars.iv.i77.epil = phi i64 [ %indvars.iv.i77.epil.init, %.lr.ph12.i76.epil.preheader ], [ %indvars.iv.next.i78.epil, %.lr.ph12.i76.epil ] ; 2 uses
  %epil.iter150 = phi i64 [ 0, %.lr.ph12.i76.epil.preheader ], [ %epil.iter150.next, %.lr.ph12.i76.epil ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77.epil
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !149
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !116
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !116
  %indvars.iv.next.i78.epil = add nuw nsw i64 %indvars.iv.i77.epil, 1
  %epil.iter150.next = add i64 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i64 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81, label %.lr.ph12.i76.epil, !llvm.loop !889

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81.loopexit.unr-lcssa, %.lr.ph12.i76.epil, %.preheader.i73, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter155 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.ep = icmp ult i32 %5, 4
  br i1 %i.ep, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter159 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.fe, %.lr.ph28.i ]
  %niter160 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter160.next.3, %.lr.ph28.i ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !116
  %i.es = add nsw i32 %i.er, %.027.i              ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.es, ptr %i.et, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !116
  %i.ew = add nsw i32 %i.ev, %i.es                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !116
  %i.fa = add nsw i32 %i.ez, %i.ew                ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !116
  %i.fe = add nsw i32 %i.fd, %i.fa                ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter160.next.3 = add i64 %niter160, 4         ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, %unroll_iter159
  br i1 %niter160.ncmp.3, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !30

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod157.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.fe, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter155, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fi, %.lr.ph28.i.epil ]
  %epil.iter156 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph28.i.epil ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !116
  %i.fi = add nsw i32 %i.fh, %.027.i.epil         ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83, label %.lr.ph28.i.epil, !llvm.loop !890

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83: ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit81
  br i1 %i.dd, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83
  %i.fk = load i32, ptr %3, align 4, !tbaa !116
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fl
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = zext nneg i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph123, %bb.t
  %indvars.iv126 = phi i64 [ %i.fo, %.lr.ph123 ], [ %indvars.iv.next127, %bb.t ] ; 3 uses
  %.3121 = phi i32 [ 0, %.lr.ph123 ], [ %.5, %bb.t ] ; 4 uses
  %.sroa.085.3120 = phi ptr [ %i.fm, %.lr.ph123 ], [ %.sroa.085.5, %bb.t ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv126 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !116 ; 5 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.fs = add nsw i32 %i.fq, -1                   ; 3 uses
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !149 ; 3 uses
  %.not = icmp eq i32 %i.fv, %.3121
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fw = ptrtoint ptr %.sroa.085.3120 to i64
  %i.fx = sub i64 %i.fw, %i.fn
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = zext i32 %.3121 to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ga
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !116
  %i.gc = zext i32 %i.fv to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !116
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.085.4 = phi ptr [ %.sroa.085.3120, %bb.m ], [ %i.gg, %bb.n ]
  %.4 = phi i32 [ %.3121, %bb.m ], [ %i.fv, %bb.n ] ; 2 uses
  %i.gh = icmp eq i32 %i.fs, 0
  br i1 %i.gh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = zext nneg i32 %i.fq to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !149
  %i.gm = icmp ugt i32 %i.gl, %.4
  br i1 %i.gm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gn = sub nsw i32 0, %i.fq
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.go = phi i32 [ %i.gn, %bb.q ], [ %i.fs, %bb.p ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.085.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.gq = xor i32 %i.fq, -1
  store i32 %i.gq, ptr %i.fp, align 4, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.085.5 = phi ptr [ %i.gp, %bb.r ], [ %.sroa.085.3120, %bb.s ]
  %.5 = phi i32 [ %.4, %bb.r ], [ %.3121, %bb.s ]
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1
  %i.gr = icmp sgt i64 %indvars.iv126, 0
  br i1 %i.gr, label %bb.l, label %._crit_edge124, !llvm.loop !891

._crit_edge124:                                   ; preds = %bb.t, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14saisxx_private10suffixsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEiT_T0_T1_SA_SA_b(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp slt i32 %2, %4                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %4 to i64                       ; 3 uses
  %i.c = icmp slt i32 %4, 0
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #31 ; 15 uses
  %i.g = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.g, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.d, i1 false), !tbaa !116
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.h = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.h, label %.lr.ph11.preheader.i, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit

.lr.ph11.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter584 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.i = add nsw i32 %3, -1
  %i.j = icmp ult i32 %i.i, 3
  br i1 %i.j, label %.lr.ph11.i.epil.preheader, label %.lr.ph11.preheader.i.new

.lr.ph11.preheader.i.new:                         ; preds = %.lr.ph11.preheader.i
  %unroll_iter588 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph11.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph11.i ] ; 5 uses
  %niter589 = phi i64 [ 0, %.lr.ph11.preheader.i.new ], [ %niter589.next.3, %.lr.ph11.i ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !116
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !116
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !116
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !116
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !116
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !116
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !116
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !116
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !116
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !116
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !116
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !116
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter589.next.3 = add i64 %niter589, 4         ; 2 uses
  %niter589.ncmp.3 = icmp eq i64 %niter589.next.3, %unroll_iter588
  br i1 %niter589.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, label %.lr.ph11.i, !llvm.loop !33

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph11.i
  %lcmp.mod586.not = icmp eq i64 %xtraiter584, 0
  br i1 %lcmp.mod586.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit, label %.lr.ph11.i.epil.preheader

.lr.ph11.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph11.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next.i.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa ]
  %lcmp.mod587 = icmp ne i64 %xtraiter584, 0
  tail call void @llvm.assume(i1 %lcmp.mod587)
  br label %.lr.ph11.i.epil

.lr.ph11.i.epil:                                  ; preds = %.lr.ph11.i.epil, %.lr.ph11.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph11.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph11.i.epil ] ; 2 uses
  %epil.iter585 = phi i64 [ 0, %.lr.ph11.i.epil.preheader ], [ %epil.iter585.next, %.lr.ph11.i.epil ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !116
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !116
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !116
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter585.next = add i64 %epil.iter585, 1   ; 2 uses
  %epil.iter585.cmp.not = icmp eq i64 %epil.iter585.next, %xtraiter584
  br i1 %epil.iter585.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit, label %.lr.ph11.i.epil, !llvm.loop !892

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph11.i.epil, %.preheader.i
  br i1 %i.g, label %.lr.ph28.i.preheader, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit

.lr.ph28.i.preheader:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit
  %xtraiter590 = and i64 %i.b, 3                  ; 3 uses
  %i.ar = add nsw i32 %4, -1
  %i.as = icmp ult i32 %i.ar, 3
  br i1 %i.as, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.i.preheader.new

.lr.ph28.i.preheader.new:                         ; preds = %.lr.ph28.i.preheader
  %unroll_iter594 = and i64 %i.b, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.i.preheader.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.i.preheader.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 5 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.i.preheader.new ], [ %i.bh, %.lr.ph28.i ]
  %niter595 = phi i64 [ 0, %.lr.ph28.i.preheader.new ], [ %niter595.next.3, %.lr.ph28.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv31.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !116
  %i.av = add nsw i32 %i.au, %.027.i              ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !116
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv31.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !116
  %i.az = add nsw i32 %i.ay, %i.av                ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !116
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv31.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEES8_iEEiT_T0_T1_SE_T2_SF_:bb.a
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !149
  %i.cz = icmp ult i32 %i.cy, %.173
  %i.da = sub nsw i32 0, %i.cd
  %spec.select91 = select i1 %i.cz, i32 %i.da, i32 %i.cf
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select91, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0109.1, i64 4
  store i32 %i.db, ptr %.sroa.0109.1, align 4, !tbaa !116
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %.not88 = icmp eq i32 %i.cd, 0
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = xor i32 %i.cd, -1
  store i32 %i.dd, ptr %i.cc, align 4, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.0109.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.0109.0135, %bb.j ], [ %.sroa.0109.0135, %bb.k ]
  %.2 = phi i32 [ %.173, %bb.i ], [ %.072136, %bb.j ], [ %.072136, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !915

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %i.de = phi i1 [ false, %bb.c ], [ true, %bb.l ] ; 2 uses
  br i1 %i.a, label %bb.m, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105

bb.m:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i104, label %.preheader.i97

.lr.ph.preheader.i104:                            ; preds = %bb.m
  %i.df = zext nneg i32 %5 to i64
  %i.dg = shl nuw nsw i64 %i.df, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.dg, i1 false), !tbaa !116
  br label %.preheader.i97

.preheader.i97:                                   ; preds = %.lr.ph.preheader.i104, %bb.m
  br i1 %i.de, label %.lr.ph11.preheader.i98, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105

.lr.ph11.preheader.i98:                           ; preds = %.preheader.i97
  %wide.trip.count.i99 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter168 = and i64 %wide.trip.count.i99, 3  ; 3 uses
  %i.dh = add i32 %4, -1
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %.lr.ph11.i100.epil.preheader, label %.lr.ph11.preheader.i98.new

.lr.ph11.preheader.i98.new:                       ; preds = %.lr.ph11.preheader.i98
  %unroll_iter172 = and i64 %wide.trip.count.i99, 2147483644
  br label %.lr.ph11.i100

.lr.ph11.i100:                                    ; preds = %.lr.ph11.i100, %.lr.ph11.preheader.i98.new
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph11.preheader.i98.new ], [ %indvars.iv.next.i102.3, %.lr.ph11.i100 ] ; 5 uses
  %niter173 = phi i64 [ 0, %.lr.ph11.preheader.i98.new ], [ %niter173.next.3, %.lr.ph11.i100 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !149
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !116
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !116
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !149
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !116
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !116
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !149
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !116
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !116
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !149
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !116
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !116
  %indvars.iv.next.i102.3 = add nuw nsw i64 %indvars.iv.i101, 4 ; 2 uses
  %niter173.next.3 = add i64 %niter173, 4         ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105.loopexit.unr-lcssa, label %.lr.ph11.i100, !llvm.loop !27

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105.loopexit.unr-lcssa: ; preds = %.lr.ph11.i100
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105, label %.lr.ph11.i100.epil.preheader

.lr.ph11.i100.epil.preheader:                     ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105.loopexit.unr-lcssa, %.lr.ph11.preheader.i98
  %indvars.iv.i101.epil.init = phi i64 [ 0, %.lr.ph11.preheader.i98 ], [ %indvars.iv.next.i102.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105.loopexit.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph11.i100.epil

.lr.ph11.i100.epil:                               ; preds = %.lr.ph11.i100.epil, %.lr.ph11.i100.epil.preheader
  %indvars.iv.i101.epil = phi i64 [ %indvars.iv.i101.epil.init, %.lr.ph11.i100.epil.preheader ], [ %indvars.iv.next.i102.epil, %.lr.ph11.i100.epil ] ; 2 uses
  %epil.iter169 = phi i64 [ 0, %.lr.ph11.i100.epil.preheader ], [ %epil.iter169.next, %.lr.ph11.i100.epil ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101.epil
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !149
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !116
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !116
  %indvars.iv.next.i102.epil = add nuw nsw i64 %indvars.iv.i101.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105, label %.lr.ph11.i100.epil, !llvm.loop !916

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105.loopexit.unr-lcssa, %.lr.ph11.i100.epil, %.preheader.i97, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.eq = icmp ult i32 %5, 4
  br i1 %i.eq, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter178 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.ff, %.lr.ph28.i ]
  %niter179 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter179.next.3, %.lr.ph28.i ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !116
  %i.et = add nsw i32 %i.es, %.027.i              ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !116
  %i.ex = add nsw i32 %i.ew, %i.et                ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !116
  %i.fb = add nsw i32 %i.fa, %i.ex                ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !116
  %i.ff = add nsw i32 %i.fe, %i.fb                ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter179.next.3 = add i64 %niter179, 4         ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !28

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.ff, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter174, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fj, %.lr.ph28.i.epil ]
  %epil.iter175 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter175.next, %.lr.ph28.i.epil ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !116
  %i.fj = add nsw i32 %i.fi, %.027.i.epil         ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107, label %.lr.ph28.i.epil, !llvm.loop !917

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107: ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEEPiiEEvT_T0_T1_SB_.exit105
  br i1 %i.de, label %.lr.ph142, label %._crit_edge143

.lr.ph142:                                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107
  %i.fl = load i32, ptr %3, align 4, !tbaa !116
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fm
  %i.fo = ptrtoint ptr %1 to i64
  %i.fp = zext nneg i32 %i.bj to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph142, %bb.v
  %indvars.iv145 = phi i64 [ %i.fp, %.lr.ph142 ], [ %indvars.iv.next146, %bb.v ] ; 4 uses
  %.070140 = phi i32 [ -1, %.lr.ph142 ], [ %.171, %bb.v ] ; 2 uses
  %.3139 = phi i32 [ 0, %.lr.ph142 ], [ %.5, %bb.v ] ; 5 uses
  %.sroa.0109.3138 = phi ptr [ %i.fn, %.lr.ph142 ], [ %.sroa.0109.5, %bb.v ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv145 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !116 ; 6 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ft = add nsw i32 %i.fr, -1                   ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !149 ; 4 uses
  store i32 %i.fw, ptr %i.fq, align 4, !tbaa !116
  %.not86 = icmp eq i32 %i.fw, %.3139
  br i1 %.not86, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fx = ptrtoint ptr %.sroa.0109.3138 to i64
  %i.fy = sub i64 %i.fx, %i.fo
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = zext i32 %.3139 to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gb
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !116
  %i.gd = zext i32 %i.fw to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !116
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0109.4 = phi ptr [ %.sroa.0109.3138, %bb.o ], [ %i.gh, %bb.p ]
  %.4 = phi i32 [ %.3139, %bb.o ], [ %i.fw, %bb.p ] ; 2 uses
  %.not87 = icmp eq i32 %i.fr, 1
  br i1 %.not87, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = zext nneg i32 %i.fr to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !149 ; 2 uses
  %i.gm = icmp ugt i32 %i.gl, %.4
  %i.gn = xor i32 %i.gl, -1
  %spec.select134 = select i1 %i.gm, i32 %i.gn, i32 %i.ft
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.go = phi i32 [ 0, %bb.q ], [ %spec.select134, %bb.r ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.0109.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.fr, 0
  %i.gq = trunc nuw nsw i64 %indvars.iv145 to i32
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gr = xor i32 %i.fr, -1
  store i32 %i.gr, ptr %i.fq, align 4, !tbaa !116
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  %.sroa.0109.5 = phi ptr [ %i.gp, %bb.s ], [ %.sroa.0109.3138, %bb.t ], [ %.sroa.0109.3138, %bb.u ]
  %.5 = phi i32 [ %.4, %bb.s ], [ %.3139, %bb.t ], [ %.3139, %bb.u ]
  %.171 = phi i32 [ %.070140, %bb.s ], [ %i.gq, %bb.t ], [ %.070140, %bb.u ] ; 2 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -1
  %i.gs = icmp sgt i64 %indvars.iv145, 0
  br i1 %i.gs, label %bb.n, label %._crit_edge143, !llvm.loop !918

._crit_edge143:                                   ; preds = %bb.v, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107
  %.070.lcssa = phi i32 [ -1, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107 ], [ %.171, %bb.v ]
  ret i32 %.070.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEESB_iEEiT_T0_T1_SE_T2_SF_(ptr %0, ptr %1, ptr %2, ptr %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %5 to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false), !tbaa !116
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph12.preheader.i, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit

.lr.ph12.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %4, 4
  br i1 %i.f, label %.lr.ph12.i.epil.preheader, label %.lr.ph12.preheader.i.new

.lr.ph12.preheader.i.new:                         ; preds = %.lr.ph12.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph12.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %niter.next.3, %.lr.ph12.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !149
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !116
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !149
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !116
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !149
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !116
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !116
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !149
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !116
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa, label %.lr.ph12.i, !llvm.loop !29

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph12.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit, label %.lr.ph12.i.epil.preheader

.lr.ph12.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa, %.lr.ph12.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %indvars.iv.next.i.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph12.i.epil

.lr.ph12.i.epil:                                  ; preds = %.lr.ph12.i.epil, %.lr.ph12.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph12.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph12.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph12.i.epil.preheader ], [ %epil.iter.next, %.lr.ph12.i.epil ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !149
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !116
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !116
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit, label %.lr.ph12.i.epil, !llvm.loop !919

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit.loopexit.unr-lcssa, %.lr.ph12.i.epil, %.preheader.i, %bb.a
  %i.an = icmp sgt i32 %5, 0                      ; 3 uses
  br i1 %i.an, label %.lr.ph.preheader.i81, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit

.lr.ph.preheader.i81:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit
  %wide.trip.count.i82 = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter161 = and i64 %wide.trip.count.i82, 3  ; 3 uses
  %i.ao = icmp ult i32 %5, 4
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i81.new

.lr.ph.preheader.i81.new:                         ; preds = %.lr.ph.preheader.i81
  %unroll_iter165 = and i64 %wide.trip.count.i82, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i81.new
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph.preheader.i81.new ], [ %indvars.iv.next.i84.3, %.lr.ph.i ] ; 6 uses
  %.125.i = phi i32 [ 0, %.lr.ph.preheader.i81.new ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %niter166 = phi i64 [ 0, %.lr.ph.preheader.i81.new ], [ %niter166.next.3, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i83
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !116
  %i.ar = add nsw i32 %i.aq, %.125.i              ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i83
  store i32 %.125.i, ptr %i.as, align 4, !tbaa !116
  %indvars.iv.next.i84 = or disjoint i64 %indvars.iv.i83, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i84
end_hunk_4
begin_hunk_5_@_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEESB_iEEiT_T0_T1_SE_T2_SF_:bb.a
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !149
  %i.cz = icmp ult i32 %i.cy, %.164
  %i.da = sub nsw i32 0, %i.cd
  %spec.select80 = select i1 %i.cz, i32 %i.da, i32 %i.cf
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select80, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.098.1, i64 4
  store i32 %i.db, ptr %.sroa.098.1, align 4, !tbaa !116
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %.not77 = icmp eq i32 %i.cd, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = xor i32 %i.cd, -1
  store i32 %i.dd, ptr %i.cc, align 4, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.098.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.098.0134, %bb.j ], [ %.sroa.098.0134, %bb.k ]
  %.2 = phi i32 [ %.164, %bb.i ], [ %.063135, %bb.j ], [ %.063135, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !921

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %i.de = phi i1 [ false, %bb.c ], [ true, %bb.l ] ; 2 uses
  br i1 %i.a, label %bb.m, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94

bb.m:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i93, label %.preheader.i86

.lr.ph.preheader.i93:                             ; preds = %bb.m
  %i.df = zext nneg i32 %5 to i64
  %i.dg = shl nuw nsw i64 %i.df, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.dg, i1 false), !tbaa !116
  br label %.preheader.i86

.preheader.i86:                                   ; preds = %.lr.ph.preheader.i93, %bb.m
  br i1 %i.de, label %.lr.ph12.preheader.i87, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94

.lr.ph12.preheader.i87:                           ; preds = %.preheader.i86
  %wide.trip.count.i88 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter167 = and i64 %wide.trip.count.i88, 3  ; 3 uses
  %i.dh = add i32 %4, -1
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %.lr.ph12.i89.epil.preheader, label %.lr.ph12.preheader.i87.new

.lr.ph12.preheader.i87.new:                       ; preds = %.lr.ph12.preheader.i87
  %unroll_iter171 = and i64 %wide.trip.count.i88, 2147483644
  br label %.lr.ph12.i89

.lr.ph12.i89:                                     ; preds = %.lr.ph12.i89, %.lr.ph12.preheader.i87.new
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph12.preheader.i87.new ], [ %indvars.iv.next.i91.3, %.lr.ph12.i89 ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph12.preheader.i87.new ], [ %niter172.next.3, %.lr.ph12.i89 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !149
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !116
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !116
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !149
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !116
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !116
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !149
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !116
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !116
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !149
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !116
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !116
  %indvars.iv.next.i91.3 = add nuw nsw i64 %indvars.iv.i90, 4 ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94.loopexit.unr-lcssa, label %.lr.ph12.i89, !llvm.loop !29

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94.loopexit.unr-lcssa: ; preds = %.lr.ph12.i89
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94, label %.lr.ph12.i89.epil.preheader

.lr.ph12.i89.epil.preheader:                      ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94.loopexit.unr-lcssa, %.lr.ph12.preheader.i87
  %indvars.iv.i90.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i87 ], [ %indvars.iv.next.i91.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph12.i89.epil

.lr.ph12.i89.epil:                                ; preds = %.lr.ph12.i89.epil, %.lr.ph12.i89.epil.preheader
  %indvars.iv.i90.epil = phi i64 [ %indvars.iv.i90.epil.init, %.lr.ph12.i89.epil.preheader ], [ %indvars.iv.next.i91.epil, %.lr.ph12.i89.epil ] ; 2 uses
  %epil.iter168 = phi i64 [ 0, %.lr.ph12.i89.epil.preheader ], [ %epil.iter168.next, %.lr.ph12.i89.epil ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90.epil
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !149
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !116
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !116
  %indvars.iv.next.i91.epil = add nuw nsw i64 %indvars.iv.i90.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94, label %.lr.ph12.i89.epil, !llvm.loop !922

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94.loopexit.unr-lcssa, %.lr.ph12.i89.epil, %.preheader.i86, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter173 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.eq = icmp ult i32 %5, 4
  br i1 %i.eq, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter177 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.ff, %.lr.ph28.i ]
  %niter178 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter178.next.3, %.lr.ph28.i ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !116
  %i.et = add nsw i32 %i.es, %.027.i              ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !116
  %i.ex = add nsw i32 %i.ew, %i.et                ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !116
  %i.fb = add nsw i32 %i.fa, %i.ex                ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !116
  %i.ff = add nsw i32 %i.fe, %i.fb                ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !30

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.ff, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fj, %.lr.ph28.i.epil ]
  %epil.iter174 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter174.next, %.lr.ph28.i.epil ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !116
  %i.fj = add nsw i32 %i.fi, %.027.i.epil         ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96, label %.lr.ph28.i.epil, !llvm.loop !923

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96: ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEvT_T0_T1_SE_.exit94
  br i1 %i.de, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96
  %i.fl = load i32, ptr %3, align 4, !tbaa !116
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fm
  %i.fo = ptrtoint ptr %1 to i64
  %i.fp = zext nneg i32 %i.bj to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph141, %bb.v
  %indvars.iv144 = phi i64 [ %i.fp, %.lr.ph141 ], [ %indvars.iv.next145, %bb.v ] ; 4 uses
  %.061139 = phi i32 [ -1, %.lr.ph141 ], [ %.162, %bb.v ] ; 2 uses
  %.3138 = phi i32 [ 0, %.lr.ph141 ], [ %.5, %bb.v ] ; 5 uses
  %.sroa.098.3137 = phi ptr [ %i.fn, %.lr.ph141 ], [ %.sroa.098.5, %bb.v ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv144 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !116 ; 6 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ft = add nsw i32 %i.fr, -1                   ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !149 ; 4 uses
  store i32 %i.fw, ptr %i.fq, align 4, !tbaa !116
  %.not75 = icmp eq i32 %i.fw, %.3138
  br i1 %.not75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fx = ptrtoint ptr %.sroa.098.3137 to i64
  %i.fy = sub i64 %i.fx, %i.fo
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = zext i32 %.3138 to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gb
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !116
  %i.gd = zext i32 %i.fw to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !116
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.098.4 = phi ptr [ %.sroa.098.3137, %bb.o ], [ %i.gh, %bb.p ]
  %.4 = phi i32 [ %.3138, %bb.o ], [ %i.fw, %bb.p ] ; 2 uses
  %.not76 = icmp eq i32 %i.fr, 1
  br i1 %.not76, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = zext nneg i32 %i.fr to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !149 ; 2 uses
  %i.gm = icmp ugt i32 %i.gl, %.4
  %i.gn = xor i32 %i.gl, -1
  %spec.select133 = select i1 %i.gm, i32 %i.gn, i32 %i.ft
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.go = phi i32 [ 0, %bb.q ], [ %spec.select133, %bb.r ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.098.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.fr, 0
  %i.gq = trunc nuw nsw i64 %indvars.iv144 to i32
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gr = xor i32 %i.fr, -1
  store i32 %i.gr, ptr %i.fq, align 4, !tbaa !116
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  %.sroa.098.5 = phi ptr [ %i.gp, %bb.s ], [ %.sroa.098.3137, %bb.t ], [ %.sroa.098.3137, %bb.u ]
  %.5 = phi i32 [ %.4, %bb.s ], [ %.3138, %bb.t ], [ %.3138, %bb.u ]
  %.162 = phi i32 [ %.061139, %bb.s ], [ %i.gq, %bb.t ], [ %.061139, %bb.u ] ; 2 uses
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, -1
  %i.gs = icmp sgt i64 %indvars.iv144, 0
  br i1 %i.gs, label %bb.n, label %._crit_edge142, !llvm.loop !924

._crit_edge142:                                   ; preds = %bb.v, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96
  %.061.lcssa = phi i32 [ -1, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96 ], [ %.162, %bb.v ]
  ret i32 %.061.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S3_iEEvT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %5 to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false), !tbaa !116
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph11.preheader.i, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit

.lr.ph11.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %4, 4
  br i1 %i.f, label %.lr.ph11.i.epil.preheader, label %.lr.ph11.preheader.i.new

.lr.ph11.preheader.i.new:                         ; preds = %.lr.ph11.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph11.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph11.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph11.preheader.i.new ], [ %niter.next.3, %.lr.ph11.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !116
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !116
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !116
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !116
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !116
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !116
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !116
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !116
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, label %.lr.ph11.i, !llvm.loop !33

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph11.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit, label %.lr.ph11.i.epil.preheader

.lr.ph11.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph11.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next.i.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa ]
  %lcmp.mod143 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %.lr.ph11.i.epil

.lr.ph11.i.epil:                                  ; preds = %.lr.ph11.i.epil, %.lr.ph11.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph11.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph11.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph11.i.epil.preheader ], [ %epil.iter.next, %.lr.ph11.i.epil ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !116
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !116
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !116
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit, label %.lr.ph11.i.epil, !llvm.loop !925

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph11.i.epil, %.preheader.i, %bb.a
  %i.an = icmp sgt i32 %5, 0                      ; 3 uses
  br i1 %i.an, label %.lr.ph.preheader.i79, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit

.lr.ph.preheader.i79:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit
  %wide.trip.count.i80 = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter144 = and i64 %wide.trip.count.i80, 3  ; 3 uses
  %i.ao = icmp ult i32 %5, 4
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i79.new

.lr.ph.preheader.i79.new:                         ; preds = %.lr.ph.preheader.i79
  %unroll_iter148 = and i64 %wide.trip.count.i80, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i79.new
  %indvars.iv.i81 = phi i64 [ 0, %.lr.ph.preheader.i79.new ], [ %indvars.iv.next.i82.3, %.lr.ph.i ] ; 6 uses
  %.125.i = phi i32 [ 0, %.lr.ph.preheader.i79.new ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %niter149 = phi i64 [ 0, %.lr.ph.preheader.i79.new ], [ %niter149.next.3, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i81
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !116
  %i.ar = add nsw i32 %i.aq, %.125.i              ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i81
  store i32 %.125.i, ptr %i.as, align 4, !tbaa !116
  %indvars.iv.next.i82 = or disjoint i64 %indvars.iv.i81, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i82
end_hunk_5
begin_hunk_6_@_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S3_iEEvT_T0_T1_SA_T2_SB_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.096.1 = phi ptr [ %.sroa.096.0118, %bb.e ], [ %i.cu, %bb.f ] ; 2 uses
  %.164 = phi i32 [ %.063119, %bb.e ], [ %i.cj, %bb.f ] ; 2 uses
  %.not77 = icmp eq i32 %i.cd, 1
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !116
  %i.cz = icmp slt i32 %i.cy, %.164
  %i.da = sub nsw i32 0, %i.cd
  %spec.select78 = select i1 %i.cz, i32 %i.da, i32 %i.cg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select78, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.096.1, i64 4
  store i32 %i.db, ptr %.sroa.096.1, align 4, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.sroa.096.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.096.0118, %bb.d ]
  %.2 = phi i32 [ %.164, %bb.i ], [ %.063119, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !927

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.dd = phi i1 [ false, %bb.c ], [ true, %bb.j ] ; 2 uses
  br i1 %i.a, label %bb.k, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i91, label %.preheader.i84

.lr.ph.preheader.i91:                             ; preds = %bb.k
  %i.de = zext nneg i32 %5 to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.df, i1 false), !tbaa !116
  br label %.preheader.i84

.preheader.i84:                                   ; preds = %.lr.ph.preheader.i91, %bb.k
  br i1 %i.dd, label %.lr.ph11.preheader.i85, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92

.lr.ph11.preheader.i85:                           ; preds = %.preheader.i84
  %wide.trip.count.i86 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter150 = and i64 %wide.trip.count.i86, 3  ; 3 uses
  %i.dg = add i32 %4, -1
  %i.dh = icmp ult i32 %i.dg, 3
  br i1 %i.dh, label %.lr.ph11.i87.epil.preheader, label %.lr.ph11.preheader.i85.new

.lr.ph11.preheader.i85.new:                       ; preds = %.lr.ph11.preheader.i85
  %unroll_iter154 = and i64 %wide.trip.count.i86, 2147483644
  br label %.lr.ph11.i87

.lr.ph11.i87:                                     ; preds = %.lr.ph11.i87, %.lr.ph11.preheader.i85.new
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph11.preheader.i85.new ], [ %indvars.iv.next.i89.3, %.lr.ph11.i87 ] ; 5 uses
  %niter155 = phi i64 [ 0, %.lr.ph11.preheader.i85.new ], [ %niter155.next.3, %.lr.ph11.i87 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !116
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !116
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !116
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !116
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !116
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !116
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !116
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !116
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !116
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !116
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !116
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !116
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %niter155.next.3 = add i64 %niter155, 4         ; 2 uses
  %niter155.ncmp.3 = icmp eq i64 %niter155.next.3, %unroll_iter154
  br i1 %niter155.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92.loopexit.unr-lcssa, label %.lr.ph11.i87, !llvm.loop !33

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92.loopexit.unr-lcssa: ; preds = %.lr.ph11.i87
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod152.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92, label %.lr.ph11.i87.epil.preheader

.lr.ph11.i87.epil.preheader:                      ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92.loopexit.unr-lcssa, %.lr.ph11.preheader.i85
  %indvars.iv.i88.epil.init = phi i64 [ 0, %.lr.ph11.preheader.i85 ], [ %indvars.iv.next.i89.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92.loopexit.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  tail call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph11.i87.epil

.lr.ph11.i87.epil:                                ; preds = %.lr.ph11.i87.epil, %.lr.ph11.i87.epil.preheader
  %indvars.iv.i88.epil = phi i64 [ %indvars.iv.i88.epil.init, %.lr.ph11.i87.epil.preheader ], [ %indvars.iv.next.i89.epil, %.lr.ph11.i87.epil ] ; 2 uses
  %epil.iter151 = phi i64 [ 0, %.lr.ph11.i87.epil.preheader ], [ %epil.iter151.next, %.lr.ph11.i87.epil ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i88.epil
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !116
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %2, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !116
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !116
  %indvars.iv.next.i89.epil = add nuw nsw i64 %indvars.iv.i88.epil, 1
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92, label %.lr.ph11.i87.epil, !llvm.loop !928

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92.loopexit.unr-lcssa, %.lr.ph11.i87.epil, %.preheader.i84, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter156 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.ep = icmp ult i32 %5, 4
  br i1 %i.ep, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter160 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.fe, %.lr.ph28.i ]
  %niter161 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter161.next.3, %.lr.ph28.i ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !116
  %i.es = add nsw i32 %i.er, %.027.i              ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.es, ptr %i.et, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !116
  %i.ew = add nsw i32 %i.ev, %i.es                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !116
  %i.fa = add nsw i32 %i.ez, %i.ew                ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !116
  %i.fe = add nsw i32 %i.fd, %i.fa                ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter161.next.3 = add i64 %niter161, 4         ; 2 uses
  %niter161.ncmp.3 = icmp eq i64 %niter161.next.3, %unroll_iter160
  br i1 %niter161.ncmp.3, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !28

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.fe, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fi, %.lr.ph28.i.epil ]
  %epil.iter157 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph28.i.epil ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !116
  %i.fi = add nsw i32 %i.fh, %.027.i.epil         ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter157.next = add i64 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i64 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94, label %.lr.ph28.i.epil, !llvm.loop !929

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94: ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit92
  br i1 %i.dd, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94
  %i.fk = load i32, ptr %3, align 4, !tbaa !116
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fl
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = zext nneg i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124, %bb.t
  %indvars.iv127 = phi i64 [ %i.fo, %.lr.ph124 ], [ %indvars.iv.next128, %bb.t ] ; 3 uses
  %.3122 = phi i32 [ 0, %.lr.ph124 ], [ %.5, %bb.t ] ; 4 uses
  %.sroa.096.3121 = phi ptr [ %i.fm, %.lr.ph124 ], [ %.sroa.096.5, %bb.t ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv127 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !116 ; 5 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.fs = add nsw i32 %i.fq, -1                   ; 3 uses
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !116 ; 3 uses
  %.not = icmp eq i32 %i.fv, %.3122
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fw = ptrtoint ptr %.sroa.096.3121 to i64
  %i.fx = sub i64 %i.fw, %i.fn
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = sext i32 %.3122 to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ga
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !116
  %i.gc = sext i32 %i.fv to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !116
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.096.4 = phi ptr [ %.sroa.096.3121, %bb.m ], [ %i.gg, %bb.n ]
  %.4 = phi i32 [ %.3122, %bb.m ], [ %i.fv, %bb.n ] ; 2 uses
  %i.gh = icmp eq i32 %i.fs, 0
  br i1 %i.gh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = zext nneg i32 %i.fq to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !116
  %i.gm = icmp sgt i32 %i.gl, %.4
  br i1 %i.gm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gn = sub nsw i32 0, %i.fq
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.go = phi i32 [ %i.gn, %bb.q ], [ %i.fs, %bb.p ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.096.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.gq = xor i32 %i.fq, -1
  store i32 %i.gq, ptr %i.fp, align 4, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.096.5 = phi ptr [ %i.gp, %bb.r ], [ %.sroa.096.3121, %bb.s ]
  %.5 = phi i32 [ %.4, %bb.r ], [ %.3122, %bb.s ]
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, -1
  %i.gr = icmp sgt i64 %indvars.iv127, 0
  br i1 %i.gr, label %bb.l, label %._crit_edge125, !llvm.loop !930

._crit_edge125:                                   ; preds = %bb.t, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S7_iEEvT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr %2, ptr %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %5 to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false), !tbaa !116
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph12.preheader.i, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit

.lr.ph12.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %4, 4
  br i1 %i.f, label %.lr.ph12.i.epil.preheader, label %.lr.ph12.preheader.i.new

.lr.ph12.preheader.i.new:                         ; preds = %.lr.ph12.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph12.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %niter.next.3, %.lr.ph12.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !116
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !116
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !116
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !116
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !116
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !116
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !116
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !116
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, label %.lr.ph12.i, !llvm.loop !34

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph12.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit, label %.lr.ph12.i.epil.preheader

.lr.ph12.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph12.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %indvars.iv.next.i.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph12.i.epil

.lr.ph12.i.epil:                                  ; preds = %.lr.ph12.i.epil, %.lr.ph12.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph12.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph12.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph12.i.epil.preheader ], [ %epil.iter.next, %.lr.ph12.i.epil ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !116
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !116
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !116
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit, label %.lr.ph12.i.epil, !llvm.loop !931

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph12.i.epil, %.preheader.i, %bb.a
  %i.an = icmp sgt i32 %5, 0                      ; 3 uses
  br i1 %i.an, label %.lr.ph.preheader.i68, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit

.lr.ph.preheader.i68:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit
  %wide.trip.count.i69 = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter143 = and i64 %wide.trip.count.i69, 3  ; 3 uses
  %i.ao = icmp ult i32 %5, 4
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i68.new

.lr.ph.preheader.i68.new:                         ; preds = %.lr.ph.preheader.i68
  %unroll_iter147 = and i64 %wide.trip.count.i69, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i68.new
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %indvars.iv.next.i71.3, %.lr.ph.i ] ; 6 uses
  %.125.i = phi i32 [ 0, %.lr.ph.preheader.i68.new ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %niter148 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %niter148.next.3, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i70
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !116
  %i.ar = add nsw i32 %i.aq, %.125.i              ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i70
  store i32 %.125.i, ptr %i.as, align 4, !tbaa !116
  %indvars.iv.next.i71 = or disjoint i64 %indvars.iv.i70, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i71
  %i.au = load i32, ptr %i.at, align 4, !tbaa !116
  %i.av = add nsw i32 %i.au, %i.ar                ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i71
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !116
  %indvars.iv.next.i71.1 = or disjoint i64 %indvars.iv.i70, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i71.1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !116
end_hunk_6
begin_hunk_7_@_ZN14saisxx_private8induceSAIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S7_iEEvT_T0_T1_SA_T2_SB_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.085.1 = phi ptr [ %.sroa.085.0117, %bb.e ], [ %i.cu, %bb.f ] ; 2 uses
  %.155 = phi i32 [ %.054118, %bb.e ], [ %i.cj, %bb.f ] ; 2 uses
  %.not66 = icmp eq i32 %i.cd, 1
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !116
  %i.cz = icmp slt i32 %i.cy, %.155
  %i.da = sub nsw i32 0, %i.cd
  %spec.select67 = select i1 %i.cz, i32 %i.da, i32 %i.cg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select67, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.085.1, i64 4
  store i32 %i.db, ptr %.sroa.085.1, align 4, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.sroa.085.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.085.0117, %bb.d ]
  %.2 = phi i32 [ %.155, %bb.i ], [ %.054118, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !933

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.dd = phi i1 [ false, %bb.c ], [ true, %bb.j ] ; 2 uses
  br i1 %i.a, label %bb.k, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i80, label %.preheader.i73

.lr.ph.preheader.i80:                             ; preds = %bb.k
  %i.de = zext nneg i32 %5 to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.df, i1 false), !tbaa !116
  br label %.preheader.i73

.preheader.i73:                                   ; preds = %.lr.ph.preheader.i80, %bb.k
  br i1 %i.dd, label %.lr.ph12.preheader.i74, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81

.lr.ph12.preheader.i74:                           ; preds = %.preheader.i73
  %wide.trip.count.i75 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count.i75, 3  ; 3 uses
  %i.dg = add i32 %4, -1
  %i.dh = icmp ult i32 %i.dg, 3
  br i1 %i.dh, label %.lr.ph12.i76.epil.preheader, label %.lr.ph12.preheader.i74.new

.lr.ph12.preheader.i74.new:                       ; preds = %.lr.ph12.preheader.i74
  %unroll_iter153 = and i64 %wide.trip.count.i75, 2147483644
  br label %.lr.ph12.i76

.lr.ph12.i76:                                     ; preds = %.lr.ph12.i76, %.lr.ph12.preheader.i74.new
  %indvars.iv.i77 = phi i64 [ 0, %.lr.ph12.preheader.i74.new ], [ %indvars.iv.next.i78.3, %.lr.ph12.i76 ] ; 5 uses
  %niter154 = phi i64 [ 0, %.lr.ph12.preheader.i74.new ], [ %niter154.next.3, %.lr.ph12.i76 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !116
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !116
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !116
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !116
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !116
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !116
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !116
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !116
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !116
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !116
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !116
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !116
  %indvars.iv.next.i78.3 = add nuw nsw i64 %indvars.iv.i77, 4 ; 2 uses
  %niter154.next.3 = add i64 %niter154, 4         ; 2 uses
  %niter154.ncmp.3 = icmp eq i64 %niter154.next.3, %unroll_iter153
  br i1 %niter154.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81.loopexit.unr-lcssa, label %.lr.ph12.i76, !llvm.loop !34

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81.loopexit.unr-lcssa: ; preds = %.lr.ph12.i76
  %lcmp.mod151.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81, label %.lr.ph12.i76.epil.preheader

.lr.ph12.i76.epil.preheader:                      ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81.loopexit.unr-lcssa, %.lr.ph12.preheader.i74
  %indvars.iv.i77.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i74 ], [ %indvars.iv.next.i78.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81.loopexit.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph12.i76.epil

.lr.ph12.i76.epil:                                ; preds = %.lr.ph12.i76.epil, %.lr.ph12.i76.epil.preheader
  %indvars.iv.i77.epil = phi i64 [ %indvars.iv.i77.epil.init, %.lr.ph12.i76.epil.preheader ], [ %indvars.iv.next.i78.epil, %.lr.ph12.i76.epil ] ; 2 uses
  %epil.iter150 = phi i64 [ 0, %.lr.ph12.i76.epil.preheader ], [ %epil.iter150.next, %.lr.ph12.i76.epil ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i77.epil
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !116
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %2, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !116
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !116
  %indvars.iv.next.i78.epil = add nuw nsw i64 %indvars.iv.i77.epil, 1
  %epil.iter150.next = add i64 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i64 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81, label %.lr.ph12.i76.epil, !llvm.loop !934

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81.loopexit.unr-lcssa, %.lr.ph12.i76.epil, %.preheader.i73, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter155 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.ep = icmp ult i32 %5, 4
  br i1 %i.ep, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter159 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.fe, %.lr.ph28.i ]
  %niter160 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter160.next.3, %.lr.ph28.i ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !116
  %i.es = add nsw i32 %i.er, %.027.i              ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.es, ptr %i.et, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !116
  %i.ew = add nsw i32 %i.ev, %i.es                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !116
  %i.fa = add nsw i32 %i.ez, %i.ew                ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !116
  %i.fe = add nsw i32 %i.fd, %i.fa                ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter160.next.3 = add i64 %niter160, 4         ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, %unroll_iter159
  br i1 %niter160.ncmp.3, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !30

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod157.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.fe, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter155, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fi, %.lr.ph28.i.epil ]
  %epil.iter156 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph28.i.epil ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !116
  %i.fi = add nsw i32 %i.fh, %.027.i.epil         ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83, label %.lr.ph28.i.epil, !llvm.loop !935

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83: ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit81
  br i1 %i.dd, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83
  %i.fk = load i32, ptr %3, align 4, !tbaa !116
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fl
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = zext nneg i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph123, %bb.t
  %indvars.iv126 = phi i64 [ %i.fo, %.lr.ph123 ], [ %indvars.iv.next127, %bb.t ] ; 3 uses
  %.3121 = phi i32 [ 0, %.lr.ph123 ], [ %.5, %bb.t ] ; 4 uses
  %.sroa.085.3120 = phi ptr [ %i.fm, %.lr.ph123 ], [ %.sroa.085.5, %bb.t ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv126 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !116 ; 5 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.fs = add nsw i32 %i.fq, -1                   ; 3 uses
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !116 ; 3 uses
  %.not = icmp eq i32 %i.fv, %.3121
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fw = ptrtoint ptr %.sroa.085.3120 to i64
  %i.fx = sub i64 %i.fw, %i.fn
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = sext i32 %.3121 to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ga
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !116
  %i.gc = sext i32 %i.fv to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !116
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.085.4 = phi ptr [ %.sroa.085.3120, %bb.m ], [ %i.gg, %bb.n ]
  %.4 = phi i32 [ %.3121, %bb.m ], [ %i.fv, %bb.n ] ; 2 uses
  %i.gh = icmp eq i32 %i.fs, 0
  br i1 %i.gh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = zext nneg i32 %i.fq to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !116
  %i.gm = icmp sgt i32 %i.gl, %.4
  br i1 %i.gm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gn = sub nsw i32 0, %i.fq
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.go = phi i32 [ %i.gn, %bb.q ], [ %i.fs, %bb.p ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.085.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.gq = xor i32 %i.fq, -1
  store i32 %i.gq, ptr %i.fp, align 4, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.085.5 = phi ptr [ %i.gp, %bb.r ], [ %.sroa.085.3120, %bb.s ]
  %.5 = phi i32 [ %.4, %bb.r ], [ %.3121, %bb.s ]
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1
  %i.gr = icmp sgt i64 %indvars.iv126, 0
  br i1 %i.gr, label %bb.l, label %._crit_edge124, !llvm.loop !936

._crit_edge124:                                   ; preds = %bb.t, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit83
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S3_iEEiT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %5 to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false), !tbaa !116
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph11.preheader.i, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit

.lr.ph11.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %4, 4
  br i1 %i.f, label %.lr.ph11.i.epil.preheader, label %.lr.ph11.preheader.i.new

.lr.ph11.preheader.i.new:                         ; preds = %.lr.ph11.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph11.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph11.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph11.preheader.i.new ], [ %niter.next.3, %.lr.ph11.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !116
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !116
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !116
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !116
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !116
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !116
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !116
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !116
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, label %.lr.ph11.i, !llvm.loop !33

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph11.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit, label %.lr.ph11.i.epil.preheader

.lr.ph11.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph11.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next.i.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph11.i.epil

.lr.ph11.i.epil:                                  ; preds = %.lr.ph11.i.epil, %.lr.ph11.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph11.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph11.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph11.i.epil.preheader ], [ %epil.iter.next, %.lr.ph11.i.epil ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !116
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !116
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !116
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit, label %.lr.ph11.i.epil, !llvm.loop !937

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph11.i.epil, %.preheader.i, %bb.a
  %i.an = icmp sgt i32 %5, 0                      ; 3 uses
  br i1 %i.an, label %.lr.ph.preheader.i92, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit

.lr.ph.preheader.i92:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit
  %wide.trip.count.i93 = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter162 = and i64 %wide.trip.count.i93, 3  ; 3 uses
  %i.ao = icmp ult i32 %5, 4
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i92.new

.lr.ph.preheader.i92.new:                         ; preds = %.lr.ph.preheader.i92
  %unroll_iter166 = and i64 %wide.trip.count.i93, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i92.new
  %indvars.iv.i94 = phi i64 [ 0, %.lr.ph.preheader.i92.new ], [ %indvars.iv.next.i95.3, %.lr.ph.i ] ; 6 uses
  %.125.i = phi i32 [ 0, %.lr.ph.preheader.i92.new ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %niter167 = phi i64 [ 0, %.lr.ph.preheader.i92.new ], [ %niter167.next.3, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i94
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !116
  %i.ar = add nsw i32 %i.aq, %.125.i              ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i94
  store i32 %.125.i, ptr %i.as, align 4, !tbaa !116
  %indvars.iv.next.i95 = or disjoint i64 %indvars.iv.i94, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i95
  %i.au = load i32, ptr %i.at, align 4, !tbaa !116
  %i.av = add nsw i32 %i.au, %i.ar                ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i95
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !116
  %indvars.iv.next.i95.1 = or disjoint i64 %indvars.iv.i94, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i95.1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !116
end_hunk_7
begin_hunk_8_@_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S3_iEEiT_T0_T1_SA_T2_SB_:bb.a
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !116
  %i.cz = icmp slt i32 %i.cy, %.173
  %i.da = sub nsw i32 0, %i.cd
  %spec.select91 = select i1 %i.cz, i32 %i.da, i32 %i.cf
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select91, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0109.1, i64 4
  store i32 %i.db, ptr %.sroa.0109.1, align 4, !tbaa !116
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %.not88 = icmp eq i32 %i.cd, 0
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = xor i32 %i.cd, -1
  store i32 %i.dd, ptr %i.cc, align 4, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.0109.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.0109.0135, %bb.j ], [ %.sroa.0109.0135, %bb.k ]
  %.2 = phi i32 [ %.173, %bb.i ], [ %.072136, %bb.j ], [ %.072136, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !939

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %i.de = phi i1 [ false, %bb.c ], [ true, %bb.l ] ; 2 uses
  br i1 %i.a, label %bb.m, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105

bb.m:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i104, label %.preheader.i97

.lr.ph.preheader.i104:                            ; preds = %bb.m
  %i.df = zext nneg i32 %5 to i64
  %i.dg = shl nuw nsw i64 %i.df, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.dg, i1 false), !tbaa !116
  br label %.preheader.i97

.preheader.i97:                                   ; preds = %.lr.ph.preheader.i104, %bb.m
  br i1 %i.de, label %.lr.ph11.preheader.i98, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105

.lr.ph11.preheader.i98:                           ; preds = %.preheader.i97
  %wide.trip.count.i99 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter168 = and i64 %wide.trip.count.i99, 3  ; 3 uses
  %i.dh = add i32 %4, -1
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %.lr.ph11.i100.epil.preheader, label %.lr.ph11.preheader.i98.new

.lr.ph11.preheader.i98.new:                       ; preds = %.lr.ph11.preheader.i98
  %unroll_iter172 = and i64 %wide.trip.count.i99, 2147483644
  br label %.lr.ph11.i100

.lr.ph11.i100:                                    ; preds = %.lr.ph11.i100, %.lr.ph11.preheader.i98.new
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph11.preheader.i98.new ], [ %indvars.iv.next.i102.3, %.lr.ph11.i100 ] ; 5 uses
  %niter173 = phi i64 [ 0, %.lr.ph11.preheader.i98.new ], [ %niter173.next.3, %.lr.ph11.i100 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !116
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !116
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !116
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !116
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !116
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !116
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !116
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !116
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !116
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !116
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !116
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !116
  %indvars.iv.next.i102.3 = add nuw nsw i64 %indvars.iv.i101, 4 ; 2 uses
  %niter173.next.3 = add i64 %niter173, 4         ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105.loopexit.unr-lcssa, label %.lr.ph11.i100, !llvm.loop !33

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105.loopexit.unr-lcssa: ; preds = %.lr.ph11.i100
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105, label %.lr.ph11.i100.epil.preheader

.lr.ph11.i100.epil.preheader:                     ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105.loopexit.unr-lcssa, %.lr.ph11.preheader.i98
  %indvars.iv.i101.epil.init = phi i64 [ 0, %.lr.ph11.preheader.i98 ], [ %indvars.iv.next.i102.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105.loopexit.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph11.i100.epil

.lr.ph11.i100.epil:                               ; preds = %.lr.ph11.i100.epil, %.lr.ph11.i100.epil.preheader
  %indvars.iv.i101.epil = phi i64 [ %indvars.iv.i101.epil.init, %.lr.ph11.i100.epil.preheader ], [ %indvars.iv.next.i102.epil, %.lr.ph11.i100.epil ] ; 2 uses
  %epil.iter169 = phi i64 [ 0, %.lr.ph11.i100.epil.preheader ], [ %epil.iter169.next, %.lr.ph11.i100.epil ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i101.epil
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !116
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %2, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !116
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !116
  %indvars.iv.next.i102.epil = add nuw nsw i64 %indvars.iv.i101.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105, label %.lr.ph11.i100.epil, !llvm.loop !940

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105.loopexit.unr-lcssa, %.lr.ph11.i100.epil, %.preheader.i97, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.eq = icmp ult i32 %5, 4
  br i1 %i.eq, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter178 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.ff, %.lr.ph28.i ]
  %niter179 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter179.next.3, %.lr.ph28.i ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !116
  %i.et = add nsw i32 %i.es, %.027.i              ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !116
  %i.ex = add nsw i32 %i.ew, %i.et                ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !116
  %i.fb = add nsw i32 %i.fa, %i.ex                ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !116
  %i.ff = add nsw i32 %i.fe, %i.fb                ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter179.next.3 = add i64 %niter179, 4         ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !28

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.ff, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter174, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fj, %.lr.ph28.i.epil ]
  %epil.iter175 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter175.next, %.lr.ph28.i.epil ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !116
  %i.fj = add nsw i32 %i.fi, %.027.i.epil         ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107, label %.lr.ph28.i.epil, !llvm.loop !941

_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107: ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES3_iEEvT_T0_T1_SA_.exit105
  br i1 %i.de, label %.lr.ph142, label %._crit_edge143

.lr.ph142:                                        ; preds = %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107
  %i.fl = load i32, ptr %3, align 4, !tbaa !116
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fm
  %i.fo = ptrtoint ptr %1 to i64
  %i.fp = zext nneg i32 %i.bj to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph142, %bb.v
  %indvars.iv145 = phi i64 [ %i.fp, %.lr.ph142 ], [ %indvars.iv.next146, %bb.v ] ; 4 uses
  %.070140 = phi i32 [ -1, %.lr.ph142 ], [ %.171, %bb.v ] ; 2 uses
  %.3139 = phi i32 [ 0, %.lr.ph142 ], [ %.5, %bb.v ] ; 5 uses
  %.sroa.0109.3138 = phi ptr [ %i.fn, %.lr.ph142 ], [ %.sroa.0109.5, %bb.v ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv145 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !116 ; 6 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ft = add nsw i32 %i.fr, -1                   ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !116 ; 4 uses
  store i32 %i.fw, ptr %i.fq, align 4, !tbaa !116
  %.not86 = icmp eq i32 %i.fw, %.3139
  br i1 %.not86, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fx = ptrtoint ptr %.sroa.0109.3138 to i64
  %i.fy = sub i64 %i.fx, %i.fo
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = sext i32 %.3139 to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gb
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !116
  %i.gd = sext i32 %i.fw to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !116
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0109.4 = phi ptr [ %.sroa.0109.3138, %bb.o ], [ %i.gh, %bb.p ]
  %.4 = phi i32 [ %.3139, %bb.o ], [ %i.fw, %bb.p ] ; 2 uses
  %.not87 = icmp eq i32 %i.fr, 1
  br i1 %.not87, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = zext nneg i32 %i.fr to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !116 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, %.4
  %i.gn = xor i32 %i.gl, -1
  %spec.select134 = select i1 %i.gm, i32 %i.gn, i32 %i.ft
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.go = phi i32 [ 0, %bb.q ], [ %spec.select134, %bb.r ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.0109.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.fr, 0
  %i.gq = trunc nuw nsw i64 %indvars.iv145 to i32
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gr = xor i32 %i.fr, -1
  store i32 %i.gr, ptr %i.fq, align 4, !tbaa !116
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  %.sroa.0109.5 = phi ptr [ %i.gp, %bb.s ], [ %.sroa.0109.3138, %bb.t ], [ %.sroa.0109.3138, %bb.u ]
  %.5 = phi i32 [ %.4, %bb.s ], [ %.3139, %bb.t ], [ %.3139, %bb.u ]
  %.171 = phi i32 [ %.070140, %bb.s ], [ %i.gq, %bb.t ], [ %.070140, %bb.u ] ; 2 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -1
  %i.gs = icmp sgt i64 %indvars.iv145, 0
  br i1 %i.gs, label %bb.n, label %._crit_edge143, !llvm.loop !942

._crit_edge143:                                   ; preds = %bb.v, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107
  %.070.lcssa = phi i32 [ -1, %_ZN14saisxx_private10getBucketsIPiiEEvT_S2_T0_b.exit107 ], [ %.171, %bb.v ]
  ret i32 %.070.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S7_iEEiT_T0_T1_SA_T2_SB_(ptr %0, ptr %1, ptr %2, ptr %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %3                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %5 to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false), !tbaa !116
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph12.preheader.i, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit

.lr.ph12.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %4, 4
  br i1 %i.f, label %.lr.ph12.i.epil.preheader, label %.lr.ph12.preheader.i.new

.lr.ph12.preheader.i.new:                         ; preds = %.lr.ph12.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph12.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %niter.next.3, %.lr.ph12.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !116
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !116
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !116
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !116
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !116
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !116
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !116
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !116
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, label %.lr.ph12.i, !llvm.loop !34

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph12.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit, label %.lr.ph12.i.epil.preheader

.lr.ph12.i.epil.preheader:                        ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph12.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %indvars.iv.next.i.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph12.i.epil

.lr.ph12.i.epil:                                  ; preds = %.lr.ph12.i.epil, %.lr.ph12.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph12.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph12.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph12.i.epil.preheader ], [ %epil.iter.next, %.lr.ph12.i.epil ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !116
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !116
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !116
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit, label %.lr.ph12.i.epil, !llvm.loop !943

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit.loopexit.unr-lcssa, %.lr.ph12.i.epil, %.preheader.i, %bb.a
  %i.an = icmp sgt i32 %5, 0                      ; 3 uses
  br i1 %i.an, label %.lr.ph.preheader.i81, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit

.lr.ph.preheader.i81:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit
  %wide.trip.count.i82 = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter161 = and i64 %wide.trip.count.i82, 3  ; 3 uses
  %i.ao = icmp ult i32 %5, 4
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i81.new

.lr.ph.preheader.i81.new:                         ; preds = %.lr.ph.preheader.i81
  %unroll_iter165 = and i64 %wide.trip.count.i82, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i81.new
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph.preheader.i81.new ], [ %indvars.iv.next.i84.3, %.lr.ph.i ] ; 6 uses
  %.125.i = phi i32 [ 0, %.lr.ph.preheader.i81.new ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %niter166 = phi i64 [ 0, %.lr.ph.preheader.i81.new ], [ %niter166.next.3, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i83
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !116
  %i.ar = add nsw i32 %i.aq, %.125.i              ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i83
  store i32 %.125.i, ptr %i.as, align 4, !tbaa !116
  %indvars.iv.next.i84 = or disjoint i64 %indvars.iv.i83, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i84
end_hunk_8
begin_hunk_9_@_ZN14saisxx_private10computeBWTIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_S7_iEEiT_T0_T1_SA_T2_SB_:bb.a
  %i.cv = zext nneg i32 %i.cd to i64
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !116
  %i.cz = icmp slt i32 %i.cy, %.164
  %i.da = sub nsw i32 0, %i.cd
  %spec.select80 = select i1 %i.cz, i32 %i.da, i32 %i.cf
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi i32 [ 0, %bb.g ], [ %spec.select80, %bb.h ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.098.1, i64 4
  store i32 %i.db, ptr %.sroa.098.1, align 4, !tbaa !116
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %.not77 = icmp eq i32 %i.cd, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = xor i32 %i.cd, -1
  store i32 %i.dd, ptr %i.cc, align 4, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.098.2 = phi ptr [ %i.dc, %bb.i ], [ %.sroa.098.0134, %bb.j ], [ %.sroa.098.0134, %bb.k ]
  %.2 = phi i32 [ %.164, %bb.i ], [ %.063135, %bb.j ], [ %.063135, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !945

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %i.de = phi i1 [ false, %bb.c ], [ true, %bb.l ] ; 2 uses
  br i1 %i.a, label %bb.m, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94

bb.m:                                             ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph.preheader.i93, label %.preheader.i86

.lr.ph.preheader.i93:                             ; preds = %bb.m
  %i.df = zext nneg i32 %5 to i64
  %i.dg = shl nuw nsw i64 %i.df, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.dg, i1 false), !tbaa !116
  br label %.preheader.i86

.preheader.i86:                                   ; preds = %.lr.ph.preheader.i93, %bb.m
  br i1 %i.de, label %.lr.ph12.preheader.i87, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94

.lr.ph12.preheader.i87:                           ; preds = %.preheader.i86
  %wide.trip.count.i88 = zext nneg i32 %4 to i64  ; 2 uses
  %xtraiter167 = and i64 %wide.trip.count.i88, 3  ; 3 uses
  %i.dh = add i32 %4, -1
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %.lr.ph12.i89.epil.preheader, label %.lr.ph12.preheader.i87.new

.lr.ph12.preheader.i87.new:                       ; preds = %.lr.ph12.preheader.i87
  %unroll_iter171 = and i64 %wide.trip.count.i88, 2147483644
  br label %.lr.ph12.i89

.lr.ph12.i89:                                     ; preds = %.lr.ph12.i89, %.lr.ph12.preheader.i87.new
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph12.preheader.i87.new ], [ %indvars.iv.next.i91.3, %.lr.ph12.i89 ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph12.preheader.i87.new ], [ %niter172.next.3, %.lr.ph12.i89 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !116
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !116
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !116
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !116
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !116
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !116
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !116
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !116
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !116
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !116
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !116
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !116
  %indvars.iv.next.i91.3 = add nuw nsw i64 %indvars.iv.i90, 4 ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94.loopexit.unr-lcssa, label %.lr.ph12.i89, !llvm.loop !34

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94.loopexit.unr-lcssa: ; preds = %.lr.ph12.i89
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94, label %.lr.ph12.i89.epil.preheader

.lr.ph12.i89.epil.preheader:                      ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94.loopexit.unr-lcssa, %.lr.ph12.preheader.i87
  %indvars.iv.i90.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i87 ], [ %indvars.iv.next.i91.3, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph12.i89.epil

.lr.ph12.i89.epil:                                ; preds = %.lr.ph12.i89.epil, %.lr.ph12.i89.epil.preheader
  %indvars.iv.i90.epil = phi i64 [ %indvars.iv.i90.epil.init, %.lr.ph12.i89.epil.preheader ], [ %indvars.iv.next.i91.epil, %.lr.ph12.i89.epil ] ; 2 uses
  %epil.iter168 = phi i64 [ 0, %.lr.ph12.i89.epil.preheader ], [ %epil.iter168.next, %.lr.ph12.i89.epil ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i90.epil
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !116
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %2, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !116
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !116
  %indvars.iv.next.i91.epil = add nuw nsw i64 %indvars.iv.i90.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94, label %.lr.ph12.i89.epil, !llvm.loop !946

_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94: ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94.loopexit.unr-lcssa, %.lr.ph12.i89.epil, %.preheader.i86, %._crit_edge
  br i1 %i.an, label %.lr.ph28.preheader.i, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96

.lr.ph28.preheader.i:                             ; preds = %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94
  %wide.trip.count34.i = zext nneg i32 %5 to i64  ; 2 uses
  %xtraiter173 = and i64 %wide.trip.count34.i, 3  ; 3 uses
  %i.eq = icmp ult i32 %5, 4
  br i1 %i.eq, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.preheader.i.new

.lr.ph28.preheader.i.new:                         ; preds = %.lr.ph28.preheader.i
  %unroll_iter177 = and i64 %wide.trip.count34.i, 2147483644
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i, %.lr.ph28.preheader.i.new
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph28.i ] ; 6 uses
  %.027.i = phi i32 [ 0, %.lr.ph28.preheader.i.new ], [ %i.ff, %.lr.ph28.i ]
  %niter178 = phi i64 [ 0, %.lr.ph28.preheader.i.new ], [ %niter178.next.3, %.lr.ph28.i ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !116
  %i.et = add nsw i32 %i.es, %.027.i              ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !116
  %indvars.iv.next32.i = or disjoint i64 %indvars.iv31.i, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !116
  %i.ex = add nsw i32 %i.ew, %i.et                ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !116
  %indvars.iv.next32.i.1 = or disjoint i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.1
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !116
  %i.fb = add nsw i32 %i.fa, %i.ex                ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.1
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !116
  %indvars.iv.next32.i.2 = or disjoint i64 %indvars.iv31.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next32.i.2
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !116
  %i.ff = add nsw i32 %i.fe, %i.fb                ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next32.i.2
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !116
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa, label %.lr.ph28.i, !llvm.loop !30

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa: ; preds = %.lr.ph28.i
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa, %.lr.ph28.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next32.i.3, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa ]
  %.027.i.epil.init = phi i32 [ 0, %.lr.ph28.preheader.i ], [ %i.ff, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph28.i.epil

.lr.ph28.i.epil:                                  ; preds = %.lr.ph28.i.epil, %.lr.ph28.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph28.i.epil ] ; 3 uses
  %.027.i.epil = phi i32 [ %.027.i.epil.init, %.lr.ph28.i.epil.preheader ], [ %i.fj, %.lr.ph28.i.epil ]
  %epil.iter174 = phi i64 [ 0, %.lr.ph28.i.epil.preheader ], [ %epil.iter174.next, %.lr.ph28.i.epil ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i.epil
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !116
  %i.fj = add nsw i32 %i.fi, %.027.i.epil         ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31.i.epil
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !116
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96, label %.lr.ph28.i.epil, !llvm.loop !947

_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96: ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96.loopexit.unr-lcssa, %.lr.ph28.i.epil, %_ZN14saisxx_private9getCountsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES7_iEEvT_T0_T1_SA_.exit94
  br i1 %i.de, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96
  %i.fl = load i32, ptr %3, align 4, !tbaa !116
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fm
  %i.fo = ptrtoint ptr %1 to i64
  %i.fp = zext nneg i32 %i.bj to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph141, %bb.v
  %indvars.iv144 = phi i64 [ %i.fp, %.lr.ph141 ], [ %indvars.iv.next145, %bb.v ] ; 4 uses
  %.061139 = phi i32 [ -1, %.lr.ph141 ], [ %.162, %bb.v ] ; 2 uses
  %.3138 = phi i32 [ 0, %.lr.ph141 ], [ %.5, %bb.v ] ; 5 uses
  %.sroa.098.3137 = phi ptr [ %i.fn, %.lr.ph141 ], [ %.sroa.098.5, %bb.v ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv144 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !116 ; 6 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ft = add nsw i32 %i.fr, -1                   ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !116 ; 4 uses
  store i32 %i.fw, ptr %i.fq, align 4, !tbaa !116
  %.not75 = icmp eq i32 %i.fw, %.3138
  br i1 %.not75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fx = ptrtoint ptr %.sroa.098.3137 to i64
  %i.fy = sub i64 %i.fx, %i.fo
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = sext i32 %.3138 to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gb
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !116
  %i.gd = sext i32 %i.fw to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !116
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.098.4 = phi ptr [ %.sroa.098.3137, %bb.o ], [ %i.gh, %bb.p ]
  %.4 = phi i32 [ %.3138, %bb.o ], [ %i.fw, %bb.p ] ; 2 uses
  %.not76 = icmp eq i32 %i.fr, 1
  br i1 %.not76, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = zext nneg i32 %i.fr to i64
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !116 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, %.4
  %i.gn = xor i32 %i.gl, -1
  %spec.select133 = select i1 %i.gm, i32 %i.gn, i32 %i.ft
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.go = phi i32 [ 0, %bb.q ], [ %spec.select133, %bb.r ]
  %i.gp = getelementptr inbounds i8, ptr %.sroa.098.4, i64 -4 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.fr, 0
  %i.gq = trunc nuw nsw i64 %indvars.iv144 to i32
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gr = xor i32 %i.fr, -1
  store i32 %i.gr, ptr %i.fq, align 4, !tbaa !116
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  %.sroa.098.5 = phi ptr [ %i.gp, %bb.s ], [ %.sroa.098.3137, %bb.t ], [ %.sroa.098.3137, %bb.u ]
  %.5 = phi i32 [ %.4, %bb.s ], [ %.3138, %bb.t ], [ %.3138, %bb.u ]
  %.162 = phi i32 [ %.061139, %bb.s ], [ %i.gq, %bb.t ], [ %.061139, %bb.u ] ; 2 uses
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, -1
  %i.gs = icmp sgt i64 %indvars.iv144, 0
  br i1 %i.gs, label %bb.n, label %._crit_edge142, !llvm.loop !948

._crit_edge142:                                   ; preds = %bb.v, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96
  %.061.lcssa = phi i32 [ -1, %_ZN14saisxx_private10getBucketsIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEvT_S8_T0_b.exit96 ], [ %.162, %bb.v ]
  ret i32 %.061.lcssa
}

declare void @_ZN13sentencepiece10ThreadPoolC1Em(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !109  ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !130

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !211
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !109
  store float %i.s, ptr %i.d, align 4, !tbaa !109
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !211
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !130

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !109
  store float %i.ac, ptr %i.ab, align 4, !tbaa !109
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x float> %broadcast.splatinsert129, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x float> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !109
  store <4 x float> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !109
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !949

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !950

bb.l:                                             ; preds = %bb.c
end_hunk_9
