Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ht_dec?download=true
inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@rev_init:bb.a

bb.b:                                             ; preds = %._crit_edge
  %i.by = icmp samesign ugt i32 %i.bw, 3
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds i8, ptr %.lcssa58, i64 -4
  %.val.i = load i32, ptr %i.bz, align 4, !tbaa !9
  %i.ca = getelementptr inbounds i8, ptr %.lcssa58, i64 -5
  store ptr %i.ca, ptr %0, align 8, !tbaa !31
  %i.cb = add nsw i32 %i.bw, -4
  br label %.loopexit.i.sink.split

bb.d:                                             ; preds = %bb.b
  %.not48 = icmp eq i32 %i.bw, 0
  br i1 %.not48, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.d
  %i.cc = add nsw i32 %3, -3
  %xtraiter = and i32 %i.bw, 1
  %i.cd = icmp eq i32 %i.cc, %.
  br i1 %i.cd, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.bw, 2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.ce = phi ptr [ %.lcssa57, %.preheader.i.preheader.new ], [ %i.cn, %.preheader.i ] ; 3 uses
  %.047.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %i.cr, %.preheader.i ]
  %.04446.i = phi i32 [ 24, %.preheader.i.preheader.new ], [ %i.ct, %.preheader.i ] ; 3 uses
  %i.cf = phi i32 [ %i.bw, %.preheader.i.preheader.new ], [ %i.cs, %.preheader.i ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -1 ; 2 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !31
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl i32 %i.ci, %.04446.i
  %i.ck = or i32 %i.cj, %.047.i
  %i.cl = add nsw i32 %i.cf, -1
  store i32 %i.cl, ptr %i.e, align 4, !tbaa !30
  %i.cm = add nsw i32 %.04446.i, -8
  %i.cn = getelementptr inbounds i8, ptr %i.ce, i64 -2 ; 3 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !31
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 %i.cp, %i.cm
  %i.cr = or i32 %i.cq, %i.ck                     ; 3 uses
  %i.cs = add nsw i32 %i.cf, -2                   ; 3 uses
  store i32 %i.cs, ptr %i.e, align 4, !tbaa !30
  %i.ct = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !0

.loopexit.i.sink.split:                           ; preds = %bb.c, %.thread41
  %.sink = phi i32 [ %i.v, %.thread41 ], [ %i.cb, %bb.c ]
  %.ph = phi i64 [ %i.i, %.thread41 ], [ %.lcssa56, %bb.c ]
  %.ph46 = phi i1 [ %i.o, %.thread41 ], [ %.lcssa54, %bb.c ]
  %.ph47 = phi i32 [ %i.m, %.thread41 ], [ %.lcssa55, %bb.c ]
  %.1.i.ph = phi i32 [ 0, %.thread41 ], [ %.val.i, %bb.c ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi ptr [ %.lcssa57, %.preheader.i.preheader ], [ %i.cn, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.cr, %.loopexit.i.loopexit.unr-lcssa ]
  %.04446.i.epil.init = phi i32 [ 24, %.preheader.i.preheader ], [ %i.ct, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init60 = phi i32 [ %i.bw, %.preheader.i.preheader ], [ %i.cs, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i32 %i.bw to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.cu = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.cu, ptr %0, align 8, !tbaa !31
  %i.cv = load i8, ptr %.epil.init, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl i32 %i.cw, %.04446.i.epil.init
  %i.cy = or i32 %i.cx, %.047.i.epil.init
  %i.cz = add nsw i32 %.epil.init60, -1
  store i32 %i.cz, ptr %i.e, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.i.sink.split, %bb.d
  %i.da = phi i64 [ %.ph, %.loopexit.i.sink.split ], [ %.lcssa56, %bb.d ], [ %.lcssa56, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa56, %.preheader.i.epil.preheader ]
  %i.db = phi i1 [ %.ph46, %.loopexit.i.sink.split ], [ %.lcssa54, %bb.d ], [ %.lcssa54, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa54, %.preheader.i.epil.preheader ]
  %i.dc = phi i32 [ %.ph47, %.loopexit.i.sink.split ], [ %.lcssa55, %bb.d ], [ %.lcssa55, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa55, %.preheader.i.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %.1.i.ph, %.loopexit.i.sink.split ], [ 0, %bb.d ], [ %i.cr, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cy, %.preheader.i.epil.preheader ] ; 9 uses
  %i.dd = lshr i32 %.1.i, 24
  %i.de = and i32 %.1.i, 2130706432
  %i.df = icmp eq i32 %i.de, 2130706432
  %i.dg = select i1 %i.db, i1 %i.df, i1 false
  %i.dh = select i1 %i.dg, i32 7, i32 8           ; 2 uses
  %i.di = icmp ugt i32 %.1.i, -1879048193
  %i.dj = lshr i32 %.1.i, 16
  %i.dk = and i32 %i.dj, 255                      ; 2 uses
  %i.dl = shl nuw nsw i32 %i.dk, %i.dh
  %i.dm = or i32 %i.dl, %i.dd
  %i.dn = and i32 %.1.i, 8323072
  %i.do = icmp eq i32 %i.dn, 8323072
  %i.dp = and i1 %i.di, %i.do
  %i.dq = select i1 %i.dp, i32 7, i32 8
  %i.dr = add nuw nsw i32 %i.dh, %i.dq            ; 2 uses
  %i.ds = icmp samesign ugt i32 %i.dk, 143
  %i.dt = lshr i32 %.1.i, 8
  %i.du = and i32 %i.dt, 255                      ; 2 uses
  %i.dv = shl nuw nsw i32 %i.du, %i.dr
  %i.dw = or i32 %i.dm, %i.dv
  %i.dx = and i32 %.1.i, 32512
  %i.dy = icmp eq i32 %i.dx, 32512
  %i.dz = select i1 %i.ds, i1 %i.dy, i1 false
  %i.ea = select i1 %i.dz, i32 7, i32 8
  %i.eb = add nuw nsw i32 %i.dr, %i.ea            ; 2 uses
  %i.ec = icmp samesign ugt i32 %i.du, 143
  %i.ed = and i32 %.1.i, 255                      ; 2 uses
  %i.ee = shl nuw i32 %i.ed, %i.eb
  %i.ef = or i32 %i.dw, %i.ee
  %i.eg = and i32 %.1.i, 127
  %i.eh = icmp eq i32 %i.eg, 127
  %i.ei = select i1 %i.ec, i1 %i.eh, i1 false
  %i.ej = select i1 %i.ei, i32 7, i32 8
  %i.ek = icmp samesign ugt i32 %i.ed, 143
  %i.el = zext i1 %i.ek to i32
  %i.em = zext i32 %i.ef to i64
  %i.en = zext nneg i32 %i.dc to i64
  %i.eo = shl nuw i64 %i.em, %i.en
  %i.ep = or i64 %i.eo, %i.da
  store i64 %i.ep, ptr %i.j, align 8, !tbaa !16
  %i.eq = add nuw nsw i32 %i.ej, %i.dc
  %i.er = add nuw nsw i32 %i.eq, %i.eb
  store i32 %i.er, ptr %i.n, align 8, !tbaa !17
  store i32 %i.el, ptr %i.q, align 8, !tbaa !32
  br label %rev_read.exit

rev_read.exit:                                    ; preds = %._crit_edge, %.loopexit.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @frwd_init(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #3 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.e, align 4, !tbaa !34
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = add nsw i32 %2, -1                       ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !33
  %i.l = load i8, ptr %1, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]   ; 4 uses
  %i.o = phi i32 [ %i.m, %bb.b ], [ %3, %bb.a ]   ; 3 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !19
  store i32 8, ptr %i.b, align 8, !tbaa !20
  %i.q = icmp eq i32 %i.o, 255                    ; 3 uses
  %i.r = zext i1 %i.q to i32
  store i32 %i.r, ptr %i.c, align 4, !tbaa !36
  %exitcond.not = icmp eq i32 %i.h, 3
  br i1 %exitcond.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %2, -2                       ; 3 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !35
  %i.t = icmp sgt i32 %2, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !33
  %i.v = load i8, ptr %i.n, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 4 uses
  %i.y = phi i32 [ %i.w, %bb.e ], [ %3, %bb.d ]   ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.z, %i.o
  %i.ab = zext nneg i32 %i.aa to i64              ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !19
  %i.ac = select i1 %i.q, i32 15, i32 16          ; 4 uses
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !20
  %i.ad = icmp eq i32 %i.y, 255                   ; 3 uses
  %i.ae = zext i1 %i.ad to i32
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !36
  %exitcond.not.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not.1, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %2, -3                      ; 3 uses
  store i32 %i.af, ptr %i.d, align 8, !tbaa !35
  %i.ag = icmp sgt i32 %2, 2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !33
  %i.ai = load i8, ptr %i.x, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi ptr [ %i.ah, %bb.h ], [ %i.x, %bb.g ] ; 4 uses
  %i.al = phi i32 [ %i.aj, %bb.h ], [ %3, %bb.g ] ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = zext nneg i32 %i.ac to i64
  %i.ao = shl nuw nsw i64 %i.am, %i.an
  %i.ap = or i64 %i.ao, %i.ab                     ; 3 uses
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !19
  %4 = select i1 %i.ad, i32 7, i32 8
  %i.aq = add nuw nsw i32 %4, %i.ac               ; 4 uses
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !20
  %i.ar = icmp eq i32 %i.al, 255                  ; 3 uses
  %i.as = zext i1 %i.ar to i32
  store i32 %i.as, ptr %i.c, align 4, !tbaa !36
  %exitcond.not.2 = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.2, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %2, -4                      ; 2 uses
  store i32 %i.at, ptr %i.d, align 8, !tbaa !35
  %i.au = icmp sgt i32 %2, 3
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !33
  %i.aw = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi ptr [ %i.av, %bb.k ], [ %i.ak, %bb.j ]
  %i.az = phi i32 [ %i.ax, %bb.k ], [ %3, %bb.j ] ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = zext nneg i32 %i.aq to i64
  %i.bc = shl i64 %i.ba, %i.bb
  %i.bd = or i64 %i.bc, %i.ap                     ; 2 uses
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !19
  %5 = select i1 %i.ar, i32 7, i32 8
  %i.be = add nuw nsw i32 %5, %i.aq               ; 2 uses
  store i32 %i.be, ptr %i.b, align 8, !tbaa !20
  %i.bf = icmp eq i32 %i.az, 255                  ; 2 uses
  %i.bg = zext i1 %i.bf to i32
  store i32 %i.bg, ptr %i.c, align 4, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.f, %bb.c
  %.lcssa45 = phi ptr [ %i.n, %bb.c ], [ %i.x, %bb.f ], [ %i.ak, %bb.i ], [ %i.ay, %bb.l ] ; 3 uses
  %.lcssa44 = phi i64 [ %i.p, %bb.c ], [ %i.ab, %bb.f ], [ %i.ap, %bb.i ], [ %i.bd, %bb.l ]
  %.lcssa43 = phi i32 [ 8, %bb.c ], [ %i.ac, %bb.f ], [ %i.aq, %bb.i ], [ %i.be, %bb.l ] ; 2 uses
  %.lcssa42 = phi i1 [ %i.q, %bb.c ], [ %i.ad, %bb.f ], [ %i.ar, %bb.i ], [ %i.bf, %bb.l ]
  %.lcssa41 = phi i32 [ %2, %bb.c ], [ %i.i, %bb.f ], [ %i.s, %bb.i ], [ %i.af, %bb.l ] ; 3 uses
  %.lcssa40 = phi i32 [ %i.i, %bb.c ], [ %i.s, %bb.f ], [ %i.af, %bb.i ], [ %i.at, %bb.l ]
  %i.bh = icmp sgt i32 %.lcssa41, 4
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.val.i = load i32, ptr %.lcssa45, align 4, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa45, i64 4
  store ptr %i.bi, ptr %0, align 8, !tbaa !33
  %i.bj = add nsw i32 %.lcssa41, -5
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !35
  br label %frwd_read.exit

bb.o:                                             ; preds = %bb.m
  %i.bk = icmp sgt i32 %.lcssa41, 1
  %.not44.i = icmp ne i32 %3, 0
  %i.bl = sext i1 %.not44.i to i32                ; 2 uses
  br i1 %i.bk, label %.lr.ph.i, label %frwd_read.exit

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.bm = phi ptr [ %i.bo, %.lr.ph.i ], [ %.lcssa45, %bb.o ] ; 2 uses
  %.047.i = phi i32 [ %i.bv, %.lr.ph.i ], [ %i.bl, %bb.o ]
  %.04246.i = phi i32 [ %i.bx, %.lr.ph.i ], [ 0, %bb.o ] ; 3 uses
  %i.bn = phi i32 [ %i.bw, %.lr.ph.i ], [ %.lcssa40, %bb.o ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !33
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl i32 255, %.04246.i
  %i.bs = xor i32 %i.br, -1
  %i.bt = and i32 %.047.i, %i.bs
  %i.bu = shl i32 %i.bq, %.04246.i
  %i.bv = or i32 %i.bu, %i.bt                     ; 2 uses
  %i.bw = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.d, align 8, !tbaa !35
  %i.bx = add nuw nsw i32 %.04246.i, 8
  %i.by = icmp samesign ugt i32 %i.bn, 1
  br i1 %i.by, label %.lr.ph.i, label %frwd_read.exit, !llvm.loop !1

frwd_read.exit:                                   ; preds = %.lr.ph.i, %bb.n, %bb.o
  %.1.i = phi i32 [ %.val.i, %bb.n ], [ %i.bl, %bb.o ], [ %i.bv, %.lr.ph.i ] ; 4 uses
  %i.bz = select i1 %.lcssa42, i32 7, i32 8       ; 2 uses
  %i.ca = and i32 %.1.i, 255                      ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 255
  %i.cc = lshr i32 %.1.i, 8
  %i.cd = and i32 %i.cc, 255                      ; 2 uses
  %i.ce = shl nuw nsw i32 %i.cd, %i.bz
  %i.cf = select i1 %i.cb, i32 7, i32 8
  %i.cg = add nuw nsw i32 %i.bz, %i.cf            ; 2 uses
  %i.ch = icmp eq i32 %i.cd, 255
  %i.ci = lshr i32 %.1.i, 16
  %i.cj = and i32 %i.ci, 255                      ; 2 uses
  %i.ck = shl nuw nsw i32 %i.cj, %i.cg
  %i.cl = select i1 %i.ch, i32 7, i32 8
  %i.cm = add nuw nsw i32 %i.cg, %i.cl            ; 2 uses
  %i.cn = icmp eq i32 %i.cj, 255
  %i.co = lshr i32 %.1.i, 24                      ; 2 uses
  %i.cp = shl nuw i32 %i.co, %i.cm
  %i.cq = or i32 %i.ce, %i.ck
  %i.cr = or i32 %i.cq, %i.cp
  %i.cs = or i32 %i.cr, %i.ca
  %i.ct = select i1 %i.cn, i32 7, i32 8
  %i.cu = icmp eq i32 %i.co, 255
  %i.cv = zext i1 %i.cu to i32
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !36
  %i.cw = zext i32 %i.cs to i64
  %i.cx = zext nneg i32 %.lcssa43 to i64
  %i.cy = shl i64 %i.cw, %i.cx
  %i.cz = or i64 %i.cy, %.lcssa44
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !19
  %i.da = add nsw i32 %i.ct, %.lcssa43
  %i.db = add nsw i32 %i.da, %i.cm
  store i32 %i.db, ptr %i.b, align 8, !tbaa !20
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @rev_init_mrp(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 28)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i32 1, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !16
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 3                          ; 3 uses
  %i.m = add nsw i32 %3, -1                       ; 3 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !30
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -2 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !31
  %i.p = load i8, ptr %i.e, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.o, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.s = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.t = and i64 %i.s, 127
  %i.u = icmp eq i64 %i.t, 127
  %i.v = select i1 %i.u, i32 7, i32 8             ; 4 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !16
  store i32 %i.v, ptr %i.h, align 8, !tbaa !17
  %i.w = icmp samesign ugt i64 %i.s, 143          ; 3 uses
  %i.x = zext i1 %i.w to i32
  store i32 %i.x, ptr %i.g, align 8, !tbaa !32
  %exitcond.not = icmp eq i32 %i.l, 0
  br i1 %exitcond.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i32 %3, -2                       ; 3 uses
  store i32 %i.y, ptr %i.f, align 4, !tbaa !30
  %i.z = icmp sgt i32 %3, 1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !31
  %i.ab = load i8, ptr %i.r, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi ptr [ %i.aa, %bb.e ], [ %i.r, %bb.d ] ; 4 uses
  %i.ae = phi i64 [ %i.ac, %bb.e ], [ 0, %bb.d ]  ; 3 uses
  %i.af = and i64 %i.ae, 127
  %i.ag = icmp eq i64 %i.af, 127
  %i.ah = select i1 %i.w, i1 %i.ag, i1 false
  %i.ai = select i1 %i.ah, i32 7, i32 8
  %i.aj = zext nneg i32 %i.v to i64
  %i.ak = shl nuw nsw i64 %i.ae, %i.aj
  %i.al = or i64 %i.ak, %i.s                      ; 3 uses
  store i64 %i.al, ptr %i.i, align 8, !tbaa !16
  %i.am = add nuw nsw i32 %i.ai, %i.v             ; 4 uses
  store i32 %i.am, ptr %i.h, align 8, !tbaa !17
  %i.an = icmp samesign ugt i64 %i.ae, 143        ; 3 uses
  %i.ao = zext i1 %i.an to i32
  store i32 %i.ao, ptr %i.g, align 8, !tbaa !32
  %exitcond.not.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.1, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nsw i32 %3, -3                      ; 3 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !30
  %i.aq = icmp sgt i32 %3, 2
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !31
  %i.as = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi ptr [ %i.ar, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %i.av = phi i64 [ %i.at, %bb.h ], [ 0, %bb.g ]  ; 3 uses
  %i.aw = and i64 %i.av, 127
  %i.ax = icmp eq i64 %i.aw, 127
  %i.ay = select i1 %i.an, i1 %i.ax, i1 false
  %i.az = select i1 %i.ay, i32 7, i32 8
  %i.ba = zext nneg i32 %i.am to i64
  %i.bb = shl nuw nsw i64 %i.av, %i.ba
  %i.bc = or i64 %i.bb, %i.al                     ; 3 uses
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !16
  %i.bd = add nuw nsw i32 %i.az, %i.am            ; 4 uses
  store i32 %i.bd, ptr %i.h, align 8, !tbaa !17
  %i.be = icmp samesign ugt i64 %i.av, 143        ; 3 uses
  %i.bf = zext i1 %i.be to i32
  store i32 %i.bf, ptr %i.g, align 8, !tbaa !32
  %exitcond.not.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.2, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.bg, ptr %i.f, align 4, !tbaa !30
  %i.bh = icmp sgt i32 %3, 3
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !31
  %i.bj = load i8, ptr %i.au, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi ptr [ %i.bi, %bb.k ], [ %i.au, %bb.j ]
  %i.bm = phi i64 [ %i.bk, %bb.k ], [ 0, %bb.j ]  ; 3 uses
  %i.bn = and i64 %i.bm, 127
  %i.bo = icmp eq i64 %i.bn, 127
  %i.bp = select i1 %i.be, i1 %i.bo, i1 false
  %i.bq = select i1 %i.bp, i32 7, i32 8
  %i.br = zext nneg i32 %i.bd to i64
  %i.bs = shl i64 %i.bm, %i.br
  %i.bt = or i64 %i.bs, %i.bc                     ; 2 uses
  store i64 %i.bt, ptr %i.i, align 8, !tbaa !16
  %i.bu = add nuw nsw i32 %i.bq, %i.bd            ; 2 uses
  store i32 %i.bu, ptr %i.h, align 8, !tbaa !17
  %i.bv = icmp samesign ugt i64 %i.bm, 143        ; 2 uses
  %i.bw = zext i1 %i.bv to i32
  store i32 %i.bw, ptr %i.g, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.f, %bb.c
  %.lcssa47 = phi ptr [ %i.r, %bb.c ], [ %i.ad, %bb.f ], [ %i.au, %bb.i ], [ %i.bl, %bb.l ] ; 3 uses
  %.lcssa46 = phi i64 [ %i.s, %bb.c ], [ %i.al, %bb.f ], [ %i.bc, %bb.i ], [ %i.bt, %bb.l ]
  %.lcssa45 = phi i32 [ %i.v, %bb.c ], [ %i.am, %bb.f ], [ %i.bd, %bb.i ], [ %i.bu, %bb.l ] ; 3 uses
  %.lcssa44 = phi i1 [ %i.w, %bb.c ], [ %i.an, %bb.f ], [ %i.be, %bb.i ], [ %i.bv, %bb.l ]
  %.lcssa43 = phi i32 [ %3, %bb.c ], [ %i.m, %bb.f ], [ %i.y, %bb.i ], [ %i.ap, %bb.l ] ; 3 uses
  %.lcssa42 = phi i32 [ %i.m, %bb.c ], [ %i.y, %bb.f ], [ %i.ap, %bb.i ], [ %i.bg, %bb.l ]
  %i.bx = icmp ugt i32 %.lcssa45, 32
  br i1 %i.bx, label %rev_read_mrp.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = icmp sgt i32 %.lcssa43, 4
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds i8, ptr %.lcssa47, i64 -3
  %.val.i = load i32, ptr %i.bz, align 4, !tbaa !9
  %i.ca = getelementptr inbounds i8, ptr %.lcssa47, i64 -4
  store ptr %i.ca, ptr %0, align 8, !tbaa !31
  %i.cb = add nsw i32 %.lcssa43, -5
  store i32 %i.cb, ptr %i.f, align 4, !tbaa !30
  br label %.loopexit.i

bb.p:                                             ; preds = %bb.n
  %i.cc = icmp sgt i32 %.lcssa43, 1
  br i1 %i.cc, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %i.cd = phi ptr [ %i.cf, %.preheader.i ], [ %.lcssa47, %bb.p ] ; 2 uses
  %.047.i = phi i32 [ %i.cj, %.preheader.i ], [ 0, %bb.p ]
  %.04446.i = phi i32 [ %i.cl, %.preheader.i ], [ 24, %bb.p ] ; 2 uses
  %i.ce = phi i32 [ %i.ck, %.preheader.i ], [ %.lcssa42, %bb.p ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -1 ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !31
  %i.cg = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl i32 %i.ch, %.04446.i
  %i.cj = or i32 %i.ci, %.047.i                   ; 2 uses
  %i.ck = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.f, align 4, !tbaa !30
  %i.cl = add nsw i32 %.04446.i, -8
  %i.cm = icmp samesign ugt i32 %i.ce, 1
  br i1 %i.cm, label %.preheader.i, label %.loopexit.i, !llvm.loop !2

.loopexit.i:                                      ; preds = %.preheader.i, %bb.p, %bb.o
  %.1.i = phi i32 [ %.val.i, %bb.o ], [ 0, %bb.p ], [ %i.cj, %.preheader.i ] ; 9 uses
  %i.cn = lshr i32 %.1.i, 24
  %i.co = and i32 %.1.i, 2130706432
  %i.cp = icmp eq i32 %i.co, 2130706432
  %i.cq = select i1 %.lcssa44, i1 %i.cp, i1 false
  %i.cr = select i1 %i.cq, i32 7, i32 8           ; 2 uses
  %i.cs = icmp ugt i32 %.1.i, -1879048193
  %i.ct = lshr i32 %.1.i, 16
  %i.cu = and i32 %i.ct, 255                      ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, %i.cr
  %i.cw = or i32 %i.cv, %i.cn
end_hunk_0
