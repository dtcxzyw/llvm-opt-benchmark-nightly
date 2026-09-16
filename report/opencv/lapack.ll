Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lapack?download=true
inline.NumInlined: 622
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN2cv11JacobiImpl_IfEEbPT_mS2_S2_miPh:bb.a
  %i.ac = ptrtoint ptr %6 to i64
  %i.ad = add i64 %i.ac, 3
  %i.ae = and i64 %i.ad, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = zext nneg i32 %5 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  br label %.lr.ph405

.loopexit389:                                     ; preds = %bb.a
  %i.ai = ptrtoint ptr %6 to i64
  %i.aj = add i64 %i.ai, 3
  %i.ak = and i64 %i.aj, -4
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = zext nneg i32 %5 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = icmp sgt i32 %5, 0
  br i1 %i.ao, label %.lr.ph405, label %._crit_edge469

.lr.ph405:                                        ; preds = %.loopexit389.thread, %.loopexit389
  %i.ap = phi ptr [ %i.ah, %.loopexit389.thread ], [ %i.an, %.loopexit389 ] ; 6 uses
  %i.aq = phi ptr [ %i.af, %.loopexit389.thread ], [ %i.al, %.loopexit389 ] ; 8 uses
  %.0359571 = phi i64 [ %i.b, %.loopexit389.thread ], [ %4, %.loopexit389 ] ; 8 uses
  %.pn = mul i32 %5, 30
  %i.ar = mul i32 %.pn, %5                        ; 2 uses
  %i.as = add nuw nsw i64 %i.a, 1
  %i.at = add nsw i32 %5, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %wide.trip.count492 = zext i32 %5 to i64        ; 16 uses
  %i.av = add nsw i64 %wide.trip.count492, -3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph405, %bb.g
  %indvars.iv489 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next490, %bb.g ] ; 16 uses
  %indvars.iv477 = phi i64 [ 2, %.lr.ph405 ], [ %indvars.iv.next478, %bb.g ] ; 5 uses
  %i.aw = add nsw i64 %indvars.iv489, -1          ; 3 uses
  %i.ax = sub nsw i64 %wide.trip.count492, %indvars.iv489
  %i.ay = mul i64 %i.as, %indvars.iv489
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv489
  store float %i.ba, ptr %i.bb, align 4, !tbaa !20
  %i.bc = icmp samesign ult i64 %indvars.iv489, %i.au
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = add nuw nsw i64 %indvars.iv489, 1       ; 2 uses
  %i.be = mul i64 %i.a, %indvars.iv489
  %i.bf = getelementptr [4 x i8], ptr %0, i64 %i.be ; 4 uses
  %i.bg = trunc i64 %indvars.iv489 to i32
  %i.bh = add i32 %i.bg, 2
  %i.bi = icmp slt i32 %i.bh, %5
  %i.bj = trunc nuw nsw i64 %i.bd to i32          ; 3 uses
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bk = getelementptr [4 x i8], ptr %i.bf, i64 %i.bd
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !20
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bl) ; 3 uses
  %xtraiter642 = and i64 %i.ax, 1
  %lcmp.mod643.not = icmp eq i64 %xtraiter642, 0
  br i1 %lcmp.mod643.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bn = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv477
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !20
  %i.bp = tail call noundef float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bq = fcmp olt float %i.bm, %i.bp             ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv477 to i32
  %.1330.prol = select i1 %i.bq, i32 %i.br, i32 %i.bj ; 2 uses
  %.1327.prol = select i1 %i.bq, float %i.bp, float %i.bm
  %indvars.iv.next480.prol = add nuw nsw i64 %indvars.iv477, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1330.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %indvars.iv479.unr = phi i64 [ %indvars.iv477, %.lr.ph.preheader ], [ %indvars.iv.next480.prol, %.lr.ph.prol ]
  %.0326394.unr = phi float [ %i.bm, %.lr.ph.preheader ], [ %.1327.prol, %.lr.ph.prol ]
  %.0329393.unr = phi i32 [ %i.bj, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %i.bs = icmp eq i64 %i.av, %indvars.iv489
  br i1 %i.bs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv479 = phi i64 [ %indvars.iv.next480.1, %.lr.ph ], [ %indvars.iv479.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0326394 = phi float [ %.1327.1, %.lr.ph ], [ %.0326394.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0329393 = phi i32 [ %.1330.1, %.lr.ph ], [ %.0329393.unr, %.lr.ph.prol.loopexit ]
  %i.bt = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv479
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu) ; 2 uses
  %i.bw = fcmp olt float %.0326394, %i.bv         ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv479 to i32
  %.1330 = select i1 %i.bw, i32 %i.bx, i32 %.0329393
  %.1327 = select i1 %i.bw, float %i.bv, float %.0326394 ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.next480
  %i.bz = load float, ptr %i.by, align 4, !tbaa !20
  %i.ca = tail call noundef float @llvm.fabs.f32(float %i.bz) ; 2 uses
  %i.cb = fcmp olt float %.1327, %i.ca            ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next480 to i32
  %.1330.1 = select i1 %i.cb, i32 %i.cc, i32 %.1330 ; 2 uses
  %.1327.1 = select i1 %i.cb, float %i.ca, float %.1327
  %indvars.iv.next480.1 = add nuw nsw i64 %indvars.iv479, 2 ; 2 uses
  %exitcond483.not.1 = icmp eq i64 %indvars.iv.next480.1, %wide.trip.count492
  br i1 %exitcond483.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !263

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.0329.lcssa = phi i32 [ %i.bj, %bb.d ], [ %.1330.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1330.1, %.lr.ph ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv489
  store i32 %.0329.lcssa, ptr %i.cd, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.not376 = icmp eq i64 %indvars.iv489, 0
  br i1 %.not376, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr [4 x i8], ptr %0, i64 %indvars.iv489 ; 4 uses
  %.not473 = icmp eq i64 %indvars.iv489, 1
  br i1 %.not473, label %._crit_edge400, label %.lr.ph399.preheader

.lr.ph399.preheader:                              ; preds = %bb.f
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !20
  %i.cg = tail call noundef float @llvm.fabs.f32(float %i.cf) ; 2 uses
  %xtraiter644 = and i64 %i.aw, 1
  %i.ch = icmp eq i64 %indvars.iv489, 2
  br i1 %i.ch, label %.lr.ph399.epil.preheader, label %.lr.ph399.preheader.new

.lr.ph399.preheader.new:                          ; preds = %.lr.ph399.preheader
  %unroll_iter649 = and i64 %i.aw, -2
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399, %.lr.ph399.preheader.new
  %indvars.iv484 = phi i64 [ 1, %.lr.ph399.preheader.new ], [ %indvars.iv.next485.1, %.lr.ph399 ] ; 4 uses
  %.2397 = phi float [ %i.cg, %.lr.ph399.preheader.new ], [ %.3.1, %.lr.ph399 ] ; 2 uses
  %.2331396 = phi i32 [ 0, %.lr.ph399.preheader.new ], [ %.3332.1, %.lr.ph399 ]
  %niter650 = phi i64 [ 0, %.lr.ph399.preheader.new ], [ %niter650.next.1, %.lr.ph399 ]
  %i.ci = mul i64 %i.a, %indvars.iv484
  %gep = getelementptr [4 x i8], ptr %i.ce, i64 %i.ci
  %i.cj = load float, ptr %gep, align 4, !tbaa !20
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.cj) ; 2 uses
  %i.cl = fcmp olt float %.2397, %i.ck            ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv484 to i32
  %.3332 = select i1 %i.cl, i32 %i.cm, i32 %.2331396
  %.3 = select i1 %i.cl, float %i.ck, float %.2397 ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %i.cn = mul i64 %i.a, %indvars.iv.next485
  %gep.1 = getelementptr [4 x i8], ptr %i.ce, i64 %i.cn
  %i.co = load float, ptr %gep.1, align 4, !tbaa !20
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.co) ; 2 uses
  %i.cq = fcmp olt float %.3, %i.cp               ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next485 to i32
  %.3332.1 = select i1 %i.cq, i32 %i.cr, i32 %.3332 ; 3 uses
  %.3.1 = select i1 %i.cq, float %i.cp, float %.3 ; 2 uses
  %indvars.iv.next485.1 = add nuw nsw i64 %indvars.iv484, 2 ; 2 uses
  %niter650.next.1 = add nuw i64 %niter650, 2     ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %._crit_edge400.loopexit.unr-lcssa, label %.lr.ph399, !llvm.loop !264

._crit_edge400.loopexit.unr-lcssa:                ; preds = %.lr.ph399
  %lcmp.mod646.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod646.not, label %._crit_edge400, label %.lr.ph399.epil.preheader

.lr.ph399.epil.preheader:                         ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399.preheader
  %indvars.iv484.epil.init = phi i64 [ 1, %.lr.ph399.preheader ], [ %indvars.iv.next485.1, %._crit_edge400.loopexit.unr-lcssa ] ; 2 uses
  %.2397.epil.init = phi float [ %i.cg, %.lr.ph399.preheader ], [ %.3.1, %._crit_edge400.loopexit.unr-lcssa ]
  %.2331396.epil.init = phi i32 [ 0, %.lr.ph399.preheader ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.cs = mul i64 %i.a, %indvars.iv484.epil.init
  %gep.epil = getelementptr [4 x i8], ptr %i.ce, i64 %i.cs
  %i.ct = load float, ptr %gep.epil, align 4, !tbaa !20
  %i.cu = tail call noundef float @llvm.fabs.f32(float %i.ct)
  %i.cv = fcmp olt float %.2397.epil.init, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv484.epil.init to i32
  %.3332.epil = select i1 %i.cv, i32 %i.cw, i32 %.2331396.epil.init
  br label %._crit_edge400

._crit_edge400:                                   ; preds = %.lr.ph399.epil.preheader, %._crit_edge400.loopexit.unr-lcssa, %bb.f
  %.2331.lcssa = phi i32 [ 0, %bb.f ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ], [ %.3332.epil, %.lr.ph399.epil.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv489
  store i32 %.2331.lcssa, ptr %i.cx, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %._crit_edge400
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  br i1 %exitcond493.not, label %._crit_edge406, label %bb.c, !llvm.loop !265

._crit_edge406:                                   ; preds = %bb.g
  %i.cy = icmp sgt i32 %5, 1                      ; 3 uses
  %i.cz = icmp ne i32 %i.ar, 0
  %or.cond = and i1 %i.cy, %i.cz
  %i.da = add nsw i32 %5, -1                      ; 3 uses
  br i1 %or.cond, label %.lr.ph456, label %._crit_edge406..loopexit387_crit_edge

._crit_edge406..loopexit387_crit_edge:            ; preds = %._crit_edge406
  br i1 %i.cy, label %.lr.ph468, label %._crit_edge469

.lr.ph456:                                        ; preds = %._crit_edge406
  %i.db = icmp samesign ugt i32 %5, 2
  %wide.trip.count521 = zext nneg i32 %5 to i64
  %i.dc = shl nuw nsw i64 %wide.trip.count492, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.dc
  %i.dd = shl i64 %.0359571, 2
  %scevgep584 = getelementptr i8, ptr %3, i64 %i.dc
  %i.de = shl i64 %.0359571, 2
  %i.df = and i64 %1, -4
  %scevgep593 = getelementptr i8, ptr %0, i64 4
  %i.dg = add nsw i32 %5, -2
  %i.dh = and i64 %1, -4
  %scevgep596 = getelementptr i8, ptr %0, i64 4
  %i.di = add nsw i64 %i.au, -1                   ; 3 uses
  %i.dj = add nsw i64 %wide.trip.count492, -1     ; 3 uses
  %i.dk = add nsw i32 %5, -3
  %i.dl = add nsw i32 %5, -3
  %xtraiter651 = and i64 %i.di, 1
  %i.dm = icmp eq i32 %i.at, 2
  %unroll_iter657 = and i64 %i.di, -2
  %lcmp.mod653.not = icmp eq i64 %xtraiter651, 0
  %lcmp.mod656 = trunc i64 %i.di to i1
  %xtraiter659 = and i64 %i.dj, 1
  %i.dn = icmp eq i32 %5, 2
  %unroll_iter665 = and i64 %i.dj, -2
  %lcmp.mod661.not = icmp eq i64 %xtraiter659, 0
  %lcmp.mod664 = trunc i64 %i.dj to i1
  %i.do = add nsw i32 %5, -2
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count492, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count492
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph456, %bb.y
  %.0328455 = phi i32 [ 0, %.lr.ph456 ], [ %i.pv, %bb.y ]
  %i.dp = load i32, ptr %i.aq, align 4, !tbaa !50 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !20
  %i.dt = tail call noundef float @llvm.fabs.f32(float %i.ds) ; 3 uses
  br i1 %i.db, label %.lr.ph411.preheader, label %.lr.ph421.preheader

.lr.ph411.preheader:                              ; preds = %bb.h
  br i1 %i.dm, label %.lr.ph411.epil.preheader, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %indvars.iv494 = phi i64 [ %indvars.iv.next495.1, %.lr.ph411 ], [ 1, %.lr.ph411.preheader ] ; 5 uses
  %.4409 = phi float [ %.5.1, %.lr.ph411 ], [ %i.dt, %.lr.ph411.preheader ] ; 2 uses
  %.1340408 = phi i32 [ %.2341.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %niter658 = phi i64 [ %niter658.next.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %i.du = mul i64 %i.a, %indvars.iv494
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !50
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr [4 x i8], ptr %0, i64 %i.du
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !20
  %i.eb = tail call noundef float @llvm.fabs.f32(float %i.ea) ; 2 uses
  %i.ec = fcmp olt float %.4409, %i.eb            ; 2 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv494 to i32
  %.2341 = select i1 %i.ec, i32 %i.ed, i32 %.1340408
  %.5 = select i1 %i.ec, float %i.eb, float %.4409 ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 3 uses
  %i.ee = mul i64 %i.a, %indvars.iv.next495
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next495
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !50
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [4 x i8], ptr %0, i64 %i.ee
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !20
  %i.el = tail call noundef float @llvm.fabs.f32(float %i.ek) ; 2 uses
  %i.em = fcmp olt float %.5, %i.el               ; 2 uses
  %i.en = trunc nuw nsw i64 %indvars.iv.next495 to i32
  %.2341.1 = select i1 %i.em, i32 %i.en, i32 %.2341 ; 3 uses
  %.5.1 = select i1 %i.em, float %i.el, float %.5 ; 3 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494, 2 ; 2 uses
  %niter658.next.1 = add nuw i64 %niter658, 2     ; 2 uses
  %niter658.ncmp.1 = icmp eq i64 %niter658.next.1, %unroll_iter657
  br i1 %niter658.ncmp.1, label %._crit_edge412.loopexit.unr-lcssa, label %.lr.ph411, !llvm.loop !266

._crit_edge412.loopexit.unr-lcssa:                ; preds = %.lr.ph411
  br i1 %lcmp.mod653.not, label %._crit_edge412.loopexit, label %.lr.ph411.epil.preheader

.lr.ph411.epil.preheader:                         ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.preheader
  %indvars.iv494.epil.init = phi i64 [ 1, %.lr.ph411.preheader ], [ %indvars.iv.next495.1, %._crit_edge412.loopexit.unr-lcssa ] ; 3 uses
  %.4409.epil.init = phi float [ %i.dt, %.lr.ph411.preheader ], [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ] ; 2 uses
  %.1340408.epil.init = phi i32 [ 0, %.lr.ph411.preheader ], [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod656)
  %i.eo = mul i64 %i.a, %indvars.iv494.epil.init
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494.epil.init
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !50
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [4 x i8], ptr %0, i64 %i.eo
  %i.et = getelementptr [4 x i8], ptr %i.es, i64 %i.er
  %i.eu = load float, ptr %i.et, align 4, !tbaa !20
  %i.ev = tail call noundef float @llvm.fabs.f32(float %i.eu) ; 2 uses
  %i.ew = fcmp olt float %.4409.epil.init, %i.ev  ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv494.epil.init to i32
  %.2341.epil = select i1 %i.ew, i32 %i.ex, i32 %.1340408.epil.init
  %.5.epil = select i1 %i.ew, float %i.ev, float %.4409.epil.init
  br label %._crit_edge412.loopexit

._crit_edge412.loopexit:                          ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.epil.preheader
  %.2341.lcssa = phi i32 [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.2341.epil, %.lr.ph411.epil.preheader ] ; 2 uses
  %.5.lcssa = phi float [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.5.epil, %.lr.ph411.epil.preheader ]
  %.phi.trans.insert = zext i32 %.2341.lcssa to i64
  %.phi.trans.insert551 = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert551, align 4, !tbaa !50
  br label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %._crit_edge412.loopexit, %bb.h
  %.0325419.ph = phi i32 [ %i.dp, %bb.h ], [ %.pre, %._crit_edge412.loopexit ] ; 2 uses
  %.6418.ph = phi float [ %i.dt, %bb.h ], [ %.5.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  %.3342417.ph = phi i32 [ 0, %bb.h ], [ %.2341.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  br i1 %i.dn, label %.lr.ph421.epil.preheader, label %.lr.ph421

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %.lr.ph421
  %indvars.iv499 = phi i64 [ %indvars.iv.next500.1, %.lr.ph421 ], [ 1, %.lr.ph421.preheader ] ; 5 uses
  %.0325419 = phi i32 [ %.1.1, %.lr.ph421 ], [ %.0325419.ph, %.lr.ph421.preheader ]
  %.6418 = phi float [ %.7.1, %.lr.ph421 ], [ %.6418.ph, %.lr.ph421.preheader ] ; 2 uses
  %.3342417 = phi i32 [ %.4343.1, %.lr.ph421 ], [ %.3342417.ph, %.lr.ph421.preheader ]
  %niter666 = phi i64 [ %niter666.next.1, %.lr.ph421 ], [ 0, %.lr.ph421.preheader ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !50 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.a, %i.fa
  %i.fc = getelementptr [4 x i8], ptr %0, i64 %i.fb
  %i.fd = getelementptr [4 x i8], ptr %i.fc, i64 %indvars.iv499
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !20
  %i.ff = tail call noundef float @llvm.fabs.f32(float %i.fe) ; 2 uses
  %i.fg = fcmp olt float %.6418, %i.ff            ; 3 uses
  %.4343 = select i1 %i.fg, i32 %i.ez, i32 %.3342417
  %.7 = select i1 %i.fg, float %i.ff, float %.6418 ; 2 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv499 to i32
  %.1 = select i1 %i.fg, i32 %i.fh, i32 %.0325419
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next500
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !50 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul i64 %i.a, %i.fk
  %i.fm = getelementptr [4 x i8], ptr %0, i64 %i.fl
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv.next500
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !20
  %i.fp = tail call noundef float @llvm.fabs.f32(float %i.fo) ; 2 uses
  %i.fq = fcmp olt float %.7, %i.fp               ; 3 uses
  %.4343.1 = select i1 %i.fq, i32 %i.fj, i32 %.4343 ; 3 uses
  %.7.1 = select i1 %i.fq, float %i.fp, float %.7 ; 2 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv.next500 to i32
  %.1.1 = select i1 %i.fq, i32 %i.fr, i32 %.1     ; 3 uses
  %indvars.iv.next500.1 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %niter666.next.1 = add nuw i64 %niter666, 2     ; 2 uses
  %niter666.ncmp.1 = icmp eq i64 %niter666.next.1, %unroll_iter665
  br i1 %niter666.ncmp.1, label %._crit_edge422.unr-lcssa, label %.lr.ph421, !llvm.loop !267

._crit_edge422.unr-lcssa:                         ; preds = %.lr.ph421
  br i1 %lcmp.mod661.not, label %._crit_edge422, label %.lr.ph421.epil.preheader

.lr.ph421.epil.preheader:                         ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.preheader
  %indvars.iv499.epil.init = phi i64 [ 1, %.lr.ph421.preheader ], [ %indvars.iv.next500.1, %._crit_edge422.unr-lcssa ] ; 3 uses
  %.0325419.epil.init = phi i32 [ %.0325419.ph, %.lr.ph421.preheader ], [ %.1.1, %._crit_edge422.unr-lcssa ]
  %.6418.epil.init = phi float [ %.6418.ph, %.lr.ph421.preheader ], [ %.7.1, %._crit_edge422.unr-lcssa ]
  %.3342417.epil.init = phi i32 [ %.3342417.ph, %.lr.ph421.preheader ], [ %.4343.1, %._crit_edge422.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod664)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !50 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul i64 %i.a, %i.fu
  %i.fw = getelementptr [4 x i8], ptr %0, i64 %i.fv
  %i.fx = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv499.epil.init
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !20
  %i.fz = tail call noundef float @llvm.fabs.f32(float %i.fy)
  %i.ga = fcmp olt float %.6418.epil.init, %i.fz  ; 2 uses
  %.4343.epil = select i1 %i.ga, i32 %i.ft, i32 %.3342417.epil.init
  %i.gb = trunc nuw nsw i64 %indvars.iv499.epil.init to i32
  %.1.epil = select i1 %i.ga, i32 %i.gb, i32 %.0325419.epil.init
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.epil.preheader
  %.4343.lcssa = phi i32 [ %.4343.1, %._crit_edge422.unr-lcssa ], [ %.4343.epil, %.lr.ph421.epil.preheader ] ; 11 uses
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge422.unr-lcssa ], [ %.1.epil, %.lr.ph421.epil.preheader ] ; 14 uses
  %i.gc = sext i32 %.4343.lcssa to i64            ; 7 uses
  %i.gd = mul i64 %i.a, %i.gc
  %i.ge = sext i32 %.1.lcssa to i64               ; 10 uses
  %i.gf = getelementptr [4 x i8], ptr %0, i64 %i.gd ; 8 uses
  %i.gg = getelementptr [4 x i8], ptr %i.gf, i64 %i.ge ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !20 ; 4 uses
  %i.gi = tail call noundef float @llvm.fabs.f32(float %i.gh) ; 9 uses
  %i.gj = fcmp ugt float %i.gi, f0x34000000
  br i1 %i.gj, label %bb.i, label %.loopexit387

bb.i:                                             ; preds = %._crit_edge422
  %i.gk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ge ; 3 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !20
  %i.gm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gc ; 3 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !20
  %i.go = fsub float %i.gl, %i.gn
  %i.gp = fmul float %i.go, 5.000000e-01          ; 3 uses
  %i.gq = tail call noundef float @llvm.fabs.f32(float %i.gp) ; 5 uses
  %i.gr = fcmp ogt float %i.gi, %i.gq
  br i1 %i.gr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZN2cv11JacobiImpl_IfEEbPT_mS2_S2_miPh:bb.a
  %unroll_iter682 = and i64 %i.nf, -2
  br label %.lr.ph451

.lr.ph451:                                        ; preds = %.lr.ph451, %.lr.ph451.preheader.new
  %indvars.iv528 = phi i64 [ 1, %.lr.ph451.preheader.new ], [ %indvars.iv.next529.1690, %.lr.ph451 ] ; 4 uses
  %.10449 = phi float [ %i.ne, %.lr.ph451.preheader.new ], [ %.11.1689, %.lr.ph451 ] ; 2 uses
  %.6335448 = phi i32 [ 0, %.lr.ph451.preheader.new ], [ %.7336.1688, %.lr.ph451 ]
  %niter683 = phi i64 [ 0, %.lr.ph451.preheader.new ], [ %niter683.next.1, %.lr.ph451 ]
  %i.nh = mul i64 %i.a, %indvars.iv528
  %gep446 = getelementptr [4 x i8], ptr %i.nc, i64 %i.nh
  %i.ni = load float, ptr %gep446, align 4, !tbaa !20
  %i.nj = tail call noundef float @llvm.fabs.f32(float %i.ni) ; 2 uses
  %i.nk = fcmp olt float %.10449, %i.nj           ; 2 uses
  %i.nl = trunc nuw nsw i64 %indvars.iv528 to i32
  %.7336 = select i1 %i.nk, i32 %i.nl, i32 %.6335448
  %.11 = select i1 %i.nk, float %i.nj, float %.10449 ; 2 uses
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.nm = mul i64 %i.a, %indvars.iv.next529
  %gep446.1687 = getelementptr [4 x i8], ptr %i.nc, i64 %i.nm
  %i.nn = load float, ptr %gep446.1687, align 4, !tbaa !20
  %i.no = tail call noundef float @llvm.fabs.f32(float %i.nn) ; 2 uses
  %i.np = fcmp olt float %.11, %i.no              ; 2 uses
  %i.nq = trunc nuw nsw i64 %indvars.iv.next529 to i32
  %.7336.1688 = select i1 %i.np, i32 %i.nq, i32 %.7336 ; 3 uses
  %.11.1689 = select i1 %i.np, float %i.no, float %.11 ; 2 uses
  %indvars.iv.next529.1690 = add nuw nsw i64 %indvars.iv528, 2 ; 2 uses
  %niter683.next.1 = add nuw i64 %niter683, 2     ; 2 uses
  %niter683.ncmp.1 = icmp eq i64 %niter683.next.1, %unroll_iter682
  br i1 %niter683.ncmp.1, label %._crit_edge452.loopexit.unr-lcssa, label %.lr.ph451, !llvm.loop !281

._crit_edge452.loopexit.unr-lcssa:                ; preds = %.lr.ph451
  %lcmp.mod679.not = icmp eq i64 %xtraiter677, 0
  br i1 %lcmp.mod679.not, label %._crit_edge452, label %.lr.ph451.epil.preheader

.lr.ph451.epil.preheader:                         ; preds = %._crit_edge452.loopexit.unr-lcssa, %.lr.ph451.preheader
  %indvars.iv528.epil.init = phi i64 [ 1, %.lr.ph451.preheader ], [ %indvars.iv.next529.1690, %._crit_edge452.loopexit.unr-lcssa ] ; 2 uses
  %.10449.epil.init = phi float [ %i.ne, %.lr.ph451.preheader ], [ %.11.1689, %._crit_edge452.loopexit.unr-lcssa ]
  %.6335448.epil.init = phi i32 [ 0, %.lr.ph451.preheader ], [ %.7336.1688, %._crit_edge452.loopexit.unr-lcssa ]
  %lcmp.mod681 = trunc i64 %i.nf to i1
  tail call void @llvm.assume(i1 %lcmp.mod681)
  %i.nr = mul i64 %i.a, %indvars.iv528.epil.init
  %gep446.epil = getelementptr [4 x i8], ptr %i.nc, i64 %i.nr
  %i.ns = load float, ptr %gep446.epil, align 4, !tbaa !20
  %i.nt = tail call noundef float @llvm.fabs.f32(float %i.ns)
  %i.nu = fcmp olt float %.10449.epil.init, %i.nt
  %i.nv = trunc nuw nsw i64 %indvars.iv528.epil.init to i32
  %.7336.epil = select i1 %i.nu, i32 %i.nv, i32 %.6335448.epil.init
  br label %._crit_edge452

._crit_edge452:                                   ; preds = %.lr.ph451.epil.preheader, %._crit_edge452.loopexit.unr-lcssa, %bb.t
  %.6335.lcssa = phi i32 [ 0, %bb.t ], [ %.7336.1688, %._crit_edge452.loopexit.unr-lcssa ], [ %.7336.epil, %.lr.ph451.epil.preheader ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.nb
  store i32 %.6335.lcssa, ptr %i.nw, align 4, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge452, %bb.s
  %i.nx = icmp slt i32 %.1.lcssa, %i.da
  br i1 %i.nx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ny = mul i64 %i.a, %i.ge
  %i.nz = getelementptr [4 x i8], ptr %0, i64 %i.ny ; 4 uses
  %i.oa = add nsw i32 %.1.lcssa, 2                ; 3 uses
  %i.ob = icmp slt i32 %i.oa, %5
  br i1 %i.ob, label %.lr.ph442.preheader.1, label %._crit_edge443.1

.lr.ph442.preheader.1:                            ; preds = %bb.v
  %i.oc = sext i32 %.7354432 to i64
  %i.od = getelementptr [4 x i8], ptr %i.nz, i64 %i.oc
  %i.oe = load float, ptr %i.od, align 4, !tbaa !20
  %i.of = tail call noundef float @llvm.fabs.f32(float %i.oe) ; 3 uses
  %i.og = sext i32 %i.oa to i64                   ; 3 uses
  %i.oh = sub i32 %5, %.1.lcssa
  %xtraiter692 = and i32 %i.oh, 1
  %lcmp.mod693.not = icmp eq i32 %xtraiter692, 0
  br i1 %lcmp.mod693.not, label %.lr.ph442.1.prol.loopexit, label %.lr.ph442.1.prol

.lr.ph442.1.prol:                                 ; preds = %.lr.ph442.preheader.1
  %i.oi = getelementptr [4 x i8], ptr %i.nz, i64 %i.og
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !20
  %i.ok = tail call noundef float @llvm.fabs.f32(float %i.oj) ; 2 uses
  %i.ol = fcmp olt float %i.of, %i.ok             ; 2 uses
  %.5334.1.prol = select i1 %i.ol, i32 %i.oa, i32 %.7354432 ; 2 uses
  %.9.1.prol = select i1 %i.ol, float %i.ok, float %i.of
  %indvars.iv.next524.1.prol = add nsw i64 %i.og, 1
  br label %.lr.ph442.1.prol.loopexit

.lr.ph442.1.prol.loopexit:                        ; preds = %.lr.ph442.1.prol, %.lr.ph442.preheader.1
  %.5334.1.lcssa.unr = phi i32 [ poison, %.lr.ph442.preheader.1 ], [ %.5334.1.prol, %.lr.ph442.1.prol ]
  %indvars.iv523.1.unr = phi i64 [ %i.og, %.lr.ph442.preheader.1 ], [ %indvars.iv.next524.1.prol, %.lr.ph442.1.prol ]
  %.8440.1.unr = phi float [ %i.of, %.lr.ph442.preheader.1 ], [ %.9.1.prol, %.lr.ph442.1.prol ]
  %.4333439.1.unr = phi i32 [ %.7354432, %.lr.ph442.preheader.1 ], [ %.5334.1.prol, %.lr.ph442.1.prol ]
  %i.om = icmp eq i32 %i.dl, %.1.lcssa
  br i1 %i.om, label %._crit_edge443.1, label %.lr.ph442.1

.lr.ph442.1:                                      ; preds = %.lr.ph442.1.prol.loopexit, %.lr.ph442.1
  %indvars.iv523.1 = phi i64 [ %indvars.iv.next524.1.1, %.lr.ph442.1 ], [ %indvars.iv523.1.unr, %.lr.ph442.1.prol.loopexit ] ; 4 uses
  %.8440.1 = phi float [ %.9.1.1, %.lr.ph442.1 ], [ %.8440.1.unr, %.lr.ph442.1.prol.loopexit ] ; 2 uses
  %.4333439.1 = phi i32 [ %.5334.1.1, %.lr.ph442.1 ], [ %.4333439.1.unr, %.lr.ph442.1.prol.loopexit ]
  %i.on = getelementptr [4 x i8], ptr %i.nz, i64 %indvars.iv523.1
  %i.oo = load float, ptr %i.on, align 4, !tbaa !20
  %i.op = tail call noundef float @llvm.fabs.f32(float %i.oo) ; 2 uses
  %i.oq = fcmp olt float %.8440.1, %i.op          ; 2 uses
  %i.or = trunc nsw i64 %indvars.iv523.1 to i32
  %.5334.1 = select i1 %i.oq, i32 %i.or, i32 %.4333439.1
  %.9.1 = select i1 %i.oq, float %i.op, float %.8440.1 ; 2 uses
  %indvars.iv.next524.1 = add nsw i64 %indvars.iv523.1, 1 ; 2 uses
  %i.os = getelementptr [4 x i8], ptr %i.nz, i64 %indvars.iv.next524.1
  %i.ot = load float, ptr %i.os, align 4, !tbaa !20
  %i.ou = tail call noundef float @llvm.fabs.f32(float %i.ot) ; 2 uses
  %i.ov = fcmp olt float %.9.1, %i.ou             ; 2 uses
  %i.ow = trunc nsw i64 %indvars.iv.next524.1 to i32
  %.5334.1.1 = select i1 %i.ov, i32 %i.ow, i32 %.5334.1 ; 2 uses
  %.9.1.1 = select i1 %i.ov, float %i.ou, float %.9.1
  %indvars.iv.next524.1.1 = add nsw i64 %indvars.iv523.1, 2 ; 2 uses
  %lftr.wideiv526.1.1 = trunc i64 %indvars.iv.next524.1.1 to i32
  %exitcond527.1.not.1 = icmp eq i32 %5, %lftr.wideiv526.1.1
  br i1 %exitcond527.1.not.1, label %._crit_edge443.1, label %.lr.ph442.1, !llvm.loop !280

._crit_edge443.1:                                 ; preds = %.lr.ph442.1.prol.loopexit, %.lr.ph442.1, %bb.v
  %.4333.lcssa.1 = phi i32 [ %.7354432, %bb.v ], [ %.5334.1.lcssa.unr, %.lr.ph442.1.prol.loopexit ], [ %.5334.1.1, %.lr.ph442.1 ]
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ge
  store i32 %.4333.lcssa.1, ptr %i.ox, align 4, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge443.1, %bb.u
  %i.oy = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.oy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.oz = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %i.pa = getelementptr [4 x i8], ptr %0, i64 %i.oz ; 4 uses
  %.not474.1 = icmp eq i32 %.1.lcssa, 1
  br i1 %.not474.1, label %._crit_edge452.1, label %.lr.ph451.preheader.1

.lr.ph451.preheader.1:                            ; preds = %bb.x
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !20
  %i.pc = tail call noundef float @llvm.fabs.f32(float %i.pb) ; 2 uses
  %i.pd = add nsw i64 %i.oz, -1                   ; 3 uses
  %xtraiter694 = and i64 %i.pd, 1
  %i.pe = icmp eq i32 %.1.lcssa, 2
  br i1 %i.pe, label %.lr.ph451.1.epil.preheader, label %.lr.ph451.preheader.1.new

.lr.ph451.preheader.1.new:                        ; preds = %.lr.ph451.preheader.1
  %unroll_iter699 = and i64 %i.pd, -2
  br label %.lr.ph451.1

.lr.ph451.1:                                      ; preds = %.lr.ph451.1, %.lr.ph451.preheader.1.new
  %indvars.iv528.1 = phi i64 [ 1, %.lr.ph451.preheader.1.new ], [ %indvars.iv.next529.1.1, %.lr.ph451.1 ] ; 4 uses
  %.10449.1 = phi float [ %i.pc, %.lr.ph451.preheader.1.new ], [ %.11.1.1, %.lr.ph451.1 ] ; 2 uses
  %.6335448.1 = phi i32 [ 0, %.lr.ph451.preheader.1.new ], [ %.7336.1.1, %.lr.ph451.1 ]
  %niter700 = phi i64 [ 0, %.lr.ph451.preheader.1.new ], [ %niter700.next.1, %.lr.ph451.1 ]
  %i.pf = mul i64 %i.a, %indvars.iv528.1
  %gep446.1 = getelementptr [4 x i8], ptr %i.pa, i64 %i.pf
  %i.pg = load float, ptr %gep446.1, align 4, !tbaa !20
  %i.ph = tail call noundef float @llvm.fabs.f32(float %i.pg) ; 2 uses
  %i.pi = fcmp olt float %.10449.1, %i.ph         ; 2 uses
  %i.pj = trunc nuw nsw i64 %indvars.iv528.1 to i32
  %.7336.1 = select i1 %i.pi, i32 %i.pj, i32 %.6335448.1
  %.11.1 = select i1 %i.pi, float %i.ph, float %.10449.1 ; 2 uses
  %indvars.iv.next529.1 = add nuw nsw i64 %indvars.iv528.1, 1 ; 2 uses
  %i.pk = mul i64 %i.a, %indvars.iv.next529.1
  %gep446.1.1 = getelementptr [4 x i8], ptr %i.pa, i64 %i.pk
  %i.pl = load float, ptr %gep446.1.1, align 4, !tbaa !20
  %i.pm = tail call noundef float @llvm.fabs.f32(float %i.pl) ; 2 uses
  %i.pn = fcmp olt float %.11.1, %i.pm            ; 2 uses
  %i.po = trunc nuw nsw i64 %indvars.iv.next529.1 to i32
  %.7336.1.1 = select i1 %i.pn, i32 %i.po, i32 %.7336.1 ; 3 uses
  %.11.1.1 = select i1 %i.pn, float %i.pm, float %.11.1 ; 2 uses
  %indvars.iv.next529.1.1 = add nuw nsw i64 %indvars.iv528.1, 2 ; 2 uses
  %niter700.next.1 = add nuw i64 %niter700, 2     ; 2 uses
  %niter700.ncmp.1 = icmp eq i64 %niter700.next.1, %unroll_iter699
  br i1 %niter700.ncmp.1, label %._crit_edge452.1.loopexit.unr-lcssa, label %.lr.ph451.1, !llvm.loop !281

._crit_edge452.1.loopexit.unr-lcssa:              ; preds = %.lr.ph451.1
  %lcmp.mod696.not = icmp eq i64 %xtraiter694, 0
  br i1 %lcmp.mod696.not, label %._crit_edge452.1, label %.lr.ph451.1.epil.preheader

.lr.ph451.1.epil.preheader:                       ; preds = %._crit_edge452.1.loopexit.unr-lcssa, %.lr.ph451.preheader.1
  %indvars.iv528.1.epil.init = phi i64 [ 1, %.lr.ph451.preheader.1 ], [ %indvars.iv.next529.1.1, %._crit_edge452.1.loopexit.unr-lcssa ] ; 2 uses
  %.10449.1.epil.init = phi float [ %i.pc, %.lr.ph451.preheader.1 ], [ %.11.1.1, %._crit_edge452.1.loopexit.unr-lcssa ]
  %.6335448.1.epil.init = phi i32 [ 0, %.lr.ph451.preheader.1 ], [ %.7336.1.1, %._crit_edge452.1.loopexit.unr-lcssa ]
  %lcmp.mod698 = trunc i64 %i.pd to i1
  tail call void @llvm.assume(i1 %lcmp.mod698)
  %i.pp = mul i64 %i.a, %indvars.iv528.1.epil.init
  %gep446.1.epil = getelementptr [4 x i8], ptr %i.pa, i64 %i.pp
  %i.pq = load float, ptr %gep446.1.epil, align 4, !tbaa !20
  %i.pr = tail call noundef float @llvm.fabs.f32(float %i.pq)
  %i.ps = fcmp olt float %.10449.1.epil.init, %i.pr
  %i.pt = trunc nuw nsw i64 %indvars.iv528.1.epil.init to i32
  %.7336.1.epil = select i1 %i.ps, i32 %i.pt, i32 %.6335448.1.epil.init
  br label %._crit_edge452.1

._crit_edge452.1:                                 ; preds = %.lr.ph451.1.epil.preheader, %._crit_edge452.1.loopexit.unr-lcssa, %bb.x
  %.6335.lcssa.1 = phi i32 [ 0, %bb.x ], [ %.7336.1.1, %._crit_edge452.1.loopexit.unr-lcssa ], [ %.7336.1.epil, %.lr.ph451.1.epil.preheader ]
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.oz
  store i32 %.6335.lcssa.1, ptr %i.pu, align 4, !tbaa !50
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge452.1, %bb.w
  %i.pv = add nuw i32 %.0328455, 1                ; 2 uses
  %exitcond533.not = icmp eq i32 %i.pv, %i.ar
  br i1 %exitcond533.not, label %.loopexit387, label %bb.h, !llvm.loop !282

.loopexit387:                                     ; preds = %bb.y, %._crit_edge422
  br i1 %i.cy, label %.lr.ph468, label %._crit_edge469

.lr.ph468:                                        ; preds = %._crit_edge406..loopexit387_crit_edge, %.loopexit387
  %wide.trip.count549 = zext i32 %i.da to i64
  %wide.trip.count539 = zext nneg i32 %5 to i64
  %wide.trip.count544 = zext nneg i32 %5 to i64
  %i.pw = shl nuw nsw i64 %wide.trip.count492, 2
  %scevgep621 = getelementptr i8, ptr %3, i64 %i.pw
  %i.px = shl i64 %.0359571, 2                    ; 2 uses
  %i.py = add nuw nsw i64 %i.au, 4611686018427387903
  %i.pz = mul i64 %.0359571, %i.py
  %i.qa = add i64 %i.pz, %wide.trip.count492
  %i.qb = shl i64 %i.qa, 2
  %scevgep623 = getelementptr i8, ptr %3, i64 %i.qb
  %i.qc = add nsw i64 %wide.trip.count492, -2
  %min.iters.check628 = icmp ult i32 %5, 8
  %stride.check = icmp slt i64 %i.px, 0
  %n.vec630 = and i64 %wide.trip.count492, 4294967288 ; 3 uses
  %cmp.n639 = icmp eq i64 %n.vec630, %wide.trip.count492
  %xtraiter703 = and i64 %wide.trip.count492, 1
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  %i.qd = add nsw i64 %wide.trip.count492, -1
  br label %.lr.ph461.preheader

.lr.ph461.preheader:                              ; preds = %.loopexit, %.lr.ph468
  %indvars.iv546 = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next547, %.loopexit ] ; 8 uses
  %indvars.iv534 = phi i64 [ 1, %.lr.ph468 ], [ %indvars.iv.next535, %.loopexit ] ; 5 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %i.qe = trunc nuw nsw i64 %indvars.iv546 to i32 ; 2 uses
  %.phi.trans.insert552 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv546
  %.pre553 = load float, ptr %.phi.trans.insert552, align 4, !tbaa !20 ; 3 uses
  %i.qf = sub nsw i64 %indvars.iv546, %wide.trip.count492
  %i.qg = and i64 %i.qf, 1
  %lcmp.mod702.not.not = icmp eq i64 %i.qg, 0
  br i1 %lcmp.mod702.not.not, label %.lr.ph461.prol, label %.lr.ph461.prol.loopexit

.lr.ph461.prol:                                   ; preds = %.lr.ph461.preheader
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv534
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !20 ; 2 uses
  %i.qj = fcmp olt float %.pre553, %i.qi          ; 2 uses
  %i.qk = trunc nuw nsw i64 %indvars.iv534 to i32
  %spec.select.prol = select i1 %i.qj, i32 %i.qk, i32 %i.qe ; 2 uses
  %indvars.iv.next537.prol = add nuw nsw i64 %indvars.iv534, 1
  %i.ql = select i1 %i.qj, float %i.qi, float %.pre553
  br label %.lr.ph461.prol.loopexit

.lr.ph461.prol.loopexit:                          ; preds = %.lr.ph461.prol, %.lr.ph461.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph461.preheader ], [ %spec.select.prol, %.lr.ph461.prol ]
  %.unr = phi float [ %.pre553, %.lr.ph461.preheader ], [ %i.ql, %.lr.ph461.prol ]
  %indvars.iv536.unr = phi i64 [ %indvars.iv534, %.lr.ph461.preheader ], [ %indvars.iv.next537.prol, %.lr.ph461.prol ]
  %.8337459.unr = phi i32 [ %i.qe, %.lr.ph461.preheader ], [ %spec.select.prol, %.lr.ph461.prol ]
  %i.qm = icmp eq i64 %i.qc, %indvars.iv546
  br i1 %i.qm, label %._crit_edge462, label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461.prol.loopexit, %.lr.ph461
  %i.qn = phi float [ %i.qx, %.lr.ph461 ], [ %.unr, %.lr.ph461.prol.loopexit ] ; 2 uses
  %indvars.iv536 = phi i64 [ %indvars.iv.next537.1, %.lr.ph461 ], [ %indvars.iv536.unr, %.lr.ph461.prol.loopexit ] ; 4 uses
  %.8337459 = phi i32 [ %spec.select.1, %.lr.ph461 ], [ %.8337459.unr, %.lr.ph461.prol.loopexit ]
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv536
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !20 ; 2 uses
  %i.qq = fcmp olt float %i.qn, %i.qp             ; 2 uses
  %i.qr = trunc nuw nsw i64 %indvars.iv536 to i32
  %spec.select = select i1 %i.qq, i32 %i.qr, i32 %.8337459
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.qs = select i1 %i.qq, float %i.qp, float %i.qn ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next537
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !20 ; 2 uses
  %i.qv = fcmp olt float %i.qs, %i.qu             ; 2 uses
  %i.qw = trunc nuw nsw i64 %indvars.iv.next537 to i32
  %spec.select.1 = select i1 %i.qv, i32 %i.qw, i32 %spec.select ; 2 uses
  %indvars.iv.next537.1 = add nuw nsw i64 %indvars.iv536, 2 ; 2 uses
  %exitcond540.not.1 = icmp eq i64 %indvars.iv.next537.1, %wide.trip.count539
  %i.qx = select i1 %i.qv, float %i.qu, float %i.qs
  br i1 %exitcond540.not.1, label %._crit_edge462, label %.lr.ph461, !llvm.loop !283

._crit_edge462:                                   ; preds = %.lr.ph461, %.lr.ph461.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph461.prol.loopexit ], [ %spec.select.1, %.lr.ph461 ] ; 2 uses
  %i.qy = zext i32 %spec.select.lcssa to i64
  %.not375 = icmp eq i64 %indvars.iv546, %i.qy
  br i1 %.not375, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %._crit_edge462
  %i.qz = sext i32 %spec.select.lcssa to i64      ; 3 uses
  %i.ra = getelementptr inbounds [4 x i8], ptr %2, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv546 ; 2 uses
  %i.rc = load float, ptr %i.ra, align 4, !tbaa !20
  %i.rd = load float, ptr %i.rb, align 4, !tbaa !20
  store float %i.rd, ptr %i.ra, align 4, !tbaa !20
  store float %i.rc, ptr %i.rb, align 4, !tbaa !20
  br i1 %.not, label %.loopexit, label %.lr.ph465

.lr.ph465:                                        ; preds = %bb.z
  %i.re = mul i64 %.0359571, %i.qz
  %i.rf = getelementptr [4 x i8], ptr %3, i64 %i.re ; 5 uses
  %i.rg = mul i64 %.0359571, %indvars.iv546
  %i.rh = getelementptr [4 x i8], ptr %3, i64 %i.rg ; 4 uses
  br i1 %min.iters.check628, label %scalar.ph627.preheader, label %vector.memcheck620

vector.memcheck620:                               ; preds = %.lr.ph465
  %i.ri = mul i64 %i.px, %i.qz
  %scevgep622 = getelementptr i8, ptr %scevgep621, i64 %i.ri
  %bound0624 = icmp ult ptr %i.rf, %scevgep623
  %bound1625 = icmp ult ptr %3, %scevgep622
  %found.conflict626 = and i1 %bound0624, %bound1625
  %i.rj = or i1 %found.conflict626, %stride.check
  br i1 %i.rj, label %scalar.ph627.preheader, label %vector.body631

vector.body631:                                   ; preds = %vector.memcheck620, %vector.body631
  %index632 = phi i64 [ %index.next637, %vector.body631 ], [ 0, %vector.memcheck620 ] ; 3 uses
  %i.rk = getelementptr [4 x i8], ptr %i.rf, i64 %index632 ; 3 uses
  %i.rl = getelementptr [4 x i8], ptr %i.rh, i64 %index632 ; 3 uses
  %i.rm = getelementptr i8, ptr %i.rk, i64 16     ; 2 uses
  %wide.load633 = load <4 x float>, ptr %i.rk, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  %wide.load634 = load <4 x float>, ptr %i.rm, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  %i.rn = getelementptr i8, ptr %i.rl, i64 16     ; 2 uses
  %wide.load635 = load <4 x float>, ptr %i.rl, align 4, !tbaa !20, !alias.scope !295
  %wide.load636 = load <4 x float>, ptr %i.rn, align 4, !tbaa !20, !alias.scope !295
  store <4 x float> %wide.load635, ptr %i.rk, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  store <4 x float> %wide.load636, ptr %i.rm, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  store <4 x float> %wide.load633, ptr %i.rl, align 4, !tbaa !20, !alias.scope !295
  store <4 x float> %wide.load634, ptr %i.rn, align 4, !tbaa !20, !alias.scope !295
  %index.next637 = add nuw i64 %index632, 8       ; 2 uses
  %i.ro = icmp eq i64 %index.next637, %n.vec630
  br i1 %i.ro, label %middle.block638, label %vector.body631, !llvm.loop !287

middle.block638:                                  ; preds = %vector.body631
  br i1 %cmp.n639, label %.loopexit, label %scalar.ph627.preheader

scalar.ph627.preheader:                           ; preds = %vector.memcheck620, %.lr.ph465, %middle.block638
  %indvars.iv541.ph = phi i64 [ 0, %vector.memcheck620 ], [ 0, %.lr.ph465 ], [ %n.vec630, %middle.block638 ] ; 5 uses
  br i1 %lcmp.mod704.not, label %scalar.ph627.prol.loopexit, label %scalar.ph627.prol

scalar.ph627.prol:                                ; preds = %scalar.ph627.preheader
  %i.rp = getelementptr [4 x i8], ptr %i.rf, i64 %indvars.iv541.ph ; 2 uses
  %i.rq = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv541.ph ; 2 uses
  %i.rr = load float, ptr %i.rp, align 4, !tbaa !20
  %i.rs = load float, ptr %i.rq, align 4, !tbaa !20
  store float %i.rs, ptr %i.rp, align 4, !tbaa !20
  store float %i.rr, ptr %i.rq, align 4, !tbaa !20
  %indvars.iv.next542.prol = or disjoint i64 %indvars.iv541.ph, 1
  br label %scalar.ph627.prol.loopexit

scalar.ph627.prol.loopexit:                       ; preds = %scalar.ph627.prol, %scalar.ph627.preheader
  %indvars.iv541.unr = phi i64 [ %indvars.iv541.ph, %scalar.ph627.preheader ], [ %indvars.iv.next542.prol, %scalar.ph627.prol ]
  %i.rt = icmp eq i64 %indvars.iv541.ph, %i.qd
  br i1 %i.rt, label %.loopexit, label %scalar.ph627

scalar.ph627:                                     ; preds = %scalar.ph627.prol.loopexit, %scalar.ph627
  %indvars.iv541 = phi i64 [ %indvars.iv.next542.1, %scalar.ph627 ], [ %indvars.iv541.unr, %scalar.ph627.prol.loopexit ] ; 4 uses
  %i.ru = getelementptr [4 x i8], ptr %i.rf, i64 %indvars.iv541 ; 2 uses
  %i.rv = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv541 ; 2 uses
  %i.rw = load float, ptr %i.ru, align 4, !tbaa !20
  %i.rx = load float, ptr %i.rv, align 4, !tbaa !20
  store float %i.rx, ptr %i.ru, align 4, !tbaa !20
  store float %i.rw, ptr %i.rv, align 4, !tbaa !20
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.ry = getelementptr [4 x i8], ptr %i.rf, i64 %indvars.iv.next542 ; 2 uses
  %i.rz = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv.next542 ; 2 uses
  %i.sa = load float, ptr %i.ry, align 4, !tbaa !20
  %i.sb = load float, ptr %i.rz, align 4, !tbaa !20
  store float %i.sb, ptr %i.ry, align 4, !tbaa !20
  store float %i.sa, ptr %i.rz, align 4, !tbaa !20
  %indvars.iv.next542.1 = add nuw nsw i64 %indvars.iv541, 2 ; 2 uses
  %exitcond545.not.1 = icmp eq i64 %indvars.iv.next542.1, %wide.trip.count544
  br i1 %exitcond545.not.1, label %.loopexit, label %scalar.ph627, !llvm.loop !288

.loopexit:                                        ; preds = %scalar.ph627.prol.loopexit, %scalar.ph627, %middle.block638, %bb.z, %._crit_edge462
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1
  %exitcond550.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count549
  br i1 %exitcond550.not, label %._crit_edge469, label %.lr.ph461.preheader, !llvm.loop !289

._crit_edge469:                                   ; preds = %.loopexit, %bb.b, %.loopexit389, %._crit_edge406..loopexit387_crit_edge, %.loopexit387
  ret i1 true
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv11JacobiImpl_IdEEbPT_mS2_S2_miPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 22 uses
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %.loopexit389, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %4, 3                           ; 7 uses
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.preheader388.lr.ph, label %._crit_edge469

.preheader388.lr.ph:                              ; preds = %bb.b
  %i.d = add nuw nsw i64 %i.b, 1                  ; 5 uses
  %i.e = zext nneg i32 %5 to i64                  ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN2cv11JacobiImpl_IdEEbPT_mS2_S2_miPh:bb.a
  %i.ac = ptrtoint ptr %6 to i64
  %i.ad = add i64 %i.ac, 3
  %i.ae = and i64 %i.ad, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = zext nneg i32 %5 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  br label %.lr.ph405

.loopexit389:                                     ; preds = %bb.a
  %i.ai = ptrtoint ptr %6 to i64
  %i.aj = add i64 %i.ai, 3
  %i.ak = and i64 %i.aj, -4
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = zext nneg i32 %5 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = icmp sgt i32 %5, 0
  br i1 %i.ao, label %.lr.ph405, label %._crit_edge469

.lr.ph405:                                        ; preds = %.loopexit389.thread, %.loopexit389
  %i.ap = phi ptr [ %i.ah, %.loopexit389.thread ], [ %i.an, %.loopexit389 ] ; 6 uses
  %i.aq = phi ptr [ %i.af, %.loopexit389.thread ], [ %i.al, %.loopexit389 ] ; 8 uses
  %.0359571 = phi i64 [ %i.b, %.loopexit389.thread ], [ %4, %.loopexit389 ] ; 8 uses
  %.pn = mul i32 %5, 30
  %i.ar = mul i32 %.pn, %5                        ; 2 uses
  %i.as = add nuw nsw i64 %i.a, 1
  %i.at = add nsw i32 %5, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %wide.trip.count492 = zext i32 %5 to i64        ; 16 uses
  %i.av = add nsw i64 %wide.trip.count492, -3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph405, %bb.g
  %indvars.iv489 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next490, %bb.g ] ; 16 uses
  %indvars.iv477 = phi i64 [ 2, %.lr.ph405 ], [ %indvars.iv.next478, %bb.g ] ; 5 uses
  %i.aw = add nsw i64 %indvars.iv489, -1          ; 3 uses
  %i.ax = sub nsw i64 %wide.trip.count492, %indvars.iv489
  %i.ay = mul i64 %i.as, %indvars.iv489
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv489
  store double %i.ba, ptr %i.bb, align 8, !tbaa !18
  %i.bc = icmp samesign ult i64 %indvars.iv489, %i.au
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = add nuw nsw i64 %indvars.iv489, 1       ; 2 uses
  %i.be = mul i64 %i.a, %indvars.iv489
  %i.bf = getelementptr [8 x i8], ptr %0, i64 %i.be ; 4 uses
  %i.bg = trunc i64 %indvars.iv489 to i32
  %i.bh = add i32 %i.bg, 2
  %i.bi = icmp slt i32 %i.bh, %5
  %i.bj = trunc nuw nsw i64 %i.bd to i32          ; 3 uses
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bk = getelementptr [8 x i8], ptr %i.bf, i64 %i.bd
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !18
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl) ; 3 uses
  %xtraiter641 = and i64 %i.ax, 1
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br i1 %lcmp.mod642.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bn = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv477
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  %i.bp = tail call noundef double @llvm.fabs.f64(double %i.bo) ; 2 uses
  %i.bq = fcmp olt double %i.bm, %i.bp            ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv477 to i32
  %.1330.prol = select i1 %i.bq, i32 %i.br, i32 %i.bj ; 2 uses
  %.1327.prol = select i1 %i.bq, double %i.bp, double %i.bm
  %indvars.iv.next480.prol = add nuw nsw i64 %indvars.iv477, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1330.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %indvars.iv479.unr = phi i64 [ %indvars.iv477, %.lr.ph.preheader ], [ %indvars.iv.next480.prol, %.lr.ph.prol ]
  %.0326394.unr = phi double [ %i.bm, %.lr.ph.preheader ], [ %.1327.prol, %.lr.ph.prol ]
  %.0329393.unr = phi i32 [ %i.bj, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %i.bs = icmp eq i64 %i.av, %indvars.iv489
  br i1 %i.bs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv479 = phi i64 [ %indvars.iv.next480.1, %.lr.ph ], [ %indvars.iv479.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0326394 = phi double [ %.1327.1, %.lr.ph ], [ %.0326394.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0329393 = phi i32 [ %.1330.1, %.lr.ph ], [ %.0329393.unr, %.lr.ph.prol.loopexit ]
  %i.bt = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv479
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !18
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu) ; 2 uses
  %i.bw = fcmp olt double %.0326394, %i.bv        ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv479 to i32
  %.1330 = select i1 %i.bw, i32 %i.bx, i32 %.0329393
  %.1327 = select i1 %i.bw, double %i.bv, double %.0326394 ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv.next480
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz) ; 2 uses
  %i.cb = fcmp olt double %.1327, %i.ca           ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next480 to i32
  %.1330.1 = select i1 %i.cb, i32 %i.cc, i32 %.1330 ; 2 uses
  %.1327.1 = select i1 %i.cb, double %i.ca, double %.1327
  %indvars.iv.next480.1 = add nuw nsw i64 %indvars.iv479, 2 ; 2 uses
  %exitcond483.not.1 = icmp eq i64 %indvars.iv.next480.1, %wide.trip.count492
  br i1 %exitcond483.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !298

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.0329.lcssa = phi i32 [ %i.bj, %bb.d ], [ %.1330.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1330.1, %.lr.ph ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv489
  store i32 %.0329.lcssa, ptr %i.cd, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.not376 = icmp eq i64 %indvars.iv489, 0
  br i1 %.not376, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr [8 x i8], ptr %0, i64 %indvars.iv489 ; 4 uses
  %.not473 = icmp eq i64 %indvars.iv489, 1
  br i1 %.not473, label %._crit_edge400, label %.lr.ph399.preheader

.lr.ph399.preheader:                              ; preds = %bb.f
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = tail call noundef double @llvm.fabs.f64(double %i.cf) ; 2 uses
  %xtraiter643 = and i64 %i.aw, 1
  %i.ch = icmp eq i64 %indvars.iv489, 2
  br i1 %i.ch, label %.lr.ph399.epil.preheader, label %.lr.ph399.preheader.new

.lr.ph399.preheader.new:                          ; preds = %.lr.ph399.preheader
  %unroll_iter648 = and i64 %i.aw, -2
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399, %.lr.ph399.preheader.new
  %indvars.iv484 = phi i64 [ 1, %.lr.ph399.preheader.new ], [ %indvars.iv.next485.1, %.lr.ph399 ] ; 4 uses
  %.2397 = phi double [ %i.cg, %.lr.ph399.preheader.new ], [ %.3.1, %.lr.ph399 ] ; 2 uses
  %.2331396 = phi i32 [ 0, %.lr.ph399.preheader.new ], [ %.3332.1, %.lr.ph399 ]
  %niter649 = phi i64 [ 0, %.lr.ph399.preheader.new ], [ %niter649.next.1, %.lr.ph399 ]
  %i.ci = mul i64 %i.a, %indvars.iv484
  %gep = getelementptr [8 x i8], ptr %i.ce, i64 %i.ci
  %i.cj = load double, ptr %gep, align 8, !tbaa !18
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp olt double %.2397, %i.ck           ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv484 to i32
  %.3332 = select i1 %i.cl, i32 %i.cm, i32 %.2331396
  %.3 = select i1 %i.cl, double %i.ck, double %.2397 ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %i.cn = mul i64 %i.a, %indvars.iv.next485
  %gep.1 = getelementptr [8 x i8], ptr %i.ce, i64 %i.cn
  %i.co = load double, ptr %gep.1, align 8, !tbaa !18
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.co) ; 2 uses
  %i.cq = fcmp olt double %.3, %i.cp              ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next485 to i32
  %.3332.1 = select i1 %i.cq, i32 %i.cr, i32 %.3332 ; 3 uses
  %.3.1 = select i1 %i.cq, double %i.cp, double %.3 ; 2 uses
  %indvars.iv.next485.1 = add nuw nsw i64 %indvars.iv484, 2 ; 2 uses
  %niter649.next.1 = add nuw i64 %niter649, 2     ; 2 uses
  %niter649.ncmp.1 = icmp eq i64 %niter649.next.1, %unroll_iter648
  br i1 %niter649.ncmp.1, label %._crit_edge400.loopexit.unr-lcssa, label %.lr.ph399, !llvm.loop !299

._crit_edge400.loopexit.unr-lcssa:                ; preds = %.lr.ph399
  %lcmp.mod645.not = icmp eq i64 %xtraiter643, 0
  br i1 %lcmp.mod645.not, label %._crit_edge400, label %.lr.ph399.epil.preheader

.lr.ph399.epil.preheader:                         ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399.preheader
  %indvars.iv484.epil.init = phi i64 [ 1, %.lr.ph399.preheader ], [ %indvars.iv.next485.1, %._crit_edge400.loopexit.unr-lcssa ] ; 2 uses
  %.2397.epil.init = phi double [ %i.cg, %.lr.ph399.preheader ], [ %.3.1, %._crit_edge400.loopexit.unr-lcssa ]
  %.2331396.epil.init = phi i32 [ 0, %.lr.ph399.preheader ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod647 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod647)
  %i.cs = mul i64 %i.a, %indvars.iv484.epil.init
  %gep.epil = getelementptr [8 x i8], ptr %i.ce, i64 %i.cs
  %i.ct = load double, ptr %gep.epil, align 8, !tbaa !18
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp olt double %.2397.epil.init, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv484.epil.init to i32
  %.3332.epil = select i1 %i.cv, i32 %i.cw, i32 %.2331396.epil.init
  br label %._crit_edge400

._crit_edge400:                                   ; preds = %.lr.ph399.epil.preheader, %._crit_edge400.loopexit.unr-lcssa, %bb.f
  %.2331.lcssa = phi i32 [ 0, %bb.f ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ], [ %.3332.epil, %.lr.ph399.epil.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv489
  store i32 %.2331.lcssa, ptr %i.cx, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %._crit_edge400
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  br i1 %exitcond493.not, label %._crit_edge406, label %bb.c, !llvm.loop !300

._crit_edge406:                                   ; preds = %bb.g
  %i.cy = icmp sgt i32 %5, 1                      ; 3 uses
  %i.cz = icmp ne i32 %i.ar, 0
  %or.cond = and i1 %i.cy, %i.cz
  %i.da = add nsw i32 %5, -1                      ; 3 uses
  br i1 %or.cond, label %.lr.ph456, label %._crit_edge406..loopexit387_crit_edge

._crit_edge406..loopexit387_crit_edge:            ; preds = %._crit_edge406
  br i1 %i.cy, label %.lr.ph468, label %._crit_edge469

.lr.ph456:                                        ; preds = %._crit_edge406
  %i.db = icmp samesign ugt i32 %5, 2
  %wide.trip.count521 = zext nneg i32 %5 to i64
  %i.dc = shl nuw nsw i64 %wide.trip.count492, 3  ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.dc
  %i.dd = shl i64 %.0359571, 3
  %scevgep584 = getelementptr i8, ptr %3, i64 %i.dc
  %i.de = shl i64 %.0359571, 3
  %i.df = and i64 %1, -8
  %scevgep593 = getelementptr i8, ptr %0, i64 8
  %i.dg = add nsw i32 %5, -2
  %i.dh = and i64 %1, -8
  %scevgep596 = getelementptr i8, ptr %0, i64 8
  %i.di = add nsw i64 %i.au, -1                   ; 3 uses
  %i.dj = add nsw i64 %wide.trip.count492, -1     ; 3 uses
  %i.dk = add nsw i32 %5, -3
  %i.dl = add nsw i32 %5, -3
  %xtraiter650 = and i64 %i.di, 1
  %i.dm = icmp eq i32 %i.at, 2
  %unroll_iter656 = and i64 %i.di, -2
  %lcmp.mod652.not = icmp eq i64 %xtraiter650, 0
  %lcmp.mod655 = trunc i64 %i.di to i1
  %xtraiter658 = and i64 %i.dj, 1
  %i.dn = icmp eq i32 %5, 2
  %unroll_iter664 = and i64 %i.dj, -2
  %lcmp.mod660.not = icmp eq i64 %xtraiter658, 0
  %lcmp.mod663 = trunc i64 %i.dj to i1
  %i.do = add nsw i32 %5, -2
  %n.vec = and i64 %wide.trip.count492, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count492
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph456, %bb.y
  %.0328455 = phi i32 [ 0, %.lr.ph456 ], [ %i.pv, %bb.y ]
  %i.dp = load i32, ptr %i.aq, align 4, !tbaa !50 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !18
  %i.dt = tail call noundef double @llvm.fabs.f64(double %i.ds) ; 3 uses
  br i1 %i.db, label %.lr.ph411.preheader, label %.lr.ph421.preheader

.lr.ph411.preheader:                              ; preds = %bb.h
  br i1 %i.dm, label %.lr.ph411.epil.preheader, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %indvars.iv494 = phi i64 [ %indvars.iv.next495.1, %.lr.ph411 ], [ 1, %.lr.ph411.preheader ] ; 5 uses
  %.4409 = phi double [ %.5.1, %.lr.ph411 ], [ %i.dt, %.lr.ph411.preheader ] ; 2 uses
  %.1340408 = phi i32 [ %.2341.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %niter657 = phi i64 [ %niter657.next.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %i.du = mul i64 %i.a, %indvars.iv494
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !50
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr [8 x i8], ptr %0, i64 %i.du
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !18
  %i.eb = tail call noundef double @llvm.fabs.f64(double %i.ea) ; 2 uses
  %i.ec = fcmp olt double %.4409, %i.eb           ; 2 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv494 to i32
  %.2341 = select i1 %i.ec, i32 %i.ed, i32 %.1340408
  %.5 = select i1 %i.ec, double %i.eb, double %.4409 ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 3 uses
  %i.ee = mul i64 %i.a, %indvars.iv.next495
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next495
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !50
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [8 x i8], ptr %0, i64 %i.ee
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !18
  %i.el = tail call noundef double @llvm.fabs.f64(double %i.ek) ; 2 uses
  %i.em = fcmp olt double %.5, %i.el              ; 2 uses
  %i.en = trunc nuw nsw i64 %indvars.iv.next495 to i32
  %.2341.1 = select i1 %i.em, i32 %i.en, i32 %.2341 ; 3 uses
  %.5.1 = select i1 %i.em, double %i.el, double %.5 ; 3 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494, 2 ; 2 uses
  %niter657.next.1 = add nuw i64 %niter657, 2     ; 2 uses
  %niter657.ncmp.1 = icmp eq i64 %niter657.next.1, %unroll_iter656
  br i1 %niter657.ncmp.1, label %._crit_edge412.loopexit.unr-lcssa, label %.lr.ph411, !llvm.loop !301

._crit_edge412.loopexit.unr-lcssa:                ; preds = %.lr.ph411
  br i1 %lcmp.mod652.not, label %._crit_edge412.loopexit, label %.lr.ph411.epil.preheader

.lr.ph411.epil.preheader:                         ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.preheader
  %indvars.iv494.epil.init = phi i64 [ 1, %.lr.ph411.preheader ], [ %indvars.iv.next495.1, %._crit_edge412.loopexit.unr-lcssa ] ; 3 uses
  %.4409.epil.init = phi double [ %i.dt, %.lr.ph411.preheader ], [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ] ; 2 uses
  %.1340408.epil.init = phi i32 [ 0, %.lr.ph411.preheader ], [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod655)
  %i.eo = mul i64 %i.a, %indvars.iv494.epil.init
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494.epil.init
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !50
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [8 x i8], ptr %0, i64 %i.eo
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.er
  %i.eu = load double, ptr %i.et, align 8, !tbaa !18
  %i.ev = tail call noundef double @llvm.fabs.f64(double %i.eu) ; 2 uses
  %i.ew = fcmp olt double %.4409.epil.init, %i.ev ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv494.epil.init to i32
  %.2341.epil = select i1 %i.ew, i32 %i.ex, i32 %.1340408.epil.init
  %.5.epil = select i1 %i.ew, double %i.ev, double %.4409.epil.init
  br label %._crit_edge412.loopexit

._crit_edge412.loopexit:                          ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.epil.preheader
  %.2341.lcssa = phi i32 [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.2341.epil, %.lr.ph411.epil.preheader ] ; 2 uses
  %.5.lcssa = phi double [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.5.epil, %.lr.ph411.epil.preheader ]
  %.phi.trans.insert = zext i32 %.2341.lcssa to i64
  %.phi.trans.insert551 = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert551, align 4, !tbaa !50
  br label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %._crit_edge412.loopexit, %bb.h
  %.0325419.ph = phi i32 [ %i.dp, %bb.h ], [ %.pre, %._crit_edge412.loopexit ] ; 2 uses
  %.6418.ph = phi double [ %i.dt, %bb.h ], [ %.5.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  %.3342417.ph = phi i32 [ 0, %bb.h ], [ %.2341.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  br i1 %i.dn, label %.lr.ph421.epil.preheader, label %.lr.ph421

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %.lr.ph421
  %indvars.iv499 = phi i64 [ %indvars.iv.next500.1, %.lr.ph421 ], [ 1, %.lr.ph421.preheader ] ; 5 uses
  %.0325419 = phi i32 [ %.1.1, %.lr.ph421 ], [ %.0325419.ph, %.lr.ph421.preheader ]
  %.6418 = phi double [ %.7.1, %.lr.ph421 ], [ %.6418.ph, %.lr.ph421.preheader ] ; 2 uses
  %.3342417 = phi i32 [ %.4343.1, %.lr.ph421 ], [ %.3342417.ph, %.lr.ph421.preheader ]
  %niter665 = phi i64 [ %niter665.next.1, %.lr.ph421 ], [ 0, %.lr.ph421.preheader ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !50 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.a, %i.fa
  %i.fc = getelementptr [8 x i8], ptr %0, i64 %i.fb
  %i.fd = getelementptr [8 x i8], ptr %i.fc, i64 %indvars.iv499
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18
  %i.ff = tail call noundef double @llvm.fabs.f64(double %i.fe) ; 2 uses
  %i.fg = fcmp olt double %.6418, %i.ff           ; 3 uses
  %.4343 = select i1 %i.fg, i32 %i.ez, i32 %.3342417
  %.7 = select i1 %i.fg, double %i.ff, double %.6418 ; 2 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv499 to i32
  %.1 = select i1 %i.fg, i32 %i.fh, i32 %.0325419
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next500
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !50 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul i64 %i.a, %i.fk
  %i.fm = getelementptr [8 x i8], ptr %0, i64 %i.fl
  %i.fn = getelementptr [8 x i8], ptr %i.fm, i64 %indvars.iv.next500
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !18
  %i.fp = tail call noundef double @llvm.fabs.f64(double %i.fo) ; 2 uses
  %i.fq = fcmp olt double %.7, %i.fp              ; 3 uses
  %.4343.1 = select i1 %i.fq, i32 %i.fj, i32 %.4343 ; 3 uses
  %.7.1 = select i1 %i.fq, double %i.fp, double %.7 ; 2 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv.next500 to i32
  %.1.1 = select i1 %i.fq, i32 %i.fr, i32 %.1     ; 3 uses
  %indvars.iv.next500.1 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %niter665.next.1 = add nuw i64 %niter665, 2     ; 2 uses
  %niter665.ncmp.1 = icmp eq i64 %niter665.next.1, %unroll_iter664
  br i1 %niter665.ncmp.1, label %._crit_edge422.unr-lcssa, label %.lr.ph421, !llvm.loop !302

._crit_edge422.unr-lcssa:                         ; preds = %.lr.ph421
  br i1 %lcmp.mod660.not, label %._crit_edge422, label %.lr.ph421.epil.preheader

.lr.ph421.epil.preheader:                         ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.preheader
  %indvars.iv499.epil.init = phi i64 [ 1, %.lr.ph421.preheader ], [ %indvars.iv.next500.1, %._crit_edge422.unr-lcssa ] ; 3 uses
  %.0325419.epil.init = phi i32 [ %.0325419.ph, %.lr.ph421.preheader ], [ %.1.1, %._crit_edge422.unr-lcssa ]
  %.6418.epil.init = phi double [ %.6418.ph, %.lr.ph421.preheader ], [ %.7.1, %._crit_edge422.unr-lcssa ]
  %.3342417.epil.init = phi i32 [ %.3342417.ph, %.lr.ph421.preheader ], [ %.4343.1, %._crit_edge422.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod663)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !50 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul i64 %i.a, %i.fu
  %i.fw = getelementptr [8 x i8], ptr %0, i64 %i.fv
  %i.fx = getelementptr [8 x i8], ptr %i.fw, i64 %indvars.iv499.epil.init
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !18
  %i.fz = tail call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = fcmp olt double %.6418.epil.init, %i.fz ; 2 uses
  %.4343.epil = select i1 %i.ga, i32 %i.ft, i32 %.3342417.epil.init
  %i.gb = trunc nuw nsw i64 %indvars.iv499.epil.init to i32
  %.1.epil = select i1 %i.ga, i32 %i.gb, i32 %.0325419.epil.init
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.epil.preheader
  %.4343.lcssa = phi i32 [ %.4343.1, %._crit_edge422.unr-lcssa ], [ %.4343.epil, %.lr.ph421.epil.preheader ] ; 11 uses
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge422.unr-lcssa ], [ %.1.epil, %.lr.ph421.epil.preheader ] ; 14 uses
  %i.gc = sext i32 %.4343.lcssa to i64            ; 7 uses
  %i.gd = mul i64 %i.a, %i.gc
  %i.ge = sext i32 %.1.lcssa to i64               ; 10 uses
  %i.gf = getelementptr [8 x i8], ptr %0, i64 %i.gd ; 8 uses
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %i.ge ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !18 ; 4 uses
  %i.gi = tail call noundef double @llvm.fabs.f64(double %i.gh) ; 9 uses
  %i.gj = fcmp ugt double %i.gi, f0x3CB0000000000000
  br i1 %i.gj, label %bb.i, label %.loopexit387

bb.i:                                             ; preds = %._crit_edge422
  %i.gk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ge ; 3 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !18
  %i.gm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gc ; 3 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !18
  %i.go = fsub double %i.gl, %i.gn
  %i.gp = fmul double %i.go, 5.000000e-01         ; 3 uses
  %i.gq = tail call noundef double @llvm.fabs.f64(double %i.gp) ; 5 uses
  %i.gr = fcmp ogt double %i.gi, %i.gq
  br i1 %i.gr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gs = fdiv double %i.gq, %i.gi                ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2cv11JacobiImpl_IdEEbPT_mS2_S2_miPh:bb.a
  %unroll_iter681 = and i64 %i.nf, -2
  br label %.lr.ph451

.lr.ph451:                                        ; preds = %.lr.ph451, %.lr.ph451.preheader.new
  %indvars.iv528 = phi i64 [ 1, %.lr.ph451.preheader.new ], [ %indvars.iv.next529.1689, %.lr.ph451 ] ; 4 uses
  %.10449 = phi double [ %i.ne, %.lr.ph451.preheader.new ], [ %.11.1688, %.lr.ph451 ] ; 2 uses
  %.6335448 = phi i32 [ 0, %.lr.ph451.preheader.new ], [ %.7336.1687, %.lr.ph451 ]
  %niter682 = phi i64 [ 0, %.lr.ph451.preheader.new ], [ %niter682.next.1, %.lr.ph451 ]
  %i.nh = mul i64 %i.a, %indvars.iv528
  %gep446 = getelementptr [8 x i8], ptr %i.nc, i64 %i.nh
  %i.ni = load double, ptr %gep446, align 8, !tbaa !18
  %i.nj = tail call noundef double @llvm.fabs.f64(double %i.ni) ; 2 uses
  %i.nk = fcmp olt double %.10449, %i.nj          ; 2 uses
  %i.nl = trunc nuw nsw i64 %indvars.iv528 to i32
  %.7336 = select i1 %i.nk, i32 %i.nl, i32 %.6335448
  %.11 = select i1 %i.nk, double %i.nj, double %.10449 ; 2 uses
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.nm = mul i64 %i.a, %indvars.iv.next529
  %gep446.1686 = getelementptr [8 x i8], ptr %i.nc, i64 %i.nm
  %i.nn = load double, ptr %gep446.1686, align 8, !tbaa !18
  %i.no = tail call noundef double @llvm.fabs.f64(double %i.nn) ; 2 uses
  %i.np = fcmp olt double %.11, %i.no             ; 2 uses
  %i.nq = trunc nuw nsw i64 %indvars.iv.next529 to i32
  %.7336.1687 = select i1 %i.np, i32 %i.nq, i32 %.7336 ; 3 uses
  %.11.1688 = select i1 %i.np, double %i.no, double %.11 ; 2 uses
  %indvars.iv.next529.1689 = add nuw nsw i64 %indvars.iv528, 2 ; 2 uses
  %niter682.next.1 = add nuw i64 %niter682, 2     ; 2 uses
  %niter682.ncmp.1 = icmp eq i64 %niter682.next.1, %unroll_iter681
  br i1 %niter682.ncmp.1, label %._crit_edge452.loopexit.unr-lcssa, label %.lr.ph451, !llvm.loop !316

._crit_edge452.loopexit.unr-lcssa:                ; preds = %.lr.ph451
  %lcmp.mod678.not = icmp eq i64 %xtraiter676, 0
  br i1 %lcmp.mod678.not, label %._crit_edge452, label %.lr.ph451.epil.preheader

.lr.ph451.epil.preheader:                         ; preds = %._crit_edge452.loopexit.unr-lcssa, %.lr.ph451.preheader
  %indvars.iv528.epil.init = phi i64 [ 1, %.lr.ph451.preheader ], [ %indvars.iv.next529.1689, %._crit_edge452.loopexit.unr-lcssa ] ; 2 uses
  %.10449.epil.init = phi double [ %i.ne, %.lr.ph451.preheader ], [ %.11.1688, %._crit_edge452.loopexit.unr-lcssa ]
  %.6335448.epil.init = phi i32 [ 0, %.lr.ph451.preheader ], [ %.7336.1687, %._crit_edge452.loopexit.unr-lcssa ]
  %lcmp.mod680 = trunc i64 %i.nf to i1
  tail call void @llvm.assume(i1 %lcmp.mod680)
  %i.nr = mul i64 %i.a, %indvars.iv528.epil.init
  %gep446.epil = getelementptr [8 x i8], ptr %i.nc, i64 %i.nr
  %i.ns = load double, ptr %gep446.epil, align 8, !tbaa !18
  %i.nt = tail call noundef double @llvm.fabs.f64(double %i.ns)
  %i.nu = fcmp olt double %.10449.epil.init, %i.nt
  %i.nv = trunc nuw nsw i64 %indvars.iv528.epil.init to i32
  %.7336.epil = select i1 %i.nu, i32 %i.nv, i32 %.6335448.epil.init
  br label %._crit_edge452

._crit_edge452:                                   ; preds = %.lr.ph451.epil.preheader, %._crit_edge452.loopexit.unr-lcssa, %bb.t
  %.6335.lcssa = phi i32 [ 0, %bb.t ], [ %.7336.1687, %._crit_edge452.loopexit.unr-lcssa ], [ %.7336.epil, %.lr.ph451.epil.preheader ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.nb
  store i32 %.6335.lcssa, ptr %i.nw, align 4, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge452, %bb.s
  %i.nx = icmp slt i32 %.1.lcssa, %i.da
  br i1 %i.nx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ny = mul i64 %i.a, %i.ge
  %i.nz = getelementptr [8 x i8], ptr %0, i64 %i.ny ; 4 uses
  %i.oa = add nsw i32 %.1.lcssa, 2                ; 3 uses
  %i.ob = icmp slt i32 %i.oa, %5
  br i1 %i.ob, label %.lr.ph442.preheader.1, label %._crit_edge443.1

.lr.ph442.preheader.1:                            ; preds = %bb.v
  %i.oc = sext i32 %.7354432 to i64
  %i.od = getelementptr [8 x i8], ptr %i.nz, i64 %i.oc
  %i.oe = load double, ptr %i.od, align 8, !tbaa !18
  %i.of = tail call noundef double @llvm.fabs.f64(double %i.oe) ; 3 uses
  %i.og = sext i32 %i.oa to i64                   ; 3 uses
  %i.oh = sub i32 %5, %.1.lcssa
  %xtraiter691 = and i32 %i.oh, 1
  %lcmp.mod692.not = icmp eq i32 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %.lr.ph442.1.prol.loopexit, label %.lr.ph442.1.prol

.lr.ph442.1.prol:                                 ; preds = %.lr.ph442.preheader.1
  %i.oi = getelementptr [8 x i8], ptr %i.nz, i64 %i.og
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !18
  %i.ok = tail call noundef double @llvm.fabs.f64(double %i.oj) ; 2 uses
  %i.ol = fcmp olt double %i.of, %i.ok            ; 2 uses
  %.5334.1.prol = select i1 %i.ol, i32 %i.oa, i32 %.7354432 ; 2 uses
  %.9.1.prol = select i1 %i.ol, double %i.ok, double %i.of
  %indvars.iv.next524.1.prol = add nsw i64 %i.og, 1
  br label %.lr.ph442.1.prol.loopexit

.lr.ph442.1.prol.loopexit:                        ; preds = %.lr.ph442.1.prol, %.lr.ph442.preheader.1
  %.5334.1.lcssa.unr = phi i32 [ poison, %.lr.ph442.preheader.1 ], [ %.5334.1.prol, %.lr.ph442.1.prol ]
  %indvars.iv523.1.unr = phi i64 [ %i.og, %.lr.ph442.preheader.1 ], [ %indvars.iv.next524.1.prol, %.lr.ph442.1.prol ]
  %.8440.1.unr = phi double [ %i.of, %.lr.ph442.preheader.1 ], [ %.9.1.prol, %.lr.ph442.1.prol ]
  %.4333439.1.unr = phi i32 [ %.7354432, %.lr.ph442.preheader.1 ], [ %.5334.1.prol, %.lr.ph442.1.prol ]
  %i.om = icmp eq i32 %i.dl, %.1.lcssa
  br i1 %i.om, label %._crit_edge443.1, label %.lr.ph442.1

.lr.ph442.1:                                      ; preds = %.lr.ph442.1.prol.loopexit, %.lr.ph442.1
  %indvars.iv523.1 = phi i64 [ %indvars.iv.next524.1.1, %.lr.ph442.1 ], [ %indvars.iv523.1.unr, %.lr.ph442.1.prol.loopexit ] ; 4 uses
  %.8440.1 = phi double [ %.9.1.1, %.lr.ph442.1 ], [ %.8440.1.unr, %.lr.ph442.1.prol.loopexit ] ; 2 uses
  %.4333439.1 = phi i32 [ %.5334.1.1, %.lr.ph442.1 ], [ %.4333439.1.unr, %.lr.ph442.1.prol.loopexit ]
  %i.on = getelementptr [8 x i8], ptr %i.nz, i64 %indvars.iv523.1
  %i.oo = load double, ptr %i.on, align 8, !tbaa !18
  %i.op = tail call noundef double @llvm.fabs.f64(double %i.oo) ; 2 uses
  %i.oq = fcmp olt double %.8440.1, %i.op         ; 2 uses
  %i.or = trunc nsw i64 %indvars.iv523.1 to i32
  %.5334.1 = select i1 %i.oq, i32 %i.or, i32 %.4333439.1
  %.9.1 = select i1 %i.oq, double %i.op, double %.8440.1 ; 2 uses
  %indvars.iv.next524.1 = add nsw i64 %indvars.iv523.1, 1 ; 2 uses
  %i.os = getelementptr [8 x i8], ptr %i.nz, i64 %indvars.iv.next524.1
  %i.ot = load double, ptr %i.os, align 8, !tbaa !18
  %i.ou = tail call noundef double @llvm.fabs.f64(double %i.ot) ; 2 uses
  %i.ov = fcmp olt double %.9.1, %i.ou            ; 2 uses
  %i.ow = trunc nsw i64 %indvars.iv.next524.1 to i32
  %.5334.1.1 = select i1 %i.ov, i32 %i.ow, i32 %.5334.1 ; 2 uses
  %.9.1.1 = select i1 %i.ov, double %i.ou, double %.9.1
  %indvars.iv.next524.1.1 = add nsw i64 %indvars.iv523.1, 2 ; 2 uses
  %lftr.wideiv526.1.1 = trunc i64 %indvars.iv.next524.1.1 to i32
  %exitcond527.1.not.1 = icmp eq i32 %5, %lftr.wideiv526.1.1
  br i1 %exitcond527.1.not.1, label %._crit_edge443.1, label %.lr.ph442.1, !llvm.loop !315

._crit_edge443.1:                                 ; preds = %.lr.ph442.1.prol.loopexit, %.lr.ph442.1, %bb.v
  %.4333.lcssa.1 = phi i32 [ %.7354432, %bb.v ], [ %.5334.1.lcssa.unr, %.lr.ph442.1.prol.loopexit ], [ %.5334.1.1, %.lr.ph442.1 ]
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ge
  store i32 %.4333.lcssa.1, ptr %i.ox, align 4, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge443.1, %bb.u
  %i.oy = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.oy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.oz = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %i.pa = getelementptr [8 x i8], ptr %0, i64 %i.oz ; 4 uses
  %.not474.1 = icmp eq i32 %.1.lcssa, 1
  br i1 %.not474.1, label %._crit_edge452.1, label %.lr.ph451.preheader.1

.lr.ph451.preheader.1:                            ; preds = %bb.x
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !18
  %i.pc = tail call noundef double @llvm.fabs.f64(double %i.pb) ; 2 uses
  %i.pd = add nsw i64 %i.oz, -1                   ; 3 uses
  %xtraiter693 = and i64 %i.pd, 1
  %i.pe = icmp eq i32 %.1.lcssa, 2
  br i1 %i.pe, label %.lr.ph451.1.epil.preheader, label %.lr.ph451.preheader.1.new

.lr.ph451.preheader.1.new:                        ; preds = %.lr.ph451.preheader.1
  %unroll_iter698 = and i64 %i.pd, -2
  br label %.lr.ph451.1

.lr.ph451.1:                                      ; preds = %.lr.ph451.1, %.lr.ph451.preheader.1.new
  %indvars.iv528.1 = phi i64 [ 1, %.lr.ph451.preheader.1.new ], [ %indvars.iv.next529.1.1, %.lr.ph451.1 ] ; 4 uses
  %.10449.1 = phi double [ %i.pc, %.lr.ph451.preheader.1.new ], [ %.11.1.1, %.lr.ph451.1 ] ; 2 uses
  %.6335448.1 = phi i32 [ 0, %.lr.ph451.preheader.1.new ], [ %.7336.1.1, %.lr.ph451.1 ]
  %niter699 = phi i64 [ 0, %.lr.ph451.preheader.1.new ], [ %niter699.next.1, %.lr.ph451.1 ]
  %i.pf = mul i64 %i.a, %indvars.iv528.1
  %gep446.1 = getelementptr [8 x i8], ptr %i.pa, i64 %i.pf
  %i.pg = load double, ptr %gep446.1, align 8, !tbaa !18
  %i.ph = tail call noundef double @llvm.fabs.f64(double %i.pg) ; 2 uses
  %i.pi = fcmp olt double %.10449.1, %i.ph        ; 2 uses
  %i.pj = trunc nuw nsw i64 %indvars.iv528.1 to i32
  %.7336.1 = select i1 %i.pi, i32 %i.pj, i32 %.6335448.1
  %.11.1 = select i1 %i.pi, double %i.ph, double %.10449.1 ; 2 uses
  %indvars.iv.next529.1 = add nuw nsw i64 %indvars.iv528.1, 1 ; 2 uses
  %i.pk = mul i64 %i.a, %indvars.iv.next529.1
  %gep446.1.1 = getelementptr [8 x i8], ptr %i.pa, i64 %i.pk
  %i.pl = load double, ptr %gep446.1.1, align 8, !tbaa !18
  %i.pm = tail call noundef double @llvm.fabs.f64(double %i.pl) ; 2 uses
  %i.pn = fcmp olt double %.11.1, %i.pm           ; 2 uses
  %i.po = trunc nuw nsw i64 %indvars.iv.next529.1 to i32
  %.7336.1.1 = select i1 %i.pn, i32 %i.po, i32 %.7336.1 ; 3 uses
  %.11.1.1 = select i1 %i.pn, double %i.pm, double %.11.1 ; 2 uses
  %indvars.iv.next529.1.1 = add nuw nsw i64 %indvars.iv528.1, 2 ; 2 uses
  %niter699.next.1 = add nuw i64 %niter699, 2     ; 2 uses
  %niter699.ncmp.1 = icmp eq i64 %niter699.next.1, %unroll_iter698
  br i1 %niter699.ncmp.1, label %._crit_edge452.1.loopexit.unr-lcssa, label %.lr.ph451.1, !llvm.loop !316

._crit_edge452.1.loopexit.unr-lcssa:              ; preds = %.lr.ph451.1
  %lcmp.mod695.not = icmp eq i64 %xtraiter693, 0
  br i1 %lcmp.mod695.not, label %._crit_edge452.1, label %.lr.ph451.1.epil.preheader

.lr.ph451.1.epil.preheader:                       ; preds = %._crit_edge452.1.loopexit.unr-lcssa, %.lr.ph451.preheader.1
  %indvars.iv528.1.epil.init = phi i64 [ 1, %.lr.ph451.preheader.1 ], [ %indvars.iv.next529.1.1, %._crit_edge452.1.loopexit.unr-lcssa ] ; 2 uses
  %.10449.1.epil.init = phi double [ %i.pc, %.lr.ph451.preheader.1 ], [ %.11.1.1, %._crit_edge452.1.loopexit.unr-lcssa ]
  %.6335448.1.epil.init = phi i32 [ 0, %.lr.ph451.preheader.1 ], [ %.7336.1.1, %._crit_edge452.1.loopexit.unr-lcssa ]
  %lcmp.mod697 = trunc i64 %i.pd to i1
  tail call void @llvm.assume(i1 %lcmp.mod697)
  %i.pp = mul i64 %i.a, %indvars.iv528.1.epil.init
  %gep446.1.epil = getelementptr [8 x i8], ptr %i.pa, i64 %i.pp
  %i.pq = load double, ptr %gep446.1.epil, align 8, !tbaa !18
  %i.pr = tail call noundef double @llvm.fabs.f64(double %i.pq)
  %i.ps = fcmp olt double %.10449.1.epil.init, %i.pr
  %i.pt = trunc nuw nsw i64 %indvars.iv528.1.epil.init to i32
  %.7336.1.epil = select i1 %i.ps, i32 %i.pt, i32 %.6335448.1.epil.init
  br label %._crit_edge452.1

._crit_edge452.1:                                 ; preds = %.lr.ph451.1.epil.preheader, %._crit_edge452.1.loopexit.unr-lcssa, %bb.x
  %.6335.lcssa.1 = phi i32 [ 0, %bb.x ], [ %.7336.1.1, %._crit_edge452.1.loopexit.unr-lcssa ], [ %.7336.1.epil, %.lr.ph451.1.epil.preheader ]
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.oz
  store i32 %.6335.lcssa.1, ptr %i.pu, align 4, !tbaa !50
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge452.1, %bb.w
  %i.pv = add nuw i32 %.0328455, 1                ; 2 uses
  %exitcond533.not = icmp eq i32 %i.pv, %i.ar
  br i1 %exitcond533.not, label %.loopexit387, label %bb.h, !llvm.loop !317

.loopexit387:                                     ; preds = %bb.y, %._crit_edge422
  br i1 %i.cy, label %.lr.ph468, label %._crit_edge469

.lr.ph468:                                        ; preds = %._crit_edge406..loopexit387_crit_edge, %.loopexit387
  %wide.trip.count549 = zext i32 %i.da to i64
  %wide.trip.count539 = zext nneg i32 %5 to i64
  %wide.trip.count544 = zext nneg i32 %5 to i64
  %i.pw = shl nuw nsw i64 %wide.trip.count492, 3
  %scevgep620 = getelementptr i8, ptr %3, i64 %i.pw
  %i.px = shl i64 %.0359571, 3                    ; 2 uses
  %i.py = add nuw nsw i64 %i.au, 2305843009213693951
  %i.pz = mul i64 %.0359571, %i.py
  %i.qa = add i64 %i.pz, %wide.trip.count492
  %i.qb = shl i64 %i.qa, 3
  %scevgep622 = getelementptr i8, ptr %3, i64 %i.qb
  %i.qc = add nsw i64 %wide.trip.count492, -2
  %min.iters.check627 = icmp ult i32 %5, 6
  %stride.check = icmp slt i64 %i.px, 0
  %n.vec629 = and i64 %wide.trip.count492, 4294967292 ; 3 uses
  %cmp.n638 = icmp eq i64 %n.vec629, %wide.trip.count492
  %xtraiter702 = and i64 %wide.trip.count492, 1
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  %i.qd = add nsw i64 %wide.trip.count492, -1
  br label %.lr.ph461.preheader

.lr.ph461.preheader:                              ; preds = %.loopexit, %.lr.ph468
  %indvars.iv546 = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next547, %.loopexit ] ; 8 uses
  %indvars.iv534 = phi i64 [ 1, %.lr.ph468 ], [ %indvars.iv.next535, %.loopexit ] ; 5 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %i.qe = trunc nuw nsw i64 %indvars.iv546 to i32 ; 2 uses
  %.phi.trans.insert552 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv546
  %.pre553 = load double, ptr %.phi.trans.insert552, align 8, !tbaa !18 ; 3 uses
  %i.qf = sub nsw i64 %indvars.iv546, %wide.trip.count492
  %i.qg = and i64 %i.qf, 1
  %lcmp.mod701.not.not = icmp eq i64 %i.qg, 0
  br i1 %lcmp.mod701.not.not, label %.lr.ph461.prol, label %.lr.ph461.prol.loopexit

.lr.ph461.prol:                                   ; preds = %.lr.ph461.preheader
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv534
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !18 ; 2 uses
  %i.qj = fcmp olt double %.pre553, %i.qi         ; 2 uses
  %i.qk = trunc nuw nsw i64 %indvars.iv534 to i32
  %spec.select.prol = select i1 %i.qj, i32 %i.qk, i32 %i.qe ; 2 uses
  %indvars.iv.next537.prol = add nuw nsw i64 %indvars.iv534, 1
  %i.ql = select i1 %i.qj, double %i.qi, double %.pre553
  br label %.lr.ph461.prol.loopexit

.lr.ph461.prol.loopexit:                          ; preds = %.lr.ph461.prol, %.lr.ph461.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph461.preheader ], [ %spec.select.prol, %.lr.ph461.prol ]
  %.unr = phi double [ %.pre553, %.lr.ph461.preheader ], [ %i.ql, %.lr.ph461.prol ]
  %indvars.iv536.unr = phi i64 [ %indvars.iv534, %.lr.ph461.preheader ], [ %indvars.iv.next537.prol, %.lr.ph461.prol ]
  %.8337459.unr = phi i32 [ %i.qe, %.lr.ph461.preheader ], [ %spec.select.prol, %.lr.ph461.prol ]
  %i.qm = icmp eq i64 %i.qc, %indvars.iv546
  br i1 %i.qm, label %._crit_edge462, label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461.prol.loopexit, %.lr.ph461
  %i.qn = phi double [ %i.qx, %.lr.ph461 ], [ %.unr, %.lr.ph461.prol.loopexit ] ; 2 uses
  %indvars.iv536 = phi i64 [ %indvars.iv.next537.1, %.lr.ph461 ], [ %indvars.iv536.unr, %.lr.ph461.prol.loopexit ] ; 4 uses
  %.8337459 = phi i32 [ %spec.select.1, %.lr.ph461 ], [ %.8337459.unr, %.lr.ph461.prol.loopexit ]
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv536
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !18 ; 2 uses
  %i.qq = fcmp olt double %i.qn, %i.qp            ; 2 uses
  %i.qr = trunc nuw nsw i64 %indvars.iv536 to i32
  %spec.select = select i1 %i.qq, i32 %i.qr, i32 %.8337459
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.qs = select i1 %i.qq, double %i.qp, double %i.qn ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next537
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !18 ; 2 uses
  %i.qv = fcmp olt double %i.qs, %i.qu            ; 2 uses
  %i.qw = trunc nuw nsw i64 %indvars.iv.next537 to i32
  %spec.select.1 = select i1 %i.qv, i32 %i.qw, i32 %spec.select ; 2 uses
  %indvars.iv.next537.1 = add nuw nsw i64 %indvars.iv536, 2 ; 2 uses
  %exitcond540.not.1 = icmp eq i64 %indvars.iv.next537.1, %wide.trip.count539
  %i.qx = select i1 %i.qv, double %i.qu, double %i.qs
  br i1 %exitcond540.not.1, label %._crit_edge462, label %.lr.ph461, !llvm.loop !318

._crit_edge462:                                   ; preds = %.lr.ph461, %.lr.ph461.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph461.prol.loopexit ], [ %spec.select.1, %.lr.ph461 ] ; 2 uses
  %i.qy = zext i32 %spec.select.lcssa to i64
  %.not375 = icmp eq i64 %indvars.iv546, %i.qy
  br i1 %.not375, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %._crit_edge462
  %i.qz = sext i32 %spec.select.lcssa to i64      ; 3 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv546 ; 2 uses
  %i.rc = load double, ptr %i.ra, align 8, !tbaa !18
  %i.rd = load double, ptr %i.rb, align 8, !tbaa !18
  store double %i.rd, ptr %i.ra, align 8, !tbaa !18
  store double %i.rc, ptr %i.rb, align 8, !tbaa !18
  br i1 %.not, label %.loopexit, label %.lr.ph465

.lr.ph465:                                        ; preds = %bb.z
  %i.re = mul i64 %.0359571, %i.qz
  %i.rf = getelementptr [8 x i8], ptr %3, i64 %i.re ; 5 uses
  %i.rg = mul i64 %.0359571, %indvars.iv546
  %i.rh = getelementptr [8 x i8], ptr %3, i64 %i.rg ; 4 uses
  br i1 %min.iters.check627, label %scalar.ph626.preheader, label %vector.memcheck619

vector.memcheck619:                               ; preds = %.lr.ph465
  %i.ri = mul i64 %i.px, %i.qz
  %scevgep621 = getelementptr i8, ptr %scevgep620, i64 %i.ri
  %bound0623 = icmp ult ptr %i.rf, %scevgep622
  %bound1624 = icmp ult ptr %3, %scevgep621
  %found.conflict625 = and i1 %bound0623, %bound1624
  %i.rj = or i1 %found.conflict625, %stride.check
  br i1 %i.rj, label %scalar.ph626.preheader, label %vector.body630

vector.body630:                                   ; preds = %vector.memcheck619, %vector.body630
  %index631 = phi i64 [ %index.next636, %vector.body630 ], [ 0, %vector.memcheck619 ] ; 3 uses
  %i.rk = getelementptr [8 x i8], ptr %i.rf, i64 %index631 ; 3 uses
  %i.rl = getelementptr [8 x i8], ptr %i.rh, i64 %index631 ; 3 uses
  %i.rm = getelementptr i8, ptr %i.rk, i64 16     ; 2 uses
  %wide.load632 = load <2 x double>, ptr %i.rk, align 8, !tbaa !18, !alias.scope !329, !noalias !330
  %wide.load633 = load <2 x double>, ptr %i.rm, align 8, !tbaa !18, !alias.scope !329, !noalias !330
  %i.rn = getelementptr i8, ptr %i.rl, i64 16     ; 2 uses
  %wide.load634 = load <2 x double>, ptr %i.rl, align 8, !tbaa !18, !alias.scope !330
  %wide.load635 = load <2 x double>, ptr %i.rn, align 8, !tbaa !18, !alias.scope !330
  store <2 x double> %wide.load634, ptr %i.rk, align 8, !tbaa !18, !alias.scope !329, !noalias !330
  store <2 x double> %wide.load635, ptr %i.rm, align 8, !tbaa !18, !alias.scope !329, !noalias !330
  store <2 x double> %wide.load632, ptr %i.rl, align 8, !tbaa !18, !alias.scope !330
  store <2 x double> %wide.load633, ptr %i.rn, align 8, !tbaa !18, !alias.scope !330
  %index.next636 = add nuw i64 %index631, 4       ; 2 uses
  %i.ro = icmp eq i64 %index.next636, %n.vec629
  br i1 %i.ro, label %middle.block637, label %vector.body630, !llvm.loop !322

middle.block637:                                  ; preds = %vector.body630
  br i1 %cmp.n638, label %.loopexit, label %scalar.ph626.preheader

scalar.ph626.preheader:                           ; preds = %vector.memcheck619, %.lr.ph465, %middle.block637
  %indvars.iv541.ph = phi i64 [ 0, %vector.memcheck619 ], [ 0, %.lr.ph465 ], [ %n.vec629, %middle.block637 ] ; 5 uses
  br i1 %lcmp.mod703.not, label %scalar.ph626.prol.loopexit, label %scalar.ph626.prol

scalar.ph626.prol:                                ; preds = %scalar.ph626.preheader
  %i.rp = getelementptr [8 x i8], ptr %i.rf, i64 %indvars.iv541.ph ; 2 uses
  %i.rq = getelementptr [8 x i8], ptr %i.rh, i64 %indvars.iv541.ph ; 2 uses
  %i.rr = load double, ptr %i.rp, align 8, !tbaa !18
  %i.rs = load double, ptr %i.rq, align 8, !tbaa !18
  store double %i.rs, ptr %i.rp, align 8, !tbaa !18
  store double %i.rr, ptr %i.rq, align 8, !tbaa !18
  %indvars.iv.next542.prol = or disjoint i64 %indvars.iv541.ph, 1
  br label %scalar.ph626.prol.loopexit

scalar.ph626.prol.loopexit:                       ; preds = %scalar.ph626.prol, %scalar.ph626.preheader
  %indvars.iv541.unr = phi i64 [ %indvars.iv541.ph, %scalar.ph626.preheader ], [ %indvars.iv.next542.prol, %scalar.ph626.prol ]
  %i.rt = icmp eq i64 %indvars.iv541.ph, %i.qd
  br i1 %i.rt, label %.loopexit, label %scalar.ph626

scalar.ph626:                                     ; preds = %scalar.ph626.prol.loopexit, %scalar.ph626
  %indvars.iv541 = phi i64 [ %indvars.iv.next542.1, %scalar.ph626 ], [ %indvars.iv541.unr, %scalar.ph626.prol.loopexit ] ; 4 uses
  %i.ru = getelementptr [8 x i8], ptr %i.rf, i64 %indvars.iv541 ; 2 uses
  %i.rv = getelementptr [8 x i8], ptr %i.rh, i64 %indvars.iv541 ; 2 uses
  %i.rw = load double, ptr %i.ru, align 8, !tbaa !18
  %i.rx = load double, ptr %i.rv, align 8, !tbaa !18
  store double %i.rx, ptr %i.ru, align 8, !tbaa !18
  store double %i.rw, ptr %i.rv, align 8, !tbaa !18
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.ry = getelementptr [8 x i8], ptr %i.rf, i64 %indvars.iv.next542 ; 2 uses
  %i.rz = getelementptr [8 x i8], ptr %i.rh, i64 %indvars.iv.next542 ; 2 uses
  %i.sa = load double, ptr %i.ry, align 8, !tbaa !18
  %i.sb = load double, ptr %i.rz, align 8, !tbaa !18
  store double %i.sb, ptr %i.ry, align 8, !tbaa !18
  store double %i.sa, ptr %i.rz, align 8, !tbaa !18
  %indvars.iv.next542.1 = add nuw nsw i64 %indvars.iv541, 2 ; 2 uses
  %exitcond545.not.1 = icmp eq i64 %indvars.iv.next542.1, %wide.trip.count544
  br i1 %exitcond545.not.1, label %.loopexit, label %scalar.ph626, !llvm.loop !323

.loopexit:                                        ; preds = %scalar.ph626.prol.loopexit, %scalar.ph626, %middle.block637, %bb.z, %._crit_edge462
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1
  %exitcond550.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count549
  br i1 %exitcond550.not, label %._crit_edge469, label %.lr.ph461.preheader, !llvm.loop !324

._crit_edge469:                                   ; preds = %.loopexit, %bb.b, %.loopexit389, %._crit_edge406..loopexit387_crit_edge, %.loopexit387
  ret i1 true
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

end_hunk_3
