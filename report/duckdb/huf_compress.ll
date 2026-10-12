Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm:bb.a
  %i.am = sub nuw nsw i32 189, %i.al
  %i.an = select i1 %i.ak, i32 %i.aj, i32 %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !67
  %i.ar = add i16 %i.aq, 1
  store i16 %i.ar, ptr %i.ap, align 2, !tbaa !67
  br label %.preheader49.preheader.i

.preheader49.preheader.i:                         ; preds = %.preheader49.preheader.i.unr-lcssa, %.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4860
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !67
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %.preheader49.i.3, %.preheader49.preheader.i
  %i.as = phi i16 [ %.pre.i, %.preheader49.preheader.i ], [ %i.bj, %.preheader49.i.3 ]
  %indvars.iv55.i = phi i64 [ 191, %.preheader49.preheader.i ], [ %indvars.iv.next56.i.3, %.preheader49.i.3 ] ; 4 uses
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !67
  %i.aw = add i16 %i.av, %i.as                    ; 3 uses
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.at, i64 -2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !68
  %i.ay = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !67
  %i.bb = add i16 %i.ba, %i.aw                    ; 3 uses
  store i16 %i.bb, ptr %i.az, align 2, !tbaa !67
  %i.bc = getelementptr i8, ptr %i.ay, i64 -6
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !68
  %indvars.iv.next56.i.2 = add nsw i64 %indvars.iv55.i, -3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.2 ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !67
  %i.bf = add i16 %i.be, %i.bb                    ; 3 uses
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !68
  %.not46.i.2 = icmp eq i64 %indvars.iv.next56.i.2, 0
  br i1 %.not46.i.2, label %.preheader48.i.preheader, label %.preheader49.i.3

.preheader49.i.3:                                 ; preds = %.preheader49.i
  %indvars.iv.next56.i.3 = add nsw i64 %indvars.iv55.i, -4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.3 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !67
  %i.bj = add i16 %i.bi, %i.bf                    ; 3 uses
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !68
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
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8  ; 4 uses
  %i.bo = icmp ult i32 %i.bn, 165
  %i.bp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bn, i1 true)
  %i.bq = sub nuw nsw i32 189, %i.bp
  %i.br = select i1 %i.bo, i32 %i.bn, i32 %i.bq
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !68 ; 2 uses
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !68
  %i.bx = zext i16 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx ; 2 uses
  store i32 %i.bn, ptr %i.by, align 4, !tbaa !19
  %i.bz = trunc i64 %indvars.iv58.i to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !69
  %indvars.iv.next59.i = or disjoint i64 %indvars.iv58.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next59.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 4 uses
  %i.cd = icmp ult i32 %i.cc, 165
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.cf = sub nuw nsw i32 189, %i.ce
  %i.cg = select i1 %i.cd, i32 %i.cc, i32 %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 6 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !68 ; 2 uses
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !68
  %i.cm = zext i16 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cm ; 2 uses
  store i32 %i.cc, ptr %i.cn, align 4, !tbaa !19
  %i.co = trunc i64 %indvars.iv.next59.i to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  store i8 %i.co, ptr %i.cp, align 2, !tbaa !69
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %niter105.next.1 = add i64 %niter105, 2         ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %.preheader48.i, !llvm.loop !42

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader48.i
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.preheader.i.preheader, label %.preheader48.i.epil.preheader

.preheader48.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %.preheader48.i.preheader ], [ %indvars.iv.next59.i.1, %.preheader.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8  ; 4 uses
  %i.cs = icmp ult i32 %i.cr, 165
  %i.ct = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.cu = sub nuw nsw i32 189, %i.ct
  %i.cv = select i1 %i.cs, i32 %i.cr, i32 %i.cu
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !68 ; 2 uses
  %i.da = add i16 %i.cz, 1
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !68
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.db ; 2 uses
  store i32 %i.cr, ptr %i.dc, align 4, !tbaa !19
  %i.dd = trunc i64 %indvars.iv58.i.epil.init to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !69
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.epil.preheader
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %bb.f ], [ 165, %.preheader.i.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv63.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !68
  %i.di = zext i16 %i.dh to i32
  %i.dj = load i16, ptr %i.df, align 2, !tbaa !67 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = sub nsw i32 %i.di, %i.dk                ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.dn = zext i16 %i.dj to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dn
  %i.dp = add nsw i32 %i.dl, -1
  tail call fastcc void @_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii(ptr noundef nonnull %i.do, i32 noundef 0, i32 noundef %i.dp)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.i
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 191
  br i1 %exitcond66.not.i, label %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit, label %.preheader.i, !llvm.loop !43

_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit: ; preds = %bb.f
  %i.dq = zext nneg i32 %2 to i64
  %i.dr = add nuw nsw i32 %2, 254
  %i.ds = add nuw nsw i32 %2, 255
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ %i.ds, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 3 uses
  %indvars.iv120.i = phi i32 [ %indvars.iv.next121.i, %bb.g ], [ %i.l, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 3 uses
  %indvars.iv112.i = phi i32 [ %indvars.iv.next113.i, %bb.g ], [ %i.dr, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 2 uses
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i25, %bb.g ], [ %i.dq, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 11 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !19 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %indvars.iv.next.i25 = add nsw i64 %indvars.iv.i24, -1
  %indvars.iv.next113.i = add i32 %indvars.iv112.i, -1
  %indvars.iv.next121.i = add nsw i32 %indvars.iv120.i, -1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %i.dv, label %bb.g, label %bb.h, !llvm.loop !44

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24 ; 4 uses
  %i.dx = icmp eq i32 %3, 0
  %spec.store.select = select i1 %i.dx, i32 11, i32 %3 ; 15 uses
  %i.dy = trunc nsw i64 %indvars.iv.i24 to i32    ; 3 uses
  %i.dz = add nsw i32 %i.dy, 255                  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dw, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !19
  %i.ec = add i32 %i.eb, %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 2056
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !19
  %i.ee = getelementptr i8, ptr %i.dw, i64 -4
  store i16 256, ptr %i.ee, align 4, !tbaa !70
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i16 256, ptr %i.ef, align 4, !tbaa !70
  %i.eg = add nsw i32 %i.dy, -2
  %.not88.i = icmp slt i64 %indvars.iv.i24, 2
  br i1 %.not88.i, label %.preheader.i28, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.eh = tail call i32 @llvm.umax.i32(i32 %indvars.iv, i32 257)
  %i.ei = zext i32 %i.eh to i64                   ; 3 uses
  %xtraiter106 = and i64 %i.ei, 7                 ; 3 uses
  %6 = icmp ult i32 %indvars.iv, 264
  br i1 %6, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.ej = and i64 %i.ei, 4294967288
  %i.ek = add nsw i64 %i.ej, -264
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv106.i = phi i64 [ 257, %.lr.ph.preheader.i.new ], [ %indvars.iv.next107.i.7, %.lr.ph.i ] ; 9 uses
  %niter110 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter110.next.7, %.lr.ph.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  store i32 1073741824, ptr %i.el, align 4, !tbaa !19
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 1073741824, ptr %i.en, align 4, !tbaa !19
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i32 1073741824, ptr %i.ep, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i32 1073741824, ptr %i.er, align 4, !tbaa !19
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i32 1073741824, ptr %i.et, align 4, !tbaa !19
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i32 1073741824, ptr %i.ev, align 4, !tbaa !19
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  store i32 1073741824, ptr %i.ex, align 4, !tbaa !19
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  store i32 1073741824, ptr %i.ez, align 4, !tbaa !19
  %indvars.iv.next107.i.7 = add nuw nsw i64 %indvars.iv106.i, 8 ; 2 uses
  %niter110.next.7 = add i64 %niter110, 8
  %niter110.ncmp.7 = icmp eq i64 %niter110, %i.ek
  br i1 %niter110.ncmp.7, label %.lr.ph95.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !45

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
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i.epil
  store i32 1073741824, ptr %i.fa, align 4, !tbaa !19
  %indvars.iv.next107.i.epil = add nuw nsw i64 %indvars.iv106.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %.lr.ph95.preheader.i, label %.lr.ph.i.epil, !llvm.loop !46

.lr.ph95.preheader.i:                             ; preds = %.lr.ph.i.epil, %.lr.ph95.preheader.i.unr-lcssa
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !19
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.lr.ph95.i, %.lr.ph95.preheader.i
  %indvars.iv109.i = phi i64 [ 257, %.lr.ph95.preheader.i ], [ %indvars.iv.next110.i, %.lr.ph95.i ] ; 4 uses
  %.07492.i = phi i32 [ 256, %.lr.ph95.preheader.i ], [ %.276.i, %.lr.ph95.i ] ; 3 uses
  %.07791.i = phi i32 [ %i.eg, %.lr.ph95.preheader.i ], [ %.279.i, %.lr.ph95.i ] ; 3 uses
  %i.fb = sext i32 %.07791.i to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !19
  %i.fe = sext i32 %.07492.i to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !19
  %i.fh = icmp ult i32 %i.fd, %i.fg               ; 3 uses
  %i.fi = sext i1 %i.fh to i32
  %.178.i = add nsw i32 %.07791.i, %i.fi          ; 3 uses
  %not..i = xor i1 %i.fh, true
  %i.fj = zext i1 %not..i to i32
  %.175.i = add nsw i32 %.07492.i, %i.fj          ; 3 uses
  %i.fk = select i1 %i.fh, i32 %.07791.i, i32 %.07492.i
  %i.fl = sext i32 %.178.i to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !19
  %i.fo = sext i32 %.175.i to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !19
  %i.fr = icmp ult i32 %i.fn, %i.fq               ; 3 uses
  %i.fs = sext i1 %i.fr to i32
  %.279.i = add nsw i32 %.178.i, %i.fs
  %not.85.i = xor i1 %i.fr, true
  %i.ft = zext i1 %not.85.i to i32
  %.276.i = add nsw i32 %.175.i, %i.ft
  %i.fu = select i1 %i.fr, i32 %.178.i, i32 %.175.i
  %i.fv = sext i32 %i.fk to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !19
  %i.fy = sext i32 %i.fu to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !19
  %i.gb = add i32 %i.ga, %i.fx
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv109.i
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !19
  %i.gd = trunc i64 %indvars.iv109.i to i16       ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i16 %i.gd, ptr %i.ge, align 4, !tbaa !70
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i16 %i.gd, ptr %i.gf, align 4, !tbaa !70
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1
  %exitcond62.not = icmp eq i64 %indvars.iv109.i, %i.ei
  br i1 %exitcond62.not, label %.lr.ph99.preheader.i, label %.lr.ph95.i, !llvm.loop !47

.lr.ph99.preheader.i:                             ; preds = %.lr.ph95.i
  %7 = zext nneg i32 %i.dz to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %7
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 7
  store i8 0, ptr %i.gh, align 1, !tbaa !71
  %i.gi = zext i32 %indvars.iv112.i to i64
  br label %.lr.ph99.i

.preheader.i28:                                   ; preds = %bb.h
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !19
  %.pre.i29 = sext i32 %i.dz to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre.i29
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 7
  store i8 0, ptr %i.gk, align 1, !tbaa !71
  %.not84100.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not84100.i, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit, label %.lr.ph102.preheader.i

.lr.ph102.preheader.i:                            ; preds = %.lr.ph99.i, %.preheader.i28
  %wide.trip.count.i26 = zext i32 %indvars.iv120.i to i64 ; 2 uses
  %xtraiter111 = and i64 %wide.trip.count.i26, 3  ; 3 uses
  %i.gl = add i32 %indvars.iv120.i, -1
  %i.gm = icmp ult i32 %i.gl, 3
  br i1 %i.gm, label %.lr.ph102.i.epil.preheader, label %.lr.ph102.preheader.i.new

.lr.ph102.preheader.i.new:                        ; preds = %.lr.ph102.preheader.i
  %unroll_iter115 = and i64 %wide.trip.count.i26, 4294967292
  br label %.lr.ph102.i

.lr.ph99.i:                                       ; preds = %.lr.ph99.i, %.lr.ph99.preheader.i
  %indvars.iv114.i = phi i64 [ %i.gi, %.lr.ph99.preheader.i ], [ %indvars.iv.next115.i, %.lr.ph99.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv114.i ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i16, ptr %i.go, align 4, !tbaa !70
  %i.gq = zext i16 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 7
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !71
  %i.gu = add i8 %i.gt, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 7
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !71
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1
  %i.gw = icmp samesign ugt i64 %indvars.iv114.i, 256
  br i1 %i.gw, label %.lr.ph99.i, label %.lr.ph102.preheader.i, !llvm.loop !48

.lr.ph102.i:                                      ; preds = %.lr.ph102.i, %.lr.ph102.preheader.i.new
  %indvars.iv117.i = phi i64 [ 0, %.lr.ph102.preheader.i.new ], [ %indvars.iv.next118.i.3, %.lr.ph102.i ] ; 5 uses
  %niter116 = phi i64 [ 0, %.lr.ph102.preheader.i.new ], [ %niter116.next.3, %.lr.ph102.i ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i16, ptr %i.gy, align 4, !tbaa !70
  %i.ha = zext i16 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 7
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !71
  %i.he = add i8 %i.hd, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 7
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !71
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hi = load i16, ptr %i.hh, align 4, !tbaa !70
  %i.hj = zext i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 7
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !71
  %i.hn = add i8 %i.hm, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 15
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !71
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  %i.hr = load i16, ptr %i.hq, align 4, !tbaa !70
  %i.hs = zext i16 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 7
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !71
  %i.hw = add i8 %i.hv, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 23
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !71
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.ia = load i16, ptr %i.hz, align 4, !tbaa !70
  %i.ib = zext i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 7
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !71
  %i.if = add i8 %i.ie, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 31
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !71
  %indvars.iv.next118.i.3 = add nuw nsw i64 %indvars.iv117.i, 4 ; 2 uses
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa, label %.lr.ph102.i, !llvm.loop !49

_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph102.i
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit, label %.lr.ph102.i.epil.preheader

.lr.ph102.i.epil.preheader:                       ; preds = %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa, %.lr.ph102.preheader.i
  %indvars.iv117.i.epil.init = phi i64 [ 0, %.lr.ph102.preheader.i ], [ %indvars.iv.next118.i.3, %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph102.i.epil

.lr.ph102.i.epil:                                 ; preds = %.lr.ph102.i.epil, %.lr.ph102.i.epil.preheader
  %indvars.iv117.i.epil = phi i64 [ %indvars.iv117.i.epil.init, %.lr.ph102.i.epil.preheader ], [ %indvars.iv.next118.i.epil, %.lr.ph102.i.epil ] ; 2 uses
  %epil.iter112 = phi i64 [ 0, %.lr.ph102.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph102.i.epil ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i.epil ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i16, ptr %i.ii, align 4, !tbaa !70
  %i.ik = zext i16 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 7
  %i.in = load i8, ptr %i.im, align 1, !tbaa !71
  %i.io = add i8 %i.in, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 7
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !71
  %indvars.iv.next118.i.epil = add nuw nsw i64 %indvars.iv117.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit, label %.lr.ph102.i.epil, !llvm.loop !50

_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit: ; preds = %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa, %.lr.ph102.i.epil, %.preheader.i28
  %i.iq = and i64 %indvars.iv.i24, 4294967295
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 7
  %i.it = load i8, ptr %i.is, align 1, !tbaa !71
  %i.iu = zext i8 %i.it to i32                    ; 4 uses
  %.not.i30 = icmp ult i32 %spec.store.select, %i.iu
  br i1 %.not.i30, label %bb.i, label %_ZN11duckdb_zstdL16HUF_setMaxHeightEPNS_9nodeElt_sEjj.exit

bb.i:                                             ; preds = %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit
  %i.iv = sub nuw nsw i32 %i.iu, %spec.store.select ; 2 uses
  %i.iw = shl nuw i32 1, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.dw, i64 7 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !71
  %i.iz = zext i8 %i.iy to i32                    ; 2 uses
  %i.ja = icmp samesign ult i32 %spec.store.select, %i.iz
  br i1 %i.ja, label %.lr.ph.i34, label %.preheader113.i

.lr.ph.i34:                                       ; preds = %bb.i
  %i.jb = trunc nuw i32 %spec.store.select to i8
  br label %bb.j

.preheader113.loopexit.i:                         ; preds = %bb.j
  %i.jc = trunc nsw i64 %indvars.iv.next.i36 to i32
  br label %.preheader113.i

.preheader113.i:                                  ; preds = %.preheader113.loopexit.i, %bb.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i36, %.preheader113.loopexit.i ], [ %indvars.iv.i24, %bb.i ]
  %.090.lcssa.i = phi i32 [ %i.jh, %.preheader113.loopexit.i ], [ 0, %bb.i ]
  %.088.lcssa.i = phi i32 [ %i.jc, %.preheader113.loopexit.i ], [ %i.dy, %bb.i ]
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ %indvars.iv.i24, %.lr.ph.i34 ], [ %indvars.iv.next.i36, %bb.j ] ; 2 uses
  %i.jd = phi i32 [ %i.iz, %.lr.ph.i34 ], [ %i.jl, %bb.j ]
  %i.je = phi ptr [ %i.ix, %.lr.ph.i34 ], [ %i.jj, %bb.j ]
  %.090115.i = phi i32 [ 0, %.lr.ph.i34 ], [ %i.jh, %bb.j ]
  %i.jf = sub nsw i32 %i.iu, %i.jd
  %.neg108.i = shl nsw i32 -1, %i.jf
  %i.jg = add i32 %.090115.i, %i.iw
  %i.jh = add i32 %i.jg, %.neg108.i               ; 2 uses
  store i8 %i.jb, ptr %i.je, align 1, !tbaa !71
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i35, -1 ; 3 uses
  %i.ji = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv.i35
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 7 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !71
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %i.jm = icmp samesign ult i32 %spec.store.select, %i.jl
  br i1 %i.jm, label %bb.j, label %.preheader113.loopexit.i, !llvm.loop !51

bb.k:                                             ; preds = %bb.k, %.preheader113.i
  %indvars.iv155.i = phi i32 [ %indvars.iv.next156.i, %bb.k ], [ %.088.lcssa.i, %.preheader113.i ] ; 4 uses
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %bb.k ], [ %.pre-phi.i, %.preheader113.i ] ; 4 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv152.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 7
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !71
  %i.jq = zext i8 %i.jp to i32
  %i.jr = icmp eq i32 %spec.store.select, %i.jq
  %indvars.iv.next153.i = add nsw i64 %indvars.iv152.i, -1
  %indvars.iv.next156.i = add i32 %indvars.iv155.i, -1
  br i1 %i.jr, label %bb.k, label %bb.l, !llvm.loop !52

bb.l:                                             ; preds = %bb.k
  %i.js = ashr i32 %.090.lcssa.i, %i.iv           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, i8 -16, i64 56, i1 false)
  %i.jt = icmp sgt i64 %indvars.iv152.i, -1
  br i1 %i.jt, label %.lr.ph120.preheader.i, label %.preheader112.i

.lr.ph120.preheader.i:                            ; preds = %bb.l
  %i.ju = zext i32 %indvars.iv155.i to i64        ; 4 uses
  %i.jv = and i64 %i.ju, 1
  %lcmp.mod118.not.not = icmp eq i64 %i.jv, 0
  br i1 %lcmp.mod118.not.not, label %.lr.ph120.i.prol, label %.lr.ph120.i.prol.loopexit

.lr.ph120.i.prol:                                 ; preds = %.lr.ph120.preheader.i
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 7
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !71
  %i.jz = zext i8 %i.jy to i32                    ; 3 uses
  %.not107.i.prol = icmp ugt i32 %spec.store.select, %i.jz
  br i1 %.not107.i.prol, label %bb.m, label %.lr.ph120.i.prol.loopexit.unr-lcssa

end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.bmz = getelementptr i8, ptr %i.bmy, i64 -9
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !9
  %i.bnb = zext i8 %i.bna to i64
  %i.bnc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bnb
  %i.bnd = load i64, ptr %i.bnc, align 8, !tbaa !14 ; 3 uses
  %i.bne = and i64 %i.bnd, 255
  %i.bnf = lshr i64 %i.bmw, %i.bne
  %i.bng = or i64 %i.bnf, %i.bnd                  ; 2 uses
  %i.bnh = add i64 %i.bnd, %i.bmx                 ; 2 uses
  %i.bni = and i64 %i.bnh, 255                    ; 2 uses
  %i.bnj = sub nsw i64 64, %i.bni
  %i.bnk = lshr i64 %i.bng, %i.bnj
  store i64 %i.bnk, ptr %.sroa.458.6721, align 1, !tbaa !14
  %i.bnl = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bnm = getelementptr i8, ptr %i.bnl, i64 -10
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !9
  %i.bno = zext i8 %i.bnn to i64
  %i.bnp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bno
  %i.bnq = load i64, ptr %i.bnp, align 8, !tbaa !14 ; 2 uses
  %i.bnr = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bns = getelementptr i8, ptr %i.bnr, i64 -11
  %i.bnt = load i8, ptr %i.bns, align 1, !tbaa !9
  %i.bnu = zext i8 %i.bnt to i64
  %i.bnv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bnu
  %i.bnw = load i64, ptr %i.bnv, align 8, !tbaa !14 ; 3 uses
  %i.bnx = and i64 %i.bnw, 255
  %i.bny = lshr i64 %i.bnq, %i.bnx
  %i.bnz = or i64 %i.bny, %i.bnw
  %i.boa = add i64 %i.bnw, %i.bnq
  %i.bob = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.boc = getelementptr i8, ptr %i.bob, i64 -12
  %i.bod = load i8, ptr %i.boc, align 1, !tbaa !9
  %i.boe = zext i8 %i.bod to i64
  %i.bof = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.boe
  %i.bog = load i64, ptr %i.bof, align 8, !tbaa !14 ; 3 uses
  %i.boh = and i64 %i.bog, 255
  %i.boi = lshr i64 %i.bnz, %i.boh
  %i.boj = or i64 %i.boi, %i.bog
  %i.bok = add i64 %i.bog, %i.boa
  %i.bol = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bom = getelementptr i8, ptr %i.bol, i64 -13
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !9
  %i.boo = zext i8 %i.bon to i64
  %i.bop = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.boo
  %i.boq = load i64, ptr %i.bop, align 8, !tbaa !14 ; 3 uses
  %i.bor = and i64 %i.boq, 255
  %i.bos = lshr i64 %i.boj, %i.bor
  %i.bot = or i64 %i.bos, %i.boq
  %i.bou = add i64 %i.boq, %i.bok
  %i.bov = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bow = getelementptr i8, ptr %i.bov, i64 -14
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !9
  %i.boy = zext i8 %i.box to i64
  %i.boz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.boy
  %i.bpa = load i64, ptr %i.boz, align 8, !tbaa !14 ; 3 uses
  %i.bpb = and i64 %i.bpa, 255
  %i.bpc = lshr i64 %i.bot, %i.bpb
  %i.bpd = or i64 %i.bpc, %i.bpa
  %i.bpe = add i64 %i.bpa, %i.bou
  %i.bpf = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bpg = getelementptr i8, ptr %i.bpf, i64 -15
  %i.bph = load i8, ptr %i.bpg, align 1, !tbaa !9
  %i.bpi = zext i8 %i.bph to i64
  %i.bpj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bpi
  %i.bpk = load i64, ptr %i.bpj, align 8, !tbaa !14 ; 3 uses
  %i.bpl = and i64 %i.bpk, 255
  %i.bpm = lshr i64 %i.bpd, %i.bpl
  %i.bpn = or i64 %i.bpm, %i.bpk
  %i.bpo = add i64 %i.bpk, %i.bpe
  %i.bpp = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bpq = getelementptr i8, ptr %i.bpp, i64 -16
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !9
  %i.bps = zext i8 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bps
  %i.bpu = load i64, ptr %i.bpt, align 8, !tbaa !14 ; 3 uses
  %i.bpv = and i64 %i.bpu, 255
  %i.bpw = lshr i64 %i.bpn, %i.bpv
  %i.bpx = or i64 %i.bpw, %i.bpu
  %i.bpy = add i64 %i.bpu, %i.bpo
  %i.bpz = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 -17
  %i.bqb = load i8, ptr %i.bqa, align 1, !tbaa !9
  %i.bqc = zext i8 %i.bqb to i64
  %i.bqd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bqc
  %i.bqe = load i64, ptr %i.bqd, align 8, !tbaa !14 ; 3 uses
  %i.bqf = and i64 %i.bqe, 255
  %i.bqg = lshr i64 %i.bpx, %i.bqf
  %i.bqh = or i64 %i.bqg, %i.bqe
  %i.bqi = add i64 %i.bqe, %i.bpy
  %i.bqj = lshr i64 %i.bni, 3
  %i.bqk = and i64 %i.bnh, 7
  %i.bql = getelementptr inbounds nuw i8, ptr %.sroa.458.6721, i64 %i.bqj ; 2 uses
  %i.bqm = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bqn = getelementptr i8, ptr %i.bqm, i64 -18
  %i.bqo = load i8, ptr %i.bqn, align 1, !tbaa !9
  %i.bqp = zext i8 %i.bqo to i64
  %i.bqq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bqp
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !14 ; 3 uses
  %i.bqs = and i64 %i.bqr, 255
  %i.bqt = lshr i64 %i.bqh, %i.bqs
  %i.bqu = add i64 %i.bqr, %i.bqi                 ; 2 uses
  %i.bqv = and i64 %i.bqu, 255
  %i.bqw = lshr i64 %i.bng, %i.bqv
  %i.bqx = or i64 %i.bqt, %i.bqw
  %i.bqy = or i64 %i.bqx, %i.bqr                  ; 3 uses
  %i.bqz = add i64 %i.bqu, %i.bqk                 ; 2 uses
  %i.bra = and i64 %i.bqz, 255                    ; 2 uses
  %i.brb = lshr i64 %i.bra, 3
  %i.brc = sub nsw i64 64, %i.bra
  %i.brd = lshr i64 %i.bqy, %i.brc
  %i.bre = and i64 %i.bqz, 7                      ; 2 uses
  store i64 %i.brd, ptr %i.bql, align 1, !tbaa !14
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bql, i64 %i.brb ; 2 uses
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, -18
  %i.brg = icmp samesign ugt i64 %indvars.iv919, 18
  br i1 %i.brg, label %.preheader583, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit, !llvm.loop !1

_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit: ; preds = %.preheader603, %.preheader599, %.preheader595, %.preheader591, %.preheader587, %.preheader583, %.preheader, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j, %bb.ad, %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit68
  %.sroa.0.0 = phi i64 [ %i.bqy, %.preheader583 ], [ %i.pd, %.preheader587 ], [ %i.xn, %.preheader591 ], [ %i.ahe, %.preheader595 ], [ %i.arz, %.preheader599 ], [ %i.gp, %.preheader ], [ %.sroa.0.3, %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit68 ], [ %.sroa.0.9, %bb.ad ], [ %.sroa.0.15, %bb.j ], [ %.sroa.0.21, %bb.n ], [ %.sroa.0.27, %bb.r ], [ %.sroa.0.33, %bb.v ], [ %.sroa.0.39, %bb.z ], [ %i.bdy, %.preheader603 ]
  %.sroa.264.0 = phi i64 [ %i.bre, %.preheader583 ], [ %i.pj, %.preheader587 ], [ %i.xt, %.preheader591 ], [ %i.ahk, %.preheader595 ], [ %i.asf, %.preheader599 ], [ %i.gv, %.preheader ], [ %.sroa.264.3, %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit68 ], [ %.sroa.264.9, %bb.ad ], [ %.sroa.264.15, %bb.j ], [ %.sroa.264.21, %bb.n ], [ %.sroa.264.27, %bb.r ], [ %.sroa.264.33, %bb.v ], [ %.sroa.264.39, %bb.z ], [ %i.bee, %.preheader603 ]
  %.sroa.458.0 = phi ptr [ %i.brf, %.preheader583 ], [ %i.pk, %.preheader587 ], [ %i.xu, %.preheader591 ], [ %i.ahl, %.preheader595 ], [ %i.asg, %.preheader599 ], [ %spec.select580, %.preheader ], [ %.sroa.458.2, %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit68 ], [ %.sroa.458.5, %bb.ad ], [ %.sroa.458.8, %bb.j ], [ %.sroa.458.11, %bb.n ], [ %.sroa.458.14, %bb.r ], [ %.sroa.458.17, %bb.v ], [ %.sroa.458.20, %bb.z ], [ %i.bef, %.preheader603 ] ; 2 uses
  %i.brh = lshr i64 %.sroa.0.0, 1
  %i.bri = or disjoint i64 %i.brh, -9223372036854775808
  %i.brj = add nuw nsw i64 %.sroa.264.0, -9223372036854775807 ; 2 uses
  %i.brk = and i64 %i.brj, 255                    ; 2 uses
  %i.brl = lshr i64 %i.brk, 3
  %i.brm = sub nuw nsw i64 64, %i.brk
  %i.brn = lshr i64 %i.bri, %i.brm
  store i64 %i.brn, ptr %.sroa.458.0, align 1, !tbaa !14
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.458.0, i64 %i.brl ; 2 uses
  %i.brp = icmp ugt ptr %i.bro, %i.e
  %spec.store.select.i = select i1 %i.brp, ptr %i.e, ptr %i.bro ; 2 uses
  %.not.i69 = icmp ult ptr %spec.store.select.i, %i.e
  br i1 %.not.i69, label %bb.ae, label %_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bodyEPvmPKvmPKm.exit

bb.ae:                                            ; preds = %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit
  %i.brq = and i64 %i.brj, 7
  %i.brr = ptrtoint ptr %spec.store.select.i to i64
  %i.brs = ptrtoint ptr %0 to i64
  %i.brt = icmp ne i64 %i.brq, 0
  %i.bru = zext i1 %i.brt to i64
  %i.brv = sub i64 %i.bru, %i.brs
  %i.brw = add i64 %i.brv, %i.brr
  br label %_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bodyEPvmPKvmPKm.exit

_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bodyEPvmPKvmPKm.exit: ; preds = %bb.ae, %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit, %bb.a, %bb.b
  %.1.i = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.brw, %bb.ae ], [ 0, %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit ]
  ret i64 %.1.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_compressCTable_internalEPhS0_S0_PKvmNS_15HUF_nbStreams_eEPKmi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 1, 131073) %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, i32 noundef %7) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i64 @_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi(ptr noundef %1, i64 noundef %i.d, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef i64 @_ZN11duckdb_zstdL35HUF_compress4X_usingCTable_internalEPvmPKvmPKmi(ptr noundef %1, i64 noundef %i.d, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add nsw i64 %4, -1
  %.not27 = icmp ult i64 %i.m, %i.n
  %. = select i1 %.not27, i64 %i.m, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ 0, %bb.e ], [ %i.g, %bb.d ], [ %., %bb.f ]
  ret i64 %.0
}

declare noundef i64 @_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"long", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"short", !6, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSN11duckdb_zstd9nodeElt_sE", !7, i64 0, !16, i64 4, !6, i64 6, !6, i64 7}
!19 = !{!18, !7, i64 0}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !12, !11}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11}
!31 = !{!"branch_weights", i32 4, i32 12}
!32 = !{!26}
!33 = !{!27}
!34 = !{!"branch_weights", i32 8, i32 8}
!35 = distinct !{!35, !10, !11, !12}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10, !12, !11}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !10}
!66 = !{!"_ZTSN11duckdb_zstd7rankPosE", !16, i64 0, !16, i64 2}
!67 = !{!66, !16, i64 0}
!68 = !{!66, !16, i64 2}
!69 = !{!18, !6, i64 6}
!70 = !{!18, !16, i64 4}
!71 = !{!18, !6, i64 7}
!72 = distinct !{!72, !10, !11, !12}
!73 = distinct !{!73, !10, !12, !11}
!74 = distinct !{!74, !10, !11, !12}
!75 = distinct !{!75, !10, !12, !11}
!76 = distinct !{!76, !10, !11, !12}
!77 = distinct !{!77, !10, !12, !11}
!78 = distinct !{!78, !10, !11, !12}
!79 = distinct !{!79, !10, !12, !11}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10, !11, !12}
!82 = distinct !{!82, !10, !12, !11}
!83 = distinct !{!83, !10, !11, !12}
!84 = distinct !{!84, !10, !12, !11}
!85 = distinct !{!85, !10, !11, !12}
!86 = distinct !{!86, !10, !12, !11}
!87 = !{!"_ZTSN11duckdb_zstd10HUF_repeatE", !6, i64 0}
!88 = !{!87, !87, i64 0}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
end_hunk_1
