Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alsdec?download=true
inline.NumInlined: 158
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@decode_block:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !94
  %.not.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i20, label %.loopexit165.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 2) ; 3 uses
  %spec.select.i = add nsw i32 %i.ai, -2
  %i.aj = icmp ult i32 %spec.select.i, %i.d
  br i1 %i.aj, label %.lr.ph171.i, label %.loopexit165.i

.lr.ph171.i:                                      ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = sub nsw i32 2, %i.ai
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = add nsw i64 %i.am, -2
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph171.i
  %indvars.iv219.i = phi i64 [ %i.an, %.lr.ph171.i ], [ %indvars.iv.next220.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv212.i = phi i32 [ %i.al, %.lr.ph171.i ], [ %indvars.iv.next213.i, %._crit_edge.i ] ; 2 uses
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !94 ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv219.i to i32
  %i.aq = sub i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 2) ; 3 uses
  %i.as = add nsw i32 %i.ar, -2
  %i.at = add nsw i32 %i.aq, 3                    ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i21, label %._crit_edge.i

.lr.ph.i21:                                       ; preds = %bb.e
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.aw = zext nneg i32 %i.ar to i64
  %i.ax = add nsw i64 %i.aw, -2
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = add i32 %i.ao, %indvars.iv212.i
  %i.ba = add i32 %i.az, %i.ar
  %i.bb = sext i32 %i.ba to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i21
  %indvars.iv214.i = phi i64 [ %i.bb, %.lr.ph.i21 ], [ %indvars.iv.next215.i, %bb.f ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.ax, %.lr.ph.i21 ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.0126166.i = phi i64 [ 64, %.lr.ph.i21 ], [ %i.bj, %bb.f ]
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv214.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !94
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, %i.be
  %i.bj = add i64 %i.bi, %.0126166.i              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.iv.next215.i = add nsw i64 %indvars.iv214.i, 1
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i, %i.ay
  br i1 %i.bk, label %bb.f, label %._crit_edge.loopexit.i, !llvm.loop !269

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %i.bl = lshr i64 %i.bj, 7
  %i.bm = trunc i64 %i.bl to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %.0126.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.bm, %._crit_edge.loopexit.i ]
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv219.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !94
  %i.bp = add i32 %i.bo, %.0126.lcssa.i
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !94
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %indvars.iv.next213.i = add nsw i32 %indvars.iv212.i, -1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next220.i, %i.y
  br i1 %exitcond.not.i, label %.loopexit165.i, label %bb.e, !llvm.loop !270

.loopexit165.i:                                   ; preds = %._crit_edge.i, %bb.d, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !102
  %.not139.i = icmp eq i32 %i.br, 0
  br i1 %.not139.i, label %.preheader161.i, label %.preheader163.i

.preheader163.i:                                  ; preds = %.loopexit165.i
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.d) ; 2 uses
  %.not204.i = icmp eq i32 %i.bs, 0
  br i1 %.not204.i, label %.loopexit.i, label %.preheader162.preheader.i

.preheader162.preheader.i:                        ; preds = %.preheader163.i
  %wide.trip.count230.i = zext i32 %i.bs to i64   ; 2 uses
  br label %.preheader162.i

.preheader161.i:                                  ; preds = %.loopexit165.i
  %.not206.i = icmp eq i32 %i.r, 0
  br i1 %.not206.i, label %._crit_edge182.i, label %.lr.ph181.preheader.i

.lr.ph181.preheader.i:                            ; preds = %.preheader161.i
  %wide.trip.count235.i = zext i32 %i.r to i64
  br label %.lr.ph181.i

.preheader162.i:                                  ; preds = %parcor_to_lpc.exit.i, %.preheader162.preheader.i
  %indvars.iv227.i = phi i64 [ 0, %.preheader162.preheader.i ], [ %indvars.iv.next228.i, %parcor_to_lpc.exit.i ] ; 10 uses
  %.0125178.i = phi ptr [ %i.x, %.preheader162.preheader.i ], [ %i.fj, %parcor_to_lpc.exit.i ] ; 8 uses
  %.not205.i = icmp eq i64 %indvars.iv227.i, 0
  br i1 %.not205.i, label %parcor_to_lpc.exit.i, label %.lr.ph174.i.preheader

.lr.ph174.i.preheader:                            ; preds = %.preheader162.i
  %xtraiter = and i64 %indvars.iv227.i, 3         ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv227.i, 4
  br i1 %i.bt, label %.lr.ph174.i.epil.preheader, label %.lr.ph174.i.preheader.new

.lr.ph174.i.preheader.new:                        ; preds = %.lr.ph174.i.preheader
  %unroll_iter = and i64 %indvars.iv227.i, 9223372036854775804
  br label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.lr.ph174.i, %.lr.ph174.i.preheader.new
  %indvars.iv222.i = phi i64 [ 0, %.lr.ph174.i.preheader.new ], [ %indvars.iv.next223.i.3, %.lr.ph174.i ] ; 9 uses
  %.1127173.i = phi i64 [ 524288, %.lr.ph174.i.preheader.new ], [ %i.dg, %.lr.ph174.i ]
  %niter = phi i64 [ 0, %.lr.ph174.i.preheader.new ], [ %niter.next.3, %.lr.ph174.i ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !94
  %i.bw = sext i32 %i.bv to i64
  %i.bx = xor i64 %indvars.iv222.i, -1
  %i.by = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !94
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, %i.bw
  %i.cc = add i64 %i.cb, %.1127173.i
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !94
  %i.cg = sext i32 %i.cf to i64
  %i.ch = xor i64 %indvars.iv222.i, -2
  %i.ci = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !94
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, %i.cg
  %i.cm = add i64 %i.cl, %i.cc
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !94
  %i.cq = sext i32 %i.cp to i64
  %i.cr = xor i64 %indvars.iv222.i, -3
  %i.cs = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !94
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, %i.cq
  %i.cw = add i64 %i.cv, %i.cm
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !94
  %i.da = sext i32 %i.cz to i64
  %indvars.iv.next223.i.3 = add nuw nsw i64 %indvars.iv222.i, 4 ; 2 uses
  %i.db = xor i64 %indvars.iv222.i, -4
  %i.dc = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !94
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.da
  %i.dg = add i64 %i.df, %i.cw                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge175.i.unr-lcssa, label %.lr.ph174.i, !llvm.loop !271

._crit_edge175.i.unr-lcssa:                       ; preds = %.lr.ph174.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge175.i, label %.lr.ph174.i.epil.preheader

.lr.ph174.i.epil.preheader:                       ; preds = %._crit_edge175.i.unr-lcssa, %.lr.ph174.i.preheader
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph174.i.preheader ], [ %indvars.iv.next223.i.3, %._crit_edge175.i.unr-lcssa ]
  %.1127173.i.epil.init = phi i64 [ 524288, %.lr.ph174.i.preheader ], [ %i.dg, %._crit_edge175.i.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph174.i.epil

.lr.ph174.i.epil:                                 ; preds = %.lr.ph174.i.epil, %.lr.ph174.i.epil.preheader
  %indvars.iv222.i.epil = phi i64 [ %indvars.iv.next223.i.epil, %.lr.ph174.i.epil ], [ %indvars.iv222.i.epil.init, %.lr.ph174.i.epil.preheader ] ; 3 uses
  %.1127173.i.epil = phi i64 [ %i.dp, %.lr.ph174.i.epil ], [ %.1127173.i.epil.init, %.lr.ph174.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph174.i.epil ], [ 0, %.lr.ph174.i.epil.preheader ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i.epil
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !94
  %i.dj = sext i32 %i.di to i64
  %indvars.iv.next223.i.epil = add nuw nsw i64 %indvars.iv222.i.epil, 1
  %i.dk = xor i64 %indvars.iv222.i.epil, -1
  %i.dl = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !94
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.dn, %i.dj
  %i.dp = add i64 %i.do, %.1127173.i.epil         ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge175.i, label %.lr.ph174.i.epil, !llvm.loop !272

._crit_edge175.i:                                 ; preds = %.lr.ph174.i.epil, %._crit_edge175.i.unr-lcssa
  %.lcssa19 = phi i64 [ %i.dg, %._crit_edge175.i.unr-lcssa ], [ %i.dp, %.lr.ph174.i.epil ]
  %i.dq = lshr i64 %.lcssa19, 20
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load i32, ptr %.0125178.i, align 4, !tbaa !94
  %i.dt = sub i32 %i.ds, %i.dr
  store i32 %i.dt, ptr %.0125178.i, align 4, !tbaa !94
  %i.du = trunc nuw i64 %indvars.iv227.i to i32   ; 2 uses
  %.02930.i.i = add nsw i32 %i.du, -1             ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge175.i
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.dx = zext nneg i32 %.02930.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv35.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next36.i.i, %bb.g ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !94
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !94 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul nsw i64 %i.ec, %i.dz
  %i.ee = add nsw i64 %i.ed, 524288
  %i.ef = lshr i64 %i.ee, 20
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv35.i.i ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !94
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.ej, %i.dz
  %i.el = add nsw i64 %i.ek, 524288
  %i.em = lshr i64 %i.el, 20
  %i.en = trunc i64 %i.em to i32
  %i.eo = add i32 %i.eb, %i.en
  store i32 %i.eo, ptr %i.ea, align 4, !tbaa !94
  %i.ep = load i32, ptr %i.eh, align 4, !tbaa !94
  %i.eq = add i32 %i.ep, %i.eg
  store i32 %i.eq, ptr %i.eh, align 4, !tbaa !94
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.er = icmp slt i64 %indvars.iv.next36.i.i, %indvars.iv.next.i.i
  br i1 %i.er, label %bb.g, label %._crit_edge.loopexit.i.i, !llvm.loop !273

._crit_edge.loopexit.i.i:                         ; preds = %bb.g
  %i.es = trunc nuw nsw i64 %indvars.iv.next36.i.i to i32
  %i.et = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %._crit_edge175.i
  %.0.lcssa.i.i = phi i32 [ 0, %._crit_edge175.i ], [ %i.es, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.029.lcssa.i.i = phi i32 [ %.02930.i.i, %._crit_edge175.i ], [ %i.et, %._crit_edge.loopexit.i.i ]
  %i.eu = icmp eq i32 %.0.lcssa.i.i, %.029.lcssa.i.i
  br i1 %i.eu, label %bb.h, label %parcor_to_lpc.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !94
  %i.ex = sext i32 %i.ew to i64
  %i.ey = sext i32 %.0.lcssa.i.i to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !94 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, %i.ex
  %i.fd = add nsw i64 %i.fc, 524288
  %i.fe = lshr i64 %i.fd, 20
  %i.ff = zext nneg i32 %.0.lcssa.i.i to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ff
  %i.fh = trunc i64 %i.fe to i32
  %i.fi = add i32 %i.fa, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !94
  br label %parcor_to_lpc.exit.i

parcor_to_lpc.exit.i:                             ; preds = %.preheader162.i, %bb.h, %._crit_edge.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.0125178.i, i64 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !94
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv227.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !94
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count230.i
  br i1 %exitcond231.not.i, label %.loopexit.i, label %.preheader162.i, !llvm.loop !274

.lr.ph181.i:                                      ; preds = %parcor_to_lpc.exit158.i, %.lr.ph181.preheader.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph181.preheader.i ], [ %indvars.iv.next233.i, %parcor_to_lpc.exit158.i ] ; 6 uses
  %i.fn = trunc nuw i64 %indvars.iv232.i to i32
  %.02930.i148.i = add i32 %i.fn, -1              ; 3 uses
  %i.fo = icmp sgt i32 %.02930.i148.i, 0
  br i1 %i.fo, label %.lr.ph.i152.i, label %._crit_edge.i149.i

.lr.ph.i152.i:                                    ; preds = %.lr.ph181.i
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv232.i
  %i.fq = zext nneg i32 %.02930.i148.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i152.i
  %indvars.iv35.i153.i = phi i64 [ 0, %.lr.ph.i152.i ], [ %indvars.iv.next36.i155.i, %bb.i ] ; 2 uses
  %indvars.iv.i154.i = phi i64 [ %i.fq, %.lr.ph.i152.i ], [ %indvars.iv.next.i156.i, %bb.i ] ; 2 uses
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !94
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.i154.i ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !94 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fv, %i.fs
  %i.fx = add nsw i64 %i.fw, 524288
  %i.fy = lshr i64 %i.fx, 20
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv35.i153.i ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !94
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul nsw i64 %i.gc, %i.fs
  %i.ge = add nsw i64 %i.gd, 524288
  %i.gf = lshr i64 %i.ge, 20
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = add i32 %i.fu, %i.gg
  store i32 %i.gh, ptr %i.ft, align 4, !tbaa !94
  %i.gi = load i32, ptr %i.ga, align 4, !tbaa !94
  %i.gj = add i32 %i.gi, %i.fz
  store i32 %i.gj, ptr %i.ga, align 4, !tbaa !94
  %indvars.iv.next36.i155.i = add nuw nsw i64 %indvars.iv35.i153.i, 1 ; 3 uses
  %indvars.iv.next.i156.i = add nsw i64 %indvars.iv.i154.i, -1 ; 3 uses
  %i.gk = icmp slt i64 %indvars.iv.next36.i155.i, %indvars.iv.next.i156.i
  br i1 %i.gk, label %bb.i, label %._crit_edge.loopexit.i157.i, !llvm.loop !273

._crit_edge.loopexit.i157.i:                      ; preds = %bb.i
  %i.gl = trunc nuw nsw i64 %indvars.iv.next36.i155.i to i32
  %i.gm = trunc nsw i64 %indvars.iv.next.i156.i to i32
  br label %._crit_edge.i149.i

._crit_edge.i149.i:                               ; preds = %._crit_edge.loopexit.i157.i, %.lr.ph181.i
  %.0.lcssa.i150.i = phi i32 [ 0, %.lr.ph181.i ], [ %i.gl, %._crit_edge.loopexit.i157.i ] ; 3 uses
  %.029.lcssa.i151.i = phi i32 [ %.02930.i148.i, %.lr.ph181.i ], [ %i.gm, %._crit_edge.loopexit.i157.i ]
  %i.gn = icmp eq i32 %.0.lcssa.i150.i, %.029.lcssa.i151.i
  br i1 %i.gn, label %bb.j, label %parcor_to_lpc.exit158.i

bb.j:                                             ; preds = %._crit_edge.i149.i
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv232.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !94
  %i.gq = sext i32 %i.gp to i64
  %i.gr = sext i32 %.0.lcssa.i150.i to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !94 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = mul nsw i64 %i.gu, %i.gq
  %i.gw = add nsw i64 %i.gv, 524288
  %i.gx = lshr i64 %i.gw, 20
  %i.gy = zext nneg i32 %.0.lcssa.i150.i to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.gy
  %i.ha = trunc i64 %i.gx to i32
  %i.hb = add i32 %i.gt, %i.ha
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !94
  br label %parcor_to_lpc.exit158.i

parcor_to_lpc.exit158.i:                          ; preds = %bb.j, %._crit_edge.i149.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv232.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !94
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv232.i
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !94
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %._crit_edge182.i, label %.lr.ph181.i, !llvm.loop !275

._crit_edge182.i:                                 ; preds = %parcor_to_lpc.exit158.i, %.preheader161.i
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !115
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !94
  %.not140.i = icmp eq i32 %i.hh, 0
  br i1 %.not140.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge182.i
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !108
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !55
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = sub nsw i64 0, %i.hm
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.hn
  %i.hp = shl nsw i64 %i.hm, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hj, ptr align 4 %i.ho, i64 %i.hp, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge182.i
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !118
  %.not141.i = icmp eq i32 %i.hr, 0
  br i1 %.not141.i, label %.loopexit160.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !117 ; 4 uses
  %.not142.i = icmp eq ptr %i.ht, null
  br i1 %.not142.i, label %.loopexit160.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hu = icmp ugt ptr %i.ht, %i.x                ; 2 uses
  %..i = select i1 %i.hu, ptr %i.x, ptr %i.ht
  %.147.i = select i1 %i.hu, ptr %i.ht, ptr %i.x
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !55
  %.not143183.i = icmp slt i32 %i.hw, 1
  br i1 %.not143183.i, label %.loopexit160.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %bb.n, %.lr.ph186.i
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %.lr.ph186.i ], [ -1, %bb.n ] ; 5 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %.147.i, i64 %indvars.iv237.i
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !94
  %i.hz = getelementptr inbounds [4 x i8], ptr %..i, i64 %indvars.iv237.i
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !94
end_hunk_0
