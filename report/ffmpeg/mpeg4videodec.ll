Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg4videodec?download=true
inline.NumInlined: 418
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 34
begin_hunk_0_@ff_mpeg4_decode_studio:bb.a
  tail call void %i.au(ptr noundef %i.av, i64 noundef %i.y, ptr noundef nonnull %i.aw) #13
  br label %._crit_edge162.2

.thread:                                          ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 720
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !65 ; 15 uses
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3864 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3860 ; 2 uses
  %i.be = sext i32 %i.bb to i64                   ; 15 uses
  %.not175 = icmp ugt i32 %i.ba, 4
  br i1 %.not175, label %.thread.1, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.thread
  %i.bf = lshr i32 16, %i.ba                      ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 5680      ; 2 uses
  %i.bh = sdiv i32 %6, 2
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = shl nuw nsw i32 16, %i.ba
  %i.bk = zext nneg i32 %i.bj to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %umax to i64   ; 5 uses
  %i.bl = tail call i32 @llvm.usub.sat.i32(i32 %i.bf, i32 1)
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = mul nsw i64 %i.bi, %i.bm
  %i.bo = add nsw i64 %i.bn, %wide.trip.count
  %i.bp = shl nsw i64 %i.bo, 1
  %scevgep = getelementptr i8, ptr %1, i64 %i.bp
  %i.bq = add nuw nsw i32 %i.ba, 4
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.bm, %i.br
  %i.bt = add nuw nsw i64 %i.bs, %wide.trip.count
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = getelementptr i8, ptr %0, i64 %i.bu
  %scevgep219 = getelementptr i8, ptr %i.bv, i64 5680
  %ident.check.not = icmp eq i32 %i.ba, 0
  %bound0 = icmp ult ptr %1, %scevgep219
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %6, -1
  %i.bw = or i1 %found.conflict, %stride.check
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bx = icmp ugt i32 %i.ba, 2
  %unroll_iter = and i64 %wide.trip.count, 28
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod348 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.by = phi ptr [ %i.cw, %._crit_edge.us ], [ %1, %.preheader.us.preheader ] ; 7 uses
  %.0150161.us = phi i32 [ %i.cy, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.0151160.us = phi ptr [ %i.cx, %._crit_edge.us ], [ %i.bg, %.preheader.us.preheader ] ; 7 uses
  %ident.check.not.not = xor i1 %ident.check.not, true
  %brmerge = select i1 %ident.check.not.not, i1 true, i1 %i.bw
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.us
  br i1 %i.bx, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0151160.us, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %wide.load = load <4 x i16>, ptr %i.bz, align 2, !tbaa !66, !alias.scope !207
  %wide.load220 = load <4 x i16>, ptr %i.ca, align 2, !tbaa !66, !alias.scope !207
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store <4 x i16> %wide.load, ptr %i.cb, align 2, !tbaa !66, !alias.scope !208, !noalias !207
  store <4 x i16> %wide.load220, ptr %i.cc, align 2, !tbaa !66, !alias.scope !208, !noalias !207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %wide.trip.count
  br i1 %i.cd, label %._crit_edge.us, label %vector.body, !llvm.loop !172

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.0151160.us, i64 %indvars.iv
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !66
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv184
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.be ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.0151160.us, i64 %indvars.iv.next
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !66
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv184
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !66
  %indvars.iv.next.1352 = add nuw nsw i64 %indvars.iv.next, %i.be ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.0151160.us, i64 %indvars.iv.next.1352
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !66
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv184
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i16 %i.cm, ptr %i.co, align 2, !tbaa !66
  %indvars.iv.next.2356 = add nuw nsw i64 %indvars.iv.next.1352, %i.be ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0151160.us, i64 %indvars.iv.next.2356
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !66
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv184
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !66
  %indvars.iv.next185.3 = add nuw nsw i64 %indvars.iv184, 4 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2356, %i.be ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !173

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv184.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next185.3, %._crit_edge.us.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod348)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv184.epil = phi i64 [ %indvars.iv.next185.epil, %scalar.ph.epil ], [ %indvars.iv184.epil.init, %scalar.ph.epil.preheader ] ; 2 uses
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %scalar.ph.epil ], [ %indvars.iv.epil.init, %scalar.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0151160.us, i64 %indvars.iv.epil
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !66
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv184.epil
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !66
  %indvars.iv.next185.epil = add nuw nsw i64 %indvars.iv184.epil, 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, %i.be
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %scalar.ph.epil, !llvm.loop !174

._crit_edge.us:                                   ; preds = %vector.body, %._crit_edge.us.loopexit.unr-lcssa, %scalar.ph.epil
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bi
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0151160.us, i64 %i.bk
  %i.cy = add nuw nsw i32 %.0150161.us, 1         ; 2 uses
  %exitcond190.not = icmp eq i32 %i.cy, %umax
  br i1 %exitcond190.not, label %.thread.1, label %.preheader.us, !llvm.loop !175

.thread.1:                                        ; preds = %._crit_edge.us, %.thread
  %i.cz = getelementptr i8, ptr %0, i64 6192      ; 2 uses
  %i.da = load i32, ptr %i.bc, align 8, !tbaa !209
  %i.db = add nsw i32 %i.ba, %i.da                ; 2 uses
  %i.dc = lshr i32 16, %i.db                      ; 2 uses
  %.not175.1 = icmp ugt i32 %i.db, 4
  br i1 %.not175.1, label %.thread.2, label %.preheader.lr.ph.1

.preheader.lr.ph.1:                               ; preds = %.thread.1
  %i.dd = load i32, ptr %i.bd, align 4, !tbaa !206 ; 2 uses
  %i.de = add nsw i32 %i.ba, %i.dd                ; 3 uses
  %.not176.1 = icmp ugt i32 %i.de, 4
  %i.df = sdiv i32 %5, 2
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i32 16, %i.dd
  %i.di = shl i32 %i.dh, %i.ba
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  br i1 %.not176.1, label %.thread.2, label %.preheader.us.preheader.1

.preheader.us.preheader.1:                        ; preds = %.preheader.lr.ph.1
  %i.dk = lshr i32 16, %i.de                      ; 2 uses
  %umax189.1 = tail call i32 @llvm.umax.i32(i32 %i.dc, i32 1)
  %wide.trip.count.1 = zext nneg i32 %i.dk to i64 ; 5 uses
  %i.dl = tail call i32 @llvm.usub.sat.i32(i32 %i.dc, i32 1)
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = mul nsw i64 %i.dg, %i.dm
  %i.do = add nsw i64 %i.dn, %wide.trip.count.1
  %i.dp = shl nsw i64 %i.do, 1
  %scevgep224 = getelementptr i8, ptr %2, i64 %i.dp
  %i.dq = mul nsw i64 %i.dj, %i.dm
  %i.dr = add nsw i64 %i.dq, %wide.trip.count.1
  %i.ds = shl nsw i64 %i.dr, 1
  %i.dt = getelementptr i8, ptr %0, i64 %i.ds
  %scevgep225 = getelementptr i8, ptr %i.dt, i64 6192
  %min.iters.check232 = icmp ult i32 %i.de, 2
  %ident.check222.not = icmp eq i32 %i.ba, 0
  %or.cond338 = and i1 %min.iters.check232, %ident.check222.not
  %bound0226 = icmp ult ptr %2, %scevgep225
  %bound1227 = icmp ult ptr %i.cz, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  %stride.check229 = icmp slt i32 %5, -1
  %i.du = or i1 %found.conflict228, %stride.check229
  %xtraiter357 = and i64 %wide.trip.count.1, 3    ; 3 uses
  %i.dv = add nsw i32 %i.dk, -1
  %i.dw = icmp ult i32 %i.dv, 3
  %unroll_iter361 = and i64 %wide.trip.count.1, 28
  %lcmp.mod359.not = icmp eq i64 %xtraiter357, 0
  %lcmp.mod360 = icmp ne i64 %xtraiter357, 0
  br label %.preheader.us.1

.preheader.us.1:                                  ; preds = %._crit_edge.us.1, %.preheader.us.preheader.1
  %i.dx = phi ptr [ %i.et, %._crit_edge.us.1 ], [ %2, %.preheader.us.preheader.1 ] ; 7 uses
  %.0150161.us.1 = phi i32 [ %i.ev, %._crit_edge.us.1 ], [ 0, %.preheader.us.preheader.1 ]
  %.0151160.us.1 = phi ptr [ %i.eu, %._crit_edge.us.1 ], [ %i.cz, %.preheader.us.preheader.1 ] ; 7 uses
  %or.cond338.not = xor i1 %or.cond338, true
  %brmerge373 = select i1 %or.cond338.not, i1 true, i1 %i.du
  br i1 %brmerge373, label %scalar.ph231.preheader, label %vector.body235

scalar.ph231.preheader:                           ; preds = %.preheader.us.1
  br i1 %i.dw, label %scalar.ph231.epil.preheader, label %scalar.ph231

vector.body235:                                   ; preds = %.preheader.us.1, %vector.body235
  %index236 = phi i64 [ %index.next238, %vector.body235 ], [ 0, %.preheader.us.1 ] ; 3 uses
  %i.dy = getelementptr inbounds [2 x i8], ptr %.0151160.us.1, i64 %index236
  %wide.load237 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !66, !alias.scope !210
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %index236
  store <8 x i16> %wide.load237, ptr %i.dz, align 2, !tbaa !66, !alias.scope !211, !noalias !210
  %index.next238 = add nuw i64 %index236, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next238, %wide.trip.count.1
  br i1 %i.ea, label %._crit_edge.us.1, label %vector.body235, !llvm.loop !179

scalar.ph231:                                     ; preds = %scalar.ph231.preheader, %scalar.ph231
  %indvars.iv184.1 = phi i64 [ %indvars.iv.next185.1.3, %scalar.ph231 ], [ 0, %scalar.ph231.preheader ] ; 5 uses
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.3, %scalar.ph231 ], [ 0, %scalar.ph231.preheader ] ; 2 uses
  %niter362 = phi i64 [ %niter362.next.3, %scalar.ph231 ], [ 0, %scalar.ph231.preheader ]
  %i.eb = getelementptr inbounds [2 x i8], ptr %.0151160.us.1, i64 %indvars.iv.1
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !66
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv184.1
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !66
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, %i.be ; 2 uses
  %i.ee = getelementptr inbounds [2 x i8], ptr %.0151160.us.1, i64 %indvars.iv.next.1
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !66
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv184.1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i16 %i.ef, ptr %i.eh, align 2, !tbaa !66
  %indvars.iv.next.1.1 = add nsw i64 %indvars.iv.next.1, %i.be ; 2 uses
  %i.ei = getelementptr inbounds [2 x i8], ptr %.0151160.us.1, i64 %indvars.iv.next.1.1
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !66
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv184.1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i16 %i.ej, ptr %i.el, align 2, !tbaa !66
  %indvars.iv.next.1.2 = add nsw i64 %indvars.iv.next.1.1, %i.be ; 2 uses
  %i.em = getelementptr inbounds [2 x i8], ptr %.0151160.us.1, i64 %indvars.iv.next.1.2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !66
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv184.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  store i16 %i.en, ptr %i.ep, align 2, !tbaa !66
  %indvars.iv.next185.1.3 = add nuw nsw i64 %indvars.iv184.1, 4 ; 2 uses
  %indvars.iv.next.1.3 = add nsw i64 %indvars.iv.next.1.2, %i.be ; 2 uses
  %niter362.next.3 = add i64 %niter362, 4         ; 2 uses
  %niter362.ncmp.3 = icmp eq i64 %niter362.next.3, %unroll_iter361
  br i1 %niter362.ncmp.3, label %._crit_edge.us.1.loopexit.unr-lcssa, label %scalar.ph231, !llvm.loop !180

._crit_edge.us.1.loopexit.unr-lcssa:              ; preds = %scalar.ph231
  br i1 %lcmp.mod359.not, label %._crit_edge.us.1, label %scalar.ph231.epil.preheader

scalar.ph231.epil.preheader:                      ; preds = %._crit_edge.us.1.loopexit.unr-lcssa, %scalar.ph231.preheader
  %indvars.iv184.1.epil.init = phi i64 [ 0, %scalar.ph231.preheader ], [ %indvars.iv.next185.1.3, %._crit_edge.us.1.loopexit.unr-lcssa ]
  %indvars.iv.1.epil.init = phi i64 [ 0, %scalar.ph231.preheader ], [ %indvars.iv.next.1.3, %._crit_edge.us.1.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod360)
  br label %scalar.ph231.epil

scalar.ph231.epil:                                ; preds = %scalar.ph231.epil, %scalar.ph231.epil.preheader
  %indvars.iv184.1.epil = phi i64 [ %indvars.iv.next185.1.epil, %scalar.ph231.epil ], [ %indvars.iv184.1.epil.init, %scalar.ph231.epil.preheader ] ; 2 uses
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.next.1.epil, %scalar.ph231.epil ], [ %indvars.iv.1.epil.init, %scalar.ph231.epil.preheader ] ; 2 uses
  %epil.iter358 = phi i64 [ %epil.iter358.next, %scalar.ph231.epil ], [ 0, %scalar.ph231.epil.preheader ]
  %i.eq = getelementptr inbounds [2 x i8], ptr %.0151160.us.1, i64 %indvars.iv.1.epil
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !66
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv184.1.epil
  store i16 %i.er, ptr %i.es, align 2, !tbaa !66
  %indvars.iv.next185.1.epil = add nuw nsw i64 %indvars.iv184.1.epil, 1
  %indvars.iv.next.1.epil = add nsw i64 %indvars.iv.1.epil, %i.be
  %epil.iter358.next = add i64 %epil.iter358, 1   ; 2 uses
  %epil.iter358.cmp.not = icmp eq i64 %epil.iter358.next, %xtraiter357
  br i1 %epil.iter358.cmp.not, label %._crit_edge.us.1, label %scalar.ph231.epil, !llvm.loop !181

._crit_edge.us.1:                                 ; preds = %vector.body235, %._crit_edge.us.1.loopexit.unr-lcssa, %scalar.ph231.epil
  %i.et = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.dg
  %i.eu = getelementptr inbounds [2 x i8], ptr %.0151160.us.1, i64 %i.dj
  %i.ev = add nuw nsw i32 %.0150161.us.1, 1       ; 2 uses
  %exitcond190.1.not = icmp eq i32 %i.ev, %umax189.1
  br i1 %exitcond190.1.not, label %.thread.2, label %.preheader.us.1, !llvm.loop !175

.thread.2:                                        ; preds = %._crit_edge.us.1, %.preheader.lr.ph.1, %.thread.1
  %i.ew = getelementptr i8, ptr %0, i64 6704      ; 2 uses
  %i.ex = load i32, ptr %i.bc, align 8, !tbaa !209
  %i.ey = add nsw i32 %i.ba, %i.ex                ; 2 uses
  %i.ez = lshr i32 16, %i.ey                      ; 2 uses
  %.not175.2 = icmp ugt i32 %i.ey, 4
  br i1 %.not175.2, label %._crit_edge162.2, label %.preheader.lr.ph.2

.preheader.lr.ph.2:                               ; preds = %.thread.2
  %i.fa = load i32, ptr %i.bd, align 4, !tbaa !206 ; 2 uses
  %i.fb = add nsw i32 %i.ba, %i.fa                ; 3 uses
  %.not176.2 = icmp ugt i32 %i.fb, 4
  %i.fc = sdiv i32 %5, 2
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = lshr i32 16, %i.fa
  %i.ff = shl i32 %i.fe, %i.ba
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  br i1 %.not176.2, label %._crit_edge162.2, label %.preheader.us.preheader.2

.preheader.us.preheader.2:                        ; preds = %.preheader.lr.ph.2
  %i.fh = lshr i32 16, %i.fb                      ; 2 uses
  %umax189.2 = tail call i32 @llvm.umax.i32(i32 %i.ez, i32 1)
  %wide.trip.count.2 = zext nneg i32 %i.fh to i64 ; 5 uses
  %i.fi = tail call i32 @llvm.usub.sat.i32(i32 %i.ez, i32 1)
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = mul nsw i64 %i.fd, %i.fj
  %i.fl = add nsw i64 %i.fk, %wide.trip.count.2
  %i.fm = shl nsw i64 %i.fl, 1
  %scevgep245 = getelementptr i8, ptr %3, i64 %i.fm
  %i.fn = mul nsw i64 %i.fg, %i.fj
  %i.fo = add nsw i64 %i.fn, %wide.trip.count.2
  %i.fp = shl nsw i64 %i.fo, 1
  %i.fq = getelementptr i8, ptr %0, i64 %i.fp
  %scevgep246 = getelementptr i8, ptr %i.fq, i64 6704
  %min.iters.check253 = icmp ult i32 %i.fb, 2
  %ident.check243.not = icmp eq i32 %i.ba, 0
  %or.cond339 = and i1 %min.iters.check253, %ident.check243.not
  %bound0247 = icmp ult ptr %3, %scevgep246
  %bound1248 = icmp ult ptr %i.ew, %scevgep245
  %found.conflict249 = and i1 %bound0247, %bound1248
  %stride.check250 = icmp slt i32 %5, -1
  %i.fr = or i1 %found.conflict249, %stride.check250
  %xtraiter363 = and i64 %wide.trip.count.2, 3    ; 3 uses
  %i.fs = add nsw i32 %i.fh, -1
  %i.ft = icmp ult i32 %i.fs, 3
  %unroll_iter367 = and i64 %wide.trip.count.2, 28
  %lcmp.mod365.not = icmp eq i64 %xtraiter363, 0
  %lcmp.mod366 = icmp ne i64 %xtraiter363, 0
  br label %.preheader.us.2

.preheader.us.2:                                  ; preds = %._crit_edge.us.2, %.preheader.us.preheader.2
  %i.fu = phi ptr [ %i.gq, %._crit_edge.us.2 ], [ %3, %.preheader.us.preheader.2 ] ; 7 uses
  %.0150161.us.2 = phi i32 [ %i.gs, %._crit_edge.us.2 ], [ 0, %.preheader.us.preheader.2 ]
  %.0151160.us.2 = phi ptr [ %i.gr, %._crit_edge.us.2 ], [ %i.ew, %.preheader.us.preheader.2 ] ; 7 uses
  %or.cond339.not = xor i1 %or.cond339, true
  %brmerge374 = select i1 %or.cond339.not, i1 true, i1 %i.fr
  br i1 %brmerge374, label %scalar.ph252.preheader, label %vector.body256

scalar.ph252.preheader:                           ; preds = %.preheader.us.2
  br i1 %i.ft, label %scalar.ph252.epil.preheader, label %scalar.ph252

vector.body256:                                   ; preds = %.preheader.us.2, %vector.body256
  %index257 = phi i64 [ %index.next259, %vector.body256 ], [ 0, %.preheader.us.2 ] ; 3 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %.0151160.us.2, i64 %index257
  %wide.load258 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !66, !alias.scope !212
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %index257
  store <8 x i16> %wide.load258, ptr %i.fw, align 2, !tbaa !66, !alias.scope !213, !noalias !212
  %index.next259 = add nuw i64 %index257, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next259, %wide.trip.count.2
  br i1 %i.fx, label %._crit_edge.us.2, label %vector.body256, !llvm.loop !185

scalar.ph252:                                     ; preds = %scalar.ph252.preheader, %scalar.ph252
  %indvars.iv184.2 = phi i64 [ %indvars.iv.next185.2.3, %scalar.ph252 ], [ 0, %scalar.ph252.preheader ] ; 5 uses
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.3, %scalar.ph252 ], [ 0, %scalar.ph252.preheader ] ; 2 uses
  %niter368 = phi i64 [ %niter368.next.3, %scalar.ph252 ], [ 0, %scalar.ph252.preheader ]
  %i.fy = getelementptr inbounds [2 x i8], ptr %.0151160.us.2, i64 %indvars.iv.2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !66
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !66
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, %i.be ; 2 uses
  %i.gb = getelementptr inbounds [2 x i8], ptr %.0151160.us.2, i64 %indvars.iv.next.2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !66
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  store i16 %i.gc, ptr %i.ge, align 2, !tbaa !66
  %indvars.iv.next.2.1 = add nsw i64 %indvars.iv.next.2, %i.be ; 2 uses
  %i.gf = getelementptr inbounds [2 x i8], ptr %.0151160.us.2, i64 %indvars.iv.next.2.1
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !66
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i16 %i.gg, ptr %i.gi, align 2, !tbaa !66
  %indvars.iv.next.2.2 = add nsw i64 %indvars.iv.next.2.1, %i.be ; 2 uses
  %i.gj = getelementptr inbounds [2 x i8], ptr %.0151160.us.2, i64 %indvars.iv.next.2.2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !66
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  store i16 %i.gk, ptr %i.gm, align 2, !tbaa !66
  %indvars.iv.next185.2.3 = add nuw nsw i64 %indvars.iv184.2, 4 ; 2 uses
  %indvars.iv.next.2.3 = add nsw i64 %indvars.iv.next.2.2, %i.be ; 2 uses
  %niter368.next.3 = add i64 %niter368, 4         ; 2 uses
  %niter368.ncmp.3 = icmp eq i64 %niter368.next.3, %unroll_iter367
  br i1 %niter368.ncmp.3, label %._crit_edge.us.2.loopexit.unr-lcssa, label %scalar.ph252, !llvm.loop !186

._crit_edge.us.2.loopexit.unr-lcssa:              ; preds = %scalar.ph252
  br i1 %lcmp.mod365.not, label %._crit_edge.us.2, label %scalar.ph252.epil.preheader

scalar.ph252.epil.preheader:                      ; preds = %._crit_edge.us.2.loopexit.unr-lcssa, %scalar.ph252.preheader
  %indvars.iv184.2.epil.init = phi i64 [ 0, %scalar.ph252.preheader ], [ %indvars.iv.next185.2.3, %._crit_edge.us.2.loopexit.unr-lcssa ]
  %indvars.iv.2.epil.init = phi i64 [ 0, %scalar.ph252.preheader ], [ %indvars.iv.next.2.3, %._crit_edge.us.2.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod366)
  br label %scalar.ph252.epil

scalar.ph252.epil:                                ; preds = %scalar.ph252.epil, %scalar.ph252.epil.preheader
  %indvars.iv184.2.epil = phi i64 [ %indvars.iv.next185.2.epil, %scalar.ph252.epil ], [ %indvars.iv184.2.epil.init, %scalar.ph252.epil.preheader ] ; 2 uses
  %indvars.iv.2.epil = phi i64 [ %indvars.iv.next.2.epil, %scalar.ph252.epil ], [ %indvars.iv.2.epil.init, %scalar.ph252.epil.preheader ] ; 2 uses
  %epil.iter364 = phi i64 [ %epil.iter364.next, %scalar.ph252.epil ], [ 0, %scalar.ph252.epil.preheader ]
  %i.gn = getelementptr inbounds [2 x i8], ptr %.0151160.us.2, i64 %indvars.iv.2.epil
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !66
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv184.2.epil
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !66
  %indvars.iv.next185.2.epil = add nuw nsw i64 %indvars.iv184.2.epil, 1
  %indvars.iv.next.2.epil = add nsw i64 %indvars.iv.2.epil, %i.be
  %epil.iter364.next = add i64 %epil.iter364, 1   ; 2 uses
  %epil.iter364.cmp.not = icmp eq i64 %epil.iter364.next, %xtraiter363
  br i1 %epil.iter364.cmp.not, label %._crit_edge.us.2, label %scalar.ph252.epil, !llvm.loop !187

._crit_edge.us.2:                                 ; preds = %vector.body256, %._crit_edge.us.2.loopexit.unr-lcssa, %scalar.ph252.epil
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.fu, i64 %i.fd
  %i.gr = getelementptr inbounds [2 x i8], ptr %.0151160.us.2, i64 %i.fg
  %i.gs = add nuw nsw i32 %.0150161.us.2, 1       ; 2 uses
  %exitcond190.2.not = icmp eq i32 %i.gs, %umax189.2
  br i1 %exitcond190.2.not, label %._crit_edge162.2, label %.preheader.us.2, !llvm.loop !175

.thread157:                                       ; preds = %bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !52
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 720
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !65 ; 14 uses
  %i.gx = shl nuw i32 1, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 3864 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 3860 ; 2 uses
  %i.ha = sext i32 %i.gx to i64                   ; 3 uses
  %.not177 = icmp ugt i32 %i.gw, 4
  br i1 %.not177, label %.thread157.1, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.thread157
  %i.hb = lshr i32 16, %i.gw                      ; 3 uses
  %i.hc = add nsw i32 %i.hb, -1                   ; 3 uses
  %i.hd = sdiv i32 %6, 2
  %i.he = mul i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64                   ; 3 uses
  %i.hg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.hf
  %i.hh = getelementptr i8, ptr %0, i64 5680      ; 2 uses
  %i.hi = shl nuw nsw i32 16, %i.gw
  %i.hj = zext nneg i32 %i.hi to i64
  %.neg = sdiv i32 %6, -2
  %i.hk = sext i32 %.neg to i64                   ; 2 uses
  %i.hl = zext nneg i32 %i.hb to i64              ; 6 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.hl, i64 1) ; 2 uses
  %i.hm = add nsw i64 %smin, %i.hf
  %i.hn = shl nsw i64 %i.hm, 1
  %i.ho = getelementptr i8, ptr %1, i64 %i.hn
  %scevgep266 = getelementptr i8, ptr %i.ho, i64 -2
  %smin267 = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 0)
  %i.hp = xor i32 %smin267, -1
  %i.hq = add i32 %i.hb, %i.hp
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = mul nsw i64 %i.hk, %i.hr
  %i.ht = add i64 %i.hs, %i.hf
  %i.hu = add i64 %i.ht, %i.hl
  %i.hv = shl i64 %i.hu, 1
  %scevgep268 = getelementptr i8, ptr %1, i64 %i.hv
  %i.hw = add nuw nsw i32 %i.gw, 4
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hr, %i.hx
  %i.hz = add nuw nsw i64 %i.hy, %i.hl
  %i.ia = shl nuw nsw i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, 5682
  %i.ic = shl nuw nsw i64 %smin, 1
  %i.id = sub nuw nsw i64 %i.ib, %i.ic
  %scevgep269 = getelementptr i8, ptr %0, i64 %i.id
  %i.ie = tail call i64 @llvm.smax.i64(i64 %i.hl, i64 1)
  %ident.check264.not = icmp eq i32 %i.gw, 0
  %bound0270 = icmp ult ptr %scevgep266, %scevgep269
  %bound1271 = icmp ult ptr %i.hh, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  %stride.check273 = icmp sgt i32 %6, 1
  %i.if = or i1 %found.conflict272, %stride.check273
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us172
  %i.ig = phi ptr [ %i.iq, %._crit_edge.us172 ], [ %i.hg, %.lr.ph.us.preheader ] ; 3 uses
  %.0145167.us = phi i32 [ %i.ir, %._crit_edge.us172 ], [ %i.hc, %.lr.ph.us.preheader ] ; 2 uses
  %.0146166.us = phi ptr [ %i.ip, %._crit_edge.us172 ], [ %i.hh, %.lr.ph.us.preheader ] ; 3 uses
  %ident.check264.not.not = xor i1 %ident.check264.not, true
  %brmerge375 = select i1 %ident.check264.not.not, i1 true, i1 %i.if
  br i1 %brmerge375, label %scalar.ph274, label %vector.body278.preheader

vector.body278.preheader:                         ; preds = %.lr.ph.us
  %invariant.gep = getelementptr [2 x i8], ptr %i.ig, i64 %i.hl
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278.preheader, %vector.body278
  %index279 = phi i64 [ %index.next281, %vector.body278 ], [ 0, %vector.body278.preheader ] ; 3 uses
  %i.ih = xor i64 %index279, -1
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.0146166.us, i64 %index279
  %wide.load280 = load <8 x i16>, ptr %i.ii, align 2, !tbaa !66, !alias.scope !214
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ih
  %i.ij = getelementptr inbounds i8, ptr %gep, i64 -14
  %reverse = shufflevector <8 x i16> %wide.load280, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ij, align 2, !tbaa !66, !alias.scope !215, !noalias !214
  %index.next281 = add nuw i64 %index279, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next281, %i.ie
  br i1 %i.ik, label %._crit_edge.us172, label %vector.body278, !llvm.loop !191

scalar.ph274:                                     ; preds = %.lr.ph.us, %scalar.ph274
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %scalar.ph274 ], [ %i.hl, %.lr.ph.us ] ; 2 uses
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %scalar.ph274 ], [ 0, %.lr.ph.us ] ; 2 uses
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, -1 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.0146166.us, i64 %indvars.iv196
  %i.im = load i16, ptr %i.il, align 2, !tbaa !66
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %indvars.iv.next199
  store i16 %i.im, ptr %i.in, align 2, !tbaa !66
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, %i.ha
  %i.io = icmp sgt i64 %indvars.iv198, 1
  br i1 %i.io, label %scalar.ph274, label %._crit_edge.us172, !llvm.loop !192

._crit_edge.us172:                                ; preds = %vector.body278, %scalar.ph274
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %.0146166.us, i64 %i.hj
  %i.iq = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.hk
  %i.ir = add nsw i32 %.0145167.us, -1
  %i.is = icmp sgt i32 %.0145167.us, 0
  br i1 %i.is, label %.lr.ph.us, label %.thread157.1, !llvm.loop !193

.thread157.1:                                     ; preds = %._crit_edge.us172, %.thread157
  %i.it = getelementptr i8, ptr %0, i64 6192      ; 2 uses
  %i.iu = load i32, ptr %i.gy, align 8, !tbaa !209
  %i.iv = sdiv i32 %5, 2                          ; 2 uses
  %i.iw = add nsw i32 %i.gw, %i.iu                ; 2 uses
  %i.ix = lshr i32 16, %i.iw                      ; 2 uses
  %i.iy = add nsw i32 %i.ix, -1                   ; 3 uses
  %i.iz = mul i32 %i.iy, %i.iv
  %i.ja = sext i32 %i.iz to i64                   ; 3 uses
  %i.jb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ja
  %.not177.1 = icmp ugt i32 %i.iw, 4
  br i1 %.not177.1, label %.thread157.2, label %.lr.ph168.1

.lr.ph168.1:                                      ; preds = %.thread157.1
  %i.jc = load i32, ptr %i.gz, align 4, !tbaa !206 ; 2 uses
  %i.jd = add nsw i32 %i.gw, %i.jc                ; 3 uses
  %.not178.1 = icmp ugt i32 %i.jd, 4
  %i.je = lshr i32 16, %i.jc
  %i.jf = shl i32 %i.je, %i.gw
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %.neg.1 = sdiv i32 %5, -2
  %i.jh = sext i32 %.neg.1 to i64                 ; 2 uses
  br i1 %.not178.1, label %.thread157.2, label %.lr.ph.us.preheader.1

.lr.ph.us.preheader.1:                            ; preds = %.lr.ph168.1
  %i.ji = lshr i32 16, %i.jd
  %i.jj = zext nneg i32 %i.ji to i64              ; 7 uses
  %smin289 = tail call i64 @llvm.smin.i64(i64 %i.jj, i64 1) ; 2 uses
  %i.jk = add nsw i64 %smin289, %i.ja
  %i.jl = shl nsw i64 %i.jk, 1
  %i.jm = getelementptr i8, ptr %2, i64 %i.jl
  %scevgep290 = getelementptr i8, ptr %i.jm, i64 -2
  %smin291 = tail call i32 @llvm.smin.i32(i32 %i.iy, i32 0)
end_hunk_0
