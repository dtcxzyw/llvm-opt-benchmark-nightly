Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !34
  %i.bj = zext i8 %i.bi to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i:         ; preds = %bb.j, %.new280
  %i.bk = phi ptr [ %i.bh, %bb.j ], [ %i.bg, %.new280 ] ; 4 uses
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.j ], [ 0, %.new280 ]
  %i.bl = shl i32 %.0.i.i.i.i, %i.bf
  %i.bm = or i32 %i.bl, %i.be                     ; 2 uses
  store i32 %i.bm, ptr %i.z, align 4, !tbaa !175
  %i.bn = add nsw i32 %i.bf, 8                    ; 3 uses
  store i32 %i.bn, ptr %i.y, align 8, !tbaa !174
  %.not.i.i.i.i.1 = icmp ult ptr %i.bk, %i.at
  br i1 %.not.i.i.i.i.1, label %bb.k, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.1

bb.k:                                             ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !58
  %i.bp = load i8, ptr %i.bk, align 1, !tbaa !34
  %i.bq = zext i8 %i.bp to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.1

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.1:       ; preds = %bb.k, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i
  %i.br = phi ptr [ %i.bo, %bb.k ], [ %i.bk, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i ]
  %.0.i.i.i.i.1 = phi i32 [ %i.bq, %bb.k ], [ 0, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i ]
  %i.bs = shl i32 %.0.i.i.i.i.1, %i.bn
  %i.bt = or i32 %i.bs, %i.bm                     ; 3 uses
  store i32 %i.bt, ptr %i.z, align 4, !tbaa !175
  %i.bu = add nsw i32 %i.bf, 16                   ; 2 uses
  store i32 %i.bu, ptr %i.y, align 8, !tbaa !174
  %i.bv = icmp slt i32 %i.bf, 9
  br i1 %i.bv, label %.new280, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i, !llvm.loop !158

_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i:  ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.1, %.prol.loopexit279
  %.lcssa242 = phi i32 [ %.lcssa242.unr, %.prol.loopexit279 ], [ %i.bt, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.1 ] ; 2 uses
  %.lcssa241 = phi i32 [ %i.ar, %.prol.loopexit279 ], [ %i.bn, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.1 ]
  %i.bw = lshr i32 %.lcssa242, 1
  %i.bx = add nuw nsw i32 %.lcssa241, 7
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i:         ; preds = %bb.g
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !175 ; 3 uses
  %i.by = lshr i32 %.pre.i.i, 1                   ; 4 uses
  store i32 %i.by, ptr %i.z, align 4, !tbaa !175
  %i.bz = add nsw i32 %i.ar, -1                   ; 4 uses
  store i32 %i.bz, ptr %i.y, align 8, !tbaa !174
  %i.ca = icmp samesign ult i32 %i.ar, 3
  br i1 %i.ca, label %bb.l, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i

bb.l:                                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 3 uses
  %.promoted.i.i26.i = load ptr, ptr %0, align 8, !tbaa !58 ; 5 uses
  %lcmp.mod.not.not.not = icmp eq i32 %i.ar, 1
  br i1 %lcmp.mod.not.not.not, label %.new, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l
  %.not.i.i.i28.i.prol = icmp ult ptr %.promoted.i.i26.i, %i.cb
  br i1 %.not.i.i.i28.i.prol, label %bb.m, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.prol

bb.m:                                             ; preds = %.prol.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %.promoted.i.i26.i, i64 1 ; 2 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !58
  %i.cd = load i8, ptr %.promoted.i.i26.i, align 1, !tbaa !34
  %i.ce = zext i8 %i.cd to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.prol

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.prol:  ; preds = %bb.m, %.prol.preheader
  %i.cf = phi ptr [ %i.cc, %bb.m ], [ %.promoted.i.i26.i, %.prol.preheader ]
  %.0.i.i.i30.i.prol = phi i32 [ %i.ce, %bb.m ], [ 0, %.prol.preheader ]
  %i.cg = shl i32 %.0.i.i.i30.i.prol, %i.bz
  %i.ch = or i32 %i.cg, %i.by                     ; 2 uses
  store i32 %i.ch, ptr %i.z, align 4, !tbaa !175
  %i.ci = add nuw nsw i32 %i.ar, 7                ; 2 uses
  store i32 %i.ci, ptr %i.y, align 8, !tbaa !174
  br label %.new

.new:                                             ; preds = %bb.l, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.prol
  %.unr = phi i32 [ %i.by, %bb.l ], [ %i.ch, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.prol ]
  %.unr276 = phi i32 [ %i.bz, %bb.l ], [ %i.ci, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.prol ]
  %.unr277 = phi ptr [ %.promoted.i.i26.i, %bb.l ], [ %i.cf, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.prol ]
  br label %bb.n

bb.n:                                             ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1, %.new
  %i.cj = phi i32 [ %.unr, %.new ], [ %i.cy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1 ]
  %i.ck = phi i32 [ %.unr276, %.new ], [ %i.cz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1 ] ; 4 uses
  %i.cl = phi ptr [ %.unr277, %.new ], [ %i.cw, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1 ] ; 4 uses
  %.not.i.i.i28.i = icmp ult ptr %i.cl, %i.cb
  br i1 %.not.i.i.i28.i, label %bb.o, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !58
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !34
  %i.co = zext i8 %i.cn to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i:       ; preds = %bb.o, %bb.n
  %i.cp = phi ptr [ %i.cm, %bb.o ], [ %i.cl, %bb.n ] ; 4 uses
  %.0.i.i.i30.i = phi i32 [ %i.co, %bb.o ], [ 0, %bb.n ]
  %i.cq = shl i32 %.0.i.i.i30.i, %i.ck
  %i.cr = or i32 %i.cq, %i.cj                     ; 2 uses
  store i32 %i.cr, ptr %i.z, align 4, !tbaa !175
  %i.cs = add nuw nsw i32 %i.ck, 8                ; 2 uses
  store i32 %i.cs, ptr %i.y, align 8, !tbaa !174
  %.not.i.i.i28.i.1 = icmp ult ptr %i.cp, %i.cb
  br i1 %.not.i.i.i28.i.1, label %bb.p, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1

bb.p:                                             ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 2 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !58
  %i.cu = load i8, ptr %i.cp, align 1, !tbaa !34
  %i.cv = zext i8 %i.cu to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1:     ; preds = %bb.p, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i
  %i.cw = phi ptr [ %i.ct, %bb.p ], [ %i.cp, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i ]
  %.0.i.i.i30.i.1 = phi i32 [ %i.cv, %bb.p ], [ 0, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i ]
  %i.cx = shl i32 %.0.i.i.i30.i.1, %i.cs
  %i.cy = or i32 %i.cx, %i.cr                     ; 3 uses
  store i32 %i.cy, ptr %i.z, align 4, !tbaa !175
  %i.cz = add nuw nsw i32 %i.ck, 16               ; 3 uses
  store i32 %i.cz, ptr %i.y, align 8, !tbaa !174
  %i.da = icmp slt i32 %i.ck, 9
  br i1 %i.da, label %bb.n, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i, !llvm.loop !158

_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i:       ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i
  %.in.i = phi i32 [ %.pre.i.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ], [ %.lcssa242, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i ], [ %.pre.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1 ]
  %i.db = phi i32 [ %i.bz, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ], [ %i.bx, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i ], [ %i.cz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1 ] ; 4 uses
  %i.dc = phi i32 [ %i.by, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ], [ %i.bw, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i ], [ %i.cy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i29.i.1 ] ; 2 uses
  %i.dd = and i32 %.in.i, 1
  %i.de = and i32 %i.dc, 3
  %i.df = lshr i32 %i.dc, 2                       ; 6 uses
  store i32 %i.df, ptr %i.z, align 4, !tbaa !175
  %i.dg = add nsw i32 %i.db, -2                   ; 7 uses
  store i32 %i.dg, ptr %i.y, align 8, !tbaa !174
  switch i32 %i.de, label %default.unreachable [
    i32 0, label %bb.q
    i32 3, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit
    i32 1, label %bb.ad
    i32 2, label %bb.af
  ]

bb.q:                                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.dh = and i32 %i.dg, 7                        ; 2 uses
  %.not.i32.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i32.i, label %bb.r, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i:       ; preds = %bb.q
  %i.di = lshr i32 %i.df, %i.dh                   ; 2 uses
  store i32 %i.di, ptr %i.z, align 4, !tbaa !175
  %i.dj = and i32 %i.dg, -8                       ; 2 uses
  store i32 %i.dj, ptr %i.y, align 8, !tbaa !174
  br label %bb.r

bb.r:                                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i, %bb.q
  %.promoted.i.i = phi i32 [ %i.di, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i ], [ %i.df, %bb.q ] ; 2 uses
  %.pr.i.i = phi i32 [ %i.dj, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i ], [ %i.dg, %bb.q ] ; 5 uses
  %.not262.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not262.i, label %.lr.ph42.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.dk = add nsw i32 %.pr.i.i, -1                ; 3 uses
  %i.dl = lshr i32 %i.dk, 3
  %i.dm = add nuw nsw i32 %i.dl, 1
  %wide.trip.count.i = zext nneg i32 %i.dm to i64 ; 3 uses
  %xtraiter368 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.dn = icmp ult i32 %.pr.i.i, 25
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741820
  br label %bb.u

.preheader.i.i.unr-lcssa:                         ; preds = %bb.u
  %lcmp.mod370.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod370.not, label %._crit_edge.i.i.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.preheader.i.i.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i.unr-lcssa ]
  %lcmp.mod373 = icmp ne i64 %xtraiter368, 0
  tail call void @llvm.assume(i1 %lcmp.mod373)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.s ] ; 3 uses
  %i.do = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.dr, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.dp = trunc i32 %i.do to i8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !34
  %i.dr = lshr i32 %i.do, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter368
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.epilog-lcssa, label %bb.s, !llvm.loop !159

.preheader.i.i.epilog-lcssa:                      ; preds = %bb.s
  %i.ds = icmp samesign ult i64 %indvars.iv.i.i.epil, 3
  %i.dt = add i32 %.pr.i.i, -8
  %i.du = and i32 %i.dk, -8
  %i.dv = sub i32 %i.dt, %i.du
  store i32 %i.dr, ptr %i.z, align 4, !tbaa !175
  store i32 %i.dv, ptr %i.y, align 8, !tbaa !174
  br i1 %i.ds, label %.lr.ph42.i.i, label %._crit_edge.i.i

.lr.ph42.i.i:                                     ; preds = %.preheader.i.i.epilog-lcssa, %bb.r
  %.0.lcssa61.i.i = phi i64 [ %wide.trip.count.i, %.preheader.i.i.epilog-lcssa ], [ 0, %bb.r ] ; 5 uses
  %i.dw = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 3 uses
  %.promoted43.i.i = load ptr, ptr %0, align 8, !tbaa !58 ; 5 uses
  %xtraiter376 = and i64 %.0.lcssa61.i.i, 1
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.prol.loopexit375, label %.prol.preheader374

.prol.preheader374:                               ; preds = %.lr.ph42.i.i
  %.not.i.i33.i.prol = icmp ult ptr %.promoted43.i.i, %i.dw
  br i1 %.not.i.i33.i.prol, label %bb.t, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol

bb.t:                                             ; preds = %.prol.preheader374
  %i.dx = getelementptr inbounds nuw i8, ptr %.promoted43.i.i, i64 1 ; 2 uses
  store ptr %i.dx, ptr %0, align 8, !tbaa !58
  %i.dy = load i8, ptr %.promoted43.i.i, align 1, !tbaa !34
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol

_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol:    ; preds = %bb.t, %.prol.preheader374
  %i.dz = phi ptr [ %i.dx, %bb.t ], [ %.promoted43.i.i, %.prol.preheader374 ]
  %.0.i.i35.i.prol = phi i8 [ %i.dy, %bb.t ], [ 0, %.prol.preheader374 ]
  %indvars.iv.next50.i.i.prol = add nuw nsw i64 %.0.lcssa61.i.i, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa61.i.i
  store i8 %.0.i.i35.i.prol, ptr %i.ea, align 1, !tbaa !34
  br label %.prol.loopexit375

.prol.loopexit375:                                ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol, %.lr.ph42.i.i
  %indvars.iv49.i.i.unr = phi i64 [ %.0.lcssa61.i.i, %.lr.ph42.i.i ], [ %indvars.iv.next50.i.i.prol, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol ]
  %.unr379 = phi ptr [ %.promoted43.i.i, %.lr.ph42.i.i ], [ %i.dz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol ]
  %i.eb = icmp eq i64 %.0.lcssa61.i.i, 3
  br i1 %i.eb, label %._crit_edge.i.i, label %.lr.ph42.i.i.new

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.u ] ; 5 uses
  %i.ec = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.new ], [ 0, %bb.u ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.u ]
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  store i8 %i.ed, ptr %i.ee, align 2, !tbaa !34
  %i.ef = lshr i32 %i.ec, 8
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !34
  %i.ej = lshr i32 %i.ec, 16
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store i8 %i.ek, ptr %i.em, align 2, !tbaa !34
  %i.en = lshr i32 %i.ec, 24
  %i.eo = trunc nuw i32 %i.en to i8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !34
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.unr-lcssa, label %bb.u, !llvm.loop !160

.lr.ph42.i.i.new:                                 ; preds = %.prol.loopexit375, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i.1, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1 ], [ %indvars.iv49.i.i.unr, %.prol.loopexit375 ] ; 3 uses
  %i.er = phi ptr [ %i.ey, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1 ], [ %.unr379, %.prol.loopexit375 ] ; 4 uses
  %.not.i.i33.i = icmp ult ptr %i.er, %i.dw
  br i1 %.not.i.i33.i, label %bb.v, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i

bb.v:                                             ; preds = %.lr.ph42.i.i.new
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1 ; 2 uses
  store ptr %i.es, ptr %0, align 8, !tbaa !58
  %i.et = load i8, ptr %i.er, align 1, !tbaa !34
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i:         ; preds = %bb.v, %.lr.ph42.i.i.new
  %i.eu = phi ptr [ %i.es, %bb.v ], [ %i.er, %.lr.ph42.i.i.new ] ; 4 uses
  %.0.i.i35.i = phi i8 [ %i.et, %bb.v ], [ 0, %.lr.ph42.i.i.new ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i
  store i8 %.0.i.i35.i, ptr %i.ev, align 1, !tbaa !34
  %.not.i.i33.i.1 = icmp ult ptr %i.eu, %i.dw
  br i1 %.not.i.i33.i.1, label %bb.w, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1

bb.w:                                             ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  store ptr %i.ew, ptr %0, align 8, !tbaa !58
  %i.ex = load i8, ptr %i.eu, align 1, !tbaa !34
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1

_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1:       ; preds = %bb.w, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i
  %i.ey = phi ptr [ %i.ew, %bb.w ], [ %i.eu, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i ]
  %.0.i.i35.i.1 = phi i8 [ %i.ex, %bb.w ], [ 0, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i ]
  %indvars.iv.next50.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store i8 %.0.i.i35.i.1, ptr %i.fa, align 1, !tbaa !34
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next50.i.i.1, 4
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph42.i.i.new, !llvm.loop !161

._crit_edge.i.i.critedge:                         ; preds = %.preheader.i.i.unr-lcssa
  %i.fb = add i32 %.pr.i.i, -8
  %i.fc = and i32 %i.dk, -8
  %i.fd = sub i32 %i.fb, %i.fc
  store i32 0, ptr %i.z, align 4, !tbaa !175
  store i32 %i.fd, ptr %i.y, align 8, !tbaa !174
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.prol.loopexit375, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1, %._crit_edge.i.i.critedge, %.preheader.i.i.epilog-lcssa
  %i.fe = load i16, ptr %i.c, align 2             ; 3 uses
  %i.ff = zext i16 %i.fe to i32
  %i.fg = load i16, ptr %i.ap, align 2
  %i.fh = xor i16 %i.fg, %i.fe
  %.not31.i.i = icmp eq i16 %i.fh, -1
  br i1 %.not31.i.i, label %bb.x, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.fi = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.fj = zext i16 %i.fe to i64                   ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  %i.fl = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.fm = icmp ugt ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.fj
  %i.fo = load ptr, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  %i.fp = icmp ugt ptr %i.fn, %i.fo
  br i1 %i.fp, label %bb.z, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i

bb.z:                                             ; preds = %bb.y
  %i.fq = load i32, ptr %i.i, align 8, !tbaa !173
  %.not.i33.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i33.i.i, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !60  ; 2 uses
  %i.fs = ptrtoint ptr %i.aq to i64
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = sub i64 %i.fw, %i.ft
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = add nsw i32 %i.fv, %i.ff
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i34.i.i = phi i32 [ %i.fy, %bb.aa ], [ %i.gb, %bb.ab ] ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, %.0.i34.i.i
  %i.gb = shl nsw i32 %.0.i34.i.i, 1
  br i1 %i.ga, label %bb.ab, label %bb.ac, !llvm.loop !162

bb.ac:                                            ; preds = %bb.ab
  %i.gc = sext i32 %.0.i34.i.i to i64             ; 2 uses
  %i.gd = tail call ptr @realloc(ptr noundef %i.fr, i64 noundef %i.gc) #35 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i

_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i:      ; preds = %bb.ac
  store ptr %i.gd, ptr %i.d, align 8, !tbaa !60
  %sext.i.i.i = shl i64 %i.fu, 32
  %i.gf = ashr exact i64 %sext.i.i.i, 32
  %i.gg = getelementptr inbounds i8, ptr %i.gd, i64 %i.gf ; 2 uses
  store ptr %i.gg, ptr %i.e, align 8, !tbaa !61
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 %i.gc
  store ptr %i.gh, ptr %i.h, align 8, !tbaa !172
  %.pre.i36.i = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i

_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i: ; preds = %bb.ac, %bb.z, %bb.x, %._crit_edge.i.i
  %.str.97.sink.i = phi ptr [ @.str.98, %bb.x ], [ @.str.97, %._crit_edge.i.i ], [ @.str.99, %bb.z ], [ @.str.27, %bb.ac ]
  store ptr %.str.97.sink.i, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i: ; preds = %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i, %bb.y
  %i.gi = phi ptr [ %.pre.i36.i, %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i ], [ %i.fi, %bb.y ]
  %i.gj = phi ptr [ %i.gg, %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i ], [ %i.aq, %bb.y ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gi, i64 %i.fj, i1 false)
  %i.gk = load ptr, ptr %0, align 8, !tbaa !58
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.fj
  store ptr %i.gl, ptr %0, align 8, !tbaa !58
  %i.gm = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.fj ; 2 uses
  store ptr %i.gn, ptr %i.e, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.em

bb.ad:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i
  %i.go = tail call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.af, ptr noundef nonnull @_ZL21stbi__zdefault_length, i32 noundef 288)
  %.not18.i = icmp eq i32 %i.go, 0
  br i1 %.not18.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = tail call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.ag, ptr noundef nonnull @_ZL23stbi__zdefault_distance, i32 noundef 32)
  %.not19.i = icmp eq i32 %i.gp, 0
  br i1 %.not19.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, label %bb.ck

default.unreachable:                              ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i
  unreachable

bb.af:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.gq = icmp samesign ult i32 %i.db, 7
  br i1 %i.gq, label %bb.ag, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i40.i

bb.ag:                                            ; preds = %bb.af
  %i.gr = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 3 uses
  %.promoted.i.i.i49.i = load ptr, ptr %0, align 8, !tbaa !58 ; 5 uses
  %lcmp.mod290.not.not = icmp ugt i32 %i.db, 2
  br i1 %lcmp.mod290.not.not, label %.prol.preheader286, label %.new288

.prol.preheader286:                               ; preds = %bb.ag
  %.not.i.i.i.i51.i.prol = icmp ult ptr %.promoted.i.i.i49.i, %i.gr
  br i1 %.not.i.i.i.i51.i.prol, label %bb.ah, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.prol

bb.ah:                                            ; preds = %.prol.preheader286
  %i.gs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i49.i, i64 1 ; 2 uses
  store ptr %i.gs, ptr %0, align 8, !tbaa !58
  %i.gt = load i8, ptr %.promoted.i.i.i49.i, align 1, !tbaa !34
  %i.gu = zext i8 %i.gt to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.prol

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.prol: ; preds = %bb.ah, %.prol.preheader286
  %i.gv = phi ptr [ %i.gs, %bb.ah ], [ %.promoted.i.i.i49.i, %.prol.preheader286 ]
  %.0.i.i.i.i53.i.prol = phi i32 [ %i.gu, %bb.ah ], [ 0, %.prol.preheader286 ]
  %i.gw = shl i32 %.0.i.i.i.i53.i.prol, %i.dg
  %i.gx = or i32 %i.gw, %i.df                     ; 2 uses
  store i32 %i.gx, ptr %i.z, align 4, !tbaa !175
  %i.gy = add nuw nsw i32 %i.db, 6                ; 2 uses
  store i32 %i.gy, ptr %i.y, align 8, !tbaa !174
  br label %.new288

.new288:                                          ; preds = %bb.ag, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.prol
  %.unr291 = phi i32 [ %i.df, %bb.ag ], [ %i.gx, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.prol ]
  %.unr292 = phi i32 [ %i.dg, %bb.ag ], [ %i.gy, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.prol ]
  %.unr293 = phi ptr [ %.promoted.i.i.i49.i, %bb.ag ], [ %i.gv, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.prol ]
  br label %bb.ai

bb.ai:                                            ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1, %.new288
  %i.gz = phi i32 [ %.unr291, %.new288 ], [ %i.ho, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1 ]
  %i.ha = phi i32 [ %.unr292, %.new288 ], [ %i.hp, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1 ] ; 4 uses
  %i.hb = phi ptr [ %.unr293, %.new288 ], [ %i.hm, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1 ] ; 4 uses
  %.not.i.i.i.i51.i = icmp ult ptr %i.hb, %i.gr
  br i1 %.not.i.i.i.i51.i, label %bb.aj, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i

bb.aj:                                            ; preds = %bb.ai
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1 ; 2 uses
  store ptr %i.hc, ptr %0, align 8, !tbaa !58
  %i.hd = load i8, ptr %i.hb, align 1, !tbaa !34
  %i.he = zext i8 %i.hd to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i:     ; preds = %bb.aj, %bb.ai
  %i.hf = phi ptr [ %i.hc, %bb.aj ], [ %i.hb, %bb.ai ] ; 4 uses
  %.0.i.i.i.i53.i = phi i32 [ %i.he, %bb.aj ], [ 0, %bb.ai ]
  %i.hg = shl i32 %.0.i.i.i.i53.i, %i.ha
  %i.hh = or i32 %i.hg, %i.gz                     ; 2 uses
  store i32 %i.hh, ptr %i.z, align 4, !tbaa !175
  %i.hi = add nsw i32 %i.ha, 8                    ; 2 uses
  store i32 %i.hi, ptr %i.y, align 8, !tbaa !174
  %.not.i.i.i.i51.i.1 = icmp ult ptr %i.hf, %i.gr
  br i1 %.not.i.i.i.i51.i.1, label %bb.ak, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1

bb.ak:                                            ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 1 ; 2 uses
  store ptr %i.hj, ptr %0, align 8, !tbaa !58
  %i.hk = load i8, ptr %i.hf, align 1, !tbaa !34
  %i.hl = zext i8 %i.hk to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1:   ; preds = %bb.ak, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i
  %i.hm = phi ptr [ %i.hj, %bb.ak ], [ %i.hf, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i ]
  %.0.i.i.i.i53.i.1 = phi i32 [ %i.hl, %bb.ak ], [ 0, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i ]
  %i.hn = shl i32 %.0.i.i.i.i53.i.1, %i.hi
  %i.ho = or i32 %i.hn, %i.hh                     ; 3 uses
  store i32 %i.ho, ptr %i.z, align 4, !tbaa !175
  %i.hp = add nsw i32 %i.ha, 16                   ; 3 uses
  store i32 %i.hp, ptr %i.y, align 8, !tbaa !174
  %i.hq = icmp slt i32 %i.ha, 9
  br i1 %i.hq, label %bb.ai, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i40.i, !llvm.loop !158

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i40.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1, %bb.af
  %i.hr = phi i32 [ %i.dg, %bb.af ], [ %i.hp, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1 ] ; 4 uses
  %i.hs = phi i32 [ %i.df, %bb.af ], [ %i.ho, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i52.i.1 ] ; 2 uses
  %i.ht = and i32 %i.hs, 31
  %i.hu = lshr i32 %i.hs, 5                       ; 4 uses
  store i32 %i.hu, ptr %i.z, align 4, !tbaa !175
  %i.hv = add nsw i32 %i.hr, -5                   ; 4 uses
  store i32 %i.hv, ptr %i.y, align 8, !tbaa !174
  %i.hw = add nuw nsw i32 %i.ht, 257              ; 3 uses
  %i.hx = icmp samesign ult i32 %i.hr, 10
  br i1 %i.hx, label %bb.al, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i

bb.al:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i40.i
  %i.hy = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 3 uses
  %.promoted.i.i64.i.i = load ptr, ptr %0, align 8, !tbaa !58 ; 5 uses
  %lcmp.mod298.not.not = icmp ugt i32 %i.hr, 5
  br i1 %lcmp.mod298.not.not, label %.prol.preheader294, label %.new296

.prol.preheader294:                               ; preds = %bb.al
end_hunk_0
