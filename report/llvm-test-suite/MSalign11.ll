inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@MSalign11:bb.a
.lr.ph:                                           ; preds = %bb.n, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv ; 3 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !12
  %i.gb = fadd float %i.ga, %i.b                  ; 2 uses
  store float %i.gb, ptr %i.fz, align 4, !tbaa !12
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !21
  store float %i.gb, ptr %i.gd, align 4, !tbaa !12
  %i.ge = load float, ptr %.0269, align 4, !tbaa !12
  %3 = load float, ptr %i.fz, align 4, !tbaa !12  ; 2 uses
  %i.gf = fcmp olt float %i.ge, %3
  br i1 %i.gf, label %bb.l, label %.lr.ph.1

bb.l:                                             ; preds = %.lr.ph
  store float %3, ptr %.0269, align 4, !tbaa !12
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next ; 3 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  %i.gi = fadd float %i.gh, %i.b                  ; 2 uses
  store float %i.gi, ptr %i.gg, align 4, !tbaa !12
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.next
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !21
  store float %i.gi, ptr %i.gk, align 4, !tbaa !12
  %i.gl = load float, ptr %.0269, align 4, !tbaa !12
  %4 = load float, ptr %i.gg, align 4, !tbaa !12  ; 2 uses
  %i.gm = fcmp olt float %i.gl, %4
  br i1 %i.gm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.1
  store float %4, ptr %.0269, align 4, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.1
end_hunk_0
begin_hunk_1_@MSalign11:bb.a
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod486)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.epil.init ; 3 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !12
  %i.gp = fadd float %i.go, %i.b                  ; 2 uses
  store float %i.gp, ptr %i.gn, align 4, !tbaa !12
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.epil.init
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !21
  store float %i.gp, ptr %i.gr, align 4, !tbaa !12
  %i.gs = load float, ptr %.0269, align 4, !tbaa !12
  %5 = load float, ptr %i.gn, align 4, !tbaa !12  ; 2 uses
  %i.gt = fcmp olt float %i.gs, %5
  br i1 %i.gt, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %.lr.ph.epil.preheader
  store float %5, ptr %.0269, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.lr.ph.epil.preheader, %match_calc.exit314
end_hunk_1
begin_hunk_2_@MSalign11:bb.a
  %indvars.iv383.epil.init = phi i64 [ 1, %.lr.ph332.preheader ], [ %indvars.iv.next384.1, %.lr.ph335.unr-lcssa ] ; 2 uses
  %lcmp.mod489 = trunc i64 %i.gw to i1
  tail call void @llvm.assume(i1 %lcmp.mod489)
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv383.epil.init ; 3 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !12
  %i.ha = fadd float %i.gz, %i.b                  ; 2 uses
  store float %i.ha, ptr %i.gy, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv383.epil.init
  store float %i.ha, ptr %i.hb, align 4, !tbaa !12
  %i.hc = load float, ptr %.0270, align 4, !tbaa !12
  %6 = load float, ptr %i.gy, align 4, !tbaa !12  ; 2 uses
  %i.hd = fcmp olt float %i.hc, %6
  br i1 %i.hd, label %bb.p, label %.lr.ph335

bb.p:                                             ; preds = %.lr.ph332.epil.preheader
  store float %6, ptr %.0270, align 4, !tbaa !12
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph332.epil.preheader, %bb.p, %.lr.ph335.unr-lcssa
end_hunk_2
begin_hunk_3_@MSalign11:bb.a
.lr.ph332:                                        ; preds = %bb.s, %.lr.ph332.preheader.new
  %indvars.iv383 = phi i64 [ 1, %.lr.ph332.preheader.new ], [ %indvars.iv.next384.1, %bb.s ] ; 4 uses
  %niter491 = phi i64 [ 0, %.lr.ph332.preheader.new ], [ %niter491.next.1, %bb.s ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv383 ; 3 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !12
  %i.if = fadd float %i.ie, %i.b                  ; 2 uses
  store float %i.if, ptr %i.id, align 4, !tbaa !12
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv383
  store float %i.if, ptr %i.ig, align 4, !tbaa !12
  %i.ih = load float, ptr %.0270, align 4, !tbaa !12
  %7 = load float, ptr %i.id, align 4, !tbaa !12  ; 2 uses
  %i.ii = fcmp olt float %i.ih, %7
  br i1 %i.ii, label %bb.q, label %.lr.ph332.1

bb.q:                                             ; preds = %.lr.ph332
  store float %7, ptr %.0270, align 4, !tbaa !12
  br label %.lr.ph332.1

.lr.ph332.1:                                      ; preds = %.lr.ph332, %bb.q
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next384 ; 3 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !12
  %i.il = fadd float %i.ik, %i.b                  ; 2 uses
  store float %i.il, ptr %i.ij, align 4, !tbaa !12
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next384
  store float %i.il, ptr %i.im, align 4, !tbaa !12
  %i.in = load float, ptr %.0270, align 4, !tbaa !12
  %8 = load float, ptr %i.ij, align 4, !tbaa !12  ; 2 uses
  %i.io = fcmp olt float %i.in, %8
  br i1 %i.io, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph332.1
  store float %8, ptr %.0270, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph332.1
end_hunk_3
begin_hunk_4_@MSalign11:bb.a
bb.t:                                             ; preds = %.lr.ph356, %._crit_edge349
  %indvars.iv398 = phi i64 [ 1, %.lr.ph356 ], [ %indvars.iv.next399, %._crit_edge349 ] ; 9 uses
  %.0260353 = phi float [ 0.000000e+00, %.lr.ph356 ], [ %.1261.lcssa, %._crit_edge349 ]
  %.0271352 = phi ptr [ %i.cn, %.lr.ph356 ], [ %.0272351, %._crit_edge349 ] ; 9 uses
  %.0272351 = phi ptr [ %i.cl, %.lr.ph356 ], [ %.0271352, %._crit_edge349 ] ; 4 uses
  %i.jt = load ptr, ptr @MSalign11.initverticalw, align 8, !tbaa !21 ; 2 uses
  %i.ju = add nsw i64 %indvars.iv398, -1          ; 2 uses
end_hunk_4
begin_hunk_5_@MSalign11:bb.a
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.0270, i64 %indvars.iv398 ; 3 uses
  store float %i.ln, ptr %i.lp, align 4, !tbaa !12
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !19
  %9 = load float, ptr %.0271352, align 4, !tbaa !12
  %10 = fpext float %9 to double
  %i.lr = fpext float %i.ln to double
  %i.ls = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lq, ptr noundef nonnull @.str.3, double noundef %10, double noundef %i.lr) #11 ; 0 uses
  br i1 %.not292329, label %._crit_edge349, label %.lr.ph348

.lr.ph348:                                        ; preds = %match_calc.exit321
end_hunk_5
begin_hunk_6_@MSalign11:bb.a
  %.0257342 = phi ptr [ %.0272351, %.lr.ph348 ], [ %i.ne, %.critedge ] ; 2 uses
  %i.md = phi float [ %MSalign11.mi.promoted, %.lr.ph348 ], [ %i.mn, %.critedge ] ; 3 uses
  %i.me = phi i32 [ %MSalign11.mpi.promoted, %.lr.ph348 ], [ %i.mm, %.critedge ] ; 2 uses
  %.0256344 = getelementptr inbounds nuw i8, ptr %.0271352.pn, i64 4 ; 5 uses
  %.0255345 = getelementptr inbounds nuw i8, ptr %.pn381, i64 4 ; 3 uses
  %.0258346 = getelementptr inbounds nuw i8, ptr %.pn380, i64 4 ; 3 uses
  %.0259347 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
end_hunk_6
begin_hunk_7_@MSalign11:bb.a

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mu = load float, ptr %.0256344, align 4, !tbaa !12
  %i.mv = fadd float %.3263, %i.mu                ; 2 uses
  store float %i.mv, ptr %.0256344, align 4, !tbaa !12
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv393
  store float %i.mv, ptr %i.mw, align 4, !tbaa !12
end_hunk_7
begin_hunk_8_@MSalign11:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.my = load float, ptr %i.lp, align 4, !tbaa !12
  %11 = load float, ptr %.0256344, align 4, !tbaa !12 ; 3 uses
  %i.mz = fcmp olt float %i.my, %11
  br i1 %i.mz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store float %11, ptr %i.lp, align 4, !tbaa !12
  %.pre430 = load float, ptr %.0256344, align 4, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.na = phi float [ %11, %bb.ab ], [ %.pre430, %bb.ac ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.0269, i64 %indvars.iv393 ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !12
  %i.nd = fcmp olt float %i.nc, %i.na
end_hunk_8
