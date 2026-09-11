Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/hull?download=true
inline.NumInlined: 35
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2ComputeHull:bb.a
  %i.fn = fsub <2 x float> %.sroa.079.0.copyload.7, %i.fi ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %i.fn           ; 2 uses
  %shift.7 = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7 = fadd <2 x float> %i.fo, %shift.7
  %i.fp = extractelement <2 x float> %foldExtExtBinop.7, i64 0
  %i.fq = fcmp uge float %i.fp, %i.f
  br i1 %i.fq, label %.lr.ph.1.7, label %._crit_edge

.lr.ph.1.7:                                       ; preds = %.lr.ph232.7
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.7 = load <2 x float>, ptr %i.fr, align 4
  %i.fs = fsub <2 x float> %.sroa.079.0.copyload.1.7, %i.fi ; 2 uses
  %i.ft = fmul <2 x float> %i.fs, %i.fs           ; 2 uses
  %shift.1.7 = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1.7 = fadd <2 x float> %i.ft, %shift.1.7
  %i.fu = extractelement <2 x float> %foldExtExtBinop.1.7, i64 0
  %i.fv = fcmp uge float %i.fu, %i.f
  br i1 %i.fv, label %.lr.ph.2.7, label %._crit_edge

.lr.ph.2.7:                                       ; preds = %.lr.ph.1.7
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.7 = load <2 x float>, ptr %i.fw, align 4
  %i.fx = fsub <2 x float> %.sroa.079.0.copyload.2.7, %i.fi ; 2 uses
  %i.fy = fmul <2 x float> %i.fx, %i.fx           ; 2 uses
  %shift.2.7 = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2.7 = fadd <2 x float> %i.fy, %shift.2.7
  %i.fz = extractelement <2 x float> %foldExtExtBinop.2.7, i64 0
  %i.ga = fcmp uge float %i.fz, %i.f
  br i1 %i.ga, label %.lr.ph.3.7, label %._crit_edge

.lr.ph.3.7:                                       ; preds = %.lr.ph.2.7
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.079.0.copyload.3.7 = load <2 x float>, ptr %i.gb, align 4
  %i.gc = fsub <2 x float> %.sroa.079.0.copyload.3.7, %i.fi ; 2 uses
  %i.gd = fmul <2 x float> %i.gc, %i.gc           ; 2 uses
  %shift.3.7 = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3.7 = fadd <2 x float> %i.gd, %shift.3.7
  %i.ge = extractelement <2 x float> %foldExtExtBinop.3.7, i64 0
  %i.gf = fcmp uge float %i.ge, %i.f
  br i1 %i.gf, label %.lr.ph.4.7, label %._crit_edge

.lr.ph.4.7:                                       ; preds = %.lr.ph.3.7
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.079.0.copyload.4.7 = load <2 x float>, ptr %i.gg, align 4
  %i.gh = fsub <2 x float> %.sroa.079.0.copyload.4.7, %i.fi ; 2 uses
  %i.gi = fmul <2 x float> %i.gh, %i.gh           ; 2 uses
  %shift.4.7 = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4.7 = fadd <2 x float> %i.gi, %shift.4.7
  %i.gj = extractelement <2 x float> %foldExtExtBinop.4.7, i64 0
  %i.gk = fcmp uge float %i.gj, %i.f
  br i1 %i.gk, label %.lr.ph.5.7, label %._crit_edge

.lr.ph.5.7:                                       ; preds = %.lr.ph.4.7
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.079.0.copyload.5.7 = load <2 x float>, ptr %i.gl, align 4
  %i.gm = fsub <2 x float> %.sroa.079.0.copyload.5.7, %i.fi ; 2 uses
  %i.gn = fmul <2 x float> %i.gm, %i.gm           ; 2 uses
  %shift.5.7 = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5.7 = fadd <2 x float> %i.gn, %shift.5.7
  %i.go = extractelement <2 x float> %foldExtExtBinop.5.7, i64 0
  %i.gp = fcmp uge float %i.go, %i.f
  br i1 %i.gp, label %.lr.ph.6.7, label %._crit_edge

.lr.ph.6.7:                                       ; preds = %.lr.ph.5.7
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.079.0.copyload.6.7 = load <2 x float>, ptr %i.gq, align 4
  %i.gr = fsub <2 x float> %.sroa.079.0.copyload.6.7, %i.fi ; 2 uses
  %i.gs = fmul <2 x float> %i.gr, %i.gr           ; 2 uses
  %shift.6.7 = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6.7 = fadd <2 x float> %i.gs, %shift.6.7
  %i.gt = extractelement <2 x float> %foldExtExtBinop.6.7, i64 0
  %i.gu = fcmp uge float %i.gt, %i.f
  br i1 %i.gu, label %.critedge.loopexit.7, label %._crit_edge

.critedge.loopexit.7:                             ; preds = %.lr.ph.6.7
  %i.gv = add nsw i32 %.1128.6, 1
  %i.gw = sext i32 %.1128.6 to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gw
  store <2 x float> %i.fi, ptr %i.gx, align 8
  br label %._crit_edge

.new:                                             ; preds = %._crit_edge
  %i.gy = fadd <2 x float> %.lcssa366, %.lcssa365
  %i.gz = fmul <2 x float> %i.gy, splat (float 5.000000e-01) ; 4 uses
  %wide.trip.count = zext nneg i32 %.1128.lcssa to i64
  %i.ha = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ha, 1
  %i.hb = load <2 x float>, ptr %3, align 16
  %i.hc = fsub <2 x float> %i.hb, %i.gz           ; 2 uses
  %i.hd = fmul <2 x float> %i.hc, %i.hc           ; 2 uses
  %shift335 = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop336 = fadd <2 x float> %i.hd, %shift335
  %i.he = extractelement <2 x float> %foldExtExtBinop336, i64 0
  %unroll_iter = and i64 %i.ha, -2
  br label %bb.b

.lr.ph242.preheader.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph242.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph242.preheader.unr-lcssa
  %lcmp.mod397 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod397)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next275.1
  %i.hg = load <2 x float>, ptr %i.hf, align 8
  %i.hh = fsub <2 x float> %i.hg, %i.gz           ; 2 uses
  %i.hi = fmul <2 x float> %i.hh, %i.hh           ; 2 uses
  %shift341.epil = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop342.epil = fadd <2 x float> %i.hi, %shift341.epil
  %i.hj = extractelement <2 x float> %foldExtExtBinop342.epil, i64 0
  %i.hk = fcmp ogt float %i.hj, %.1140.1
  %i.hl = trunc nuw nsw i64 %indvars.iv.next275.1 to i32
  %.1142.epil = select i1 %i.hk, i32 %i.hl, i32 %.1142.1
  br label %.lr.ph242.preheader

.lr.ph242.preheader:                              ; preds = %.lr.ph242.preheader.unr-lcssa, %.epil.preheader
  %.1142.lcssa = phi i32 [ %.1142.1, %.lr.ph242.preheader.unr-lcssa ], [ %.1142.epil, %.epil.preheader ]
  %i.hm = zext nneg i32 %.1142.lcssa to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hm ; 2 uses
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.hn, align 8 ; 9 uses
  %i.ho = add nsw i32 %.1128.lcssa, -1            ; 2 uses
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hp
  %i.hr = load i64, ptr %i.hq, align 8
  store i64 %i.hr, ptr %i.hn, align 8
  %i.hs = load <2 x float>, ptr %3, align 16
  %i.ht = fsub <2 x float> %i.hs, %.sroa.059.0.copyload ; 2 uses
  %i.hu = fmul <2 x float> %i.ht, %i.ht           ; 2 uses
  %shift338 = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop339 = fadd <2 x float> %i.hu, %shift338
  %i.hv = extractelement <2 x float> %foldExtExtBinop339, i64 0 ; 2 uses
  %i.hw = add nsw i64 %i.hp, -1                   ; 3 uses
  %xtraiter398 = and i64 %i.hw, 1
  %i.hx = icmp eq i32 %i.ho, 2
  br i1 %i.hx, label %.lr.ph242.epil.preheader, label %.lr.ph242.preheader.new

.lr.ph242.preheader.new:                          ; preds = %.lr.ph242.preheader
  %unroll_iter402 = and i64 %i.hw, -2
  br label %.lr.ph242

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv274 = phi i64 [ 1, %.new ], [ %indvars.iv.next275.1, %bb.b ] ; 4 uses
  %.0139236 = phi float [ %i.he, %.new ], [ %.1140.1, %bb.b ] ; 2 uses
  %.0141235 = phi i32 [ 0, %.new ], [ %.1142.1, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv274
  %i.hz = load <2 x float>, ptr %i.hy, align 8
  %i.ia = fsub <2 x float> %i.hz, %i.gz           ; 2 uses
  %i.ib = fmul <2 x float> %i.ia, %i.ia           ; 2 uses
  %shift341 = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop342 = fadd <2 x float> %i.ib, %shift341
  %i.ic = extractelement <2 x float> %foldExtExtBinop342, i64 0 ; 2 uses
  %i.id = fcmp ogt float %i.ic, %.0139236         ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv274 to i32
  %.1142 = select i1 %i.id, i32 %i.ie, i32 %.0141235
  %.1140 = select i1 %i.id, float %i.ic, float %.0139236 ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next275
  %i.ig = load <2 x float>, ptr %i.if, align 8
  %i.ih = fsub <2 x float> %i.ig, %i.gz           ; 2 uses
  %i.ii = fmul <2 x float> %i.ih, %i.ih           ; 2 uses
  %shift341.1 = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop342.1 = fadd <2 x float> %i.ii, %shift341.1
  %i.ij = extractelement <2 x float> %foldExtExtBinop342.1, i64 0 ; 2 uses
  %i.ik = fcmp ogt float %i.ij, %.1140            ; 2 uses
  %i.il = trunc nuw nsw i64 %indvars.iv.next275 to i32
  %.1142.1 = select i1 %i.ik, i32 %i.il, i32 %.1142 ; 3 uses
  %.1140.1 = select i1 %i.ik, float %i.ij, float %.1140 ; 2 uses
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph242.preheader.unr-lcssa, label %bb.b, !llvm.loop !11

._crit_edge243.unr-lcssa:                         ; preds = %.lr.ph242
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %._crit_edge243, label %.lr.ph242.epil.preheader

.lr.ph242.epil.preheader:                         ; preds = %._crit_edge243.unr-lcssa, %.lr.ph242.preheader
  %indvars.iv278.epil.init = phi i64 [ 1, %.lr.ph242.preheader ], [ %indvars.iv.next279.1, %._crit_edge243.unr-lcssa ] ; 2 uses
  %.0134239.epil.init = phi float [ %i.hv, %.lr.ph242.preheader ], [ %.1135.1, %._crit_edge243.unr-lcssa ]
  %.0136238.epil.init = phi i32 [ 0, %.lr.ph242.preheader ], [ %.1137.1, %._crit_edge243.unr-lcssa ]
  %lcmp.mod401 = trunc i64 %i.hw to i1
  tail call void @llvm.assume(i1 %lcmp.mod401)
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv278.epil.init
  %i.in = load <2 x float>, ptr %i.im, align 8
  %i.io = fsub <2 x float> %i.in, %.sroa.059.0.copyload ; 2 uses
  %i.ip = fmul <2 x float> %i.io, %i.io           ; 2 uses
  %shift347.epil = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348.epil = fadd <2 x float> %i.ip, %shift347.epil
  %i.iq = extractelement <2 x float> %foldExtExtBinop348.epil, i64 0
  %i.ir = fcmp ogt float %i.iq, %.0134239.epil.init
  %i.is = trunc nuw nsw i64 %indvars.iv278.epil.init to i32
  %.1137.epil = select i1 %i.ir, i32 %i.is, i32 %.0136238.epil.init
  br label %._crit_edge243

._crit_edge243:                                   ; preds = %._crit_edge243.unr-lcssa, %.lr.ph242.epil.preheader
  %.1137.lcssa = phi i32 [ %.1137.1, %._crit_edge243.unr-lcssa ], [ %.1137.epil, %.lr.ph242.epil.preheader ]
  %i.it = zext nneg i32 %.1137.lcssa to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.it ; 2 uses
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.iu, align 8 ; 4 uses
  %i.iv = add nsw i32 %.1128.lcssa, -2
  %i.iw = zext nneg i32 %i.iv to i64              ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8
  store i64 %i.iy, ptr %i.iu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.iz = fsub <2 x float> %.sroa.045.0.copyload, %.sroa.059.0.copyload ; 3 uses
  %i.ja = fmul <2 x float> %i.iz, %i.iz           ; 2 uses
  %shift344 = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop345 = fadd <2 x float> %i.ja, %shift344
  %i.jb = extractelement <2 x float> %foldExtExtBinop345, i64 0 ; 2 uses
  %i.jc = fcmp ogt float %i.jb, f0x057A0000
  br i1 %i.jc, label %bb.c, label %.lr.ph248

bb.c:                                             ; preds = %._crit_edge243
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.jb)
  %i.jd = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.je = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.iz, %i.jf
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.c, %._crit_edge243
  %.sroa.012.0.i = phi <2 x float> [ %i.jh, %bb.c ], [ zeroinitializer, %._crit_edge243 ]
  %i.ji = fmul float %i.d, 2.000000e+00
  %i.jj = fmul float %i.d, -2.000000e+00
  br label %bb.d

.lr.ph242:                                        ; preds = %.lr.ph242, %.lr.ph242.preheader.new
  %indvars.iv278 = phi i64 [ 1, %.lr.ph242.preheader.new ], [ %indvars.iv.next279.1, %.lr.ph242 ] ; 4 uses
  %.0134239 = phi float [ %i.hv, %.lr.ph242.preheader.new ], [ %.1135.1, %.lr.ph242 ] ; 2 uses
  %.0136238 = phi i32 [ 0, %.lr.ph242.preheader.new ], [ %.1137.1, %.lr.ph242 ]
  %niter403 = phi i64 [ 0, %.lr.ph242.preheader.new ], [ %niter403.next.1, %.lr.ph242 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv278
  %i.jl = load <2 x float>, ptr %i.jk, align 8
  %i.jm = fsub <2 x float> %i.jl, %.sroa.059.0.copyload ; 2 uses
  %i.jn = fmul <2 x float> %i.jm, %i.jm           ; 2 uses
  %shift347 = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348 = fadd <2 x float> %i.jn, %shift347
  %i.jo = extractelement <2 x float> %foldExtExtBinop348, i64 0 ; 2 uses
  %i.jp = fcmp ogt float %i.jo, %.0134239         ; 2 uses
  %i.jq = trunc nuw nsw i64 %indvars.iv278 to i32
  %.1137 = select i1 %i.jp, i32 %i.jq, i32 %.0136238
  %.1135 = select i1 %i.jp, float %i.jo, float %.0134239 ; 2 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next279
  %i.js = load <2 x float>, ptr %i.jr, align 8
  %i.jt = fsub <2 x float> %i.js, %.sroa.059.0.copyload ; 2 uses
  %i.ju = fmul <2 x float> %i.jt, %i.jt           ; 2 uses
  %shift347.1 = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348.1 = fadd <2 x float> %i.ju, %shift347.1
  %i.jv = extractelement <2 x float> %foldExtExtBinop348.1, i64 0 ; 2 uses
  %i.jw = fcmp ogt float %i.jv, %.1135            ; 2 uses
  %i.jx = trunc nuw nsw i64 %indvars.iv.next279 to i32
  %.1137.1 = select i1 %i.jw, i32 %i.jx, i32 %.1137 ; 3 uses
  %.1135.1 = select i1 %i.jw, float %i.jv, float %.1135 ; 2 uses
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2 ; 2 uses
  %niter403.next.1 = add nuw i64 %niter403, 2     ; 2 uses
  %niter403.ncmp.1 = icmp eq i64 %niter403.next.1, %unroll_iter402
  br i1 %niter403.ncmp.1, label %._crit_edge243.unr-lcssa, label %.lr.ph242, !llvm.loop !12

._crit_edge249:                                   ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %6, <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.045.0.copyload, ptr noundef %4, i32 noundef %.1132)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %7, <2 x float> %.sroa.045.0.copyload, <2 x float> %.sroa.059.0.copyload, ptr noundef %5, i32 noundef %.1130)
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !10 ; 5 uses
  %i.ka = icmp eq i32 %i.jz, 0
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.kc = load i32, ptr %i.kb, align 4            ; 5 uses
  %i.kd = icmp eq i32 %i.kc, 0
  %or.cond5 = select i1 %i.ka, i1 %i.kd, i1 false
  br i1 %or.cond5, label %bb.l, label %bb.i

bb.d:                                             ; preds = %.lr.ph248, %bb.h
  %indvars.iv283 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next284, %bb.h ] ; 2 uses
  %.0129246 = phi i32 [ 0, %.lr.ph248 ], [ %.1130, %bb.h ] ; 4 uses
  %.0131245 = phi i32 [ 0, %.lr.ph248 ], [ %.1132, %bb.h ] ; 4 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv283
  %i.kf = load <2 x float>, ptr %i.ke, align 8    ; 2 uses
  %i.kg = fsub <2 x float> %i.kf, %.sroa.059.0.copyload
  %i.kh = fmul <2 x float> %.sroa.012.0.i, %i.kg  ; 2 uses
  %shift350 = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop351 = fsub <2 x float> %i.kh, %shift350
  %i.ki = extractelement <2 x float> %foldExtExtBinop351, i64 0 ; 2 uses
  %i.kj = fcmp ult float %i.ki, %i.ji
  br i1 %i.kj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.kk = add nsw i32 %.0131245, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.kl = fcmp ugt float %i.ki, %i.jj
  br i1 %i.kl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.km = add nsw i32 %.0129246, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.0129246.sink = phi i32 [ %.0129246, %bb.g ], [ %.0131245, %bb.e ]
  %.sink320 = phi ptr [ %5, %bb.g ], [ %4, %bb.e ]
  %.1132.ph = phi i32 [ %.0131245, %bb.g ], [ %i.kk, %bb.e ]
  %.1130.ph = phi i32 [ %i.km, %bb.g ], [ %.0129246, %bb.e ]
  %i.kn = sext i32 %.0129246.sink to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %.sink320, i64 %i.kn
  store <2 x float> %i.kf, ptr %i.ko, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.1132 = phi i32 [ %.0131245, %bb.f ], [ %.1132.ph, %.sink.split ] ; 2 uses
  %.1130 = phi i32 [ %.0129246, %bb.f ], [ %.1130.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.iw
  br i1 %exitcond287.not, label %._crit_edge249, label %bb.d, !llvm.loop !13

bb.i:                                             ; preds = %._crit_edge249
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store <2 x float> %.sroa.059.0.copyload, ptr %0, align 4
  %i.kp = icmp sgt i32 %i.jz, 0
  br i1 %i.kp, label %.lr.ph254.preheader, label %._crit_edge255

.lr.ph254.preheader:                              ; preds = %bb.i
  %wide.trip.count291 = zext nneg i32 %i.jz to i64 ; 2 uses
  %xtraiter404 = and i64 %wide.trip.count291, 1
  %i.kq = icmp eq i32 %i.jz, 1
  br i1 %i.kq, label %.lr.ph254.epil.preheader, label %.lr.ph254.preheader.new

.lr.ph254.preheader.new:                          ; preds = %.lr.ph254.preheader
  %unroll_iter407 = and i64 %wide.trip.count291, 2147483646
  br label %.lr.ph254

._crit_edge255.loopexit.unr-lcssa:                ; preds = %.lr.ph254
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %._crit_edge255.loopexit, label %.lr.ph254.epil.preheader

.lr.ph254.epil.preheader:                         ; preds = %._crit_edge255.loopexit.unr-lcssa, %.lr.ph254.preheader
  %indvars.iv288.epil.init = phi i64 [ 0, %.lr.ph254.preheader ], [ %indvars.iv.next289.1, %._crit_edge255.loopexit.unr-lcssa ]
  %lcmp.mod406 = trunc i32 %i.jz to i1
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.kr = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %i.a, align 4, !tbaa !10
  %i.kt = sext i32 %i.kr to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv288.epil.init
  %i.kw = load i64, ptr %i.kv, align 4
  store i64 %i.kw, ptr %i.ku, align 4
  br label %._crit_edge255.loopexit

._crit_edge255.loopexit:                          ; preds = %._crit_edge255.loopexit.unr-lcssa, %.lr.ph254.epil.preheader
  %.pre = load i32, ptr %i.a, align 4, !tbaa !10
  br label %._crit_edge255

._crit_edge255:                                   ; preds = %._crit_edge255.loopexit, %bb.i
  %i.kx = phi i32 [ %.pre, %._crit_edge255.loopexit ], [ 1, %bb.i ] ; 2 uses
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.a, align 4, !tbaa !10
  %i.kz = sext i32 %i.kx to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kz
  store <2 x float> %.sroa.045.0.copyload, ptr %i.la, align 4
  %i.lb = icmp sgt i32 %i.kc, 0
  br i1 %i.lb, label %.lr.ph258.preheader, label %.preheader223

.lr.ph258.preheader:                              ; preds = %._crit_edge255
  %wide.trip.count296 = zext nneg i32 %i.kc to i64 ; 2 uses
  %xtraiter409 = and i64 %wide.trip.count296, 1
  %i.lc = icmp eq i32 %i.kc, 1
  br i1 %i.lc, label %.lr.ph258.epil.preheader, label %.lr.ph258.preheader.new

.lr.ph258.preheader.new:                          ; preds = %.lr.ph258.preheader
  %unroll_iter412 = and i64 %wide.trip.count296, 2147483646
  br label %.lr.ph258

.lr.ph254:                                        ; preds = %.lr.ph254, %.lr.ph254.preheader.new
  %indvars.iv288 = phi i64 [ 0, %.lr.ph254.preheader.new ], [ %indvars.iv.next289.1, %.lr.ph254 ] ; 3 uses
  %niter408 = phi i64 [ 0, %.lr.ph254.preheader.new ], [ %niter408.next.1, %.lr.ph254 ]
  %i.ld = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.a, align 4, !tbaa !10
  %i.lf = sext i32 %i.ld to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lf
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv288
  %i.li = load i64, ptr %i.lh, align 4
  store i64 %i.li, ptr %i.lg, align 4
  %i.lj = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.lk = add nsw i32 %i.lj, 1
  store i32 %i.lk, ptr %i.a, align 4, !tbaa !10
  %i.ll = sext i32 %i.lj to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ll
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv288
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i64, ptr %i.lo, align 4
  store i64 %i.lp, ptr %i.lm, align 4
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %._crit_edge255.loopexit.unr-lcssa, label %.lr.ph254, !llvm.loop !14

.preheader223.loopexit.unr-lcssa:                 ; preds = %.lr.ph258
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %.preheader223, label %.lr.ph258.epil.preheader

.lr.ph258.epil.preheader:                         ; preds = %.preheader223.loopexit.unr-lcssa, %.lr.ph258.preheader
  %indvars.iv293.epil.init = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next294.1, %.preheader223.loopexit.unr-lcssa ]
  %lcmp.mod411 = trunc i32 %i.kc to i1
  tail call void @llvm.assume(i1 %lcmp.mod411)
  %i.lq = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.lr = add nsw i32 %i.lq, 1
  store i32 %i.lr, ptr %i.a, align 4, !tbaa !10
  %i.ls = sext i32 %i.lq to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv293.epil.init
  %i.lv = load i64, ptr %i.lu, align 4
  store i64 %i.lv, ptr %i.lt, align 4
  br label %.preheader223

.preheader223:                                    ; preds = %.lr.ph258.epil.preheader, %.preheader223.loopexit.unr-lcssa, %._crit_edge255
  %i.lw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 2
  br i1 %i.lx, label %.preheader222.lr.ph, label %._crit_edge263.thread

.preheader222.lr.ph:                              ; preds = %.preheader223
  %i.ly = fmul float %i.d, 2.000000e+00
  br label %.preheader222

.lr.ph258:                                        ; preds = %.lr.ph258, %.lr.ph258.preheader.new
  %indvars.iv293 = phi i64 [ 0, %.lr.ph258.preheader.new ], [ %indvars.iv.next294.1, %.lr.ph258 ] ; 3 uses
  %niter413 = phi i64 [ 0, %.lr.ph258.preheader.new ], [ %niter413.next.1, %.lr.ph258 ]
  %i.lz = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.a, align 4, !tbaa !10
  %i.mb = sext i32 %i.lz to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.mb
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv293
  %i.me = load i64, ptr %i.md, align 4
  store i64 %i.me, ptr %i.mc, align 4
  %i.mf = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.a, align 4, !tbaa !10
  %i.mh = sext i32 %i.mf to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv293
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i64, ptr %i.mk, align 4
  store i64 %i.ml, ptr %i.mi, align 4
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293, 2 ; 2 uses
  %niter413.next.1 = add i64 %niter413, 2         ; 2 uses
  %niter413.ncmp.1 = icmp eq i64 %niter413.next.1, %unroll_iter412
  br i1 %niter413.ncmp.1, label %.preheader223.loopexit.unr-lcssa, label %.lr.ph258, !llvm.loop !15

.preheader222:                                    ; preds = %.preheader222.lr.ph, %.loopexit315
  %i.mm = phi i32 [ %i.lw, %.preheader222.lr.ph ], [ %i.nx, %.loopexit315 ] ; 7 uses
  %i.mn = sext i32 %i.mm to i64
  %i.mo = icmp sgt i32 %i.mm, 0
  br i1 %i.mo, label %.lr.ph333, label %.loopexit315

bb.j:                                             ; preds = %b2Normalize.exit211
  %i.mp = icmp slt i64 %indvars.iv.next302, %i.mn
  br i1 %i.mp, label %.lr.ph333, label %.loopexit315

.lr.ph333:                                        ; preds = %.preheader222, %bb.j
  %indvars.iv301332 = phi i64 [ %indvars.iv.next302, %bb.j ], [ 0, %.preheader222 ] ; 3 uses
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301332, 1 ; 3 uses
  %i.mq = trunc nuw i64 %indvars.iv.next302 to i32
  %i.mr = srem i32 %i.mq, %i.mm                   ; 2 uses
  %i.ms = trunc i64 %indvars.iv301332 to i32
  %i.mt = add i32 %i.ms, 2
  %i.mu = srem i32 %i.mt, %i.mm
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv301332
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.mv, align 4 ; 2 uses
  %i.mw = zext nneg i32 %i.mr to i64              ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.mw
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.mx, align 4
  %i.my = zext nneg i32 %i.mu to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.my
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.mz, align 4
  %i.na = fsub <2 x float> %.sroa.011.0.copyload, %.sroa.013.0.copyload ; 3 uses
  %i.nb = fmul <2 x float> %i.na, %i.na           ; 2 uses
  %shift353 = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop354 = fadd <2 x float> %i.nb, %shift353
  %i.nc = extractelement <2 x float> %foldExtExtBinop354, i64 0 ; 2 uses
  %i.nd = fcmp ogt float %i.nc, f0x057A0000
  br i1 %i.nd, label %bb.k, label %b2Normalize.exit211

bb.k:                                             ; preds = %.lr.ph333
  %sqrt.i208 = tail call nnan float @llvm.sqrt.f32(float %i.nc)
  %i.ne = fdiv nnan float 1.000000e+00, %sqrt.i208
  %i.nf = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nh = fmul <2 x float> %i.na, %i.ng
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit211

b2Normalize.exit211:                              ; preds = %.lr.ph333, %bb.k
  %.sroa.012.0.i207 = phi <2 x float> [ %i.ni, %bb.k ], [ zeroinitializer, %.lr.ph333 ]
  %i.nj = fsub <2 x float> %.sroa.012.0.copyload, %.sroa.013.0.copyload
  %i.nk = fmul <2 x float> %i.nj, %.sroa.012.0.i207 ; 2 uses
  %shift356 = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop357 = fsub <2 x float> %i.nk, %shift356
  %i.nl = extractelement <2 x float> %foldExtExtBinop357, i64 0
  %i.nm = fcmp ugt float %i.nl, %i.ly
  br i1 %i.nm, label %bb.j, label %.preheader

.preheader:                                       ; preds = %b2Normalize.exit211
  %i.nn = add nsw i32 %i.mm, -1                   ; 2 uses
  %i.no = icmp slt i32 %i.mr, %i.nn
  br i1 %i.no, label %.lr.ph260, label %.thread

.thread:                                          ; preds = %.lr.ph260, %.preheader
  %.lcssa = phi i32 [ %i.nn, %.preheader ], [ %i.nt, %.lr.ph260 ] ; 2 uses
  store i32 %.lcssa, ptr %i.a, align 4, !tbaa !10
  br label %.loopexit315

end_hunk_0
