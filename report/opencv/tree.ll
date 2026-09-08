Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tree?download=true
inline.NumInlined: 2303
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv2ml10DTreesImpl17clusterCategoriesEPKdiiPdiPi:bb.a

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.lcssa362 = phi double [ %i.bf, %._crit_edge.us.us.unr-lcssa ], [ %i.bi, %bb.c ] ; 2 uses
  %i.bj = fcmp une double %.lcssa362, 0.000000e+00
  %i.bk = fdiv double 1.000000e+00, %.lcssa362
  %i.bl = select i1 %i.bj, double %i.bk, double 0.000000e+00
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv254
  store double %i.bl, ptr %i.bm, align 8, !tbaa !167
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %_ZN2cv3RNG7uniformEii.exit152.preheader, label %.lr.ph170.split.us.split.us, !llvm.loop !326

.lr.ph170.split.us.split:                         ; preds = %.lr.ph170.split.us.split.preheader363, %.lr.ph170.split.us.split
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %.lr.ph170.split.us.split ], [ %indvars.iv244.ph, %.lr.ph170.split.us.split.preheader363 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv244
  store i32 0, ptr %i.bn, align 4, !tbaa !36
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv244
  store double 0.000000e+00, ptr %i.bo, align 8, !tbaa !167
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %_ZN2cv3RNG7uniformEii.exit152.preheader, label %.lr.ph170.split.us.split, !llvm.loop !327

.lr.ph170.split:                                  ; preds = %.lr.ph170.split.preheader, %._crit_edge
  %indvars.iv239 = phi i64 [ 0, %.lr.ph170.split.preheader ], [ %indvars.iv.next240, %._crit_edge ] ; 6 uses
  %.sroa.0.0168 = phi i64 [ -1, %.lr.ph170.split.preheader ], [ %.sroa.0.1, %._crit_edge ] ; 3 uses
  %i.bp = mul nsw i64 %indvars.iv239, %i.o
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bp ; 9 uses
  %i.br = icmp slt i64 %indvars.iv239, %i.p
  %i.bs = trunc nuw nsw i64 %indvars.iv239 to i32
  br i1 %i.br, label %_ZN2cv3RNG7uniformEii.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph170.split
  %i.bt = and i64 %.sroa.0.0168, 4294967295
  %i.bu = mul nuw i64 %i.bt, 4164903690
  %i.bv = lshr i64 %.sroa.0.0168, 32
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = urem i32 %i.bx, %5
  br label %_ZN2cv3RNG7uniformEii.exit

_ZN2cv3RNG7uniformEii.exit:                       ; preds = %bb.d, %.lr.ph170.split
  %.sroa.0.1 = phi i64 [ %.sroa.0.0168, %.lr.ph170.split ], [ %i.bw, %bb.d ] ; 2 uses
  %i.bz = phi i32 [ %i.bs, %.lr.ph170.split ], [ %i.by, %bb.d ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv239
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !36
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2cv3RNG7uniformEii.exit
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.0128167 = phi double [ %i.df, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !167
  %i.cd = fadd double %.0128167, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !167
  %i.ch = fadd double %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !167
  %i.cl = fadd double %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load double, ptr %i.cn, align 8, !tbaa !167
  %i.cp = fadd double %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !167
  %i.ct = fadd double %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !167
  %i.cx = fadd double %i.ct, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load double, ptr %i.cz, align 8, !tbaa !167
  %i.db = fadd double %i.cx, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load double, ptr %i.dd, align 8, !tbaa !167
  %i.df = fadd double %i.db, %i.de                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !324

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.0128167.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod368)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0128167.epil = phi double [ %i.di, %.lr.ph.epil ], [ %.0128167.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.epil
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !167
  %i.di = fadd double %.0128167.epil, %i.dh       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !328

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN2cv3RNG7uniformEii.exit
  %.0128.lcssa = phi double [ 0.000000e+00, %_ZN2cv3RNG7uniformEii.exit ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ], [ %i.di, %.lr.ph.epil ] ; 2 uses
  %i.dj = fcmp une double %.0128.lcssa, 0.000000e+00
  %i.dk = fdiv double 1.000000e+00, %.0128.lcssa
  %i.dl = select i1 %i.dj, double %i.dk, double 0.000000e+00
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv239
  store double %i.dl, ptr %i.dm, align 8, !tbaa !167
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %_ZN2cv3RNG7uniformEii.exit152.preheader, label %.lr.ph170.split, !llvm.loop !326

_ZN2cv3RNG7uniformEii.exit152.preheader:          ; preds = %._crit_edge, %.lr.ph170.split.us.split, %._crit_edge.us.us, %middle.block
  %.sroa.0.2173.ph = phi i64 [ -1, %._crit_edge.us.us ], [ -1, %middle.block ], [ -1, %.lr.ph170.split.us.split ], [ %.sroa.0.1, %._crit_edge ]
  br label %_ZN2cv3RNG7uniformEii.exit152

.preheader164:                                    ; preds = %_ZN2cv3RNG7uniformEii.exit152, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %i.dn = icmp slt i32 %5, 1
  %i.do = icmp slt i32 %3, 1                      ; 2 uses
  %i.dp = icmp slt i32 %2, 1
  %i.dq = icmp sgt i32 %5, 0
  %i.dr = icmp sgt i32 %3, 0                      ; 2 uses
  %i.ds = zext i32 %3 to i64                      ; 14 uses
  %i.dt = zext i32 %5 to i64                      ; 3 uses
  %i.du = mul nuw nsw i64 %i.dt, %i.ds
  %i.dv = shl i64 %i.du, 3
  %i.dw = sext i32 %3 to i64                      ; 2 uses
  %brmerge = or i1 %i.dn, %i.do
  %brmerge230 = or i1 %i.dp, %i.do
  %wide.trip.count272 = zext i32 %2 to i64        ; 4 uses
  %wide.trip.count286 = zext nneg i32 %2 to i64
  %wide.trip.count301 = zext nneg i32 %2 to i64
  %i.dx = shl nuw nsw i64 %i.ds, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.dx
  %i.dy = mul nuw i64 %i.ds, %wide.trip.count272
  %i.dz = shl i64 %i.dy, 3
  %scevgep341 = getelementptr i8, ptr %1, i64 %i.dz
  %i.ea = add nsw i64 %i.ds, -1                   ; 2 uses
  %min.iters.check343 = icmp ult i32 %3, 4
  %n.vec345 = and i64 %i.ds, 2147483644           ; 3 uses
  %cmp.n354 = icmp eq i64 %n.vec345, %i.ds
  %xtraiter376 = and i64 %i.ds, 3                 ; 2 uses
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  %min.iters.check329 = icmp ult i32 %2, 8
  %n.vec331 = and i64 %wide.trip.count272, 2147483640 ; 3 uses
  %cmp.n338 = icmp eq i64 %n.vec331, %wide.trip.count272
  %xtraiter378 = and i64 %i.ds, 7                 ; 3 uses
  %i.eb = icmp ult i32 %3, 8
  %unroll_iter383 = and i64 %i.ds, 2147483640
  %lcmp.mod380.not = icmp eq i64 %xtraiter378, 0
  %lcmp.mod382 = icmp ne i64 %xtraiter378, 0
  %xtraiter385 = and i32 %5, 3                    ; 3 uses
  %i.ec = icmp ult i32 %5, 4
  %unroll_iter390 = and i32 %5, 2147483644
  %lcmp.mod387.not = icmp eq i32 %xtraiter385, 0
  %lcmp.mod389 = icmp ne i32 %xtraiter385, 0
  %xtraiter393 = and i64 %i.ds, 1
  %i.ed = icmp eq i64 %i.ea, 0
  %unroll_iter398 = and i64 %i.ds, 2147483646
  %lcmp.mod395.not = icmp eq i64 %xtraiter393, 0
  %lcmp.mod397 = trunc i32 %3 to i1
  br label %.preheader163

_ZN2cv3RNG7uniformEii.exit152:                    ; preds = %_ZN2cv3RNG7uniformEii.exit152.preheader, %_ZN2cv3RNG7uniformEii.exit152
  %.1140174 = phi i32 [ %i.ew, %_ZN2cv3RNG7uniformEii.exit152 ], [ 0, %_ZN2cv3RNG7uniformEii.exit152.preheader ]
  %.sroa.0.2173 = phi i64 [ %i.en, %_ZN2cv3RNG7uniformEii.exit152 ], [ %.sroa.0.2173.ph, %_ZN2cv3RNG7uniformEii.exit152.preheader ] ; 2 uses
  %i.ee = and i64 %.sroa.0.2173, 4294967295
  %i.ef = mul nuw i64 %i.ee, 4164903690
  %i.eg = lshr i64 %.sroa.0.2173, 32
  %i.eh = add nuw i64 %i.ef, %i.eg                ; 3 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = urem i32 %i.ei, %2
  %i.ek = and i64 %i.eh, 4294967295
  %i.el = mul nuw i64 %i.ek, 4164903690
  %i.em = lshr i64 %i.eh, 32
  %i.en = add nuw i64 %i.el, %i.em                ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = urem i32 %i.eo, %2
  %i.eq = zext nneg i32 %i.ej to i64
  %i.er = zext nneg i32 %i.ep to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.eq ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.er ; 2 uses
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !36
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !36
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !36
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !36
  %i.ew = add nuw nsw i32 %.1140174, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.ew, %2
  br i1 %exitcond259.not, label %.preheader164, label %_ZN2cv3RNG7uniformEii.exit152, !llvm.loop !329

.preheader163:                                    ; preds = %.preheader164, %._crit_edge211
  %.0223 = phi i32 [ 0, %.preheader164 ], [ %i.jz, %._crit_edge211 ] ; 2 uses
  %.0129222 = phi i1 [ true, %.preheader164 ], [ %.1130.lcssa, %._crit_edge211 ]
  br i1 %brmerge, label %.preheader162, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader163
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %i.dv, i1 false), !tbaa !167
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader.preheader, %.preheader163
  br i1 %brmerge230, label %._crit_edge185.split, label %.lr.ph181

.lr.ph181:                                        ; preds = %.preheader162, %._crit_edge182
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %._crit_edge182 ], [ 0, %.preheader162 ] ; 3 uses
  %i.ex = mul nuw nsw i64 %indvars.iv269, %i.ds
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ex ; 6 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv269
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !36
  %i.fb = mul nsw i32 %i.fa, %3
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 7 uses
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph181
  %i.fe = shl nsw i64 %i.fc, 3
  %scevgep340 = getelementptr i8, ptr %scevgep, i64 %i.fe
  %bound0 = icmp ult ptr %i.fd, %scevgep341
  %bound1 = icmp ult ptr %1, %scevgep340
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph342.preheader, label %vector.body346

vector.body346:                                   ; preds = %vector.memcheck, %vector.body346
  %index347 = phi i64 [ %index.next352, %vector.body346 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %index347 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load348 = load <2 x double>, ptr %i.ff, align 8, !tbaa !167, !alias.scope !347
  %wide.load349 = load <2 x double>, ptr %i.fg, align 8, !tbaa !167, !alias.scope !347
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index347 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load350 = load <2 x double>, ptr %i.fh, align 8, !tbaa !167, !alias.scope !348, !noalias !347
  %wide.load351 = load <2 x double>, ptr %i.fi, align 8, !tbaa !167, !alias.scope !348, !noalias !347
  %i.fj = fadd <2 x double> %wide.load348, %wide.load350
  %i.fk = fadd <2 x double> %wide.load349, %wide.load351
  store <2 x double> %i.fj, ptr %i.fh, align 8, !tbaa !167, !alias.scope !348, !noalias !347
  store <2 x double> %i.fk, ptr %i.fi, align 8, !tbaa !167, !alias.scope !348, !noalias !347
  %index.next352 = add nuw i64 %index347, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next352, %n.vec345
  br i1 %i.fl, label %middle.block353, label %vector.body346, !llvm.loop !333

middle.block353:                                  ; preds = %vector.body346
  br i1 %cmp.n354, label %._crit_edge182, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %vector.memcheck, %.lr.ph181, %middle.block353
  %indvars.iv264.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph181 ], [ %n.vec345, %middle.block353 ] ; 3 uses
  %i.fm = sub nsw i64 %i.ea, %indvars.iv264.ph
  br i1 %lcmp.mod377.not, label %scalar.ph342.prol.loopexit, label %scalar.ph342.prol

scalar.ph342.prol:                                ; preds = %scalar.ph342.preheader, %scalar.ph342.prol
  %indvars.iv264.prol = phi i64 [ %indvars.iv.next265.prol, %scalar.ph342.prol ], [ %indvars.iv264.ph, %scalar.ph342.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph342.prol ], [ 0, %scalar.ph342.preheader ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv264.prol
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !167
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv264.prol ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !167
  %i.fr = fadd double %i.fo, %i.fq
  store double %i.fr, ptr %i.fp, align 8, !tbaa !167
  %indvars.iv.next265.prol = add nuw nsw i64 %indvars.iv264.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter376
  br i1 %prol.iter.cmp.not, label %scalar.ph342.prol.loopexit, label %scalar.ph342.prol, !llvm.loop !334

scalar.ph342.prol.loopexit:                       ; preds = %scalar.ph342.prol, %scalar.ph342.preheader
  %indvars.iv264.unr = phi i64 [ %indvars.iv264.ph, %scalar.ph342.preheader ], [ %indvars.iv.next265.prol, %scalar.ph342.prol ]
  %i.fs = icmp ult i64 %i.fm, 3
  br i1 %i.fs, label %._crit_edge182, label %scalar.ph342

scalar.ph342:                                     ; preds = %scalar.ph342.prol.loopexit, %scalar.ph342
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %scalar.ph342 ], [ %indvars.iv264.unr, %scalar.ph342.prol.loopexit ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv264
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !167
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv264 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !167
  %i.fx = fadd double %i.fu, %i.fw
  store double %i.fx, ptr %i.fv, align 8, !tbaa !167
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next265
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !167
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next265 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !167
  %i.gc = fadd double %i.fz, %i.gb
  store double %i.gc, ptr %i.ga, align 8, !tbaa !167
  %indvars.iv.next265.1 = add nuw nsw i64 %indvars.iv264, 2 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next265.1
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !167
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next265.1 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !167
  %i.gh = fadd double %i.ge, %i.gg
  store double %i.gh, ptr %i.gf, align 8, !tbaa !167
  %indvars.iv.next265.2 = add nuw nsw i64 %indvars.iv264, 3 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next265.2
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !167
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next265.2 ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !167
  %i.gm = fadd double %i.gj, %i.gl
  store double %i.gm, ptr %i.gk, align 8, !tbaa !167
  %indvars.iv.next265.3 = add nuw nsw i64 %indvars.iv264, 4 ; 2 uses
  %exitcond268.not.3 = icmp eq i64 %indvars.iv.next265.3, %i.ds
  br i1 %exitcond268.not.3, label %._crit_edge182, label %scalar.ph342, !llvm.loop !335

._crit_edge182:                                   ; preds = %scalar.ph342.prol.loopexit, %scalar.ph342, %middle.block353
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %._crit_edge185.split, label %.lr.ph181, !llvm.loop !336

._crit_edge185.split:                             ; preds = %._crit_edge182, %.preheader162
  %i.gn = icmp ne i32 %.0223, 100
  %or.cond = select i1 %i.gn, i1 %.0129222, i1 false
  br i1 %or.cond, label %.preheader161, label %bb.e

.preheader161:                                    ; preds = %._crit_edge185.split
  br i1 %i.dq, label %.lr.ph193, label %.preheader160.thread

.preheader160:                                    ; preds = %._crit_edge190
  br i1 %i.l, label %.lr.ph204.us, label %._crit_edge211

.preheader160.thread:                             ; preds = %.preheader161
  br i1 %i.l, label %.lr.ph210.split.preheader, label %._crit_edge211

.lr.ph210.split.preheader:                        ; preds = %.preheader160.thread
  br i1 %min.iters.check329, label %.lr.ph210.split.preheader357, label %vector.body332

vector.body332:                                   ; preds = %.lr.ph210.split.preheader, %vector.body332
  %index333 = phi i64 [ %index.next336, %vector.body332 ], [ 0, %.lr.ph210.split.preheader ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.gs, %vector.body332 ], [ zeroinitializer, %.lr.ph210.split.preheader ]
  %vec.phi334 = phi <4 x i1> [ %i.gt, %vector.body332 ], [ zeroinitializer, %.lr.ph210.split.preheader ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index333 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.go, align 4, !tbaa !36
  %wide.load335 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !36
  %i.gq = icmp ne <4 x i32> %wide.load, splat (i32 -1)
  %i.gr = icmp ne <4 x i32> %wide.load335, splat (i32 -1)
  %i.gs = or <4 x i1> %vec.phi, %i.gq             ; 2 uses
  %i.gt = or <4 x i1> %vec.phi334, %i.gr          ; 2 uses
  store <4 x i32> splat (i32 -1), ptr %i.go, align 4, !tbaa !36
  store <4 x i32> splat (i32 -1), ptr %i.gp, align 4, !tbaa !36
  %index.next336 = add nuw i64 %index333, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.gu, label %middle.block337, label %vector.body332, !llvm.loop !337

middle.block337:                                  ; preds = %vector.body332
  %bin.rdx = or <4 x i1> %i.gt, %i.gs
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.gv = bitcast <4 x i1> %bin.rdx.fr to i4
  %i.gw = icmp ne i4 %i.gv, 0                     ; 2 uses
  br i1 %cmp.n338, label %._crit_edge211, label %.lr.ph210.split.preheader357

.lr.ph210.split.preheader357:                     ; preds = %.lr.ph210.split.preheader, %middle.block337
  %indvars.iv284.ph = phi i64 [ 0, %.lr.ph210.split.preheader ], [ %n.vec331, %middle.block337 ]
  %.1130209.ph = phi i1 [ false, %.lr.ph210.split.preheader ], [ %i.gw, %middle.block337 ]
  br label %.lr.ph210.split

.lr.ph204.us:                                     ; preds = %.preheader160, %._crit_edge205.us
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %._crit_edge205.us ], [ 0, %.preheader160 ] ; 4 uses
  %.1130209.us = phi i1 [ %spec.select.us, %._crit_edge205.us ], [ false, %.preheader160 ]
  %i.gx = mul nsw i64 %indvars.iv299, %i.dw
  %i.gy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gx ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv299
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !167 ; 3 uses
  br i1 %i.dr, label %.lr.ph197.us.us, label %.lr.ph204.split.us213.preheader

.lr.ph204.split.us213.preheader:                  ; preds = %.lr.ph204.us
  br i1 %i.ec, label %.lr.ph204.split.us213.epil.preheader, label %.lr.ph204.split.us213

.lr.ph204.split.us213:                            ; preds = %.lr.ph204.split.us213.preheader, %.lr.ph204.split.us213
  %.0124202.us214 = phi i32 [ %.1.us218, %.lr.ph204.split.us213 ], [ -1, %.lr.ph204.split.us213.preheader ]
  %.0125201.us215 = phi double [ %.1126.us217, %.lr.ph204.split.us213 ], [ f0x7FEFFFFFFFFFFFFF, %.lr.ph204.split.us213.preheader ] ; 2 uses
  %.0135200.us216 = phi i32 [ %i.hc, %.lr.ph204.split.us213 ], [ 0, %.lr.ph204.split.us213.preheader ] ; 2 uses
  %niter391 = phi i32 [ %niter391.next.3, %.lr.ph204.split.us213 ], [ 0, %.lr.ph204.split.us213.preheader ]
  %i.hb = fcmp ogt double %.0125201.us215, 0.000000e+00 ; 2 uses
  %.1126.us217 = select i1 %i.hb, double 0.000000e+00, double %.0125201.us215 ; 2 uses
  %.1.us218 = select i1 %i.hb, i32 %.0135200.us216, i32 %.0124202.us214 ; 3 uses
  %i.hc = add nuw nsw i32 %.0135200.us216, 4      ; 2 uses
  %niter391.next.3 = add nuw nsw i32 %niter391, 4 ; 2 uses
  %niter391.ncmp.3 = icmp eq i32 %niter391.next.3, %unroll_iter390
  br i1 %niter391.ncmp.3, label %._crit_edge205.us.loopexit356.unr-lcssa, label %.lr.ph204.split.us213, !llvm.loop !338

.lr.ph197.us.us:                                  ; preds = %.lr.ph204.us, %._crit_edge198.us.us
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %._crit_edge198.us.us ], [ 0, %.lr.ph204.us ] ; 4 uses
  %.0124202.us.us = phi i32 [ %.1.us.us, %._crit_edge198.us.us ], [ -1, %.lr.ph204.us ]
  %.0125201.us.us = phi double [ %.1126.us.us, %._crit_edge198.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.lr.ph204.us ] ; 2 uses
  %i.hd = mul nuw nsw i64 %indvars.iv294, %i.ds
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hd ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv294
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !167
  %i.hh = fneg double %i.hg                       ; 3 uses
  br i1 %i.ed, label %.epil.preheader392, label %.lr.ph197.us.us.new

.lr.ph197.us.us.new:                              ; preds = %.lr.ph197.us.us, %.lr.ph197.us.us.new
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.1, %.lr.ph197.us.us.new ], [ 0, %.lr.ph197.us.us ] ; 4 uses
  %.0123195.us.us = phi double [ %i.hv, %.lr.ph197.us.us.new ], [ 0.000000e+00, %.lr.ph197.us.us ]
  %niter399 = phi i64 [ %niter399.next.1, %.lr.ph197.us.us.new ], [ 0, %.lr.ph197.us.us ]
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv289
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !167
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv289
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !167
  %i.hm = fmul double %i.hl, %i.hh
  %i.hn = call double @llvm.fmuladd.f64(double %i.hj, double %i.ha, double %i.hm) ; 2 uses
  %i.ho = call double @llvm.fmuladd.f64(double %i.hn, double %i.hn, double %.0123195.us.us)
  %indvars.iv.next290 = or disjoint i64 %indvars.iv289, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next290
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !167
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next290
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !167
  %i.ht = fmul double %i.hs, %i.hh
  %i.hu = call double @llvm.fmuladd.f64(double %i.hq, double %i.ha, double %i.ht) ; 2 uses
  %i.hv = call double @llvm.fmuladd.f64(double %i.hu, double %i.hu, double %i.ho) ; 3 uses
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %._crit_edge198.us.us.unr-lcssa, label %.lr.ph197.us.us.new, !llvm.loop !339

._crit_edge198.us.us.unr-lcssa:                   ; preds = %.lr.ph197.us.us.new
  br i1 %lcmp.mod395.not, label %._crit_edge198.us.us, label %.epil.preheader392

.epil.preheader392:                               ; preds = %._crit_edge198.us.us.unr-lcssa, %.lr.ph197.us.us
  %indvars.iv289.epil.init = phi i64 [ 0, %.lr.ph197.us.us ], [ %indvars.iv.next290.1, %._crit_edge198.us.us.unr-lcssa ] ; 2 uses
  %.0123195.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph197.us.us ], [ %i.hv, %._crit_edge198.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv289.epil.init
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !167
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv289.epil.init
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !167
  %i.ia = fmul double %i.hz, %i.hh
  %i.ib = call double @llvm.fmuladd.f64(double %i.hx, double %i.ha, double %i.ia) ; 2 uses
  %i.ic = call double @llvm.fmuladd.f64(double %i.ib, double %i.ib, double %.0123195.us.us.epil.init)
  br label %._crit_edge198.us.us

._crit_edge198.us.us:                             ; preds = %._crit_edge198.us.us.unr-lcssa, %.epil.preheader392
  %.lcssa361 = phi double [ %i.hv, %._crit_edge198.us.us.unr-lcssa ], [ %i.ic, %.epil.preheader392 ] ; 2 uses
  %i.id = fcmp ogt double %.0125201.us.us, %.lcssa361 ; 2 uses
  %.1126.us.us = select i1 %i.id, double %.lcssa361, double %.0125201.us.us
  %i.ie = trunc nuw nsw i64 %indvars.iv294 to i32
  %.1.us.us = select i1 %i.id, i32 %i.ie, i32 %.0124202.us.us ; 2 uses
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %i.dt
  br i1 %exitcond298.not, label %._crit_edge205.us, label %.lr.ph197.us.us, !llvm.loop !338

._crit_edge205.us.loopexit356.unr-lcssa:          ; preds = %.lr.ph204.split.us213
  br i1 %lcmp.mod387.not, label %._crit_edge205.us, label %.lr.ph204.split.us213.epil.preheader

.lr.ph204.split.us213.epil.preheader:             ; preds = %._crit_edge205.us.loopexit356.unr-lcssa, %.lr.ph204.split.us213.preheader
  %.0124202.us214.epil.init = phi i32 [ -1, %.lr.ph204.split.us213.preheader ], [ %.1.us218, %._crit_edge205.us.loopexit356.unr-lcssa ]
  %.0125201.us215.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph204.split.us213.preheader ], [ %.1126.us217, %._crit_edge205.us.loopexit356.unr-lcssa ]
  %.0135200.us216.epil.init = phi i32 [ 0, %.lr.ph204.split.us213.preheader ], [ %i.hc, %._crit_edge205.us.loopexit356.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod389)
  br label %.lr.ph204.split.us213.epil

.lr.ph204.split.us213.epil:                       ; preds = %.lr.ph204.split.us213.epil, %.lr.ph204.split.us213.epil.preheader
  %.0124202.us214.epil = phi i32 [ %.1.us218.epil, %.lr.ph204.split.us213.epil ], [ %.0124202.us214.epil.init, %.lr.ph204.split.us213.epil.preheader ]
  %.0125201.us215.epil = phi double [ %.1126.us217.epil, %.lr.ph204.split.us213.epil ], [ %.0125201.us215.epil.init, %.lr.ph204.split.us213.epil.preheader ] ; 2 uses
  %.0135200.us216.epil = phi i32 [ %i.ig, %.lr.ph204.split.us213.epil ], [ %.0135200.us216.epil.init, %.lr.ph204.split.us213.epil.preheader ] ; 2 uses
  %epil.iter386 = phi i32 [ %epil.iter386.next, %.lr.ph204.split.us213.epil ], [ 0, %.lr.ph204.split.us213.epil.preheader ]
  %i.if = fcmp ogt double %.0125201.us215.epil, 0.000000e+00 ; 2 uses
  %.1126.us217.epil = select i1 %i.if, double 0.000000e+00, double %.0125201.us215.epil
  %.1.us218.epil = select i1 %i.if, i32 %.0135200.us216.epil, i32 %.0124202.us214.epil ; 2 uses
  %i.ig = add nuw nsw i32 %.0135200.us216.epil, 1
  %epil.iter386.next = add i32 %epil.iter386, 1   ; 2 uses
  %epil.iter386.cmp.not = icmp eq i32 %epil.iter386.next, %xtraiter385
  br i1 %epil.iter386.cmp.not, label %._crit_edge205.us, label %.lr.ph204.split.us213.epil, !llvm.loop !340

._crit_edge205.us:                                ; preds = %._crit_edge205.us.loopexit356.unr-lcssa, %.lr.ph204.split.us213.epil, %._crit_edge198.us.us
  %.us-phi207.us = phi i32 [ %.1.us.us, %._crit_edge198.us.us ], [ %.1.us218, %._crit_edge205.us.loopexit356.unr-lcssa ], [ %.1.us218.epil, %.lr.ph204.split.us213.epil ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv299 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !36
  %.not.us = icmp ne i32 %.us-phi207.us, %i.ii
  %spec.select.us = select i1 %.not.us, i1 true, i1 %.1130209.us ; 2 uses
  store i32 %.us-phi207.us, ptr %i.ih, align 4, !tbaa !36
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge211, label %.lr.ph204.us, !llvm.loop !341

.lr.ph193:                                        ; preds = %.preheader161, %._crit_edge190
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %._crit_edge190 ], [ 0, %.preheader161 ] ; 3 uses
  %i.ij = mul nsw i64 %indvars.iv279, %i.dw
  %i.ik = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ij ; 9 uses
  br i1 %i.dr, label %.lr.ph189.preheader, label %._crit_edge190

.lr.ph189.preheader:                              ; preds = %.lr.ph193
  br i1 %i.eb, label %.lr.ph189.epil.preheader, label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.7, %.lr.ph189 ], [ 0, %.lr.ph189.preheader ] ; 9 uses
  %.0127187 = phi double [ %i.jp, %.lr.ph189 ], [ 0.000000e+00, %.lr.ph189.preheader ]
  %niter384 = phi i64 [ %niter384.next.7, %.lr.ph189 ], [ 0, %.lr.ph189.preheader ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.im = load double, ptr %i.il, align 8, !tbaa !167
  %i.in = fadd double %.0127187, %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !167
  %i.ir = fadd double %i.in, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load double, ptr %i.it, align 8, !tbaa !167
  %i.iv = fadd double %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !167
  %i.iz = fadd double %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !167
  %i.jd = fadd double %i.iz, %i.jc
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !167
  %i.jh = fadd double %i.jd, %i.jg
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !167
  %i.jl = fadd double %i.jh, %i.jk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !167
  %i.jp = fadd double %i.jl, %i.jo                ; 3 uses
  %indvars.iv.next275.7 = add nuw nsw i64 %indvars.iv274, 8 ; 2 uses
  %niter384.next.7 = add i64 %niter384, 8         ; 2 uses
  %niter384.ncmp.7 = icmp eq i64 %niter384.next.7, %unroll_iter383
  br i1 %niter384.ncmp.7, label %._crit_edge190.loopexit.unr-lcssa, label %.lr.ph189, !llvm.loop !342

._crit_edge190.loopexit.unr-lcssa:                ; preds = %.lr.ph189
  br i1 %lcmp.mod380.not, label %._crit_edge190, label %.lr.ph189.epil.preheader

.lr.ph189.epil.preheader:                         ; preds = %._crit_edge190.loopexit.unr-lcssa, %.lr.ph189.preheader
  %indvars.iv274.epil.init = phi i64 [ 0, %.lr.ph189.preheader ], [ %indvars.iv.next275.7, %._crit_edge190.loopexit.unr-lcssa ]
  %.0127187.epil.init = phi double [ 0.000000e+00, %.lr.ph189.preheader ], [ %i.jp, %._crit_edge190.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod382)
  br label %.lr.ph189.epil

.lr.ph189.epil:                                   ; preds = %.lr.ph189.epil, %.lr.ph189.epil.preheader
  %indvars.iv274.epil = phi i64 [ %indvars.iv.next275.epil, %.lr.ph189.epil ], [ %indvars.iv274.epil.init, %.lr.ph189.epil.preheader ] ; 2 uses
  %.0127187.epil = phi double [ %i.js, %.lr.ph189.epil ], [ %.0127187.epil.init, %.lr.ph189.epil.preheader ]
  %epil.iter379 = phi i64 [ %epil.iter379.next, %.lr.ph189.epil ], [ 0, %.lr.ph189.epil.preheader ]
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv274.epil
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !167
  %i.js = fadd double %.0127187.epil, %i.jr       ; 2 uses
  %indvars.iv.next275.epil = add nuw nsw i64 %indvars.iv274.epil, 1
  %epil.iter379.next = add i64 %epil.iter379, 1   ; 2 uses
  %epil.iter379.cmp.not = icmp eq i64 %epil.iter379.next, %xtraiter378
  br i1 %epil.iter379.cmp.not, label %._crit_edge190, label %.lr.ph189.epil, !llvm.loop !343

._crit_edge190:                                   ; preds = %._crit_edge190.loopexit.unr-lcssa, %.lr.ph189.epil, %.lr.ph193
  %.0127.lcssa = phi double [ 0.000000e+00, %.lr.ph193 ], [ %i.jp, %._crit_edge190.loopexit.unr-lcssa ], [ %i.js, %.lr.ph189.epil ] ; 2 uses
  %i.jt = fcmp une double %.0127.lcssa, 0.000000e+00
  %i.ju = fdiv double 1.000000e+00, %.0127.lcssa
  %i.jv = select i1 %i.jt, double %i.ju, double 0.000000e+00
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv279
  store double %i.jv, ptr %i.jw, align 8, !tbaa !167
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %i.dt
  br i1 %exitcond283.not, label %.preheader160, label %.lr.ph193, !llvm.loop !344

.lr.ph210.split:                                  ; preds = %.lr.ph210.split.preheader357, %.lr.ph210.split
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.lr.ph210.split ], [ %indvars.iv284.ph, %.lr.ph210.split.preheader357 ] ; 2 uses
  %.1130209 = phi i1 [ %spec.select, %.lr.ph210.split ], [ %.1130209.ph, %.lr.ph210.split.preheader357 ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv284 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !36
  %.not = icmp ne i32 %i.jy, -1
  %spec.select = select i1 %.not, i1 true, i1 %.1130209 ; 2 uses
  store i32 -1, ptr %i.jx, align 4, !tbaa !36
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge211, label %.lr.ph210.split, !llvm.loop !345

._crit_edge211:                                   ; preds = %.lr.ph210.split, %._crit_edge205.us, %middle.block337, %.preheader160.thread, %.preheader160
  %.1130.lcssa = phi i1 [ false, %.preheader160 ], [ false, %.preheader160.thread ], [ %spec.select.us, %._crit_edge205.us ], [ %i.gw, %middle.block337 ], [ %spec.select, %.lr.ph210.split ]
  %i.jz = add nuw nsw i32 %.0223, 1               ; 2 uses
  %exitcond303.not = icmp eq i32 %i.jz, 101
  br i1 %exitcond303.not, label %bb.e, label %.preheader163, !llvm.loop !346

bb.e:                                             ; preds = %._crit_edge185.split, %._crit_edge211
  %.not.i.i153 = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i153, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.i) #25
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit

_ZN2cv10AutoBufferIdLm136EED2Ev.exit:             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv2ml10DTreesImpl17findSplitCatClassEiRKSt6vectorIiSaIiEEdPi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::ml::DTreesImpl::WSplit") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::AutoBuffer.47", align 8 ; 9 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
  %i.h = sub i32 %i.f, %i.g                       ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.k = load ptr, ptr %3, align 8, !tbaa !79
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = lshr i64 %i.n, 2                         ; 3 uses
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !79
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = lshr exact i64 %i.w, 2                   ; 12 uses
  %i.y = trunc i64 %i.x to i32                    ; 15 uses
  %i.z = add nsw i32 %i.h, 3
  %i.aa = mul nsw i32 %i.z, %i.y
  %i.ab = icmp sgt i32 %i.y, 2                    ; 2 uses
  br i1 %i.ab, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %i.ae = icmp sgt i32 %i.h, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated323 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.p)
  %i.af = mul nsw i32 %.sroa.speculated323, %i.y
  %i.ag = add nsw i32 %i.af, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.pn = phi i32 [ %i.ag, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %bb.a ]
  %i.ah = add i32 %i.h, 1
  %i.ai = add i32 %i.ah, %i.aa
  %.0234 = add nsw i32 %i.ai, %.pn                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.aj = add nsw i32 %.0234, %i.p                ; 3 uses
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !204
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i = icmp ugt i32 %i.aj, 136
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !205
  br i1 %.not.i.i, label %bb.e, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.an = icmp slt i32 %i.aj, 0
  %i.ao = shl nuw nsw i64 %i.ak, 3
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao
  %i.aq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #26 ; 2 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !204
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !78
  %.pre463 = load ptr, ptr %3, align 8, !tbaa !79
  %.pre464 = ptrtoint ptr %.pre to i64
  %.pre465 = ptrtoint ptr %.pre463 to i64
  %.pre467 = sub i64 %.pre464, %.pre465
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

_ZN2cv10AutoBufferIdLm136EEC2Em.exit:             ; preds = %bb.d, %bb.e
  %.pre-phi468 = phi i64 [ %i.n, %bb.d ], [ %.pre467, %bb.e ]
  %i.ar = phi ptr [ %i.al, %bb.d ], [ %i.aq, %bb.e ] ; 6 uses
  %sext = shl i64 %i.w, 30
  %i.as = ashr exact i64 %sext, 29                ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as  ; 4 uses
  %i.au = shl i32 %i.y, 1
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.at, i64 %i.av ; 10 uses
  %i.ax = mul i32 %i.h, %i.y
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.aw, i64 %i.ay ; 5 uses
  %i.ba = sext i32 %.0234 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !163
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.bf, align 8, !tbaa !209
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.bg, align 4, !tbaa !210
  %i.bh = ashr exact i64 %.pre-phi468, 2          ; 2 uses
  %.not.i = icmp ugt i64 %i.bh, 2147483647
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.bh, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1IiEERKSt6vectorIT_SaIS3_EEE15__cv_check__174) #24
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  store i32 -2130509820, ptr %7, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.bi, align 8, !tbaa !74
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !69
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %i.bb)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !163 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !79 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106 ; 3 uses
  %i.br = icmp sgt i32 %i.h, -1
  %i.bs = icmp sgt i32 %i.y, 0                    ; 4 uses
  %or.cond393 = and i1 %i.br, %i.bs
  br i1 %or.cond393, label %.preheader342.preheader, label %.preheader341

.preheader342.preheader:                          ; preds = %bb.h
  %i.bt = shl nsw i64 %i.av, 3
  %i.bu = getelementptr i8, ptr %i.ar, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.bu, i64 %i.as ; 5 uses
  %i.bv = shl i64 %i.w, 1
  %i.bw = and i64 %i.bv, 17179869176              ; 5 uses
  %i.bx = add i32 %i.f, 1
  %i.by = sub i32 %i.bx, %i.g                     ; 2 uses
  %wide.trip.count = zext i32 %i.by to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bz = add i32 %i.by, -1
  %i.ca = icmp ult i32 %i.bz, 3
  br i1 %i.ca, label %.preheader342.epil.preheader, label %.preheader342.preheader.new

.preheader342.preheader.new:                      ; preds = %.preheader342.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.preheader342

.preheader342:                                    ; preds = %.preheader342, %.preheader342.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader342.preheader.new ], [ %indvars.iv.next.3, %.preheader342 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader342.preheader.new ], [ %niter.next.3, %.preheader342 ]
  %i.cb = add nuw i64 %indvars.iv, 4294967295
  %i.cc = mul i64 %i.cb, %i.x
  %sext491 = shl i64 %i.cc, 32
  %i.cd = ashr exact i64 %sext491, 29
  %scevgep402 = getelementptr i8, ptr %scevgep, i64 %i.cd
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep402, i8 0, i64 %i.bw, i1 false), !tbaa !167
  %i.ce = mul i64 %indvars.iv, %i.x
  %sext491.1 = shl i64 %i.ce, 32
  %i.cf = ashr exact i64 %sext491.1, 29
  %scevgep402.1 = getelementptr i8, ptr %scevgep, i64 %i.cf
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep402.1, i8 0, i64 %i.bw, i1 false), !tbaa !167
  %i.cg = or disjoint i64 %indvars.iv, 1
  %i.ch = mul i64 %i.cg, %i.x
  %sext491.2 = shl i64 %i.ch, 32
  %i.ci = ashr exact i64 %sext491.2, 29
  %scevgep402.2 = getelementptr i8, ptr %scevgep, i64 %i.ci
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep402.2, i8 0, i64 %i.bw, i1 false), !tbaa !167
  %i.cj = or disjoint i64 %indvars.iv, 2
  %i.ck = mul i64 %i.cj, %i.x
  %sext491.3 = shl i64 %i.ck, 32
  %i.cl = ashr exact i64 %sext491.3, 29
  %scevgep402.3 = getelementptr i8, ptr %scevgep, i64 %i.cl
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep402.3, i8 0, i64 %i.bw, i1 false), !tbaa !167
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader341.loopexit.unr-lcssa, label %.preheader342, !llvm.loop !349

.preheader341.loopexit.unr-lcssa:                 ; preds = %.preheader342
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader341, label %.preheader342.epil.preheader

.preheader342.epil.preheader:                     ; preds = %.preheader341.loopexit.unr-lcssa, %.preheader342.preheader
end_hunk_0
