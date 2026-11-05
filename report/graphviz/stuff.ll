Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stuff?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@solve_model:bb.a
  %i.oh = fadd double %.046.i.epil, %i.og         ; 2 uses
  %indvars.iv.next61.i.epil = add nuw nsw i64 %indvars.iv60.i.epil, 1
  %epil.iter278.next = add i64 %epil.iter278, 1   ; 2 uses
  %epil.iter278.cmp.not = icmp eq i64 %epil.iter278.next, %xtraiter277
  br i1 %epil.iter278.cmp.not, label %._crit_edge48.i, label %.lr.ph47.i.epil, !llvm.loop !151

._crit_edge48.i:                                  ; preds = %._crit_edge48.i.loopexit.unr-lcssa, %.lr.ph47.i.epil, %.preheader.i
  %.0.lcssa.i13 = phi double [ 0.000000e+00, %.preheader.i ], [ %i.od, %._crit_edge48.i.loopexit.unr-lcssa ], [ %i.oh, %.lr.ph47.i.epil ]
  %i.oi = call double @sqrt(double noundef %.0.lcssa.i13) #22
  %i.oj = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ok = call ptr @agnameof(ptr noundef nonnull %.0.lcssa.i) #22
  %i.ol = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oj, ptr noundef nonnull @.str.22, ptr noundef %i.ok, double noundef %i.oi) #19 ; 0 uses
  br label %move_node.exit

move_node.exit:                                   ; preds = %update_arrays.exit.i, %._crit_edge48.i
  call void @free(ptr noundef %i.br) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %.val = load ptr, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %i.om = load i32, ptr @choose_node.cnt, align 4, !tbaa !62
  %i.on = add nsw i32 %i.om, 1                    ; 2 uses
  store i32 %i.on, ptr @choose_node.cnt, align 4, !tbaa !62
  %i.oo = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !157
  %i.oq = load i32, ptr @MaxIter, align 4, !tbaa !62
  %.not.i = icmp slt i32 %i.op, %i.oq
  br i1 %.not.i, label %.preheader2.i, label %choose_node.exit.thread, !llvm.loop !152

choose_node.exit.thread:                          ; preds = %choose_node.exit, %move_node.exit, %._crit_edge9.i, %bb.a
  %i.or = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not11 = icmp eq i8 %i.or, 0
  br i1 %.not11, label %bb.n, label %bb.l

bb.l:                                             ; preds = %choose_node.exit.thread
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ot = icmp sgt i32 %1, 1
  br i1 %i.ot, label %.lr.ph.i19, label %total_e.exit

.lr.ph.i19:                                       ; preds = %bb.l
  %i.ou = add nsw i32 %1, -1
  %i.ov = load ptr, ptr %i.h, align 8, !tbaa !35  ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 184
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !53 ; 2 uses
  %i.oy = load i16, ptr @Ndim, align 2
  %.fr50.i = freeze i16 %i.oy                     ; 3 uses
  %.not.i20 = icmp eq i16 %.fr50.i, 0
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 208
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 200
  %wide.trip.count77.i = zext nneg i32 %i.ou to i64 ; 2 uses
  %i.pb = load ptr, ptr %i.oz, align 8, !tbaa !64 ; 2 uses
  %i.pc = load ptr, ptr %i.pa, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count72.i = zext nneg i32 %1 to i64  ; 4 uses
  br i1 %.not.i20, label %.lr.ph44.i.preheader, label %.lr.ph.split.us.preheader.i

.lr.ph44.i.preheader:                             ; preds = %.lr.ph.i19
  %i.pd = add nsw i64 %wide.trip.count72.i, -2
  br label %.lr.ph44.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i19
  %wide.trip.count.i21 = zext i16 %.fr50.i to i64 ; 2 uses
  %xtraiter285 = and i64 %wide.trip.count.i21, 3  ; 3 uses
  %i.pe = icmp ult i16 %.fr50.i, 4
  %unroll_iter290 = and i64 %wide.trip.count.i21, 65532
  %lcmp.mod287.not = icmp eq i64 %xtraiter285, 0
  %lcmp.mod289 = icmp ne i64 %xtraiter285, 0
  br label %.lr.ph44.us.i

.lr.ph44.us.i:                                    ; preds = %.loopexit.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next63.i, %.loopexit.us.i ] ; 4 uses
  %indvars.iv55.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next56.i, %.loopexit.us.i ] ; 2 uses
  %.03547.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %i.rh, %.loopexit.us.i ]
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv62.i
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !54
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %indvars.iv62.i
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !16
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv62.i
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !16
  %i.pm = load ptr, ptr %i.ph, align 8, !tbaa !35
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 176
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !75 ; 5 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph44.us.i
  %indvars.iv57.i22 = phi i64 [ %indvars.iv.next58.i26, %._crit_edge.us.us.i ], [ %indvars.iv55.i, %.lr.ph44.us.i ] ; 4 uses
  %.142.us.us.i = phi double [ %i.rh, %._crit_edge.us.us.i ], [ %.03547.us.i, %.lr.ph44.us.i ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv57.i22
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !54
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !35
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 176
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !75 ; 5 uses
  br i1 %i.pe, label %.epil.preheader284, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.040.us.us.i = phi double [ %i.qs, %.lr.ph.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %niter291 = phi i64 [ %niter291.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv.i23
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !18
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.i23
  %i.py = load double, ptr %i.px, align 8, !tbaa !18
  %i.pz = fsub double %i.pw, %i.py                ; 2 uses
  %i.qa = call double @llvm.fmuladd.f64(double %i.pz, double %i.pz, double %.040.us.us.i)
  %indvars.iv.next.i24 = or disjoint i64 %indvars.iv.i23, 1 ; 2 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv.next.i24
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !18
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.next.i24
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !18
  %i.qf = fsub double %i.qc, %i.qe                ; 2 uses
  %i.qg = call double @llvm.fmuladd.f64(double %i.qf, double %i.qf, double %i.qa)
  %indvars.iv.next.i24.1 = or disjoint i64 %indvars.iv.i23, 2 ; 2 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv.next.i24.1
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !18
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.next.i24.1
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !18
  %i.ql = fsub double %i.qi, %i.qk                ; 2 uses
  %i.qm = call double @llvm.fmuladd.f64(double %i.ql, double %i.ql, double %i.qg)
  %indvars.iv.next.i24.2 = or disjoint i64 %indvars.iv.i23, 3 ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv.next.i24.2
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.next.i24.2
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !18
  %i.qr = fsub double %i.qo, %i.qq                ; 2 uses
  %i.qs = call double @llvm.fmuladd.f64(double %i.qr, double %i.qr, double %i.qm) ; 3 uses
  %indvars.iv.next.i24.3 = add nuw nsw i64 %indvars.iv.i23, 4 ; 2 uses
  %niter291.next.3 = add i64 %niter291, 4         ; 2 uses
  %niter291.ncmp.3 = icmp eq i64 %niter291.next.3, %unroll_iter290
  br i1 %niter291.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !153

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod287.not, label %._crit_edge.us.us.i, label %.epil.preheader284

.epil.preheader284:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv.i23.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next.i24.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.040.us.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.i ], [ %i.qs, %._crit_edge.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod289)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader284
  %indvars.iv.i23.epil = phi i64 [ %indvars.iv.next.i24.epil, %bb.m ], [ %indvars.iv.i23.epil.init, %.epil.preheader284 ] ; 3 uses
  %.040.us.us.i.epil = phi double [ %i.qy, %bb.m ], [ %.040.us.us.i.epil.init, %.epil.preheader284 ]
  %epil.iter286 = phi i64 [ %epil.iter286.next, %bb.m ], [ 0, %.epil.preheader284 ]
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv.i23.epil
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !18
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv.i23.epil
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !18
  %i.qx = fsub double %i.qu, %i.qw                ; 2 uses
  %i.qy = call double @llvm.fmuladd.f64(double %i.qx, double %i.qx, double %.040.us.us.i.epil) ; 2 uses
  %indvars.iv.next.i24.epil = add nuw nsw i64 %indvars.iv.i23.epil, 1
  %epil.iter286.next = add i64 %epil.iter286, 1   ; 2 uses
  %epil.iter286.cmp.not = icmp eq i64 %epil.iter286.next, %xtraiter285
  br i1 %epil.iter286.cmp.not, label %._crit_edge.us.us.i, label %bb.m, !llvm.loop !154

._crit_edge.us.us.i:                              ; preds = %bb.m, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa242 = phi double [ %i.qs, %._crit_edge.us.us.i.unr-lcssa ], [ %i.qy, %bb.m ] ; 2 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv57.i22
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !18
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv57.i22
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !18 ; 3 uses
  %i.rd = call double @llvm.fmuladd.f64(double %i.rc, double %i.rc, double %.lcssa242)
  %i.re = call double @sqrt(double noundef %.lcssa242) #22
  %i.rf = fmul double %i.rc, -2.000000e+00
  %i.rg = call double @llvm.fmuladd.f64(double %i.rf, double %i.re, double %i.rd)
  %i.rh = call double @llvm.fmuladd.f64(double %i.ra, double %i.rg, double %.142.us.us.i) ; 3 uses
  %indvars.iv.next58.i26 = add nuw nsw i64 %indvars.iv57.i22, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i26, %wide.trip.count72.i
  br i1 %exitcond61.not.i, label %.loopexit.us.i, label %.lr.ph.us.us.i, !llvm.loop !155

.loopexit.us.i:                                   ; preds = %._crit_edge.us.us.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count77.i
  br i1 %exitcond66.not.i, label %total_e.exit, label %.lr.ph44.us.i, !llvm.loop !156

.loopexit.i:                                      ; preds = %.lr.ph44.i.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.sj, %.lr.ph44.i.new ] ; 2 uses
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count77.i
  br i1 %exitcond78.not.i, label %total_e.exit, label %.lr.ph44.i, !llvm.loop !156

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.loopexit.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %.loopexit.i ], [ 0, %.lr.ph44.i.preheader ] ; 5 uses
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %.loopexit.i ], [ 1, %.lr.ph44.i.preheader ] ; 5 uses
  %.03547.i = phi double [ %.lcssa, %.loopexit.i ], [ 0.000000e+00, %.lr.ph44.i.preheader ] ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %indvars.iv74.i
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !16 ; 3 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv74.i
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !16 ; 3 uses
  %i.rm = sub nsw i64 %indvars.iv74.i, %wide.trip.count72.i
  %i.rn = and i64 %i.rm, 1
  %lcmp.mod293.not.not = icmp eq i64 %i.rn, 0
  br i1 %lcmp.mod293.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph44.i
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv67.i
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !18
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv67.i
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !18 ; 3 uses
  %2 = call double @llvm.fmuladd.f64(double %i.rr, double %i.rr, double 0.000000e+00)
  %i.rs = fmul double %i.rr, -2.000000e+00
  %i.rt = call double @llvm.fmuladd.f64(double %i.rs, double 0.000000e+00, double %2)
  %i.ru = call double @llvm.fmuladd.f64(double %i.rp, double %i.rt, double %.03547.i) ; 2 uses
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv67.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph44.i
  %.lcssa.unr = phi double [ poison, %.lr.ph44.i ], [ %i.ru, %.prol.loopexit.unr-lcssa ]
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv67.i, %.lr.ph44.i ], [ %indvars.iv.next70.i.prol, %.prol.loopexit.unr-lcssa ]
  %.142.i.unr = phi double [ %.03547.i, %.lr.ph44.i ], [ %i.ru, %.prol.loopexit.unr-lcssa ]
  %i.rv = icmp eq i64 %i.pd, %indvars.iv74.i
  br i1 %i.rv, label %.loopexit.i, label %.lr.ph44.i.new

.lr.ph44.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph44.i.new
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.1, %.lr.ph44.i.new ], [ %indvars.iv69.i.unr, %.prol.loopexit ] ; 4 uses
  %.142.i = phi double [ %i.sj, %.lr.ph44.i.new ], [ %.142.i.unr, %.prol.loopexit ]
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv69.i
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !18
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv69.i
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !18 ; 3 uses
  %3 = call double @llvm.fmuladd.f64(double %i.rz, double %i.rz, double 0.000000e+00)
  %i.sa = fmul double %i.rz, -2.000000e+00
  %i.sb = call double @llvm.fmuladd.f64(double %i.sa, double 0.000000e+00, double %3)
  %i.sc = call double @llvm.fmuladd.f64(double %i.rx, double %i.sb, double %.142.i)
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv.next70.i
  %i.se = load double, ptr %i.sd, align 8, !tbaa !18
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv.next70.i
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !18 ; 3 uses
  %4 = call double @llvm.fmuladd.f64(double %i.sg, double %i.sg, double 0.000000e+00)
  %i.sh = fmul double %i.sg, -2.000000e+00
  %i.si = call double @llvm.fmuladd.f64(double %i.sh, double 0.000000e+00, double %4)
  %i.sj = call double @llvm.fmuladd.f64(double %i.se, double %i.si, double %i.sc) ; 2 uses
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond73.not.i.1 = icmp eq i64 %indvars.iv.next70.i.1, %wide.trip.count72.i
  br i1 %exitcond73.not.i.1, label %.loopexit.i, label %.lr.ph44.i.new, !llvm.loop !155

total_e.exit:                                     ; preds = %.loopexit.us.i, %.loopexit.i, %bb.l
  %.035.lcssa.i = phi double [ 0.000000e+00, %bb.l ], [ %.lcssa, %.loopexit.i ], [ %i.rh, %.loopexit.us.i ]
  %i.sk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.9, double noundef %.035.lcssa.i) #19 ; 0 uses
  %i.sl = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.sm = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 192
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !157 ; 2 uses
  %i.sp = load i32, ptr @MaxIter, align 4, !tbaa !62
  %i.sq = icmp eq i32 %i.so, %i.sp
  %i.sr = select i1 %i.sq, ptr @.str.11, ptr @.str.12
  %i.ss = call double @elapsed_sec() #22
  %i.st = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sl, ptr noundef nonnull @.str.10, i32 noundef %i.so, ptr noundef nonnull %i.sr, double noundef %i.ss) #19 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %total_e.exit, %choose_node.exit.thread
  %i.su = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 192
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !157 ; 2 uses
  %i.sx = load i32, ptr @MaxIter, align 4, !tbaa !62
  %i.sy = icmp eq i32 %i.sw, %i.sx
  br i1 %i.sy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.sz = call ptr @agnameof(ptr noundef nonnull %0) #22
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.13, i32 noundef %i.sw, ptr noundef %i.sz) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @neato_enqueue(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @Heapsize, align 4, !tbaa !62 ; 5 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @Heapsize, align 4, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  store i32 %i.a, ptr %i.e, align 8, !tbaa !61
  %i.f = load ptr, ptr @Heap, align 8, !tbaa !77  ; 3 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  store ptr %0, ptr %i.h, align 8, !tbaa !54
  %i.i = icmp sgt i32 %i.a, 0
  br i1 %i.i, label %.lr.ph.i, label %heapup.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.014.i = phi i32 [ %i.a, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.l = add nsw i32 %.014.i, -1
  %i.m = lshr i32 %i.l, 1                         ; 4 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  %i.t = load double, ptr %i.s, align 8, !tbaa !78
  %i.u = fcmp ugt double %i.t, %i.k
  br i1 %i.u, label %bb.c, label %heapup.exit

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.o, align 8, !tbaa !54
  store i32 %i.m, ptr %i.e, align 8, !tbaa !61
  %i.v = zext nneg i32 %.014.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  store ptr %i.p, ptr %i.w, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  store i32 %.014.i, ptr %i.x, align 8, !tbaa !61
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %heapup.exit, label %bb.b, !llvm.loop !2

heapup.exit:                                      ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @neato_dequeue() local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @Heapsize, align 4, !tbaa !62 ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @Heap, align 8, !tbaa !77  ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = add nsw i32 %i.a, -1                     ; 4 uses
  store i32 %i.e, ptr @Heapsize, align 4, !tbaa !62
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !61
  %i.l = icmp sgt i32 %i.a, 2
  br i1 %i.l, label %.lr.ph.i, label %heapdown.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.n = load double, ptr %i.m, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.o = phi i32 [ 1, %.lr.ph.i ], [ %i.aq, %bb.g ] ; 4 uses
  %i.p = phi i32 [ 0, %.lr.ph.i ], [ %i.ap, %bb.g ]
  %.01923.i = phi i32 [ 0, %.lr.ph.i ], [ %.0.i, %bb.g ] ; 2 uses
  %i.q = add nsw i32 %i.p, 2                      ; 3 uses
  %i.r = icmp slt i32 %i.q, %i.e
  br i1 %i.r, label %bb.d, label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %bb.c
  %.pre.phi.trans.insert.i = sext i32 %i.o to i64 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre.phi.trans.insert.i
  %.pre25.pre.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert26.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre25.pre.i, i64 16
  %.pre27.pre.i = load ptr, ptr %.phi.trans.insert26.phi.trans.insert.i, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert28.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre27.pre.i, i64 184
  %.pre29.pre.i = load double, ptr %.phi.trans.insert28.phi.trans.insert.i, align 8, !tbaa !78
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.y = load double, ptr %i.x, align 8, !tbaa !78 ; 2 uses
  %i.z = sext i32 %i.o to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %i.af = load double, ptr %i.ae, align 8, !tbaa !78 ; 2 uses
  %i.ag = fcmp olt double %i.y, %i.af
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge30.i
  %i.ah = phi double [ %i.y, %bb.d ], [ %.pre29.pre.i, %._crit_edge30.i ], [ %i.af, %bb.e ]
  %i.ai = phi ptr [ %i.w, %bb.d ], [ %.pre27.pre.i, %._crit_edge30.i ], [ %i.ad, %bb.e ]
  %i.aj = phi ptr [ %i.u, %bb.d ], [ %.pre25.pre.i, %._crit_edge30.i ], [ %i.ab, %bb.e ]
  %.pre-phi.i = phi i64 [ %i.s, %bb.d ], [ %.pre.phi.trans.insert.i, %._crit_edge30.i ], [ %i.z, %bb.e ]
  %.0.i = phi i32 [ %i.q, %bb.d ], [ %i.o, %._crit_edge30.i ], [ %i.o, %bb.e ] ; 3 uses
  %i.ak = fcmp ugt double %i.n, %i.ah
  br i1 %i.ak, label %bb.g, label %heapdown.exit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre-phi.i
  store ptr %i.h, ptr %i.al, align 8, !tbaa !54
  store i32 %.0.i, ptr %i.k, align 8, !tbaa !61
  %i.am = sext i32 %.01923.i to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.am
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  store i32 %.01923.i, ptr %i.ao, align 8, !tbaa !61
  %i.ap = shl nsw i32 %.0.i, 1                    ; 2 uses
  %i.aq = or disjoint i32 %i.ap, 1                ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.e
  br i1 %i.ar, label %bb.c, label %heapdown.exit, !llvm.loop !3

heapdown.exit:                                    ; preds = %bb.g, %bb.f, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  store i32 -1, ptr %i.au, align 8, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %heapdown.exit
  %.0 = phi ptr [ %i.d, %heapdown.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @shortest_path(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %mul.ov.i = icmp slt i32 %1, -1
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
