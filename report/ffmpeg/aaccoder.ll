Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aaccoder?download=true
inline.NumInlined: 68
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 46
begin_hunk_0_@search_for_quantizers_twoloop:bb.a
  %.idx.i.us = shl nuw nsw i64 %indvars.iv26.i.us, 9
  %invariant.gep.i.us = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.idx.i.us ; 5 uses
  br i1 %i.lh, label %.epil.preheader2946, label %.preheader.us.i.us.new

.preheader.us.i.us.new:                           ; preds = %.preheader.us.i.us, %.preheader.us.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ] ; 5 uses
  %.117.us.i.us = phi float [ %.1..us.i.us.3, %.preheader.us.i.us.new ], [ %.01519.us.i.us, %.preheader.us.i.us ] ; 2 uses
  %niter2952 = phi i64 [ %niter2952.next.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ]
  %gep.i.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %i.li = load float, ptr %gep.i.us, align 4, !tbaa !80 ; 2 uses
  %i.lj = fcmp nsz ogt float %.117.us.i.us, %i.li
  %.1..us.i.us = select nsz i1 %i.lj, float %.117.us.i.us, float %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.1 = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.ll = load float, ptr %gep.i.us.1, align 4, !tbaa !80 ; 2 uses
  %i.lm = fcmp nsz ogt float %.1..us.i.us, %i.ll
  %.1..us.i.us.1 = select nsz i1 %i.lm, float %.1..us.i.us, float %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.2 = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lo = load float, ptr %gep.i.us.2, align 4, !tbaa !80 ; 2 uses
  %i.lp = fcmp nsz ogt float %.1..us.i.us.1, %i.lo
  %.1..us.i.us.2 = select nsz i1 %i.lp, float %.1..us.i.us.1, float %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.3 = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  %i.lr = load float, ptr %gep.i.us.3, align 4, !tbaa !80 ; 2 uses
  %i.ls = fcmp nsz ogt float %.1..us.i.us.2, %i.lr
  %.1..us.i.us.3 = select nsz i1 %i.ls, float %.1..us.i.us.2, float %i.lr ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter2952.next.3 = add i64 %niter2952, 4       ; 2 uses
  %niter2952.ncmp.3 = icmp eq i64 %niter2952.next.3, %unroll_iter2951
  br i1 %niter2952.ncmp.3, label %._crit_edge.us.i.us.unr-lcssa, label %.preheader.us.i.us.new, !llvm.loop !0

._crit_edge.us.i.us.unr-lcssa:                    ; preds = %.preheader.us.i.us.new
  br i1 %lcmp.mod2948.not, label %._crit_edge.us.i.us, label %.epil.preheader2946

.epil.preheader2946:                              ; preds = %._crit_edge.us.i.us.unr-lcssa, %.preheader.us.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader.us.i.us ], [ %indvars.iv.next.i.us.3, %._crit_edge.us.i.us.unr-lcssa ]
  %.117.us.i.us.epil.init = phi float [ %.01519.us.i.us, %.preheader.us.i.us ], [ %.1..us.i.us.3, %._crit_edge.us.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2950)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader2946
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.epil.preheader2946 ], [ %indvars.iv.next.i.us.epil, %bb.al ] ; 2 uses
  %.117.us.i.us.epil = phi float [ %.117.us.i.us.epil.init, %.epil.preheader2946 ], [ %.1..us.i.us.epil, %bb.al ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader2946 ], [ %epil.iter.next, %bb.al ]
  %gep.i.us.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil
  %i.lt = load float, ptr %gep.i.us.epil, align 4, !tbaa !80 ; 2 uses
  %i.lu = fcmp nsz ogt float %.117.us.i.us.epil, %i.lt
  %.1..us.i.us.epil = select nsz i1 %i.lu, float %.117.us.i.us.epil, float %i.lt ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2947
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.us, label %bb.al, !llvm.loop !115

._crit_edge.us.i.us:                              ; preds = %bb.al, %._crit_edge.us.i.us.unr-lcssa
  %.1..us.i.us.lcssa = phi float [ %.1..us.i.us.3, %._crit_edge.us.i.us.unr-lcssa ], [ %.1..us.i.us.epil, %bb.al ] ; 4 uses
  %indvars.iv.next27.i.us = add nuw nsw i64 %indvars.iv26.i.us, 1 ; 2 uses
  %exitcond30.not.i.us = icmp eq i64 %indvars.iv.next27.i.us, %wide.trip.count29.i.us
  br i1 %exitcond30.not.i.us, label %find_max_val.exit.us, label %.preheader.us.i.us, !llvm.loop !1

find_max_val.exit.us:                             ; preds = %._crit_edge.us.i.us
  %gep2756 = getelementptr [4 x i8], ptr %invariant.gep2755, i64 %indvars.iv2376
  store float %.1..us.i.us.lcssa, ptr %gep2756, align 4, !tbaa !80
  %i.lv = fcmp nsz ogt float %.1..us.i.us.lcssa, 0.000000e+00
  br i1 %i.lv, label %.lr.ph.us2083.preheader, label %.loopexit1991.us

.lr.ph.us2083.preheader:                          ; preds = %find_max_val.exit.us
  %i.lw = tail call nsz float @llvm.log2.f32(float %.1..us.i.us.lcssa)
  %i.lx = tail call nsz float @llvm.fmuladd.f32(float %i.lw, float 4.000000e+00, float -6.900000e+01)
  %i.ly = fadd nsz float %i.lx, 1.400000e+02
  %i.lz = fadd nsz float %i.ly, -3.600000e+01
  %i.ma = fptosi float %i.lz to i32
  %i.mb = tail call i32 @llvm.smax.i32(i32 %i.ma, i32 0)
  %i.mc = tail call i32 @llvm.umin.i32(i32 %i.mb, i32 255) ; 5 uses
  %invariant.gep2753 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv2376 ; 5 uses
  br i1 %i.kz, label %.lr.ph.us2083.epil.preheader, label %.lr.ph.us2083

.lr.ph.us2083:                                    ; preds = %.lr.ph.us2083.preheader, %.lr.ph.us2083
  %indvars.iv2371 = phi i64 [ %indvars.iv.next2372.3, %.lr.ph.us2083 ], [ 0, %.lr.ph.us2083.preheader ] ; 5 uses
  %niter2958 = phi i64 [ %niter2958.next.3, %.lr.ph.us2083 ], [ 0, %.lr.ph.us2083.preheader ]
  %i.md = add nuw nsw i64 %indvars.iv2371, %i.kt
  %.idx2619 = shl nuw nsw i64 %i.md, 6
  %gep2754 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619
  store i32 %i.mc, ptr %gep2754, align 4, !tbaa !82
  %indvars.iv.next2372 = or disjoint i64 %indvars.iv2371, 1
  %i.me = add nuw nsw i64 %indvars.iv.next2372, %i.kt
  %.idx2619.1 = shl nuw nsw i64 %i.me, 6
  %gep2754.1 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.1
  store i32 %i.mc, ptr %gep2754.1, align 4, !tbaa !82
  %indvars.iv.next2372.1 = or disjoint i64 %indvars.iv2371, 2
  %i.mf = add nuw nsw i64 %indvars.iv.next2372.1, %i.kt
  %.idx2619.2 = shl nuw nsw i64 %i.mf, 6
  %gep2754.2 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.2
  store i32 %i.mc, ptr %gep2754.2, align 4, !tbaa !82
  %indvars.iv.next2372.2 = or disjoint i64 %indvars.iv2371, 3
  %i.mg = add nuw nsw i64 %indvars.iv.next2372.2, %i.kt
  %.idx2619.3 = shl nuw nsw i64 %i.mg, 6
  %gep2754.3 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.3
  store i32 %i.mc, ptr %gep2754.3, align 4, !tbaa !82
  %indvars.iv.next2372.3 = add nuw nsw i64 %indvars.iv2371, 4 ; 2 uses
  %niter2958.next.3 = add i64 %niter2958, 4       ; 2 uses
  %niter2958.ncmp.3 = icmp eq i64 %niter2958.next.3, %unroll_iter2957
  br i1 %niter2958.ncmp.3, label %.loopexit1991.us.loopexit.unr-lcssa, label %.lr.ph.us2083, !llvm.loop !116

find_max_val.exit.thread.us2084:                  ; preds = %.lr.ph2076.split.us2080
  %gep2758 = getelementptr [4 x i8], ptr %invariant.gep2757, i64 %indvars.iv2376
  store float 0.000000e+00, ptr %gep2758, align 4, !tbaa !80
  br label %.loopexit1991.us

.loopexit1991.us.loopexit.unr-lcssa:              ; preds = %.lr.ph.us2083
  br i1 %lcmp.mod2955.not, label %.loopexit1991.us, label %.lr.ph.us2083.epil.preheader

.lr.ph.us2083.epil.preheader:                     ; preds = %.loopexit1991.us.loopexit.unr-lcssa, %.lr.ph.us2083.preheader
  %indvars.iv2371.epil.init = phi i64 [ 0, %.lr.ph.us2083.preheader ], [ %indvars.iv.next2372.3, %.loopexit1991.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2956)
  br label %.lr.ph.us2083.epil

.lr.ph.us2083.epil:                               ; preds = %.lr.ph.us2083.epil, %.lr.ph.us2083.epil.preheader
  %indvars.iv2371.epil = phi i64 [ %indvars.iv2371.epil.init, %.lr.ph.us2083.epil.preheader ], [ %indvars.iv.next2372.epil, %.lr.ph.us2083.epil ] ; 2 uses
  %epil.iter2954 = phi i64 [ 0, %.lr.ph.us2083.epil.preheader ], [ %epil.iter2954.next, %.lr.ph.us2083.epil ]
  %i.mh = add nuw nsw i64 %indvars.iv2371.epil, %i.kt
  %.idx2619.epil = shl nuw nsw i64 %i.mh, 6
  %gep2754.epil = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.epil
  store i32 %i.mc, ptr %gep2754.epil, align 4, !tbaa !82
  %indvars.iv.next2372.epil = add nuw nsw i64 %indvars.iv2371.epil, 1
  %epil.iter2954.next = add i64 %epil.iter2954, 1 ; 2 uses
  %epil.iter2954.cmp.not = icmp eq i64 %epil.iter2954.next, %xtraiter2953
  br i1 %epil.iter2954.cmp.not, label %.loopexit1991.us, label %.lr.ph.us2083.epil, !llvm.loop !117

.loopexit1991.us:                                 ; preds = %.loopexit1991.us.loopexit.unr-lcssa, %.lr.ph.us2083.epil, %find_max_val.exit.thread.us2084, %find_max_val.exit.us
  %i.mi = add nuw nsw i32 %.12075.us2081, %i.lg
  %indvars.iv.next2377 = add nuw nsw i64 %indvars.iv2376, 1 ; 2 uses
  %exitcond2380.not = icmp eq i64 %indvars.iv.next2377, %i.kr
  br i1 %exitcond2380.not, label %._crit_edge.us2087, label %.lr.ph2076.split.us2080, !llvm.loop !118

._crit_edge.us2087:                               ; preds = %.loopexit1991.us, %find_max_val.exit.thread.us.us.preheader
  %i.mj = zext i8 %.fr to i32
  %i.mk = add nuw nsw i32 %.313492077.us, %i.mj   ; 2 uses
  %i.ml = icmp slt i32 %i.mk, %i.kj
  br i1 %i.ml, label %.lr.ph2076.us, label %.lr.ph2094, !llvm.loop !119

.lr.ph2094:                                       ; preds = %._crit_edge.us2087, %.lr.ph2078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.h, ptr noundef nonnull align 16 dereferenceable(512) %i.g, i64 512, i1 false)
  %.not2289 = icmp eq i32 %i.kj, 1
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !71 ; 2 uses
  %i.mp = icmp sgt i32 %i.mo, 0
  %i.mq = sitofp nsz i32 %i.dp to float
  %i.mr = fmul nnan nsz float %i.mq, 7.500000e-01
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count2387 = zext nneg i32 %i.mo to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph2094, %._crit_edge
  %.413502092 = phi i32 [ 0, %.lr.ph2094 ], [ %i.vy, %._crit_edge ] ; 6 uses
  br i1 %.not2289, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mt = zext nneg i32 %.413502092 to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !73
  %i.mw = uitofp i8 %i.mv to float
  %i.mx = fdiv nsz float 8.000000e+00, %i.mw
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.my = phi nsz float [ %i.mx, %bb.an ], [ 1.000000e+00, %bb.am ] ; 2 uses
  br i1 %i.mp, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.ao
  %.pre2491 = zext nneg i32 %.413502092 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.ao
  %i.mz = shl nsw i32 %.413502092, 7
  %i.na = zext nneg i32 %.413502092 to i64        ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.na
  %i.nc = shl nsw i32 %.413502092, 4
  %i.nd = load ptr, ptr %i.ms, align 16, !tbaa !72 ; 3 uses
  %i.ne = zext nneg i32 %i.nc to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.na
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.av
  %indvars.iv2384 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next2385, %bb.av ] ; 5 uses
  %.22091 = phi i32 [ %i.mz, %.lr.ph ], [ %i.vu, %bb.av ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv2384
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !73  ; 2 uses
  %i.ni = icmp sgt i8 %i.nh, 0
  br i1 %i.ni, label %bb.aq, label %._crit_edge2452

._crit_edge2452:                                  ; preds = %bb.ap
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.nd, i64 %indvars.iv2384
  %.pre2453 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !73
  %.pre2488 = zext i8 %.pre2453 to i32
  br label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.nj = zext nneg i8 %i.nh to i32
  %i.nk = uitofp nneg i32 %.22091 to float
  %i.nl = fdiv nsz float %i.nk, %i.mr             ; 2 uses
  %i.nm = fcmp nsz ogt float %i.nl, 1.000000e+00
  %i.nn = select nsz i1 %i.nm, float %i.nl, float 1.000000e+00 ; 2 uses
  %i.no = fcmp nsz ogt float %i.nn, 2.000000e+00
  %..i1781 = select nsz i1 %i.no, float 2.000000e+00, float %i.nn ; 2 uses
  %i.np = fmul nsz float %..i1781, %..i1781
  %i.nq = load i8, ptr %i.nb, align 1, !tbaa !73  ; 7 uses
  %i.nr = zext i8 %i.nq to i32                    ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nd, i64 %indvars.iv2384
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !73  ; 10 uses
  %i.nu = zext i8 %i.nt to i32                    ; 2 uses
  %i.nv = add nuw nsw i64 %indvars.iv2384, %i.ne  ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nv ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !80 ; 2 uses
  %i.ny = load i8, ptr %i.nf, align 1, !tbaa !73
  %i.nz = zext i8 %i.ny to i32
  %i.oa = mul nuw nsw i32 %i.nz, %i.nj
  %i.ob = uitofp nneg i32 %i.oa to float          ; 2 uses
  %i.oc = fdiv nsz float %i.nx, %i.ob             ; 6 uses
  %i.od = zext nneg i32 %.22091 to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.od ; 2 uses
  %i.of = fmul nsz float %i.np, 1.500000e+00      ; 2 uses
  %i.og = uitofp i8 %i.nt to float
  %i.oh = fdiv nsz float 1.000000e+00, %i.og      ; 6 uses
  %i.oi = add nsw i32 %i.nu, -1
  %i.oj = sitofp nsz i32 %i.oi to float
  %i.ok = fdiv nnan nsz float 1.000000e+00, %i.oj ; 4 uses
  %.not.i1784 = icmp eq i8 %i.nq, 0               ; 2 uses
  br i1 %.not.i1784, label %find_form_factor.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.aq
  %.not142.i = icmp eq i8 %i.nt, 0
  %i.ol = fcmp nsz oeq float %i.of, 2.000000e+00
  br i1 %.not142.i, label %.preheader.lr.ph.split.i, label %.preheader.us.preheader.i1785

.preheader.us.preheader.i1785:                    ; preds = %.preheader.lr.ph.i
  %wide.trip.count173.i = zext i8 %i.nq to i64
  %wide.trip.count.i1786 = zext i8 %i.nt to i64   ; 4 uses
  %xtraiter2960 = and i64 %wide.trip.count.i1786, 1
  %i.om = icmp eq i8 %i.nt, 1
  %unroll_iter2965 = and i64 %wide.trip.count.i1786, 254
  %lcmp.mod2962.not = icmp eq i64 %xtraiter2960, 0
  %lcmp.mod2964 = trunc i8 %i.nt to i1
  br label %.preheader.us.i1787

.preheader.us.i1787:                              ; preds = %bb.at, %.preheader.us.preheader.i1785
  %indvars.iv170.i = phi i64 [ 0, %.preheader.us.preheader.i1785 ], [ %indvars.iv.next171.i, %bb.at ] ; 2 uses
  %.077104.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i1785 ], [ %.178.us.i, %bb.at ] ; 2 uses
  %.079103.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i1785 ], [ %.180.us.i, %bb.at ] ; 2 uses
  %invariant.gep201.i.idx = shl nuw nsw i64 %indvars.iv170.i, 9
  %invariant.gep201.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 %invariant.gep201.i.idx ; 5 uses
  br i1 %i.ol, label %.lr.ph.split.us.us.i, label %.lr.ph.split.us110.i

.lr.ph.split.us110.i:                             ; preds = %.preheader.us.i1787, %bb.as
  %indvars.iv.i1788 = phi i64 [ %indvars.iv.next.i1790, %bb.as ], [ 0, %.preheader.us.i1787 ] ; 2 uses
  %.06990.us111.i = phi float [ %i.pb, %bb.as ], [ 0.000000e+00, %.preheader.us.i1787 ]
  %.07089.us112.i = phi float [ %i.or, %bb.as ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %i.on = phi <2 x float> [ %i.ov, %bb.as ], [ zeroinitializer, %.preheader.us.i1787 ]
  %gep.i1789 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv.i1788
  %i.oo = load float, ptr %gep.i1789, align 4, !tbaa !80 ; 3 uses
  %i.op = tail call nsz float @llvm.fabs.f32(float %i.oo) ; 3 uses
  %i.oq = fcmp nsz ogt float %.07089.us112.i, %i.op
  %i.or = select nsz i1 %i.oq, float %.07089.us112.i, float %i.op ; 2 uses
  %i.os = fmul nsz float %i.oo, %i.oo             ; 3 uses
  %i.ot = insertelement <2 x float> poison, float %i.op, i64 0
  %i.ou = insertelement <2 x float> %i.ot, float %i.os, i64 1
  %i.ov = fadd nsz <2 x float> %i.on, %i.ou       ; 2 uses
  %i.ow = fcmp nsz ult float %i.os, %i.oc
  br i1 %i.ow, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split.us110.i
  %i.ox = fdiv nsz float %i.os, %i.oc
  %i.oy = tail call nsz float @llvm.log.f32(float %i.ox)
  %i.oz = fmul nsz float %i.of, %i.oy
  %i.pa = tail call nsz float @llvm.exp.f32(float %i.oz)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split.us110.i
  %.sink.i = phi float [ %i.pa, %bb.ar ], [ 1.000000e+00, %.lr.ph.split.us110.i ]
  %i.pb = fadd nsz float %.06990.us111.i, %.sink.i ; 2 uses
  %indvars.iv.next.i1790 = add nuw nsw i64 %indvars.iv.i1788, 1 ; 2 uses
  %exitcond.not.i1791 = icmp eq i64 %indvars.iv.next.i1790, %wide.trip.count.i1786
  br i1 %exitcond.not.i1791, label %._crit_edge.us.i1792, label %.lr.ph.split.us110.i, !llvm.loop !120

.lr.ph.split.us.us.i:                             ; preds = %.preheader.us.i1787, %.lr.ph.split.us.us.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %.lr.ph.split.us.us.i ], [ 0, %.preheader.us.i1787 ] ; 2 uses
  %.06990.us.us.i = phi float [ %.1.us.us.i, %.lr.ph.split.us.us.i ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %.07089.us.us.i = phi float [ %i.pg, %.lr.ph.split.us.us.i ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %i.pc = phi <2 x float> [ %i.pk, %.lr.ph.split.us.us.i ], [ zeroinitializer, %.preheader.us.i1787 ]
  %gep202.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv160.i
  %i.pd = load float, ptr %gep202.i, align 4, !tbaa !80 ; 3 uses
  %i.pe = tail call nsz float @llvm.fabs.f32(float %i.pd) ; 3 uses
  %i.pf = fcmp nsz ogt float %.07089.us.us.i, %i.pe
  %i.pg = select nsz i1 %i.pf, float %.07089.us.us.i, float %i.pe ; 2 uses
  %i.ph = fmul nsz float %i.pd, %i.pd             ; 3 uses
  %i.pi = insertelement <2 x float> poison, float %i.pe, i64 0
  %i.pj = insertelement <2 x float> %i.pi, float %i.ph, i64 1
  %i.pk = fadd nsz <2 x float> %i.pc, %i.pj       ; 2 uses
  %i.pl = fcmp nsz ult float %i.ph, %i.oc
  %i.pm = fadd nsz float %.06990.us.us.i, 1.000000e+00
  %i.pn = fdiv nsz float %i.ph, %i.oc             ; 2 uses
  %i.po = tail call nsz float @llvm.fmuladd.f32(float %i.pn, float %i.pn, float %.06990.us.us.i)
  %.1.us.us.i = select nsz i1 %i.pl, float %i.po, float %i.pm ; 2 uses
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count.i1786
  br i1 %exitcond164.not.i, label %._crit_edge.us.i1792, label %.lr.ph.split.us.us.i, !llvm.loop !120

._crit_edge.us.i1792:                             ; preds = %bb.as, %.lr.ph.split.us.us.i
  %.us-phi95.us.i = phi float [ %i.pg, %.lr.ph.split.us.us.i ], [ %i.or, %bb.as ] ; 2 uses
  %.us-phi96.us.i = phi float [ %.1.us.us.i, %.lr.ph.split.us.us.i ], [ %i.pb, %bb.as ] ; 2 uses
  %i.pp = phi <2 x float> [ %i.pk, %.lr.ph.split.us.us.i ], [ %i.ov, %bb.as ] ; 2 uses
  %i.pq = extractelement <2 x float> %i.pp, i64 1 ; 2 uses
  %i.pr = fcmp nsz ogt float %i.pq, %i.oc
  br i1 %i.pr, label %.lr.ph100.us.i, label %bb.at

.lr.ph100.us.i.new:                               ; preds = %.lr.ph100.us.i, %.lr.ph100.us.i.new
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i.1, %.lr.ph100.us.i.new ], [ 0, %.lr.ph100.us.i ] ; 3 uses
  %.07198.us.i = phi float [ %i.qa, %.lr.ph100.us.i.new ], [ 0.000000e+00, %.lr.ph100.us.i ]
  %niter2966 = phi i64 [ %niter2966.next.1, %.lr.ph100.us.i.new ], [ 0, %.lr.ph100.us.i ]
  %gep204.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i
  %i.ps = load float, ptr %gep204.i, align 4, !tbaa !80
  %i.pt = tail call nsz float @llvm.fabs.f32(float %i.ps)
  %i.pu = fsub nsz float %i.pt, %i.qt             ; 2 uses
  %i.pv = tail call nsz float @llvm.fmuladd.f32(float %i.pu, float %i.pu, float %.07198.us.i)
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i
  %gep204.i.1 = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.px = load float, ptr %gep204.i.1, align 4, !tbaa !80
  %i.py = tail call nsz float @llvm.fabs.f32(float %i.px)
  %i.pz = fsub nsz float %i.py, %i.qt             ; 2 uses
  %i.qa = tail call nsz float @llvm.fmuladd.f32(float %i.pz, float %i.pz, float %i.pv) ; 3 uses
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %niter2966.next.1 = add i64 %niter2966, 2       ; 2 uses
  %niter2966.ncmp.1 = icmp eq i64 %niter2966.next.1, %unroll_iter2965
  br i1 %niter2966.ncmp.1, label %._crit_edge101.us.i.unr-lcssa, label %.lr.ph100.us.i.new, !llvm.loop !121

._crit_edge101.us.i.unr-lcssa:                    ; preds = %.lr.ph100.us.i.new
  br i1 %lcmp.mod2962.not, label %._crit_edge101.us.i, label %.epil.preheader2959

.epil.preheader2959:                              ; preds = %._crit_edge101.us.i.unr-lcssa, %.lr.ph100.us.i
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.lr.ph100.us.i ], [ %indvars.iv.next166.i.1, %._crit_edge101.us.i.unr-lcssa ]
  %.07198.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph100.us.i ], [ %i.qa, %._crit_edge101.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2964)
  %gep204.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i.epil.init
  %i.qb = load float, ptr %gep204.i.epil, align 4, !tbaa !80
  %i.qc = tail call nsz float @llvm.fabs.f32(float %i.qb)
  %i.qd = fsub nsz float %i.qc, %i.qt             ; 2 uses
  %i.qe = tail call nsz float @llvm.fmuladd.f32(float %i.qd, float %i.qd, float %.07198.us.i.epil.init)
  br label %._crit_edge101.us.i

._crit_edge101.us.i:                              ; preds = %._crit_edge101.us.i.unr-lcssa, %.epil.preheader2959
  %.lcssa2932 = phi float [ %i.qa, %._crit_edge101.us.i.unr-lcssa ], [ %i.qe, %.epil.preheader2959 ]
  %i.qf = fmul nsz float %i.ok, %.lcssa2932
  %i.qg = tail call nsz float @llvm.sqrt.f32(float %i.qf)
  %i.qh = fmul nsz float %i.oh, %i.pq             ; 2 uses
  %i.qi = tail call nsz float @llvm.fmuladd.f32(float %i.qg, float 4.000000e+00, float %i.qt) ; 2 uses
  %i.qj = fcmp nsz ogt float %i.qi, %.us-phi95.us.i
  %.070..us.i = select nsz i1 %i.qj, float %.us-phi95.us.i, float %i.qi
  %i.qk = fdiv nsz float %i.qt, %.070..us.i
  %i.ql = tail call nsz float @llvm.sqrt.f32(float %i.qk)
  %i.qm = fmul nsz float %i.qh, %i.ql
  %i.qn = fcmp nsz olt float %.us-phi96.us.i, 5.000000e-01
  %i.qo = select nsz i1 %i.qn, float 5.000000e-01, float %.us-phi96.us.i
  %i.qp = fdiv nsz float %i.qm, %i.qo
  %i.qq = fadd nsz float %.079103.us.i, %i.qp
  %i.qr = fadd nsz float %.077104.us.i, %i.qh
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge101.us.i, %._crit_edge.us.i1792
  %.180.us.i = phi nsz float [ %i.qq, %._crit_edge101.us.i ], [ %.079103.us.i, %._crit_edge.us.i1792 ] ; 2 uses
  %.178.us.i = phi nsz float [ %i.qr, %._crit_edge101.us.i ], [ %.077104.us.i, %._crit_edge.us.i1792 ] ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count173.i
  br i1 %exitcond174.not.i, label %find_form_factor.exit, label %.preheader.us.i1787, !llvm.loop !122

.lr.ph100.us.i:                                   ; preds = %._crit_edge.us.i1792
  %i.qs = extractelement <2 x float> %i.pp, i64 0
  %i.qt = fmul nsz float %i.oh, %i.qs             ; 5 uses
  br i1 %i.om, label %.epil.preheader2959, label %.lr.ph100.us.i.new

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.qu = fcmp nsz olt float %i.oc, 0.000000e+00
  br i1 %i.qu, label %.preheader.lr.ph.split.split.us.split.i, label %find_form_factor.exit

.preheader.lr.ph.split.split.us.split.i:          ; preds = %.preheader.lr.ph.split.i
  %i.qv = fmul nsz float %i.oh, 0.000000e+00      ; 4 uses
  %i.qw = fmul nsz float %i.ok, 0.000000e+00
  %i.qx = tail call nsz float @llvm.sqrt.f32(float %i.qw)
  %i.qy = tail call nsz float @llvm.fmuladd.f32(float %i.qx, float 4.000000e+00, float %i.qv) ; 2 uses
  %i.qz = fcmp nsz ogt float %i.qy, 0.000000e+00
  %.070..us134.i = select nsz i1 %i.qz, float 0.000000e+00, float %i.qy
  %i.ra = fdiv nsz float %i.qv, %.070..us134.i
  %i.rb = tail call nsz float @llvm.sqrt.f32(float %i.ra)
  %i.rc = fmul nsz float %i.qv, %i.rb
  %i.rd = fmul ninf nsz float %i.rc, 2.000000e+00
  %i.re = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.rf = insertelement <2 x float> %i.re, float %i.rd, i64 1 ; 9 uses
  %xtraiter2967 = and i32 %i.nr, 7                ; 3 uses
  %i.rg = icmp ult i8 %i.nq, 8
  br i1 %i.rg, label %.preheader.us124.i.epil.preheader, label %.preheader.lr.ph.split.split.us.split.i.new

end_hunk_0
begin_hunk_1_@search_for_quantizers_twoloop:bb.a
  %.178.us.i1823 = phi nsz float [ %i.ua, %._crit_edge101.us.i1836 ], [ %.077104.us.i1804, %._crit_edge.us.i1817 ] ; 2 uses
  %indvars.iv.next171.i1824 = add nuw nsw i64 %indvars.iv170.i1803, 1 ; 2 uses
  %exitcond174.not.i1825 = icmp eq i64 %indvars.iv.next171.i1824, %wide.trip.count173.i1798
  br i1 %exitcond174.not.i1825, label %find_form_factor.exit1846, label %.preheader.us.i1802, !llvm.loop !122

.lr.ph100.us.i1829:                               ; preds = %._crit_edge.us.i1817
  %i.ub = fmul nsz float %i.oh, %i.st             ; 5 uses
  br i1 %i.so, label %.epil.preheader2975, label %.lr.ph100.us.i1829.new

.preheader.lr.ph.split.i1838:                     ; preds = %.preheader.lr.ph.i1795
  %i.uc = fcmp nsz olt float %i.sn, 0.000000e+00
  br i1 %i.uc, label %.preheader.lr.ph.split.split.us.split.i1839, label %find_form_factor.exit1846

.preheader.lr.ph.split.split.us.split.i1839:      ; preds = %.preheader.lr.ph.split.i1838
  %i.ud = fmul nsz float %i.oh, 0.000000e+00      ; 4 uses
  %i.ue = fmul nsz float %i.ok, 0.000000e+00
  %i.uf = tail call nsz float @llvm.sqrt.f32(float %i.ue)
  %i.ug = tail call nsz float @llvm.fmuladd.f32(float %i.uf, float 4.000000e+00, float %i.ud) ; 2 uses
  %i.uh = fcmp nsz ogt float %i.ug, 0.000000e+00
  %.070..us134.i1840 = select nsz i1 %i.uh, float 0.000000e+00, float %i.ug
  %i.ui = fdiv nsz float %i.ud, %.070..us134.i1840
  %i.uj = tail call nsz float @llvm.sqrt.f32(float %i.ui)
  %i.uk = fmul nsz float %i.ud, %i.uj
  %i.ul = fmul ninf nsz float %i.uk, 2.000000e+00
  %i.um = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.un = insertelement <2 x float> %i.um, float %i.ul, i64 1 ; 9 uses
  %xtraiter2983 = and i32 %i.nr, 7                ; 3 uses
  %i.uo = icmp ult i8 %i.nq, 8
  br i1 %i.uo, label %.preheader.us124.i1841.epil.preheader, label %.preheader.lr.ph.split.split.us.split.i1839.new

.preheader.lr.ph.split.split.us.split.i1839.new:  ; preds = %.preheader.lr.ph.split.split.us.split.i1839
  %unroll_iter2991 = and i32 %i.nr, 248
  br label %.preheader.us124.i1841

.preheader.us124.i1841:                           ; preds = %.preheader.us124.i1841, %.preheader.lr.ph.split.split.us.split.i1839.new
  %i.up = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.split.us.split.i1839.new ], [ %i.ux, %.preheader.us124.i1841 ]
  %niter2992 = phi i32 [ 0, %.preheader.lr.ph.split.split.us.split.i1839.new ], [ %niter2992.next.7, %.preheader.us124.i1841 ]
  %i.uq = fadd nsz <2 x float> %i.un, %i.up
  %i.ur = fadd nsz <2 x float> %i.un, %i.uq
  %i.us = fadd nsz <2 x float> %i.un, %i.ur
  %i.ut = fadd nsz <2 x float> %i.un, %i.us
  %i.uu = fadd nsz <2 x float> %i.un, %i.ut
  %i.uv = fadd nsz <2 x float> %i.un, %i.uu
  %i.uw = fadd nsz <2 x float> %i.un, %i.uv
  %i.ux = fadd nsz <2 x float> %i.un, %i.uw       ; 4 uses
  %niter2992.next.7 = add i32 %niter2992, 8       ; 2 uses
  %niter2992.ncmp.7 = icmp eq i32 %niter2992.next.7, %unroll_iter2991
  br i1 %niter2992.ncmp.7, label %find_form_factor.exit1846.loopexit.unr-lcssa, label %.preheader.us124.i1841, !llvm.loop !122

find_form_factor.exit1846.loopexit.unr-lcssa:     ; preds = %.preheader.us124.i1841
  %i.uy = extractelement <2 x float> %i.ux, i64 1
  %i.uz = extractelement <2 x float> %i.ux, i64 0
  %lcmp.mod2987.not = icmp eq i32 %xtraiter2983, 0
  br i1 %lcmp.mod2987.not, label %find_form_factor.exit1846, label %.preheader.us124.i1841.epil.preheader

.preheader.us124.i1841.epil.preheader:            ; preds = %find_form_factor.exit1846.loopexit.unr-lcssa, %.preheader.lr.ph.split.split.us.split.i1839
  %.epil.init2986 = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.split.us.split.i1839 ], [ %i.ux, %find_form_factor.exit1846.loopexit.unr-lcssa ]
  %lcmp.mod2990 = icmp ne i32 %xtraiter2983, 0
  tail call void @llvm.assume(i1 %lcmp.mod2990)
  br label %.preheader.us124.i1841.epil

.preheader.us124.i1841.epil:                      ; preds = %.preheader.us124.i1841.epil, %.preheader.us124.i1841.epil.preheader
  %i.va = phi <2 x float> [ %.epil.init2986, %.preheader.us124.i1841.epil.preheader ], [ %i.vb, %.preheader.us124.i1841.epil ]
  %epil.iter2984 = phi i32 [ 0, %.preheader.us124.i1841.epil.preheader ], [ %epil.iter2984.next, %.preheader.us124.i1841.epil ]
  %i.vb = fadd nsz <2 x float> %i.un, %i.va       ; 3 uses
  %epil.iter2984.next = add i32 %epil.iter2984, 1 ; 2 uses
  %epil.iter2984.cmp.not = icmp eq i32 %epil.iter2984.next, %xtraiter2983
  br i1 %epil.iter2984.cmp.not, label %find_form_factor.exit1846.loopexit.epilog-lcssa, label %.preheader.us124.i1841.epil, !llvm.loop !124

find_form_factor.exit1846.loopexit.epilog-lcssa:  ; preds = %.preheader.us124.i1841.epil
  %i.vc = extractelement <2 x float> %i.vb, i64 1
  %i.vd = extractelement <2 x float> %i.vb, i64 0
  br label %find_form_factor.exit1846

find_form_factor.exit1846:                        ; preds = %bb.au, %find_form_factor.exit1846.loopexit.epilog-lcssa, %find_form_factor.exit1846.loopexit.unr-lcssa, %find_form_factor.exit, %.preheader.lr.ph.split.i1838
  %.079.lcssa.i1826 = phi float [ 0.000000e+00, %find_form_factor.exit ], [ 0.000000e+00, %.preheader.lr.ph.split.i1838 ], [ %i.vc, %find_form_factor.exit1846.loopexit.epilog-lcssa ], [ %i.uy, %find_form_factor.exit1846.loopexit.unr-lcssa ], [ %.180.us.i1822, %bb.au ]
  %.077.lcssa.i1827 = phi float [ 0.000000e+00, %find_form_factor.exit ], [ 0.000000e+00, %.preheader.lr.ph.split.i1838 ], [ %i.vd, %find_form_factor.exit1846.loopexit.epilog-lcssa ], [ %i.uz, %find_form_factor.exit1846.loopexit.unr-lcssa ], [ %.178.us.i1823, %bb.au ] ; 2 uses
  %i.ve = fcmp nsz ogt float %.077.lcssa.i1827, 0.000000e+00
  %i.vf = fdiv nsz float %.079.lcssa.i1826, %.077.lcssa.i1827
  %.0.i1828 = select nsz i1 %i.ve, float %i.vf, float 1.000000e+00
  %i.vg = fmul nsz float %i.my, %.0.i1828         ; 2 uses
  %i.vh = tail call nsz float @llvm.sqrt.f32(float %i.vg)
  %.11376 = select nsz i1 %.not1691, float %i.vh, float %i.vg ; 2 uses
  %i.vi = fcmp nsz olt float %.11376, 1.000000e+00
  %i.vj = select nsz i1 %i.vi, float %.11376, float 1.000000e+00 ; 2 uses
  %i.vk = fcmp nsz olt float %i.vj, 1.562500e-02
  %i.vl = select nsz i1 %i.vk, float 1.562500e-02, float %i.vj
  %i.vm = fmul nsz float %.014461908, %i.vl
  %i.vn = fmul nsz float %i.vm, %i.sk             ; 2 uses
  %i.vo = fcmp nsz ogt float %i.vn, 5.000000e-01
  %i.vp = select nsz i1 %i.vo, float %i.vn, float 5.000000e-01 ; 2 uses
  %i.vq = fcmp nsz ogt float %i.vp, 1.000000e+00
  %..i1779 = select nsz i1 %i.vq, float 1.000000e+00, float %i.vp
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.nv ; 2 uses
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !80
  %i.vt = fmul nsz float %i.vs, %..i1779
  store float %i.vt, ptr %i.vr, align 4, !tbaa !80
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge2452, %find_form_factor.exit1846
  %.pre-phi = phi i32 [ %.pre2488, %._crit_edge2452 ], [ %i.nu, %find_form_factor.exit1846 ]
  %i.vu = add nuw nsw i32 %.22091, %.pre-phi
  %indvars.iv.next2385 = add nuw nsw i64 %indvars.iv2384, 1 ; 2 uses
  %exitcond2388.not = icmp eq i64 %indvars.iv.next2385, %wide.trip.count2387
  br i1 %exitcond2388.not, label %._crit_edge, label %bb.ap, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.av, %.._crit_edge_crit_edge
  %.pre-phi2492 = phi i64 [ %.pre2491, %.._crit_edge_crit_edge ], [ %i.na, %bb.av ]
  %i.vv = getelementptr inbounds nuw i8, ptr %i.mm, i64 %.pre-phi2492
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !73
  %i.vx = zext i8 %i.vw to i32
  %i.vy = add nuw nsw i32 %.413502092, %i.vx      ; 2 uses
  %i.vz = icmp slt i32 %i.vy, %i.kj
  br i1 %i.vz, label %bb.am, label %vector.body.preheader, !llvm.loop !126

vector.body.preheader:                            ; preds = %._crit_edge, %._crit_edge2079.thread2659
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x i32> splat (i32 255), ptr %i.c, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wa, align 16, !tbaa !82
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.wc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x i32> splat (i32 255), ptr %i.wb, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wc, align 16, !tbaa !82
  %i.wd = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.we = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x i32> splat (i32 255), ptr %i.wd, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.we, align 16, !tbaa !82
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.wg = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store <4 x i32> splat (i32 255), ptr %i.wf, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wg, align 16, !tbaa !82
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wi = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store <4 x i32> splat (i32 255), ptr %i.wh, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wi, align 16, !tbaa !82
  %i.wj = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store <4 x i32> splat (i32 255), ptr %i.wj, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wk, align 16, !tbaa !82
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.wm = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store <4 x i32> splat (i32 255), ptr %i.wl, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wm, align 16, !tbaa !82
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.wo = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store <4 x i32> splat (i32 255), ptr %i.wn, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wo, align 16, !tbaa !82
  %i.wp = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wq = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store <4 x i32> splat (i32 255), ptr %i.wp, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wq, align 16, !tbaa !82
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ws = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store <4 x i32> splat (i32 255), ptr %i.wr, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.ws, align 16, !tbaa !82
  %i.wt = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.wu = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store <4 x i32> splat (i32 255), ptr %i.wt, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wu, align 16, !tbaa !82
  %i.wv = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.ww = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store <4 x i32> splat (i32 255), ptr %i.wv, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.ww, align 16, !tbaa !82
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.wy = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store <4 x i32> splat (i32 255), ptr %i.wx, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wy, align 16, !tbaa !82
  %i.wz = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.xa = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store <4 x i32> splat (i32 255), ptr %i.wz, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xa, align 16, !tbaa !82
  %i.xb = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.xc = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store <4 x i32> splat (i32 255), ptr %i.xb, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xc, align 16, !tbaa !82
  %i.xd = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.xe = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store <4 x i32> splat (i32 255), ptr %i.xd, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xe, align 16, !tbaa !82
  %i.xf = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 12 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 15 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %2, i64 6668 ; 22 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 13 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 10 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 42788 ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 42784 ; 8 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %2, i64 7308 ; 7 uses
  %invariant.op = add nsw i32 %.014541904, 1
  %i.xn = lshr exact i32 %.014221912, 1
  %i.xo = uitofp nneg i32 %.014221912 to float    ; 2 uses
  %i.xp = fmul nsz float %.01450.lcssa2632, 8.000000e+00 ; 2 uses
  %.reass = sub i32 %invariant.op, %i.dt
  %i.xq = sitofp nsz i32 %.reass to float
  %i.xr = add nsw i32 %.014221912, -1
  %i.xs = shl nuw nsw i32 %.014221912, 1          ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 5644 ; 10 uses
  %i.xv = udiv i32 %i.xs, 3
  %i.xw = fmul nnan nsz float %i.xo, 2.500000e-01
  %i.xx = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 1)
  %i.xy = uitofp nneg i32 %i.xx to float
  %i.xz = insertelement <2 x float> <float 1.250000e-02, float poison>, float %.01450.lcssa2632, i64 1
  br label %bb.aw

bb.aw:                                            ; preds = %vector.body.preheader, %._crit_edge2268
  %i.ya = phi i32 [ %i.bgx, %._crit_edge2268 ], [ %i.kj, %vector.body.preheader ] ; 3 uses
  %.01423 = phi i32 [ %i.bgy, %._crit_edge2268 ], [ 0, %vector.body.preheader ] ; 7 uses
  %.not1649 = icmp eq i32 %.01423, 0
  %i.yb = select i1 %.not1649, i32 32, i32 1
  br label %bb.ax

bb.ax:                                            ; preds = %select.unfold, %bb.aw
  %i.yc = phi i32 [ %i.ya, %bb.aw ], [ %i.add, %select.unfold ] ; 3 uses
  %i.yd = phi i32 [ %i.ya, %bb.aw ], [ %i.ade, %select.unfold ] ; 3 uses
  %i.ye = phi i32 [ %i.ya, %bb.aw ], [ %i.adf, %select.unfold ] ; 2 uses
  %.01367 = phi i32 [ %i.yb, %bb.aw ], [ %.11368, %select.unfold ] ; 4 uses
  %i.yf = icmp sgt i32 %i.ye, 0
  br i1 %i.yf, label %.lr.ph2119, label %._crit_edge2120

.lr.ph2119:                                       ; preds = %bb.ax
  %i.yg = load i32, ptr %i.xf, align 8, !tbaa !71 ; 3 uses
  %i.yh = icmp sgt i32 %i.yg, 0
  br i1 %i.yh, label %.lr.ph2119.split, label %._crit_edge2120

.lr.ph2119.split:                                 ; preds = %.lr.ph2119, %._crit_edge2112
  %i.yi = phi i32 [ %i.acv, %._crit_edge2112 ], [ %i.yc, %.lr.ph2119 ]
  %i.yj = phi i32 [ %i.acw, %._crit_edge2112 ], [ %i.yg, %.lr.ph2119 ] ; 2 uses
  %i.yk = phi i32 [ %i.acx, %._crit_edge2112 ], [ %i.yg, %.lr.ph2119 ] ; 2 uses
  %.513512117 = phi i32 [ %i.adb, %._crit_edge2112 ], [ 0, %.lr.ph2119 ] ; 5 uses
  %.013962116 = phi i32 [ %.11397.lcssa, %._crit_edge2112 ], [ -1, %.lr.ph2119 ] ; 2 uses
  %.014102115 = phi i32 [ %.11411.lcssa, %._crit_edge2112 ], [ 0, %.lr.ph2119 ] ; 2 uses
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph2111, label %.lr.ph2119.split.._crit_edge2112_crit_edge

.lr.ph2119.split.._crit_edge2112_crit_edge:       ; preds = %.lr.ph2119.split
  %.pre2493 = zext nneg i32 %.513512117 to i64
  br label %._crit_edge2112

.lr.ph2111:                                       ; preds = %.lr.ph2119.split
  %i.ym = shl nsw i32 %.513512117, 7
  %i.yn = shl nsw i32 %.513512117, 4              ; 2 uses
  %i.yo = zext nneg i32 %.513512117 to i64        ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.yo ; 2 uses
  %i.yq = add nsw i32 %i.yn, -1
  %i.yr = zext nneg i32 %i.yn to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph2111, %bb.bm
  %i.ys = phi i32 [ %i.yj, %.lr.ph2111 ], [ %i.acs, %bb.bm ] ; 2 uses
  %indvars.iv2396 = phi i64 [ 0, %.lr.ph2111 ], [ %indvars.iv.next2397, %bb.bm ] ; 8 uses
  %.32109 = phi i32 [ %i.ym, %.lr.ph2111 ], [ %.4, %bb.bm ] ; 2 uses
  %.113972108 = phi i32 [ %.013962116, %.lr.ph2111 ], [ %.21398, %bb.bm ] ; 4 uses
  %.114112107 = phi i32 [ %.014102115, %.lr.ph2111 ], [ %.31413, %bb.bm ] ; 3 uses
  %i.yt = zext nneg i32 %.32109 to i64            ; 2 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.yt
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.yt
  %i.yw = add nuw nsw i64 %indvars.iv2396, %i.yr  ; 6 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.yw
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !73
  %.not1687 = icmp eq i8 %i.yy, 0
  br i1 %.not1687, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %i.yw ; 3 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !82 ; 3 uses
  %i.zb = icmp sgt i32 %i.za, 217
  br i1 %i.zb, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.zc = load ptr, ptr %i.xj, align 16, !tbaa !72
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %indvars.iv2396
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !73  ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.yw
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !73
  %.not1689 = icmp eq i8 %i.zg, 0
  br i1 %.not1689, label %bb.bm, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i1847 = icmp eq i64 %indvars.iv2396, 0
  br i1 %.not.i1847, label %ff_pns_bits.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.zh = trunc nuw nsw i64 %indvars.iv2396 to i32
  %i.zi = add i32 %i.yq, %i.zh
  %i.zj = sext i32 %i.zi to i64                   ; 2 uses
  %i.zk = getelementptr inbounds i8, ptr %i.xg, i64 %i.zj
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !73
  %.not6.i = icmp eq i8 %i.zl, 0
  br i1 %.not6.i, label %ff_pns_bits.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.zm = getelementptr inbounds i8, ptr %i.xm, i64 %i.zj
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !73
  %.not7.i = icmp eq i8 %i.zn, 0
  %i.zo = select i1 %.not7.i, i32 9, i32 5
  br label %ff_pns_bits.exit

ff_pns_bits.exit:                                 ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.zp = phi i32 [ 9, %bb.bc ], [ 9, %bb.bb ], [ %i.zo, %bb.bd ]
  %i.zq = add nsw i32 %i.zp, %.114112107
  br label %bb.bm

bb.be:                                            ; preds = %bb.az
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.yw
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !80
  %i.zt = sub i32 304, %i.za
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !80
  %i.zx = tail call nsz float @llvm.fmuladd.f32(float %i.zs, float %i.zw, float 4.054000e-01)
  %i.zy = fptosi float %i.zx to i32               ; 2 uses
  %i.zz = icmp ugt i32 %i.zy, 13
  br i1 %i.zz, label %find_min_book.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aaa = zext nneg i32 %i.zy to i64
  %i.aab = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !73
  %i.aad = zext i8 %i.aac to i32
  br label %find_min_book.exit

find_min_book.exit:                               ; preds = %bb.be, %bb.bf
  %.0.i1848 = phi i32 [ %i.aad, %bb.bf ], [ 11, %bb.be ] ; 4 uses
  %i.aae = load i8, ptr %i.yp, align 1, !tbaa !73 ; 2 uses
  %.not2290 = icmp eq i8 %i.aae, 0
  br i1 %.not2290, label %._crit_edge2101, label %.lr.ph2100

.lr.ph2100:                                       ; preds = %find_min_book.exit
  %i.aaf = zext nneg i32 %.0.i1848 to i64
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.aaf
  %i.aah = trunc nuw i32 %.0.i1848 to i8
  %.pre2454 = load i16, ptr %i.xl, align 16, !tbaa !85
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph2100, %quantize_band_cost_cached.exit
  %i.aai = phi i8 [ %i.aae, %.lr.ph2100 ], [ %i.abm, %quantize_band_cost_cached.exit ]
  %i.aaj = phi i16 [ %.pre2454, %.lr.ph2100 ], [ %i.abo, %quantize_band_cost_cached.exit ] ; 2 uses
  %indvars.iv2393 = phi i64 [ 0, %.lr.ph2100 ], [ %indvars.iv.next2394, %quantize_band_cost_cached.exit ] ; 3 uses
  %.013582097 = phi i32 [ 0, %.lr.ph2100 ], [ %i.abt, %quantize_band_cost_cached.exit ]
  %i.aak = phi <2 x float> [ zeroinitializer, %.lr.ph2100 ], [ %i.abw, %quantize_band_cost_cached.exit ]
  %i.aal = add nuw nsw i64 %indvars.iv2393, %i.yo
  %i.aam = shl nuw nsw i64 %indvars.iv2393, 7     ; 2 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.aam
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %i.aam
  %i.aap = load ptr, ptr %i.xj, align 16, !tbaa !72
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %indvars.iv2396
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !73
  %i.aas = zext i8 %i.aar to i32
  %i.aat = load i32, ptr %i.yz, align 4, !tbaa !82 ; 2 uses
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds [2048 x i8], ptr %i.xk, i64 %i.aau
  %.idx2620 = shl nuw nsw i64 %i.aal, 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 %.idx2620
  %i.aax = getelementptr inbounds nuw [16 x i8], ptr %i.aaw, i64 %indvars.iv2396 ; 11 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 14 ; 2 uses
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !87
  %.not.i1849 = icmp eq i16 %i.aaz, %i.aaj
  br i1 %.not.i1849, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 12
  %i.abb = load i8, ptr %i.aba, align 4, !tbaa !88
  %i.abc = sext i8 %i.abb to i32
  %.not34.i = icmp eq i32 %.0.i1848, %i.abc
  br i1 %.not34.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aax, i64 13
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !89
  %.not35.i = icmp eq i8 %i.abe, 0
  br i1 %.not35.i, label %.quantize_band_cost_cached.exit_crit_edge, label %bb.bj

.quantize_band_cost_cached.exit_crit_edge:        ; preds = %bb.bi
  %.pre2455 = load float, ptr %i.aax, align 4, !tbaa !90
  br label %quantize_band_cost_cached.exit

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.abh = load ptr, ptr %i.aag, align 8, !tbaa !19
  %i.abi = tail call nsz float %i.abh(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.aan, ptr noundef null, ptr noundef nonnull %i.aao, i32 noundef range(i32 0, 256) %i.aas, i32 noundef %i.aat, i32 noundef range(i32 0, 256) %.0.i1848, float noundef 1.000000e+00, float noundef +inf, ptr noundef nonnull %i.abf, ptr noundef nonnull %i.abg) #13, !inline_history !2 ; 2 uses
  store float %i.abi, ptr %i.aax, align 4, !tbaa !90
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aax, i64 12
  store i8 %i.aah, ptr %i.abj, align 4, !tbaa !88
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aax, i64 13
  store i8 0, ptr %i.abk, align 1, !tbaa !89
  %i.abl = load i16, ptr %i.xl, align 16, !tbaa !85 ; 2 uses
  store i16 %i.abl, ptr %i.aay, align 2, !tbaa !87
  %.pre2456 = load i8, ptr %i.yp, align 1, !tbaa !73
  br label %quantize_band_cost_cached.exit

quantize_band_cost_cached.exit:                   ; preds = %.quantize_band_cost_cached.exit_crit_edge, %bb.bj
  %i.abm = phi i8 [ %i.aai, %.quantize_band_cost_cached.exit_crit_edge ], [ %.pre2456, %bb.bj ] ; 2 uses
  %i.abn = phi float [ %.pre2455, %.quantize_band_cost_cached.exit_crit_edge ], [ %i.abi, %bb.bj ]
  %i.abo = phi i16 [ %i.aaj, %.quantize_band_cost_cached.exit_crit_edge ], [ %i.abl, %bb.bj ]
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !91
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !161
  %i.abt = add nsw i32 %i.abq, %.013582097        ; 2 uses
  %i.abu = insertelement <2 x float> poison, float %i.abn, i64 0
end_hunk_1
begin_hunk_2_@search_for_quantizers_twoloop:bb.a
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !73
  %i.arj = zext i8 %i.ari to i32
  %i.ark = add nuw nsw i32 %.913552188, %i.arj    ; 2 uses
  %i.arl = icmp slt i32 %i.ark, %i.arf
  br i1 %i.arl, label %.lr.ph2190, label %.loopexit1970, !llvm.loop !140

.loopexit1970:                                    ; preds = %find_min_book.exit1861.thread, %.preheader1969, %.lr.ph2196
  %i.arm = phi i32 [ %i.apd, %.lr.ph2196 ], [ %i.apd, %.preheader1969 ], [ %i.ard, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arn = phi i32 [ %i.ape, %.lr.ph2196 ], [ %i.ape, %.preheader1969 ], [ %i.are, %find_min_book.exit1861.thread ] ; 2 uses
  %i.aro = phi i32 [ %i.apf, %.lr.ph2196 ], [ %i.apf, %.preheader1969 ], [ %i.arf, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arp = phi i32 [ %i.apg, %.lr.ph2196 ], [ %i.apg, %.preheader1969 ], [ %i.arf, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arq = phi i32 [ %i.aph, %.lr.ph2196 ], [ %i.apg, %.preheader1969 ], [ %i.arf, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arr = phi i32 [ %i.api, %.lr.ph2196 ], [ %i.apg, %.preheader1969 ], [ %i.arf, %find_min_book.exit1861.thread ] ; 2 uses
  %.41322 = phi i32 [ %.113192193, %.lr.ph2196 ], [ %.113192193, %.preheader1969 ], [ %.31321, %find_min_book.exit1861.thread ] ; 3 uses
  %i.ars = icmp sgt i64 %indvars.iv2423, 2
  %i.art = icmp slt i32 %.41322, %i.aoy
  %i.aru = select i1 %i.ars, i1 %i.art, i1 false
  br i1 %i.aru, label %.lr.ph2196, label %._crit_edge2197.loopexit, !llvm.loop !141

._crit_edge2197.loopexit:                         ; preds = %.loopexit1970
  %.pre2468 = load i32, ptr %i.xf, align 8, !tbaa !71
  br label %._crit_edge2197

._crit_edge2197:                                  ; preds = %._crit_edge2197.loopexit, %._crit_edge2181
  %i.arv = phi i32 [ %i.alw, %._crit_edge2181 ], [ %i.arm, %._crit_edge2197.loopexit ] ; 2 uses
  %i.arw = phi i32 [ %i.alx, %._crit_edge2181 ], [ %i.arn, %._crit_edge2197.loopexit ] ; 2 uses
  %i.arx = phi i32 [ %.pre2466, %._crit_edge2181 ], [ %.pre2468, %._crit_edge2197.loopexit ] ; 2 uses
  %i.ary = phi i32 [ %i.aly, %._crit_edge2181 ], [ %i.aro, %._crit_edge2197.loopexit ] ; 2 uses
  %i.arz = phi i32 [ %i.alz, %._crit_edge2181 ], [ %i.arp, %._crit_edge2197.loopexit ] ; 2 uses
  %i.asa = phi i32 [ %i.ama, %._crit_edge2181 ], [ %i.arq, %._crit_edge2197.loopexit ] ; 2 uses
  %i.asb = phi i32 [ %i.ama, %._crit_edge2181 ], [ %i.arr, %._crit_edge2197.loopexit ] ; 2 uses
  %.11319.lcssa = phi i32 [ 0, %._crit_edge2181 ], [ %.41322, %._crit_edge2197.loopexit ] ; 3 uses
  %i.asc = icmp sgt i32 %i.arx, 1
  %i.asd = icmp slt i32 %.11319.lcssa, %i.aoy
  %i.ase = select i1 %i.asc, i1 %i.asd, i1 false
  br i1 %i.ase, label %.lr.ph2196.preheader.1, label %._crit_edge2197.1

.lr.ph2196.preheader.1:                           ; preds = %._crit_edge2197
  %i.asf = zext nneg i32 %i.arx to i64
  br label %.lr.ph2196.1

.lr.ph2196.1:                                     ; preds = %.loopexit1970.1, %.lr.ph2196.preheader.1
  %i.asg = phi i32 [ %i.arv, %.lr.ph2196.preheader.1 ], [ %i.auk, %.loopexit1970.1 ] ; 3 uses
  %i.ash = phi i32 [ %i.arw, %.lr.ph2196.preheader.1 ], [ %i.aul, %.loopexit1970.1 ] ; 7 uses
  %i.asi = phi i32 [ %i.ary, %.lr.ph2196.preheader.1 ], [ %i.aum, %.loopexit1970.1 ]
  %i.asj = phi i32 [ %i.arz, %.lr.ph2196.preheader.1 ], [ %i.aun, %.loopexit1970.1 ]
  %i.ask = phi i32 [ %i.asa, %.lr.ph2196.preheader.1 ], [ %i.auo, %.loopexit1970.1 ]
  %i.asl = phi i32 [ %i.asb, %.lr.ph2196.preheader.1 ], [ %i.aup, %.loopexit1970.1 ]
  %indvars.iv2423.1 = phi i64 [ %i.asf, %.lr.ph2196.preheader.1 ], [ %indvars.iv.next2424.1, %.loopexit1970.1 ] ; 2 uses
  %.113192193.1 = phi i32 [ %.11319.lcssa, %.lr.ph2196.preheader.1 ], [ %.41322.1, %.loopexit1970.1 ] ; 3 uses
  %indvars.iv.next2424.1 = add nsw i64 %indvars.iv2423.1, -1 ; 3 uses
  %i.asm = load ptr, ptr %i.xt, align 8, !tbaa !95
  %i.asn = getelementptr inbounds nuw [2 x i8], ptr %i.asm, i64 %indvars.iv.next2424.1
  %i.aso = load i16, ptr %i.asn, align 2, !tbaa !96
  %i.asp = zext i16 %i.aso to i32
  %i.asq = icmp sgt i32 %i.dr, %i.asp
  br i1 %i.asq, label %.loopexit1970.1, label %.preheader1969.1

.preheader1969.1:                                 ; preds = %.lr.ph2196.1
  %i.asr = icmp sgt i32 %i.ash, 0
  br i1 %i.asr, label %.lr.ph2190.1, label %.loopexit1970.1

.lr.ph2190.1:                                     ; preds = %.preheader1969.1, %find_min_book.exit1861.thread.1
  %i.ass = phi i32 [ %i.aud, %find_min_book.exit1861.thread.1 ], [ %i.asg, %.preheader1969.1 ] ; 7 uses
  %.213202189.1 = phi i32 [ %.31321.1, %find_min_book.exit1861.thread.1 ], [ %.113192193.1, %.preheader1969.1 ] ; 8 uses
  %.913552188.1 = phi i32 [ %i.aui, %find_min_book.exit1861.thread.1 ], [ 0, %.preheader1969.1 ] ; 3 uses
  %i.ast = shl nuw nsw i32 %.913552188.1, 4
  %i.asu = zext nneg i32 %i.ast to i64
  %i.asv = add nsw i64 %indvars.iv.next2424.1, %i.asu ; 9 uses
  %i.asw = getelementptr inbounds i8, ptr %i.xg, i64 %i.asv ; 2 uses
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !73
  %.not1676.1 = icmp eq i8 %i.asx, 0
  br i1 %.not1676.1, label %bb.cx, label %find_min_book.exit1861.thread.1

bb.cx:                                            ; preds = %.lr.ph2190.1
  %i.asy = getelementptr inbounds i8, ptr %i.xm, i64 %i.asv
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !73
  %.not1677.1 = icmp eq i8 %i.asz, 0
  br i1 %.not1677.1, label %find_min_book.exit1861.thread.1, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ata = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.asv
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !80
  %i.atc = fcmp nsz ugt float %i.atb, %.1741
  br i1 %i.atc, label %find_min_book.exit1861.thread.1, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.asv
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !82 ; 2 uses
  %i.atf = icmp sgt i32 %i.ate, 104
  br i1 %i.atf, label %bb.da, label %find_min_book.exit1861.thread.1

bb.da:                                            ; preds = %bb.cz
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.asv
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !80 ; 2 uses
  %i.ati = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.asv
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !80 ; 3 uses
  %i.atk = fcmp nsz ogt float %i.ath, %i.atj
  br i1 %i.atk, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.asv
  %i.atm = load float, ptr %i.atl, align 4, !tbaa !80
  %i.atn = sub nsw i32 304, %i.ate
  %i.ato = sext i32 %i.atn to i64
  %i.atp = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.ato
  %i.atq = load float, ptr %i.atp, align 4, !tbaa !80
  %i.atr = tail call nsz float @llvm.fmuladd.f32(float %i.atm, float %i.atq, float 4.054000e-01)
  %i.ats = fptosi float %i.atr to i32             ; 2 uses
  %i.att = icmp ugt i32 %i.ats, 13
  br i1 %i.att, label %find_min_book.exit1861.thread.1, label %find_min_book.exit1861.1

find_min_book.exit1861.1:                         ; preds = %bb.db
  %i.atu = zext nneg i32 %i.ats to i64
  %i.atv = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.atu
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !73
  switch i8 %i.atw, label %find_min_book.exit1861.thread.1 [
    i8 0, label %bb.dd
    i8 1, label %bb.dc
  ]

bb.dc:                                            ; preds = %find_min_book.exit1861.1
  %i.atx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.asv
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !80 ; 2 uses
  %i.atz = fcmp nsz ogt float %i.atj, %i.aty
  %.1743.1 = select nsz i1 %i.atz, float %i.aty, float %i.atj
  %i.aua = fcmp nsz ogt float %i.ath, %.1743.1
  br i1 %i.aua, label %bb.dd, label %find_min_book.exit1861.thread.1

bb.dd:                                            ; preds = %bb.dc, %find_min_book.exit1861.1, %bb.da
  store i8 1, ptr %i.asw, align 1, !tbaa !73
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %i.asv
  store i32 0, ptr %i.aub, align 4, !tbaa !82
  %i.auc = add nsw i32 %.213202189.1, 1
  %.pre2469 = load i32, ptr %i.cg, align 4, !tbaa !69
  br label %find_min_book.exit1861.thread.1

find_min_book.exit1861.thread.1:                  ; preds = %bb.dd, %bb.dc, %find_min_book.exit1861.1, %bb.db, %bb.cz, %bb.cy, %bb.cx, %.lr.ph2190.1
  %i.aud = phi i32 [ %i.ass, %.lr.ph2190.1 ], [ %.pre2469, %bb.dd ], [ %i.ass, %bb.dc ], [ %i.ass, %find_min_book.exit1861.1 ], [ %i.ass, %bb.cz ], [ %i.ass, %bb.cy ], [ %i.ass, %bb.cx ], [ %i.ass, %bb.db ] ; 8 uses
  %.31321.1 = phi i32 [ %.213202189.1, %.lr.ph2190.1 ], [ %i.auc, %bb.dd ], [ %.213202189.1, %bb.dc ], [ %.213202189.1, %find_min_book.exit1861.1 ], [ %.213202189.1, %bb.cz ], [ %.213202189.1, %bb.cy ], [ %.213202189.1, %bb.cx ], [ %.213202189.1, %bb.db ] ; 2 uses
  %i.aue = zext nneg i32 %.913552188.1 to i64
  %i.auf = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.aue
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !73
  %i.auh = zext i8 %i.aug to i32
  %i.aui = add nuw nsw i32 %.913552188.1, %i.auh  ; 2 uses
  %i.auj = icmp slt i32 %i.aui, %i.aud
  br i1 %i.auj, label %.lr.ph2190.1, label %.loopexit1970.1, !llvm.loop !140

.loopexit1970.1:                                  ; preds = %find_min_book.exit1861.thread.1, %.preheader1969.1, %.lr.ph2196.1
  %i.auk = phi i32 [ %i.asg, %.lr.ph2196.1 ], [ %i.asg, %.preheader1969.1 ], [ %i.aud, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.aul = phi i32 [ %i.ash, %.lr.ph2196.1 ], [ %i.ash, %.preheader1969.1 ], [ %i.aud, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.aum = phi i32 [ %i.asi, %.lr.ph2196.1 ], [ %i.ash, %.preheader1969.1 ], [ %i.aud, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.aun = phi i32 [ %i.asj, %.lr.ph2196.1 ], [ %i.ash, %.preheader1969.1 ], [ %i.aud, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.auo = phi i32 [ %i.ask, %.lr.ph2196.1 ], [ %i.ash, %.preheader1969.1 ], [ %i.aud, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.aup = phi i32 [ %i.asl, %.lr.ph2196.1 ], [ %i.ash, %.preheader1969.1 ], [ %i.aud, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %.41322.1 = phi i32 [ %.113192193.1, %.lr.ph2196.1 ], [ %.113192193.1, %.preheader1969.1 ], [ %.31321.1, %find_min_book.exit1861.thread.1 ] ; 3 uses
  %i.auq = icmp sgt i64 %indvars.iv2423.1, 2
  %i.aur = icmp slt i32 %.41322.1, %i.aoy
  %i.aus = select i1 %i.auq, i1 %i.aur, i1 false
  br i1 %i.aus, label %.lr.ph2196.1, label %._crit_edge2197.1, !llvm.loop !141

._crit_edge2197.1:                                ; preds = %.loopexit1970.1, %._crit_edge2197
  %i.aut = phi i32 [ %i.arv, %._crit_edge2197 ], [ %i.auk, %.loopexit1970.1 ]
  %i.auu = phi i32 [ %i.arw, %._crit_edge2197 ], [ %i.aul, %.loopexit1970.1 ]
  %i.auv = phi i32 [ %i.ary, %._crit_edge2197 ], [ %i.aum, %.loopexit1970.1 ]
  %i.auw = phi i32 [ %i.arz, %._crit_edge2197 ], [ %i.aun, %.loopexit1970.1 ]
  %i.aux = phi i32 [ %i.asa, %._crit_edge2197 ], [ %i.auo, %.loopexit1970.1 ]
  %i.auy = phi i32 [ %i.asb, %._crit_edge2197 ], [ %i.aup, %.loopexit1970.1 ] ; 3 uses
  %.11319.lcssa.1 = phi i32 [ %.11319.lcssa, %._crit_edge2197 ], [ %.41322.1, %.loopexit1970.1 ]
  %.not1674 = icmp ne i32 %.11319.lcssa.1, 0      ; 2 uses
  %spec.select1744 = zext i1 %.not1674 to i32
  %spec.select1745 = select i1 %.not1674, i32 1, i32 %.0143322022837
  br label %._crit_edge2162.thread

._crit_edge2162.thread:                           ; preds = %.preheader1975.lr.ph, %bb.cg, %._crit_edge2197.1, %._crit_edge2162, %bb.cf
  %i.auz = phi i32 [ %i.alw, %._crit_edge2162 ], [ %i.alw, %bb.cf ], [ %i.aut, %._crit_edge2197.1 ], [ %i.alw, %bb.cg ], [ %i.alw, %.preheader1975.lr.ph ]
  %i.ava = phi i32 [ %i.alx, %._crit_edge2162 ], [ %i.alx, %bb.cf ], [ %i.auu, %._crit_edge2197.1 ], [ %i.alx, %bb.cg ], [ %i.alx, %.preheader1975.lr.ph ]
  %i.avb = phi i32 [ %i.aly, %._crit_edge2162 ], [ %i.aly, %bb.cf ], [ %i.auv, %._crit_edge2197.1 ], [ %i.aly, %bb.cg ], [ %i.aly, %.preheader1975.lr.ph ]
  %i.avc = phi i32 [ %i.alz, %._crit_edge2162 ], [ %i.alz, %bb.cf ], [ %i.auw, %._crit_edge2197.1 ], [ %i.alz, %bb.cg ], [ %i.alz, %.preheader1975.lr.ph ]
  %i.avd = phi i32 [ %i.ama, %._crit_edge2162 ], [ %i.ama, %bb.cf ], [ %i.aux, %._crit_edge2197.1 ], [ %i.ama, %bb.cg ], [ %i.ama, %.preheader1975.lr.ph ]
  %i.ave = phi i32 [ %i.ama, %._crit_edge2162 ], [ %i.amb, %bb.cf ], [ %i.auy, %._crit_edge2197.1 ], [ %i.ama, %bb.cg ], [ %i.ama, %.preheader1975.lr.ph ]
  %i.avf = phi i32 [ %i.ama, %._crit_edge2162 ], [ %i.amc, %bb.cf ], [ %i.auy, %._crit_edge2197.1 ], [ %i.ama, %bb.cg ], [ %i.ama, %.preheader1975.lr.ph ]
  %i.avg = phi i32 [ %i.ama, %._crit_edge2162 ], [ %i.amd, %bb.cf ], [ %i.auy, %._crit_edge2197.1 ], [ %i.ama, %bb.cg ], [ %i.ama, %.preheader1975.lr.ph ]
  %.41462 = phi i32 [ 0, %._crit_edge2162 ], [ %.1145922012838, %bb.cf ], [ %spec.select1744, %._crit_edge2197.1 ], [ 0, %bb.cg ], [ 0, %.preheader1975.lr.ph ] ; 2 uses
  %.31436 = phi i32 [ %.0143322022837, %._crit_edge2162 ], [ %.0143322022837, %bb.cf ], [ %spec.select1745, %._crit_edge2197.1 ], [ %.0143322022837, %bb.cg ], [ %.0143322022837, %.preheader1975.lr.ph ] ; 2 uses
  %.51374 = phi i32 [ 0, %._crit_edge2162 ], [ %.0136922042835, %bb.cf ], [ %.31372.us, %._crit_edge2197.1 ], [ 0, %bb.cg ], [ 0, %.preheader1975.lr.ph ] ; 2 uses
  %i.avh = icmp ne i32 %.51374, 0
  %i.avi = icmp ne i32 %.41462, 0                 ; 2 uses
  %i.avj = select i1 %i.avh, i1 true, i1 %i.avi
  br i1 %i.avj, label %bb.bp, label %.critedge, !llvm.loop !142

.critedge:                                        ; preds = %.loopexit1980, %._crit_edge2162.thread
  %.014332202.lcssa = phi i32 [ %.0143322022837, %.loopexit1980 ], [ %.31436, %._crit_edge2162.thread ] ; 2 uses
  %i.avk = load i32, ptr %i.cg, align 4, !tbaa !69 ; 3 uses
  %i.avl = icmp sgt i32 %i.avk, 0
  br i1 %i.avl, label %.lr.ph2255, label %._crit_edge2268

.lr.ph2255:                                       ; preds = %.critedge
  %i.avm = icmp samesign ugt i32 %.01423, %i.xv
  %i.avn = select i1 %i.avm, i32 1, i32 3
  %i.avo = uitofp nneg i32 %.01423 to float
  %i.avp = fdiv nsz float %i.avo, %i.xw
  %i.avq = fadd nsz float %i.avp, 1.000000e+00
  %.not2292 = icmp sgt i32 %.91419, %i.ds
  %i.avr = sitofp nsz i32 %.91419 to float
  %i.avs = fdiv nsz float %i.avr, %i.xy           ; 2 uses
  %i.avt = icmp sgt i32 %.91419, %i.dt
  %.pre2470 = load i32, ptr %i.xf, align 8, !tbaa !71 ; 2 uses
  %spec.select2279 = select i1 %i.afy, i32 %i.avn, i32 10 ; 3 uses
  %i.avu = add nuw nsw i32 %spec.select2279, 2    ; 2 uses
  %.inv = fcmp nsz olt float %i.avs, 2.000000e+00
  %.mux = select i1 %.inv, float %i.avs, float 2.000000e+00
  %i.avv = select i1 %.not2292, float %.mux, float 1.000000e+00
  %i.avw = fmul nsz float %i.avq, %i.avv
  br label %bb.dj

.preheader1985:                                   ; preds = %._crit_edge2246
  %i.avx = icmp sgt i32 %i.bgo, 0
  br i1 %i.avx, label %.preheader1976.lr.ph, label %._crit_edge2268

.preheader1976.lr.ph:                             ; preds = %.preheader1985
  %i.avy = load i32, ptr %i.xf, align 8, !tbaa !71 ; 2 uses
  %i.avz = icmp sgt i32 %i.avy, 0
  br i1 %i.avz, label %.preheader1976.us.preheader, label %._crit_edge2268

.preheader1976.us.preheader:                      ; preds = %.preheader1976.lr.ph
  %wide.trip.count2444 = zext nneg i32 %i.avy to i64
  br label %.preheader1976.us

.preheader1976.us:                                ; preds = %.preheader1976.us.preheader, %._crit_edge2262.us
  %.122267.us = phi i32 [ %i.axd, %._crit_edge2262.us ], [ 0, %.preheader1976.us.preheader ] ; 3 uses
  %.1014062266.us = phi i32 [ %.131409.us, %._crit_edge2262.us ], [ -1, %.preheader1976.us.preheader ]
  %.814412265.us = phi i32 [ %.111444.us, %._crit_edge2262.us ], [ %.51438.lcssa, %.preheader1976.us.preheader ]
  %i.awa = shl nuw nsw i32 %.122267.us, 4
  %i.awb = zext nneg i32 %i.awa to i64
  br label %bb.de

bb.de:                                            ; preds = %.preheader1976.us, %bb.di
  %indvars.iv2441 = phi i64 [ 0, %.preheader1976.us ], [ %indvars.iv.next2442, %bb.di ] ; 2 uses
  %.1114072260.us = phi i32 [ %.1014062266.us, %.preheader1976.us ], [ %.131409.us, %bb.di ] ; 3 uses
  %.914422259.us = phi i32 [ %.814412265.us, %.preheader1976.us ], [ %.111444.us, %bb.di ] ; 2 uses
  %i.awc = add nuw nsw i64 %indvars.iv2441, %i.awb ; 4 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.awc
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !73
  %.not1658.us = icmp eq i8 %i.awe, 0
  br i1 %.not1658.us, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %i.awc ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !82 ; 4 uses
  %i.awh = icmp slt i32 %.1114072260.us, 0
  %spec.select1755.us = select i1 %i.awh, i32 %i.awg, i32 %.1114072260.us ; 2 uses
  %i.awi = add nsw i32 %spec.select1755.us, -60   ; 2 uses
  %i.awj = add nsw i32 %spec.select1755.us, 60
  %i.awk = icmp slt i32 %i.awg, %i.awi
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.awg, i32 %i.awj)
  %.0.i.us = select i1 %i.awk, i32 %i.awi, i32 %..i.us ; 5 uses
  store i32 %.0.i.us, ptr %i.awf, align 4, !tbaa !82
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.awc
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !80
  %i.awn = sub i32 304, %.0.i.us
  %i.awo = sext i32 %i.awn to i64
  %i.awp = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.awo
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !80
  %i.awr = tail call nsz float @llvm.fmuladd.f32(float %i.awm, float %i.awq, float 4.054000e-01)
  %i.aws = fptosi float %i.awr to i32             ; 2 uses
  %i.awt = icmp ugt i32 %i.aws, 13
  br i1 %i.awt, label %find_min_book.exit1881.us, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.awu = zext nneg i32 %i.aws to i64
  %i.awv = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.awu
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !73
  %i.awx = zext i8 %i.aww to i32
  br label %find_min_book.exit1881.us

find_min_book.exit1881.us:                        ; preds = %bb.dg, %bb.df
  %.0.i1880.us = phi i32 [ %i.awx, %bb.dg ], [ 11, %bb.df ]
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %i.awc
  store i32 %.0.i1880.us, ptr %i.awy, align 4, !tbaa !82
  %.not1659.us = icmp eq i32 %.914422259.us, 0
  br i1 %.not1659.us, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %find_min_book.exit1881.us
  %.not1660.us = icmp ne i32 %i.awg, %.0.i.us
  %spec.select1756.us = zext i1 %.not1660.us to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %find_min_book.exit1881.us, %bb.de
  %.111444.us = phi i32 [ %.914422259.us, %bb.de ], [ 1, %find_min_book.exit1881.us ], [ %spec.select1756.us, %bb.dh ] ; 3 uses
  %.131409.us = phi i32 [ %.1114072260.us, %bb.de ], [ %.0.i.us, %find_min_book.exit1881.us ], [ %.0.i.us, %bb.dh ] ; 2 uses
  %indvars.iv.next2442 = add nuw nsw i64 %indvars.iv2441, 1 ; 2 uses
  %exitcond2445.not = icmp eq i64 %indvars.iv.next2442, %wide.trip.count2444
  br i1 %exitcond2445.not, label %._crit_edge2262.us, label %bb.de, !llvm.loop !143

._crit_edge2262.us:                               ; preds = %bb.di
  %i.awz = zext nneg i32 %.122267.us to i64
  %i.axa = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.awz
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !73
  %i.axc = zext i8 %i.axb to i32
  %i.axd = add nuw nsw i32 %.122267.us, %i.axc    ; 2 uses
  %i.axe = icmp slt i32 %i.axd, %i.bgo
  br i1 %i.axe, label %.preheader1976.us, label %._crit_edge2268, !llvm.loop !144

bb.dj:                                            ; preds = %.lr.ph2255, %._crit_edge2246
  %i.axf = phi i32 [ %i.avk, %.lr.ph2255 ], [ %i.bgo, %._crit_edge2246 ]
  %i.axg = phi i32 [ %.pre2470, %.lr.ph2255 ], [ %i.bgp, %._crit_edge2246 ] ; 2 uses
  %i.axh = phi i32 [ %.pre2470, %.lr.ph2255 ], [ %i.bgq, %._crit_edge2246 ] ; 2 uses
  %.112253 = phi i32 [ 0, %.lr.ph2255 ], [ %i.bgu, %._crit_edge2246 ] ; 5 uses
  %.614022252 = phi i32 [ -1, %.lr.ph2255 ], [ %.71403.lcssa, %._crit_edge2246 ] ; 2 uses
  %.414372250 = phi i32 [ %.014332202.lcssa, %.lr.ph2255 ], [ %.51438.lcssa, %._crit_edge2246 ] ; 2 uses
  %i.axi = icmp sgt i32 %i.axh, 0
  br i1 %i.axi, label %.lr.ph2245, label %.._crit_edge2246_crit_edge

.._crit_edge2246_crit_edge:                       ; preds = %bb.dj
  %.pre2497 = zext nneg i32 %.112253 to i64
  br label %._crit_edge2246

.lr.ph2245:                                       ; preds = %bb.dj
  %i.axj = shl nsw i32 %.112253, 7
  %i.axk = shl nsw i32 %.112253, 4
  %i.axl = zext nneg i32 %.112253 to i64          ; 4 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.axl ; 4 uses
  %i.axn = zext nneg i32 %i.axk to i64
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph2245, %.thread2671
  %i.axo = phi i32 [ %i.axg, %.lr.ph2245 ], [ %i.bgg, %.thread2671 ] ; 2 uses
  %indvars.iv2438 = phi i64 [ 0, %.lr.ph2245 ], [ %indvars.iv.next2439, %.thread2671 ] ; 8 uses
  %.92243 = phi i32 [ %i.axj, %.lr.ph2245 ], [ %i.bgl, %.thread2671 ] ; 2 uses
  %.714032242 = phi i32 [ %.614022252, %.lr.ph2245 ], [ %.91405, %.thread2671 ] ; 4 uses
  %.514382240 = phi i32 [ %.414372250, %.lr.ph2245 ], [ %.71440, %.thread2671 ] ; 3 uses
  %i.axp = add nuw nsw i64 %indvars.iv2438, %i.axn ; 19 uses
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %i.axp ; 8 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !82 ; 10 uses
  %i.axs = icmp slt i32 %.714032242, 0
  %i.axt = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.axp
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !73
  %.not1661 = icmp eq i8 %i.axu, 0                ; 2 uses
  br i1 %i.axs, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  br i1 %.not1661, label %.thread2667, label %.thread2671

.thread2667:                                      ; preds = %bb.dl
  %i.axv = load i32, ptr %i.xh, align 4, !tbaa !82
  br label %find_min_book.exit1863

bb.dm:                                            ; preds = %bb.dk
  br i1 %.not1661, label %find_min_book.exit1863, label %.thread2671

find_min_book.exit1863:                           ; preds = %.thread2667, %bb.dm
  %.814042670 = phi i32 [ %i.axv, %.thread2667 ], [ %.714032242, %bb.dm ] ; 2 uses
  %i.axw = zext nneg i32 %.92243 to i64           ; 2 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.axw ; 2 uses
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.axw ; 2 uses
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.axp
  %i.aya = load float, ptr %i.axz, align 4, !tbaa !80 ; 4 uses
  %i.ayb = sub i32 304, %i.axr
  %i.ayc = sext i32 %i.ayb to i64
  %i.ayd = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.ayc
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !80
  %i.ayf = tail call nsz float @llvm.fmuladd.f32(float %i.aya, float %i.aye, float 4.054000e-01)
  %i.ayg = fptosi float %i.ayf to i32
  %i.ayh = icmp eq i32 %i.ayg, 0
  %i.ayi = tail call i32 @llvm.smax.i32(i32 %.814042670, i32 60)
  %i.ayj = add nsw i32 %i.ayi, -60                ; 5 uses
  %i.ayk = tail call i32 @llvm.smin.i32(i32 %.814042670, i32 159)
  %i.ayl = add nsw i32 %i.ayk, 60                 ; 3 uses
  br i1 %i.ayh, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %find_min_book.exit1863
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.axp
  %i.ayn = load float, ptr %i.aym, align 4, !tbaa !80
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axp
  %i.ayp = load float, ptr %i.ayo, align 4, !tbaa !80
  %i.ayq = fcmp nsz ogt float %i.ayn, %i.ayp
  br i1 %i.ayq, label %bb.do, label %bb.ee

bb.do:                                            ; preds = %bb.dn, %find_min_book.exit1863
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.axp
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !82
  %.1746 = tail call i32 @llvm.smax.i32(i32 %i.ayj, i32 %i.ays)
  %i.ayt = icmp sgt i32 %i.axr, %.1746
  br i1 %i.ayt, label %.preheader1971, label %bb.ee

.preheader1971:                                   ; preds = %bb.do
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.axp ; 3 uses
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.axp
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axp ; 4 uses
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.axp ; 3 uses
  %.not1667 = icmp eq i64 %indvars.iv2438, 0
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.axp
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axp
  %i.aza = insertelement <2 x float> poison, float %i.aya, i64 0
  %i.azb = shufflevector <2 x float> %i.aza, <2 x float> poison, <2 x i32> zeroinitializer
  br label %find_min_book.exit1865

find_min_book.exit1865:                           ; preds = %.preheader1971, %.backedge
  %.5134022362839 = phi i32 [ 0, %.preheader1971 ], [ %.513402236.be, %.backedge ] ; 3 uses
  %i.azc = phi i32 [ %i.axr, %.preheader1971 ], [ %.pre-phi2490, %.backedge ] ; 5 uses
end_hunk_2
begin_hunk_3_@search_for_ms:bb.a

ff_init_nextband_map.exit:                        ; preds = %._crit_edge.i, %vector.body, %.preheader.lr.ph.i
  %.026.lcssa.i = phi i8 [ 0, %vector.body ], [ 0, %.preheader.lr.ph.i ], [ %.2.i.lcssa, %._crit_edge.i ] ; 2 uses
  %i.bt = zext i8 %.026.lcssa.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  store i8 %.026.lcssa.i, ptr %i.bu, align 1, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.b, align 16, !tbaa !73
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.bv, align 16, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.bw, align 16, !tbaa !73
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bx, align 16, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.by, align 16, !tbaa !73
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bz, align 16, !tbaa !73
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.ca, align 16, !tbaa !73
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.cb, align 16, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 46668
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !69 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader.lr.ph.i384, label %ff_init_nextband_map.exit399

.preheader.lr.ph.i384:                            ; preds = %ff_init_nextband_map.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 46664
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 53804 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 52268 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 46638
  %i.cj = load i32, ptr %i.cf, align 8, !tbaa !71 ; 4 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.preheader.i385.preheader, label %ff_init_nextband_map.exit399

.preheader.i385.preheader:                        ; preds = %.preheader.lr.ph.i384
  %i.cl = zext nneg i32 %i.cj to i64              ; 2 uses
  %xtraiter589 = and i64 %i.cl, 1
  %i.cm = icmp eq i32 %i.cj, 1
  %unroll_iter593 = and i64 %i.cl, 2147483646
  %lcmp.mod590.not = icmp eq i64 %xtraiter589, 0
  %lcmp.mod592 = trunc i32 %i.cj to i1
  br label %.preheader.i385

.preheader.i385:                                  ; preds = %.preheader.i385.preheader, %._crit_edge.i388
  %.02533.i386 = phi i32 [ %i.du, %._crit_edge.i388 ], [ 0, %.preheader.i385.preheader ] ; 3 uses
  %.02632.i387 = phi i8 [ %.2.i394.lcssa, %._crit_edge.i388 ], [ 0, %.preheader.i385.preheader ] ; 2 uses
  %i.cn = shl nuw nsw i32 %.02533.i386, 4
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  br i1 %i.cm, label %.epil.preheader588, label %.preheader.i385.new

.preheader.i385.new:                              ; preds = %.preheader.i385, %bb.o
  %indvars.iv38.i391 = phi i64 [ %indvars.iv.next39.i395.1, %bb.o ], [ 0, %.preheader.i385 ] ; 3 uses
  %.12730.i392 = phi i8 [ %.2.i394.1, %bb.o ], [ %.02632.i387, %.preheader.i385 ] ; 3 uses
  %niter594 = phi i64 [ %niter594.next.1, %bb.o ], [ 0, %.preheader.i385 ]
  %i.cp = add nuw nsw i64 %indvars.iv38.i391, %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !73
  %.not.i393 = icmp eq i8 %i.cr, 0
  br i1 %.not.i393, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.preheader.i385.new
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cp
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !82
  %i.cu = icmp ult i32 %i.ct, 12
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cv = trunc i64 %i.cp to i8                   ; 2 uses
  %i.cw = zext i8 %.12730.i392 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cw
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !73
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.preheader.i385.new
  %.2.i394 = phi i8 [ %.12730.i392, %.preheader.i385.new ], [ %i.cv, %bb.k ], [ %.12730.i392, %bb.j ] ; 3 uses
  %indvars.iv.next39.i395 = or disjoint i64 %indvars.iv38.i391, 1
  %i.cy = add nuw nsw i64 %indvars.iv.next39.i395, %i.co ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !73
  %.not.i393.1 = icmp eq i8 %i.da, 0
  br i1 %.not.i393.1, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cy
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !82
  %i.dd = icmp ult i32 %i.dc, 12
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.de = trunc i64 %i.cy to i8                   ; 2 uses
  %i.df = zext i8 %.2.i394 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.df
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !73
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.2.i394.1 = phi i8 [ %.2.i394, %bb.l ], [ %i.de, %bb.n ], [ %.2.i394, %bb.m ] ; 3 uses
  %indvars.iv.next39.i395.1 = add nuw nsw i64 %indvars.iv38.i391, 2 ; 2 uses
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge.i388.unr-lcssa, label %.preheader.i385.new, !llvm.loop !3

._crit_edge.i388.unr-lcssa:                       ; preds = %bb.o
  br i1 %lcmp.mod590.not, label %._crit_edge.i388, label %.epil.preheader588

.epil.preheader588:                               ; preds = %._crit_edge.i388.unr-lcssa, %.preheader.i385
  %indvars.iv38.i391.epil.init = phi i64 [ 0, %.preheader.i385 ], [ %indvars.iv.next39.i395.1, %._crit_edge.i388.unr-lcssa ]
  %.12730.i392.epil.init = phi i8 [ %.02632.i387, %.preheader.i385 ], [ %.2.i394.1, %._crit_edge.i388.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.dh = add nuw nsw i64 %indvars.iv38.i391.epil.init, %i.co ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !73
  %.not.i393.epil = icmp eq i8 %i.dj, 0
  br i1 %.not.i393.epil, label %bb.p, label %._crit_edge.i388

bb.p:                                             ; preds = %.epil.preheader588
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !82
  %i.dm = icmp ult i32 %i.dl, 12
  br i1 %i.dm, label %bb.q, label %._crit_edge.i388

bb.q:                                             ; preds = %bb.p
  %i.dn = trunc i64 %i.dh to i8                   ; 2 uses
  %i.do = zext i8 %.12730.i392.epil.init to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.do
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !73
  br label %._crit_edge.i388

._crit_edge.i388:                                 ; preds = %.epil.preheader588, %bb.p, %bb.q, %._crit_edge.i388.unr-lcssa
  %.2.i394.lcssa = phi i8 [ %.2.i394.1, %._crit_edge.i388.unr-lcssa ], [ %.12730.i392.epil.init, %.epil.preheader588 ], [ %i.dn, %bb.q ], [ %.12730.i392.epil.init, %bb.p ] ; 2 uses
  %i.dq = zext nneg i32 %.02533.i386 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !73
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %.02533.i386, %i.dt     ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.cd
  br i1 %i.dv, label %.preheader.i385, label %ff_init_nextband_map.exit399, !llvm.loop !4

ff_init_nextband_map.exit399:                     ; preds = %._crit_edge.i388, %ff_init_nextband_map.exit, %.preheader.lr.ph.i384
  %.026.lcssa.i383 = phi i8 [ 0, %ff_init_nextband_map.exit ], [ 0, %.preheader.lr.ph.i384 ], [ %.2.i394.lcssa, %._crit_edge.i388 ] ; 2 uses
  %i.dw = zext i8 %.026.lcssa.i383 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dw
  store i8 %.026.lcssa.i383, ptr %i.dx, align 1, !tbaa !73
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 6940 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 53292 ; 4 uses
  br i1 %i.ab, label %.preheader419.lr.ph, label %.loopexit

.preheader419.lr.ph:                              ; preds = %ff_init_nextband_map.exit399
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 7452
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 53804 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 286 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 12832 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 59184 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 567080 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 5916 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 52268 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 38160
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 38232
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 46656 ; 2 uses
  %i.ep = load i32, ptr %i.ea, align 8, !tbaa !71 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader419.preheader, label %.loopexit

.preheader419.preheader:                          ; preds = %.preheader419.lr.ph
  %i.er = load i32, ptr %i.dy, align 4, !tbaa !82
  %i.es = load i32, ptr %i.dz, align 4, !tbaa !82
  br label %.preheader419

.preheader419:                                    ; preds = %.preheader419.preheader, %._crit_edge476
  %i.et = phi i32 [ %i.qb, %._crit_edge476 ], [ %i.aa, %.preheader419.preheader ]
  %i.eu = phi i32 [ %i.qc, %._crit_edge476 ], [ %i.ep, %.preheader419.preheader ] ; 3 uses
  %.0339480 = phi i32 [ %.1340.lcssa, %._crit_edge476 ], [ %i.es, %.preheader419.preheader ] ; 2 uses
  %.0341479 = phi i32 [ %.1342.lcssa, %._crit_edge476 ], [ %i.er, %.preheader419.preheader ] ; 2 uses
  %.0348478 = phi i32 [ %i.qg, %._crit_edge476 ], [ 0, %.preheader419.preheader ] ; 5 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph475, label %.preheader419.._crit_edge476_crit_edge

.preheader419.._crit_edge476_crit_edge:           ; preds = %.preheader419
  %.pre519 = zext nneg i32 %.0348478 to i64
  br label %._crit_edge476

.lr.ph475:                                        ; preds = %.preheader419
  %i.ew = shl nsw i32 %.0348478, 4
  %i.ex = zext nneg i32 %.0348478 to i64          ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ex ; 4 uses
  %i.ez = zext nneg i32 %i.ew to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph475, %bb.ar
  %indvars.iv513 = phi i64 [ 0, %.lr.ph475 ], [ %indvars.iv.next514, %bb.ar ] ; 17 uses
  %i.fa = phi i32 [ %i.eu, %.lr.ph475 ], [ %i.py, %bb.ar ]
  %.1340473 = phi i32 [ %.0339480, %.lr.ph475 ], [ %.2, %bb.ar ] ; 5 uses
  %.1342472 = phi i32 [ %.0341479, %.lr.ph475 ], [ %.2343, %bb.ar ] ; 5 uses
  %.0352468 = phi i32 [ 0, %.lr.ph475 ], [ %i.px, %bb.ar ] ; 4 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv513 to i32
  %i.fc = uitofp nneg i32 %i.fb to float
  %i.fd = fmul nnan nsz float %i.fc, 1.700000e+01
  %i.fe = sitofp nsz i32 %i.fa to float
  %i.ff = fdiv nsz float %i.fd, %i.fe             ; 3 uses
  %i.fg = fmul nsz float %i.ff, %i.ff
  %i.fh = fmul nsz float %i.ff, %i.fg
  %i.fi = fmul nsz float %i.fh, 3.500000e-03
  %i.fj = fdiv nsz float %i.fi, f0x4568BE00
  %i.fk = fadd nsz float %i.fj, 1.000000e-03
  %i.fl = fdiv nsz float %i.fk, 4.500000e-03
  %i.fm = add nuw nsw i64 %indvars.iv513, %i.ez   ; 16 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fm ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !73  ; 2 uses
  %.not362.not = icmp eq i8 %i.fo, 0
  br i1 %.not362.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.fm
  store i8 0, ptr %i.fp, align 1, !tbaa !73
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fm ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !73
  %.not363 = icmp eq i8 %i.fr, 0
  br i1 %.not363, label %bb.u, label %.thread412

bb.u:                                             ; preds = %bb.t
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fm
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !73
  %i.fu = or i8 %i.ft, %i.fo
  %brmerge.not = icmp eq i8 %i.fu, 0
  br i1 %brmerge.not, label %.preheader418, label %select.unfold

.preheader418:                                    ; preds = %bb.u
  %i.fv = load i8, ptr %i.ey, align 1, !tbaa !73
  %.not483 = icmp eq i8 %i.fv, 0
  br i1 %.not483, label %.preheader417, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader418
  %.pre = load ptr, ptr %i.eg, align 16, !tbaa !72 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv513
  %.pre516 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !73
  br label %.preheader

.preheader417:                                    ; preds = %._crit_edge438, %.preheader418
  %.0336.lcssa = phi float [ 0.000000e+00, %.preheader418 ], [ %.1337.lcssa, %._crit_edge438 ]
  %.0335.lcssa = phi float [ 0.000000e+00, %.preheader418 ], [ %.1.lcssa, %._crit_edge438 ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fm ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fm ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fm ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fm ; 4 uses
  %i.ga = add nsw i32 %.1342472, -60
  %i.gb = add nsw i32 %.1342472, 60
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fm
  %i.gd = add nsw i32 %.1340473, -60
  %i.ge = add nsw i32 %.1340473, 60
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fm
  %i.gg = zext nneg i32 %.0352468 to i64          ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.fm ; 3 uses
  %i.gk = zext nneg i32 %.0352468 to i64
  br label %bb.w

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge438
  %i.gl = phi i8 [ %.pre516, %.preheader.lr.ph ], [ %i.hq, %._crit_edge438 ]
  %i.gm = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.ho, %._crit_edge438 ]
  %indvars.iv504 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next505, %._crit_edge438 ] ; 2 uses
  %.0335445 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge438 ] ; 3 uses
  %.0336444 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1337.lcssa, %._crit_edge438 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv513
  %.not484 = icmp eq i8 %i.gl, 0
  br i1 %.not484, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.go = trunc nuw nsw i64 %indvars.iv504 to i32
  %i.gp = add i32 %.0348478, %i.go
  %i.gq = shl nsw i32 %i.gp, 7
  %i.gr = add nuw nsw i32 %i.gq, %.0352468
  %i.gs = zext i32 %i.gr to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %i.gt = add nuw nsw i64 %indvars.iv, %i.gs      ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !80
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gt ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !80
  %i.gy = fadd nsz float %i.gv, %i.gx
  %i.gz = fmul nsz float %i.gy, 5.000000e-01      ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.gz, ptr %i.ha, align 4, !tbaa !80
  %i.hb = load float, ptr %i.gw, align 4, !tbaa !80
  %i.hc = fsub nsz float %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store float %i.hc, ptr %i.hd, align 4, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.he = load i8, ptr %i.gn, align 1, !tbaa !73  ; 2 uses
  %i.hf = zext i8 %i.he to i64
  %i.hg = icmp samesign ult i64 %indvars.iv.next, %i.hf
  br i1 %i.hg, label %bb.v, label %._crit_edge.loopexit, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.hh = zext i8 %i.he to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa.in = phi i32 [ 0, %.preheader ], [ %i.hh, %._crit_edge.loopexit ]
  %i.hi = load ptr, ptr %i.ej, align 8, !tbaa !83
  call void %i.hi(ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, i32 noundef %.lcssa.in) #13
  %i.hj = load ptr, ptr %i.ej, align 8, !tbaa !83
  %i.hk = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %indvars.iv513
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !73
  %i.hn = zext i8 %i.hm to i32
  call void %i.hj(ptr noundef nonnull %i.l, ptr noundef nonnull %i.h, i32 noundef %i.hn) #13
  %i.ho = load ptr, ptr %i.eg, align 16, !tbaa !72 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %indvars.iv513
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !73  ; 5 uses
  %.not485 = icmp eq i8 %i.hq, 0
  br i1 %.not485, label %._crit_edge438, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = zext i8 %i.hq to i64         ; 2 uses
  %xtraiter595 = and i64 %wide.trip.count, 1
  %i.hr = icmp eq i8 %i.hq, 1
  br i1 %i.hr, label %.lr.ph437.epil.preheader, label %.lr.ph437.preheader.new

.lr.ph437.preheader.new:                          ; preds = %.lr.ph437.preheader
  %unroll_iter600 = and i64 %wide.trip.count, 254
  br label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437, %.lr.ph437.preheader.new
  %indvars.iv500 = phi i64 [ 0, %.lr.ph437.preheader.new ], [ %indvars.iv.next501.1, %.lr.ph437 ] ; 4 uses
  %.1435 = phi float [ %.0335445, %.lr.ph437.preheader.new ], [ %i.if, %.lr.ph437 ] ; 2 uses
  %.1337434 = phi float [ %.0336444, %.lr.ph437.preheader.new ], [ %.1337..1, %.lr.ph437 ] ; 2 uses
  %niter601 = phi i64 [ 0, %.lr.ph437.preheader.new ], [ %niter601.next.1, %.lr.ph437 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv500
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !80 ; 2 uses
  %i.hu = fcmp nsz ogt float %.1337434, %i.ht
  %.1337. = select nsz i1 %i.hu, float %.1337434, float %i.ht ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv500
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !80 ; 2 uses
  %i.hx = fcmp nsz ogt float %.1435, %i.hw
  %i.hy = select nsz i1 %i.hx, float %.1435, float %i.hw ; 2 uses
  %indvars.iv.next501 = or disjoint i64 %indvars.iv500, 1 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next501
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !80 ; 2 uses
  %i.ib = fcmp nsz ogt float %.1337., %i.ia
  %.1337..1 = select nsz i1 %i.ib, float %.1337., float %i.ia ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next501
  %i.id = load float, ptr %i.ic, align 4, !tbaa !80 ; 2 uses
  %i.ie = fcmp nsz ogt float %i.hy, %i.id
  %i.if = select nsz i1 %i.ie, float %i.hy, float %i.id ; 3 uses
  %indvars.iv.next501.1 = add nuw nsw i64 %indvars.iv500, 2 ; 2 uses
  %niter601.next.1 = add i64 %niter601, 2         ; 2 uses
  %niter601.ncmp.1 = icmp eq i64 %niter601.next.1, %unroll_iter600
  br i1 %niter601.ncmp.1, label %._crit_edge438.loopexit.unr-lcssa, label %.lr.ph437, !llvm.loop !196

._crit_edge438.loopexit.unr-lcssa:                ; preds = %.lr.ph437
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  br i1 %lcmp.mod596.not, label %._crit_edge438, label %.lr.ph437.epil.preheader

.lr.ph437.epil.preheader:                         ; preds = %._crit_edge438.loopexit.unr-lcssa, %.lr.ph437.preheader
  %indvars.iv500.epil.init = phi i64 [ 0, %.lr.ph437.preheader ], [ %indvars.iv.next501.1, %._crit_edge438.loopexit.unr-lcssa ] ; 2 uses
  %.1435.epil.init = phi float [ %.0335445, %.lr.ph437.preheader ], [ %i.if, %._crit_edge438.loopexit.unr-lcssa ] ; 2 uses
  %.1337434.epil.init = phi float [ %.0336444, %.lr.ph437.preheader ], [ %.1337..1, %._crit_edge438.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod599 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod599)
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv500.epil.init
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !80 ; 2 uses
  %i.ii = fcmp nsz ogt float %.1337434.epil.init, %i.ih
  %.1337..epil = select nsz i1 %i.ii, float %.1337434.epil.init, float %i.ih
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv500.epil.init
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !80 ; 2 uses
  %i.il = fcmp nsz ogt float %.1435.epil.init, %i.ik
  %i.im = select nsz i1 %i.il, float %.1435.epil.init, float %i.ik
  br label %._crit_edge438

._crit_edge438:                                   ; preds = %.lr.ph437.epil.preheader, %._crit_edge438.loopexit.unr-lcssa, %._crit_edge
  %.1337.lcssa = phi float [ %.0336444, %._crit_edge ], [ %.1337..1, %._crit_edge438.loopexit.unr-lcssa ], [ %.1337..epil, %.lr.ph437.epil.preheader ] ; 2 uses
  %.1.lcssa = phi float [ %.0335445, %._crit_edge ], [ %i.if, %._crit_edge438.loopexit.unr-lcssa ], [ %i.im, %.lr.ph437.epil.preheader ] ; 2 uses
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %i.in = load i8, ptr %i.ey, align 1, !tbaa !73
  %i.io = zext i8 %i.in to i64
  %i.ip = icmp samesign ult i64 %indvars.iv.next505, %i.io
  br i1 %i.ip, label %.preheader, label %.preheader417, !llvm.loop !197

bb.w:                                             ; preds = %.backedge, %.preheader417
  %.0344467 = phi i32 [ 0, %.preheader417 ], [ %.0344467.be, %.backedge ] ; 4 uses
  %i.iq = load i32, ptr %i.fw, align 4, !tbaa !82
  %i.ir = load i32, ptr %i.fx, align 4, !tbaa !82
  %. = call i32 @llvm.smin.i32(i32 %i.iq, i32 %i.ir) ; 2 uses
  %i.is = call i32 @llvm.smax.i32(i32 %., i32 0)
  %i.it = call i32 @llvm.umin.i32(i32 %i.is, i32 219) ; 7 uses
  %.neg = mul nsw i32 %.0344467, -3
  %i.iu = add i32 %., %.neg
  %i.iv = call i32 @llvm.smax.i32(i32 %i.iu, i32 0)
  %i.iw = call i32 @llvm.umin.i32(i32 %i.iv, i32 219) ; 7 uses
end_hunk_3
begin_hunk_4_@quantize_and_encode_band_cost_SQUAD:bb.a
bb.n:                                             ; preds = %bb.m, %.thread13
  %.not251.i = icmp eq ptr %11, null
  br i1 %.not251.i, label %quantize_and_encode_band_cost_template.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store float %.0222.i.lcssa, ptr %11, align 4, !tbaa !80
  br label %quantize_and_encode_band_cost_template.exit

quantize_and_encode_band_cost_template.exit:      ; preds = %.split30.us, %bb.n, %bb.o
  %.3.i = phi nsz float [ %.1227.i.lcssa, %bb.n ], [ %.1227.i.lcssa, %bb.o ], [ %9, %.split30.us ]
  ret float %.3.i
}

; Function Attrs: nounwind uwtable
define internal float @quantize_and_encode_band_cost_UQUAD(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) #0 {
bb.a:
  %i.a = sub i32 304, %6
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !80
  %i.e = sext i32 %6 to i64
  %i.f = getelementptr [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 384
  %i.h = load float, ptr %i.g, align 4, !tbaa !80 ; 4 uses
  %.not244.i = icmp eq ptr %4, null
  br i1 %.not244.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 567080
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 38688 ; 2 uses
  tail call void %i.j(ptr noundef nonnull %i.k, ptr noundef %2, i32 noundef %5) #13, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0198.i = phi ptr [ %4, %bb.a ], [ %i.k, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 567088
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 38304 ; 2 uses
  %i.o = sext i32 %7 to i64                       ; 2 uses
  %i.p = getelementptr inbounds i8, ptr @aac_cb_maxval, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !73
  %i.r = zext i8 %i.q to i32
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef %2, ptr noundef nonnull %.0198.i, i32 noundef %5, i32 noundef 0, i32 noundef %i.r, float noundef %i.d, float noundef 4.054000e-01) #13, !inline_history !7
  %.not249.i37 = icmp sgt i32 %5, 0
  br i1 %.not249.i37, label %.lr.ph, label %.thread19

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr @aac_cb_range, i64 %i.o
  %i.t = load i8, ptr %i.s, align 1, !tbaa !73
  %i.u = zext i8 %i.t to i32                      ; 3 uses
  %i.v = add nsw i32 %7, -1
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds [8 x i8], ptr @ff_aac_spectral_bits, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = getelementptr inbounds [8 x i8], ptr @ff_aac_codebook_vectors, i64 %i.w
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105 ; 4 uses
  %.not253.i = icmp eq ptr %3, null               ; 4 uses
  %.not247.i = icmp eq ptr %1, null
  %i.ab = getelementptr inbounds [8 x i8], ptr @ff_aac_spectral_codes, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 15 uses
  %i.af = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 7 uses
  %.0220.i40 = phi i32 [ 0, %.lr.ph ], [ %i.dy, %.thread ]
  %.0222.i39 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ds, %.thread ]
  %.1227.i38 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dx, %.thread ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !82
  %i.ai = mul nsw i32 %i.ah, %i.u
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !82
  %i.al = add nsw i32 %i.ai, %i.ak
  %i.am = mul nsw i32 %i.al, %i.u
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !82
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = mul nsw i32 %i.ap, %i.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !82
  %i.at = add nsw i32 %i.aq, %i.as                ; 2 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.y, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !73
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl i32 %i.at, 2
  %i.az = sext i32 %i.ay to i64                   ; 4 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.az ; 6 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !80 ; 2 uses
  %i.bd = tail call nsz float @llvm.fabs.f32(float %i.bc)
  %i.be = load float, ptr %i.ba, align 4, !tbaa !80 ; 2 uses
  %i.bf = fmul nsz float %i.h, %i.be              ; 5 uses
  %i.bg = fsub nsz float %i.bd, %i.bf             ; 2 uses
  br i1 %.not253.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = fcmp nsz oge float %i.bc, 0.000000e+00
  %i.bi = fneg nsz float %i.bf
  %i.bj = select nsz i1 %i.bh, float %i.bf, float %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bj, ptr %i.bk, align 4, !tbaa !80
  %.pre = load float, ptr %i.ba, align 4, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = phi float [ %.pre, %bb.e ], [ %i.be, %bb.d ]
  %i.bm = fcmp nsz une float %i.bl, 0.000000e+00
  %i.bn = zext i1 %i.bm to i32
  %spec.select.i = add nuw nsw i32 %i.ax, %i.bn
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %.0222.i39)
  %i.bp = fmul nsz float %i.bg, %i.bg
  %i.bq = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !80 ; 2 uses
  %i.bt = tail call nsz float @llvm.fabs.f32(float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !80 ; 2 uses
  %i.bw = fmul nsz float %i.h, %i.bv              ; 4 uses
  %i.bx = fsub nsz float %i.bt, %i.bw
  br i1 %.not253.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = fcmp nsz oge float %i.bs, 0.000000e+00
  %i.bz = fneg nsz float %i.bw
  %i.ca = select nsz i1 %i.by, float %i.bw, float %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bq
  store float %i.ca, ptr %i.cb, align 4, !tbaa !80
  %.pre55 = load float, ptr %i.bu, align 4, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cc = phi float [ %.pre55, %bb.g ], [ %i.bv, %bb.f ]
  %i.cd = fcmp nsz une float %i.cc, 0.000000e+00
  %i.ce = zext i1 %i.cd to i32
  %spec.select.i.1 = add nuw nsw i32 %spec.select.i, %i.ce
  %i.cf = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bx, i64 1 ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.bp, i64 1
  %i.cj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cg, <2 x float> %i.ci)
  %i.ck = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ck ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !80 ; 2 uses
  %i.cn = tail call nsz float @llvm.fabs.f32(float %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !80 ; 2 uses
  %i.cq = fmul nsz float %i.h, %i.cp              ; 4 uses
  %i.cr = fsub nsz float %i.cn, %i.cq
  br i1 %.not253.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = fcmp nsz oge float %i.cm, 0.000000e+00
  %i.ct = fneg nsz float %i.cq
  %i.cu = select nsz i1 %i.cs, float %i.cq, float %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck
  store float %i.cu, ptr %i.cv, align 4, !tbaa !80
  %.pre56 = load float, ptr %i.co, align 4, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cw = phi float [ %.pre56, %bb.i ], [ %i.cp, %bb.h ]
  %i.cx = fcmp nsz une float %i.cw, 0.000000e+00
  %i.cy = zext i1 %i.cx to i32
  %spec.select.i.2 = add nuw nsw i32 %spec.select.i.1, %i.cy
  %i.cz = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cr, i64 1 ; 2 uses
  %i.db = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.da, <2 x float> %i.cj) ; 2 uses
  %i.dc = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dc ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !80 ; 2 uses
  %i.df = tail call nsz float @llvm.fabs.f32(float %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !80 ; 2 uses
  %i.di = fmul nsz float %i.h, %i.dh              ; 5 uses
  %i.dj = fsub nsz float %i.df, %i.di             ; 2 uses
  br i1 %.not253.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = fcmp nsz oge float %i.de, 0.000000e+00
  %i.dl = fneg nsz float %i.di
  %i.dm = select nsz i1 %i.dk, float %i.di, float %i.dl
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dc
  store float %i.dm, ptr %i.dn, align 4, !tbaa !80
  %.pre57 = load float, ptr %i.dg, align 4, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.do = phi float [ %.pre57, %bb.k ], [ %i.dh, %bb.j ]
  %i.dp = fcmp nsz une float %i.do, 0.000000e+00
  %i.dq = zext i1 %i.dp to i32
  %spec.select.i.3 = add nuw nsw i32 %spec.select.i.2, %i.dq ; 2 uses
  %i.dr = extractelement <2 x float> %i.db, i64 0
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dr) ; 2 uses
  %i.dt = extractelement <2 x float> %i.db, i64 1
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.dt)
  %i.dv = uitofp nneg i32 %spec.select.i.3 to float
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.du, float %8, float %i.dv)
  %i.dx = fadd nsz float %.1227.i38, %i.dw        ; 3 uses
  %i.dy = add nuw nsw i32 %spec.select.i.3, %.0220.i40 ; 2 uses
  %i.dz = fcmp nsz ult float %i.dx, %9
  br i1 %i.dz, label %bb.m, label %quantize_and_encode_band_cost_template.exit

bb.m:                                             ; preds = %bb.l
  br i1 %.not247.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = load i8, ptr %i.av, align 1, !tbaa !73
  %i.eb = zext i8 %i.ea to i32                    ; 5 uses
  %i.ec = load ptr, ptr %i.ab, align 8, !tbaa !106
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.au
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !96
  %i.ef = zext i16 %i.ee to i32                   ; 3 uses
  %i.eg = load i32, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.eh = load i32, ptr %i.ac, align 4, !tbaa !99 ; 5 uses
  %i.ei = icmp sgt i32 %i.eh, %i.eb
  br i1 %i.ei, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ej = shl i32 %i.eg, %i.eb
  %i.ek = or i32 %i.ej, %i.ef
  %i.el = sub nuw nsw i32 %i.eh, %i.eb
  br label %put_bits.exit

bb.p:                                             ; preds = %bb.n
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.en = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ugt i64 %i.eq, 3
  br i1 %i.er, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.es = shl i32 %i.eg, %i.eh
  %i.et = sub nsw i32 %i.eb, %i.eh
  %i.eu = lshr i32 %i.ef, %i.et
  %i.ev = or i32 %i.eu, %i.es
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  store i32 %i.ew, ptr %i.en, align 1, !tbaa !73
  %i.ex = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.ey, ptr %i.ae, align 8, !tbaa !101
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %reass.sub = sub i32 %i.eh, %i.eb
  %i.ez = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.o, %bb.s
  %i.fa = phi i32 [ %i.ek, %bb.o ], [ %i.ef, %bb.s ] ; 4 uses
  %i.fb = phi i32 [ %i.el, %bb.o ], [ %i.ez, %bb.s ] ; 6 uses
  store i32 %i.fa, ptr %1, align 8, !tbaa !98
  store i32 %i.fb, ptr %i.ac, align 4, !tbaa !99
  %i.fc = load float, ptr %i.ba, align 4, !tbaa !80
  %i.fd = fcmp nsz une float %i.fc, 0.000000e+00
  br i1 %i.fd, label %bb.t, label %bb.y

bb.t:                                             ; preds = %put_bits.exit
  %i.fe = load float, ptr %i.bb, align 4, !tbaa !80
  %i.ff = fcmp nsz olt float %i.fe, 0.000000e+00
  %i.fg = zext i1 %i.ff to i32                    ; 4 uses
  %i.fh = icmp sgt i32 %i.fb, 1
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fi = shl i32 %i.fa, 1
  %i.fj = or disjoint i32 %i.fi, %i.fg
  br label %put_bits.exit14

bb.v:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.fl = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = icmp ugt i64 %i.fo, 3
  br i1 %i.fp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fq = shl i32 %i.fa, %i.fb
  %i.fr = sub nsw i32 1, %i.fb
  %i.fs = lshr i32 %i.fg, %i.fr
  %i.ft = or i32 %i.fs, %i.fq
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %i.ft)
  store i32 %i.fu, ptr %i.fl, align 1, !tbaa !73
  %i.fv = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store ptr %i.fw, ptr %i.ae, align 8, !tbaa !101
  br label %put_bits.exit14

bb.x:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit14

put_bits.exit14:                                  ; preds = %bb.w, %bb.x, %bb.u
  %.sink = phi i32 [ -1, %bb.u ], [ 31, %bb.x ], [ 31, %bb.w ]
  %.026.i.i12 = phi i32 [ %i.fj, %bb.u ], [ %i.fg, %bb.x ], [ %i.fg, %bb.w ] ; 2 uses
  %i.fx = add nsw i32 %i.fb, %.sink               ; 2 uses
  store i32 %.026.i.i12, ptr %1, align 8, !tbaa !98
  store i32 %i.fx, ptr %i.ac, align 4, !tbaa !99
  br label %bb.y

bb.y:                                             ; preds = %put_bits.exit14, %put_bits.exit
  %i.fy = phi i32 [ %i.fx, %put_bits.exit14 ], [ %i.fb, %put_bits.exit ] ; 5 uses
  %i.fz = phi i32 [ %.026.i.i12, %put_bits.exit14 ], [ %i.fa, %put_bits.exit ] ; 3 uses
  %i.ga = getelementptr [4 x i8], ptr %i.aa, i64 %i.az
  %i.gb = getelementptr i8, ptr %i.ga, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !80
  %i.gd = fcmp nsz une float %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ge = load float, ptr %i.br, align 4, !tbaa !80
  %i.gf = fcmp nsz olt float %i.ge, 0.000000e+00
  %i.gg = zext i1 %i.gf to i32                    ; 4 uses
  %i.gh = icmp sgt i32 %i.fy, 1
  br i1 %i.gh, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gi = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.gj = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = icmp ugt i64 %i.gm, 3
  br i1 %i.gn, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit14.1

bb.ac:                                            ; preds = %bb.aa
  %i.go = shl i32 %i.fz, %i.fy
  %i.gp = sub nsw i32 1, %i.fy
  %i.gq = lshr i32 %i.gg, %i.gp
  %i.gr = or i32 %i.gq, %i.go
  %i.gs = tail call i32 @llvm.bswap.i32(i32 %i.gr)
  store i32 %i.gs, ptr %i.gj, align 1, !tbaa !73
  %i.gt = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store ptr %i.gu, ptr %i.ae, align 8, !tbaa !101
  br label %put_bits.exit14.1

bb.ad:                                            ; preds = %bb.z
  %i.gv = shl i32 %i.fz, 1
  %i.gw = or disjoint i32 %i.gv, %i.gg
  br label %put_bits.exit14.1

put_bits.exit14.1:                                ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sink82 = phi i32 [ -1, %bb.ad ], [ 31, %bb.ac ], [ 31, %bb.ab ]
  %.026.i.i12.1 = phi i32 [ %i.gw, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.gg, %bb.ab ] ; 2 uses
  %i.gx = add nsw i32 %i.fy, %.sink82             ; 2 uses
  store i32 %.026.i.i12.1, ptr %1, align 8, !tbaa !98
  store i32 %i.gx, ptr %i.ac, align 4, !tbaa !99
  br label %bb.ae

bb.ae:                                            ; preds = %put_bits.exit14.1, %bb.y
  %i.gy = phi i32 [ %i.gx, %put_bits.exit14.1 ], [ %i.fy, %bb.y ] ; 5 uses
  %i.gz = phi i32 [ %.026.i.i12.1, %put_bits.exit14.1 ], [ %i.fz, %bb.y ] ; 3 uses
  %i.ha = getelementptr [4 x i8], ptr %i.aa, i64 %i.az
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !80
  %i.hd = fcmp nsz une float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.he = load float, ptr %i.cl, align 4, !tbaa !80
  %i.hf = fcmp nsz olt float %i.he, 0.000000e+00
  %i.hg = zext i1 %i.hf to i32                    ; 4 uses
  %i.hh = icmp sgt i32 %i.gy, 1
  br i1 %i.hh, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.hj = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp ugt i64 %i.hm, 3
  br i1 %i.hn, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit14.2

bb.ai:                                            ; preds = %bb.ag
  %i.ho = shl i32 %i.gz, %i.gy
  %i.hp = sub nsw i32 1, %i.gy
  %i.hq = lshr i32 %i.hg, %i.hp
  %i.hr = or i32 %i.hq, %i.ho
  %i.hs = tail call i32 @llvm.bswap.i32(i32 %i.hr)
end_hunk_4
begin_hunk_5_@quantize_and_encode_band_cost_SPAIR:bb.a
  %i.cs = load i32, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.ct = load i32, ptr %i.ac, align 4, !tbaa !99 ; 5 uses
  %i.cu = icmp sgt i32 %i.ct, %i.cn
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cv = shl i32 %i.cs, %i.cn
  %i.cw = or i32 %i.cv, %i.cr
  %i.cx = sub nuw nsw i32 %i.ct, %i.cn
  br label %put_bits.exit

bb.h:                                             ; preds = %bb.f
  %i.cy = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.cz = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp ugt i64 %i.dc, 3
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = shl i32 %i.cs, %i.ct
  %i.df = sub nsw i32 %i.cn, %i.ct
  %i.dg = lshr i32 %i.cr, %i.df
  %i.dh = or i32 %i.dg, %i.de
  %i.di = tail call i32 @llvm.bswap.i32(i32 %i.dh)
  store i32 %i.di, ptr %i.cz, align 1, !tbaa !73
  %i.dj = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store ptr %i.dk, ptr %i.ae, align 8, !tbaa !101
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %reass.sub = sub i32 %i.ct, %i.cn
  %i.dl = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.g, %bb.k
  %.026.i.i = phi i32 [ %i.cw, %bb.g ], [ %i.cr, %bb.k ]
  %.0.i.i = phi i32 [ %i.cx, %bb.g ], [ %i.dl, %bb.k ]
  store i32 %.026.i.i, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i, ptr %i.ac, align 4, !tbaa !99
  br label %bb.l

bb.l:                                             ; preds = %put_bits.exit, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dm = trunc nuw i64 %indvars.iv.next to i32
  %.not249.i = icmp sgt i32 %5, %i.dm
  %i.dn = extractelement <2 x float> %i.cf, i64 1 ; 2 uses
  br i1 %.not249.i, label %bb.d, label %.thread13, !llvm.loop !8

.thread13:                                        ; preds = %bb.l, %bb.c
  %.1227.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.cj, %bb.l ] ; 2 uses
  %.0222.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dn, %bb.l ]
  %.0220.i.lcssa = phi i32 [ 0, %bb.c ], [ %i.ck, %bb.l ]
  %.not250.i = icmp eq ptr %10, null
  br i1 %.not250.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread13
  store i32 %.0220.i.lcssa, ptr %10, align 4, !tbaa !82
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread13
  %.not251.i = icmp eq ptr %11, null
  br i1 %.not251.i, label %quantize_and_encode_band_cost_template.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store float %.0222.i.lcssa, ptr %11, align 4, !tbaa !80
  br label %quantize_and_encode_band_cost_template.exit

quantize_and_encode_band_cost_template.exit:      ; preds = %.split30.us, %bb.n, %bb.o
  %.3.i = phi nsz float [ %.1227.i.lcssa, %bb.n ], [ %.1227.i.lcssa, %bb.o ], [ %9, %.split30.us ]
  ret float %.3.i
}

; Function Attrs: nounwind uwtable
define internal float @quantize_and_encode_band_cost_UPAIR(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) #0 {
bb.a:
  %i.a = sub i32 304, %6
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !80
  %i.e = sext i32 %6 to i64
  %i.f = getelementptr [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 384
  %i.h = load float, ptr %i.g, align 4, !tbaa !80 ; 2 uses
  %.not244.i = icmp eq ptr %4, null
  br i1 %.not244.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 567080
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 38688 ; 2 uses
  tail call void %i.j(ptr noundef nonnull %i.k, ptr noundef %2, i32 noundef %5) #13, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0198.i = phi ptr [ %4, %bb.a ], [ %i.k, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 567088
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 38304 ; 2 uses
  %i.o = sext i32 %7 to i64                       ; 2 uses
  %i.p = getelementptr inbounds i8, ptr @aac_cb_maxval, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !73
  %i.r = zext i8 %i.q to i32
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef %2, ptr noundef nonnull %.0198.i, i32 noundef %5, i32 noundef 0, i32 noundef %i.r, float noundef %i.d, float noundef 4.054000e-01) #13, !inline_history !7
  %.not249.i37 = icmp sgt i32 %5, 0
  br i1 %.not249.i37, label %.lr.ph, label %.thread19

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr @aac_cb_range, i64 %i.o
  %i.t = load i8, ptr %i.s, align 1, !tbaa !73
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %7, -1
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds [8 x i8], ptr @ff_aac_spectral_bits, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = getelementptr inbounds [8 x i8], ptr @ff_aac_codebook_vectors, i64 %i.w
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %.not253.i = icmp eq ptr %3, null               ; 2 uses
  %.not247.i = icmp eq ptr %1, null
  %i.ab = getelementptr inbounds [8 x i8], ptr @ff_aac_spectral_codes, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.af = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 5 uses
  %.0220.i40 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %.thread ]
  %.0222.i39 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bx, %.thread ]
  %.1227.i38 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cb, %.thread ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !82
  %i.ai = mul nsw i32 %i.ah, %i.u
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !82
  %i.al = add nsw i32 %i.ai, %i.ak                ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.y, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !73
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl i32 %i.al, 1
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !80 ; 2 uses
  %i.av = tail call nsz float @llvm.fabs.f32(float %i.au)
  %i.aw = load float, ptr %i.as, align 4, !tbaa !80 ; 2 uses
  %i.ax = fmul nsz float %i.h, %i.aw              ; 5 uses
  %i.ay = fsub nsz float %i.av, %i.ax             ; 2 uses
  br i1 %.not253.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = fcmp nsz oge float %i.au, 0.000000e+00
  %i.ba = fneg nsz float %i.ax
  %i.bb = select nsz i1 %i.az, float %i.ax, float %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bb, ptr %i.bc, align 4, !tbaa !80
  %.pre = load float, ptr %i.as, align 4, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bd = phi float [ %.pre, %bb.e ], [ %i.aw, %bb.d ]
  %i.be = fcmp nsz une float %i.bd, 0.000000e+00
  %i.bf = zext i1 %i.be to i32
  %spec.select.i = add nuw nsw i32 %i.ap, %i.bf
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %.0222.i39)
  %i.bh = fmul nsz float %i.ay, %i.ay
  %i.bi = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !80 ; 2 uses
  %i.bl = tail call nsz float @llvm.fabs.f32(float %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !80 ; 2 uses
  %i.bo = fmul nsz float %i.h, %i.bn              ; 5 uses
  %i.bp = fsub nsz float %i.bl, %i.bo             ; 2 uses
  br i1 %.not253.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = fcmp nsz oge float %i.bk, 0.000000e+00
  %i.br = fneg nsz float %i.bo
  %i.bs = select nsz i1 %i.bq, float %i.bo, float %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bi
  store float %i.bs, ptr %i.bt, align 4, !tbaa !80
  %.pre55 = load float, ptr %i.bm, align 4, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bu = phi float [ %.pre55, %bb.g ], [ %i.bn, %bb.f ]
  %i.bv = fcmp nsz une float %i.bu, 0.000000e+00
  %i.bw = zext i1 %i.bv to i32
  %spec.select.i.1 = add nuw nsw i32 %spec.select.i, %i.bw ; 2 uses
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bg) ; 2 uses
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bh)
  %i.bz = uitofp nneg i32 %spec.select.i.1 to float
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %8, float %i.bz)
  %i.cb = fadd nsz float %.1227.i38, %i.ca        ; 3 uses
  %i.cc = add nuw nsw i32 %spec.select.i.1, %.0220.i40 ; 2 uses
  %i.cd = fcmp nsz ult float %i.cb, %9
  br i1 %i.cd, label %bb.i, label %quantize_and_encode_band_cost_template.exit

bb.i:                                             ; preds = %bb.h
  br i1 %.not247.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load i8, ptr %i.an, align 1, !tbaa !73
  %i.cf = zext i8 %i.ce to i32                    ; 5 uses
  %i.cg = load ptr, ptr %i.ab, align 8, !tbaa !106
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.am
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !96
  %i.cj = zext i16 %i.ci to i32                   ; 3 uses
  %i.ck = load i32, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.cl = load i32, ptr %i.ac, align 4, !tbaa !99 ; 5 uses
  %i.cm = icmp sgt i32 %i.cl, %i.cf
  br i1 %i.cm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cn = shl i32 %i.ck, %i.cf
  %i.co = or i32 %i.cn, %i.cj
  %i.cp = sub nuw nsw i32 %i.cl, %i.cf
  br label %put_bits.exit

bb.l:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.cr = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp ugt i64 %i.cu, 3
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = shl i32 %i.ck, %i.cl
  %i.cx = sub nsw i32 %i.cf, %i.cl
  %i.cy = lshr i32 %i.cj, %i.cx
  %i.cz = or i32 %i.cy, %i.cw
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %i.cr, align 1, !tbaa !73
  %i.db = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.dc, ptr %i.ae, align 8, !tbaa !101
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %reass.sub = sub i32 %i.cl, %i.cf
  %i.dd = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.k, %bb.o
  %i.de = phi i32 [ %i.co, %bb.k ], [ %i.cj, %bb.o ] ; 4 uses
  %i.df = phi i32 [ %i.cp, %bb.k ], [ %i.dd, %bb.o ] ; 6 uses
  store i32 %i.de, ptr %1, align 8, !tbaa !98
  store i32 %i.df, ptr %i.ac, align 4, !tbaa !99
  %i.dg = load float, ptr %i.as, align 4, !tbaa !80
  %i.dh = fcmp nsz une float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.p, label %bb.u

bb.p:                                             ; preds = %put_bits.exit
  %i.di = load float, ptr %i.at, align 4, !tbaa !80
  %i.dj = fcmp nsz olt float %i.di, 0.000000e+00
  %i.dk = zext i1 %i.dj to i32                    ; 4 uses
  %i.dl = icmp sgt i32 %i.df, 1
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = shl i32 %i.de, 1
  %i.dn = or disjoint i32 %i.dm, %i.dk
  br label %put_bits.exit14

bb.r:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.dp = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp ugt i64 %i.ds, 3
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.du = shl i32 %i.de, %i.df
  %i.dv = sub nsw i32 1, %i.df
  %i.dw = lshr i32 %i.dk, %i.dv
  %i.dx = or i32 %i.dw, %i.du
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  store i32 %i.dy, ptr %i.dp, align 1, !tbaa !73
  %i.dz = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store ptr %i.ea, ptr %i.ae, align 8, !tbaa !101
  br label %put_bits.exit14

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit14

put_bits.exit14:                                  ; preds = %bb.s, %bb.t, %bb.q
  %.sink = phi i32 [ -1, %bb.q ], [ 31, %bb.t ], [ 31, %bb.s ]
  %.026.i.i12 = phi i32 [ %i.dn, %bb.q ], [ %i.dk, %bb.t ], [ %i.dk, %bb.s ] ; 2 uses
  %i.eb = add nsw i32 %i.df, %.sink               ; 2 uses
  store i32 %.026.i.i12, ptr %1, align 8, !tbaa !98
  store i32 %i.eb, ptr %i.ac, align 4, !tbaa !99
  br label %bb.u

bb.u:                                             ; preds = %put_bits.exit14, %put_bits.exit
  %i.ec = phi i32 [ %i.eb, %put_bits.exit14 ], [ %i.df, %put_bits.exit ] ; 4 uses
  %i.ed = phi i32 [ %.026.i.i12, %put_bits.exit14 ], [ %i.de, %put_bits.exit ] ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.aa, i64 %i.ar
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !80
  %i.eh = fcmp nsz une float %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ei = load float, ptr %i.bj, align 4, !tbaa !80
  %i.ej = fcmp nsz olt float %i.ei, 0.000000e+00
  %i.ek = zext i1 %i.ej to i32                    ; 4 uses
  %i.el = icmp sgt i32 %i.ec, 1
  br i1 %i.el, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.en = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ugt i64 %i.eq, 3
  br i1 %i.er, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit14.1

bb.y:                                             ; preds = %bb.w
  %i.es = shl i32 %i.ed, %i.ec
  %i.et = sub nsw i32 1, %i.ec
  %i.eu = lshr i32 %i.ek, %i.et
  %i.ev = or i32 %i.eu, %i.es
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  store i32 %i.ew, ptr %i.en, align 1, !tbaa !73
  %i.ex = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.ey, ptr %i.ae, align 8, !tbaa !101
  br label %put_bits.exit14.1

bb.z:                                             ; preds = %bb.v
  %i.ez = shl i32 %i.ed, 1
  %i.fa = or disjoint i32 %i.ez, %i.ek
  br label %put_bits.exit14.1

put_bits.exit14.1:                                ; preds = %bb.x, %bb.y, %bb.z
  %.sink76 = phi i32 [ -1, %bb.z ], [ 31, %bb.y ], [ 31, %bb.x ]
  %.026.i.i12.1 = phi i32 [ %i.fa, %bb.z ], [ %i.ek, %bb.y ], [ %i.ek, %bb.x ]
  %i.fb = add nsw i32 %i.ec, %.sink76
  store i32 %.026.i.i12.1, ptr %1, align 8, !tbaa !98
  store i32 %i.fb, ptr %i.ac, align 4, !tbaa !99
  br label %.thread

.thread:                                          ; preds = %bb.u, %put_bits.exit14.1, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not249.i = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %.not249.i, label %bb.d, label %.thread19, !llvm.loop !8

.thread19:                                        ; preds = %.thread, %bb.c
  %.1227.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.cb, %.thread ] ; 2 uses
  %.0222.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.bx, %.thread ]
  %.0220.i.lcssa = phi i32 [ 0, %bb.c ], [ %i.cc, %.thread ]
  %.not250.i = icmp eq ptr %10, null
  br i1 %.not250.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread19
  store i32 %.0220.i.lcssa, ptr %10, align 4, !tbaa !82
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread19
  %.not251.i = icmp eq ptr %11, null
  br i1 %.not251.i, label %quantize_and_encode_band_cost_template.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store float %.0222.i.lcssa, ptr %11, align 4, !tbaa !80
  br label %quantize_and_encode_band_cost_template.exit

quantize_and_encode_band_cost_template.exit:      ; preds = %bb.h, %bb.ab, %bb.ac
  %.3.i = phi nsz float [ %.1227.i.lcssa, %bb.ab ], [ %.1227.i.lcssa, %bb.ac ], [ %9, %bb.h ]
  ret float %.3.i
}

; Function Attrs: nounwind uwtable
define internal float @quantize_and_encode_band_cost_ESC(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 %7, float noundef %8, float noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) #0 {
bb.a:
  %i.a = sub i32 304, %6
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !80 ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.b
  %i.f = load float, ptr %i.e, align 4, !tbaa !80
  %i.g = sext i32 %6 to i64
  %i.h = getelementptr [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 384
  %i.j = load float, ptr %i.i, align 4, !tbaa !80 ; 5 uses
  %i.k = fmul nsz float %i.j, 1.651400e+05        ; 4 uses
  %.not244.i = icmp eq ptr %4, null
  br i1 %.not244.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 567080
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 38688 ; 2 uses
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef %2, i32 noundef %5) #13, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0198.i = phi ptr [ %4, %bb.a ], [ %i.n, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 567088
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 38304 ; 2 uses
  tail call void %i.p(ptr noundef nonnull %i.q, ptr noundef %2, ptr noundef nonnull %.0198.i, i32 noundef %5, i32 noundef 0, i32 noundef 16, float noundef %i.f, float noundef 4.054000e-01) #13, !inline_history !7
  %.not249.i55 = icmp sgt i32 %5, 0
  br i1 %.not249.i55, label %.lr.ph, label %.thread34

.lr.ph:                                           ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_spectral_bits, i64 80), align 16, !tbaa !97
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_codebook_vectors, i64 80), align 8, !tbaa !105 ; 2 uses
  %.not253.i = icmp eq ptr %3, null               ; 2 uses
  %.not247.i = icmp eq ptr %1, null
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_spectral_codes, i64 80), align 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.x = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 5 uses
  %.0220.i58 = phi i32 [ 0, %.lr.ph ], [ %i.do, %.thread ]
  %.0222.i57 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dj, %.thread ]
  %.1227.i56 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dn, %.thread ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82
  %i.aa = mul nsw i32 %i.z, 17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.ad = add nsw i32 %i.ac, %i.aa                ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !73
  %i.ah = zext i8 %i.ag to i32                    ; 3 uses
  %i.ai = shl i32 %i.ad, 1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aj ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !80 ; 2 uses
  %i.an = tail call nsz float @llvm.fabs.f32(float %i.am) ; 3 uses
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !80 ; 3 uses
  %i.ap = fcmp nsz oeq float %i.ao, 6.400000e+01
  br i1 %i.ap, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aq = fcmp nsz ult float %i.an, %i.k
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = add nuw nsw i32 %i.ah, 21
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.as = fmul nsz float %i.d, %i.an              ; 2 uses
  %i.at = tail call nsz float @llvm.sqrt.f32(float %i.as)
  %i.au = fmul nsz float %i.as, %i.at
  %i.av = tail call nsz float @llvm.sqrt.f32(float %i.au)
  %i.aw = fadd nsz float %i.av, 4.054000e-01
  %i.ax = fptosi float %i.aw to i32               ; 2 uses
  %12 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  %i.ay = tail call i32 @llvm.umin.i32(i32 %12, i32 8191) ; 3 uses
  %i.az = uitofp nneg i32 %i.ay to float          ; 2 uses
  %i.ba = tail call nsz float @cbrtf(float noundef %i.az) #14
  %i.bb = fmul nsz float %i.ba, %i.az
  %i.bc = fmul nsz float %i.j, %i.bb
  %.not11.i = icmp slt i32 %i.ax, 256             ; 2 uses
  %i.bd = lshr i32 %i.ay, 8
  %.110.i = select i1 %.not11.i, i32 %i.ay, i32 %i.bd
  %.1.i13 = select i1 %.not11.i, i32 0, i32 8
  %i.be = zext nneg i32 %.110.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !73
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %.1.i13, %i.bh
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = add nsw i32 %i.ah, -3
  %i.bl = add nsw i32 %i.bk, %i.bj
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bm = fmul nsz float %i.j, %i.ao
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1209.i = phi i32 [ %i.ar, %bb.f ], [ %i.bl, %bb.g ], [ %i.ah, %bb.h ]
  %.0207.i = phi nsz float [ %i.k, %bb.f ], [ %i.bc, %bb.g ], [ %i.bm, %bb.h ] ; 5 uses
  %i.bn = fsub nsz float %i.an, %.0207.i          ; 2 uses
  br i1 %.not253.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = fcmp nsz oge float %i.am, 0.000000e+00
  %i.bp = fneg nsz float %.0207.i
  %i.bq = select nsz i1 %i.bo, float %.0207.i, float %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bq, ptr %i.br, align 4, !tbaa !80
  %.pre = load float, ptr %i.ak, align 4, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = phi float [ %.pre, %bb.j ], [ %i.ao, %bb.i ]
  %i.bt = fcmp nsz une float %i.bs, 0.000000e+00
  %i.bu = zext i1 %i.bt to i32
  %spec.select.i = add nsw i32 %.1209.i, %i.bu    ; 3 uses
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %.0207.i, float %.0207.i, float %.0222.i57)
  %i.bw = fmul nsz float %i.bn, %i.bn
  %i.bx = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx ; 3 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !80 ; 2 uses
  %i.ca = tail call nsz float @llvm.fabs.f32(float %i.bz) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !80 ; 3 uses
  %i.cd = fcmp nsz oeq float %i.cc, 6.400000e+01
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = fmul nsz float %i.j, %i.cc
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.cf = fcmp nsz ult float %i.ca, %i.k
  br i1 %i.cf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = add nsw i32 %spec.select.i, 21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ch = fmul nsz float %i.d, %i.ca              ; 2 uses
  %i.ci = tail call nsz float @llvm.sqrt.f32(float %i.ch)
  %i.cj = fmul nsz float %i.ch, %i.ci
  %i.ck = tail call nsz float @llvm.sqrt.f32(float %i.cj)
  %i.cl = fadd nsz float %i.ck, 4.054000e-01
  %i.cm = fptosi float %i.cl to i32               ; 2 uses
  %13 = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  %i.cn = tail call i32 @llvm.umin.i32(i32 %13, i32 8191) ; 3 uses
  %i.co = uitofp nneg i32 %i.cn to float          ; 2 uses
  %i.cp = tail call nsz float @cbrtf(float noundef %i.co) #14
  %i.cq = fmul nsz float %i.cp, %i.co
  %i.cr = fmul nsz float %i.j, %i.cq
  %.not11.i.1 = icmp slt i32 %i.cm, 256           ; 2 uses
  %i.cs = lshr i32 %i.cn, 8
  %.110.i.1 = select i1 %.not11.i.1, i32 %i.cn, i32 %i.cs
  %.1.i13.1 = select i1 %.not11.i.1, i32 0, i32 8
  %i.ct = zext nneg i32 %.110.i.1 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !73
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %.1.i13.1, %i.cw
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = add nsw i32 %spec.select.i, -3
  %i.da = add nsw i32 %i.cz, %i.cy
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.1209.i.1 = phi i32 [ %i.cg, %bb.n ], [ %i.da, %bb.o ], [ %spec.select.i, %bb.l ]
  %.0207.i.1 = phi nsz float [ %i.k, %bb.n ], [ %i.cr, %bb.o ], [ %i.ce, %bb.l ] ; 5 uses
  %i.db = fsub nsz float %i.ca, %.0207.i.1        ; 2 uses
  br i1 %.not253.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = fcmp nsz oge float %i.bz, 0.000000e+00
  %i.dd = fneg nsz float %.0207.i.1
  %i.de = select nsz i1 %i.dc, float %.0207.i.1, float %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bx
  store float %i.de, ptr %i.df, align 4, !tbaa !80
  %.pre75 = load float, ptr %i.cb, align 4, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dg = phi float [ %.pre75, %bb.q ], [ %i.cc, %bb.p ]
  %i.dh = fcmp nsz une float %i.dg, 0.000000e+00
  %i.di = zext i1 %i.dh to i32
  %spec.select.i.1 = add nsw i32 %.1209.i.1, %i.di ; 2 uses
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %.0207.i.1, float %.0207.i.1, float %i.bv) ; 2 uses
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.bw)
  %i.dl = sitofp nsz i32 %spec.select.i.1 to float
  %i.dm = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %8, float %i.dl)
  %i.dn = fadd nsz float %.1227.i56, %i.dm        ; 3 uses
  %i.do = add nsw i32 %spec.select.i.1, %.0220.i58 ; 2 uses
  %i.dp = fcmp nsz ult float %i.dn, %9
  br i1 %i.dp, label %bb.s, label %quantize_and_encode_band_cost_template.exit

bb.s:                                             ; preds = %bb.r
  br i1 %.not247.i, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = load i8, ptr %i.af, align 1, !tbaa !73
  %i.dr = zext i8 %i.dq to i32                    ; 5 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ae
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !96
  %i.du = zext i16 %i.dt to i32                   ; 3 uses
  %i.dv = load i32, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.dw = load i32, ptr %i.u, align 4, !tbaa !99  ; 5 uses
  %i.dx = icmp sgt i32 %i.dw, %i.dr
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dy = shl i32 %i.dv, %i.dr
  %i.dz = or i32 %i.dy, %i.du
  %i.ea = sub nuw nsw i32 %i.dw, %i.dr
  br label %put_bits.exit

bb.v:                                             ; preds = %bb.t
  %i.eb = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.ec = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ugt i64 %i.ef, 3
  br i1 %i.eg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eh = shl i32 %i.dv, %i.dw
  %i.ei = sub nsw i32 %i.dr, %i.dw
  %i.ej = lshr i32 %i.du, %i.ei
  %i.ek = or i32 %i.ej, %i.eh
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.ek)
  store i32 %i.el, ptr %i.ec, align 1, !tbaa !73
  %i.em = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.en, ptr %i.w, align 8, !tbaa !101
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %reass.sub = sub i32 %i.dw, %i.dr
  %i.eo = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.u, %bb.y
  %i.ep = phi i32 [ %i.dz, %bb.u ], [ %i.du, %bb.y ] ; 4 uses
  %i.eq = phi i32 [ %i.ea, %bb.u ], [ %i.eo, %bb.y ] ; 6 uses
  store i32 %i.ep, ptr %1, align 8, !tbaa !98
  store i32 %i.eq, ptr %i.u, align 4, !tbaa !99
  %i.er = load float, ptr %i.ak, align 4, !tbaa !80
  %i.es = fcmp nsz une float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %put_bits.exit
  %i.et = load float, ptr %i.al, align 4, !tbaa !80
  %i.eu = fcmp nsz olt float %i.et, 0.000000e+00
  %i.ev = zext i1 %i.eu to i32                    ; 4 uses
  %i.ew = icmp sgt i32 %i.eq, 1
  br i1 %i.ew, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ex = shl i32 %i.ep, 1
  %i.ey = or disjoint i32 %i.ex, %i.ev
  br label %put_bits.exit24

bb.ab:                                            ; preds = %bb.z
  %i.ez = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.fa = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp ugt i64 %i.fd, 3
  br i1 %i.fe, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ff = shl i32 %i.ep, %i.eq
  %i.fg = sub nsw i32 1, %i.eq
  %i.fh = lshr i32 %i.ev, %i.fg
  %i.fi = or i32 %i.fh, %i.ff
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  store i32 %i.fj, ptr %i.fa, align 1, !tbaa !73
  %i.fk = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store ptr %i.fl, ptr %i.w, align 8, !tbaa !101
  br label %put_bits.exit24

bb.ad:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit24

put_bits.exit24:                                  ; preds = %bb.ac, %bb.ad, %bb.aa
  %.sink = phi i32 [ -1, %bb.aa ], [ 31, %bb.ad ], [ 31, %bb.ac ]
  %.026.i.i22 = phi i32 [ %i.ey, %bb.aa ], [ %i.ev, %bb.ad ], [ %i.ev, %bb.ac ] ; 2 uses
  %i.fm = add nsw i32 %i.eq, %.sink               ; 2 uses
  store i32 %.026.i.i22, ptr %1, align 8, !tbaa !98
  store i32 %i.fm, ptr %i.u, align 4, !tbaa !99
  br label %bb.ae

bb.ae:                                            ; preds = %put_bits.exit24, %put_bits.exit
  %i.fn = phi i32 [ %i.fm, %put_bits.exit24 ], [ %i.eq, %put_bits.exit ] ; 5 uses
  %i.fo = phi i32 [ %.026.i.i22, %put_bits.exit24 ], [ %i.ep, %put_bits.exit ] ; 3 uses
  %i.fp = getelementptr [4 x i8], ptr %i.s, i64 %i.aj
  %i.fq = getelementptr i8, ptr %i.fp, i64 4      ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !80
  %i.fs = fcmp nsz une float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.af, label %.preheader.preheader

bb.af:                                            ; preds = %bb.ae
  %i.ft = load float, ptr %i.by, align 4, !tbaa !80
  %i.fu = fcmp nsz olt float %i.ft, 0.000000e+00
  %i.fv = zext i1 %i.fu to i32                    ; 4 uses
  %i.fw = icmp sgt i32 %i.fn, 1
  br i1 %i.fw, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fx = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.fy = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = icmp ugt i64 %i.gb, 3
  br i1 %i.gc, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit24.1

bb.ai:                                            ; preds = %bb.ag
  %i.gd = shl i32 %i.fo, %i.fn
  %i.ge = sub nsw i32 1, %i.fn
  %i.gf = lshr i32 %i.fv, %i.ge
  %i.gg = or i32 %i.gf, %i.gd
  %i.gh = tail call i32 @llvm.bswap.i32(i32 %i.gg)
  store i32 %i.gh, ptr %i.fy, align 1, !tbaa !73
  %i.gi = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store ptr %i.gj, ptr %i.w, align 8, !tbaa !101
  br label %put_bits.exit24.1

bb.aj:                                            ; preds = %bb.af
  %i.gk = shl i32 %i.fo, 1
  %i.gl = or disjoint i32 %i.gk, %i.fv
  br label %put_bits.exit24.1

put_bits.exit24.1:                                ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sink115 = phi i32 [ -1, %bb.aj ], [ 31, %bb.ai ], [ 31, %bb.ah ]
  %.026.i.i22.1 = phi i32 [ %i.gl, %bb.aj ], [ %i.fv, %bb.ai ], [ %i.fv, %bb.ah ] ; 2 uses
  %i.gm = add nsw i32 %i.fn, %.sink115            ; 2 uses
  store i32 %.026.i.i22.1, ptr %1, align 8, !tbaa !98
  store i32 %i.gm, ptr %i.u, align 4, !tbaa !99
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %put_bits.exit24.1, %bb.ae
  %i.gn = phi i32 [ %i.gm, %put_bits.exit24.1 ], [ %i.fn, %bb.ae ] ; 6 uses
  %i.go = phi i32 [ %.026.i.i22.1, %put_bits.exit24.1 ], [ %i.fo, %bb.ae ] ; 3 uses
  %i.gp = load float, ptr %i.ak, align 4, !tbaa !80
  %i.gq = fcmp nsz oeq float %i.gp, 6.400000e+01
  br i1 %i.gq, label %bb.ak, label %.preheader.1

bb.ak:                                            ; preds = %.preheader.preheader
  %i.gr = load float, ptr %i.al, align 4, !tbaa !80
  %i.gs = tail call nsz float @llvm.fabs.f32(float %i.gr)
  %i.gt = fmul nsz float %i.d, %i.gs              ; 2 uses
  %i.gu = tail call nsz float @llvm.sqrt.f32(float %i.gt)
  %i.gv = fmul nsz float %i.gt, %i.gu
  %i.gw = tail call nsz float @llvm.sqrt.f32(float %i.gv)
  %i.gx = fadd nsz float %i.gw, 4.054000e-01
  %i.gy = fptosi float %i.gx to i32               ; 2 uses
  %i.gz = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 16)
  %i.ha = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 8191) ; 3 uses
  %.not11.i17 = icmp slt i32 %i.gy, 256           ; 2 uses
  %i.hb = lshr i32 %i.ha, 8
  %.110.i18 = select i1 %.not11.i17, i32 %i.ha, i32 %i.hb
  %.1.i19 = select i1 %.not11.i17, i32 0, i32 8
  %i.hc = zext nneg i32 %.110.i18 to i64
  %i.hd = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !73
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nuw nsw i32 %.1.i19, %i.hf          ; 8 uses
  %i.hh = add nsw i32 %i.hg, -3                   ; 5 uses
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = add nsw i32 %i.hi, -2                   ; 3 uses
  %i.hk = icmp slt i32 %i.hh, %i.gn
  br i1 %i.hk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hl = shl i32 %i.go, %i.hh
  %i.hm = or i32 %i.hj, %i.hl
  %i.hn = sub nsw i32 %i.gn, %i.hh
  br label %put_bits.exit28

bb.am:                                            ; preds = %bb.ak
  %i.ho = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.hp = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = icmp ugt i64 %i.hs, 3
  br i1 %i.ht, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hu = shl i32 %i.go, %i.gn
  %i.hv = sub nsw i32 %i.hh, %i.gn
  %i.hw = lshr i32 %i.hj, %i.hv
  %i.hx = or i32 %i.hw, %i.hu
  %i.hy = tail call i32 @llvm.bswap.i32(i32 %i.hx)
  store i32 %i.hy, ptr %i.hp, align 1, !tbaa !73
  %i.hz = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store ptr %i.ia, ptr %i.w, align 8, !tbaa !101
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ib = sub i32 %i.gn, %i.hg
  %i.ic = add i32 %i.ib, 35
  br label %put_bits.exit28

put_bits.exit28:                                  ; preds = %bb.al, %bb.ap
  %.026.i.i26 = phi i32 [ %i.hm, %bb.al ], [ %i.hj, %bb.ap ] ; 3 uses
  %.0.i.i27 = phi i32 [ %i.hn, %bb.al ], [ %i.ic, %bb.ap ] ; 6 uses
  store i32 %.026.i.i26, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i27, ptr %i.u, align 4, !tbaa !99
  %notmask.i.i = shl nsw i32 -1, %i.hg
  %i.id = xor i32 %notmask.i.i, -1
  %i.ie = and i32 %i.ha, %i.id                    ; 3 uses
  %i.if = icmp slt i32 %i.hg, %.0.i.i27
  br i1 %i.if, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %put_bits.exit28
  %i.ig = shl i32 %.026.i.i26, %i.hg
  %i.ih = or i32 %i.ig, %i.ie
  %i.ii = sub nuw nsw i32 %.0.i.i27, %i.hg
  br label %put_sbits.exit

bb.ar:                                            ; preds = %put_bits.exit28
  %i.ij = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.ik = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = icmp ugt i64 %i.in, 3
  br i1 %i.io, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ip = shl i32 %.026.i.i26, %.0.i.i27
  %i.iq = sub nsw i32 %i.hg, %.0.i.i27
  %i.ir = lshr i32 %i.ie, %i.iq
  %i.is = or i32 %i.ir, %i.ip
  %i.it = tail call i32 @llvm.bswap.i32(i32 %i.is)
  store i32 %i.it, ptr %i.ik, align 1, !tbaa !73
  %i.iu = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store ptr %i.iv, ptr %i.w, align 8, !tbaa !101
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %reass.sub62 = sub i32 %.0.i.i27, %i.hg
  %i.iw = add i32 %reass.sub62, 32
  br label %put_sbits.exit

put_sbits.exit:                                   ; preds = %bb.aq, %bb.au
  %.026.i.i.i = phi i32 [ %i.ih, %bb.aq ], [ %i.ie, %bb.au ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.ii, %bb.aq ], [ %i.iw, %bb.au ] ; 2 uses
  store i32 %.026.i.i.i, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i.i, ptr %i.u, align 4, !tbaa !99
  br label %.preheader.1

.preheader.1:                                     ; preds = %put_sbits.exit, %.preheader.preheader
  %i.ix = phi i32 [ %.0.i.i.i, %put_sbits.exit ], [ %i.gn, %.preheader.preheader ] ; 5 uses
  %i.iy = phi i32 [ %.026.i.i.i, %put_sbits.exit ], [ %i.go, %.preheader.preheader ] ; 2 uses
  %i.iz = load float, ptr %i.fq, align 4, !tbaa !80
  %i.ja = fcmp nsz oeq float %i.iz, 6.400000e+01
  br i1 %i.ja, label %bb.av, label %.thread

bb.av:                                            ; preds = %.preheader.1
  %i.jb = load float, ptr %i.by, align 4, !tbaa !80
  %i.jc = tail call nsz float @llvm.fabs.f32(float %i.jb)
  %i.jd = fmul nsz float %i.d, %i.jc              ; 2 uses
  %i.je = tail call nsz float @llvm.sqrt.f32(float %i.jd)
  %i.jf = fmul nsz float %i.jd, %i.je
  %i.jg = tail call nsz float @llvm.sqrt.f32(float %i.jf)
  %i.jh = fadd nsz float %i.jg, 4.054000e-01
  %i.ji = fptosi float %i.jh to i32               ; 2 uses
  %i.jj = tail call i32 @llvm.smax.i32(i32 %i.ji, i32 16)
  %i.jk = tail call i32 @llvm.umin.i32(i32 %i.jj, i32 8191) ; 3 uses
  %.not11.i17.1 = icmp slt i32 %i.ji, 256         ; 2 uses
  %i.jl = lshr i32 %i.jk, 8
  %.110.i18.1 = select i1 %.not11.i17.1, i32 %i.jk, i32 %i.jl
  %.1.i19.1 = select i1 %.not11.i17.1, i32 0, i32 8
  %i.jm = zext nneg i32 %.110.i18.1 to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !73
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nuw nsw i32 %.1.i19.1, %i.jp        ; 8 uses
  %i.jr = add nsw i32 %i.jq, -3                   ; 5 uses
  %i.js = shl nuw i32 1, %i.jr
  %i.jt = add nsw i32 %i.js, -2                   ; 3 uses
  %i.ju = icmp slt i32 %i.jr, %i.ix
  br i1 %i.ju, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jv = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.jw = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = icmp ugt i64 %i.jz, 3
  br i1 %i.ka, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.kb = shl i32 %i.iy, %i.ix
  %i.kc = sub nsw i32 %i.jr, %i.ix
  %i.kd = lshr i32 %i.jt, %i.kc
  %i.ke = or i32 %i.kd, %i.kb
  %i.kf = tail call i32 @llvm.bswap.i32(i32 %i.ke)
  store i32 %i.kf, ptr %i.jw, align 1, !tbaa !73
  %i.kg = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store ptr %i.kh, ptr %i.w, align 8, !tbaa !101
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ki = sub i32 %i.ix, %i.jq
  %i.kj = add i32 %i.ki, 35
  br label %put_bits.exit28.1

bb.ba:                                            ; preds = %bb.av
  %i.kk = shl i32 %i.iy, %i.jr
  %i.kl = or i32 %i.jt, %i.kk
  %i.km = sub nsw i32 %i.ix, %i.jr
  br label %put_bits.exit28.1

put_bits.exit28.1:                                ; preds = %bb.ba, %bb.az
  %.026.i.i26.1 = phi i32 [ %i.kl, %bb.ba ], [ %i.jt, %bb.az ] ; 3 uses
  %.0.i.i27.1 = phi i32 [ %i.km, %bb.ba ], [ %i.kj, %bb.az ] ; 6 uses
  store i32 %.026.i.i26.1, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i27.1, ptr %i.u, align 4, !tbaa !99
  %notmask.i.i.1 = shl nsw i32 -1, %i.jq
  %i.kn = xor i32 %notmask.i.i.1, -1
  %i.ko = and i32 %i.jk, %i.kn                    ; 3 uses
  %i.kp = icmp slt i32 %i.jq, %.0.i.i27.1
  br i1 %i.kp, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %put_bits.exit28.1
  %i.kq = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.kr = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = icmp ugt i64 %i.ku, 3
  br i1 %i.kv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.kw = shl i32 %.026.i.i26.1, %.0.i.i27.1
  %i.kx = sub nsw i32 %i.jq, %.0.i.i27.1
  %i.ky = lshr i32 %i.ko, %i.kx
  %i.kz = or i32 %i.ky, %i.kw
  %i.la = tail call i32 @llvm.bswap.i32(i32 %i.kz)
  store i32 %i.la, ptr %i.kr, align 1, !tbaa !73
  %i.lb = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store ptr %i.lc, ptr %i.w, align 8, !tbaa !101
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %reass.sub62.1 = sub i32 %.0.i.i27.1, %i.jq
  %i.ld = add i32 %reass.sub62.1, 32
  br label %put_sbits.exit.1

bb.bf:                                            ; preds = %put_bits.exit28.1
  %i.le = shl i32 %.026.i.i26.1, %i.jq
  %i.lf = or i32 %i.le, %i.ko
  %i.lg = sub nuw nsw i32 %.0.i.i27.1, %i.jq
  br label %put_sbits.exit.1

put_sbits.exit.1:                                 ; preds = %bb.bf, %bb.be
  %.026.i.i.i.1 = phi i32 [ %i.lf, %bb.bf ], [ %i.ko, %bb.be ]
  %.0.i.i.i.1 = phi i32 [ %i.lg, %bb.bf ], [ %i.ld, %bb.be ]
  store i32 %.026.i.i.i.1, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i.i.1, ptr %i.u, align 4, !tbaa !99
  br label %.thread

.thread:                                          ; preds = %.preheader.1, %put_sbits.exit.1, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not249.i = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %.not249.i, label %bb.d, label %.thread34, !llvm.loop !8

.thread34:                                        ; preds = %.thread, %bb.c
  %.1227.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dn, %.thread ] ; 2 uses
  %.0222.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dj, %.thread ]
  %.0220.i.lcssa = phi i32 [ 0, %bb.c ], [ %i.do, %.thread ]
  %.not250.i = icmp eq ptr %10, null
  br i1 %.not250.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.thread34
  store i32 %.0220.i.lcssa, ptr %10, align 4, !tbaa !82
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread34
  %.not251.i = icmp eq ptr %11, null
  br i1 %.not251.i, label %quantize_and_encode_band_cost_template.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store float %.0222.i.lcssa, ptr %11, align 4, !tbaa !80
  br label %quantize_and_encode_band_cost_template.exit

quantize_and_encode_band_cost_template.exit:      ; preds = %bb.r, %bb.bh, %bb.bi
  %.3.i = phi nsz float [ %.1227.i.lcssa, %bb.bh ], [ %.1227.i.lcssa, %bb.bi ], [ %9, %bb.r ]
  ret float %.3.i
}

; Function Attrs: cold inlinehint noreturn nounwind uwtable
define internal noundef float @quantize_and_encode_band_cost_NONE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6, i32 %7, float %8, float %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11) #5 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 199) #13
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal float @quantize_and_encode_band_cost_NOISE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree readnone captures(none) %4, i32 noundef %5, i32 %6, i32 %7, float noundef %8, float %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) #3 {
bb.a:
  %i.a = icmp sgt i32 %5, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %5, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0226.i12.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0226.i12.epil = phi float [ %.0226.i12.epil.init, %.lr.ph.epil.preheader ], [ %i.e, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil
  %i.d = load float, ptr %i.c, align 4, !tbaa !80 ; 2 uses
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.d, float %.0226.i12.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !223

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0226.i.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ]
  %.not254.i = icmp eq ptr %10, null
  br i1 %.not254.i, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0226.i12 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.g = load float, ptr %i.f, align 4, !tbaa !80 ; 2 uses
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %i.g, float %.0226.i12)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !80 ; 2 uses
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.h)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !80 ; 2 uses
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.l)
end_hunk_5
begin_hunk_6_@quantize_and_encode_band_cost_STEREO:bb.a
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil
  %i.d = load float, ptr %i.c, align 4, !tbaa !80 ; 2 uses
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.d, float %.0226.i12.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !224

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0226.i.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ]
  %.not254.i = icmp eq ptr %10, null
  br i1 %.not254.i, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0226.i12 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.g = load float, ptr %i.f, align 4, !tbaa !80 ; 2 uses
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %i.g, float %.0226.i12)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !80 ; 2 uses
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.h)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !80 ; 2 uses
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.l)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !80 ; 2 uses
  %i.t = tail call nsz float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.p) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

bb.b:                                             ; preds = %._crit_edge
  store i32 0, ptr %10, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.not255.i = icmp eq ptr %11, null
  br i1 %.not255.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %11, align 4, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not256.i = icmp ne ptr %3, null
  %or.cond = and i1 %.not256.i, %i.a
  br i1 %or.cond, label %.preheader.preheader, label %quantize_and_encode_band_cost_template.exit

.preheader.preheader:                             ; preds = %bb.e
  %i.u = add nsw i32 %5, -1
  %i.v = lshr i32 %i.u, 2
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = add nuw nsw i64 %i.x, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 0, i64 %i.y, i1 false), !tbaa !80
  br label %quantize_and_encode_band_cost_template.exit

quantize_and_encode_band_cost_template.exit:      ; preds = %.preheader.preheader, %bb.e
  %i.z = fmul nsz float %8, %.0226.i.lcssa
  ret float %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare void @ff_quantize_band_cost_cache_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #7

; Function Attrs: nounwind uwtable
define internal float @quantize_and_encode_band_cost_ESC_RTZ(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 %7, float noundef %8, float noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) #0 {
bb.a:
  %i.a = sub i32 304, %6
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !80 ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.b
  %i.f = load float, ptr %i.e, align 4, !tbaa !80
  %i.g = sext i32 %6 to i64
  %i.h = getelementptr [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 384
  %i.j = load float, ptr %i.i, align 4, !tbaa !80 ; 5 uses
  %i.k = fmul nsz float %i.j, 1.651400e+05        ; 4 uses
  %.not244.i = icmp eq ptr %4, null
  br i1 %.not244.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 567080
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 38688 ; 2 uses
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef %2, i32 noundef %5) #13, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0198.i = phi ptr [ %4, %bb.a ], [ %i.n, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 567088
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 38304 ; 2 uses
  tail call void %i.p(ptr noundef nonnull %i.q, ptr noundef %2, ptr noundef nonnull %.0198.i, i32 noundef %5, i32 noundef 0, i32 noundef 16, float noundef %i.f, float noundef 1.054000e-01) #13, !inline_history !7
  %.not249.i55 = icmp sgt i32 %5, 0
  br i1 %.not249.i55, label %.lr.ph, label %.thread34

.lr.ph:                                           ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_spectral_bits, i64 80), align 16, !tbaa !97
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_codebook_vectors, i64 80), align 8, !tbaa !105 ; 2 uses
  %.not253.i = icmp eq ptr %3, null               ; 2 uses
  %.not247.i = icmp eq ptr %1, null
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_spectral_codes, i64 80), align 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.x = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 5 uses
  %.0220.i58 = phi i32 [ 0, %.lr.ph ], [ %i.do, %.thread ]
  %.0222.i57 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dj, %.thread ]
  %.1227.i56 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dn, %.thread ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82
  %i.aa = mul nsw i32 %i.z, 17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.ad = add nsw i32 %i.ac, %i.aa                ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !73
  %i.ah = zext i8 %i.ag to i32                    ; 3 uses
  %i.ai = shl i32 %i.ad, 1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aj ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !80 ; 2 uses
  %i.an = tail call nsz float @llvm.fabs.f32(float %i.am) ; 3 uses
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !80 ; 3 uses
  %i.ap = fcmp nsz oeq float %i.ao, 6.400000e+01
  br i1 %i.ap, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aq = fcmp nsz ult float %i.an, %i.k
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = add nuw nsw i32 %i.ah, 21
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.as = fmul nsz float %i.d, %i.an              ; 2 uses
  %i.at = tail call nsz float @llvm.sqrt.f32(float %i.as)
  %i.au = fmul nsz float %i.as, %i.at
  %i.av = tail call nsz float @llvm.sqrt.f32(float %i.au)
  %i.aw = fadd nsz float %i.av, 1.054000e-01
  %i.ax = fptosi float %i.aw to i32               ; 2 uses
  %12 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  %i.ay = tail call i32 @llvm.umin.i32(i32 %12, i32 8191) ; 3 uses
  %i.az = uitofp nneg i32 %i.ay to float          ; 2 uses
  %i.ba = tail call nsz float @cbrtf(float noundef %i.az) #14
  %i.bb = fmul nsz float %i.ba, %i.az
  %i.bc = fmul nsz float %i.j, %i.bb
  %.not11.i = icmp slt i32 %i.ax, 256             ; 2 uses
  %i.bd = lshr i32 %i.ay, 8
  %.110.i = select i1 %.not11.i, i32 %i.ay, i32 %i.bd
  %.1.i13 = select i1 %.not11.i, i32 0, i32 8
  %i.be = zext nneg i32 %.110.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !73
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %.1.i13, %i.bh
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = add nsw i32 %i.ah, -3
  %i.bl = add nsw i32 %i.bk, %i.bj
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bm = fmul nsz float %i.j, %i.ao
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1209.i = phi i32 [ %i.ar, %bb.f ], [ %i.bl, %bb.g ], [ %i.ah, %bb.h ]
  %.0207.i = phi nsz float [ %i.k, %bb.f ], [ %i.bc, %bb.g ], [ %i.bm, %bb.h ] ; 5 uses
  %i.bn = fsub nsz float %i.an, %.0207.i          ; 2 uses
  br i1 %.not253.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = fcmp nsz oge float %i.am, 0.000000e+00
  %i.bp = fneg nsz float %.0207.i
  %i.bq = select nsz i1 %i.bo, float %.0207.i, float %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bq, ptr %i.br, align 4, !tbaa !80
  %.pre = load float, ptr %i.ak, align 4, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = phi float [ %.pre, %bb.j ], [ %i.ao, %bb.i ]
  %i.bt = fcmp nsz une float %i.bs, 0.000000e+00
  %i.bu = zext i1 %i.bt to i32
  %spec.select.i = add nsw i32 %.1209.i, %i.bu    ; 3 uses
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %.0207.i, float %.0207.i, float %.0222.i57)
  %i.bw = fmul nsz float %i.bn, %i.bn
  %i.bx = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx ; 3 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !80 ; 2 uses
  %i.ca = tail call nsz float @llvm.fabs.f32(float %i.bz) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !80 ; 3 uses
  %i.cd = fcmp nsz oeq float %i.cc, 6.400000e+01
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = fmul nsz float %i.j, %i.cc
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.cf = fcmp nsz ult float %i.ca, %i.k
  br i1 %i.cf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = add nsw i32 %spec.select.i, 21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ch = fmul nsz float %i.d, %i.ca              ; 2 uses
  %i.ci = tail call nsz float @llvm.sqrt.f32(float %i.ch)
  %i.cj = fmul nsz float %i.ch, %i.ci
  %i.ck = tail call nsz float @llvm.sqrt.f32(float %i.cj)
  %i.cl = fadd nsz float %i.ck, 1.054000e-01
  %i.cm = fptosi float %i.cl to i32               ; 2 uses
  %13 = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  %i.cn = tail call i32 @llvm.umin.i32(i32 %13, i32 8191) ; 3 uses
  %i.co = uitofp nneg i32 %i.cn to float          ; 2 uses
  %i.cp = tail call nsz float @cbrtf(float noundef %i.co) #14
  %i.cq = fmul nsz float %i.cp, %i.co
  %i.cr = fmul nsz float %i.j, %i.cq
  %.not11.i.1 = icmp slt i32 %i.cm, 256           ; 2 uses
  %i.cs = lshr i32 %i.cn, 8
  %.110.i.1 = select i1 %.not11.i.1, i32 %i.cn, i32 %i.cs
  %.1.i13.1 = select i1 %.not11.i.1, i32 0, i32 8
  %i.ct = zext nneg i32 %.110.i.1 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !73
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %.1.i13.1, %i.cw
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = add nsw i32 %spec.select.i, -3
  %i.da = add nsw i32 %i.cz, %i.cy
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.1209.i.1 = phi i32 [ %i.cg, %bb.n ], [ %i.da, %bb.o ], [ %spec.select.i, %bb.l ]
  %.0207.i.1 = phi nsz float [ %i.k, %bb.n ], [ %i.cr, %bb.o ], [ %i.ce, %bb.l ] ; 5 uses
  %i.db = fsub nsz float %i.ca, %.0207.i.1        ; 2 uses
  br i1 %.not253.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = fcmp nsz oge float %i.bz, 0.000000e+00
  %i.dd = fneg nsz float %.0207.i.1
  %i.de = select nsz i1 %i.dc, float %.0207.i.1, float %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bx
  store float %i.de, ptr %i.df, align 4, !tbaa !80
  %.pre75 = load float, ptr %i.cb, align 4, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dg = phi float [ %.pre75, %bb.q ], [ %i.cc, %bb.p ]
  %i.dh = fcmp nsz une float %i.dg, 0.000000e+00
  %i.di = zext i1 %i.dh to i32
  %spec.select.i.1 = add nsw i32 %.1209.i.1, %i.di ; 2 uses
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %.0207.i.1, float %.0207.i.1, float %i.bv) ; 2 uses
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.bw)
  %i.dl = sitofp nsz i32 %spec.select.i.1 to float
  %i.dm = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %8, float %i.dl)
  %i.dn = fadd nsz float %.1227.i56, %i.dm        ; 3 uses
  %i.do = add nsw i32 %spec.select.i.1, %.0220.i58 ; 2 uses
  %i.dp = fcmp nsz ult float %i.dn, %9
  br i1 %i.dp, label %bb.s, label %quantize_and_encode_band_cost_template.exit

bb.s:                                             ; preds = %bb.r
  br i1 %.not247.i, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = load i8, ptr %i.af, align 1, !tbaa !73
  %i.dr = zext i8 %i.dq to i32                    ; 5 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ae
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !96
  %i.du = zext i16 %i.dt to i32                   ; 3 uses
  %i.dv = load i32, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.dw = load i32, ptr %i.u, align 4, !tbaa !99  ; 5 uses
  %i.dx = icmp sgt i32 %i.dw, %i.dr
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dy = shl i32 %i.dv, %i.dr
  %i.dz = or i32 %i.dy, %i.du
  %i.ea = sub nuw nsw i32 %i.dw, %i.dr
  br label %put_bits.exit

bb.v:                                             ; preds = %bb.t
  %i.eb = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.ec = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ugt i64 %i.ef, 3
  br i1 %i.eg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eh = shl i32 %i.dv, %i.dw
  %i.ei = sub nsw i32 %i.dr, %i.dw
  %i.ej = lshr i32 %i.du, %i.ei
  %i.ek = or i32 %i.ej, %i.eh
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.ek)
  store i32 %i.el, ptr %i.ec, align 1, !tbaa !73
  %i.em = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.en, ptr %i.w, align 8, !tbaa !101
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %reass.sub = sub i32 %i.dw, %i.dr
  %i.eo = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.u, %bb.y
  %i.ep = phi i32 [ %i.dz, %bb.u ], [ %i.du, %bb.y ] ; 4 uses
  %i.eq = phi i32 [ %i.ea, %bb.u ], [ %i.eo, %bb.y ] ; 6 uses
  store i32 %i.ep, ptr %1, align 8, !tbaa !98
  store i32 %i.eq, ptr %i.u, align 4, !tbaa !99
  %i.er = load float, ptr %i.ak, align 4, !tbaa !80
  %i.es = fcmp nsz une float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %put_bits.exit
  %i.et = load float, ptr %i.al, align 4, !tbaa !80
  %i.eu = fcmp nsz olt float %i.et, 0.000000e+00
  %i.ev = zext i1 %i.eu to i32                    ; 4 uses
  %i.ew = icmp sgt i32 %i.eq, 1
  br i1 %i.ew, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ex = shl i32 %i.ep, 1
  %i.ey = or disjoint i32 %i.ex, %i.ev
  br label %put_bits.exit24

bb.ab:                                            ; preds = %bb.z
  %i.ez = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.fa = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp ugt i64 %i.fd, 3
  br i1 %i.fe, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ff = shl i32 %i.ep, %i.eq
  %i.fg = sub nsw i32 1, %i.eq
  %i.fh = lshr i32 %i.ev, %i.fg
  %i.fi = or i32 %i.fh, %i.ff
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  store i32 %i.fj, ptr %i.fa, align 1, !tbaa !73
  %i.fk = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store ptr %i.fl, ptr %i.w, align 8, !tbaa !101
  br label %put_bits.exit24

bb.ad:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit24

put_bits.exit24:                                  ; preds = %bb.ac, %bb.ad, %bb.aa
  %.sink = phi i32 [ -1, %bb.aa ], [ 31, %bb.ad ], [ 31, %bb.ac ]
  %.026.i.i22 = phi i32 [ %i.ey, %bb.aa ], [ %i.ev, %bb.ad ], [ %i.ev, %bb.ac ] ; 2 uses
  %i.fm = add nsw i32 %i.eq, %.sink               ; 2 uses
  store i32 %.026.i.i22, ptr %1, align 8, !tbaa !98
  store i32 %i.fm, ptr %i.u, align 4, !tbaa !99
  br label %bb.ae

bb.ae:                                            ; preds = %put_bits.exit24, %put_bits.exit
  %i.fn = phi i32 [ %i.fm, %put_bits.exit24 ], [ %i.eq, %put_bits.exit ] ; 5 uses
  %i.fo = phi i32 [ %.026.i.i22, %put_bits.exit24 ], [ %i.ep, %put_bits.exit ] ; 3 uses
  %i.fp = getelementptr [4 x i8], ptr %i.s, i64 %i.aj
  %i.fq = getelementptr i8, ptr %i.fp, i64 4      ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !80
  %i.fs = fcmp nsz une float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.af, label %.preheader.preheader

bb.af:                                            ; preds = %bb.ae
  %i.ft = load float, ptr %i.by, align 4, !tbaa !80
  %i.fu = fcmp nsz olt float %i.ft, 0.000000e+00
  %i.fv = zext i1 %i.fu to i32                    ; 4 uses
  %i.fw = icmp sgt i32 %i.fn, 1
  br i1 %i.fw, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fx = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.fy = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = icmp ugt i64 %i.gb, 3
  br i1 %i.gc, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit24.1

bb.ai:                                            ; preds = %bb.ag
  %i.gd = shl i32 %i.fo, %i.fn
  %i.ge = sub nsw i32 1, %i.fn
  %i.gf = lshr i32 %i.fv, %i.ge
  %i.gg = or i32 %i.gf, %i.gd
  %i.gh = tail call i32 @llvm.bswap.i32(i32 %i.gg)
  store i32 %i.gh, ptr %i.fy, align 1, !tbaa !73
  %i.gi = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store ptr %i.gj, ptr %i.w, align 8, !tbaa !101
  br label %put_bits.exit24.1

bb.aj:                                            ; preds = %bb.af
  %i.gk = shl i32 %i.fo, 1
  %i.gl = or disjoint i32 %i.gk, %i.fv
  br label %put_bits.exit24.1

put_bits.exit24.1:                                ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sink115 = phi i32 [ -1, %bb.aj ], [ 31, %bb.ai ], [ 31, %bb.ah ]
  %.026.i.i22.1 = phi i32 [ %i.gl, %bb.aj ], [ %i.fv, %bb.ai ], [ %i.fv, %bb.ah ] ; 2 uses
  %i.gm = add nsw i32 %i.fn, %.sink115            ; 2 uses
  store i32 %.026.i.i22.1, ptr %1, align 8, !tbaa !98
  store i32 %i.gm, ptr %i.u, align 4, !tbaa !99
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %put_bits.exit24.1, %bb.ae
  %i.gn = phi i32 [ %i.gm, %put_bits.exit24.1 ], [ %i.fn, %bb.ae ] ; 6 uses
  %i.go = phi i32 [ %.026.i.i22.1, %put_bits.exit24.1 ], [ %i.fo, %bb.ae ] ; 3 uses
  %i.gp = load float, ptr %i.ak, align 4, !tbaa !80
  %i.gq = fcmp nsz oeq float %i.gp, 6.400000e+01
  br i1 %i.gq, label %bb.ak, label %.preheader.1

bb.ak:                                            ; preds = %.preheader.preheader
  %i.gr = load float, ptr %i.al, align 4, !tbaa !80
  %i.gs = tail call nsz float @llvm.fabs.f32(float %i.gr)
  %i.gt = fmul nsz float %i.d, %i.gs              ; 2 uses
  %i.gu = tail call nsz float @llvm.sqrt.f32(float %i.gt)
  %i.gv = fmul nsz float %i.gt, %i.gu
  %i.gw = tail call nsz float @llvm.sqrt.f32(float %i.gv)
  %i.gx = fadd nsz float %i.gw, 1.054000e-01
  %i.gy = fptosi float %i.gx to i32               ; 2 uses
  %i.gz = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 16)
  %i.ha = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 8191) ; 3 uses
  %.not11.i17 = icmp slt i32 %i.gy, 256           ; 2 uses
  %i.hb = lshr i32 %i.ha, 8
  %.110.i18 = select i1 %.not11.i17, i32 %i.ha, i32 %i.hb
  %.1.i19 = select i1 %.not11.i17, i32 0, i32 8
  %i.hc = zext nneg i32 %.110.i18 to i64
  %i.hd = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !73
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nuw nsw i32 %.1.i19, %i.hf          ; 8 uses
  %i.hh = add nsw i32 %i.hg, -3                   ; 5 uses
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = add nsw i32 %i.hi, -2                   ; 3 uses
  %i.hk = icmp slt i32 %i.hh, %i.gn
  br i1 %i.hk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hl = shl i32 %i.go, %i.hh
  %i.hm = or i32 %i.hj, %i.hl
  %i.hn = sub nsw i32 %i.gn, %i.hh
  br label %put_bits.exit28

bb.am:                                            ; preds = %bb.ak
  %i.ho = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.hp = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = icmp ugt i64 %i.hs, 3
  br i1 %i.ht, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hu = shl i32 %i.go, %i.gn
  %i.hv = sub nsw i32 %i.hh, %i.gn
  %i.hw = lshr i32 %i.hj, %i.hv
  %i.hx = or i32 %i.hw, %i.hu
  %i.hy = tail call i32 @llvm.bswap.i32(i32 %i.hx)
  store i32 %i.hy, ptr %i.hp, align 1, !tbaa !73
  %i.hz = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store ptr %i.ia, ptr %i.w, align 8, !tbaa !101
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ib = sub i32 %i.gn, %i.hg
  %i.ic = add i32 %i.ib, 35
  br label %put_bits.exit28

put_bits.exit28:                                  ; preds = %bb.al, %bb.ap
  %.026.i.i26 = phi i32 [ %i.hm, %bb.al ], [ %i.hj, %bb.ap ] ; 3 uses
  %.0.i.i27 = phi i32 [ %i.hn, %bb.al ], [ %i.ic, %bb.ap ] ; 6 uses
  store i32 %.026.i.i26, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i27, ptr %i.u, align 4, !tbaa !99
  %notmask.i.i = shl nsw i32 -1, %i.hg
  %i.id = xor i32 %notmask.i.i, -1
  %i.ie = and i32 %i.ha, %i.id                    ; 3 uses
  %i.if = icmp slt i32 %i.hg, %.0.i.i27
  br i1 %i.if, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %put_bits.exit28
  %i.ig = shl i32 %.026.i.i26, %i.hg
  %i.ih = or i32 %i.ig, %i.ie
  %i.ii = sub nuw nsw i32 %.0.i.i27, %i.hg
  br label %put_sbits.exit

bb.ar:                                            ; preds = %put_bits.exit28
  %i.ij = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.ik = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = icmp ugt i64 %i.in, 3
  br i1 %i.io, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ip = shl i32 %.026.i.i26, %.0.i.i27
  %i.iq = sub nsw i32 %i.hg, %.0.i.i27
  %i.ir = lshr i32 %i.ie, %i.iq
  %i.is = or i32 %i.ir, %i.ip
  %i.it = tail call i32 @llvm.bswap.i32(i32 %i.is)
  store i32 %i.it, ptr %i.ik, align 1, !tbaa !73
  %i.iu = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store ptr %i.iv, ptr %i.w, align 8, !tbaa !101
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %reass.sub62 = sub i32 %.0.i.i27, %i.hg
  %i.iw = add i32 %reass.sub62, 32
  br label %put_sbits.exit

put_sbits.exit:                                   ; preds = %bb.aq, %bb.au
  %.026.i.i.i = phi i32 [ %i.ih, %bb.aq ], [ %i.ie, %bb.au ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.ii, %bb.aq ], [ %i.iw, %bb.au ] ; 2 uses
  store i32 %.026.i.i.i, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i.i, ptr %i.u, align 4, !tbaa !99
  br label %.preheader.1

.preheader.1:                                     ; preds = %put_sbits.exit, %.preheader.preheader
  %i.ix = phi i32 [ %.0.i.i.i, %put_sbits.exit ], [ %i.gn, %.preheader.preheader ] ; 5 uses
  %i.iy = phi i32 [ %.026.i.i.i, %put_sbits.exit ], [ %i.go, %.preheader.preheader ] ; 2 uses
  %i.iz = load float, ptr %i.fq, align 4, !tbaa !80
  %i.ja = fcmp nsz oeq float %i.iz, 6.400000e+01
  br i1 %i.ja, label %bb.av, label %.thread

bb.av:                                            ; preds = %.preheader.1
  %i.jb = load float, ptr %i.by, align 4, !tbaa !80
  %i.jc = tail call nsz float @llvm.fabs.f32(float %i.jb)
  %i.jd = fmul nsz float %i.d, %i.jc              ; 2 uses
  %i.je = tail call nsz float @llvm.sqrt.f32(float %i.jd)
  %i.jf = fmul nsz float %i.jd, %i.je
  %i.jg = tail call nsz float @llvm.sqrt.f32(float %i.jf)
  %i.jh = fadd nsz float %i.jg, 1.054000e-01
  %i.ji = fptosi float %i.jh to i32               ; 2 uses
  %i.jj = tail call i32 @llvm.smax.i32(i32 %i.ji, i32 16)
  %i.jk = tail call i32 @llvm.umin.i32(i32 %i.jj, i32 8191) ; 3 uses
  %.not11.i17.1 = icmp slt i32 %i.ji, 256         ; 2 uses
  %i.jl = lshr i32 %i.jk, 8
  %.110.i18.1 = select i1 %.not11.i17.1, i32 %i.jk, i32 %i.jl
  %.1.i19.1 = select i1 %.not11.i17.1, i32 0, i32 8
  %i.jm = zext nneg i32 %.110.i18.1 to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !73
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nuw nsw i32 %.1.i19.1, %i.jp        ; 8 uses
  %i.jr = add nsw i32 %i.jq, -3                   ; 5 uses
  %i.js = shl nuw i32 1, %i.jr
  %i.jt = add nsw i32 %i.js, -2                   ; 3 uses
  %i.ju = icmp slt i32 %i.jr, %i.ix
  br i1 %i.ju, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jv = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.jw = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = icmp ugt i64 %i.jz, 3
  br i1 %i.ka, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.kb = shl i32 %i.iy, %i.ix
  %i.kc = sub nsw i32 %i.jr, %i.ix
  %i.kd = lshr i32 %i.jt, %i.kc
  %i.ke = or i32 %i.kd, %i.kb
  %i.kf = tail call i32 @llvm.bswap.i32(i32 %i.ke)
  store i32 %i.kf, ptr %i.jw, align 1, !tbaa !73
  %i.kg = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store ptr %i.kh, ptr %i.w, align 8, !tbaa !101
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ki = sub i32 %i.ix, %i.jq
  %i.kj = add i32 %i.ki, 35
  br label %put_bits.exit28.1

bb.ba:                                            ; preds = %bb.av
  %i.kk = shl i32 %i.iy, %i.jr
  %i.kl = or i32 %i.jt, %i.kk
  %i.km = sub nsw i32 %i.ix, %i.jr
  br label %put_bits.exit28.1

put_bits.exit28.1:                                ; preds = %bb.ba, %bb.az
  %.026.i.i26.1 = phi i32 [ %i.kl, %bb.ba ], [ %i.jt, %bb.az ] ; 3 uses
  %.0.i.i27.1 = phi i32 [ %i.km, %bb.ba ], [ %i.kj, %bb.az ] ; 6 uses
  store i32 %.026.i.i26.1, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i27.1, ptr %i.u, align 4, !tbaa !99
  %notmask.i.i.1 = shl nsw i32 -1, %i.jq
  %i.kn = xor i32 %notmask.i.i.1, -1
  %i.ko = and i32 %i.jk, %i.kn                    ; 3 uses
  %i.kp = icmp slt i32 %i.jq, %.0.i.i27.1
  br i1 %i.kp, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %put_bits.exit28.1
  %i.kq = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.kr = load ptr, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = icmp ugt i64 %i.ku, 3
  br i1 %i.kv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.kw = shl i32 %.026.i.i26.1, %.0.i.i27.1
  %i.kx = sub nsw i32 %i.jq, %.0.i.i27.1
  %i.ky = lshr i32 %i.ko, %i.kx
  %i.kz = or i32 %i.ky, %i.kw
  %i.la = tail call i32 @llvm.bswap.i32(i32 %i.kz)
  store i32 %i.la, ptr %i.kr, align 1, !tbaa !73
  %i.lb = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store ptr %i.lc, ptr %i.w, align 8, !tbaa !101
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %reass.sub62.1 = sub i32 %.0.i.i27.1, %i.jq
  %i.ld = add i32 %reass.sub62.1, 32
  br label %put_sbits.exit.1

bb.bf:                                            ; preds = %put_bits.exit28.1
  %i.le = shl i32 %.026.i.i26.1, %i.jq
  %i.lf = or i32 %i.le, %i.ko
  %i.lg = sub nuw nsw i32 %.0.i.i27.1, %i.jq
  br label %put_sbits.exit.1

put_sbits.exit.1:                                 ; preds = %bb.bf, %bb.be
  %.026.i.i.i.1 = phi i32 [ %i.lf, %bb.bf ], [ %i.ko, %bb.be ]
  %.0.i.i.i.1 = phi i32 [ %i.lg, %bb.bf ], [ %i.ld, %bb.be ]
  store i32 %.026.i.i.i.1, ptr %1, align 8, !tbaa !98
  store i32 %.0.i.i.i.1, ptr %i.u, align 4, !tbaa !99
  br label %.thread

.thread:                                          ; preds = %.preheader.1, %put_sbits.exit.1, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not249.i = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %.not249.i, label %bb.d, label %.thread34, !llvm.loop !8

.thread34:                                        ; preds = %.thread, %bb.c
  %.1227.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dn, %.thread ] ; 2 uses
  %.0222.i.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dj, %.thread ]
  %.0220.i.lcssa = phi i32 [ 0, %bb.c ], [ %i.do, %.thread ]
  %.not250.i = icmp eq ptr %10, null
  br i1 %.not250.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.thread34
  store i32 %.0220.i.lcssa, ptr %10, align 4, !tbaa !82
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread34
  %.not251.i = icmp eq ptr %11, null
  br i1 %.not251.i, label %quantize_and_encode_band_cost_template.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store float %.0222.i.lcssa, ptr %11, align 4, !tbaa !80
  br label %quantize_and_encode_band_cost_template.exit

quantize_and_encode_band_cost_template.exit:      ; preds = %bb.r, %bb.bh, %bb.bi
  %.3.i = phi nsz float [ %.1227.i.lcssa, %bb.bh ], [ %.1227.i.lcssa, %bb.bi ], [ %9, %bb.r ]
  ret float %.3.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint noreturn nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !74}
!1 = distinct !{!1, !74}
!2 = distinct !{null, null, ptr @ff_quantize_and_encode_band_cost}
!3 = distinct !{!3, !74}
!4 = distinct !{!4, !74, !92}
!5 = distinct !{null, ptr @ff_quantize_and_encode_band_cost}
!6 = distinct !{!6, !74}
end_hunk_6
