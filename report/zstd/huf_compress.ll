Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@HUF_buildCTable_wksp:bb.a
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader49.preheader.i.unr-lcssa, label %bb.d, !llvm.loop !43

.preheader49.preheader.i.unr-lcssa:               ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader49.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader49.preheader.i.unr-lcssa, %bb.c
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.1, %.preheader49.preheader.i.unr-lcssa ]
  %lcmp.mod100 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17 ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 165
  %i.al = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aj, i1 true)
  %i.am = sub nuw nsw i32 189, %i.al
  %i.an = select i1 %i.ak, i32 %i.aj, i32 %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !69
  %i.ar = add i16 %i.aq, 1
  store i16 %i.ar, ptr %i.ap, align 2, !tbaa !69
  br label %.preheader49.preheader.i

.preheader49.preheader.i:                         ; preds = %.preheader49.preheader.i.unr-lcssa, %.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4860
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !69
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %.preheader49.i.3, %.preheader49.preheader.i
  %i.as = phi i16 [ %.pre.i, %.preheader49.preheader.i ], [ %i.bj, %.preheader49.i.3 ]
  %indvars.iv55.i = phi i64 [ 191, %.preheader49.preheader.i ], [ %indvars.iv.next56.i.3, %.preheader49.i.3 ] ; 4 uses
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !69
  %i.aw = add i16 %i.av, %i.as                    ; 3 uses
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !69
  %i.ax = getelementptr i8, ptr %i.at, i64 -2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !70
  %i.ay = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !69
  %i.bb = add i16 %i.ba, %i.aw                    ; 3 uses
  store i16 %i.bb, ptr %i.az, align 2, !tbaa !69
  %i.bc = getelementptr i8, ptr %i.ay, i64 -6
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !70
  %indvars.iv.next56.i.2 = add nsw i64 %indvars.iv55.i, -3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.2 ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !69
  %i.bf = add i16 %i.be, %i.bb                    ; 3 uses
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !70
  %.not46.i.2 = icmp eq i64 %indvars.iv.next56.i.2, 0
  br i1 %.not46.i.2, label %.preheader48.i.preheader, label %.preheader49.i.3

.preheader49.i.3:                                 ; preds = %.preheader49.i
  %indvars.iv.next56.i.3 = add nsw i64 %indvars.iv55.i, -4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.3 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !69
  %i.bj = add i16 %i.bi, %i.bf                    ; 3 uses
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !69
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !70
  br label %.preheader49.i

.preheader48.i.preheader:                         ; preds = %.preheader49.i
  %xtraiter101 = and i64 %wide.trip.count.i, 1
  %i.bl = icmp eq i32 %2, 0
  br i1 %i.bl, label %.preheader48.i.epil.preheader, label %.preheader48.i.preheader.new

.preheader48.i.preheader.new:                     ; preds = %.preheader48.i.preheader
  %unroll_iter104 = and i64 %wide.trip.count.i, 510
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %.preheader48.i, %.preheader48.i.preheader.new
  %indvars.iv58.i = phi i64 [ 0, %.preheader48.i.preheader.new ], [ %indvars.iv.next59.i.1, %.preheader48.i ] ; 4 uses
  %niter105 = phi i64 [ 0, %.preheader48.i.preheader.new ], [ %niter105.next.1, %.preheader48.i ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !17 ; 4 uses
  %i.bo = icmp ult i32 %i.bn, 165
  %i.bp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bn, i1 true)
  %i.bq = sub nuw nsw i32 189, %i.bp
  %i.br = select i1 %i.bo, i32 %i.bn, i32 %i.bq
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !70 ; 2 uses
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !70
  %i.bx = zext i16 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx ; 2 uses
  store i32 %i.bn, ptr %i.by, align 4, !tbaa !21
  %i.bz = trunc i64 %indvars.iv58.i to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !71
  %indvars.iv.next59.i = or disjoint i64 %indvars.iv58.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next59.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17 ; 4 uses
  %i.cd = icmp ult i32 %i.cc, 165
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.cf = sub nuw nsw i32 189, %i.ce
  %i.cg = select i1 %i.cd, i32 %i.cc, i32 %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 6 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !70 ; 2 uses
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !70
  %i.cm = zext i16 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cm ; 2 uses
  store i32 %i.cc, ptr %i.cn, align 4, !tbaa !21
  %i.co = trunc i64 %indvars.iv.next59.i to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  store i8 %i.co, ptr %i.cp, align 2, !tbaa !71
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %niter105.next.1 = add i64 %niter105, 2         ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %.preheader48.i, !llvm.loop !44

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader48.i
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.preheader.i.preheader, label %.preheader48.i.epil.preheader

.preheader48.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %.preheader48.i.preheader ], [ %indvars.iv.next59.i.1, %.preheader.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17 ; 4 uses
  %i.cs = icmp ult i32 %i.cr, 165
  %i.ct = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.cu = sub nuw nsw i32 189, %i.ct
  %i.cv = select i1 %i.cs, i32 %i.cr, i32 %i.cu
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !70 ; 2 uses
  %i.da = add i16 %i.cz, 1
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !70
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.db ; 2 uses
  store i32 %i.cr, ptr %i.dc, align 4, !tbaa !21
  %i.dd = trunc i64 %indvars.iv58.i.epil.init to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !71
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.epil.preheader
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %bb.f ], [ 165, %.preheader.i.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv63.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !70
  %i.di = zext i16 %i.dh to i32
  %i.dj = load i16, ptr %i.df, align 2, !tbaa !69 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = sub nsw i32 %i.di, %i.dk                ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.dn = zext i16 %i.dj to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dn
  %i.dp = add nsw i32 %i.dl, -1
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %i.do, i32 noundef 0, i32 noundef %i.dp)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.i
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 191
  br i1 %exitcond66.not.i, label %HUF_sort.exit, label %.preheader.i, !llvm.loop !45

HUF_sort.exit:                                    ; preds = %bb.f
  %i.dq = zext nneg i32 %2 to i64
  %i.dr = add nuw nsw i32 %2, 254
  %i.ds = add nuw nsw i32 %2, 255
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %HUF_sort.exit
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ %i.ds, %HUF_sort.exit ] ; 3 uses
  %indvars.iv120.i = phi i32 [ %indvars.iv.next121.i, %bb.g ], [ %i.l, %HUF_sort.exit ] ; 3 uses
  %indvars.iv112.i = phi i32 [ %indvars.iv.next113.i, %bb.g ], [ %i.dr, %HUF_sort.exit ] ; 2 uses
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i25, %bb.g ], [ %i.dq, %HUF_sort.exit ] ; 11 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !21 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %indvars.iv.next.i25 = add nsw i64 %indvars.iv.i24, -1
  %indvars.iv.next113.i = add i32 %indvars.iv112.i, -1
  %indvars.iv.next121.i = add nsw i32 %indvars.iv120.i, -1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %i.dv, label %bb.g, label %bb.h, !llvm.loop !46

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24 ; 4 uses
  %i.dx = icmp eq i32 %3, 0
  %spec.store.select = select i1 %i.dx, i32 11, i32 %3 ; 16 uses
  %i.dy = trunc nsw i64 %indvars.iv.i24 to i32    ; 3 uses
  %i.dz = add nsw i32 %i.dy, 255                  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dw, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !21
  %i.ec = add i32 %i.eb, %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 2056
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !21
  %i.ee = getelementptr i8, ptr %i.dw, i64 -4
  store i16 256, ptr %i.ee, align 4, !tbaa !72
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i16 256, ptr %i.ef, align 4, !tbaa !72
  %i.eg = add nsw i32 %i.dy, -2
  %.not88.i = icmp slt i64 %indvars.iv.i24, 2
  br i1 %.not88.i, label %.preheader.i28, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.eh = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 257) ; 2 uses
  %narrow = add nuw i32 %i.eh, 1
  %i.ei = zext i32 %narrow to i64
  %i.ej = zext nneg i32 %i.eh to i64              ; 2 uses
  %xtraiter106 = and i64 %i.ej, 7                 ; 3 uses
  %i.ek = icmp slt i32 %indvars.iv, 264
  br i1 %i.ek, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.el = and i64 %i.ej, 2147483640
  %i.em = add nsw i64 %i.el, -264
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv106.i = phi i64 [ 257, %.lr.ph.preheader.i.new ], [ %indvars.iv.next107.i.7, %.lr.ph.i ] ; 9 uses
  %niter110 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter110.next.7, %.lr.ph.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  store i32 1073741824, ptr %i.en, align 4, !tbaa !21
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 1073741824, ptr %i.ep, align 4, !tbaa !21
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 1073741824, ptr %i.er, align 4, !tbaa !21
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i32 1073741824, ptr %i.et, align 4, !tbaa !21
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store i32 1073741824, ptr %i.ev, align 4, !tbaa !21
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i32 1073741824, ptr %i.ex, align 4, !tbaa !21
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store i32 1073741824, ptr %i.ez, align 4, !tbaa !21
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store i32 1073741824, ptr %i.fb, align 4, !tbaa !21
  %indvars.iv.next107.i.7 = add nuw nsw i64 %indvars.iv106.i, 8 ; 2 uses
  %niter110.next.7 = add i64 %niter110, 8
  %niter110.ncmp.7 = icmp eq i64 %niter110, %i.em
  br i1 %niter110.ncmp.7, label %.lr.ph95.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !47

.lr.ph95.preheader.i.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph95.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph95.preheader.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv106.i.epil.init = phi i64 [ 257, %.lr.ph.preheader.i ], [ %indvars.iv.next107.i.7, %.lr.ph95.preheader.i.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter106, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv106.i.epil = phi i64 [ %indvars.iv106.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next107.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i.epil
  store i32 1073741824, ptr %i.fc, align 4, !tbaa !21
  %indvars.iv.next107.i.epil = add nuw nsw i64 %indvars.iv106.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %.lr.ph95.preheader.i, label %.lr.ph.i.epil, !llvm.loop !48

.lr.ph95.preheader.i:                             ; preds = %.lr.ph.i.epil, %.lr.ph95.preheader.i.unr-lcssa
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !21
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.lr.ph95.i, %.lr.ph95.preheader.i
  %indvars.iv109.i = phi i64 [ 257, %.lr.ph95.preheader.i ], [ %indvars.iv.next110.i, %.lr.ph95.i ] ; 3 uses
  %.07492.i = phi i32 [ 256, %.lr.ph95.preheader.i ], [ %.276.i, %.lr.ph95.i ] ; 3 uses
  %.07791.i = phi i32 [ %i.eg, %.lr.ph95.preheader.i ], [ %.279.i, %.lr.ph95.i ] ; 3 uses
  %i.fd = sext i32 %.07791.i to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !21
  %i.fg = sext i32 %.07492.i to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !21
  %i.fj = icmp ult i32 %i.ff, %i.fi               ; 3 uses
  %i.fk = sext i1 %i.fj to i32
  %.178.i = add nsw i32 %.07791.i, %i.fk          ; 3 uses
  %not..i = xor i1 %i.fj, true
  %i.fl = zext i1 %not..i to i32
  %.175.i = add nsw i32 %.07492.i, %i.fl          ; 3 uses
  %i.fm = select i1 %i.fj, i32 %.07791.i, i32 %.07492.i
  %i.fn = sext i32 %.178.i to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !21
  %i.fq = sext i32 %.175.i to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !21
  %i.ft = icmp ult i32 %i.fp, %i.fs               ; 3 uses
  %i.fu = sext i1 %i.ft to i32
  %.279.i = add nsw i32 %.178.i, %i.fu
  %not.85.i = xor i1 %i.ft, true
  %i.fv = zext i1 %not.85.i to i32
  %.276.i = add nsw i32 %.175.i, %i.fv
  %i.fw = select i1 %i.ft, i32 %.178.i, i32 %.175.i
  %i.fx = sext i32 %i.fm to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !21
  %i.ga = sext i32 %i.fw to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !21
  %i.gd = add i32 %i.gc, %i.fz
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv109.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !21
  %i.gf = trunc i64 %indvars.iv109.i to i16       ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i16 %i.gf, ptr %i.gg, align 4, !tbaa !72
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i16 %i.gf, ptr %i.gh, align 4, !tbaa !72
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next110.i, %i.ei
  br i1 %exitcond62.not, label %.lr.ph99.preheader.i, label %.lr.ph95.i, !llvm.loop !49

.lr.ph99.preheader.i:                             ; preds = %.lr.ph95.i
  %i.gi = sext i32 %i.dz to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 7
  store i8 0, ptr %i.gk, align 1, !tbaa !73
  %i.gl = zext i32 %indvars.iv112.i to i64
  br label %.lr.ph99.i

.preheader.i28:                                   ; preds = %bb.h
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !21
  %.pre.i29 = sext i32 %i.dz to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre.i29
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 7
  store i8 0, ptr %i.gn, align 1, !tbaa !73
  %.not84100.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not84100.i, label %HUF_buildTree.exit, label %.lr.ph102.preheader.i

.lr.ph102.preheader.i:                            ; preds = %.lr.ph99.i, %.preheader.i28
  %wide.trip.count.i26 = zext i32 %indvars.iv120.i to i64 ; 2 uses
  %xtraiter111 = and i64 %wide.trip.count.i26, 3  ; 3 uses
  %i.go = add i32 %indvars.iv120.i, -1
  %i.gp = icmp ult i32 %i.go, 3
  br i1 %i.gp, label %.lr.ph102.i.epil.preheader, label %.lr.ph102.preheader.i.new

.lr.ph102.preheader.i.new:                        ; preds = %.lr.ph102.preheader.i
  %unroll_iter115 = and i64 %wide.trip.count.i26, 4294967292
  br label %.lr.ph102.i

.lr.ph99.i:                                       ; preds = %.lr.ph99.i, %.lr.ph99.preheader.i
  %indvars.iv114.i = phi i64 [ %i.gl, %.lr.ph99.preheader.i ], [ %indvars.iv.next115.i, %.lr.ph99.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv114.i ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !72
  %i.gt = zext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 7
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !73
  %i.gx = add i8 %i.gw, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 7
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !73
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1
  %i.gz = icmp samesign ugt i64 %indvars.iv114.i, 256
  br i1 %i.gz, label %.lr.ph99.i, label %.lr.ph102.preheader.i, !llvm.loop !50

.lr.ph102.i:                                      ; preds = %.lr.ph102.i, %.lr.ph102.preheader.i.new
  %indvars.iv117.i = phi i64 [ 0, %.lr.ph102.preheader.i.new ], [ %indvars.iv.next118.i.3, %.lr.ph102.i ] ; 5 uses
  %niter116 = phi i64 [ 0, %.lr.ph102.preheader.i.new ], [ %niter116.next.3, %.lr.ph102.i ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = load i16, ptr %i.hb, align 4, !tbaa !72
  %i.hd = zext i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 7
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !73
  %i.hh = add i8 %i.hg, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 7
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !73
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !72
  %i.hm = zext i16 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 7
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !73
  %i.hq = add i8 %i.hp, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 15
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !73
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.hu = load i16, ptr %i.ht, align 4, !tbaa !72
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 7
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !73
  %i.hz = add i8 %i.hy, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 23
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !73
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !72
  %i.ie = zext i16 %i.id to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 7
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !73
  %i.ii = add i8 %i.ih, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 31
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !73
  %indvars.iv.next118.i.3 = add nuw nsw i64 %indvars.iv117.i, 4 ; 2 uses
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %HUF_buildTree.exit.loopexit.unr-lcssa, label %.lr.ph102.i, !llvm.loop !51

HUF_buildTree.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph102.i
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %HUF_buildTree.exit, label %.lr.ph102.i.epil.preheader

.lr.ph102.i.epil.preheader:                       ; preds = %HUF_buildTree.exit.loopexit.unr-lcssa, %.lr.ph102.preheader.i
  %indvars.iv117.i.epil.init = phi i64 [ 0, %.lr.ph102.preheader.i ], [ %indvars.iv.next118.i.3, %HUF_buildTree.exit.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph102.i.epil

.lr.ph102.i.epil:                                 ; preds = %.lr.ph102.i.epil, %.lr.ph102.i.epil.preheader
  %indvars.iv117.i.epil = phi i64 [ %indvars.iv117.i.epil.init, %.lr.ph102.i.epil.preheader ], [ %indvars.iv.next118.i.epil, %.lr.ph102.i.epil ] ; 2 uses
  %epil.iter112 = phi i64 [ 0, %.lr.ph102.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph102.i.epil ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i.epil ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = load i16, ptr %i.il, align 4, !tbaa !72
  %i.in = zext i16 %i.im to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 7
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !73
  %i.ir = add i8 %i.iq, 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 7
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !73
  %indvars.iv.next118.i.epil = add nuw nsw i64 %indvars.iv117.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %HUF_buildTree.exit, label %.lr.ph102.i.epil, !llvm.loop !52

HUF_buildTree.exit:                               ; preds = %HUF_buildTree.exit.loopexit.unr-lcssa, %.lr.ph102.i.epil, %.preheader.i28
  %i.it = and i64 %indvars.iv.i24, 4294967295
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 7
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !73  ; 2 uses
  %i.ix = zext i8 %i.iw to i32                    ; 4 uses
  %.not.i30 = icmp ult i32 %spec.store.select, %i.ix
  br i1 %.not.i30, label %bb.i, label %HUF_setMaxHeight.exit

bb.i:                                             ; preds = %HUF_buildTree.exit
  %i.iy = sub nuw nsw i32 %i.ix, %spec.store.select ; 2 uses
  %i.iz = shl nuw i32 1, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dw, i64 7 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !73
  %i.jc = zext i8 %i.jb to i32                    ; 2 uses
  %i.jd = icmp samesign ult i32 %spec.store.select, %i.jc
  br i1 %i.jd, label %.lr.ph.i34, label %.preheader113.i

.lr.ph.i34:                                       ; preds = %bb.i
  %i.je = trunc nuw i32 %spec.store.select to i8
  br label %bb.j

.preheader113.loopexit.i:                         ; preds = %bb.j
  %i.jf = trunc nsw i64 %indvars.iv.next.i36 to i32
  br label %.preheader113.i

.preheader113.i:                                  ; preds = %.preheader113.loopexit.i, %bb.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i36, %.preheader113.loopexit.i ], [ %indvars.iv.i24, %bb.i ]
  %.090.lcssa.i = phi i32 [ %i.jk, %.preheader113.loopexit.i ], [ 0, %bb.i ]
  %.088.lcssa.i = phi i32 [ %i.jf, %.preheader113.loopexit.i ], [ %i.dy, %bb.i ]
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ %indvars.iv.i24, %.lr.ph.i34 ], [ %indvars.iv.next.i36, %bb.j ] ; 2 uses
  %i.jg = phi i32 [ %i.jc, %.lr.ph.i34 ], [ %i.jo, %bb.j ]
  %i.jh = phi ptr [ %i.ja, %.lr.ph.i34 ], [ %i.jm, %bb.j ]
  %.090115.i = phi i32 [ 0, %.lr.ph.i34 ], [ %i.jk, %bb.j ]
  %i.ji = sub nsw i32 %i.ix, %i.jg
  %.neg108.i = shl nsw i32 -1, %i.ji
  %i.jj = add i32 %.090115.i, %i.iz
  %i.jk = add i32 %i.jj, %.neg108.i               ; 2 uses
  store i8 %i.je, ptr %i.jh, align 1, !tbaa !73
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i35, -1 ; 3 uses
  %i.jl = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv.i35
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 7 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !73
  %i.jo = zext i8 %i.jn to i32                    ; 2 uses
  %i.jp = icmp samesign ult i32 %spec.store.select, %i.jo
  br i1 %i.jp, label %bb.j, label %.preheader113.loopexit.i, !llvm.loop !53

bb.k:                                             ; preds = %bb.k, %.preheader113.i
  %indvars.iv155.i = phi i32 [ %indvars.iv.next156.i, %bb.k ], [ %.088.lcssa.i, %.preheader113.i ] ; 4 uses
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %bb.k ], [ %.pre-phi.i, %.preheader113.i ] ; 4 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv152.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 7
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !73
  %i.jt = zext i8 %i.js to i32
  %i.ju = icmp eq i32 %spec.store.select, %i.jt
  %indvars.iv.next153.i = add nsw i64 %indvars.iv152.i, -1
  %indvars.iv.next156.i = add i32 %indvars.iv155.i, -1
  br i1 %i.ju, label %bb.k, label %bb.l, !llvm.loop !54

bb.l:                                             ; preds = %bb.k
  %i.jv = ashr i32 %.090.lcssa.i, %i.iy           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, i8 -16, i64 56, i1 false)
  %i.jw = icmp sgt i64 %indvars.iv152.i, -1
  br i1 %i.jw, label %.lr.ph120.preheader.i, label %.preheader112.i

.lr.ph120.preheader.i:                            ; preds = %bb.l
  %i.jx = zext i32 %indvars.iv155.i to i64        ; 4 uses
  %i.jy = and i64 %i.jx, 1
  %lcmp.mod118.not.not = icmp eq i64 %i.jy, 0
  br i1 %lcmp.mod118.not.not, label %.lr.ph120.i.prol, label %.lr.ph120.i.prol.loopexit

.lr.ph120.i.prol:                                 ; preds = %.lr.ph120.preheader.i
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.jx
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 7
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !73
  %i.kc = zext i8 %i.kb to i32                    ; 3 uses
  %.not107.i.prol = icmp ugt i32 %spec.store.select, %i.kc
  br i1 %.not107.i.prol, label %bb.m, label %.lr.ph120.i.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %.lr.ph120.i.prol
  %i.kd = sub nuw nsw i32 %spec.store.select, %i.kc
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ke
  store i32 %indvars.iv155.i, ptr %i.kf, align 4, !tbaa !17
  br label %.lr.ph120.i.prol.loopexit.unr-lcssa

.lr.ph120.i.prol.loopexit.unr-lcssa:              ; preds = %bb.m, %.lr.ph120.i.prol
  %.187.i.prol = phi i32 [ %spec.store.select, %.lr.ph120.i.prol ], [ %i.kc, %bb.m ]
  %indvars.iv.next158.i.prol = add nsw i64 %i.jx, -1
  br label %.lr.ph120.i.prol.loopexit

.lr.ph120.i.prol.loopexit:                        ; preds = %.lr.ph120.i.prol.loopexit.unr-lcssa, %.lr.ph120.preheader.i
  %indvars.iv157.i.unr = phi i64 [ %i.jx, %.lr.ph120.preheader.i ], [ %indvars.iv.next158.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %.086118.i.unr = phi i32 [ %spec.store.select, %.lr.ph120.preheader.i ], [ %.187.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %i.kg = icmp eq i32 %indvars.iv155.i, 0
  br i1 %i.kg, label %.preheader112.i, label %.lr.ph120.i

.preheader112.i:                                  ; preds = %.lr.ph120.i.prol.loopexit, %bb.p, %bb.l
  %i.kh = icmp sgt i32 %i.jv, 0
  br i1 %i.kh, label %.lr.ph134.i, label %.preheader111.i

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.prol.loopexit, %bb.p
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i.1, %bb.p ], [ %indvars.iv157.i.unr, %.lr.ph120.i.prol.loopexit ] ; 6 uses
  %.086118.i = phi i32 [ %.187.i.1, %bb.p ], [ %.086118.i.unr, %.lr.ph120.i.prol.loopexit ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv157.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !73
  %i.kl = zext i8 %i.kk to i32                    ; 3 uses
  %.not107.i = icmp ugt i32 %.086118.i, %i.kl
  br i1 %.not107.i, label %bb.n, label %.lr.ph120.i.1

bb.n:                                             ; preds = %.lr.ph120.i
  %i.km = sub nsw i32 %spec.store.select, %i.kl
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kn
  %i.kp = trunc nuw nsw i64 %indvars.iv157.i to i32
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !17
  br label %.lr.ph120.i.1

.lr.ph120.i.1:                                    ; preds = %bb.n, %.lr.ph120.i
  %.187.i = phi i32 [ %.086118.i, %.lr.ph120.i ], [ %i.kl, %bb.n ] ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv157.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 7
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !73
  %i.kt = zext i8 %i.ks to i32                    ; 3 uses
  %.not107.i.1 = icmp ugt i32 %.187.i, %i.kt
  br i1 %.not107.i.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph120.i.1
  %i.ku = sub nsw i32 %spec.store.select, %i.kt
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kv
  %i.kx = trunc i64 %indvars.iv157.i to i32
  %i.ky = add i32 %i.kx, -1
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph120.i.1
  %.187.i.1 = phi i32 [ %.187.i, %.lr.ph120.i.1 ], [ %i.kt, %bb.o ]
  %indvars.iv.next158.i.1 = add nsw i64 %indvars.iv157.i, -2
  %i.kz = icmp sgt i64 %indvars.iv157.i, 1
  br i1 %i.kz, label %.lr.ph120.i, label %.preheader112.i, !llvm.loop !55

.preheader111.i:                                  ; preds = %bb.u, %.preheader112.i
  %.191.lcssa.i = phi i32 [ %i.jv, %.preheader112.i ], [ %i.lz, %bb.u ] ; 2 uses
  %i.la = icmp slt i32 %.191.lcssa.i, 0
  br i1 %i.la, label %.lr.ph137.lr.ph.i, label %.outer._crit_edge.i

.lr.ph137.lr.ph.i:                                ; preds = %.preheader111.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.promoted143.i = load i32, ptr %i.lb, align 4
  br label %.lr.ph137.i

.lr.ph134.i:                                      ; preds = %.preheader112.i, %bb.u
  %.191133.i = phi i32 [ %i.lz, %bb.u ], [ %i.jv, %.preheader112.i ] ; 2 uses
  %i.lc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.191133.i, i1 true) ; 2 uses
  %.not145.i = icmp eq i32 %i.lc, 31
  br i1 %.not145.i, label %.lr.ph129.i.preheader, label %.lr.ph122.preheader.i

.lr.ph122.preheader.i:                            ; preds = %.lr.ph134.i
  %narrow.i = sub nuw nsw i32 32, %i.lc
  %i.ld = zext nneg i32 %narrow.i to i64
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %select.unfold.i, %.lr.ph122.preheader.i
  %indvars.iv160.i = phi i64 [ %i.ld, %.lr.ph122.preheader.i ], [ %indvars.iv.next161.i, %select.unfold.i ] ; 6 uses
  %i.le = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv160.i ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !17 ; 2 uses
  %i.lg = getelementptr i8, ptr %i.le, i64 -4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !17 ; 2 uses
  %i.li = icmp eq i32 %i.lf, -252645136
  br i1 %i.li, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph122.i
  %i.lj = icmp eq i32 %i.lh, -252645136
  br i1 %i.lj, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lk = zext i32 %i.lf to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !21
  %i.ln = zext i32 %i.lh to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !21
  %i.lq = shl i32 %i.lp, 1
  %.not105.i = icmp ugt i32 %i.lm, %i.lq
  br i1 %.not105.i, label %select.unfold.i, label %.thread.i

select.unfold.i:                                  ; preds = %bb.r, %.lr.ph122.i
  %indvars.iv.next161.i = add nsw i64 %indvars.iv160.i, -1 ; 2 uses
  %i.lr = icmp ugt i64 %indvars.iv.next161.i, 1
  br i1 %i.lr, label %.lr.ph122.i, label %.lr.ph129.i.preheader, !llvm.loop !56

.thread.i:                                        ; preds = %bb.r, %bb.q
  %i.ls = trunc nuw nsw i64 %indvars.iv160.i to i32
  %i.lt = icmp ult i64 %indvars.iv160.i, 13
  br i1 %i.lt, label %.lr.ph129.i.preheader, label %.critedge.i

.lr.ph129.i.preheader:                            ; preds = %select.unfold.i, %.thread.i, %.lr.ph134.i
  %indvars.iv163.i.ph = phi i64 [ %indvars.iv160.i, %.thread.i ], [ 1, %.lr.ph134.i ], [ 1, %select.unfold.i ]
  br label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.s
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.s ], [ %indvars.iv163.i.ph, %.lr.ph129.i.preheader ] ; 4 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv163.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !17
  %i.lw = icmp eq i32 %i.lv, -252645136
  br i1 %i.lw, label %bb.s, label %.critedge.loopexit.split.loop.exit188.i

bb.s:                                             ; preds = %.lr.ph129.i
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next164.i, 13
  br i1 %exitcond.not.i33, label %.critedge.i, label %.lr.ph129.i, !llvm.loop !57

.critedge.loopexit.split.loop.exit188.i:          ; preds = %.lr.ph129.i
  %i.lx = trunc nuw nsw i64 %indvars.iv163.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %.critedge.loopexit.split.loop.exit188.i, %.thread.i
  %.1.lcssa.i = phi i64 [ %indvars.iv160.i, %.thread.i ], [ %indvars.iv163.i, %.critedge.loopexit.split.loop.exit188.i ], [ 13, %bb.s ]
  %.1.lcssa.i.a = phi i32 [ %i.ls, %.thread.i ], [ %i.lx, %.critedge.loopexit.split.loop.exit188.i ], [ 13, %bb.s ] ; 2 uses
  %i.ly = add nsw i32 %.1.lcssa.i.a, -1           ; 2 uses
  %.neg.i = shl nsw i32 -1, %i.ly
  %i.lz = add nsw i32 %.neg.i, %.191133.i         ; 3 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.1.lcssa.i ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !17 ; 4 uses
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 7 ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !73
  %i.mg = add i8 %i.mf, 1
  store i8 %i.mg, ptr %i.me, align 1, !tbaa !73
  %i.mh = zext nneg i32 %i.ly to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mh ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !17 ; 2 uses
  %i.mk = icmp eq i32 %i.mj, -252645136
  %spec.store.select110.i = select i1 %i.mk, i32 %i.mb, i32 %i.mj
  store i32 %spec.store.select110.i, ptr %i.mi, align 4, !tbaa !17
  %i.ml = icmp eq i32 %i.mb, 0
  br i1 %i.ml, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.mm = add i32 %i.mb, -1                       ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 7
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !73
  %i.mr = zext i8 %i.mq to i32
  %i.ms = sub nsw i32 %spec.store.select, %.1.lcssa.i.a
  %.not106.i = icmp eq i32 %i.ms, %i.mr
  %spec.store.select.i = select i1 %.not106.i, i32 %i.mm, i32 -252645136
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge.i
  %storemerge.i32 = phi i32 [ %spec.store.select.i, %bb.t ], [ -252645136, %.critedge.i ]
  store i32 %storemerge.i32, ptr %i.ma, align 4, !tbaa !17
  %i.mt = icmp sgt i32 %i.lz, 0
  br i1 %i.mt, label %.lr.ph134.i, label %.preheader111.i, !llvm.loop !58

bb.v:                                             ; preds = %bb.w, %.lr.ph137.i
  %i.mu = phi i32 [ %i.nk, %.lr.ph137.i ], [ %i.nl, %bb.w ] ; 2 uses
  %.292136.i = phi i32 [ %.292.ph141.i, %.lr.ph137.i ], [ %i.nr, %bb.w ] ; 4 uses
  %i.mv = icmp eq i32 %i.mu, -252645136
  br i1 %i.mv, label %.preheader.i31, label %bb.w

.preheader.i31:                                   ; preds = %bb.v, %.preheader.i31
  %indvars.iv167.i = phi i64 [ %indvars.iv.next168.i, %.preheader.i31 ], [ %.2.ph142.i, %bb.v ] ; 4 uses
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv167.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 7
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !73
  %i.mz = zext i8 %i.my to i32
  %i.na = icmp eq i32 %spec.store.select, %i.mz
  %indvars.iv.next168.i = add nsw i64 %indvars.iv167.i, -1
  br i1 %i.na, label %.preheader.i31, label %.outer.i, !llvm.loop !59

.outer.i:                                         ; preds = %.preheader.i31
  %i.nb = trunc nsw i64 %indvars.iv167.i to i32
  %i.nc = add nsw i32 %i.nb, 1                    ; 2 uses
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 7 ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !73
  %i.nh = add i8 %i.ng, -1
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !73
  %i.ni = add nuw nsw i32 %.292136.i, 1
  %i.nj = icmp slt i32 %.292136.i, -1
  br i1 %i.nj, label %.lr.ph137.i, label %.outer._crit_edge.i, !llvm.loop !60

.lr.ph137.i:                                      ; preds = %.outer.i, %.lr.ph137.lr.ph.i
  %i.nk = phi i32 [ %.promoted143.i, %.lr.ph137.lr.ph.i ], [ %i.nc, %.outer.i ]
  %.2.ph142.i = phi i64 [ %indvars.iv152.i, %.lr.ph137.lr.ph.i ], [ %indvars.iv167.i, %.outer.i ]
  %.292.ph141.i = phi i32 [ %.191.lcssa.i, %.lr.ph137.lr.ph.i ], [ %i.ni, %.outer.i ]
  br label %bb.v

bb.w:                                             ; preds = %bb.v
  %i.nl = add i32 %i.mu, 1                        ; 2 uses
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 7 ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !73
  %i.nq = add i8 %i.np, -1
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !73
  %i.nr = add nuw nsw i32 %.292136.i, 1
  %exitcond166.not.i = icmp eq i32 %.292136.i, -1
  br i1 %exitcond166.not.i, label %.outer._crit_edge.i, label %bb.v, !llvm.loop !60

.outer._crit_edge.i:                              ; preds = %.outer.i, %bb.w, %.preheader111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %6 = trunc nuw nsw i32 %spec.store.select to i8
  br label %HUF_setMaxHeight.exit

HUF_setMaxHeight.exit:                            ; preds = %HUF_buildTree.exit, %.outer._crit_edge.i
  %.095.i = phi i8 [ %6, %.outer._crit_edge.i ], [ %i.iw, %HUF_buildTree.exit ]
  %.095.i.a = phi i32 [ %spec.store.select, %.outer._crit_edge.i ], [ %i.ix, %HUF_buildTree.exit ] ; 5 uses
  %i.ns = icmp samesign ugt i32 %.095.i.a, 12
  br i1 %i.ns, label %bb.z, label %bb.x

bb.x:                                             ; preds = %HUF_setMaxHeight.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.b, i8 0, i64 26, i1 false)
  %.not38.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not38.i, label %.preheader37.i, label %.lr.ph.preheader.i37

.lr.ph.preheader.i37:                             ; preds = %bb.x
  %i.nu = add nuw nsw i64 %indvars.iv.i24, 1      ; 3 uses
  %wide.trip.count.i38 = and i64 %i.nu, 4294967295
  %i.nv = add nsw i64 %wide.trip.count.i38, -1
  %xtraiter119 = and i64 %i.nu, 3                 ; 3 uses
  %i.nw = icmp ult i64 %i.nv, 3
  br i1 %i.nw, label %.lr.ph.i39.epil.preheader, label %.lr.ph.preheader.i37.new

.lr.ph.preheader.i37.new:                         ; preds = %.lr.ph.preheader.i37
  %unroll_iter123 = and i64 %i.nu, 4294967292
  br label %.lr.ph.i39

.preheader37.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i39
  %lcmp.mod121.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %.preheader37.i, label %.lr.ph.i39.epil.preheader

.lr.ph.i39.epil.preheader:                        ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.preheader.i37
  %indvars.iv.i40.epil.init = phi i64 [ 0, %.lr.ph.preheader.i37 ], [ %indvars.iv.next.i41.3, %.preheader37.i.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter119, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i39.epil

.lr.ph.i39.epil:                                  ; preds = %.lr.ph.i39.epil, %.lr.ph.i39.epil.preheader
  %indvars.iv.i40.epil = phi i64 [ %indvars.iv.i40.epil.init, %.lr.ph.i39.epil.preheader ], [ %indvars.iv.next.i41.epil, %.lr.ph.i39.epil ] ; 2 uses
  %epil.iter120 = phi i64 [ 0, %.lr.ph.i39.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i39.epil ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40.epil
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 7
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !73
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oa ; 2 uses
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !19
  %i.od = add i16 %i.oc, 1
  store i16 %i.od, ptr %i.ob, align 2, !tbaa !19
  %indvars.iv.next.i41.epil = add nuw nsw i64 %indvars.iv.i40.epil, 1
  %epil.iter120.next = add i64 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i64 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %.preheader37.i, label %.lr.ph.i39.epil, !llvm.loop !61

.preheader37.i:                                   ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.i39.epil, %bb.x
  %.not.i43 = icmp eq i32 %.095.i.a, 0
  br i1 %.not.i43, label %.preheader36.i.preheader, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader37.i
  %i.oe = zext nneg i32 %.095.i.a to i64          ; 4 uses
  %xtraiter125 = and i64 %i.oe, 3                 ; 3 uses
  %i.of = icmp ult i32 %.095.i.a, 4
  br i1 %i.of, label %.lr.ph42.i.epil.preheader, label %.lr.ph42.preheader.i.new

.lr.ph42.preheader.i.new:                         ; preds = %.lr.ph42.preheader.i
  %unroll_iter129 = and i64 %i.oe, 12
  br label %.lr.ph42.i

.lr.ph.i39:                                       ; preds = %.lr.ph.i39, %.lr.ph.preheader.i37.new
  %indvars.iv.i40 = phi i64 [ 0, %.lr.ph.preheader.i37.new ], [ %indvars.iv.next.i41.3, %.lr.ph.i39 ] ; 5 uses
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i37.new ], [ %niter124.next.3, %.lr.ph.i39 ]
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 7
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !73
  %i.oj = zext i8 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oj ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !19
  %i.om = add i16 %i.ol, 1
  store i16 %i.om, ptr %i.ok, align 2, !tbaa !19
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 15
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !73
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oq ; 2 uses
  %i.os = load i16, ptr %i.or, align 2, !tbaa !19
  %i.ot = add i16 %i.os, 1
  store i16 %i.ot, ptr %i.or, align 2, !tbaa !19
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 23
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !73
  %i.ox = zext i8 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ox ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !19
  %i.pa = add i16 %i.oz, 1
  store i16 %i.pa, ptr %i.oy, align 2, !tbaa !19
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 31
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !73
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pe ; 2 uses
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !19
  %i.ph = add i16 %i.pg, 1
  store i16 %i.ph, ptr %i.pf, align 2, !tbaa !19
  %indvars.iv.next.i41.3 = add nuw nsw i64 %indvars.iv.i40, 4 ; 2 uses
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %.preheader37.i.loopexit.unr-lcssa, label %.lr.ph.i39, !llvm.loop !62

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.preheader.i.new
  %indvars.iv46.i = phi i64 [ %i.oe, %.lr.ph42.preheader.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph42.i ] ; 6 uses
  %.041.i = phi i16 [ 0, %.lr.ph42.preheader.i.new ], [ %i.qb, %.lr.ph42.i ] ; 2 uses
  %niter130 = phi i64 [ 0, %.lr.ph42.preheader.i.new ], [ %niter130.next.3, %.lr.ph42.i ]
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i
  store i16 %.041.i, ptr %i.pi, align 2, !tbaa !19
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !19
  %i.pl = add i16 %i.pk, %.041.i
  %i.pm = lshr i16 %i.pl, 1                       ; 2 uses
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, -1 ; 2 uses
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i
  store i16 %i.pm, ptr %i.pn, align 2, !tbaa !19
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !19
  %i.pq = add i16 %i.pp, %i.pm
  %i.pr = lshr i16 %i.pq, 1                       ; 2 uses
  %indvars.iv.next47.i.1 = add nsw i64 %indvars.iv46.i, -2 ; 2 uses
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.1
  store i16 %i.pr, ptr %i.ps, align 2, !tbaa !19
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.1
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !19
  %i.pv = add i16 %i.pu, %i.pr
  %i.pw = lshr i16 %i.pv, 1                       ; 2 uses
  %indvars.iv.next47.i.2 = add nsw i64 %indvars.iv46.i, -3 ; 2 uses
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.2
  store i16 %i.pw, ptr %i.px, align 2, !tbaa !19
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.2
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !19
  %i.qa = add i16 %i.pz, %i.pw
  %i.qb = lshr i16 %i.qa, 1                       ; 2 uses
  %indvars.iv.next47.i.3 = add nsw i64 %indvars.iv46.i, -4 ; 2 uses
  %niter130.next.3 = add i64 %niter130, 4         ; 2 uses
  %niter130.ncmp.3.not = icmp eq i64 %niter130.next.3, %unroll_iter129
  br i1 %niter130.ncmp.3.not, label %.preheader36.i.preheader.loopexit.unr-lcssa, label %.lr.ph42.i, !llvm.loop !63

.preheader36.i.preheader.loopexit.unr-lcssa:      ; preds = %.lr.ph42.i
  %lcmp.mod127.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod127.not, label %.preheader36.i.preheader, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %.preheader36.i.preheader.loopexit.unr-lcssa, %.lr.ph42.preheader.i
  %indvars.iv46.i.epil.init = phi i64 [ %i.oe, %.lr.ph42.preheader.i ], [ %indvars.iv.next47.i.3, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %.041.i.epil.init = phi i16 [ 0, %.lr.ph42.preheader.i ], [ %i.qb, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter125, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph42.i.epil

.lr.ph42.i.epil:                                  ; preds = %.lr.ph42.i.epil, %.lr.ph42.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv46.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %indvars.iv.next47.i.epil, %.lr.ph42.i.epil ] ; 3 uses
  %.041.i.epil = phi i16 [ %.041.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %i.qg, %.lr.ph42.i.epil ] ; 2 uses
  %epil.iter126 = phi i64 [ 0, %.lr.ph42.i.epil.preheader ], [ %epil.iter126.next, %.lr.ph42.i.epil ]
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i.epil
  store i16 %.041.i.epil, ptr %i.qc, align 2, !tbaa !19
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i.epil
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !19
  %i.qf = add i16 %i.qe, %.041.i.epil
  %i.qg = lshr i16 %i.qf, 1
  %indvars.iv.next47.i.epil = add nsw i64 %indvars.iv46.i.epil, -1
  %epil.iter126.next = add i64 %epil.iter126, 1   ; 2 uses
  %epil.iter126.cmp.not = icmp eq i64 %epil.iter126.next, %xtraiter125
  br i1 %epil.iter126.cmp.not, label %.preheader36.i.preheader, label %.lr.ph42.i.epil, !llvm.loop !64

.preheader36.i.preheader:                         ; preds = %.preheader36.i.preheader.loopexit.unr-lcssa, %.lr.ph42.i.epil, %.preheader37.i
  %xtraiter131 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.qh = icmp ult i32 %2, 3
  br i1 %i.qh, label %.preheader36.i.epil.preheader, label %.preheader36.i.preheader.new

.preheader36.i.preheader.new:                     ; preds = %.preheader36.i.preheader
  %unroll_iter135 = and i64 %wide.trip.count.i, 508
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.i, %.preheader36.i.preheader.new
  %indvars.iv48.i = phi i64 [ 0, %.preheader36.i.preheader.new ], [ %indvars.iv.next49.i.3, %.preheader36.i ] ; 5 uses
  %niter136 = phi i64 [ 0, %.preheader36.i.preheader.new ], [ %niter136.next.3, %.preheader36.i ]
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 6
  %i.qk = load i8, ptr %i.qj, align 2, !tbaa !71
  %i.ql = zext i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 7
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !73
  %i.qp = zext i8 %i.qo to i64
  store i64 %i.qp, ptr %i.qm, align 8, !tbaa !15
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 14
  %i.qs = load i8, ptr %i.qr, align 2, !tbaa !71
  %i.qt = zext i8 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 15
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !73
  %i.qx = zext i8 %i.qw to i64
  store i64 %i.qx, ptr %i.qu, align 8, !tbaa !15
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 22
  %i.ra = load i8, ptr %i.qz, align 2, !tbaa !71
  %i.rb = zext i8 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 23
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !73
  %i.rf = zext i8 %i.re to i64
  store i64 %i.rf, ptr %i.rc, align 8, !tbaa !15
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 30
  %i.ri = load i8, ptr %i.rh, align 2, !tbaa !71
  %i.rj = zext i8 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 31
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !73
  %i.rn = zext i8 %i.rm to i64
  store i64 %i.rn, ptr %i.rk, align 8, !tbaa !15
  %indvars.iv.next49.i.3 = add nuw nsw i64 %indvars.iv48.i, 4 ; 2 uses
  %niter136.next.3 = add i64 %niter136, 4         ; 2 uses
  %niter136.ncmp.3 = icmp eq i64 %niter136.next.3, %unroll_iter135
  br i1 %niter136.ncmp.3, label %.preheader.i44.preheader.unr-lcssa, label %.preheader36.i, !llvm.loop !65

.preheader.i44.preheader.unr-lcssa:               ; preds = %.preheader36.i
  %lcmp.mod133.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod133.not, label %.preheader.i44.preheader, label %.preheader36.i.epil.preheader

.preheader36.i.epil.preheader:                    ; preds = %.preheader.i44.preheader.unr-lcssa, %.preheader36.i.preheader
  %indvars.iv48.i.epil.init = phi i64 [ 0, %.preheader36.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader.i44.preheader.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %.preheader36.i.epil

.preheader36.i.epil:                              ; preds = %.preheader36.i.epil, %.preheader36.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader36.i.epil ], [ %indvars.iv48.i.epil.init, %.preheader36.i.epil.preheader ] ; 2 uses
  %epil.iter132 = phi i64 [ %epil.iter132.next, %.preheader36.i.epil ], [ 0, %.preheader36.i.epil.preheader ]
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i.epil ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 6
  %i.rq = load i8, ptr %i.rp, align 2, !tbaa !71
  %i.rr = zext i8 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 7
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !73
  %i.rv = zext i8 %i.ru to i64
  store i64 %i.rv, ptr %i.rs, align 8, !tbaa !15
  %indvars.iv.next49.i.epil = add nuw nsw i64 %indvars.iv48.i.epil, 1
  %epil.iter132.next = add i64 %epil.iter132, 1   ; 2 uses
  %epil.iter132.cmp.not = icmp eq i64 %epil.iter132.next, %xtraiter131
  br i1 %epil.iter132.cmp.not, label %.preheader.i44.preheader, label %.preheader36.i.epil, !llvm.loop !66

.preheader.i44.preheader:                         ; preds = %.preheader36.i.epil, %.preheader.i44.preheader.unr-lcssa
  br label %.preheader.i44

.preheader.i44:                                   ; preds = %.preheader.i44.preheader, %HUF_setValue.exit.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %HUF_setValue.exit.i ], [ 0, %.preheader.i44.preheader ] ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv53.i ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !15 ; 2 uses
  %i.ry = and i64 %i.rx, 255                      ; 3 uses
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ry ; 2 uses
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !19 ; 2 uses
  %i.sb = add i16 %i.sa, 1
  store i16 %i.sb, ptr %i.rz, align 2, !tbaa !19
  %.not.i.i = icmp eq i64 %i.ry, 0
  br i1 %.not.i.i, label %HUF_setValue.exit.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i44
  %i.sc = zext i16 %i.sa to i64
  %i.sd = sub nuw nsw i64 64, %i.ry
  %i.se = shl i64 %i.sc, %i.sd
  %i.sf = or i64 %i.se, %i.rx
  store i64 %i.sf, ptr %i.rw, align 8, !tbaa !15
  br label %HUF_setValue.exit.i

HUF_setValue.exit.i:                              ; preds = %bb.y, %.preheader.i44
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i
  br i1 %exitcond57.not.i, label %HUF_buildCTableFromTree.exit, label %.preheader.i44, !llvm.loop !67

HUF_buildCTableFromTree.exit:                     ; preds = %HUF_setValue.exit.i
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 6, i1 false)
  %i.sg = trunc nuw i32 %2 to i8
  store i8 %.095.i, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.sg, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.sh = zext nneg i32 %.095.i.a to i64
  br label %bb.z

bb.z:                                             ; preds = %HUF_setMaxHeight.exit, %bb.b, %bb.a, %HUF_buildCTableFromTree.exit
  %.0 = phi i64 [ %i.sh, %HUF_buildCTableFromTree.exit ], [ -66, %bb.a ], [ -46, %bb.b ], [ -1, %HUF_setMaxHeight.exit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 0, 2305843009213693952) i64 @HUF_estimateCompressedSize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10 = icmp slt i32 %2, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %2, 3
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi14 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <2 x i64>, ptr %i.c, align 8, !tbaa !15
  %wide.load15 = load <2 x i64>, ptr %i.d, align 8, !tbaa !15
  %i.e = and <2 x i64> %wide.load, splat (i64 255)
  %i.f = and <2 x i64> %wide.load15, splat (i64 255)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load16 = load <2 x i32>, ptr %i.g, align 4, !tbaa !17
  %wide.load17 = load <2 x i32>, ptr %i.h, align 4, !tbaa !17
  %i.i = zext <2 x i32> %wide.load16 to <2 x i64>
  %i.j = zext <2 x i32> %wide.load17 to <2 x i64>
  %i.k = mul nuw nsw <2 x i64> %i.e, %i.i
  %i.l = mul nuw nsw <2 x i64> %i.f, %i.j
  %i.m = add <2 x i64> %i.k, %vec.phi             ; 2 uses
  %i.n = add <2 x i64> %i.l, %vec.phi14           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0911.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 3 uses
  %.0911 = phi i64 [ %i.x, %.lr.ph ], [ %.0911.ph, %.lr.ph.preheader18 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  %i.s = and i64 %i.r, 255
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.s, %i.v
  %i.x = add i64 %i.w, %.0911                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !75

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.p, %middle.block ], [ %i.x, %.lr.ph ]
  %i.y = lshr i64 %.lcssa, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  ret i64 %.09.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @HUF_validateCTable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = and i32 %i.b, 255
  %i.e = icmp ult i32 %i.d, %2
  br i1 %i.e, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %2, 3
  br i1 %min.iters.check, label %.preheader.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi19 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <2 x i32>, ptr %i.g, align 4, !tbaa !17
  %wide.load20 = load <2 x i32>, ptr %i.h, align 4, !tbaa !17
  %i.i = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.j = icmp ne <2 x i32> %wide.load20, zeroinitializer
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.k, align 8, !tbaa !15
  %wide.load22 = load <2 x i64>, ptr %i.l, align 8, !tbaa !15
  %i.m = and <2 x i64> %wide.load21, splat (i64 255)
  %i.n = and <2 x i64> %wide.load22, splat (i64 255)
  %i.o = icmp eq <2 x i64> %i.m, zeroinitializer
  %i.p = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.q = and <2 x i1> %i.i, %i.o
  %i.r = and <2 x i1> %i.j, %i.p
  %i.s = zext <2 x i1> %i.q to <2 x i32>
  %i.t = zext <2 x i1> %i.r to <2 x i32>
  %i.u = or <2 x i32> %vec.phi, %i.s              ; 2 uses
  %i.v = or <2 x i32> %vec.phi19, %i.t            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader23

.preheader.preheader23:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.01216.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.x, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader23, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader23 ] ; 3 uses
  %.01216 = phi i32 [ %i.ah, %.preheader ], [ %.01216.ph, %.preheader.preheader23 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = and i64 %i.ac, 255
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = and i1 %i.aa, %i.ae
  %i.ag = zext i1 %i.af to i32
  %i.ah = or i32 %.01216, %i.ag                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !77

.loopexit:                                        ; preds = %.preheader, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %i.ah, %.preheader ]
  %i.ai = xor i32 %.lcssa, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.013 = phi i32 [ %i.ai, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @HUF_compressBound(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %0, 8
  %i.b = add i64 %0, 137
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUF_compress1X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr nofree noundef readonly %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
