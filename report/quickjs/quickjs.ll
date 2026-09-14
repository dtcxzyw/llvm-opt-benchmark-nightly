Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 177
begin_hunk_0_@JS_WriteObject2:bb.a

bb.j:                                             ; preds = %bb.i
  %i.bs = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !465
  %i.bt = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466 ; 3 uses
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.k, label %bb.l, !prof !192

bb.k:                                             ; preds = %bb.j
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.u, i8 noundef zeroext 0)
  br label %bc_put_u8.exit33.i

bb.l:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.u, align 8, !tbaa !467
  %i.bw = add i64 %i.bt, 1
  store i64 %i.bw, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bx, align 1, !tbaa !218
  br label %bc_put_u8.exit33.i

bc_put_u8.exit33.i:                               ; preds = %bb.l, %bb.k
  %i.by = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !465
  %i.bz = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466 ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ult i64 %i.ca, 4
  br i1 %i.cb, label %bb.m, label %bb.n, !prof !192

bb.m:                                             ; preds = %bc_put_u8.exit33.i
  %i.cc = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.u, i32 noundef %i.bq) ; 0 uses
  br label %bc_put_u32.exit34.i

bb.n:                                             ; preds = %bc_put_u8.exit33.i
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !467
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz
  store i32 %i.bq, ptr %i.ce, align 1
  %i.cf = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466
  %i.cg = add i64 %i.cf, 4
  store i64 %i.cg, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466
  br label %bc_put_u32.exit34.i

bb.o:                                             ; preds = %bb.i
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !297
  %i.ci = zext nneg i32 %i.bq to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !299 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = lshr i64 %i.cl, 62
  %i.cn = trunc nuw nsw i64 %i.cm to i8           ; 2 uses
  %i.co = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !465
  %i.cp = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466 ; 3 uses
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.q, !prof !192

bb.p:                                             ; preds = %bb.o
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.u, i8 noundef zeroext %i.cn)
  br label %bc_put_u8.exit35.i

bb.q:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !467
  %i.cs = add i64 %i.cp, 1
  store i64 %i.cs, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 %i.cn, ptr %i.ct, align 1, !tbaa !218
  br label %bc_put_u8.exit35.i

bc_put_u8.exit35.i:                               ; preds = %bb.q, %bb.p
  call fastcc void @JS_WriteString(ptr noundef nonnull %6, ptr noundef nonnull %i.ck)
  br label %bc_put_u32.exit34.i

bc_put_u32.exit34.i:                              ; preds = %bc_put_u8.exit35.i, %bb.n, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cu = load i32, ptr %i.aq, align 8, !tbaa !605
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next.i, %i.cv
  br i1 %i.cw, label %bb.i, label %._crit_edge.i, !llvm.loop !1388

._crit_edge.i:                                    ; preds = %bc_put_u32.exit34.i, %bc_put_leb128.exit.i
  %i.cx = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !1393
  %sext.i = shl i64 %i.cx, 32
  %i.cy = ashr exact i64 %sext.i, 32              ; 4 uses
  %i.cz = add i64 %i.cy, %.sroa.10.0.copyload.i   ; 5 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  br i1 %i.da, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.db = icmp ugt i64 %i.cz, %.sroa.14.0.copyload.i
  br i1 %i.db, label %bb.s, label %dbuf_claim.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dc = trunc nuw i8 %.sroa.16.0.copyload.i to i1
  br i1 %i.dc, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = lshr i64 %.sroa.14.0.copyload.i, 1
  %i.de = add i64 %i.dd, %.sroa.14.0.copyload.i   ; 2 uses
  %i.df = icmp ult i64 %i.de, %.sroa.14.0.copyload.i
  %i.dg = call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cz)
  %.0.i.i = select i1 %i.df, i64 %i.cz, i64 %i.dg ; 2 uses
  %i.dh = call ptr %.sroa.1852.0.copyload.i(ptr noundef %.sroa.20.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.0.i.i) #49, !inline_history !1389 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %bb.v, label %dbuf_claim.exit.i

dbuf_claim.exit.i:                                ; preds = %bb.t, %bb.r
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.r ], [ %i.dh, %bb.t ] ; 4 uses
  %.sroa.14.0.i = phi i64 [ %.sroa.14.0.copyload.i, %bb.r ], [ %.0.i.i, %bb.t ]
  %.sroa.16.0.i = phi i8 [ %.sroa.16.0.copyload.i, %bb.r ], [ 0, %bb.t ]
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 %i.cy
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %.sroa.0.0.i, i64 %.sroa.10.0.copyload.i, i1 false)
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !1394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.i, ptr align 1 %i.dj, i64 %i.cy, i1 false)
  %i.dk = load ptr, ptr %i.u, align 8, !tbaa !467 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.dk, null
  br i1 %.not.i36.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %dbuf_claim.exit.i
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !464
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !463
  %i.dn = call ptr %i.dl(ptr noundef %i.dm, ptr noundef nonnull %i.dk, i64 noundef 0) #49, !inline_history !1390 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i
  %.not.i37.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i37.i, label %JS_WriteObjectAtoms.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = call ptr %.sroa.1852.0.copyload.i(ptr noundef %.sroa.20.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i64 noundef 0) #49, !inline_history !1390 ; 0 uses
  br label %JS_WriteObjectAtoms.exit.thread

JS_WriteObjectAtoms.exit.thread:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  br label %bb.ae

bb.x:                                             ; preds = %bb.u, %dbuf_claim.exit.i
  store ptr %.sroa.0.0.i, ptr %i.u, align 8, !tbaa !364
  store i64 %i.cz, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !240
  store i64 %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !240
  store i8 %.sroa.16.0.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i, i64 7, i1 false), !tbaa.struct !1392
  store ptr %.sroa.1852.0.copyload.i, ptr %i.w, align 8, !tbaa !239
  store ptr %.sroa.20.0.copyload.i, ptr %i.v, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  %i.dp = load ptr, ptr %i.x, align 8, !tbaa !607
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.dr, ptr noundef %i.dp)
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !608
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.du, ptr noundef %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !609
  %i.dx = load ptr, ptr %i.dq, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.dx, ptr noundef %i.dw)
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !606
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.ea, ptr noundef %i.dz)
  %i.eb = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !1393 ; 2 uses
  store i64 %i.eb, ptr %1, align 8, !tbaa !240
  %.not55 = icmp eq ptr %5, null
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !610 ; 2 uses
  br i1 %.not55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.ed, ptr %5, align 8, !tbaa !612
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !613
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !614
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr %i.dq, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.ei, ptr noundef %i.ed)
  %.pre66 = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !466
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ej = phi i64 [ %.pre66, %bb.z ], [ %i.eb, %bb.y ] ; 3 uses
  %i.ek = load ptr, ptr %i.u, align 8, !tbaa !467 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 5 ; 8 uses
  %i.em = add i64 %i.ej, -5                       ; 2 uses
  %i.en = icmp ugt i64 %i.em, 4
  br i1 %i.en, label %.lr.ph.i58.preheader, label %._crit_edge.i57

.lr.ph.i58.preheader:                             ; preds = %bb.aa
  %i.eo = add i64 %i.ej, -10                      ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %xtraiter = and i64 %i.eq, 3                    ; 3 uses
  %i.er = icmp ult i64 %i.eo, 12
  br i1 %i.er, label %.lr.ph.i58.epil.preheader, label %.lr.ph.i58.preheader.new

.lr.ph.i58.preheader.new:                         ; preds = %.lr.ph.i58.preheader
  %unroll_iter = and i64 %i.eq, 9223372036854775804
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58, %.lr.ph.i58.preheader.new
  %i.es = phi i64 [ 4, %.lr.ph.i58.preheader.new ], [ %i.fh, %.lr.ph.i58 ] ; 5 uses
  %.02027.i = phi i32 [ 0, %.lr.ph.i58.preheader.new ], [ %i.fg, %.lr.ph.i58 ]
  %niter = phi i64 [ 0, %.lr.ph.i58.preheader.new ], [ %niter.next.3, %.lr.ph.i58 ]
  %7 = getelementptr i8, ptr %i.el, i64 %i.es
  %i.et = getelementptr i8, ptr %7, i64 -4
  %.val.i = load i32, ptr %i.et, align 1
  %i.eu = add i32 %.val.i, %.02027.i
  %i.ev = mul i32 %i.eu, -1640562687
  %i.ew = getelementptr i8, ptr %i.el, i64 %i.es
  %.val.i.1 = load i32, ptr %i.ew, align 1
  %i.ex = add i32 %.val.i.1, %i.ev
  %i.ey = mul i32 %i.ex, -1640562687
  %i.ez = getelementptr i8, ptr %i.el, i64 %i.es
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  %.val.i.2 = load i32, ptr %i.fa, align 1
  %i.fb = add i32 %.val.i.2, %i.ey
  %i.fc = mul i32 %i.fb, -1640562687
  %i.fd = getelementptr i8, ptr %i.el, i64 %i.es
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  %.val.i.3 = load i32, ptr %i.fe, align 1
  %i.ff = add i32 %.val.i.3, %i.fc
  %i.fg = mul i32 %i.ff, -1640562687              ; 3 uses
  %i.fh = add nuw i64 %i.es, 16                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i58, !llvm.loop !95

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i58
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i58.epil.preheader

.lr.ph.i58.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i58.preheader
  %.epil.init = phi i64 [ 4, %.lr.ph.i58.preheader ], [ %i.fh, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02027.i.epil.init = phi i32 [ 0, %.lr.ph.i58.preheader ], [ %i.fg, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i58.epil

.lr.ph.i58.epil:                                  ; preds = %.lr.ph.i58.epil, %.lr.ph.i58.epil.preheader
  %i.fi = phi i64 [ %i.fm, %.lr.ph.i58.epil ], [ %.epil.init, %.lr.ph.i58.epil.preheader ] ; 2 uses
  %.02027.i.epil = phi i32 [ %i.fl, %.lr.ph.i58.epil ], [ %.02027.i.epil.init, %.lr.ph.i58.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i58.epil ], [ 0, %.lr.ph.i58.epil.preheader ]
  %8 = getelementptr i8, ptr %i.el, i64 %i.fi
  %i.fj = getelementptr i8, ptr %8, i64 -4
  %.val.i.epil = load i32, ptr %i.fj, align 1
  %i.fk = add i32 %.val.i.epil, %.02027.i.epil
  %i.fl = mul i32 %i.fk, -1640562687              ; 2 uses
  %i.fm = add nuw i64 %i.fi, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i58.epil, !llvm.loop !1391

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i58.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.fg, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.fl, %.lr.ph.i58.epil ]
  %i.fn = add i64 %i.ej, -10
  %i.fo = and i64 %i.fn, -4
  %i.fp = add nuw i64 %i.fo, 4
  br label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %._crit_edge.loopexit.i, %bb.aa
  %.020.lcssa.i = phi i32 [ 0, %bb.aa ], [ %.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.aa ], [ %i.fp, %._crit_edge.loopexit.i ] ; 4 uses
  %i.fq = sub i64 %i.em, %.0.lcssa.i
  switch i64 %i.fq, label %bc_csum.exit [
    i64 3, label %bb.ab
    i64 2, label %bb.ac
    i64 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i57
  %i.fr = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.lcssa.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !218
  %i.fu = zext i8 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i57
  %.021.i = phi i32 [ %i.fv, %bb.ab ], [ 0, %._crit_edge.i57 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.lcssa.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !218
  %i.fz = zext i8 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 8
  %i.gb = or disjoint i32 %i.ga, %.021.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i57
  %i.gc = phi i32 [ %i.gb, %bb.ac ], [ 0, %._crit_edge.i57 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.lcssa.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !218
  %i.gf = zext i8 %i.ge to i32
  %i.gg = or i32 %i.gc, %i.gf
  br label %bc_csum.exit

bc_csum.exit:                                     ; preds = %._crit_edge.i57, %bb.ad
  %i.gh = phi i32 [ 0, %._crit_edge.i57 ], [ %i.gg, %bb.ad ]
  %i.gi = add i32 %i.gh, %.020.lcssa.i
  %i.gj = mul i32 %i.gi, -1640562687
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store i32 %i.gj, ptr %i.gk, align 1
  %i.gl = load ptr, ptr %i.u, align 8, !tbaa !467
  br label %bb.ah

bb.ae:                                            ; preds = %JS_WriteObjectAtoms.exit.thread, %bb.a
  %i.gm = load ptr, ptr %i.x, align 8, !tbaa !607
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.go, ptr noundef %i.gm)
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !608
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.gr, ptr noundef %i.gq)
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !609
  %i.gu = load ptr, ptr %i.gn, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.gu, ptr noundef %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !606
  %i.gx = load ptr, ptr %i.gn, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.gx, ptr noundef %i.gw)
  %i.gy = load ptr, ptr %i.u, align 8, !tbaa !467 ; 2 uses
  %.not.i = icmp eq ptr %i.gy, null
  br i1 %.not.i, label %dbuf_free.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gz = load ptr, ptr %i.w, align 8, !tbaa !464
  %i.ha = load ptr, ptr %i.v, align 8, !tbaa !463
  %i.hb = call ptr %i.gz(ptr noundef %i.ha, ptr noundef nonnull %i.gy, i64 noundef 0) #49, !inline_history !38 ; 0 uses
  br label %dbuf_free.exit

dbuf_free.exit:                                   ; preds = %bb.ae, %bb.af
  store i64 0, ptr %1, align 8, !tbaa !240
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %dbuf_free.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %dbuf_free.exit, %bb.ag, %bc_csum.exit
  %.0 = phi ptr [ %i.gl, %bc_csum.exit ], [ null, %bb.ag ], [ null, %dbuf_free.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @JS_WriteObjectRec(ptr noundef nonnull %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.JSBigIntBuf, align 4        ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !597    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1232
  %.val = load i64, ptr %i.d, align 8, !tbaa !263
  %i.e = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = icmp ugt i64 %.val, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.92), !inline_history !6 ; 0 uses
  br label %bc_put_u8.exit

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.i, label %bb.cs [
    i32 2, label %bb.d
    i32 3, label %bb.g
    i32 1, label %bb.j
    i32 0, label %bb.m
    i32 8, label %bb.t
    i32 -7, label %bb.y
    i32 -6, label %bb.ab
    i32 -2, label %bb.af
    i32 -3, label %bb.ah
    i32 -1, label %bb.aj
    i32 7, label %bb.bq
    i32 -9, label %bb.bq
    i32 -8, label %bb.cl
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !465
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !466  ; 3 uses
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.f, !prof !192

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.j, i8 noundef zeroext 1)
  br label %bc_put_u8.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !467
  %i.q = add i64 %i.n, 1
  store i64 %i.q, ptr %i.m, align 8, !tbaa !466
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 1, ptr %i.r, align 1, !tbaa !218
  br label %bc_put_u8.exit

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !465
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !466  ; 3 uses
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %bb.i, !prof !192

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.s, i8 noundef zeroext 2)
  br label %bc_put_u8.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !467
  %i.z = add i64 %i.w, 1
  store i64 %i.z, ptr %i.v, align 8, !tbaa !466
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 2, ptr %i.aa, align 1, !tbaa !218
  br label %bc_put_u8.exit

bb.j:                                             ; preds = %bb.c
  %.sroa.089.0.extract.trunc = trunc i64 %1 to i8
  %i.ab = add i8 %.sroa.089.0.extract.trunc, 3    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !465
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !466 ; 3 uses
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !192

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.ac, i8 noundef zeroext %i.ab)
  br label %bc_put_u8.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !467
  %i.aj = add i64 %i.ag, 1
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !466
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
end_hunk_0
begin_hunk_1_@JS_WriteObjectRec:bb.a
  br label %bc_put_u8.exit38.i

bb.ck:                                            ; preds = %bb.ci
  %i.lb = load ptr, ptr %i.hv, align 8, !tbaa !467
  %i.lc = add i64 %i.kz, 1
  store i64 %i.lc, ptr %i.hy, align 8, !tbaa !466
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kz
  store i8 %i.kx, ptr %i.ld, align 1, !tbaa !218
  br label %bc_put_u8.exit38.i

bc_put_u8.exit38.i:                               ; preds = %bb.ck, %bb.cj
  %i.le = add nuw nsw i32 %.153.i, 1              ; 2 uses
  %exitcond58.not.i = icmp eq i32 %i.le, %i.kd
  br i1 %exitcond58.not.i, label %JS_WriteBigInt.exit, label %bb.ci, !llvm.loop !1398

JS_WriteBigInt.exit:                              ; preds = %bc_put_u8.exit38.i, %bc_put_leb128.exit.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bc_put_u8.exit

bb.cl:                                            ; preds = %bb.c
  %i.lf = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.lg = load i64, ptr %i.lf, align 8            ; 3 uses
  %switch.not = icmp sgt i64 %i.lg, -1
  br i1 %switch.not, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !249
  %.not.i149 = icmp samesign ugt i64 %i.lg, -4611686018427387905
  br i1 %.not.i149, label %js_get_atom_index.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lj = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !243
  %i.ll = lshr i64 %i.lg, 32
  %i.lm = trunc nuw i64 %i.ll to i32
  %i.ln = and i32 %i.lm, 268435455
  %i.lo = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !242
  %i.lq = add nsw i32 %i.lp, -1
  %i.lr = and i32 %i.ln, %i.lq
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !297
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.012.in.i = phi ptr [ %i.lt, %bb.cn ], [ %i.lw, %bb.co ]
  %.012.i = load i32, ptr %.012.in.i, align 4, !tbaa !191 ; 2 uses
  %.pn.i = zext i32 %.012.i to i64
  %.0.in.i = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %.pn.i
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !299 ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, %i.lf
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br i1 %.not13.i, label %js_get_atom_index.exit, label %bb.co, !llvm.loop !26

js_get_atom_index.exit:                           ; preds = %bb.co, %bb.cm
  %.1.i = phi i32 [ %i.li, %bb.cm ], [ %.012.i, %bb.co ]
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !465
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !466 ; 3 uses
  %i.mc = icmp eq i64 %i.lz, %i.mb
  br i1 %i.mc, label %bb.cp, label %bb.cq, !prof !192

bb.cp:                                            ; preds = %js_get_atom_index.exit
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.lx, i8 noundef zeroext 23)
  br label %.thread166

bb.cq:                                            ; preds = %js_get_atom_index.exit
  %i.md = load ptr, ptr %i.lx, align 8, !tbaa !467
  %i.me = add i64 %i.mb, 1
  store i64 %i.me, ptr %i.ma, align 8, !tbaa !466
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mb
  store i8 23, ptr %i.mf, align 1, !tbaa !218
  br label %.thread166

.thread166:                                       ; preds = %bb.cq, %bb.cp
  tail call fastcc void @bc_put_atom(ptr noundef %0, i32 noundef %.1.i)
  br label %bc_put_u8.exit

bb.cr:                                            ; preds = %bb.cl
  %i.mg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.218) ; 0 uses
  br label %.thread

bb.cs:                                            ; preds = %._crit_edge, %bb.c, %bb.ah, %bb.af
  %i.mh = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.c ], [ %i.a, %bb.ah ], [ %i.a, %bb.af ]
  %i.mi = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef %i.mh, ptr noundef nonnull @.str.219, i32 noundef %i.i) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread156, %bb.bp, %bb.ao, %bb.aq, %JS_FreeValue.exit, %bb.ab, %bb.cr, %bb.ai, %bb.ag, %bb.cs
  br label %bc_put_u8.exit

bc_put_u8.exit:                                   ; preds = %bb.bp, %.thread152, %bc_put_u8.exit134, %.thread166, %JS_FreeValue.exit, %bb.x, %bb.w, %bb.s, %bb.r, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bc_put_u8.exit133, %bb.ag, %bb.ai, %JS_WriteBigInt.exit, %.thread, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %.thread ], [ 0, %.thread166 ], [ 0, %bb.x ], [ 0, %JS_WriteBigInt.exit ], [ 0, %bb.w ], [ 0, %bb.ai ], [ 0, %bb.ag ], [ 0, %JS_FreeValue.exit ], [ 0, %bc_put_u8.exit133 ], [ 0, %bb.s ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %bc_put_u8.exit134 ], [ 0, %.thread152 ], [ 0, %bb.bp ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @JS_WriteObject(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @JS_WriteObject2(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, i32 noundef %4, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_ReadObject2(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.BCReaderState, align 8      ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !418
  %i.c = add i16 %i.b, 1
  store i16 %i.c, ptr %i.a, align 8, !tbaa !418
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = trunc i64 %2 to i32
  %i.g = add i32 %i.e, %i.f
  %i.h = and i32 %i.g, 2147483647
  %i.i = and i32 %i.e, -2147483648
  %i.j = or disjoint i32 %i.h, %i.i
  store i32 %i.j, ptr %i.d, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 88, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !617
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !618
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !619
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.p = trunc i32 %3 to i8                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 53
  %i.r = and i8 %i.p, 1
  store i8 %i.r, ptr %i.q, align 1, !tbaa !620
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.t = lshr i8 %i.p, 2
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !621
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 54
  %i.w = lshr i8 %i.p, 3
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 2, !tbaa !622
  %i.y = trunc i32 %3 to i1
  %spec.select = select i1 %i.y, i32 242, i32 1
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %spec.select, ptr %i.z, align 8, !tbaa !623
  %i.aa = icmp slt i64 %2, 1
  br i1 %i.aa, label %bc_get_u8.exit.i, label %bb.b, !prof !192

bc_get_u8.exit.i:                                 ; preds = %bb.a
  %i.ab = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.226), !inline_history !1399 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = load i8, ptr %1, align 1, !tbaa !218    ; 2 uses
  %.not49.i = icmp eq i8 %i.ad, 27
  br i1 %.not49.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.221, i32 noundef %i.ae, i32 noundef 27), !inline_history !1400 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp samesign ult i64 %2, 5
  br i1 %i.ag, label %bc_get_u32.exit.i, label %bb.e, !prof !192

bc_get_u32.exit.i:                                ; preds = %bb.d
  %i.ah = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.226), !inline_history !1401 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.ac, align 1        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 11 uses
  %.not51.i = icmp eq i32 %.val.i.i, -1
  br i1 %.not51.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gepdiff = add nsw i64 %2, -5
  %i.aj = icmp sgt i64 %2, 9
  br i1 %i.aj, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.ak = add nsw i64 %2, -10                     ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.an = icmp ult i64 %i.ak, 12
  br i1 %i.an, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.am, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.ao = phi i64 [ 4, %.lr.ph.i.i.preheader.new ], [ %i.bd, %.lr.ph.i.i ] ; 5 uses
  %.02027.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bc, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %6 = getelementptr i8, ptr %i.ai, i64 %i.ao
  %i.ap = getelementptr i8, ptr %6, i64 -4
  %.val.i62.i = load i32, ptr %i.ap, align 1
  %i.aq = add i32 %.val.i62.i, %.02027.i.i
  %i.ar = mul i32 %i.aq, -1640562687
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ao
  %.val.i62.i.1 = load i32, ptr %i.as, align 1
  %i.at = add i32 %.val.i62.i.1, %i.ar
  %i.au = mul i32 %i.at, -1640562687
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.ao
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val.i62.i.2 = load i32, ptr %i.aw, align 1
  %i.ax = add i32 %.val.i62.i.2, %i.au
  %i.ay = mul i32 %i.ax, -1640562687
  %i.az = getelementptr i8, ptr %i.ai, i64 %i.ao
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val.i62.i.3 = load i32, ptr %i.ba, align 1
  %i.bb = add i32 %.val.i62.i.3, %i.ay
  %i.bc = mul i32 %i.bb, -1640562687              ; 3 uses
  %i.bd = add nuw nsw i64 %i.ao, 16               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !95

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i64 [ 4, %.lr.ph.i.i.preheader ], [ %i.bd, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02027.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bc, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.be = phi i64 [ %i.bi, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.02027.i.i.epil = phi i32 [ %i.bh, %.lr.ph.i.i.epil ], [ %.02027.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %7 = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bf = getelementptr i8, ptr %7, i64 -4
  %.val.i62.i.epil = load i32, ptr %i.bf, align 1
  %i.bg = add i32 %.val.i62.i.epil, %.02027.i.i.epil
  %i.bh = mul i32 %i.bg, -1640562687              ; 2 uses
  %i.bi = add nuw nsw i64 %i.be, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !1402

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa124 = phi i32 [ %i.bc, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.bh, %.lr.ph.i.i.epil ]
  %i.bj = add nsw i64 %2, -10
  %i.bk = and i64 %i.bj, -4
  %i.bl = add nuw nsw i64 %i.bk, 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %.020.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %.lcssa124, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.bl, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.bm = sub nsw i64 %gepdiff, %.0.lcssa.i.i
  switch i64 %i.bm, label %bc_csum.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.h
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.lcssa.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !218
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.021.i.i = phi i32 [ %i.br, %bb.g ], [ 0, %._crit_edge.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.lcssa.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !218
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = or disjoint i32 %i.bw, %.021.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %i.by = phi i32 [ %i.bx, %bb.h ], [ 0, %._crit_edge.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.lcssa.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !218
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or i32 %i.by, %i.cb
  br label %bc_csum.exit.i

bc_csum.exit.i:                                   ; preds = %bb.i, %._crit_edge.i.i
  %i.cd = phi i32 [ 0, %._crit_edge.i.i ], [ %i.cc, %bb.i ]
  %i.ce = add i32 %i.cd, %.020.lcssa.i.i
  %i.cf = mul i32 %i.ce, -1640562687
  %.not52.i = icmp eq i32 %.val.i.i, %i.cf
  br i1 %.not52.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bc_csum.exit.i
  %i.cg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.222), !inline_history !1400 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.k:                                             ; preds = %bc_csum.exit.i, %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  %.not20.i.i.i.not = icmp eq i64 %2, 5
  br i1 %.not20.i.i.i.not, label %get_leb128.exit.thread.i.i, label %.lr.ph.i.i.i, !prof !1408

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i65.i = icmp samesign ugt i64 %2, 6
  br i1 %.not.i.i65.i, label %.lr.ph.i.i.i.1, label %get_leb128.exit.thread.i.i, !prof !624

.lr.ph.i.i.i.1:                                   ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.cj = load i8, ptr %i.df, align 1, !tbaa !218 ; 2 uses
  %i.ck = and i8 %i.cj, 127
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 7
  %i.cn = or disjoint i32 %i.cm, %i.di            ; 2 uses
  %.not18.i.i.i.1 = icmp sgt i8 %i.cj, -1
  br i1 %.not18.i.i.i.1, label %get_leb128.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.1
  %.not.i.i65.i.1.not = icmp eq i64 %2, 7
  br i1 %.not.i.i65.i.1.not, label %get_leb128.exit.thread.i.i, label %.lr.ph.i.i.i.2, !prof !1409

.lr.ph.i.i.i.2:                                   ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cp = load i8, ptr %i.ci, align 1, !tbaa !218 ; 2 uses
  %i.cq = and i8 %i.cp, 127
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 14
  %i.ct = or disjoint i32 %i.cs, %i.cn            ; 2 uses
  %.not18.i.i.i.2 = icmp sgt i8 %i.cp, -1
  br i1 %.not18.i.i.i.2, label %get_leb128.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.2
  %.not.i.i65.i.2 = icmp samesign ugt i64 %2, 8
  br i1 %.not.i.i65.i.2, label %.lr.ph.i.i.i.3, label %get_leb128.exit.thread.i.i, !prof !624

.lr.ph.i.i.i.3:                                   ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !218 ; 2 uses
  %i.cw = and i8 %i.cv, 127
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 21
  %i.cz = or disjoint i32 %i.cy, %i.ct            ; 2 uses
  %.not18.i.i.i.3 = icmp sgt i8 %i.cv, -1
  br i1 %.not18.i.i.i.3, label %get_leb128.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.3
  %.not.i.i65.i.3.not = icmp eq i64 %2, 9
  br i1 %.not.i.i65.i.3.not, label %get_leb128.exit.thread.i.i, label %.lr.ph.i.i.i.4, !prof !1409

.lr.ph.i.i.i.4:                                   ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !218 ; 2 uses
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl i32 %i.dc, 28
  %i.de = or disjoint i32 %i.dd, %i.cz
  %.not18.i.i.i.4 = icmp sgt i8 %i.db, -1
  br i1 %.not18.i.i.i.4, label %get_leb128.exit.i.i, label %get_leb128.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.dg = load i8, ptr %i.ai, align 1, !tbaa !218 ; 2 uses
  %i.dh = and i8 %i.dg, 127
  %i.di = zext nneg i8 %i.dh to i32               ; 2 uses
  %.not18.i.i.i = icmp sgt i8 %i.dg, -1
  br i1 %.not18.i.i.i, label %get_leb128.exit.i.i, label %bb.l

get_leb128.exit.thread.i.i:                       ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %.lr.ph.i.i.i.4, %bb.k
  store i32 0, ptr %i.ch, align 4, !tbaa !191
  br label %bc_get_leb128.exit.i

get_leb128.exit.i.i:                              ; preds = %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i
  %.lcssa122 = phi ptr [ %i.df, %.lr.ph.i.i.i ], [ %i.ci, %.lr.ph.i.i.i.1 ], [ %i.co, %.lr.ph.i.i.i.2 ], [ %i.cu, %.lr.ph.i.i.i.3 ], [ %i.da, %.lr.ph.i.i.i.4 ]
  %.lcssa120 = phi i32 [ %i.di, %.lr.ph.i.i.i ], [ %i.cn, %.lr.ph.i.i.i.1 ], [ %i.ct, %.lr.ph.i.i.i.2 ], [ %i.cz, %.lr.ph.i.i.i.3 ], [ %i.de, %.lr.ph.i.i.i.4 ] ; 5 uses
  store i32 %.lcssa120, ptr %i.ch, align 4, !tbaa !191
  %i.dj = ptrtoint ptr %.lcssa122 to i64
  %i.dk = ptrtoint ptr %i.ai to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = and i64 %i.dl, 2147483648
  %.not.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i, label %bb.p, label %bc_get_leb128.exit.i, !prof !625

bc_get_leb128.exit.i:                             ; preds = %get_leb128.exit.i.i, %get_leb128.exit.thread.i.i
  %i.dn = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.226), !inline_history !1403 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.p:                                             ; preds = %get_leb128.exit.i.i
  %i.do = and i64 %i.dl, 2147483647
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.do
  store ptr %i.dp, ptr %i.o, align 8, !tbaa !626
  %i.dq = icmp ugt i32 %.lcssa120, 1000000
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dr = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef %0, ptr noundef nonnull @.str.223, i32 noundef %.lcssa120), !inline_history !1400 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.r:                                             ; preds = %bb.p
  %.not54.i = icmp eq i32 %.lcssa120, 0
  br i1 %.not54.i, label %JS_ReadObjectAtoms.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = shl nuw nsw i32 %.lcssa120, 2
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = tail call ptr @js_mallocz(ptr noundef %0, i64 noundef %i.dt), !inline_history !1400 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !627
  %.not55.i = icmp eq ptr %i.du, null
  br i1 %.not55.i, label %JS_ReadObjectAtoms.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.ag
  %i.dw = phi ptr [ %i.fa, %bb.ag ], [ %0, %bb.s ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ag ], [ 0, %bb.s ] ; 2 uses
  %i.dx = load ptr, ptr %i.n, align 8, !tbaa !619
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !626 ; 4 uses
  %i.dz = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp slt i64 %i.eb, 1
  br i1 %i.ec, label %bb.t, label %bb.v, !prof !192

bb.t:                                             ; preds = %.lr.ph.i
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !628
  %.not.i.i67.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i67.i, label %bb.u, label %JS_ReadObjectAtoms.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ef = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.dw, ptr noundef nonnull @.str.226), !inline_history !1399 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.v:                                             ; preds = %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 3 uses
  store ptr %i.eg, ptr %i.o, align 8, !tbaa !626
  %i.eh = load i8, ptr %i.dy, align 1, !tbaa !218 ; 3 uses
  %i.ei = zext i8 %i.eh to i32                    ; 2 uses
  %i.ej = icmp eq i8 %i.eh, 0
end_hunk_1
begin_hunk_2_@js_new_string_rope:bb.a
  %.sroa.37.0..sroa_idx.i.43 = getelementptr inbounds nuw i8, ptr %5, i64 696
  store i64 2, ptr %.sroa.37.0..sroa_idx.i.43, align 8, !tbaa !240
  %i.eh = call fastcc i32 @js_rebalance_string_rope_rec(ptr noundef nonnull %0, ptr noundef %5, i64 %i.co, i64 -6), !inline_history !1771
  %.not.i61 = icmp eq i32 %i.eh, 0
  br i1 %.not.i61, label %.preheader, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.w, %bb.t
  br label %.loopexit

.preheader:                                       ; preds = %bb.t, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.t ] ; 2 uses
  %.sroa.023.sroa.10.0.i84 = phi i32 [ %.sroa.023.sroa.10.1.i, %bb.x ], [ 0, %bb.t ] ; 2 uses
  %.sroa.023.sroa.0.0.i83 = phi i32 [ %.sroa.023.sroa.0.1.i, %bb.x ], [ 0, %bb.t ] ; 2 uses
  %.sroa.11.0.i82 = phi i64 [ %.sroa.11.1.i, %bb.x ], [ 2, %bb.t ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %.sroa.017.0.copyload.i = load i64, ptr %i.ei, align 16, !tbaa !218 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !240 ; 3 uses
  %i.ej = and i64 %.sroa.6.0.copyload.i, 4294967295
  %i.ek = icmp eq i64 %i.ej, 2
  br i1 %i.ek, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.preheader
  store i32 0, ptr %i.ei, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !240
  %i.el = and i64 %.sroa.11.0.i82, 4294967295
  %i.em = icmp eq i64 %i.el, 2
  br i1 %i.em, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.023.sroa.0.0.extract.trunc39.i = trunc i64 %.sroa.017.0.copyload.i to i32
  %.sroa.023.sroa.10.0.extract.shift55.i = lshr i64 %.sroa.017.0.copyload.i, 32
  %.sroa.023.sroa.10.0.extract.trunc56.i = trunc nuw i64 %.sroa.023.sroa.10.0.extract.shift55.i to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %.sroa.023.sroa.10.0.insert.ext.i = zext i32 %.sroa.023.sroa.10.0.i84 to i64
  %.sroa.023.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.023.sroa.10.0.insert.ext.i, 32
  %.sroa.023.sroa.0.0.insert.ext.i = zext i32 %.sroa.023.sroa.0.0.i83 to i64
  %.sroa.023.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.023.sroa.10.0.insert.shift.i, %.sroa.023.sroa.0.0.insert.ext.i
  %i.en = call fastcc { i64, i64 } @js_new_string_rope(ptr noundef nonnull %0, i64 %.sroa.017.0.copyload.i, i64 %.sroa.6.0.copyload.i, i64 %.sroa.023.sroa.0.0.insert.insert.i, i64 %.sroa.11.0.i82), !inline_history !1771 ; 2 uses
  %i.eo = extractvalue { i64, i64 } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { i64, i64 } %i.en, 1      ; 2 uses
  %.sroa.023.sroa.0.0.extract.trunc.i = trunc i64 %i.eo to i32
  %.sroa.023.sroa.10.0.extract.shift.i = lshr i64 %i.eo, 32
  %.sroa.023.sroa.10.0.extract.trunc.i = trunc nuw i64 %.sroa.023.sroa.10.0.extract.shift.i to i32
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = icmp eq i64 %i.eq, 6
  br i1 %i.er, label %.loopexit.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.preheader
  %.sroa.11.1.i = phi i64 [ %.sroa.11.0.i82, %.preheader ], [ %.sroa.6.0.copyload.i, %bb.v ], [ %i.ep, %bb.w ] ; 3 uses
  %.sroa.023.sroa.0.1.i = phi i32 [ %.sroa.023.sroa.0.0.i83, %.preheader ], [ %.sroa.023.sroa.0.0.extract.trunc39.i, %bb.v ], [ %.sroa.023.sroa.0.0.extract.trunc.i, %bb.w ] ; 2 uses
  %.sroa.023.sroa.10.1.i = phi i32 [ %.sroa.023.sroa.10.0.i84, %.preheader ], [ %.sroa.023.sroa.10.0.extract.trunc56.i, %bb.v ], [ %.sroa.023.sroa.10.0.extract.trunc.i, %bb.w ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 44
  br i1 %exitcond.not, label %bb.y, label %.preheader, !llvm.loop !1772

bb.y:                                             ; preds = %bb.x
  %.sroa.023.sroa.10.0.insert.ext51.i = zext i32 %.sroa.023.sroa.10.1.i to i64
  %i.es = and i64 %.sroa.11.1.i, 4294967295
  %i.et = icmp eq i64 %i.es, 2
  %.pre92 = load ptr, ptr %i.ad, align 8, !tbaa !232 ; 3 uses
  br i1 %i.et, label %JS_AtomToString.exit, label %js_rebalance_string_rope.exit

JS_AtomToString.exit:                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre92, i64 1104
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !297
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 384
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !299 ; 2 uses
  %i.ey = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !191
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !191
  %.sroa.066.0.extract.trunc.i = trunc i64 %i.ey to i32
  %.sroa.468.0.extract.shift.i = lshr i64 %i.ey, 32
  br label %js_rebalance_string_rope.exit

.loopexit:                                        ; preds = %.loopexit.preheader, %JS_FreeValue.exit
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %JS_FreeValue.exit ], [ 0, %.loopexit.preheader ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv88 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 16           ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = load i64, ptr %i.fe, align 8            ; 2 uses
  %i.fg = load ptr, ptr %i.ad, align 8, !tbaa !232
  %i.fh = trunc i64 %i.ff to i32
  %i.fi = icmp ugt i32 %i.fh, -10
  br i1 %i.fi, label %bb.z, label %JS_FreeValue.exit

bb.z:                                             ; preds = %.loopexit
  %i.fj = inttoptr i64 %i.fd to ptr
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !191 ; 2 uses
  %i.fm = add nsw i32 %i.fl, -1
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !191
  %i.fn = icmp slt i32 %i.fl, 2
  br i1 %i.fn, label %bb.aa, label %JS_FreeValue.exit

bb.aa:                                            ; preds = %bb.z
  call fastcc void @js_free_value_rt(ptr noundef %i.fg, i64 %i.fd, i64 %i.ff), !inline_history !1773
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %.loopexit, %bb.z, %bb.aa
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, 44
  br i1 %exitcond91.not, label %js_rebalance_string_rope.exit.loopexit, label %.loopexit, !llvm.loop !1774

js_rebalance_string_rope.exit.loopexit:           ; preds = %JS_FreeValue.exit
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !232
  br label %js_rebalance_string_rope.exit

js_rebalance_string_rope.exit:                    ; preds = %js_rebalance_string_rope.exit.loopexit, %bb.y, %JS_AtomToString.exit
  %i.fo = phi ptr [ %.pre92, %bb.y ], [ %.pre92, %JS_AtomToString.exit ], [ %.pre, %js_rebalance_string_rope.exit.loopexit ]
  %.sroa.066.0.i = phi i32 [ %.sroa.023.sroa.0.1.i, %bb.y ], [ %.sroa.066.0.extract.trunc.i, %JS_AtomToString.exit ], [ 0, %js_rebalance_string_rope.exit.loopexit ]
  %.sroa.468.0.i = phi i64 [ %.sroa.023.sroa.10.0.insert.ext51.i, %bb.y ], [ %.sroa.468.0.extract.shift.i, %JS_AtomToString.exit ], [ 0, %js_rebalance_string_rope.exit.loopexit ]
  %.sroa.5.0.i = phi i64 [ %.sroa.11.1.i, %bb.y ], [ -7, %JS_AtomToString.exit ], [ 6, %js_rebalance_string_rope.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %.sroa.468.0.insert.shift.i = shl nuw i64 %.sroa.468.0.i, 32
  %.sroa.066.0.insert.ext.i = zext i32 %.sroa.066.0.i to i64
  %.sroa.066.0.insert.insert.i = or disjoint i64 %.sroa.468.0.insert.shift.i, %.sroa.066.0.insert.ext.i ; 2 uses
  %i.fp = load i32, ptr %i.ch, align 4, !tbaa !191 ; 2 uses
  %i.fq = add nsw i32 %i.fp, -1
  store i32 %i.fq, ptr %i.ch, align 4, !tbaa !191
  %i.fr = icmp slt i32 %i.fp, 2
  br i1 %i.fr, label %bb.ab, label %JS_FreeValueRT.exit

bb.ab:                                            ; preds = %js_rebalance_string_rope.exit
  call fastcc void @js_free_value_rt(ptr noundef %i.fo, i64 %i.co, i64 -6), !inline_history !370
  br label %JS_FreeValueRT.exit

js_malloc.exit.thread:                            ; preds = %bb.r, %js_arena_malloc.exit.thread, %bb.h
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !232 ; 3 uses
  %i.fu = trunc i64 %2 to i32
  %i.fv = icmp ugt i32 %i.fu, -10
  br i1 %i.fv, label %bb.ac, label %JS_FreeValueRT.exit64

bb.ac:                                            ; preds = %js_malloc.exit.thread
  %i.fw = inttoptr i64 %1 to ptr
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -4 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !191 ; 2 uses
  %i.fz = add nsw i32 %i.fy, -1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !191
  %i.ga = icmp slt i32 %i.fy, 2
  br i1 %i.ga, label %bb.ad, label %JS_FreeValueRT.exit64

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ft, i64 %1, i64 %2), !inline_history !370
  %.pre94 = load ptr, ptr %i.fs, align 8, !tbaa !232
  br label %JS_FreeValueRT.exit64

JS_FreeValueRT.exit64:                            ; preds = %js_malloc.exit.thread, %bb.ac, %bb.ad
  %i.gb = phi ptr [ %i.ft, %js_malloc.exit.thread ], [ %i.ft, %bb.ac ], [ %.pre94, %bb.ad ]
  %i.gc = trunc i64 %4 to i32
  %i.gd = icmp ugt i32 %i.gc, -10
  br i1 %i.gd, label %bb.ae, label %JS_FreeValueRT.exit

bb.ae:                                            ; preds = %JS_FreeValueRT.exit64
  %i.ge = inttoptr i64 %3 to ptr
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !191 ; 2 uses
  %i.gh = add nsw i32 %i.gg, -1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !191
  %i.gi = icmp slt i32 %i.gg, 2
  br i1 %i.gi, label %bb.af, label %JS_FreeValueRT.exit

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gb, i64 %3, i64 %4), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.af, %bb.ae, %JS_FreeValueRT.exit64, %bb.s, %bb.ab, %js_rebalance_string_rope.exit
  %i.gj = phi i64 [ %i.co, %bb.s ], [ %.sroa.066.0.insert.insert.i, %bb.ab ], [ %.sroa.066.0.insert.insert.i, %js_rebalance_string_rope.exit ], [ 0, %JS_FreeValueRT.exit64 ], [ 0, %bb.ae ], [ 0, %bb.af ]
  %.sroa.548.0 = phi i64 [ -6, %bb.s ], [ %.sroa.5.0.i, %bb.ab ], [ %.sroa.5.0.i, %js_rebalance_string_rope.exit ], [ 6, %JS_FreeValueRT.exit64 ], [ 6, %bb.ae ], [ 6, %bb.af ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.gj, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.548.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_rebalance_string_rope_rec(ptr noundef %0, ptr noundef nonnull %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967289
  %i.c = inttoptr i64 %2 to ptr                   ; 7 uses
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 2147483647                 ; 3 uses
  switch i32 %i.f, label %.lr.ph [
    i32 0, label %.thread
    i32 1, label %js_dup.exit147
  ]

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.g = phi i32 [ %i.s, %bb.f ], [ 1, %bb.b ]    ; 4 uses
  %.0138167 = phi i32 [ %.sroa.024.sroa.17.1, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.024.sroa.17.0166 = phi i32 [ %.sroa.024.sroa.0.1, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.18.0164 = phi i64 [ %.sroa.18.1, %bb.f ], [ 2, %bb.b ] ; 3 uses
  %.0138167189 = add i32 %i.g, -1
  %i.h = zext i32 %.0138167189 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.h ; 4 uses
  %.sroa.018.0.copyload = load i64, ptr %i.i, align 8, !tbaa !218 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240 ; 3 uses
  %i.j = and i64 %.sroa.6.0.copyload, 4294967295
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i32 0, ptr %i.i, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !218
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  %i.l = and i64 %.sroa.18.0164, 4294967295
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.024.sroa.0.0.extract.trunc63 = trunc i64 %.sroa.018.0.copyload to i32
  %.sroa.024.sroa.17.0.extract.shift101 = lshr i64 %.sroa.018.0.copyload, 32
  %.sroa.024.sroa.17.0.extract.trunc102 = trunc nuw i64 %.sroa.024.sroa.17.0.extract.shift101 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.024.sroa.17.0.insert.ext = zext i32 %.0138167 to i64
  %.sroa.024.sroa.17.0.insert.shift = shl nuw i64 %.sroa.024.sroa.17.0.insert.ext, 32
  %.sroa.024.sroa.0.0.insert.ext = zext i32 %.sroa.024.sroa.17.0166 to i64
  %.sroa.024.sroa.0.0.insert.insert = or disjoint i64 %.sroa.024.sroa.17.0.insert.shift, %.sroa.024.sroa.0.0.insert.ext
  %i.n = tail call fastcc { i64, i64 } @js_new_string_rope(ptr noundef %0, i64 %.sroa.018.0.copyload, i64 %.sroa.6.0.copyload, i64 %.sroa.024.sroa.0.0.insert.insert, i64 %.sroa.18.0164) ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %.sroa.024.sroa.0.0.extract.trunc62 = trunc i64 %i.o to i32
  %.sroa.024.sroa.17.0.extract.shift99 = lshr i64 %i.o, 32
  %.sroa.024.sroa.17.0.extract.trunc100 = trunc nuw i64 %.sroa.024.sroa.17.0.extract.shift99 to i32
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.lr.ph
  %.sroa.18.1 = phi i64 [ %.sroa.18.0164, %.lr.ph ], [ %.sroa.6.0.copyload, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  %.sroa.024.sroa.0.1 = phi i32 [ %.sroa.024.sroa.17.0166, %.lr.ph ], [ %.sroa.024.sroa.0.0.extract.trunc63, %bb.d ], [ %.sroa.024.sroa.0.0.extract.trunc62, %bb.e ] ; 2 uses
  %.sroa.024.sroa.17.1 = phi i32 [ %.0138167, %.lr.ph ], [ %.sroa.024.sroa.17.0.extract.trunc102, %bb.d ], [ %.sroa.024.sroa.17.0.extract.trunc100, %bb.e ] ; 2 uses
  %i.s = add i32 %i.g, 1                          ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @rope_bucket_len, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !191
  %.not144 = icmp ult i32 %i.f, %i.v
  br i1 %.not144, label %._crit_edge, label %.lr.ph, !llvm.loop !1776

._crit_edge:                                      ; preds = %bb.f
  %i.w = and i64 %.sroa.18.1, 4294967295
  %i.x = icmp eq i64 %i.w, 2
  br i1 %i.x, label %js_dup.exit147, label %js_dup.exit

js_dup.exit:                                      ; preds = %._crit_edge
  %i.y = zext i32 %.sroa.024.sroa.17.1 to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = zext i32 %.sroa.024.sroa.0.1 to i64
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !191
  %i.af = tail call fastcc { i64, i64 } @js_new_string_rope(ptr noundef %0, i64 %i.ab, i64 %.sroa.18.1, i64 %2, i64 %3) ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 6
  br i1 %i.aj, label %.thread, label %bb.g

js_dup.exit147:                                   ; preds = %bb.b, %._crit_edge
  %.0138.lcssa193.a = phi i32 [ %i.g, %._crit_edge ], [ 0, %bb.b ]
  %i.ak = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !191
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !191
  br label %bb.g

bb.g:                                             ; preds = %js_dup.exit, %js_dup.exit147
  %.0138.lcssa192 = phi i32 [ %.0138.lcssa193.a, %js_dup.exit147 ], [ %i.g, %js_dup.exit ] ; 2 uses
  %.sroa.18.2 = phi i64 [ %3, %js_dup.exit147 ], [ %i.ah, %js_dup.exit ] ; 2 uses
  %.sroa.024.sroa.0.2.in = phi i64 [ %2, %js_dup.exit147 ], [ %i.ag, %js_dup.exit ] ; 2 uses
  %i.an = zext i32 %.0138.lcssa192 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.g, %bb.h
  %i.at = phi i64 [ %i.bg, %bb.h ], [ %i.aq, %bb.g ]
  %i.au = phi ptr [ %i.bf, %bb.h ], [ %i.ap, %bb.g ]
  %i.av = phi ptr [ %i.be, %bb.h ], [ %i.ao, %bb.g ] ; 3 uses
  %.1139173 = phi i32 [ %i.bc, %bb.h ], [ %.0138.lcssa192, %bb.g ]
  %.sroa.024.sroa.17.3.in172 = phi i64 [ %i.bb, %bb.h ], [ %.sroa.024.sroa.0.2.in, %bb.g ]
  %.sroa.18.3171 = phi i64 [ %i.ay, %bb.h ], [ %.sroa.18.2, %bb.g ]
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = tail call fastcc { i64, i64 } @js_new_string_rope(ptr noundef %0, i64 %i.aw, i64 %i.at, i64 %.sroa.024.sroa.17.3.in172, i64 %.sroa.18.3171) ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 1      ; 3 uses
  store i32 0, ptr %i.av, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  store i64 2, ptr %i.au, align 8, !tbaa !240
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = icmp eq i64 %i.az, 6
  br i1 %i.ba, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph175
  %i.bb = extractvalue { i64, i64 } %i.ax, 0      ; 2 uses
  %i.bc = add i32 %.1139173, 1                    ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp eq i64 %i.bh, 2
  br i1 %i.bi, label %._crit_edge176, label %.lr.ph175, !llvm.loop !1777

._crit_edge176:                                   ; preds = %bb.h, %bb.g
  %.sroa.18.3.lcssa = phi i64 [ %.sroa.18.2, %bb.g ], [ %i.ay, %bb.h ]
  %.sroa.024.sroa.17.3.in.lcssa = phi i64 [ %.sroa.024.sroa.0.2.in, %bb.g ], [ %i.bb, %bb.h ]
  %.lcssa155 = phi ptr [ %i.ao, %bb.g ], [ %i.be, %bb.h ]
  %.lcssa = phi ptr [ %i.ap, %bb.g ], [ %i.bf, %bb.h ]
  store i64 %.sroa.024.sroa.17.3.in.lcssa, ptr %.lcssa155, align 8, !tbaa !218
  store i64 %.sroa.18.3.lcssa, ptr %.lcssa, align 8, !tbaa !240
  br label %.thread

bb.i:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = tail call fastcc i32 @js_rebalance_string_rope_rec(ptr noundef %0, ptr noundef %1, i64 %i.bk, i64 %i.bm)
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.j, label %.thread151

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = tail call fastcc i32 @js_rebalance_string_rope_rec(ptr noundef %0, ptr noundef %1, i64 %i.bp, i64 %i.br)
  %.not143 = icmp eq i32 %i.bs, 0
  br i1 %.not143, label %.thread, label %.thread151

.thread151:                                       ; preds = %bb.i, %bb.j
  br label %.thread

.thread:                                          ; preds = %bb.e, %.lr.ph175, %bb.b, %js_dup.exit, %._crit_edge176, %bb.j, %.thread151
  %.2 = phi i32 [ -1, %.thread151 ], [ 0, %._crit_edge176 ], [ 0, %bb.j ], [ -1, %.lr.ph175 ], [ -1, %js_dup.exit ], [ %i.f, %bb.b ], [ -1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal double @js_math_pow(double noundef %0, double noundef %1) #39 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.fabs.f64(double %0)
  %i.d = fcmp oeq double %i.c, 1.000000e+00
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call double @pow(double noundef %0, double noundef %1) #49
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi double [ %i.e, %bb.c ], [ +qnan, %bb.b ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_mul(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191
  %i.b = load i32, ptr %2, align 4, !tbaa !191
  %i.c = add i32 %i.b, %i.a                       ; 6 uses
  %i.d = icmp sgt i32 %i.c, 32768
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !790 ; 0 uses
  br label %js_bigint_normalize1.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i32 %i.c to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = add nsw i64 %i.g, 4                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232  ; 8 uses
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.j, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !196
  %i.o = add i64 %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !197
  %i.r = add i64 %i.q, -1
  %i.s = icmp ugt i64 %i.o, %i.r
  br i1 %i.s, label %bb.j, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.t = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.j, i64 noundef %i.h), !inline_history !791 ; 13 uses
  %.not.i.i42 = icmp eq ptr %i.t, null
  br i1 %.not.i.i42, label %._crit_edge63, label %bb.f

._crit_edge63:                                    ; preds = %bb.e
  %.pre64 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.l, align 8, !tbaa !217
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.l, align 8, !tbaa !217
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 3 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !218
  %i.y = icmp eq i16 %i.x, -1
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1064
  %i.aa = icmp eq ptr %i.w, %i.z
  br i1 %i.aa, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !219
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull %i.w) #49, !inline_history !143 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not15.i.i.i, i64 8, i64 %i.ad
  br label %bb.l

end_hunk_2
begin_hunk_3_@b64_encode:bb.a

bb.b:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !218
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = shl nuw nsw i32 %i.ar, 4
  %i.at = lshr i32 %i.ar, 2
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !218
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %.063.lcssa ; 2 uses
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !218
  %i.ay = and i32 %i.as, 48
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !218
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !218
  br label %.sink.split

bb.c:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !218
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %i.bh = getelementptr i8, ptr %i.bd, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !218
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bk, %i.bg
  %i.bm = lshr i32 %i.bf, 2
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !218
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %.063.lcssa ; 2 uses
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !218
  %i.br = lshr i32 %i.bl, 12
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !218
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !218
  %i.bx = shl nuw nsw i32 %i.bj, 2
  %i.by = and i32 %i.bx, 60
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !218
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i8 [ %i.cb, %bb.c ], [ 61, %bb.b ]
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %.063.lcssa
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %.063.lcssa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %.sink, ptr %i.ce, align 1, !tbaa !218
  %i.cf = add i64 %.063.lcssa, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  store i8 61, ptr %i.cg, align 1, !tbaa !218
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %._crit_edge
  %.1 = phi i64 [ %.063.lcssa, %._crit_edge ], [ %i.cf, %.sink.split ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 3) i32 @parse_last_chunk_option(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %JS_FreeCString.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull @.str.1133, i64 noundef 17), !inline_history !385 ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %JS_FreeCString.exit, label %JS_GetPropertyStr.exit

JS_GetPropertyStr.exit:                           ; preds = %bb.b
  %i.e = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.c, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 4 uses
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.c)
  %trunc = trunc i64 %i.g to i32                  ; 3 uses
  switch i32 %trunc, label %bb.c [
    i32 6, label %JS_FreeCString.exit
    i32 3, label %JS_FreeCString.exit.fold.split
  ]

bb.c:                                             ; preds = %JS_GetPropertyStr.exit
  %i.h = add i32 %trunc, 7
  %i.i = icmp ult i32 %i.h, 2
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.l = icmp ugt i32 %trunc, -10
  br i1 %i.l, label %bb.e, label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.d
  %i.m = inttoptr i64 %i.f to ptr
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191  ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !191
  %i.q = icmp slt i32 %i.o, 2
  br i1 %i.q, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @js_free_value_rt(ptr noundef %i.k, i64 %i.f, i64 %i.g), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %i.r = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1134) ; 0 uses
  br label %JS_FreeCString.exit

bb.g:                                             ; preds = %bb.c
  %i.s = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.f, i64 %i.g, i1 noundef zeroext false), !inline_history !131 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.v = inttoptr i64 %i.f to ptr
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !191  ; 2 uses
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !191
  %i.z = icmp slt i32 %i.x, 2
  br i1 %i.z, label %bb.h, label %JS_FreeValue.exit35

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.u, i64 %i.f, i64 %i.g), !inline_history !291
  br label %JS_FreeValue.exit35

JS_FreeValue.exit35:                              ; preds = %bb.g, %bb.h
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %JS_FreeCString.exit, label %bb.i

bb.i:                                             ; preds = %JS_FreeValue.exit35
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(6) @.str.1135) #52
  %.not32 = icmp eq i32 %i.aa, 0
  br i1 %.not32, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(7) @.str.1136) #52
  %.not33 = icmp eq i32 %i.ab, 0
  br i1 %.not33, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(20) @.str.1137) #52
  %.not34 = icmp eq i32 %i.ac, 0
  br i1 %.not34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1138) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.j, %bb.k
  %.030 = phi i32 [ -1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.i ], [ 2, %bb.k ] ; 2 uses
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.af = getelementptr inbounds i8, ptr %i.s, i64 -28 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.n, label %JS_FreeCString.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds i8, ptr %i.s, i64 -24
  %i.ak = ptrtoint ptr %i.aj to i64
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ae, i64 %i.ak, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit

JS_FreeCString.exit.fold.split:                   ; preds = %JS_GetPropertyStr.exit
  br label %JS_FreeCString.exit

JS_FreeCString.exit:                              ; preds = %JS_GetPropertyStr.exit, %JS_FreeCString.exit.fold.split, %bb.b, %bb.n, %bb.m, %JS_FreeValue.exit35, %bb.a, %JS_FreeValue.exit
  %.0 = phi i32 [ -1, %JS_FreeValue.exit ], [ 0, %bb.a ], [ -1, %JS_GetPropertyStr.exit ], [ %.030, %bb.n ], [ -1, %bb.b ], [ -1, %JS_FreeValue.exit35 ], [ %.030, %bb.m ], [ 0, %JS_FreeCString.exit.fold.split ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @from_base64(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, -2147483648) %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #35 {
bb.a:
  store i32 0, ptr %7, align 4, !tbaa !191
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %.preheader238

.preheader238:                                    ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 3
  %i.c = icmp ugt i64 %3, 2
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.thread

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %6, align 8, !tbaa !240
  br label %.thread217

.lr.ph:                                           ; preds = %.preheader238, %bb.c
  %i.e = phi i64 [ %i.bf, %bb.c ], [ 3, %.preheader238 ] ; 3 uses
  %i.f = phi i64 [ %i.bd, %bb.c ], [ 4, %.preheader238 ] ; 3 uses
  %.0169274316 = add i64 %i.e, -3                 ; 2 uses
  %.0155275315 = add i64 %i.f, -4                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.0155275315 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !218
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !218
  %i.l = getelementptr i8, ptr %i.g, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !218
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !218
  %i.q = getelementptr i8, ptr %i.g, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !218
  %i.s = zext i8 %i.r to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !218
  %i.v = getelementptr i8, ptr %i.g, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !218
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !218
  %i.aa = and i8 %i.k, 1
  %i.ab = and i8 %i.aa, %i.p
  %i.ac = and i8 %i.ab, %i.u
  %i.ad = and i8 %i.ac, %i.z
  %.not = icmp eq i8 %i.ad, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr @b64_val, i64 %i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !218
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 18
  %i.ai = getelementptr inbounds nuw i8, ptr @b64_val, i64 %i.n
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !218
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12               ; 2 uses
  %i.am = or i32 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr @b64_val, i64 %i.s
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !218
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 6                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @b64_val, i64 %i.x
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !218
  %i.at = or i32 %i.aq, %i.al
  %i.au = lshr i32 %i.am, 16
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.0169274316 ; 3 uses
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !218
  %i.ax = lshr i32 %i.at, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr i8, ptr %i.aw, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !218
  %i.ba = trunc i32 %i.aq to i8
  %i.bb = or i8 %i.as, %i.ba
  %i.bc = getelementptr i8, ptr %i.aw, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !218
  %i.bd = add i64 %i.f, 4                         ; 2 uses
  %i.be = icmp ule i64 %i.bd, %1
  %i.bf = add i64 %i.e, 3                         ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %3
  %i.bh = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.c, %.lr.ph, %.preheader238
  %.0169.lcssa = phi i64 [ 0, %.preheader238 ], [ %.0169274316, %.lr.ph ], [ %i.e, %bb.c ] ; 3 uses
  %.0155.lcssa = phi i64 [ 0, %.preheader238 ], [ %.0155275315, %.lr.ph ], [ %i.f, %bb.c ] ; 2 uses
  %.not189 = icmp ult i64 %.0169.lcssa, %3
  br i1 %.not189, label %.preheader.outer, label %bb.d

bb.d:                                             ; preds = %.thread
  store i64 %.0155.lcssa, ptr %6, align 8, !tbaa !240
  br label %.thread217

.lr.ph.i:                                         ; preds = %.preheader.outer, %bb.e
  %.06.i = phi i64 [ %i.bo, %bb.e ], [ %.3158.ph, %.preheader.outer ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !218
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !218
  %i.bn = and i8 %i.bm, 2
  %.not.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i, label %b64_skip_ws.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.bo = add i64 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %1
  br i1 %exitcond.not.i, label %b64_skip_ws.exit.thread, label %.lr.ph.i, !llvm.loop !2273

b64_skip_ws.exit:                                 ; preds = %.lr.ph.i, %.preheader.outer
  %.0.lcssa.i = phi i64 [ %.3158.ph, %.preheader.outer ], [ %.06.i, %.lr.ph.i ] ; 3 uses
  %i.bp = icmp eq i64 %.0.lcssa.i, %1
  br i1 %i.bp, label %b64_skip_ws.exit.thread, label %bb.l

b64_skip_ws.exit.thread:                          ; preds = %b64_skip_ws.exit, %b64_skip_ws.exit.1, %b64_skip_ws.exit.2, %b64_skip_ws.exit.3, %bb.e, %bb.ae, %bb.ah, %bb.al
  %.0165414 = phi i32 [ %i.ew, %bb.al ], [ %i.dc, %bb.ae ], [ %i.dy, %bb.ah ], [ 0, %bb.e ], [ 0, %b64_skip_ws.exit ], [ %i.dc, %b64_skip_ws.exit.1 ], [ %i.dy, %b64_skip_ws.exit.2 ], [ %i.ew, %b64_skip_ws.exit.3 ] ; 2 uses
  %.0161407 = phi i32 [ 3, %bb.al ], [ 1, %bb.ae ], [ 2, %bb.ah ], [ 0, %bb.e ], [ 0, %b64_skip_ws.exit ], [ 1, %b64_skip_ws.exit.1 ], [ 2, %b64_skip_ws.exit.2 ], [ 3, %b64_skip_ws.exit.3 ] ; 2 uses
  %i.bq = icmp sgt i32 %.0161407, 0
  br i1 %i.bq, label %bb.f, label %bb.k

bb.f:                                             ; preds = %b64_skip_ws.exit.thread
  switch i32 %5, label %bb.i [
    i32 2, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  store i64 %.3158.ph, ptr %6, align 8, !tbaa !240
  br label %.thread217

bb.h:                                             ; preds = %bb.f
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

bb.i:                                             ; preds = %bb.f
  switch i32 %.0161407, label %.unreachabledefault [
    i32 1, label %bb.j
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 0, label %bb.at
  ]

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

bb.k:                                             ; preds = %b64_skip_ws.exit.thread
  store i64 %1, ptr %6, align 8, !tbaa !240
  br label %.thread217

bb.l:                                             ; preds = %b64_skip_ws.exit
  %i.br = add i64 %.0.lcssa.i, 1                  ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !218 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 61
  br i1 %i.bu, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.am, %bb.ai, %bb.af, %bb.l
  %.lcssa = phi i64 [ %i.br, %bb.l ], [ %i.dm, %bb.af ], [ %i.ei, %bb.ai ], [ %i.fg, %bb.am ] ; 3 uses
  %.0165.lcssa409 = phi i32 [ 0, %bb.l ], [ %i.dc, %bb.af ], [ %i.dy, %bb.ai ], [ %i.ew, %bb.am ] ; 3 uses
  %i.bv = phi i1 [ true, %bb.l ], [ true, %bb.af ], [ false, %bb.ai ], [ false, %bb.am ]
  %i.bw = phi i1 [ false, %bb.l ], [ false, %bb.af ], [ true, %bb.ai ], [ false, %bb.am ] ; 2 uses
  %.0161.lcssa403 = phi i32 [ 0, %bb.l ], [ 1, %bb.af ], [ 2, %bb.ai ], [ 3, %bb.am ]
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

bb.o:                                             ; preds = %bb.m
  %i.bx = icmp ult i64 %.lcssa, %1
  br i1 %i.bx, label %.lr.ph.i195, label %b64_skip_ws.exit199

.lr.ph.i195:                                      ; preds = %bb.o, %bb.p
  %.06.i196 = phi i64 [ %i.ce, %bb.p ], [ %.lcssa, %bb.o ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i196
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !218
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !218
  %i.cd = and i8 %i.cc, 2
  %.not.i197 = icmp eq i8 %i.cd, 0
  br i1 %.not.i197, label %b64_skip_ws.exit199, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i195
  %i.ce = add i64 %.06.i196, 1                    ; 2 uses
  %exitcond.not.i198 = icmp eq i64 %i.ce, %1
  br i1 %exitcond.not.i198, label %b64_skip_ws.exit199, label %.lr.ph.i195, !llvm.loop !2273

b64_skip_ws.exit199:                              ; preds = %.lr.ph.i195, %bb.p, %bb.o
  %.0.lcssa.i194 = phi i64 [ %.lcssa, %bb.o ], [ %.06.i196, %.lr.ph.i195 ], [ %1, %bb.p ] ; 4 uses
  br i1 %i.bw, label %bb.q, label %b64_skip_ws.exit205

bb.q:                                             ; preds = %b64_skip_ws.exit199
  %i.cf = icmp eq i64 %.0.lcssa.i194, %1
  br i1 %i.cf, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cg = icmp eq i32 %5, 2
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 %.3158.ph, ptr %6, align 8, !tbaa !240
  br label %.thread217

bb.t:                                             ; preds = %bb.r
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

bb.u:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i194
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !218
  %i.cj = icmp eq i8 %i.ci, 61
  br i1 %i.cj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ck = add i64 %.0.lcssa.i194, 1               ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %1
  br i1 %i.cl, label %.lr.ph.i201, label %b64_skip_ws.exit205

.lr.ph.i201:                                      ; preds = %bb.v, %bb.w
  %.06.i202 = phi i64 [ %i.cs, %bb.w ], [ %i.ck, %bb.v ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i202
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !218
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !218
  %i.cr = and i8 %i.cq, 2
  %.not.i203 = icmp eq i8 %i.cr, 0
  br i1 %.not.i203, label %b64_skip_ws.exit205, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i201
  %i.cs = add i64 %.06.i202, 1                    ; 2 uses
  %exitcond.not.i204 = icmp eq i64 %i.cs, %1
  br i1 %exitcond.not.i204, label %b64_skip_ws.exit205.thread, label %.lr.ph.i201, !llvm.loop !2273

bb.x:                                             ; preds = %bb.u
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

b64_skip_ws.exit205:                              ; preds = %.lr.ph.i201, %bb.v, %b64_skip_ws.exit199
  %.4159 = phi i64 [ %.0.lcssa.i194, %b64_skip_ws.exit199 ], [ %i.ck, %bb.v ], [ %.06.i202, %.lr.ph.i201 ]
  %.not192 = icmp eq i64 %.4159, %1
  br i1 %.not192, label %b64_skip_ws.exit205.thread, label %bb.y

bb.y:                                             ; preds = %b64_skip_ws.exit205
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

b64_skip_ws.exit205.thread:                       ; preds = %bb.w, %b64_skip_ws.exit205
  %i.ct = icmp eq i32 %5, 1
  br i1 %i.ct, label %bb.z, label %.thread227

bb.z:                                             ; preds = %b64_skip_ws.exit205.thread
  %i.cu = select i1 %i.bw, i32 15, i32 3
  %i.cv = and i32 %i.cu, %.0165.lcssa409
  %.not193 = icmp eq i32 %i.cv, 0
  br i1 %.not193, label %.thread227, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

bb.ab:                                            ; preds = %bb.l
  %i.cw = zext i8 %i.bt to i64                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !218
  %i.cz = and i8 %i.cy, 1
  %.not190 = icmp eq i8 %i.cz, 0
  br i1 %.not190, label %bb.ac, label %.preheader.1

bb.ac:                                            ; preds = %bb.an, %bb.aj, %bb.ag, %bb.ab
  store i32 1, ptr %7, align 4, !tbaa !191
  br label %.thread217

bb.ad:                                            ; preds = %bb.ao, %bb.ak
  store i64 %.3158.ph, ptr %6, align 8, !tbaa !240
  br label %.thread217

.preheader.1:                                     ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr @b64_val, i64 %i.cw
  %i.db = load i8, ptr %i.da, align 1, !tbaa !218
  %i.dc = zext i8 %i.db to i32                    ; 4 uses
  %i.dd = icmp ult i64 %i.br, %1
  br i1 %i.dd, label %.lr.ph.i.1, label %b64_skip_ws.exit.1

end_hunk_3
