Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lapack?download=true
inline.NumInlined: 622
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN2cv11JacobiImpl_IfEEbPT_mS2_S2_miPh:bb.a
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
  %.0359572 = phi i64 [ %i.b, %.loopexit389.thread ], [ %4, %.loopexit389 ] ; 9 uses
  %.pn = mul i32 %5, 30
  %i.ar = mul i32 %.pn, %5                        ; 2 uses
  %i.as = add nuw nsw i64 %i.a, 1
  %i.at = add nsw i32 %5, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %wide.trip.count492 = zext i32 %5 to i64        ; 17 uses
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
  %xtraiter649 = and i64 %i.ax, 1
  %lcmp.mod650.not = icmp eq i64 %xtraiter649, 0
  br i1 %lcmp.mod650.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

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
  %xtraiter651 = and i64 %i.aw, 1
  %i.ch = icmp eq i64 %indvars.iv489, 2
  br i1 %i.ch, label %.lr.ph399.epil.preheader, label %.lr.ph399.preheader.new

.lr.ph399.preheader.new:                          ; preds = %.lr.ph399.preheader
  %unroll_iter656 = and i64 %i.aw, -2
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399, %.lr.ph399.preheader.new
  %indvars.iv484 = phi i64 [ 1, %.lr.ph399.preheader.new ], [ %indvars.iv.next485.1, %.lr.ph399 ] ; 4 uses
  %.2397 = phi float [ %i.cg, %.lr.ph399.preheader.new ], [ %.3.1, %.lr.ph399 ] ; 2 uses
  %.2331396 = phi i32 [ 0, %.lr.ph399.preheader.new ], [ %.3332.1, %.lr.ph399 ]
  %niter657 = phi i64 [ 0, %.lr.ph399.preheader.new ], [ %niter657.next.1, %.lr.ph399 ]
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
  %niter657.next.1 = add nuw i64 %niter657, 2     ; 2 uses
  %niter657.ncmp.1 = icmp eq i64 %niter657.next.1, %unroll_iter656
  br i1 %niter657.ncmp.1, label %._crit_edge400.loopexit.unr-lcssa, label %.lr.ph399, !llvm.loop !264

._crit_edge400.loopexit.unr-lcssa:                ; preds = %.lr.ph399
  %lcmp.mod653.not = icmp eq i64 %xtraiter651, 0
  br i1 %lcmp.mod653.not, label %._crit_edge400, label %.lr.ph399.epil.preheader

.lr.ph399.epil.preheader:                         ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399.preheader
  %indvars.iv484.epil.init = phi i64 [ 1, %.lr.ph399.preheader ], [ %indvars.iv.next485.1, %._crit_edge400.loopexit.unr-lcssa ] ; 2 uses
  %.2397.epil.init = phi float [ %i.cg, %.lr.ph399.preheader ], [ %.3.1, %._crit_edge400.loopexit.unr-lcssa ]
  %.2331396.epil.init = phi i32 [ 0, %.lr.ph399.preheader ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod655 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod655)
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
  %i.dc = add nsw i64 %i.au, -1                   ; 3 uses
  %i.dd = add nsw i64 %wide.trip.count492, -1     ; 3 uses
  %i.de = add nsw i32 %5, -3
  %i.df = add nsw i32 %5, -3
  %xtraiter658 = and i64 %i.dc, 1
  %i.dg = icmp eq i32 %i.at, 2
  %unroll_iter664 = and i64 %i.dc, -2
  %lcmp.mod660.not = icmp eq i64 %xtraiter658, 0
  %lcmp.mod663 = trunc i64 %i.dc to i1
  %xtraiter666 = and i64 %i.dd, 1
  %i.dh = icmp eq i32 %5, 2
  %unroll_iter672 = and i64 %i.dd, -2
  %lcmp.mod668.not = icmp eq i64 %xtraiter666, 0
  %lcmp.mod671 = trunc i64 %i.dd to i1
  %i.di = add nsw i32 %5, -2
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count492, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count492
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph456, %bb.y
  %.0328455 = phi i32 [ 0, %.lr.ph456 ], [ %i.qa, %bb.y ]
  %i.dj = load i32, ptr %i.aq, align 4, !tbaa !50 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !20
  %i.dn = tail call noundef float @llvm.fabs.f32(float %i.dm) ; 3 uses
  br i1 %i.db, label %.lr.ph411.preheader, label %.lr.ph421.preheader

.lr.ph411.preheader:                              ; preds = %bb.h
  br i1 %i.dg, label %.lr.ph411.epil.preheader, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %indvars.iv494 = phi i64 [ %indvars.iv.next495.1, %.lr.ph411 ], [ 1, %.lr.ph411.preheader ] ; 5 uses
  %.4409 = phi float [ %.5.1, %.lr.ph411 ], [ %i.dn, %.lr.ph411.preheader ] ; 2 uses
  %.1340408 = phi i32 [ %.2341.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %niter665 = phi i64 [ %niter665.next.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %i.do = mul i64 %i.a, %indvars.iv494
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !50
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [4 x i8], ptr %0, i64 %i.do
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load float, ptr %i.dt, align 4, !tbaa !20
  %i.dv = tail call noundef float @llvm.fabs.f32(float %i.du) ; 2 uses
  %i.dw = fcmp olt float %.4409, %i.dv            ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv494 to i32
  %.2341 = select i1 %i.dw, i32 %i.dx, i32 %.1340408
  %.5 = select i1 %i.dw, float %i.dv, float %.4409 ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 3 uses
  %i.dy = mul i64 %i.a, %indvars.iv.next495
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next495
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !50
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [4 x i8], ptr %0, i64 %i.dy
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !20
  %i.ef = tail call noundef float @llvm.fabs.f32(float %i.ee) ; 2 uses
  %i.eg = fcmp olt float %.5, %i.ef               ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv.next495 to i32
  %.2341.1 = select i1 %i.eg, i32 %i.eh, i32 %.2341 ; 3 uses
  %.5.1 = select i1 %i.eg, float %i.ef, float %.5 ; 3 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494, 2 ; 2 uses
  %niter665.next.1 = add nuw i64 %niter665, 2     ; 2 uses
  %niter665.ncmp.1 = icmp eq i64 %niter665.next.1, %unroll_iter664
  br i1 %niter665.ncmp.1, label %._crit_edge412.loopexit.unr-lcssa, label %.lr.ph411, !llvm.loop !266

._crit_edge412.loopexit.unr-lcssa:                ; preds = %.lr.ph411
  br i1 %lcmp.mod660.not, label %._crit_edge412.loopexit, label %.lr.ph411.epil.preheader

.lr.ph411.epil.preheader:                         ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.preheader
  %indvars.iv494.epil.init = phi i64 [ 1, %.lr.ph411.preheader ], [ %indvars.iv.next495.1, %._crit_edge412.loopexit.unr-lcssa ] ; 3 uses
  %.4409.epil.init = phi float [ %i.dn, %.lr.ph411.preheader ], [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ] ; 2 uses
  %.1340408.epil.init = phi i32 [ 0, %.lr.ph411.preheader ], [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod663)
  %i.ei = mul i64 %i.a, %indvars.iv494.epil.init
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !50
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [4 x i8], ptr %0, i64 %i.ei
  %i.en = getelementptr [4 x i8], ptr %i.em, i64 %i.el
  %i.eo = load float, ptr %i.en, align 4, !tbaa !20
  %i.ep = tail call noundef float @llvm.fabs.f32(float %i.eo) ; 2 uses
  %i.eq = fcmp olt float %.4409.epil.init, %i.ep  ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv494.epil.init to i32
  %.2341.epil = select i1 %i.eq, i32 %i.er, i32 %.1340408.epil.init
  %.5.epil = select i1 %i.eq, float %i.ep, float %.4409.epil.init
  br label %._crit_edge412.loopexit

._crit_edge412.loopexit:                          ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.epil.preheader
  %.2341.lcssa = phi i32 [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.2341.epil, %.lr.ph411.epil.preheader ] ; 2 uses
  %.5.lcssa = phi float [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.5.epil, %.lr.ph411.epil.preheader ]
  %.phi.trans.insert = zext i32 %.2341.lcssa to i64
  %.phi.trans.insert551 = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert551, align 4, !tbaa !50
  br label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %._crit_edge412.loopexit, %bb.h
  %.0325419.ph = phi i32 [ %i.dj, %bb.h ], [ %.pre, %._crit_edge412.loopexit ] ; 2 uses
  %.6418.ph = phi float [ %i.dn, %bb.h ], [ %.5.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  %.3342417.ph = phi i32 [ 0, %bb.h ], [ %.2341.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  br i1 %i.dh, label %.lr.ph421.epil.preheader, label %.lr.ph421

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %.lr.ph421
  %indvars.iv499 = phi i64 [ %indvars.iv.next500.1, %.lr.ph421 ], [ 1, %.lr.ph421.preheader ] ; 5 uses
  %.0325419 = phi i32 [ %.1.1, %.lr.ph421 ], [ %.0325419.ph, %.lr.ph421.preheader ]
  %.6418 = phi float [ %.7.1, %.lr.ph421 ], [ %.6418.ph, %.lr.ph421.preheader ] ; 2 uses
  %.3342417 = phi i32 [ %.4343.1, %.lr.ph421 ], [ %.3342417.ph, %.lr.ph421.preheader ]
  %niter673 = phi i64 [ %niter673.next.1, %.lr.ph421 ], [ 0, %.lr.ph421.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499
  %i.et = load i32, ptr %i.es, align 4, !tbaa !50 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul i64 %i.a, %i.eu
  %i.ew = getelementptr [4 x i8], ptr %0, i64 %i.ev
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv499
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !20
  %i.ez = tail call noundef float @llvm.fabs.f32(float %i.ey) ; 2 uses
  %i.fa = fcmp olt float %.6418, %i.ez            ; 3 uses
  %.4343 = select i1 %i.fa, i32 %i.et, i32 %.3342417
  %.7 = select i1 %i.fa, float %i.ez, float %.6418 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv499 to i32
  %.1 = select i1 %i.fa, i32 %i.fb, i32 %.0325419
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next500
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !50 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul i64 %i.a, %i.fe
  %i.fg = getelementptr [4 x i8], ptr %0, i64 %i.ff
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %indvars.iv.next500
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !20
  %i.fj = tail call noundef float @llvm.fabs.f32(float %i.fi) ; 2 uses
  %i.fk = fcmp olt float %.7, %i.fj               ; 3 uses
  %.4343.1 = select i1 %i.fk, i32 %i.fd, i32 %.4343 ; 3 uses
  %.7.1 = select i1 %i.fk, float %i.fj, float %.7 ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next500 to i32
  %.1.1 = select i1 %i.fk, i32 %i.fl, i32 %.1     ; 3 uses
  %indvars.iv.next500.1 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %niter673.next.1 = add nuw i64 %niter673, 2     ; 2 uses
  %niter673.ncmp.1 = icmp eq i64 %niter673.next.1, %unroll_iter672
  br i1 %niter673.ncmp.1, label %._crit_edge422.unr-lcssa, label %.lr.ph421, !llvm.loop !267

._crit_edge422.unr-lcssa:                         ; preds = %.lr.ph421
  br i1 %lcmp.mod668.not, label %._crit_edge422, label %.lr.ph421.epil.preheader

.lr.ph421.epil.preheader:                         ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.preheader
  %indvars.iv499.epil.init = phi i64 [ 1, %.lr.ph421.preheader ], [ %indvars.iv.next500.1, %._crit_edge422.unr-lcssa ] ; 3 uses
  %.0325419.epil.init = phi i32 [ %.0325419.ph, %.lr.ph421.preheader ], [ %.1.1, %._crit_edge422.unr-lcssa ]
  %.6418.epil.init = phi float [ %.6418.ph, %.lr.ph421.preheader ], [ %.7.1, %._crit_edge422.unr-lcssa ]
  %.3342417.epil.init = phi i32 [ %.3342417.ph, %.lr.ph421.preheader ], [ %.4343.1, %._crit_edge422.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !50 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = mul i64 %i.a, %i.fo
  %i.fq = getelementptr [4 x i8], ptr %0, i64 %i.fp
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %indvars.iv499.epil.init
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !20
  %i.ft = tail call noundef float @llvm.fabs.f32(float %i.fs)
  %i.fu = fcmp olt float %.6418.epil.init, %i.ft  ; 2 uses
  %.4343.epil = select i1 %i.fu, i32 %i.fn, i32 %.3342417.epil.init
  %i.fv = trunc nuw nsw i64 %indvars.iv499.epil.init to i32
  %.1.epil = select i1 %i.fu, i32 %i.fv, i32 %.0325419.epil.init
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.epil.preheader
  %.4343.lcssa = phi i32 [ %.4343.1, %._crit_edge422.unr-lcssa ], [ %.4343.epil, %.lr.ph421.epil.preheader ] ; 11 uses
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge422.unr-lcssa ], [ %.1.epil, %.lr.ph421.epil.preheader ] ; 13 uses
  %i.fw = sext i32 %.4343.lcssa to i64            ; 7 uses
  %i.fx = mul i64 %i.a, %i.fw
  %i.fy = sext i32 %.1.lcssa to i64               ; 10 uses
  %i.fz = getelementptr [4 x i8], ptr %0, i64 %i.fx ; 8 uses
  %i.ga = getelementptr [4 x i8], ptr %i.fz, i64 %i.fy ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !20 ; 4 uses
  %i.gc = tail call noundef float @llvm.fabs.f32(float %i.gb) ; 9 uses
  %i.gd = fcmp ugt float %i.gc, f0x34000000
  br i1 %i.gd, label %bb.i, label %.loopexit387

bb.i:                                             ; preds = %._crit_edge422
  %i.ge = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fy ; 3 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !20
  %i.gg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fw ; 3 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !20
  %i.gi = fsub float %i.gf, %i.gh
  %i.gj = fmul float %i.gi, 5.000000e-01          ; 3 uses
  %i.gk = tail call noundef float @llvm.fabs.f32(float %i.gj) ; 5 uses
  %i.gl = fcmp ogt float %i.gc, %i.gk
  br i1 %i.gl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gm = fdiv float %i.gk, %i.gc                 ; 2 uses
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.gm, float 1.000000e+00)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.gn)
  %i.go = fmul float %i.gc, %sqrt.i
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit

bb.k:                                             ; preds = %bb.i
  %i.gp = fcmp ueq float %i.gj, 0.000000e+00
  br i1 %i.gp, label %_ZN2cvL5hypotIfEET_S1_S1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = fdiv float %i.gc, %i.gk                 ; 2 uses
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gq, float 1.000000e+00)
  %sqrt19.i = tail call float @llvm.sqrt.f32(float %i.gr)
  %i.gs = fmul float %i.gk, %sqrt19.i
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit

_ZN2cvL5hypotIfEET_S1_S1_.exit:                   ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi float [ %i.go, %bb.j ], [ %i.gs, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.gt = fadd float %i.gk, %.0.i                 ; 5 uses
  %i.gu = tail call noundef float @llvm.fabs.f32(float %i.gt) ; 3 uses
  %i.gv = fcmp ogt float %i.gc, %i.gu
  br i1 %i.gv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2cvL5hypotIfEET_S1_S1_.exit
  %i.gw = fdiv float %i.gu, %i.gc                 ; 2 uses
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float 1.000000e+00)
  %sqrt.i379 = tail call float @llvm.sqrt.f32(float %i.gx)
  %i.gy = fmul float %i.gc, %sqrt.i379
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit380

bb.n:                                             ; preds = %_ZN2cvL5hypotIfEET_S1_S1_.exit
  %i.gz = fcmp ueq float %i.gt, 0.000000e+00
  br i1 %i.gz, label %_ZN2cvL5hypotIfEET_S1_S1_.exit380, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = fdiv float %i.gc, %i.gu                 ; 2 uses
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ha, float 1.000000e+00)
  %sqrt19.i377 = tail call float @llvm.sqrt.f32(float %i.hb)
  %i.hc = fmul float %i.gt, %sqrt19.i377
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit380

_ZN2cvL5hypotIfEET_S1_S1_.exit380:                ; preds = %bb.m, %bb.n, %bb.o
  %.0.i378 = phi float [ %i.gy, %bb.m ], [ %i.hc, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.hd = fdiv float %i.gt, %.0.i378              ; 10 uses
  %i.he = fdiv float %i.gb, %.0.i378              ; 2 uses
  %i.hf = fdiv float %i.gb, %i.gt
  %i.hg = fmul float %i.gb, %i.hf                 ; 2 uses
  %i.hh = fcmp olt float %i.gj, 0.000000e+00      ; 2 uses
  %i.hi = fneg float %i.he
  %i.hj = fneg float %i.hg
  %.0323 = select i1 %i.hh, float %i.hj, float %i.hg ; 2 uses
  %.0 = select i1 %i.hh, float %i.hi, float %i.he ; 10 uses
  store float 0.000000e+00, ptr %i.ga, align 4, !tbaa !20
  %i.hk = load float, ptr %i.gg, align 4, !tbaa !20
  %i.hl = fsub float %i.hk, %.0323
  store float %i.hl, ptr %i.gg, align 4, !tbaa !20
  %i.hm = load float, ptr %i.ge, align 4, !tbaa !20
  %i.hn = fadd float %.0323, %i.hm
  store float %i.hn, ptr %i.ge, align 4, !tbaa !20
  %i.ho = icmp sgt i32 %.4343.lcssa, 0            ; 2 uses
  br i1 %i.ho, label %.lr.ph426, label %.preheader385

.lr.ph426:                                        ; preds = %_ZN2cvL5hypotIfEET_S1_S1_.exit380
  %i.hp = fneg float %.0
  %wide.trip.count507 = zext nneg i32 %.4343.lcssa to i64
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.hd, i64 1
  %i.hs = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %.0, i64 1
  br label %bb.p

.preheader385:                                    ; preds = %bb.p, %_ZN2cvL5hypotIfEET_S1_S1_.exit380
  %invariant.gep427 = getelementptr [4 x i8], ptr %0, i64 %i.fy
  %.6353429 = add nsw i32 %.4343.lcssa, 1         ; 6 uses
  %i.hu = icmp slt i32 %.6353429, %.1.lcssa
  br i1 %i.hu, label %.lr.ph431, label %.preheader384

.lr.ph431:                                        ; preds = %.preheader385
  %i.hv = fneg float %.0
  %i.hw = sext i32 %.6353429 to i64
  %i.hx = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.hd, i64 1
  %i.hz = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %.0, i64 1
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph426, %bb.p
  %indvars.iv504 = phi i64 [ 0, %.lr.ph426 ], [ %indvars.iv.next505, %bb.p ] ; 2 uses
  %i.ib = mul i64 %i.a, %indvars.iv504
  %i.ic = getelementptr [4 x i8], ptr %0, i64 %i.ib ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %i.fw ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !20
  %i.if = getelementptr [4 x i8], ptr %i.ic, i64 %i.fy ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !20
  %i.ih = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %i.hr
  %i.ik = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.ht, <2 x float> %i.ij) ; 2 uses
  %i.in = extractelement <2 x float> %i.im, i64 0
  store float %i.in, ptr %i.id, align 4, !tbaa !20
  %i.io = extractelement <2 x float> %i.im, i64 1
  store float %i.io, ptr %i.if, align 4, !tbaa !20
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %wide.trip.count507
  br i1 %exitcond508.not, label %.preheader385, label %bb.p, !llvm.loop !268

.preheader384:                                    ; preds = %bb.q, %.preheader385
  %.7354432 = add nsw i32 %.1.lcssa, 1            ; 6 uses
  %i.ip = icmp slt i32 %.7354432, %5
  br i1 %i.ip, label %.lr.ph434, label %._crit_edge435

.lr.ph434:                                        ; preds = %.preheader384
  %i.iq = mul i64 %i.a, %i.fy
  %i.ir = getelementptr [4 x i8], ptr %0, i64 %i.iq ; 2 uses
  %i.is = fneg float %.0                          ; 2 uses
  %i.it = sext i32 %.7354432 to i64               ; 6 uses
  %i.iu = sub i32 %i.di, %.1.lcssa                ; 2 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check602 = icmp ult i32 %i.iu, 3
  br i1 %min.iters.check602, label %scalar.ph601.preheader, label %vector.memcheck603

vector.memcheck603:                               ; preds = %.lr.ph434
  %i.ix = mul i64 %i.a, %i.fw
  %i.iy = add i64 %i.ix, %i.it
  %i.iz = shl i64 %i.iy, 2                        ; 2 uses
  %i.ja = getelementptr i8, ptr %0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %i.iv, 2                ; 2 uses
  %i.jc = getelementptr i8, ptr %0, i64 %i.iz
  %i.jd = getelementptr i8, ptr %i.jc, i64 %i.jb
  %i.je = getelementptr i8, ptr %i.jd, i64 4
  %i.jf = mul i64 %i.a, %i.fy
  %i.jg = add i64 %i.jf, %i.it
  %i.jh = shl i64 %i.jg, 2                        ; 2 uses
  %i.ji = getelementptr i8, ptr %0, i64 %i.jh
  %i.jj = getelementptr i8, ptr %0, i64 %i.jh
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jb
  %i.jl = getelementptr i8, ptr %i.jk, i64 4
  %bound0604 = icmp ult ptr %i.ja, %i.jl
  %bound1605 = icmp ult ptr %i.ji, %i.je
  %found.conflict606 = and i1 %bound0604, %bound1605
  br i1 %found.conflict606, label %scalar.ph601.preheader, label %vector.ph607

vector.ph607:                                     ; preds = %vector.memcheck603
  %n.vec608 = and i64 %i.iw, 8589934588           ; 3 uses
  %i.jm = add nsw i64 %n.vec608, %i.it
  %broadcast.splatinsert609 = insertelement <4 x float> poison, float %i.is, i64 0
  %broadcast.splat610 = shufflevector <4 x float> %broadcast.splatinsert609, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert611 = insertelement <4 x float> poison, float %i.hd, i64 0
  %broadcast.splat612 = shufflevector <4 x float> %broadcast.splatinsert611, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert613 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat614 = shufflevector <4 x float> %broadcast.splatinsert613, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph607
  %index616 = phi i64 [ 0, %vector.ph607 ], [ %index.next619, %vector.body615 ] ; 2 uses
  %i.jn = add i64 %index616, %i.it                ; 2 uses
  %i.jo = getelementptr [4 x i8], ptr %i.fz, i64 %i.jn ; 2 uses
  %wide.load617 = load <4 x float>, ptr %i.jo, align 4, !tbaa !20, !alias.scope !290, !noalias !291 ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.ir, i64 %i.jn ; 2 uses
  %wide.load618 = load <4 x float>, ptr %i.jp, align 4, !tbaa !20, !alias.scope !291 ; 2 uses
  %i.jq = fmul <4 x float> %wide.load618, %broadcast.splat610
  %i.jr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load617, <4 x float> %broadcast.splat612, <4 x float> %i.jq)
  store <4 x float> %i.jr, ptr %i.jo, align 4, !tbaa !20, !alias.scope !290, !noalias !291
  %i.js = fmul <4 x float> %broadcast.splat612, %wide.load618
  %i.jt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load617, <4 x float> %broadcast.splat614, <4 x float> %i.js)
  store <4 x float> %i.jt, ptr %i.jp, align 4, !tbaa !20, !alias.scope !291
  %index.next619 = add nuw i64 %index616, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next619, %n.vec608
  br i1 %i.ju, label %middle.block620, label %vector.body615, !llvm.loop !272

middle.block620:                                  ; preds = %vector.body615
  %cmp.n621 = icmp eq i64 %i.iw, %n.vec608
  br i1 %cmp.n621, label %._crit_edge435, label %scalar.ph601.preheader

scalar.ph601.preheader:                           ; preds = %vector.memcheck603, %.lr.ph434, %middle.block620
  %indvars.iv513.ph = phi i64 [ %i.it, %vector.memcheck603 ], [ %i.it, %.lr.ph434 ], [ %i.jm, %middle.block620 ]
  %i.jv = insertelement <2 x float> poison, float %i.is, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.hd, i64 1
  %i.jx = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %.0, i64 1
  br label %scalar.ph601

bb.q:                                             ; preds = %.lr.ph431, %bb.q
  %indvars.iv509 = phi i64 [ %i.hw, %.lr.ph431 ], [ %indvars.iv.next510, %bb.q ] ; 3 uses
  %i.jz = getelementptr [4 x i8], ptr %i.fz, i64 %indvars.iv509 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !20
  %i.kb = mul i64 %i.a, %indvars.iv509
  %gep428 = getelementptr [4 x i8], ptr %invariant.gep427, i64 %i.kb ; 2 uses
  %i.kc = load float, ptr %gep428, align 4, !tbaa !20
  %i.kd = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.ke, %i.hy
  %i.kg = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.ia, <2 x float> %i.kf) ; 2 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0
  store float %i.kj, ptr %i.jz, align 4, !tbaa !20
  %i.kk = extractelement <2 x float> %i.ki, i64 1
  store float %i.kk, ptr %gep428, align 4, !tbaa !20
  %indvars.iv.next510 = add nsw i64 %indvars.iv509, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next510 to i32
  %exitcond512.not = icmp eq i32 %.1.lcssa, %lftr.wideiv
  br i1 %exitcond512.not, label %.preheader384, label %bb.q, !llvm.loop !273

scalar.ph601:                                     ; preds = %scalar.ph601.preheader, %scalar.ph601
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %scalar.ph601 ], [ %indvars.iv513.ph, %scalar.ph601.preheader ] ; 3 uses
  %i.kl = getelementptr [4 x i8], ptr %i.fz, i64 %indvars.iv513 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !20
  %i.kn = getelementptr [4 x i8], ptr %i.ir, i64 %indvars.iv513 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !20
  %i.kp = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.kq, %i.jw
  %i.ks = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.jy, <2 x float> %i.kr) ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  store float %i.kv, ptr %i.kl, align 4, !tbaa !20
  %i.kw = extractelement <2 x float> %i.ku, i64 1
  store float %i.kw, ptr %i.kn, align 4, !tbaa !20
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, 1 ; 2 uses
  %lftr.wideiv516 = trunc i64 %indvars.iv.next514 to i32
  %exitcond517.not = icmp eq i32 %5, %lftr.wideiv516
  br i1 %exitcond517.not, label %._crit_edge435, label %scalar.ph601, !llvm.loop !274

._crit_edge435:                                   ; preds = %scalar.ph601, %middle.block620, %.preheader384
  br i1 %.not, label %.loopexit383, label %.lr.ph437

.lr.ph437:                                        ; preds = %._crit_edge435
  %i.kx = mul i64 %.0359572, %i.fw
  %i.ky = getelementptr [4 x i8], ptr %3, i64 %i.kx ; 3 uses
  %i.kz = mul i64 %.0359572, %i.fy
  %i.la = getelementptr [4 x i8], ptr %3, i64 %i.kz ; 3 uses
  %i.lb = fneg float %.0                          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph437
  %i.lc = mul i64 %.0359572, %i.fw
  %i.ld = add i64 %i.lc, %wide.trip.count492
  %i.le = shl i64 %i.ld, 2
  %i.lf = getelementptr i8, ptr %3, i64 %i.le
  %i.lg = mul i64 %.0359572, %i.fy
  %i.lh = add i64 %i.lg, %wide.trip.count492
  %i.li = shl i64 %i.lh, 2
  %i.lj = getelementptr i8, ptr %3, i64 %i.li
  %bound0 = icmp ult ptr %i.ky, %i.lj
  %bound1 = icmp ult ptr %i.la, %i.lf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.lb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert587 = insertelement <4 x float> poison, float %i.hd, i64 0
  %broadcast.splat588 = shufflevector <4 x float> %broadcast.splatinsert587, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert589 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat590 = shufflevector <4 x float> %broadcast.splatinsert589, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lk = getelementptr [4 x i8], ptr %i.ky, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.lk, align 4, !tbaa !20, !alias.scope !292, !noalias !293 ; 2 uses
  %i.ll = getelementptr [4 x i8], ptr %i.la, i64 %index ; 2 uses
  %wide.load591 = load <4 x float>, ptr %i.ll, align 4, !tbaa !20, !alias.scope !293 ; 2 uses
  %i.lm = fmul <4 x float> %wide.load591, %broadcast.splat
  %i.ln = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat588, <4 x float> %i.lm)
  store <4 x float> %i.ln, ptr %i.lk, align 4, !tbaa !20, !alias.scope !292, !noalias !293
  %i.lo = fmul <4 x float> %broadcast.splat588, %wide.load591
  %i.lp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat590, <4 x float> %i.lo)
  store <4 x float> %i.lp, ptr %i.ll, align 4, !tbaa !20, !alias.scope !293
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit383, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph437, %middle.block
  %indvars.iv518.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph437 ], [ %n.vec, %middle.block ]
  %i.lr = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %i.hd, i64 1
  %i.lt = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.lu = insertelement <2 x float> %i.lt, float %.0, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %scalar.ph ], [ %indvars.iv518.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lv = getelementptr [4 x i8], ptr %i.ky, i64 %indvars.iv518 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !20
  %i.lx = getelementptr [4 x i8], ptr %i.la, i64 %indvars.iv518 ; 2 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !20
  %i.lz = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x float> %i.ma, %i.ls
  %i.mc = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.lu, <2 x float> %i.mb) ; 2 uses
  %i.mf = extractelement <2 x float> %i.me, i64 0
  store float %i.mf, ptr %i.lv, align 4, !tbaa !20
  %i.mg = extractelement <2 x float> %i.me, i64 1
  store float %i.mg, ptr %i.lx, align 4, !tbaa !20
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count521
  br i1 %exitcond522.not, label %.loopexit383, label %scalar.ph, !llvm.loop !279

.loopexit383:                                     ; preds = %scalar.ph, %middle.block, %._crit_edge435
  %i.mh = icmp slt i32 %.4343.lcssa, %i.da
  br i1 %i.mh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit383
  %i.mi = add nsw i32 %.4343.lcssa, 2             ; 3 uses
  %i.mj = icmp slt i32 %i.mi, %5
  br i1 %i.mj, label %.lr.ph442.preheader, label %._crit_edge443

.lr.ph442.preheader:                              ; preds = %bb.r
  %i.mk = sext i32 %.6353429 to i64
  %i.ml = getelementptr [4 x i8], ptr %i.fz, i64 %i.mk
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !20
  %i.mn = tail call noundef float @llvm.fabs.f32(float %i.mm) ; 3 uses
  %i.mo = sext i32 %i.mi to i64                   ; 3 uses
  %i.mp = sub i32 %5, %.4343.lcssa
  %xtraiter674 = and i32 %i.mp, 1
  %lcmp.mod675.not = icmp eq i32 %xtraiter674, 0
  br i1 %lcmp.mod675.not, label %.lr.ph442.prol.loopexit, label %.lr.ph442.prol

.lr.ph442.prol:                                   ; preds = %.lr.ph442.preheader
end_hunk_0
begin_hunk_1_@_ZN2cv11JacobiImpl_IdEEbPT_mS2_S2_miPh:bb.a
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
  %.0359572 = phi i64 [ %i.b, %.loopexit389.thread ], [ %4, %.loopexit389 ] ; 9 uses
  %.pn = mul i32 %5, 30
  %i.ar = mul i32 %.pn, %5                        ; 2 uses
  %i.as = add nuw nsw i64 %i.a, 1
  %i.at = add nsw i32 %5, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %wide.trip.count492 = zext i32 %5 to i64        ; 17 uses
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
  %xtraiter648 = and i64 %i.ax, 1
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

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
  %xtraiter650 = and i64 %i.aw, 1
  %i.ch = icmp eq i64 %indvars.iv489, 2
  br i1 %i.ch, label %.lr.ph399.epil.preheader, label %.lr.ph399.preheader.new

.lr.ph399.preheader.new:                          ; preds = %.lr.ph399.preheader
  %unroll_iter655 = and i64 %i.aw, -2
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399, %.lr.ph399.preheader.new
  %indvars.iv484 = phi i64 [ 1, %.lr.ph399.preheader.new ], [ %indvars.iv.next485.1, %.lr.ph399 ] ; 4 uses
  %.2397 = phi double [ %i.cg, %.lr.ph399.preheader.new ], [ %.3.1, %.lr.ph399 ] ; 2 uses
  %.2331396 = phi i32 [ 0, %.lr.ph399.preheader.new ], [ %.3332.1, %.lr.ph399 ]
  %niter656 = phi i64 [ 0, %.lr.ph399.preheader.new ], [ %niter656.next.1, %.lr.ph399 ]
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
  %niter656.next.1 = add nuw i64 %niter656, 2     ; 2 uses
  %niter656.ncmp.1 = icmp eq i64 %niter656.next.1, %unroll_iter655
  br i1 %niter656.ncmp.1, label %._crit_edge400.loopexit.unr-lcssa, label %.lr.ph399, !llvm.loop !299

._crit_edge400.loopexit.unr-lcssa:                ; preds = %.lr.ph399
  %lcmp.mod652.not = icmp eq i64 %xtraiter650, 0
  br i1 %lcmp.mod652.not, label %._crit_edge400, label %.lr.ph399.epil.preheader

.lr.ph399.epil.preheader:                         ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399.preheader
  %indvars.iv484.epil.init = phi i64 [ 1, %.lr.ph399.preheader ], [ %indvars.iv.next485.1, %._crit_edge400.loopexit.unr-lcssa ] ; 2 uses
  %.2397.epil.init = phi double [ %i.cg, %.lr.ph399.preheader ], [ %.3.1, %._crit_edge400.loopexit.unr-lcssa ]
  %.2331396.epil.init = phi i32 [ 0, %.lr.ph399.preheader ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod654 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod654)
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
  %i.dc = add nsw i64 %i.au, -1                   ; 3 uses
  %i.dd = add nsw i64 %wide.trip.count492, -1     ; 3 uses
  %i.de = add nsw i32 %5, -3
  %i.df = add nsw i32 %5, -3
  %xtraiter657 = and i64 %i.dc, 1
  %i.dg = icmp eq i32 %i.at, 2
  %unroll_iter663 = and i64 %i.dc, -2
  %lcmp.mod659.not = icmp eq i64 %xtraiter657, 0
  %lcmp.mod662 = trunc i64 %i.dc to i1
  %xtraiter665 = and i64 %i.dd, 1
  %i.dh = icmp eq i32 %5, 2
  %unroll_iter671 = and i64 %i.dd, -2
  %lcmp.mod667.not = icmp eq i64 %xtraiter665, 0
  %lcmp.mod670 = trunc i64 %i.dd to i1
  %i.di = add nsw i32 %5, -2
  %n.vec = and i64 %wide.trip.count492, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count492
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph456, %bb.y
  %.0328455 = phi i32 [ 0, %.lr.ph456 ], [ %i.qa, %bb.y ]
  %i.dj = load i32, ptr %i.aq, align 4, !tbaa !50 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !18
  %i.dn = tail call noundef double @llvm.fabs.f64(double %i.dm) ; 3 uses
  br i1 %i.db, label %.lr.ph411.preheader, label %.lr.ph421.preheader

.lr.ph411.preheader:                              ; preds = %bb.h
  br i1 %i.dg, label %.lr.ph411.epil.preheader, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %indvars.iv494 = phi i64 [ %indvars.iv.next495.1, %.lr.ph411 ], [ 1, %.lr.ph411.preheader ] ; 5 uses
  %.4409 = phi double [ %.5.1, %.lr.ph411 ], [ %i.dn, %.lr.ph411.preheader ] ; 2 uses
  %.1340408 = phi i32 [ %.2341.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %niter664 = phi i64 [ %niter664.next.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %i.do = mul i64 %i.a, %indvars.iv494
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !50
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [8 x i8], ptr %0, i64 %i.do
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !18
  %i.dv = tail call noundef double @llvm.fabs.f64(double %i.du) ; 2 uses
  %i.dw = fcmp olt double %.4409, %i.dv           ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv494 to i32
  %.2341 = select i1 %i.dw, i32 %i.dx, i32 %.1340408
  %.5 = select i1 %i.dw, double %i.dv, double %.4409 ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 3 uses
  %i.dy = mul i64 %i.a, %indvars.iv.next495
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next495
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !50
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [8 x i8], ptr %0, i64 %i.dy
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !18
  %i.ef = tail call noundef double @llvm.fabs.f64(double %i.ee) ; 2 uses
  %i.eg = fcmp olt double %.5, %i.ef              ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv.next495 to i32
  %.2341.1 = select i1 %i.eg, i32 %i.eh, i32 %.2341 ; 3 uses
  %.5.1 = select i1 %i.eg, double %i.ef, double %.5 ; 3 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494, 2 ; 2 uses
  %niter664.next.1 = add nuw i64 %niter664, 2     ; 2 uses
  %niter664.ncmp.1 = icmp eq i64 %niter664.next.1, %unroll_iter663
  br i1 %niter664.ncmp.1, label %._crit_edge412.loopexit.unr-lcssa, label %.lr.ph411, !llvm.loop !301

._crit_edge412.loopexit.unr-lcssa:                ; preds = %.lr.ph411
  br i1 %lcmp.mod659.not, label %._crit_edge412.loopexit, label %.lr.ph411.epil.preheader

.lr.ph411.epil.preheader:                         ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.preheader
  %indvars.iv494.epil.init = phi i64 [ 1, %.lr.ph411.preheader ], [ %indvars.iv.next495.1, %._crit_edge412.loopexit.unr-lcssa ] ; 3 uses
  %.4409.epil.init = phi double [ %i.dn, %.lr.ph411.preheader ], [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ] ; 2 uses
  %.1340408.epil.init = phi i32 [ 0, %.lr.ph411.preheader ], [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod662)
  %i.ei = mul i64 %i.a, %indvars.iv494.epil.init
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !50
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [8 x i8], ptr %0, i64 %i.ei
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !18
  %i.ep = tail call noundef double @llvm.fabs.f64(double %i.eo) ; 2 uses
  %i.eq = fcmp olt double %.4409.epil.init, %i.ep ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv494.epil.init to i32
  %.2341.epil = select i1 %i.eq, i32 %i.er, i32 %.1340408.epil.init
  %.5.epil = select i1 %i.eq, double %i.ep, double %.4409.epil.init
  br label %._crit_edge412.loopexit

._crit_edge412.loopexit:                          ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.epil.preheader
  %.2341.lcssa = phi i32 [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.2341.epil, %.lr.ph411.epil.preheader ] ; 2 uses
  %.5.lcssa = phi double [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.5.epil, %.lr.ph411.epil.preheader ]
  %.phi.trans.insert = zext i32 %.2341.lcssa to i64
  %.phi.trans.insert551 = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert551, align 4, !tbaa !50
  br label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %._crit_edge412.loopexit, %bb.h
  %.0325419.ph = phi i32 [ %i.dj, %bb.h ], [ %.pre, %._crit_edge412.loopexit ] ; 2 uses
  %.6418.ph = phi double [ %i.dn, %bb.h ], [ %.5.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  %.3342417.ph = phi i32 [ 0, %bb.h ], [ %.2341.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  br i1 %i.dh, label %.lr.ph421.epil.preheader, label %.lr.ph421

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %.lr.ph421
  %indvars.iv499 = phi i64 [ %indvars.iv.next500.1, %.lr.ph421 ], [ 1, %.lr.ph421.preheader ] ; 5 uses
  %.0325419 = phi i32 [ %.1.1, %.lr.ph421 ], [ %.0325419.ph, %.lr.ph421.preheader ]
  %.6418 = phi double [ %.7.1, %.lr.ph421 ], [ %.6418.ph, %.lr.ph421.preheader ] ; 2 uses
  %.3342417 = phi i32 [ %.4343.1, %.lr.ph421 ], [ %.3342417.ph, %.lr.ph421.preheader ]
  %niter672 = phi i64 [ %niter672.next.1, %.lr.ph421 ], [ 0, %.lr.ph421.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499
  %i.et = load i32, ptr %i.es, align 4, !tbaa !50 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul i64 %i.a, %i.eu
  %i.ew = getelementptr [8 x i8], ptr %0, i64 %i.ev
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %indvars.iv499
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !18
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey) ; 2 uses
  %i.fa = fcmp olt double %.6418, %i.ez           ; 3 uses
  %.4343 = select i1 %i.fa, i32 %i.et, i32 %.3342417
  %.7 = select i1 %i.fa, double %i.ez, double %.6418 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv499 to i32
  %.1 = select i1 %i.fa, i32 %i.fb, i32 %.0325419
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next500
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !50 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul i64 %i.a, %i.fe
  %i.fg = getelementptr [8 x i8], ptr %0, i64 %i.ff
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %indvars.iv.next500
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !18
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi) ; 2 uses
  %i.fk = fcmp olt double %.7, %i.fj              ; 3 uses
  %.4343.1 = select i1 %i.fk, i32 %i.fd, i32 %.4343 ; 3 uses
  %.7.1 = select i1 %i.fk, double %i.fj, double %.7 ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next500 to i32
  %.1.1 = select i1 %i.fk, i32 %i.fl, i32 %.1     ; 3 uses
  %indvars.iv.next500.1 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %niter672.next.1 = add nuw i64 %niter672, 2     ; 2 uses
  %niter672.ncmp.1 = icmp eq i64 %niter672.next.1, %unroll_iter671
  br i1 %niter672.ncmp.1, label %._crit_edge422.unr-lcssa, label %.lr.ph421, !llvm.loop !302

._crit_edge422.unr-lcssa:                         ; preds = %.lr.ph421
  br i1 %lcmp.mod667.not, label %._crit_edge422, label %.lr.ph421.epil.preheader

.lr.ph421.epil.preheader:                         ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.preheader
  %indvars.iv499.epil.init = phi i64 [ 1, %.lr.ph421.preheader ], [ %indvars.iv.next500.1, %._crit_edge422.unr-lcssa ] ; 3 uses
  %.0325419.epil.init = phi i32 [ %.0325419.ph, %.lr.ph421.preheader ], [ %.1.1, %._crit_edge422.unr-lcssa ]
  %.6418.epil.init = phi double [ %.6418.ph, %.lr.ph421.preheader ], [ %.7.1, %._crit_edge422.unr-lcssa ]
  %.3342417.epil.init = phi i32 [ %.3342417.ph, %.lr.ph421.preheader ], [ %.4343.1, %._crit_edge422.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod670)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !50 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = mul i64 %i.a, %i.fo
  %i.fq = getelementptr [8 x i8], ptr %0, i64 %i.fp
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv499.epil.init
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !18
  %i.ft = tail call noundef double @llvm.fabs.f64(double %i.fs)
  %i.fu = fcmp olt double %.6418.epil.init, %i.ft ; 2 uses
  %.4343.epil = select i1 %i.fu, i32 %i.fn, i32 %.3342417.epil.init
  %i.fv = trunc nuw nsw i64 %indvars.iv499.epil.init to i32
  %.1.epil = select i1 %i.fu, i32 %i.fv, i32 %.0325419.epil.init
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.epil.preheader
  %.4343.lcssa = phi i32 [ %.4343.1, %._crit_edge422.unr-lcssa ], [ %.4343.epil, %.lr.ph421.epil.preheader ] ; 11 uses
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge422.unr-lcssa ], [ %.1.epil, %.lr.ph421.epil.preheader ] ; 13 uses
  %i.fw = sext i32 %.4343.lcssa to i64            ; 7 uses
  %i.fx = mul i64 %i.a, %i.fw
  %i.fy = sext i32 %.1.lcssa to i64               ; 10 uses
  %i.fz = getelementptr [8 x i8], ptr %0, i64 %i.fx ; 8 uses
  %i.ga = getelementptr [8 x i8], ptr %i.fz, i64 %i.fy ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !18 ; 4 uses
  %i.gc = tail call noundef double @llvm.fabs.f64(double %i.gb) ; 9 uses
  %i.gd = fcmp ugt double %i.gc, f0x3CB0000000000000
  br i1 %i.gd, label %bb.i, label %.loopexit387

bb.i:                                             ; preds = %._crit_edge422
  %i.ge = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fy ; 3 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !18
  %i.gg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fw ; 3 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !18
  %i.gi = fsub double %i.gf, %i.gh
  %i.gj = fmul double %i.gi, 5.000000e-01         ; 3 uses
  %i.gk = tail call noundef double @llvm.fabs.f64(double %i.gj) ; 5 uses
  %i.gl = fcmp ogt double %i.gc, %i.gk
  br i1 %i.gl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gm = fdiv double %i.gk, %i.gc                ; 2 uses
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.gm, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.gn)
  %i.go = fmul double %i.gc, %sqrt.i
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit

bb.k:                                             ; preds = %bb.i
  %i.gp = fcmp ueq double %i.gj, 0.000000e+00
  br i1 %i.gp, label %_ZN2cvL5hypotIdEET_S1_S1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = fdiv double %i.gc, %i.gk                ; 2 uses
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gq, double 1.000000e+00)
  %sqrt19.i = tail call double @llvm.sqrt.f64(double %i.gr)
  %i.gs = fmul double %i.gk, %sqrt19.i
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit

_ZN2cvL5hypotIdEET_S1_S1_.exit:                   ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi double [ %i.go, %bb.j ], [ %i.gs, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.gt = fadd double %i.gk, %.0.i                ; 5 uses
  %i.gu = tail call noundef double @llvm.fabs.f64(double %i.gt) ; 3 uses
  %i.gv = fcmp ogt double %i.gc, %i.gu
  br i1 %i.gv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2cvL5hypotIdEET_S1_S1_.exit
  %i.gw = fdiv double %i.gu, %i.gc                ; 2 uses
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gw, double 1.000000e+00)
  %sqrt.i379 = tail call double @llvm.sqrt.f64(double %i.gx)
  %i.gy = fmul double %i.gc, %sqrt.i379
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit380

bb.n:                                             ; preds = %_ZN2cvL5hypotIdEET_S1_S1_.exit
  %i.gz = fcmp ueq double %i.gt, 0.000000e+00
  br i1 %i.gz, label %_ZN2cvL5hypotIdEET_S1_S1_.exit380, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = fdiv double %i.gc, %i.gu                ; 2 uses
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.ha, double 1.000000e+00)
  %sqrt19.i377 = tail call double @llvm.sqrt.f64(double %i.hb)
  %i.hc = fmul double %i.gt, %sqrt19.i377
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit380

_ZN2cvL5hypotIdEET_S1_S1_.exit380:                ; preds = %bb.m, %bb.n, %bb.o
  %.0.i378 = phi double [ %i.gy, %bb.m ], [ %i.hc, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.hd = fdiv double %i.gt, %.0.i378             ; 10 uses
  %i.he = fdiv double %i.gb, %.0.i378             ; 2 uses
  %i.hf = fdiv double %i.gb, %i.gt
  %i.hg = fmul double %i.gb, %i.hf                ; 2 uses
  %i.hh = fcmp olt double %i.gj, 0.000000e+00     ; 2 uses
  %i.hi = fneg double %i.he
  %i.hj = fneg double %i.hg
  %.0323 = select i1 %i.hh, double %i.hj, double %i.hg ; 2 uses
  %.0 = select i1 %i.hh, double %i.hi, double %i.he ; 10 uses
  store double 0.000000e+00, ptr %i.ga, align 8, !tbaa !18
  %i.hk = load double, ptr %i.gg, align 8, !tbaa !18
  %i.hl = fsub double %i.hk, %.0323
  store double %i.hl, ptr %i.gg, align 8, !tbaa !18
  %i.hm = load double, ptr %i.ge, align 8, !tbaa !18
  %i.hn = fadd double %.0323, %i.hm
  store double %i.hn, ptr %i.ge, align 8, !tbaa !18
  %i.ho = icmp sgt i32 %.4343.lcssa, 0            ; 2 uses
  br i1 %i.ho, label %.lr.ph426, label %.preheader385

.lr.ph426:                                        ; preds = %_ZN2cvL5hypotIdEET_S1_S1_.exit380
  %i.hp = fneg double %.0
  %wide.trip.count507 = zext nneg i32 %.4343.lcssa to i64
  %i.hq = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hd, i64 1
  %i.hs = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %.0, i64 1
  br label %bb.p

.preheader385:                                    ; preds = %bb.p, %_ZN2cvL5hypotIdEET_S1_S1_.exit380
  %invariant.gep427 = getelementptr [8 x i8], ptr %0, i64 %i.fy
  %.6353429 = add nsw i32 %.4343.lcssa, 1         ; 6 uses
  %i.hu = icmp slt i32 %.6353429, %.1.lcssa
  br i1 %i.hu, label %.lr.ph431, label %.preheader384

.lr.ph431:                                        ; preds = %.preheader385
  %i.hv = fneg double %.0
  %i.hw = sext i32 %.6353429 to i64
  %i.hx = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hd, i64 1
  %i.hz = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %.0, i64 1
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph426, %bb.p
  %indvars.iv504 = phi i64 [ 0, %.lr.ph426 ], [ %indvars.iv.next505, %bb.p ] ; 2 uses
  %i.ib = mul i64 %i.a, %indvars.iv504
  %i.ic = getelementptr [8 x i8], ptr %0, i64 %i.ib ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %i.ic, i64 %i.fw ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  %i.if = getelementptr [8 x i8], ptr %i.ic, i64 %i.fy ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !18
  %i.ih = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.ii, %i.hr
  %i.ik = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.ht, <2 x double> %i.ij) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0
  store double %i.in, ptr %i.id, align 8, !tbaa !18
  %i.io = extractelement <2 x double> %i.im, i64 1
  store double %i.io, ptr %i.if, align 8, !tbaa !18
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %wide.trip.count507
  br i1 %exitcond508.not, label %.preheader385, label %bb.p, !llvm.loop !303

.preheader384:                                    ; preds = %bb.q, %.preheader385
  %.7354432 = add nsw i32 %.1.lcssa, 1            ; 6 uses
  %i.ip = icmp slt i32 %.7354432, %5
  br i1 %i.ip, label %.lr.ph434, label %._crit_edge435

.lr.ph434:                                        ; preds = %.preheader384
  %i.iq = mul i64 %i.a, %i.fy
  %i.ir = getelementptr [8 x i8], ptr %0, i64 %i.iq ; 2 uses
  %i.is = fneg double %.0                         ; 2 uses
  %i.it = sext i32 %.7354432 to i64               ; 6 uses
  %i.iu = sub i32 %i.di, %.1.lcssa                ; 2 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.iu, 3
  br i1 %min.iters.check, label %scalar.ph601.preheader, label %vector.memcheck602

vector.memcheck602:                               ; preds = %.lr.ph434
  %i.ix = mul i64 %i.a, %i.fw
  %i.iy = add i64 %i.ix, %i.it
  %i.iz = shl i64 %i.iy, 3                        ; 2 uses
  %i.ja = getelementptr i8, ptr %0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %i.iv, 3                ; 2 uses
  %i.jc = getelementptr i8, ptr %0, i64 %i.iz
  %i.jd = getelementptr i8, ptr %i.jc, i64 %i.jb
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = mul i64 %i.a, %i.fy
  %i.jg = add i64 %i.jf, %i.it
  %i.jh = shl i64 %i.jg, 3                        ; 2 uses
  %i.ji = getelementptr i8, ptr %0, i64 %i.jh
  %i.jj = getelementptr i8, ptr %0, i64 %i.jh
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jb
  %i.jl = getelementptr i8, ptr %i.jk, i64 8
  %bound0603 = icmp ult ptr %i.ja, %i.jl
  %bound1604 = icmp ult ptr %i.ji, %i.je
  %found.conflict605 = and i1 %bound0603, %bound1604
  br i1 %found.conflict605, label %scalar.ph601.preheader, label %vector.ph606

vector.ph606:                                     ; preds = %vector.memcheck602
  %n.vec607 = and i64 %i.iw, 8589934590           ; 3 uses
  %i.jm = add nsw i64 %n.vec607, %i.it
  %broadcast.splatinsert608 = insertelement <2 x double> poison, double %i.is, i64 0
  %broadcast.splat609 = shufflevector <2 x double> %broadcast.splatinsert608, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert610 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat611 = shufflevector <2 x double> %broadcast.splatinsert610, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert612 = insertelement <2 x double> poison, double %.0, i64 0
  %broadcast.splat613 = shufflevector <2 x double> %broadcast.splatinsert612, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph606
  %index615 = phi i64 [ 0, %vector.ph606 ], [ %index.next618, %vector.body614 ] ; 2 uses
  %i.jn = add i64 %index615, %i.it                ; 2 uses
  %i.jo = getelementptr [8 x i8], ptr %i.fz, i64 %i.jn ; 2 uses
  %wide.load616 = load <2 x double>, ptr %i.jo, align 8, !tbaa !18, !alias.scope !325, !noalias !326 ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %i.ir, i64 %i.jn ; 2 uses
  %wide.load617 = load <2 x double>, ptr %i.jp, align 8, !tbaa !18, !alias.scope !326 ; 2 uses
  %i.jq = fmul <2 x double> %wide.load617, %broadcast.splat609
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load616, <2 x double> %broadcast.splat611, <2 x double> %i.jq)
  store <2 x double> %i.jr, ptr %i.jo, align 8, !tbaa !18, !alias.scope !325, !noalias !326
  %i.js = fmul <2 x double> %broadcast.splat611, %wide.load617
  %i.jt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load616, <2 x double> %broadcast.splat613, <2 x double> %i.js)
  store <2 x double> %i.jt, ptr %i.jp, align 8, !tbaa !18, !alias.scope !326
  %index.next618 = add nuw i64 %index615, 2       ; 2 uses
  %i.ju = icmp eq i64 %index.next618, %n.vec607
  br i1 %i.ju, label %middle.block619, label %vector.body614, !llvm.loop !307

middle.block619:                                  ; preds = %vector.body614
  %cmp.n620 = icmp eq i64 %i.iw, %n.vec607
  br i1 %cmp.n620, label %._crit_edge435, label %scalar.ph601.preheader

scalar.ph601.preheader:                           ; preds = %vector.memcheck602, %.lr.ph434, %middle.block619
  %indvars.iv513.ph = phi i64 [ %i.it, %vector.memcheck602 ], [ %i.it, %.lr.ph434 ], [ %i.jm, %middle.block619 ]
  %i.jv = insertelement <2 x double> poison, double %i.is, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %i.hd, i64 1
  %i.jx = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %.0, i64 1
  br label %scalar.ph601

bb.q:                                             ; preds = %.lr.ph431, %bb.q
  %indvars.iv509 = phi i64 [ %i.hw, %.lr.ph431 ], [ %indvars.iv.next510, %bb.q ] ; 3 uses
  %i.jz = getelementptr [8 x i8], ptr %i.fz, i64 %indvars.iv509 ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !18
  %i.kb = mul i64 %i.a, %indvars.iv509
  %gep428 = getelementptr [8 x i8], ptr %invariant.gep427, i64 %i.kb ; 2 uses
  %i.kc = load double, ptr %gep428, align 8, !tbaa !18
  %i.kd = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x double> %i.ke, %i.hy
  %i.kg = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.ia, <2 x double> %i.kf) ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0
  store double %i.kj, ptr %i.jz, align 8, !tbaa !18
  %i.kk = extractelement <2 x double> %i.ki, i64 1
  store double %i.kk, ptr %gep428, align 8, !tbaa !18
  %indvars.iv.next510 = add nsw i64 %indvars.iv509, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next510 to i32
  %exitcond512.not = icmp eq i32 %.1.lcssa, %lftr.wideiv
  br i1 %exitcond512.not, label %.preheader384, label %bb.q, !llvm.loop !308

scalar.ph601:                                     ; preds = %scalar.ph601.preheader, %scalar.ph601
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %scalar.ph601 ], [ %indvars.iv513.ph, %scalar.ph601.preheader ] ; 3 uses
  %i.kl = getelementptr [8 x i8], ptr %i.fz, i64 %indvars.iv513 ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !18
  %i.kn = getelementptr [8 x i8], ptr %i.ir, i64 %indvars.iv513 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !18
  %i.kp = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x double> %i.kq, %i.jw
  %i.ks = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.jy, <2 x double> %i.kr) ; 2 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 0
  store double %i.kv, ptr %i.kl, align 8, !tbaa !18
  %i.kw = extractelement <2 x double> %i.ku, i64 1
  store double %i.kw, ptr %i.kn, align 8, !tbaa !18
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, 1 ; 2 uses
  %lftr.wideiv516 = trunc i64 %indvars.iv.next514 to i32
  %exitcond517.not = icmp eq i32 %5, %lftr.wideiv516
  br i1 %exitcond517.not, label %._crit_edge435, label %scalar.ph601, !llvm.loop !309

._crit_edge435:                                   ; preds = %scalar.ph601, %middle.block619, %.preheader384
  br i1 %.not, label %.loopexit383, label %.lr.ph437

.lr.ph437:                                        ; preds = %._crit_edge435
  %i.kx = mul i64 %.0359572, %i.fw
  %i.ky = getelementptr [8 x i8], ptr %3, i64 %i.kx ; 3 uses
  %i.kz = mul i64 %.0359572, %i.fy
  %i.la = getelementptr [8 x i8], ptr %3, i64 %i.kz ; 3 uses
  %i.lb = fneg double %.0                         ; 2 uses
  %i.lc = mul i64 %.0359572, %i.fw
  %i.ld = add i64 %i.lc, %wide.trip.count492
  %i.le = shl i64 %i.ld, 3
  %i.lf = getelementptr i8, ptr %3, i64 %i.le
  %i.lg = mul i64 %.0359572, %i.fy
  %i.lh = add i64 %i.lg, %wide.trip.count492
  %i.li = shl i64 %i.lh, 3
  %i.lj = getelementptr i8, ptr %3, i64 %i.li
  %bound0 = icmp ult ptr %i.ky, %i.lj
  %bound1 = icmp ult ptr %i.la, %i.lf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph437
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.lb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert587 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat588 = shufflevector <2 x double> %broadcast.splatinsert587, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert589 = insertelement <2 x double> poison, double %.0, i64 0
  %broadcast.splat590 = shufflevector <2 x double> %broadcast.splatinsert589, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lk = getelementptr [8 x i8], ptr %i.ky, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.lk, align 8, !tbaa !18, !alias.scope !327, !noalias !328 ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %i.la, i64 %index ; 2 uses
  %wide.load591 = load <2 x double>, ptr %i.ll, align 8, !tbaa !18, !alias.scope !328 ; 2 uses
  %i.lm = fmul <2 x double> %wide.load591, %broadcast.splat
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat588, <2 x double> %i.lm)
  store <2 x double> %i.ln, ptr %i.lk, align 8, !tbaa !18, !alias.scope !327, !noalias !328
  %i.lo = fmul <2 x double> %broadcast.splat588, %wide.load591
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat590, <2 x double> %i.lo)
  store <2 x double> %i.lp, ptr %i.ll, align 8, !tbaa !18, !alias.scope !328
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit383, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph437, %middle.block
  %indvars.iv518.ph = phi i64 [ 0, %.lr.ph437 ], [ %n.vec, %middle.block ]
  %i.lr = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.hd, i64 1
  %i.lt = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %.0, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %scalar.ph ], [ %indvars.iv518.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lv = getelementptr [8 x i8], ptr %i.ky, i64 %indvars.iv518 ; 2 uses
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !18
  %i.lx = getelementptr [8 x i8], ptr %i.la, i64 %indvars.iv518 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !18
  %i.lz = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x double> %i.ma, %i.ls
  %i.mc = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.lu, <2 x double> %i.mb) ; 2 uses
  %i.mf = extractelement <2 x double> %i.me, i64 0
  store double %i.mf, ptr %i.lv, align 8, !tbaa !18
  %i.mg = extractelement <2 x double> %i.me, i64 1
  store double %i.mg, ptr %i.lx, align 8, !tbaa !18
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count521
  br i1 %exitcond522.not, label %.loopexit383, label %scalar.ph, !llvm.loop !314

.loopexit383:                                     ; preds = %scalar.ph, %middle.block, %._crit_edge435
  %i.mh = icmp slt i32 %.4343.lcssa, %i.da
  br i1 %i.mh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit383
  %i.mi = add nsw i32 %.4343.lcssa, 2             ; 3 uses
  %i.mj = icmp slt i32 %i.mi, %5
  br i1 %i.mj, label %.lr.ph442.preheader, label %._crit_edge443

.lr.ph442.preheader:                              ; preds = %bb.r
  %i.mk = sext i32 %.6353429 to i64
  %i.ml = getelementptr [8 x i8], ptr %i.fz, i64 %i.mk
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !18
  %i.mn = tail call noundef double @llvm.fabs.f64(double %i.mm) ; 3 uses
  %i.mo = sext i32 %i.mi to i64                   ; 3 uses
  %i.mp = sub i32 %5, %.4343.lcssa
  %xtraiter673 = and i32 %i.mp, 1
  %lcmp.mod674.not = icmp eq i32 %xtraiter673, 0
  br i1 %lcmp.mod674.not, label %.lr.ph442.prol.loopexit, label %.lr.ph442.prol

.lr.ph442.prol:                                   ; preds = %.lr.ph442.preheader
  %i.mq = getelementptr [8 x i8], ptr %i.fz, i64 %i.mo
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !18
  %i.ms = tail call noundef double @llvm.fabs.f64(double %i.mr) ; 2 uses
end_hunk_1
