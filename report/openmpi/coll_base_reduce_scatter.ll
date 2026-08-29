Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_reduce_scatter?download=true
inline.NumInlined: 31
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ompi_coll_base_reduce_scatter_intra_basic_recursivehalving:bb.a

bb.m:                                             ; preds = %bb.l
  %i.cd = sext i32 %i.bo to i64
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.ce) #11 ; 21 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.thread315.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.ce) #11 ; 14 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.o, label %.preheader340

.preheader340:                                    ; preds = %bb.n
  %i.cj = icmp sgt i32 %i.bo, 0
  br i1 %i.cj, label %.lr.ph349.preheader, label %._crit_edge350.thread

._crit_edge350.thread:                            ; preds = %.preheader340
  store i32 0, ptr %i.ch, align 4, !tbaa !41
  br label %._crit_edge354

.lr.ph349.preheader:                              ; preds = %.preheader340
  %i.ck = sext i32 %i.bp to i64                   ; 4 uses
  %wide.trip.count393 = zext nneg i32 %i.bo to i64 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.ck ; 3 uses
  %xtraiter523 = and i64 %wide.trip.count393, 1
  %i.cl = icmp eq i32 %i.bo, 1
  br i1 %i.cl, label %.lr.ph349.epil.preheader, label %.lr.ph349.preheader.new

.lr.ph349.preheader.new:                          ; preds = %.lr.ph349.preheader
  %unroll_iter527 = and i64 %wide.trip.count393, 2147483646
  br label %.lr.ph349

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.cf) #10
  br label %.thread315.thread

.lr.ph349:                                        ; preds = %bb.t, %.lr.ph349.preheader.new
  %indvars.iv390 = phi i64 [ 0, %.lr.ph349.preheader.new ], [ %indvars.iv.next391.1, %bb.t ] ; 6 uses
  %niter528 = phi i64 [ 0, %.lr.ph349.preheader.new ], [ %niter528.next.1, %bb.t ]
  %i.cm = icmp slt i64 %indvars.iv390, %i.ck
  br i1 %i.cm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph349
  %.idx = shl nuw nsw i64 %indvars.iv390, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !41
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !41
  %i.cr = add nsw i32 %i.cq, %i.cp
  br label %.lr.ph349.1

bb.q:                                             ; preds = %.lr.ph349
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv390
  %i.cs = load i32, ptr %gep, align 4, !tbaa !41
  br label %.lr.ph349.1

.lr.ph349.1:                                      ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ %i.cr, %bb.p ], [ %i.cs, %bb.q ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv390
  store i32 %.sink, ptr %i.ct, align 4, !tbaa !41
  %indvars.iv.next391 = or disjoint i64 %indvars.iv390, 1 ; 4 uses
  %i.cu = icmp slt i64 %indvars.iv.next391, %i.ck
  br i1 %i.cu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph349.1
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next391
  %i.cv = load i32, ptr %gep.1, align 4, !tbaa !41
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph349.1
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next391, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !41
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !41
  %i.da = add nsw i32 %i.cz, %i.cy
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink.1 = phi i32 [ %i.da, %bb.s ], [ %i.cv, %bb.r ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next391
  store i32 %.sink.1, ptr %i.db, align 4, !tbaa !41
  %indvars.iv.next391.1 = add nuw nsw i64 %indvars.iv390, 2 ; 2 uses
  %niter528.next.1 = add i64 %niter528, 2         ; 2 uses
  %niter528.ncmp.1 = icmp eq i64 %niter528.next.1, %unroll_iter527
  br i1 %niter528.ncmp.1, label %._crit_edge350.unr-lcssa, label %.lr.ph349, !llvm.loop !74

._crit_edge350.unr-lcssa:                         ; preds = %bb.t
  %lcmp.mod525.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod525.not, label %._crit_edge350, label %.lr.ph349.epil.preheader

.lr.ph349.epil.preheader:                         ; preds = %._crit_edge350.unr-lcssa, %.lr.ph349.preheader
  %indvars.iv390.epil.init = phi i64 [ 0, %.lr.ph349.preheader ], [ %indvars.iv.next391.1, %._crit_edge350.unr-lcssa ] ; 4 uses
  %lcmp.mod526 = trunc i32 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod526)
  %i.dc = icmp slt i64 %indvars.iv390.epil.init, %i.ck
  br i1 %i.dc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph349.epil.preheader
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv390.epil.init
  %i.dd = load i32, ptr %gep.epil, align 4, !tbaa !41
  br label %._crit_edge350.epilog-lcssa

bb.v:                                             ; preds = %.lr.ph349.epil.preheader
  %.idx.epil = shl nuw nsw i64 %indvars.iv390.epil.init, 3
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.epil ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !41
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !41
  %i.di = add nsw i32 %i.dh, %i.dg
  br label %._crit_edge350.epilog-lcssa

._crit_edge350.epilog-lcssa:                      ; preds = %bb.v, %bb.u
  %.sink.epil = phi i32 [ %i.di, %bb.v ], [ %i.dd, %bb.u ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv390.epil.init
  store i32 %.sink.epil, ptr %i.dj, align 4, !tbaa !41
  br label %._crit_edge350

._crit_edge350:                                   ; preds = %._crit_edge350.unr-lcssa, %._crit_edge350.epilog-lcssa
  store i32 0, ptr %i.ch, align 4, !tbaa !41
  %.not450 = icmp eq i32 %i.bo, 1
  br i1 %.not450, label %._crit_edge354, label %.lr.ph353.preheader

.lr.ph353.preheader:                              ; preds = %._crit_edge350
  %i.dk = add nsw i32 %i.bo, -1
  %wide.trip.count398 = zext nneg i32 %i.dk to i64 ; 2 uses
  %xtraiter529 = and i64 %wide.trip.count398, 3   ; 3 uses
  %i.dl = add nsw i32 %i.bo, -2
  %i.dm = icmp ult i32 %i.dl, 3
  br i1 %i.dm, label %.lr.ph353.epil.preheader, label %.lr.ph353.preheader.new

.lr.ph353.preheader.new:                          ; preds = %.lr.ph353.preheader
  %unroll_iter535 = and i64 %wide.trip.count398, 2147483644
  br label %.lr.ph353

.lr.ph353:                                        ; preds = %.lr.ph353, %.lr.ph353.preheader.new
  %i.dn = phi i32 [ 0, %.lr.ph353.preheader.new ], [ %i.ec, %.lr.ph353 ]
  %indvars.iv395 = phi i64 [ 0, %.lr.ph353.preheader.new ], [ %indvars.iv.next396.3, %.lr.ph353 ] ; 5 uses
  %niter536 = phi i64 [ 0, %.lr.ph353.preheader.new ], [ %niter536.next.3, %.lr.ph353 ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv395
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !41
  %i.dq = add nsw i32 %i.dp, %i.dn                ; 2 uses
  %indvars.iv.next396 = or disjoint i64 %indvars.iv395, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next396
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !41
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next396
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41
  %i.du = add nsw i32 %i.dt, %i.dq                ; 2 uses
  %indvars.iv.next396.1 = or disjoint i64 %indvars.iv395, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next396.1
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !41
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next396.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !41
  %i.dy = add nsw i32 %i.dx, %i.du                ; 2 uses
  %indvars.iv.next396.2 = or disjoint i64 %indvars.iv395, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next396.2
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !41
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next396.2
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !41
  %i.ec = add nsw i32 %i.eb, %i.dy                ; 3 uses
  %indvars.iv.next396.3 = add nuw nsw i64 %indvars.iv395, 4 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next396.3
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !41
  %niter536.next.3 = add i64 %niter536, 4         ; 2 uses
  %niter536.ncmp.3 = icmp eq i64 %niter536.next.3, %unroll_iter535
  br i1 %niter536.ncmp.3, label %._crit_edge354.loopexit.unr-lcssa, label %.lr.ph353, !llvm.loop !75

._crit_edge354.loopexit.unr-lcssa:                ; preds = %.lr.ph353
  %lcmp.mod533.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod533.not, label %._crit_edge354, label %.lr.ph353.epil.preheader

.lr.ph353.epil.preheader:                         ; preds = %._crit_edge354.loopexit.unr-lcssa, %.lr.ph353.preheader
  %.epil.init532 = phi i32 [ 0, %.lr.ph353.preheader ], [ %i.ec, %._crit_edge354.loopexit.unr-lcssa ]
  %indvars.iv395.epil.init = phi i64 [ 0, %.lr.ph353.preheader ], [ %indvars.iv.next396.3, %._crit_edge354.loopexit.unr-lcssa ]
  %lcmp.mod534 = icmp ne i64 %xtraiter529, 0
  tail call void @llvm.assume(i1 %lcmp.mod534)
  br label %.lr.ph353.epil

.lr.ph353.epil:                                   ; preds = %.lr.ph353.epil, %.lr.ph353.epil.preheader
  %i.ee = phi i32 [ %.epil.init532, %.lr.ph353.epil.preheader ], [ %i.eh, %.lr.ph353.epil ]
  %indvars.iv395.epil = phi i64 [ %indvars.iv395.epil.init, %.lr.ph353.epil.preheader ], [ %indvars.iv.next396.epil, %.lr.ph353.epil ] ; 2 uses
  %epil.iter530 = phi i64 [ 0, %.lr.ph353.epil.preheader ], [ %epil.iter530.next, %.lr.ph353.epil ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv395.epil
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !41
  %i.eh = add nsw i32 %i.eg, %i.ee                ; 2 uses
  %indvars.iv.next396.epil = add nuw nsw i64 %indvars.iv395.epil, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next396.epil
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !41
  %epil.iter530.next = add i64 %epil.iter530, 1   ; 2 uses
  %epil.iter530.cmp.not = icmp eq i64 %epil.iter530.next, %xtraiter529
  br i1 %epil.iter530.cmp.not, label %._crit_edge354, label %.lr.ph353.epil, !llvm.loop !76

._crit_edge354:                                   ; preds = %._crit_edge354.loopexit.unr-lcssa, %.lr.ph353.epil, %._crit_edge350.thread, %._crit_edge350
  %i.ej = ashr i32 %i.bn, 2                       ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph378, label %._crit_edge379

.lr.ph378:                                        ; preds = %._crit_edge354, %bb.ac
  %.0228376 = phi i32 [ %i.ik, %bb.ac ], [ %i.bo, %._crit_edge354 ] ; 6 uses
  %.0232375 = phi i32 [ %.1231437, %bb.ac ], [ 0, %._crit_edge354 ] ; 8 uses
  %.0235374 = phi i32 [ %i.il, %bb.ac ], [ %i.ej, %._crit_edge354 ] ; 4 uses
  %.1242373 = phi i32 [ %.4, %bb.ac ], [ %.0241, %._crit_edge354 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.el = xor i32 %.0235374, %.0240               ; 4 uses
  %i.em = icmp slt i32 %i.el, %i.bp
  %i.en = shl nuw nsw i32 %i.el, 1
  %i.eo = or disjoint i32 %i.en, 1
  %i.ep = add nsw i32 %i.el, %i.bp
  %i.eq = select i1 %i.em, i32 %i.eo, i32 %i.ep   ; 2 uses
  %i.er = icmp slt i32 %.0240, %i.el
  %i.es = add i32 %.0232375, %.0235374            ; 13 uses
  br i1 %i.er, label %bb.w, label %.lr.ph358.preheader

bb.w:                                             ; preds = %.lr.ph378
  %i.et = icmp slt i32 %i.es, %.0228376
  br i1 %i.et, label %.lr.ph367.preheader, label %.lr.ph371.preheader

.lr.ph367.preheader:                              ; preds = %bb.w
  %i.eu = zext i32 %i.es to i64                   ; 3 uses
  %i.ev = xor i32 %i.es, -1
  %i.ew = add i32 %.0228376, %i.ev                ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check458 = icmp ult i32 %i.ew, 7
  br i1 %min.iters.check458, label %.lr.ph367.preheader506, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph367.preheader
  %n.vec460 = and i64 %i.ey, 8589934584           ; 3 uses
  %i.ez = add nuw nsw i64 %n.vec460, %i.eu
  %invariant.gep555 = getelementptr [4 x i8], ptr %i.cf, i64 %i.eu
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %vec.phi463 = phi <4 x i32> [ zeroinitializer, %vector.ph459 ], [ %i.fb, %vector.body461 ]
  %vec.phi464 = phi <4 x i32> [ zeroinitializer, %vector.ph459 ], [ %i.fc, %vector.body461 ]
  %gep556 = getelementptr [4 x i8], ptr %invariant.gep555, i64 %index462 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %gep556, i64 16
  %wide.load465 = load <4 x i32>, ptr %gep556, align 4, !tbaa !41
  %wide.load466 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !41
  %i.fb = add <4 x i32> %wide.load465, %vec.phi463 ; 2 uses
  %i.fc = add <4 x i32> %wide.load466, %vec.phi464 ; 2 uses
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.fd, label %middle.block468, label %vector.body461, !llvm.loop !77

middle.block468:                                  ; preds = %vector.body461
  %bin.rdx469 = add <4 x i32> %i.fc, %i.fb
  %i.fe = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx469) ; 2 uses
  %cmp.n470 = icmp eq i64 %i.ey, %n.vec460
  br i1 %cmp.n470, label %.lr.ph371.preheader, label %.lr.ph367.preheader506

.lr.ph367.preheader506:                           ; preds = %.lr.ph367.preheader, %middle.block468
  %indvars.iv406.ph = phi i64 [ %i.eu, %.lr.ph367.preheader ], [ %i.ez, %middle.block468 ]
  %.0225365.ph = phi i32 [ 0, %.lr.ph367.preheader ], [ %i.fe, %middle.block468 ]
  br label %.lr.ph367

.lr.ph371.preheader:                              ; preds = %.lr.ph367, %middle.block468, %bb.w
  %.0225.lcssa = phi i32 [ 0, %bb.w ], [ %i.fe, %middle.block468 ], [ %i.fs, %.lr.ph367 ] ; 2 uses
  %i.ff = sext i32 %.0232375 to i64               ; 5 uses
  %i.fg = sext i32 %i.es to i64                   ; 2 uses
  %i.fh = add nsw i64 %i.ff, 1
  %i.fi = call i64 @llvm.smax.i64(i64 %i.fh, i64 %i.fg)
  %i.fj = sub i64 %i.fi, %i.ff                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fj, 8
  br i1 %min.iters.check, label %.lr.ph371.preheader505, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph371.preheader
  %n.vec = and i64 %i.fj, -8                      ; 3 uses
  %i.fk = add i64 %n.vec, %i.ff
  %invariant.gep557 = getelementptr [4 x i8], ptr %i.cf, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fm, %vector.body ]
  %vec.phi455 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fn, %vector.body ]
  %gep558 = getelementptr [4 x i8], ptr %invariant.gep557, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %gep558, i64 16
  %wide.load = load <4 x i32>, ptr %gep558, align 4, !tbaa !41
  %wide.load456 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !41
  %i.fm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.fn = add <4 x i32> %wide.load456, %vec.phi455 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fn, %i.fm
  %i.fp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph371.preheader505

.lr.ph371.preheader505:                           ; preds = %.lr.ph371.preheader, %middle.block
  %indvars.iv409.ph = phi i64 [ %i.ff, %.lr.ph371.preheader ], [ %i.fk, %middle.block ]
  %.0370.ph = phi i32 [ 0, %.lr.ph371.preheader ], [ %i.fp, %middle.block ]
  br label %.lr.ph371

.lr.ph367:                                        ; preds = %.lr.ph367.preheader506, %.lr.ph367
  %indvars.iv406 = phi i64 [ %indvars.iv.next407, %.lr.ph367 ], [ %indvars.iv406.ph, %.lr.ph367.preheader506 ] ; 2 uses
  %.0225365 = phi i32 [ %i.fs, %.lr.ph367 ], [ %.0225365.ph, %.lr.ph367.preheader506 ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv406
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !41
  %i.fs = add nsw i32 %i.fr, %.0225365            ; 2 uses
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %i.ft = trunc nuw i64 %indvars.iv.next407 to i32
  %i.fu = icmp sgt i32 %.0228376, %i.ft
  br i1 %i.fu, label %.lr.ph367, label %.lr.ph371.preheader, !llvm.loop !79

.lr.ph371:                                        ; preds = %.lr.ph371.preheader505, %.lr.ph371
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %.lr.ph371 ], [ %indvars.iv409.ph, %.lr.ph371.preheader505 ] ; 2 uses
  %.0370 = phi i32 [ %i.fx, %.lr.ph371 ], [ %.0370.ph, %.lr.ph371.preheader505 ]
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv409
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41
  %i.fx = add nsw i32 %i.fw, %.0370               ; 2 uses
  %indvars.iv.next410 = add nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.fy = icmp slt i64 %indvars.iv.next410, %i.fg
  br i1 %i.fy, label %.lr.ph371, label %.loopexit, !llvm.loop !80

.lr.ph358.preheader:                              ; preds = %.lr.ph378
  %i.fz = sext i32 %.0232375 to i64               ; 5 uses
  %i.ga = sext i32 %i.es to i64                   ; 2 uses
  %i.gb = add nsw i64 %i.fz, 1
  %i.gc = call i64 @llvm.smax.i64(i64 %i.gb, i64 %i.ga)
  %i.gd = sub i64 %i.gc, %i.fz                    ; 3 uses
  %min.iters.check490 = icmp ult i64 %i.gd, 8
  br i1 %min.iters.check490, label %.lr.ph358.preheader509, label %vector.ph491

vector.ph491:                                     ; preds = %.lr.ph358.preheader
  %n.vec492 = and i64 %i.gd, -8                   ; 3 uses
  %i.ge = add i64 %n.vec492, %i.fz
  %invariant.gep551 = getelementptr [4 x i8], ptr %i.cf, i64 %i.fz
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph491
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next499, %vector.body493 ] ; 2 uses
  %vec.phi495 = phi <4 x i32> [ zeroinitializer, %vector.ph491 ], [ %i.gg, %vector.body493 ]
  %vec.phi496 = phi <4 x i32> [ zeroinitializer, %vector.ph491 ], [ %i.gh, %vector.body493 ]
  %gep552 = getelementptr [4 x i8], ptr %invariant.gep551, i64 %index494 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %gep552, i64 16
  %wide.load497 = load <4 x i32>, ptr %gep552, align 4, !tbaa !41
  %wide.load498 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !41
  %i.gg = add <4 x i32> %wide.load497, %vec.phi495 ; 2 uses
  %i.gh = add <4 x i32> %wide.load498, %vec.phi496 ; 2 uses
  %index.next499 = add nuw i64 %index494, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next499, %n.vec492
  br i1 %i.gi, label %middle.block500, label %vector.body493, !llvm.loop !81

middle.block500:                                  ; preds = %vector.body493
  %bin.rdx501 = add <4 x i32> %i.gh, %i.gg
  %i.gj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx501) ; 2 uses
  %cmp.n502 = icmp eq i64 %i.gd, %n.vec492
  br i1 %cmp.n502, label %.preheader338, label %.lr.ph358.preheader509

.lr.ph358.preheader509:                           ; preds = %.lr.ph358.preheader, %middle.block500
  %indvars.iv400.ph = phi i64 [ %i.fz, %.lr.ph358.preheader ], [ %i.ge, %middle.block500 ]
  %.1226356.ph = phi i32 [ 0, %.lr.ph358.preheader ], [ %i.gj, %middle.block500 ]
  br label %.lr.ph358

.preheader338:                                    ; preds = %.lr.ph358, %middle.block500
  %.lcssa = phi i32 [ %i.gj, %middle.block500 ], [ %i.gy, %.lr.ph358 ] ; 3 uses
  %i.gk = icmp slt i32 %i.es, %.0228376
  br i1 %i.gk, label %.lr.ph362.preheader, label %.loopexit.thread

.lr.ph362.preheader:                              ; preds = %.preheader338
  %i.gl = zext i32 %i.es to i64                   ; 3 uses
  %i.gm = xor i32 %i.es, -1
  %i.gn = add i32 %.0228376, %i.gm                ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check474 = icmp ult i32 %i.gn, 7
  br i1 %min.iters.check474, label %.lr.ph362.preheader507, label %vector.ph475

vector.ph475:                                     ; preds = %.lr.ph362.preheader
  %n.vec476 = and i64 %i.gp, 8589934584           ; 3 uses
  %i.gq = add nuw nsw i64 %n.vec476, %i.gl
  %invariant.gep553 = getelementptr [4 x i8], ptr %i.cf, i64 %i.gl
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph475
  %index478 = phi i64 [ 0, %vector.ph475 ], [ %index.next483, %vector.body477 ] ; 2 uses
  %vec.phi479 = phi <4 x i32> [ zeroinitializer, %vector.ph475 ], [ %i.gs, %vector.body477 ]
  %vec.phi480 = phi <4 x i32> [ zeroinitializer, %vector.ph475 ], [ %i.gt, %vector.body477 ]
  %gep554 = getelementptr [4 x i8], ptr %invariant.gep553, i64 %index478 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %gep554, i64 16
  %wide.load481 = load <4 x i32>, ptr %gep554, align 4, !tbaa !41
  %wide.load482 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !41
  %i.gs = add <4 x i32> %wide.load481, %vec.phi479 ; 2 uses
  %i.gt = add <4 x i32> %wide.load482, %vec.phi480 ; 2 uses
  %index.next483 = add nuw i64 %index478, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next483, %n.vec476
  br i1 %i.gu, label %middle.block484, label %vector.body477, !llvm.loop !82

middle.block484:                                  ; preds = %vector.body477
  %bin.rdx485 = add <4 x i32> %i.gt, %i.gs
  %i.gv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx485) ; 2 uses
  %cmp.n486 = icmp eq i64 %i.gp, %n.vec476
  br i1 %cmp.n486, label %.loopexit, label %.lr.ph362.preheader507

.lr.ph362.preheader507:                           ; preds = %.lr.ph362.preheader, %middle.block484
  %indvars.iv403.ph = phi i64 [ %i.gl, %.lr.ph362.preheader ], [ %i.gq, %middle.block484 ]
  %.1361.ph = phi i32 [ 0, %.lr.ph362.preheader ], [ %i.gv, %middle.block484 ]
  br label %.lr.ph362

.lr.ph358:                                        ; preds = %.lr.ph358.preheader509, %.lr.ph358
  %indvars.iv400 = phi i64 [ %indvars.iv.next401, %.lr.ph358 ], [ %indvars.iv400.ph, %.lr.ph358.preheader509 ] ; 2 uses
  %.1226356 = phi i32 [ %i.gy, %.lr.ph358 ], [ %.1226356.ph, %.lr.ph358.preheader509 ]
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv400
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !41
  %i.gy = add nsw i32 %i.gx, %.1226356            ; 2 uses
  %indvars.iv.next401 = add nsw i64 %indvars.iv400, 1 ; 2 uses
  %i.gz = icmp slt i64 %indvars.iv.next401, %i.ga
  br i1 %i.gz, label %.lr.ph358, label %.preheader338, !llvm.loop !83

.lr.ph362:                                        ; preds = %.lr.ph362.preheader507, %.lr.ph362
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %.lr.ph362 ], [ %indvars.iv403.ph, %.lr.ph362.preheader507 ] ; 2 uses
  %.1361 = phi i32 [ %i.hc, %.lr.ph362 ], [ %.1361.ph, %.lr.ph362.preheader507 ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv403
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !41
  %i.hc = add nsw i32 %i.hb, %.1361               ; 2 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %i.hd = trunc nuw i64 %indvars.iv.next404 to i32
  %i.he = icmp sgt i32 %.0228376, %i.hd
  br i1 %i.he, label %.lr.ph362, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %.lr.ph362, %.lr.ph371, %middle.block484, %middle.block
  %.1233 = phi i32 [ %i.es, %middle.block ], [ %.0232375, %middle.block484 ], [ %i.es, %.lr.ph371 ], [ %.0232375, %.lr.ph362 ] ; 2 uses
  %.1231 = phi i32 [ %.0232375, %middle.block ], [ %i.es, %middle.block484 ], [ %.0232375, %.lr.ph371 ], [ %i.es, %.lr.ph362 ] ; 3 uses
  %.2227 = phi i32 [ %.0225.lcssa, %middle.block ], [ %.lcssa, %middle.block484 ], [ %.0225.lcssa, %.lr.ph371 ], [ %.lcssa, %.lr.ph362 ] ; 2 uses
  %.2 = phi i32 [ %i.fp, %middle.block ], [ %i.gv, %middle.block484 ], [ %i.fx, %.lr.ph371 ], [ %i.hc, %.lr.ph362 ] ; 4 uses
  %i.hf = icmp sgt i32 %.2, 0
  br i1 %i.hf, label %bb.x, label %.loopexit.thread

bb.x:                                             ; preds = %.loopexit
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !85
  %i.hh = zext nneg i32 %.1231 to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !41
  %i.hk = sext i32 %i.hj to i64
  %i.hl = mul nsw i64 %i.ar, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.bg, i64 %i.hl
  %i.hn = zext nneg i32 %.2 to i64
  %i.ho = call i32 %i.hg(ptr noundef nonnull %i.hm, i64 noundef %i.hn, ptr noundef nonnull %3, i32 noundef %i.eq, i32 noundef -22, ptr noundef %5, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not288 = icmp eq i32 %i.ho, 0
  br i1 %.not288, label %.loopexit.thread, label %.thread307

.loopexit.thread:                                 ; preds = %.preheader338, %bb.x, %.loopexit
  %i.hp = phi i1 [ true, %bb.x ], [ false, %.loopexit ], [ false, %.preheader338 ]
  %.2439 = phi i32 [ %.2, %bb.x ], [ %.2, %.loopexit ], [ 0, %.preheader338 ]
  %.2227438 = phi i32 [ %.2227, %bb.x ], [ %.2227, %.loopexit ], [ %.lcssa, %.preheader338 ] ; 2 uses
  %.1231437 = phi i32 [ %.1231, %bb.x ], [ %.1231, %.loopexit ], [ %i.es, %.preheader338 ] ; 3 uses
  %.1233436 = phi i32 [ %.1233, %bb.x ], [ %.1233, %.loopexit ], [ %.0232375, %.preheader338 ]
  %.2243 = phi i32 [ 0, %bb.x ], [ %.1242373, %.loopexit ], [ %.1242373, %.preheader338 ]
  %i.hq = icmp sgt i32 %.2227438, 0
  br i1 %i.hq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit.thread
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !71
  %i.hs = zext nneg i32 %.1233436 to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !41
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul nsw i64 %i.ar, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.bk, i64 %i.hw
  %i.hy = zext nneg i32 %.2227438 to i64
  %i.hz = call i32 %i.hr(ptr noundef %i.hx, i64 noundef %i.hy, ptr noundef nonnull %3, i32 noundef %i.eq, i32 noundef -22, i32 noundef 4, ptr noundef %5) #10 ; 2 uses
  %.not289 = icmp eq i32 %i.hz, 0
  br i1 %.not289, label %bb.z, label %.thread307

bb.z:                                             ; preds = %bb.y, %.loopexit.thread
  %.3 = phi i32 [ 0, %bb.y ], [ %.2243, %.loopexit.thread ]
  br i1 %i.hp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !86
  %i.ib = call i32 %i.ia(ptr noundef nonnull %i.a, ptr noundef null) #10 ; 2 uses
  %.not290 = icmp eq i32 %i.ib, 0
  br i1 %.not290, label %bb.ab, label %.thread307

bb.ab:                                            ; preds = %bb.aa
  %i.ic = zext nneg i32 %.1231437 to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !41
  %i.if = sext i32 %i.ie to i64
  %i.ig = mul nsw i64 %i.ar, %i.if                ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.bg, i64 %i.ig
  %i.ii = getelementptr inbounds i8, ptr %i.bk, i64 %i.ig
  %i.ij = zext nneg i32 %.2439 to i64
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.ih, ptr noundef %i.ii, i64 noundef %i.ij, ptr noundef nonnull %3)
  br label %bb.ac

.thread307:                                       ; preds = %bb.aa, %bb.y, %bb.x
  %.5.ph = phi i32 [ %i.hz, %bb.y ], [ %i.ho, %bb.x ], [ %i.ib, %bb.aa ]
  call void @free(ptr noundef nonnull %i.cf) #10
  call void @free(ptr noundef %i.ch) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread315

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.4 = phi i32 [ 0, %bb.ab ], [ %.3, %bb.z ]     ; 2 uses
  %i.ik = add nuw nsw i32 %.1231437, %.0235374
  %i.il = lshr i32 %.0235374, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not381 = icmp eq i32 %i.il, 0
  br i1 %.not381, label %._crit_edge379, label %.lr.ph378, !llvm.loop !88

._crit_edge379:                                   ; preds = %bb.ac, %._crit_edge354
  %.1242.lcssa = phi i32 [ %.0241, %._crit_edge354 ], [ %.4, %bb.ac ]
  %i.im = sext i32 %.val to i64                   ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %2, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !41 ; 3 uses
  %.not286 = icmp eq i32 %i.io, 0
  br i1 %.not286, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge379
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.im
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !41
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul nsw i64 %i.ar, %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.bk, i64 %i.is
  %i.iu = call i32 @ompi_datatype_sndrcv(ptr noundef %i.it, i32 noundef %i.io, ptr noundef nonnull %3, ptr noundef %1, i32 noundef %i.io, ptr noundef nonnull %3) #10 ; 2 uses
  %.not287 = icmp eq i32 %i.iu, 0
  br i1 %.not287, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.cf) #10
  call void @free(ptr noundef %i.ch) #10
  br label %.thread315

bb.af:                                            ; preds = %._crit_edge379, %bb.ad
  %.6 = phi i32 [ 0, %bb.ad ], [ %.1242.lcssa, %._crit_edge379 ]
  call void @free(ptr noundef nonnull %i.cf) #10
  call void @free(ptr noundef %i.ch) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.l
  %.8 = phi i32 [ %.6, %bb.af ], [ %.0241, %bb.l ] ; 3 uses
  br i1 %i.br, label %.thread318, label %.thread315

.thread318:                                       ; preds = %bb.ag
  %.pre = and i32 %.val, 1
  %i.iv = icmp eq i32 %.pre, 0
  br i1 %i.iv, label %.thread318.thread, label %bb.ai

.thread318.thread:                                ; preds = %bb.i, %.thread318
  %.8320442 = phi i32 [ %.8, %.thread318 ], [ 0, %bb.i ]
  %i.iw = sext i32 %.val to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %2, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !41 ; 2 uses
  %.not292 = icmp eq i32 %i.iy, 0
  br i1 %.not292, label %.thread315, label %bb.ah

bb.ah:                                            ; preds = %.thread318.thread
  %i.iz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !73
  %i.ja = sext i32 %i.iy to i64
  %i.jb = or disjoint i32 %.val, 1
  %i.jc = call i32 %i.iz(ptr noundef %1, i64 noundef %i.ja, ptr noundef nonnull %3, i32 noundef %i.jb, i32 noundef -22, ptr noundef %5, ptr noundef null) #10
  br label %.thread315

bb.ai:                                            ; preds = %.thread318
  %i.jd = add nsw i32 %.val, -1                   ; 2 uses
  %i.je = sext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !41 ; 2 uses
  %.not291 = icmp eq i32 %i.jg, 0
  br i1 %.not291, label %.thread315, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !71
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.je
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !41
end_hunk_0
