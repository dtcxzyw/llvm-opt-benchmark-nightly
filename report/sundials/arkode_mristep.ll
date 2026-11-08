Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mristep?download=true
inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mriStep_CheckCoupling:bb.a
  ]

bb.o:                                             ; preds = %.thread401
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3485, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82) #14
  br label %.critedge

bb.p:                                             ; preds = %.thread401, %.thread401, %.thread401, %.thread401
  br i1 %.not181, label %thread-pre-split, label %.thread404

.thread404:                                       ; preds = %bb.k, %bb.p
  %i.v = load i32, ptr %i.e, align 8, !tbaa !75   ; 4 uses
  switch i32 %i.v, label %bb.q [
    i32 1, label %bb.r
    i32 2, label %bb.r
    i32 4, label %bb.r
  ]

bb.q:                                             ; preds = %.thread404
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3493, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.83) #14
  br label %.critedge

thread-pre-split:                                 ; preds = %bb.n, %bb.p
  %.pr = load i32, ptr %i.e, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %.thread404, %.thread404, %.thread404
  %i.w = phi i32 [ %.pr, %thread-pre-split ], [ %i.v, %.thread404 ], [ %i.v, %.thread404 ], [ %i.v, %.thread404 ] ; 2 uses
  %.phi.trans.insert384 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.pre385 = load ptr, ptr %.phi.trans.insert384, align 8, !tbaa !154 ; 2 uses
  %.not200 = icmp eq ptr %.pre385, null           ; 4 uses
  switch i32 %i.w, label %bb.ab [
    i32 2, label %bb.s
    i32 4, label %bb.s
    i32 0, label %bb.v
    i32 3, label %bb.v
    i32 1, label %bb.y
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  br i1 %.not200, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !155
  %.not199 = icmp eq ptr %i.y, null
  br i1 %.not199, label %bb.u, label %.preheader216

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3505, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #14
  br label %.critedge

bb.v:                                             ; preds = %bb.r, %bb.r
  br i1 %.not200, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !155
  %.not197 = icmp eq ptr %i.aa, null
  br i1 %.not197, label %.preheader216, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3516, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82) #14
  br label %.critedge

bb.y:                                             ; preds = %bb.r
  br i1 %.not200, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !155
  %.not195 = icmp eq ptr %i.ac, null
  br i1 %.not195, label %bb.aa, label %.thread408

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3526, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.83) #14
  br label %.critedge

bb.ab:                                            ; preds = %bb.r
  br i1 %.not200, label %.thread408, label %.preheader216

.preheader216:                                    ; preds = %bb.t, %bb.w, %bb.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !98 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.preheader215.us.preheader, label %.thread408

.preheader215.us.preheader:                       ; preds = %.preheader216
  %wide.trip.count313 = zext nneg i32 %i.ae to i64
  %wide.trip.count308 = zext nneg i32 %i.g to i64 ; 4 uses
  br label %.preheader215.us

.preheader215.us:                                 ; preds = %.preheader215.us.preheader, %._crit_edge.us
  %indvars.iv310 = phi i64 [ 0, %.preheader215.us.preheader ], [ %indvars.iv.next311, %._crit_edge.us ] ; 2 uses
  %.0147223.us = phi double [ 0.000000e+00, %.preheader215.us.preheader ], [ %.lcssa447, %._crit_edge.us ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre385, i64 %indvars.iv310
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !157
  br label %.preheader214.us

.preheader214.us.new:                             ; preds = %.prol.loopexit, %.preheader214.us.new
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.3, %.preheader214.us.new ], [ %indvars.iv304.unr, %.prol.loopexit ] ; 5 uses
  %.2219.us = phi double [ %i.ba, %.preheader214.us.new ], [ %.2219.us.unr, %.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv304
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !47
  %i.ak = tail call double @llvm.fabs.f64(double %i.aj)
  %i.al = fadd double %.2219.us, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv304
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !47
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fadd double %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv304
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load double, ptr %i.as, align 8, !tbaa !47
  %i.au = tail call double @llvm.fabs.f64(double %i.at)
  %i.av = fadd double %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv304
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !47
  %i.az = tail call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fadd double %i.av, %i.az                ; 2 uses
  %indvars.iv.next305.3 = add nuw nsw i64 %indvars.iv304, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next305.3, %wide.trip.count308
  br i1 %exitcond.not.3, label %.unr-lcssa, label %.preheader214.us.new

.unr-lcssa:                                       ; preds = %.preheader214.us.new, %.prol.loopexit
  %.lcssa447 = phi double [ %.lcssa447.unr, %.prol.loopexit ], [ %i.ba, %.preheader214.us.new ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %indvars.iv.next, %wide.trip.count308
  br i1 %exitcond309.not, label %._crit_edge.us, label %.preheader214.us

.preheader214.us:                                 ; preds = %.preheader215.us, %.unr-lcssa
  %indvars.iv = phi i64 [ 0, %.preheader215.us ], [ %indvars.iv.next, %.unr-lcssa ] ; 6 uses
  %.1221.us = phi double [ %.0147223.us, %.preheader215.us ], [ %.lcssa447, %.unr-lcssa ] ; 2 uses
  %i.bb = sub nsw i64 %wide.trip.count308, %indvars.iv
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !158 ; 5 uses
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader214.us, %.prol.preheader
  %indvars.iv304.prol = phi i64 [ %indvars.iv.next305.prol, %.prol.preheader ], [ %indvars.iv, %.preheader214.us ] ; 2 uses
  %.2219.us.prol = phi double [ %i.bh, %.prol.preheader ], [ %.1221.us, %.preheader214.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader214.us ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv304.prol
  %i.bf = load double, ptr %i.be, align 8, !tbaa !47
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fadd double %.2219.us.prol, %i.bg       ; 3 uses
  %indvars.iv.next305.prol = add nuw nsw i64 %indvars.iv304.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !251

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader214.us
  %.lcssa447.unr = phi double [ poison, %.preheader214.us ], [ %i.bh, %.prol.preheader ]
  %indvars.iv304.unr = phi i64 [ %indvars.iv, %.preheader214.us ], [ %indvars.iv.next305.prol, %.prol.preheader ]
  %.2219.us.unr = phi double [ %.1221.us, %.preheader214.us ], [ %i.bh, %.prol.preheader ]
  %i.bi = sub nsw i64 %indvars.iv, %wide.trip.count308
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %.unr-lcssa, label %.preheader214.us.new

._crit_edge.us:                                   ; preds = %.unr-lcssa
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count313
  br i1 %exitcond314.not, label %._crit_edge224, label %.preheader215.us

._crit_edge224:                                   ; preds = %._crit_edge.us
  %i.bk = fcmp ogt double %.lcssa447, f0x3D19000000000000
  br i1 %i.bk, label %bb.ac, label %.thread408

bb.ac:                                            ; preds = %._crit_edge224
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 3548, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84) #14
  br label %.critedge

.thread408:                                       ; preds = %.preheader216, %bb.z, %._crit_edge224, %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !155 ; 2 uses
  %.not201 = icmp eq ptr %i.bm, null
  br i1 %.not201, label %._crit_edge234.thread, label %.preheader213

.preheader213:                                    ; preds = %.thread408
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !98 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.preheader212.us.preheader, label %._crit_edge234.thread

.preheader212.us.preheader:                       ; preds = %.preheader213
  %i.bq = zext nneg i32 %i.g to i64
  %wide.trip.count330 = zext nneg i32 %i.bo to i64
  %wide.trip.count325 = zext nneg i32 %i.g to i64 ; 4 uses
  %i.br = add nsw i64 %wide.trip.count325, -2
  br label %.preheader212.us

.preheader212.us:                                 ; preds = %.preheader212.us.preheader, %._crit_edge.us237
  %indvars.iv327 = phi i64 [ 0, %.preheader212.us.preheader ], [ %indvars.iv.next328, %._crit_edge.us237 ] ; 2 uses
  %.0148233.us = phi double [ 0.000000e+00, %.preheader212.us.preheader ], [ %.2150.lcssa.us, %._crit_edge.us237 ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv327
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader212.us, %.loopexit.us
  %indvars.iv322 = phi i64 [ 0, %.preheader212.us ], [ %indvars.iv.next323, %.loopexit.us ] ; 4 uses
  %indvars.iv315.a = phi i64 [ 1, %.preheader212.us ], [ %indvars.iv.next316, %.loopexit.us ] ; 3 uses
  %.1149229.us = phi double [ %.0148233.us, %.preheader212.us ], [ %.2150.lcssa.us, %.loopexit.us ] ; 3 uses
  %i.bt = sub i64 %i.br, %indvars.iv322
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 3 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next323, %i.bq
  br i1 %i.bu, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us.new:                                    ; preds = %.prol.loopexit449, %.lr.ph.us.new
  %indvars.iv317 = phi i64 [ %indvars.iv.next318.3, %.lr.ph.us.new ], [ %indvars.iv317.unr, %.prol.loopexit449 ] ; 5 uses
  %.2150227.us = phi double [ %i.cn, %.lr.ph.us.new ], [ %.2150227.us.unr, %.prol.loopexit449 ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv317
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !47
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = fadd double %.2150227.us, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv317
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !47
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fadd double %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv317
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !47
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fadd double %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv317
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !47
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fadd double %i.ci, %i.cm                ; 2 uses
  %indvars.iv.next318.3 = add nuw nsw i64 %indvars.iv317, 4 ; 2 uses
  %exitcond321.not.3 = icmp eq i64 %indvars.iv.next318.3, %wide.trip.count325
  br i1 %exitcond321.not.3, label %.loopexit.us, label %.lr.ph.us.new

.loopexit.us:                                     ; preds = %.prol.loopexit449, %.lr.ph.us.new, %bb.ad
  %.2150.lcssa.us = phi double [ %.1149229.us, %bb.ad ], [ %.lcssa446.unr, %.prol.loopexit449 ], [ %i.cn, %.lr.ph.us.new ] ; 3 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315.a, 1
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %._crit_edge.us237, label %bb.ad

.lr.ph.us:                                        ; preds = %bb.ad
  %i.co = xor i64 %indvars.iv322, -1
  %i.cp = add nsw i64 %i.co, %wide.trip.count325
  %i.cq = load ptr, ptr %i.bs, align 8, !tbaa !157
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv322
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !158 ; 5 uses
  %xtraiter450 = and i64 %i.cp, 3                 ; 2 uses
  %lcmp.mod451.not = icmp eq i64 %xtraiter450, 0
  br i1 %lcmp.mod451.not, label %.prol.loopexit449, label %.prol.preheader448

.prol.preheader448:                               ; preds = %.lr.ph.us, %.prol.preheader448
  %indvars.iv317.prol = phi i64 [ %indvars.iv.next318.prol, %.prol.preheader448 ], [ %indvars.iv315.a, %.lr.ph.us ] ; 2 uses
  %.2150227.us.prol = phi double [ %i.cw, %.prol.preheader448 ], [ %.1149229.us, %.lr.ph.us ]
  %prol.iter452 = phi i64 [ %prol.iter452.next, %.prol.preheader448 ], [ 0, %.lr.ph.us ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv317.prol
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !47
  %i.cv = tail call double @llvm.fabs.f64(double %i.cu)
  %i.cw = fadd double %.2150227.us.prol, %i.cv    ; 3 uses
  %indvars.iv.next318.prol = add nuw nsw i64 %indvars.iv317.prol, 1 ; 2 uses
  %prol.iter452.next = add i64 %prol.iter452, 1   ; 2 uses
  %prol.iter452.cmp.not = icmp eq i64 %prol.iter452.next, %xtraiter450
  br i1 %prol.iter452.cmp.not, label %.prol.loopexit449, label %.prol.preheader448, !llvm.loop !252

.prol.loopexit449:                                ; preds = %.prol.preheader448, %.lr.ph.us
  %.lcssa446.unr = phi double [ poison, %.lr.ph.us ], [ %i.cw, %.prol.preheader448 ]
  %indvars.iv317.unr = phi i64 [ %indvars.iv315.a, %.lr.ph.us ], [ %indvars.iv.next318.prol, %.prol.preheader448 ]
  %.2150227.us.unr = phi double [ %.1149229.us, %.lr.ph.us ], [ %i.cw, %.prol.preheader448 ]
  %i.cx = icmp ult i64 %i.bt, 3
  br i1 %i.cx, label %.loopexit.us, label %.lr.ph.us.new

._crit_edge.us237:                                ; preds = %.loopexit.us
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond331.not = icmp eq i64 %indvars.iv.next328, %wide.trip.count330
  br i1 %exitcond331.not, label %._crit_edge234, label %.preheader212.us

._crit_edge234:                                   ; preds = %._crit_edge.us237
  %i.cy = fcmp ogt double %.2150.lcssa.us, f0x3D19000000000000
  br i1 %i.cy, label %bb.ae, label %._crit_edge234.thread

bb.ae:                                            ; preds = %._crit_edge234
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 3570, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85) #14
  br label %.critedge

._crit_edge234.thread:                            ; preds = %.preheader213, %._crit_edge234, %.thread408
  %i.cz = icmp eq i32 %i.w, 3
  br i1 %i.cz, label %bb.af, label %.lr.ph248.preheader

bb.af:                                            ; preds = %._crit_edge234.thread
  %i.da = add nuw i32 %i.g, 1
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = tail call noalias ptr @calloc(i64 noundef %i.db, i64 noundef 4) #15 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !159 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader211.lr.ph.split, label %.lr.ph.preheader

.preheader211.lr.ph.split:                        ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !160
  %wide.trip.count340 = zext nneg i32 %i.de to i64
  %wide.trip.count335 = zext nneg i32 %i.g to i64
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph.split, %._crit_edge
  %indvars.iv337 = phi i64 [ 0, %.preheader211.lr.ph.split ], [ %indvars.iv.next338, %._crit_edge ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv337
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !66
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader211, %bb.aj
  %indvars.iv332 = phi i64 [ 0, %.preheader211 ], [ %indvars.iv.next333, %bb.aj ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv332
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !35 ; 3 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %or.cond = icmp ugt i32 %i.dl, %i.g
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @free(ptr noundef %i.dc) #14
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 3589, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86) #14
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !35
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !35
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %bb.aj
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %.lr.ph.preheader, label %.preheader211

.lr.ph.preheader:                                 ; preds = %._crit_edge, %bb.af
  br label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next343, %i.db
  br i1 %exitcond346.not, label %._crit_edge244, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %bb.ak ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv342
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !35 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = icmp sgt i32 %i.ds, 1
  %or.cond207 = or i1 %i.dt, %i.du
  br i1 %or.cond207, label %bb.al, label %bb.ak

bb.al:                                            ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.dc) #14
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 3601, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87) #14
  br label %.critedge

._crit_edge244:                                   ; preds = %bb.ak
  tail call void @free(ptr noundef nonnull %i.dc) #14
  br label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %._crit_edge234.thread, %._crit_edge244
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %.lr.ph248
  %i.dv = phi ptr [ %i.dz, %.lr.ph248 ], [ %i.e, %.lr.ph248.preheader ]
  %.0151246 = phi i32 [ %spec.select, %.lr.ph248 ], [ 1, %.lr.ph248.preheader ]
  %.4166245 = phi i32 [ %i.dy, %.lr.ph248 ], [ 0, %.lr.ph248.preheader ] ; 2 uses
  %i.dw = tail call i32 @mriStepCoupling_GetStageType(ptr noundef nonnull %i.dv, i32 noundef %.4166245) #14
  %i.dx = icmp eq i32 %i.dw, 3
  %spec.select = select i1 %i.dx, i32 0, i32 %.0151246 ; 2 uses
  %i.dy = add nuw nsw i32 %.4166245, 1            ; 2 uses
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !70  ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !76 ; 12 uses
  %i.ec = icmp slt i32 %i.dy, %i.eb
  br i1 %i.ec, label %.lr.ph248, label %._crit_edge249

._crit_edge249:                                   ; preds = %.lr.ph248
  %.not203 = icmp eq i32 %spec.select, 0
  br i1 %.not203, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge249
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 3620, ptr noundef nonnull @__func__.mriStep_CheckCoupling, ptr noundef nonnull @.str, ptr noundef nonnull @.str.88) #14
  br label %.critedge

bb.an:                                            ; preds = %._crit_edge249
  %i.ed = load i32, ptr %i.dz, align 8, !tbaa !75
  %switch = icmp ult i32 %i.ed, 3
  %i.ee = icmp sgt i32 %i.eb, 1
  %or.cond422 = and i1 %switch, %i.ee
  br i1 %or.cond422, label %.lr.ph254, label %._crit_edge255.thread

.lr.ph254:                                        ; preds = %bb.an
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !132 ; 2 uses
  %wide.trip.count350 = zext nneg i32 %i.eb to i64 ; 2 uses
  %i.eh = add nsw i64 %wide.trip.count350, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %i.eb, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph254
  %n.vec = and i64 %i.eh, -4                      ; 3 uses
  %i.ei = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %vec.phi432 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.es, %vector.body ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %wide.load = load <2 x double>, ptr %i.ek, align 8, !tbaa !47
  %wide.load433.a = load <2 x double>, ptr %i.el, align 8, !tbaa !47
  %i.em = getelementptr i8, ptr %i.ej, i64 16
  %wide.load434 = load <2 x double>, ptr %i.ej, align 8, !tbaa !47
  %wide.load435 = load <2 x double>, ptr %i.em, align 8, !tbaa !47
  %i.en = fsub <2 x double> %wide.load, %wide.load434
  %i.eo = fsub <2 x double> %wide.load433.a, %wide.load435
  %i.ep = fcmp olt <2 x double> %i.en, splat (double f0xBD19000000000000)
  %i.eq = fcmp olt <2 x double> %i.eo, splat (double f0xBD19000000000000)
  %i.er = or <2 x i1> %vec.phi, %i.ep             ; 2 uses
  %i.es = or <2 x i1> %vec.phi432, %i.eq          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.es, %i.er
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.eu = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not436 = icmp eq i2 %i.eu, 0
  %rdx.select = zext i1 %.not436 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %._crit_edge255, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph254, %middle.block
  %indvars.iv347.ph = phi i64 [ 1, %.lr.ph254 ], [ %i.ei, %middle.block ]
  %.2153253.ph = phi i32 [ 1, %.lr.ph254 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %scalar.ph ], [ %indvars.iv347.ph, %scalar.ph.preheader ] ; 2 uses
  %.2153253 = phi i32 [ %spec.select208, %scalar.ph ], [ %.2153253.ph, %scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv347 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !47
  %i.ex = getelementptr i8, ptr %i.ev, i64 -8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !47
  %i.ez = fsub double %i.ew, %i.ey
  %i.fa = fcmp olt double %i.ez, f0xBD19000000000000
  %spec.select208 = select i1 %i.fa, i32 0, i32 %.2153253 ; 2 uses
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  br i1 %exitcond351.not, label %._crit_edge255, label %scalar.ph, !llvm.loop !254

._crit_edge255:                                   ; preds = %scalar.ph, %middle.block
  %spec.select208.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select208, %scalar.ph ]
  %i.fb = icmp eq i32 %spec.select208.lcssa, 0
  br i1 %i.fb, label %bb.ao, label %._crit_edge255.thread

end_hunk_0
