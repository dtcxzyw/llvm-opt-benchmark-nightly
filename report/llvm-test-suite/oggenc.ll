inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@vorbis_synthesis_headerin:bb.a
  %.1.i.i = phi i8 [ %i.q, %bb.d ], [ -1, %oggpack_read.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8
  store i64 2, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.1.i.i, ptr %i.a, align 1
  %.not.i.i.1 = icmp slt i64 %i.g, 7
  %i.t = icmp slt i64 %.pre-phi, 24
  %or.cond.1 = select i1 %.not.i.i.1, i1 %i.t, i1 false
  br i1 %or.cond.1, label %oggpack_read.exit.i.1, label %bb.e

bb.e:                                             ; preds = %oggpack_read.exit.i
  %i.u = load i8, ptr %i.r, align 1
  br label %oggpack_read.exit.i.1

oggpack_read.exit.i.1:                            ; preds = %bb.e, %oggpack_read.exit.i
  %.1.i.i.1 = phi i8 [ %i.u, %bb.e ], [ -1, %oggpack_read.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  store i64 3, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.1.i.i.1, ptr %i.s, align 1
  %.not.i.i.2 = icmp slt i64 %i.g, 8
  %i.x = icmp slt i64 %.pre-phi, 32
  %or.cond.2 = select i1 %.not.i.i.2, i1 %i.x, i1 false
  br i1 %or.cond.2, label %oggpack_read.exit.i.2, label %bb.f

bb.f:                                             ; preds = %oggpack_read.exit.i.1
  %i.y = load i8, ptr %i.v, align 1
  br label %oggpack_read.exit.i.2

oggpack_read.exit.i.2:                            ; preds = %bb.f, %oggpack_read.exit.i.1
  %.1.i.i.2 = phi i8 [ %i.y, %bb.f ], [ -1, %oggpack_read.exit.i.1 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.z, ptr %i.e, align 8
  store i64 4, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.1.i.i.2, ptr %i.w, align 1
  %.not.i.i.3 = icmp slt i64 %i.g, 9
  %i.ab = icmp slt i64 %.pre-phi, 40
  %or.cond.3 = select i1 %.not.i.i.3, i1 %i.ab, i1 false
  br i1 %or.cond.3, label %oggpack_read.exit.i.3, label %bb.g

bb.g:                                             ; preds = %oggpack_read.exit.i.2
  %i.ac = load i8, ptr %i.z, align 1
  br label %oggpack_read.exit.i.3

oggpack_read.exit.i.3:                            ; preds = %bb.g, %oggpack_read.exit.i.2
  %.1.i.i.3 = phi i8 [ %i.ac, %bb.g ], [ -1, %oggpack_read.exit.i.2 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  store ptr %i.ad, ptr %i.e, align 8
  store i64 5, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %.1.i.i.3, ptr %i.aa, align 1
  %.not.i.i.4 = icmp slt i64 %i.g, 10
  %i.af = icmp slt i64 %.pre-phi, 48
  %or.cond.4 = select i1 %.not.i.i.4, i1 %i.af, i1 false
  br i1 %or.cond.4, label %oggpack_read.exit.i.4, label %bb.h

bb.h:                                             ; preds = %oggpack_read.exit.i.3
  %i.ag = load i8, ptr %i.ad, align 1
  br label %oggpack_read.exit.i.4

oggpack_read.exit.i.4:                            ; preds = %bb.h, %oggpack_read.exit.i.3
  %.1.i.i.4 = phi i8 [ %i.ag, %bb.h ], [ -1, %oggpack_read.exit.i.3 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  store ptr %i.ah, ptr %i.e, align 8
  store i64 6, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %.1.i.i.4, ptr %i.ae, align 1
  %.not.i.i.5 = icmp slt i64 %i.g, 11
  %i.aj = icmp slt i64 %.pre-phi, 56
  %or.cond.5 = select i1 %.not.i.i.5, i1 %i.aj, i1 false
  br i1 %or.cond.5, label %oggpack_read.exit.i.5, label %bb.i

bb.i:                                             ; preds = %oggpack_read.exit.i.4
  %i.ak = load i8, ptr %i.ah, align 1
  br label %oggpack_read.exit.i.5

oggpack_read.exit.i.5:                            ; preds = %bb.i, %oggpack_read.exit.i.4
  %.1.i.i.5 = phi i8 [ %i.ak, %bb.i ], [ -1, %oggpack_read.exit.i.4 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 3 uses
  store ptr %i.al, ptr %i.e, align 8
  store i64 7, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  store i8 %.1.i.i.5, ptr %i.ai, align 1
  %i.am = load i32, ptr %i.a, align 1
  %i.an = xor i32 %i.am, 1651666806
  %i.ao = getelementptr i8, ptr %i.a, i64 4
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = xor i32 %i.aq, 29545
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not13 = icmp eq i32 %i.au, 0
  br i1 %.not13, label %bb.j, label %_vorbis_unpack_comment.exit

bb.j:                                             ; preds = %oggpack_read.exit.i.5
  switch i32 %.1.i, label %_vorbis_unpack_comment.exit [
    i32 1, label %bb.k
    i32 3, label %bb.n
    i32 5, label %bb.ay
  ]

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %.not14 = icmp eq i64 %i.aw, 0
  br i1 %.not14, label %_vorbis_unpack_comment.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %.not15 = icmp eq i64 %i.ay, 0
  br i1 %.not15, label %bb.m, label %_vorbis_unpack_comment.exit

bb.m:                                             ; preds = %bb.l
  %i.az = call fastcc i32 @_vorbis_unpack_info(ptr noundef nonnull %0, ptr noundef %3)
  br label %_vorbis_unpack_comment.exit

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_vorbis_unpack_comment.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i18 = icmp slt i64 %i.g, 12
  %i.bd = icmp slt i64 %.pre-phi, 88
  %or.cond178 = select i1 %.not.i.i18, i1 %i.bd, i1 false
  br i1 %or.cond178, label %oggpack_read.exit.i20.thread, label %oggpack_read.exit.i20

oggpack_read.exit.i20.thread:                     ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store ptr %i.be, ptr %i.e, align 8
  store i64 11, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  br label %_v_readstring.exit69.i

oggpack_read.exit.i20:                            ; preds = %bb.o
  %i.bf = load i32, ptr %i.al, align 1            ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 3 uses
  store ptr %i.bg, ptr %i.e, align 8
  store i64 11, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.bh = icmp slt i32 %i.bf, 0
  br i1 %i.bh, label %_v_readstring.exit69.i, label %bb.p

bb.p:                                             ; preds = %oggpack_read.exit.i20
  %narrow = add nuw i32 %i.bf, 1
  %i.bi = zext i32 %narrow to i64
  %i.bj = tail call noalias ptr @calloc(i64 noundef %i.bi, i64 noundef 1) #71 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bj, ptr %i.bk, align 8
  %.not3.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not3.i.i, label %_v_readstring.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.bl = add nsw i32 %i.bf, -1                   ; 4 uses
  %.not.i.i.peel.i = icmp slt i64 %i.g, 16
  %i.bm = icmp slt i64 %.pre-phi, 96
  %or.cond179 = select i1 %.not.i.i.peel.i, i1 %i.bm, i1 false
  br i1 %or.cond179, label %oggpack_read.exit.i.peel.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bn = load i8, ptr %i.bg, align 1
  br label %oggpack_read.exit.i.peel.i

oggpack_read.exit.i.peel.i:                       ; preds = %.lr.ph.i.i, %bb.q
  %.1.i.i.peel.i = phi i8 [ %i.bn, %bb.q ], [ -1, %.lr.ph.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  store ptr %i.bo, ptr %i.e, align 8
  store i64 12, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  store i8 %.1.i.i.peel.i, ptr %i.bj, align 1
  %.not.i38.peel.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i38.peel.i, label %_v_readstring.exit.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %oggpack_read.exit.i.peel.i
  %xtraiter = and i32 %i.bl, 1
  %i.bp = icmp eq i32 %i.bf, 2
  br i1 %i.bp, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new

.peel.next.i.preheader.new:                       ; preds = %.peel.next.i.preheader
  %unroll_iter = and i32 %i.bl, -2
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %oggpack_read.exit.i.i.1, %.peel.next.i.preheader.new
  %i.bq = phi ptr [ %i.bo, %.peel.next.i.preheader.new ], [ %i.ca, %oggpack_read.exit.i.i.1 ] ; 3 uses
  %i.br = phi i64 [ 12, %.peel.next.i.preheader.new ], [ %i.cb, %oggpack_read.exit.i.i.1 ] ; 4 uses
  %.024.i.pn.i = phi ptr [ %i.bj, %.peel.next.i.preheader.new ], [ %.024.i.i.1, %oggpack_read.exit.i.i.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.peel.next.i.preheader.new ], [ %niter.next.1, %oggpack_read.exit.i.i.1 ]
  %.024.i.i = getelementptr inbounds nuw i8, ptr %.024.i.pn.i, i64 1
  %.not.i.i.i = icmp sge i64 %i.br, %invariant.op
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = icmp sgt i64 %i.bs, %invariant.op68
  %or.cond73 = select i1 %.not.i.i.i, i1 %i.bt, i1 false
  br i1 %or.cond73, label %oggpack_read.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.peel.next.i
  %i.bu = load i8, ptr %i.bq, align 1
  br label %oggpack_read.exit.i.i

oggpack_read.exit.i.i:                            ; preds = %.peel.next.i, %bb.r
  %.1.i.i.i = phi i8 [ %i.bu, %bb.r ], [ -1, %.peel.next.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  store ptr %i.bv, ptr %i.e, align 8
  %i.bw = or disjoint i64 %i.br, 1                ; 3 uses
  store i64 %i.bw, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  store i8 %.1.i.i.i, ptr %.024.i.i, align 1
  %.024.i.i.1 = getelementptr inbounds nuw i8, ptr %.024.i.pn.i, i64 2 ; 3 uses
  %.not.i.i.i.1 = icmp sge i64 %i.bw, %invariant.op
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = icmp sgt i64 %i.bx, %invariant.op68
  %or.cond73.1 = select i1 %.not.i.i.i.1, i1 %i.by, i1 false
  br i1 %or.cond73.1, label %oggpack_read.exit.i.i.1, label %bb.s

bb.s:                                             ; preds = %oggpack_read.exit.i.i
  %i.bz = load i8, ptr %i.bv, align 1
  br label %oggpack_read.exit.i.i.1

oggpack_read.exit.i.i.1:                          ; preds = %bb.s, %oggpack_read.exit.i.i
  %.1.i.i.i.1 = phi i8 [ %i.bz, %bb.s ], [ -1, %oggpack_read.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 4 uses
  store ptr %i.ca, ptr %i.e, align 8
  %i.cb = add nuw nsw i64 %i.br, 2                ; 4 uses
  store i64 %i.cb, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  store i8 %.1.i.i.i.1, ptr %.024.i.i.1, align 1
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_v_readstring.exit.i.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !379

_v_readstring.exit.i.loopexit.unr-lcssa:          ; preds = %oggpack_read.exit.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_v_readstring.exit.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %_v_readstring.exit.i.loopexit.unr-lcssa, %.peel.next.i.preheader
  %.epil.init = phi ptr [ %i.bo, %.peel.next.i.preheader ], [ %i.ca, %_v_readstring.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init221 = phi i64 [ 12, %.peel.next.i.preheader ], [ %i.cb, %_v_readstring.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.024.i.pn.i.epil.init = phi ptr [ %i.bj, %.peel.next.i.preheader ], [ %.024.i.i.1, %_v_readstring.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod224 = trunc i32 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %.024.i.i.epil = getelementptr inbounds nuw i8, ptr %.024.i.pn.i.epil.init, i64 1
  %.not.i.i.i.epil = icmp sge i64 %.epil.init221, %invariant.op
  %i.cc = shl nsw i64 %.epil.init221, 3
  %i.cd = icmp sgt i64 %i.cc, %invariant.op68
  %or.cond73.epil = select i1 %.not.i.i.i.epil, i1 %i.cd, i1 false
  br i1 %or.cond73.epil, label %oggpack_read.exit.i.i.epil, label %bb.t

bb.t:                                             ; preds = %.peel.next.i.epil.preheader
  %i.ce = load i8, ptr %.epil.init, align 1
  br label %oggpack_read.exit.i.i.epil

oggpack_read.exit.i.i.epil:                       ; preds = %bb.t, %.peel.next.i.epil.preheader
  %.1.i.i.i.epil = phi i8 [ %i.ce, %bb.t ], [ -1, %.peel.next.i.epil.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1 ; 2 uses
  store ptr %i.cf, ptr %i.e, align 8
  %i.cg = add nuw nsw i64 %.epil.init221, 1       ; 2 uses
  store i64 %i.cg, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  store i8 %.1.i.i.i.epil, ptr %.024.i.i.epil, align 1
  br label %_v_readstring.exit.i

_v_readstring.exit.i:                             ; preds = %oggpack_read.exit.i.i.epil, %_v_readstring.exit.i.loopexit.unr-lcssa, %oggpack_read.exit.i.peel.i, %bb.p
  %.pre94.i = phi ptr [ %i.bg, %bb.p ], [ %i.bo, %oggpack_read.exit.i.peel.i ], [ %i.ca, %_v_readstring.exit.i.loopexit.unr-lcssa ], [ %i.cf, %oggpack_read.exit.i.i.epil ] ; 2 uses
  %i.ch = phi i64 [ 11, %bb.p ], [ 12, %oggpack_read.exit.i.peel.i ], [ %i.cb, %_v_readstring.exit.i.loopexit.unr-lcssa ], [ %i.cg, %oggpack_read.exit.i.i.epil ] ; 2 uses
  %i.ci = add nsw i64 %i.ch, 4                    ; 3 uses
  %.not.i40.i = icmp slt i64 %i.ci, %i.g
  br i1 %.not.i40.i, label %oggpack_read.exit47.i, label %bb.u

bb.u:                                             ; preds = %_v_readstring.exit.i
  %i.cj = shl nsw i64 %i.ch, 3
  %i.ck = add nsw i64 %i.cj, 32
  %i.cl = icmp sgt i64 %i.ck, %.pre-phi
  br i1 %i.cl, label %oggpack_read.exit47.i.thread, label %oggpack_read.exit47.i

oggpack_read.exit47.i.thread:                     ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.cm, align 8
  br label %._crit_edge.i79.i

oggpack_read.exit47.i:                            ; preds = %_v_readstring.exit.i, %bb.u
  %i.cn = load i32, ptr %.pre94.i, align 1        ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre94.i, i64 4
  store ptr %i.co, ptr %i.e, align 8
  store i64 %i.ci, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i32 %i.cn, ptr %i.cp, align 8
  %i.cq = icmp slt i32 %i.cn, 0
  br i1 %i.cq, label %._crit_edge.i79.i, label %bb.v

bb.v:                                             ; preds = %oggpack_read.exit47.i
  %narrow200 = add nuw i32 %i.cn, 1
  %i.cr = zext i32 %narrow200 to i64
  %i.cs = tail call noalias ptr @calloc(i64 noundef %i.cr, i64 noundef 8) #71
  store ptr %i.cs, ptr %1, align 8
  %i.ct = load i32, ptr %i.cp, align 8
  %i.cu = add nsw i32 %i.ct, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = tail call noalias ptr @calloc(i64 noundef %i.cv, i64 noundef 4) #71
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8
  %i.cy = load i32, ptr %i.cp, align 8            ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i, label %._crit_edge.i24

.lr.ph.i:                                         ; preds = %bb.v, %.loopexit.i
  %i.da = phi i32 [ %i.hi, %.loopexit.i ], [ %i.cy, %bb.v ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %bb.v ] ; 4 uses
  %i.db = load i32, ptr %i.i, align 8             ; 11 uses
  %i.dc = add nsw i32 %i.db, 32                   ; 2 uses
  %i.dd = load i64, ptr %3, align 8               ; 3 uses
  %i.de = add nsw i64 %i.dd, 4
  %i.df = load i64, ptr %i.h, align 8             ; 2 uses
  %.not.i48.i = icmp slt i64 %i.de, %i.df
  br i1 %.not.i48.i, label %.lr.ph.i._crit_edge, label %bb.w

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %.pre98 = load ptr, ptr %i.e, align 8
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i
  %i.dg = shl nsw i64 %i.dd, 3
  %i.dh = sext i32 %i.dc to i64
  %i.di = add nsw i64 %i.dg, %i.dh
  %i.dj = shl nsw i64 %i.df, 3
  %i.dk = icmp sgt i64 %i.di, %i.dj
  %.pre99 = load ptr, ptr %i.e, align 8           ; 2 uses
  br i1 %i.dk, label %oggpack_read.exit55.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i._crit_edge, %bb.w
  %i.dl = phi ptr [ %.pre98, %.lr.ph.i._crit_edge ], [ %.pre99, %bb.w ] ; 6 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = lshr i32 %i.dn, %i.db                   ; 2 uses
  %i.dp = icmp sgt i32 %i.db, -24
  br i1 %i.dp, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = sub nsw i32 8, %i.db
  %i.du = shl i32 %i.ds, %i.dt
  %i.dv = or i32 %i.du, %i.do                     ; 2 uses
  %i.dw = icmp sgt i32 %i.db, -16
  br i1 %i.dw, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i32
  %i.ea = sub nsw i32 16, %i.db
  %i.eb = shl i32 %i.dz, %i.ea
  %i.ec = or i32 %i.eb, %i.dv                     ; 2 uses
  %i.ed = icmp sgt i32 %i.db, -8
  br i1 %i.ed, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i32
  %i.eh = sub nsw i32 24, %i.db
  %i.ei = shl i32 %i.eg, %i.eh
  %i.ej = or i32 %i.ei, %i.ec                     ; 2 uses
  %i.ek = icmp slt i32 %i.db, 1
  br i1 %i.ek, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.em = load i8, ptr %i.el, align 1
  %i.en = zext i8 %i.em to i32
  %i.eo = sub nsw i32 32, %i.db
  %i.ep = shl i32 %i.en, %i.eo
  %i.eq = or i32 %i.ep, %i.ej
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i49.in.i = phi i32 [ %i.eq, %bb.ab ], [ %i.do, %bb.x ], [ %i.ej, %bb.aa ], [ %i.ec, %bb.z ], [ %i.dv, %bb.y ]
  %.0.i49.i = zext i32 %.0.i49.in.i to i64
  br label %oggpack_read.exit55.i

oggpack_read.exit55.i:                            ; preds = %bb.w, %bb.ac
  %i.er = phi ptr [ %i.dl, %bb.ac ], [ %.pre99, %bb.w ]
  %.1.i50.i = phi i64 [ %.0.i49.i, %bb.ac ], [ -1, %bb.w ] ; 2 uses
  %i.es = sdiv i32 %i.dc, 8
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %i.et
  store ptr %i.eu, ptr %i.e, align 8
  %i.ev = add nsw i64 %i.dd, %i.et
  store i64 %i.ev, ptr %3, align 8
  %i.ew = and i32 %i.db, 7
  store i32 %i.ew, ptr %i.i, align 8
  %i.ex = trunc i64 %.1.i50.i to i32              ; 4 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %.preheader.i.i, label %bb.ad

bb.ad:                                            ; preds = %oggpack_read.exit55.i
  %i.ez = load ptr, ptr %i.cx, align 8
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i
  store i32 %i.ex, ptr %i.fa, align 4
  %i.fb = add nuw nsw i64 %.1.i50.i, 1
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = tail call noalias ptr @calloc(i64 noundef %i.fc, i64 noundef 1) #71
  %i.fe = load ptr, ptr %1, align 8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i
  store ptr %i.fd, ptr %i.ff, align 8
  %.not3.i56.i = icmp eq i32 %i.ex, 0
  br i1 %.not3.i56.i, label %.loopexit.i, label %.lr.ph.i57.preheader.i

.lr.ph.i57.preheader.i:                           ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@floor1_fit:bb.a
inspect_error.exit.thread:                        ; preds = %bb.q, %bb.p, %bb.m, %bb.l, %inspect_error.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #62
  store i32 -200, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #62
  store i32 -200, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #62
  store i32 -200, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #62
  store i32 -200, ptr %i.k, align 4
  %i.fj = sext i32 %i.bt to i64
  %i.fk = getelementptr inbounds [64 x i8], ptr %4, i64 %i.fj
  %i.fl = sub nsw i32 %i.bj, %i.bt
  call fastcc void @fit_line(ptr noundef %i.fk, i32 noundef %i.fl, ptr noundef %i.h, ptr noundef %i.i)
  %i.fm = getelementptr inbounds [64 x i8], ptr %4, i64 %i.bk
  %i.fn = sub nsw i32 %i.bw, %i.bj
  call fastcc void @fit_line(ptr noundef %i.fm, i32 noundef %i.fn, ptr noundef %i.j, ptr noundef %i.k)
  %i.fo = load i32, ptr %i.h, align 4             ; 2 uses
  store i32 %i.fo, ptr %i.ce, align 4
  %i.fp = icmp eq i32 %i.bm, 0
  br i1 %i.fp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %inspect_error.exit.thread
  store i32 %i.fo, ptr %i.cb, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %inspect_error.exit.thread
  %i.fq = load i32, ptr %i.i, align 4             ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6202
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6202
  store i32 %i.fs, ptr %i.ft, align 4
  %i.fu = load i32, ptr %i.k, align 4             ; 2 uses
  store i32 %i.fu, ptr %i.cj, align 4
  %i.fv = icmp eq i32 %i.bo, 1
  br i1 %i.fv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.fu, ptr %i.cm, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fw = icmp sgt i32 %i.fq, -1
  %i.fx = icmp sgt i32 %i.fs, -1
  %or.cond3 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond3, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.fy = icmp sgt i32 %i.bj, 0
  br i1 %i.fy, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %bb.x
  %i.fz = add nsw i32 %i.bj, -1
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = trunc i64 %.6202 to i32
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph195, %bb.z
  %.0144193 = phi i64 [ %i.ga, %.lr.ph195 ], [ %i.gf, %bb.z ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0144193 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = icmp eq i32 %i.gd, %i.bo
  br i1 %i.ge, label %bb.z, label %._crit_edge196

bb.z:                                             ; preds = %bb.y
  store i32 %i.gb, ptr %i.gc, align 4
  %i.gf = add nsw i64 %.0144193, -1
  %i.gg = icmp sgt i64 %.0144193, 0
  br i1 %i.gg, label %bb.y, label %._crit_edge196, !llvm.loop !699

._crit_edge196:                                   ; preds = %bb.z, %bb.y, %bb.x
  %i.gh = add nsw i32 %i.bj, 1                    ; 2 uses
  %i.gi = icmp slt i32 %i.gh, %i.q
  br i1 %i.gi, label %.lr.ph200, label %.loopexit

.lr.ph200:                                        ; preds = %._crit_edge196
  %i.gj = sext i32 %i.gh to i64
  %i.gk = trunc i64 %.6202 to i32
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph200, %bb.ab
  %.1145198 = phi i64 [ %i.gj, %.lr.ph200 ], [ %i.go, %bb.ab ] ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.1145198 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = icmp eq i32 %i.gm, %i.bm
  br i1 %i.gn, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.gk, ptr %i.gl, align 4
  %i.go = add nsw i64 %.1145198, 1                ; 2 uses
  %exitcond215.not = icmp eq i64 %i.go, %i.r
  br i1 %exitcond215.not, label %.loopexit, label %bb.aa, !llvm.loop !700

.loopexit:                                        ; preds = %bb.aa, %bb.ab, %._crit_edge196, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #62
  br label %bb.ac

inspect_error.exit.thread172:                     ; preds = %._crit_edge.i, %bb.s, %inspect_error.exit
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6202
  store i32 -200, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6202
  store i32 -200, ptr %i.gq, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %inspect_error.exit.thread172, %bb.d
  %i.gr = add nuw nsw i64 %.6202, 1               ; 2 uses
  %exitcond216.not = icmp eq i64 %i.gr, %i.r
  br i1 %exitcond216.not, label %._crit_edge207, label %bb.d, !llvm.loop !701

._crit_edge207:                                   ; preds = %bb.ac, %bb.c
  %i.gs = shl nsw i64 %i.r, 2
  %i.gt = add nsw i64 %i.gs, 4
  %i.gu = and i64 %i.gt, -8                       ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8            ; 3 uses
  %i.gx = add nsw i64 %i.gw, %i.gu
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = icmp sgt i64 %i.gx, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8            ; 3 uses
  br i1 %i.ha, label %bb.ad, label %_vorbis_block_alloc.exit

bb.ad:                                            ; preds = %._crit_edge207
  %.not.i161 = icmp eq ptr %i.hc, null
  br i1 %.not.i161, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add nsw i64 %i.hf, %i.gw
  store i64 %i.hg, ptr %i.he, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hi, ptr %i.hj, align 8
  store ptr %i.hc, ptr %i.hd, align 8
  store ptr %i.hd, ptr %i.hh, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i64 %i.gu, ptr %i.gy, align 8
  %i.hk = tail call noalias ptr @malloc(i64 noundef %i.gu) #69 ; 2 uses
  store ptr %i.hk, ptr %i.hb, align 8
  br label %_vorbis_block_alloc.exit

_vorbis_block_alloc.exit:                         ; preds = %._crit_edge207, %bb.af
  %i.hl = phi i64 [ 0, %bb.af ], [ %i.gw, %._crit_edge207 ] ; 2 uses
  %i.hm = phi ptr [ %i.hk, %bb.af ], [ %i.hc, %._crit_edge207 ]
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hl ; 6 uses
  %i.ho = add nsw i64 %i.hl, %i.gu
  store i64 %i.ho, ptr %i.gv, align 8
  %i.hp = load i32, ptr %i.a, align 16            ; 3 uses
  %i.hq = icmp slt i32 %i.hp, 0
  %i.hr = load i32, ptr %i.b, align 16            ; 3 uses
  br i1 %i.hq, label %post_Y.exit163, label %bb.ag

bb.ag:                                            ; preds = %_vorbis_block_alloc.exit
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %post_Y.exit163, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ht = add nuw nsw i32 %i.hr, %i.hp
  %i.hu = lshr i32 %i.ht, 1
  br label %post_Y.exit163

post_Y.exit163:                                   ; preds = %_vorbis_block_alloc.exit, %bb.ag, %bb.ah
  %.0.i162 = phi i32 [ %i.hp, %bb.ag ], [ %i.hu, %bb.ah ], [ %i.hr, %_vorbis_block_alloc.exit ]
  store i32 %.0.i162, ptr %i.hn, align 4
  %i.hv = load i32, ptr %i.ba, align 4            ; 3 uses
  %i.hw = icmp slt i32 %i.hv, 0
  %i.hx = load i32, ptr %i.az, align 4            ; 3 uses
  br i1 %i.hw, label %post_Y.exit165, label %bb.ai

bb.ai:                                            ; preds = %post_Y.exit163
  %i.hy = icmp slt i32 %i.hx, 0
  br i1 %i.hy, label %post_Y.exit165, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hz = add nuw nsw i32 %i.hx, %i.hv
  %i.ia = lshr i32 %i.hz, 1
  br label %post_Y.exit165

post_Y.exit165:                                   ; preds = %post_Y.exit163, %bb.ai, %bb.aj
  %.0.i164 = phi i32 [ %i.hv, %bb.ai ], [ %i.ia, %bb.aj ], [ %i.hx, %post_Y.exit163 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %.0.i164, ptr %i.ib, align 4
  br i1 %i.bb, label %.lr.ph209, label %._crit_edge210

.lr.ph209:                                        ; preds = %post_Y.exit165
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 780
  %i.ie = getelementptr inbounds nuw i8, ptr %i.m, i64 836 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph209, %post_Y.exit168
  %.7208 = phi i64 [ 2, %.lr.ph209 ], [ %i.jr, %post_Y.exit168 ] ; 6 uses
  %i.if = add nsw i64 %.7208, -2                  ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.if
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = sext i32 %i.ih to i64                   ; 2 uses
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4            ; 2 uses
  %i.in = sext i32 %i.ij to i64                   ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ik
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.in
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.7208
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = and i32 %i.ir, 32767                    ; 2 uses
  %i.ix = and i32 %i.it, 32767
  %i.iy = sub nsw i32 %i.ix, %i.iw                ; 2 uses
  %i.iz = sub nsw i32 %i.ip, %i.im
  %i.ja = tail call i32 @llvm.abs.i32(i32 %i.iy, i1 true)
  %i.jb = sub nsw i32 %i.iv, %i.im
  %i.jc = mul nsw i32 %i.ja, %i.jb
  %i.jd = sdiv i32 %i.jc, %i.iz                   ; 2 uses
  %i.je = icmp slt i32 %i.iy, 0
  %i.jf = sub i32 0, %i.jd
  %.0.p.i = select i1 %i.je, i32 %i.jf, i32 %i.jd
  %.0.i166 = add i32 %.0.p.i, %i.iw               ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.7208
  %i.jh = load i32, ptr %i.jg, align 4            ; 3 uses
  %i.ji = icmp slt i32 %i.jh, 0
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7208
  %i.jk = load i32, ptr %i.jj, align 4            ; 3 uses
  br i1 %i.ji, label %post_Y.exit168, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %post_Y.exit168, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jm = add nuw nsw i32 %i.jk, %i.jh
  %i.jn = lshr i32 %i.jm, 1
  br label %post_Y.exit168

post_Y.exit168:                                   ; preds = %bb.ak, %bb.al, %bb.am
  %.0.i167 = phi i32 [ %i.jh, %bb.al ], [ %i.jn, %bb.am ], [ %i.jk, %bb.ak ] ; 3 uses
  %i.jo = icmp slt i32 %.0.i167, 0
  %.not154 = icmp eq i32 %.0.i166, %.0.i167
  %or.cond157 = select i1 %i.jo, i1 true, i1 %.not154
  %i.jp = or i32 %.0.i166, 32768
  %spec.select = select i1 %or.cond157, i32 %i.jp, i32 %.0.i167
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.7208
  store i32 %spec.select, ptr %i.jq, align 4
  %i.jr = add nuw nsw i64 %.7208, 1               ; 2 uses
  %exitcond217.not = icmp eq i64 %i.jr, %i.r
  br i1 %exitcond217.not, label %._crit_edge210, label %bb.ak, !llvm.loop !702

._crit_edge210:                                   ; preds = %post_Y.exit168, %post_Y.exit165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #62
  br label %.loopexit175.thread

.loopexit175.thread:                              ; preds = %._crit_edge, %.preheader, %._crit_edge210, %.loopexit175
  %.0148 = phi ptr [ %i.hn, %._crit_edge210 ], [ null, %.loopexit175 ], [ null, %.preheader ], [ null, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #62
  ret ptr %.0148
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @accumulate_fit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.b = sext i32 %2 to i64                       ; 2 uses
  store i64 %i.b, ptr %4, align 8
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = add nsw i32 %5, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.e) ; 2 uses
  %.not114116 = icmp sgt i32 %2, %spec.select
  br i1 %.not114116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.087129 = phi i64 [ %i.b, %.lr.ph ], [ %i.ai, %bb.f ] ; 9 uses
  %.088128 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %.089127 = phi i64 [ 0, %.lr.ph ], [ %.190, %bb.f ] ; 3 uses
  %.091126 = phi i64 [ 0, %.lr.ph ], [ %.192, %bb.f ] ; 3 uses
  %.093125 = phi i64 [ 0, %.lr.ph ], [ %.194, %bb.f ] ; 3 uses
  %.095124 = phi i64 [ 0, %.lr.ph ], [ %.196, %bb.f ] ; 3 uses
  %.097123 = phi i64 [ 0, %.lr.ph ], [ %.198, %bb.f ] ; 3 uses
  %.099122 = phi i64 [ 0, %.lr.ph ], [ %.1100, %bb.f ] ; 3 uses
  %.0101121 = phi i64 [ 0, %.lr.ph ], [ %.1102, %bb.f ] ; 3 uses
  %.0103120 = phi i64 [ 0, %.lr.ph ], [ %.1104, %bb.f ] ; 3 uses
  %.0105119 = phi i64 [ 0, %.lr.ph ], [ %.1106, %bb.f ] ; 3 uses
  %.0107118 = phi i64 [ 0, %.lr.ph ], [ %.1108, %bb.f ] ; 3 uses
  %.0109117 = phi i64 [ 0, %.lr.ph ], [ %.1110, %bb.f ] ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %.087129
  %.val = load float, ptr %i.h, align 4           ; 2 uses
  %i.i = fmul float %.val, f0x40EA0EA1
  %i.j = fadd float %i.i, 1.023500e+03
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %.not115 = icmp slt i32 %i.k, 1
  br i1 %.not115, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call range(i32 0, 1024) i32 @llvm.umin.i32(i32 %i.k, i32 1023) ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %.087129
  %i.n = load float, ptr %i.m, align 4
  %i.o = load float, ptr %i.g, align 4
  %i.p = fadd float %i.n, %i.o
  %i.q = fcmp ult float %i.p, %.val
  %i.r = zext nneg i32 %i.l to i64                ; 3 uses
  %i.s = mul nsw i64 %.087129, %.087129           ; 2 uses
  %i.t = mul nuw nsw i32 %i.l, %i.l
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = mul nsw i64 %.087129, %i.r               ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i64 %.087129, %.0109117
  %i.x = add nsw i64 %.0107118, %i.r
  %i.y = add nsw i64 %i.s, %.0105119
  %i.z = add nsw i64 %.0103120, %i.u
  %i.aa = add nsw i64 %i.v, %.0101121
  %i.ab = add nsw i64 %.099122, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = add nsw i64 %.087129, %.097123
  %i.ad = add nsw i64 %.095124, %i.r
  %i.ae = add nsw i64 %i.s, %.093125
  %i.af = add nsw i64 %.091126, %i.u
  %i.ag = add nsw i64 %i.v, %.089127
  %i.ah = add nsw i64 %.088128, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1110 = phi i64 [ %i.w, %bb.d ], [ %.0109117, %bb.e ], [ %.0109117, %bb.b ] ; 2 uses
  %.1108 = phi i64 [ %i.x, %bb.d ], [ %.0107118, %bb.e ], [ %.0107118, %bb.b ] ; 2 uses
  %.1106 = phi i64 [ %i.y, %bb.d ], [ %.0105119, %bb.e ], [ %.0105119, %bb.b ] ; 2 uses
  %.1104 = phi i64 [ %i.z, %bb.d ], [ %.0103120, %bb.e ], [ %.0103120, %bb.b ] ; 2 uses
  %.1102 = phi i64 [ %i.aa, %bb.d ], [ %.0101121, %bb.e ], [ %.0101121, %bb.b ] ; 2 uses
  %.1100 = phi i64 [ %i.ab, %bb.d ], [ %.099122, %bb.e ], [ %.099122, %bb.b ] ; 2 uses
  %.198 = phi i64 [ %.097123, %bb.d ], [ %i.ac, %bb.e ], [ %.097123, %bb.b ] ; 2 uses
  %.196 = phi i64 [ %.095124, %bb.d ], [ %i.ad, %bb.e ], [ %.095124, %bb.b ] ; 2 uses
  %.194 = phi i64 [ %.093125, %bb.d ], [ %i.ae, %bb.e ], [ %.093125, %bb.b ] ; 2 uses
  %.192 = phi i64 [ %.091126, %bb.d ], [ %i.af, %bb.e ], [ %.091126, %bb.b ] ; 2 uses
  %.190 = phi i64 [ %.089127, %bb.d ], [ %i.ag, %bb.e ], [ %.089127, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.088128, %bb.d ], [ %i.ah, %bb.e ], [ %.088128, %bb.b ] ; 2 uses
  %i.ai = add nsw i64 %.087129, 1
  %exitcond.not = icmp eq i64 %.087129, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !703

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0109.lcssa = phi i64 [ 0, %bb.a ], [ %.1110, %bb.f ] ; 2 uses
  %.0107.lcssa = phi i64 [ 0, %bb.a ], [ %.1108, %bb.f ] ; 2 uses
  %.0105.lcssa = phi i64 [ 0, %bb.a ], [ %.1106, %bb.f ] ; 2 uses
  %.0103.lcssa = phi i64 [ 0, %bb.a ], [ %.1104, %bb.f ] ; 2 uses
  %.0101.lcssa = phi i64 [ 0, %bb.a ], [ %.1102, %bb.f ] ; 2 uses
  %.099.lcssa = phi i64 [ 0, %bb.a ], [ %.1100, %bb.f ] ; 4 uses
  %.097.lcssa = phi i64 [ 0, %bb.a ], [ %.198, %bb.f ]
  %.095.lcssa = phi i64 [ 0, %bb.a ], [ %.196, %bb.f ]
  %.093.lcssa = phi i64 [ 0, %bb.a ], [ %.194, %bb.f ]
  %.091.lcssa = phi i64 [ 0, %bb.a ], [ %.192, %bb.f ]
  %.089.lcssa = phi i64 [ 0, %bb.a ], [ %.190, %bb.f ]
  %.088.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.f ]
  %i.aj = add nsw i64 %.097.lcssa, %.0109.lcssa
  %i.ak = add nsw i64 %.095.lcssa, %.0107.lcssa
  %i.al = add nsw i64 %.093.lcssa, %.0105.lcssa
  %i.am = add nsw i64 %.091.lcssa, %.0103.lcssa
  %i.an = add nsw i64 %.089.lcssa, %.0101.lcssa
  %i.ao = add nsw i64 %.088.lcssa, %.099.lcssa    ; 2 uses
  %i.ap = sitofp i64 %i.ao to float
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 1108
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fmul float %i.ar, %i.ap
  %i.at = add nsw i64 %.099.lcssa, 1
  %i.au = sitofp i64 %i.at to float
  %i.av = fdiv float %i.as, %i.au
  %i.aw = fptosi float %i.av to i32
  %i.ax = sext i32 %i.aw to i64                   ; 6 uses
  %i.ay = mul nsw i64 %.0109.lcssa, %i.ax
  %i.az = add nsw i64 %i.aj, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.az, ptr %i.ba, align 8
  %i.bb = mul nsw i64 %.0107.lcssa, %i.ax
  %i.bc = add nsw i64 %i.ak, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = mul nsw i64 %.0105.lcssa, %i.ax
  %i.bf = add nsw i64 %i.al, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = mul nsw i64 %.0103.lcssa, %i.ax
  %i.bi = add nsw i64 %i.am, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = mul nsw i64 %.0101.lcssa, %i.ax
  %i.bl = add nsw i64 %i.an, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = mul nsw i64 %.099.lcssa, %i.ax
  %i.bo = add nsw i64 %i.bn, %i.ao
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = trunc i64 %.099.lcssa to i32
  ret i32 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @fit_line(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #43 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr [64 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -56
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
end_hunk_1
begin_hunk_2_@dradf4:bb.a
  %i.is = sub i64 %i.fo, %i.ir                    ; 2 uses
  %i.it = shl i64 %index761, 1                    ; 5 uses
  %i.iu = add i64 %i.it, %i.fn                    ; 2 uses
  %.reass = add i64 %i.it, %invariant.op          ; 2 uses
  %i.iv = add nuw nsw i64 %.reass, %i.cl          ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.it
  %wide.vec = load <8 x float>, ptr %i.iw, align 4, !alias.scope !940 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec762 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %2, i64 %i.iv
  %i.iy = getelementptr i8, ptr %i.ix, i64 -4
  %wide.vec763 = load <8 x float>, ptr %i.iy, align 4, !alias.scope !943 ; 2 uses
  %strided.vec764 = shufflevector <8 x float> %wide.vec763, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec765 = shufflevector <8 x float> %wide.vec763, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.iz = fmul <4 x float> %strided.vec, %strided.vec764
  %i.ja = fmul <4 x float> %strided.vec762, %strided.vec765
  %i.jb = fadd <4 x float> %i.iz, %i.ja           ; 2 uses
  %i.jc = fmul <4 x float> %strided.vec, %strided.vec765
  %i.jd = fmul <4 x float> %strided.vec764, %strided.vec762
  %i.je = fsub <4 x float> %i.jc, %i.jd           ; 2 uses
  %i.jf = add nuw nsw i64 %i.iv, %i.cl            ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %5, i64 %i.it
  %wide.vec766 = load <8 x float>, ptr %i.jg, align 4, !alias.scope !945 ; 2 uses
  %strided.vec767 = shufflevector <8 x float> %wide.vec766, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec768 = shufflevector <8 x float> %wide.vec766, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jh = getelementptr [4 x i8], ptr %2, i64 %i.jf
  %i.ji = getelementptr i8, ptr %i.jh, i64 -4
  %wide.vec769 = load <8 x float>, ptr %i.ji, align 4, !alias.scope !947 ; 2 uses
  %strided.vec770 = shufflevector <8 x float> %wide.vec769, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec771 = shufflevector <8 x float> %wide.vec769, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jj = fmul <4 x float> %strided.vec767, %strided.vec770
  %i.jk = fmul <4 x float> %strided.vec768, %strided.vec771
  %i.jl = fadd <4 x float> %i.jj, %i.jk           ; 2 uses
  %i.jm = fmul <4 x float> %strided.vec767, %strided.vec771
  %i.jn = fmul <4 x float> %strided.vec770, %strided.vec768
  %i.jo = fsub <4 x float> %i.jm, %i.jn           ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %6, i64 %i.it
  %wide.vec772 = load <8 x float>, ptr %i.jp, align 4, !alias.scope !949 ; 2 uses
  %strided.vec773 = shufflevector <8 x float> %wide.vec772, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec774 = shufflevector <8 x float> %wide.vec772, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jf
  %i.jr = getelementptr i8, ptr %i.jq, i64 -4
  %wide.vec775 = load <8 x float>, ptr %i.jr, align 4, !alias.scope !951 ; 2 uses
  %strided.vec776 = shufflevector <8 x float> %wide.vec775, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec777 = shufflevector <8 x float> %wide.vec775, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.js = fmul <4 x float> %strided.vec773, %strided.vec776
  %i.jt = fmul <4 x float> %strided.vec774, %strided.vec777
  %i.ju = fadd <4 x float> %i.js, %i.jt           ; 2 uses
  %i.jv = fmul <4 x float> %strided.vec773, %strided.vec777
  %i.jw = fmul <4 x float> %strided.vec776, %strided.vec774
  %i.jx = fsub <4 x float> %i.jv, %i.jw           ; 2 uses
  %i.jy = fadd <4 x float> %i.jb, %i.ju           ; 2 uses
  %i.jz = fsub <4 x float> %i.ju, %i.jb           ; 2 uses
  %i.ka = fadd <4 x float> %i.je, %i.jx           ; 2 uses
  %i.kb = fsub <4 x float> %i.je, %i.jx           ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4
  %wide.vec778 = load <8 x float>, ptr %i.kd, align 4, !alias.scope !953 ; 2 uses
  %strided.vec779 = shufflevector <8 x float> %wide.vec778, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec780 = shufflevector <8 x float> %wide.vec778, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ke = fadd <4 x float> %i.jo, %strided.vec780 ; 2 uses
  %i.kf = fsub <4 x float> %strided.vec780, %i.jo ; 2 uses
  %i.kg = fadd <4 x float> %i.jl, %strided.vec779 ; 2 uses
  %i.kh = fsub <4 x float> %strided.vec779, %i.jl ; 2 uses
  %i.ki = fadd <4 x float> %i.jy, %i.kg
  %i.kj = getelementptr [4 x i8], ptr %3, i64 %i.iu
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %i.kl = fadd <4 x float> %i.ke, %i.ka
  %interleaved.vec781 = shufflevector <4 x float> %i.ki, <4 x float> %i.kl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec781, ptr %i.kk, align 4
  %i.km = fsub <4 x float> %i.kh, %i.kb
  %i.kn = getelementptr [4 x i8], ptr %3, i64 %i.is
  %i.ko = fsub <4 x float> %i.jz, %i.kf
  %i.kp = getelementptr i8, ptr %i.kn, i64 -36
  %interleaved.vec783 = shufflevector <4 x float> %i.km, <4 x float> %i.ko, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec783, ptr %i.kp, align 4
  %i.kq = fadd <4 x float> %i.kb, %i.kh
  %i.kr = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.iu
  %i.ks = getelementptr i8, ptr %i.kr, i64 4
  %i.kt = fadd <4 x float> %i.kf, %i.jz
  %interleaved.vec784 = shufflevector <4 x float> %i.kq, <4 x float> %i.kt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec784, ptr %i.ks, align 4
  %i.ku = fsub <4 x float> %i.kg, %i.jy
  %i.kv = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.is
  %i.kw = fsub <4 x float> %i.ka, %i.ke
  %i.kx = getelementptr i8, ptr %i.kv, i64 -36
  %interleaved.vec787 = shufflevector <4 x float> %i.ku, <4 x float> %i.kw, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec787, ptr %i.kx, align 4
  %index.next788 = add nuw i64 %index761, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next788, %n.vec759
  br i1 %i.ky, label %middle.block789, label %vector.body760, !llvm.loop !955

middle.block789:                                  ; preds = %vector.body760
  br i1 %cmp.n790, label %._crit_edge250, label %scalar.ph755.preheader

scalar.ph755.preheader:                           ; preds = %vector.memcheck375, %vector.scevcheck350, %.lr.ph249, %middle.block789
  %indvars.iv283.ph = phi i64 [ %i.fo, %vector.memcheck375 ], [ %i.fo, %vector.scevcheck350 ], [ %i.fo, %.lr.ph249 ], [ %i.io, %middle.block789 ]
  %indvars.iv279.ph = phi i64 [ %i.fn, %vector.memcheck375 ], [ %i.fn, %vector.scevcheck350 ], [ %i.fn, %.lr.ph249 ], [ %i.ip, %middle.block789 ]
  %indvars.iv275.ph = phi i64 [ %indvars.iv273, %vector.memcheck375 ], [ %indvars.iv273, %vector.scevcheck350 ], [ %indvars.iv273, %.lr.ph249 ], [ %i.iq, %middle.block789 ]
  %indvars.iv271.ph = phi i64 [ 2, %vector.memcheck375 ], [ 2, %vector.scevcheck350 ], [ 2, %.lr.ph249 ], [ %i.fi, %middle.block789 ]
  br label %scalar.ph755

scalar.ph755:                                     ; preds = %scalar.ph755.preheader, %scalar.ph755
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph755 ], [ %indvars.iv283.ph, %scalar.ph755.preheader ] ; 2 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %scalar.ph755 ], [ %indvars.iv279.ph, %scalar.ph755.preheader ] ; 2 uses
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph755 ], [ %indvars.iv275.ph, %scalar.ph755.preheader ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph755 ], [ %indvars.iv271.ph, %scalar.ph755.preheader ] ; 3 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 2 ; 3 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 2 ; 3 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, -2 ; 3 uses
  %i.kz = add nuw nsw i64 %indvars.iv.next276, %i.cl ; 2 uses
  %i.la = add nsw i64 %indvars.iv271, -2          ; 3 uses
  %i.lb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4          ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %2, i64 %i.kz ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 -4
  %i.lf = load float, ptr %i.le, align 4          ; 2 uses
  %i.lg = fmul float %i.lc, %i.lf
  %i.lh = add nsw i64 %indvars.iv271, -1          ; 3 uses
  %i.li = getelementptr inbounds [4 x i8], ptr %4, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4          ; 2 uses
  %i.lk = load float, ptr %i.ld, align 4          ; 2 uses
  %i.ll = fmul float %i.lj, %i.lk
  %i.lm = fadd float %i.lg, %i.ll                 ; 2 uses
  %i.ln = fmul float %i.lc, %i.lk
  %i.lo = fmul float %i.lf, %i.lj
  %i.lp = fsub float %i.ln, %i.lo                 ; 2 uses
  %i.lq = add nuw nsw i64 %i.kz, %i.cl            ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.la
  %i.ls = load float, ptr %i.lr, align 4          ; 2 uses
  %i.lt = getelementptr [4 x i8], ptr %2, i64 %i.lq ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 -4
  %i.lv = load float, ptr %i.lu, align 4          ; 2 uses
  %i.lw = fmul float %i.ls, %i.lv
  %i.lx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.lh
  %i.ly = load float, ptr %i.lx, align 4          ; 2 uses
  %i.lz = load float, ptr %i.lt, align 4          ; 2 uses
  %i.ma = fmul float %i.ly, %i.lz
  %i.mb = fadd float %i.lw, %i.ma                 ; 2 uses
  %i.mc = fmul float %i.ls, %i.lz
  %i.md = fmul float %i.lv, %i.ly
  %i.me = fsub float %i.mc, %i.md                 ; 2 uses
  %i.mf = getelementptr inbounds [4 x i8], ptr %6, i64 %i.la
  %i.mg = load float, ptr %i.mf, align 4          ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.lq ; 2 uses
  %i.mh = getelementptr i8, ptr %gep, i64 -4
  %i.mi = load float, ptr %i.mh, align 4          ; 2 uses
  %i.mj = fmul float %i.mg, %i.mi
  %i.mk = getelementptr inbounds [4 x i8], ptr %6, i64 %i.lh
  %i.ml = load float, ptr %i.mk, align 4          ; 2 uses
  %i.mm = load float, ptr %gep, align 4           ; 2 uses
  %i.mn = fmul float %i.ml, %i.mm
  %i.mo = fadd float %i.mj, %i.mn                 ; 2 uses
  %i.mp = fmul float %i.mg, %i.mm
  %i.mq = fmul float %i.mi, %i.ml
  %i.mr = fsub float %i.mp, %i.mq                 ; 2 uses
  %i.ms = fadd float %i.lm, %i.mo                 ; 2 uses
  %i.mt = fsub float %i.mo, %i.lm                 ; 2 uses
  %i.mu = fadd float %i.lp, %i.mr                 ; 2 uses
  %i.mv = fsub float %i.lp, %i.mr                 ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next276
  %i.mx = load float, ptr %i.mw, align 4          ; 2 uses
  %i.my = fadd float %i.me, %i.mx                 ; 2 uses
  %i.mz = fsub float %i.mx, %i.me                 ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv275
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nc = load float, ptr %i.nb, align 4          ; 2 uses
  %i.nd = fadd float %i.mb, %i.nc                 ; 2 uses
  %i.ne = fsub float %i.nc, %i.mb                 ; 2 uses
  %i.nf = fadd float %i.ms, %i.nd
  %i.ng = getelementptr [4 x i8], ptr %3, i64 %indvars.iv279
  %i.nh = getelementptr i8, ptr %i.ng, i64 4
  store float %i.nf, ptr %i.nh, align 4
  %i.ni = fadd float %i.my, %i.mu
  %i.nj = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next280
  store float %i.ni, ptr %i.nj, align 4
  %i.nk = fsub float %i.ne, %i.mv
  %i.nl = getelementptr [4 x i8], ptr %3, i64 %indvars.iv283
  %i.nm = getelementptr i8, ptr %i.nl, i64 -12
  store float %i.nk, ptr %i.nm, align 4
  %i.nn = fsub float %i.mt, %i.mz
  %i.no = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next284
  store float %i.nn, ptr %i.no, align 4
  %i.np = fadd float %i.mv, %i.ne
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %indvars.iv.next280 ; 2 uses
  %i.nq = getelementptr i8, ptr %gep314, i64 -4
  store float %i.np, ptr %i.nq, align 4
  %i.nr = fadd float %i.mz, %i.mt
  store float %i.nr, ptr %gep314, align 4
  %i.ns = fsub float %i.nd, %i.ms
  %gep316 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %indvars.iv.next284 ; 2 uses
  %i.nt = getelementptr i8, ptr %gep316, i64 -4
  store float %i.ns, ptr %i.nt, align 4
  %i.nu = fsub float %i.mu, %i.my
  store float %i.nu, ptr %gep316, align 4
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %i.nv = icmp samesign ult i64 %indvars.iv.next272, %i.ck
  br i1 %i.nv, label %scalar.ph755, label %._crit_edge250, !llvm.loop !956

._crit_edge250:                                   ; preds = %scalar.ph755, %middle.block789
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, %i.ck
  %i.nw = add nuw nsw i32 %.1252, 1               ; 2 uses
  %indvars.iv.next278 = add i32 %indvars.iv277, %i.cm
  %indvars.iv.next282 = add i32 %indvars.iv281, %i.cm
  %exitcond293.not = icmp eq i32 %i.nw, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond293.not, label %._crit_edge254.split, label %.lr.ph249, !llvm.loop !957

._crit_edge254.split:                             ; preds = %._crit_edge250, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.c, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph261.preheader

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %.loopexit, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %._crit_edge254.split, %bb.c
  %i.nx = shl nuw i32 %0, 1
  %i.ny = shl i32 %0, 2
  %i.nz = add nsw i32 %0, -1
  %i.oa = add i32 %i.nz, %i.a                     ; 2 uses
  %i.ob = add i32 %i.oa, %i.b
  %i.oc = sext i32 %i.oa to i64
  %i.od = zext nneg i32 %0 to i64                 ; 3 uses
  %i.oe = sext i32 %i.a to i64
  %i.of = sext i32 %i.ob to i64
  %i.og = sext i32 %i.ny to i64
  %i.oh = sext i32 %i.nx to i64
  %i.oi = zext nneg i32 %0 to i64                 ; 2 uses
  %invariant.gep317 = getelementptr [4 x i8], ptr %3, i64 %i.oh
  %invariant.gep319 = getelementptr [4 x i8], ptr %2, i64 %i.oe
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %.lr.ph261
  %indvars.iv300 = phi i64 [ %i.oi, %.lr.ph261.preheader ], [ %indvars.iv.next301, %.lr.ph261 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.od, %.lr.ph261.preheader ], [ %indvars.iv.next299, %.lr.ph261 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.of, %.lr.ph261.preheader ], [ %indvars.iv.next297, %.lr.ph261 ] ; 2 uses
  %indvars.iv294 = phi i64 [ %i.oc, %.lr.ph261.preheader ], [ %indvars.iv.next295, %.lr.ph261 ] ; 3 uses
  %.2259 = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.pe, %.lr.ph261 ]
  %i.oj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv294
  %i.ok = load float, ptr %i.oj, align 4          ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv296
  %i.om = load float, ptr %i.ol, align 4          ; 2 uses
  %i.on = fadd float %i.ok, %i.om
  %i.oo = fmul float %i.on, f0xBF3504F3           ; 2 uses
  %i.op = fsub float %i.ok, %i.om
  %i.oq = fmul float %i.op, f0x3F3504F3           ; 2 uses
  %i.or = getelementptr [4 x i8], ptr %2, i64 %indvars.iv300
  %i.os = getelementptr i8, ptr %i.or, i64 -4     ; 2 uses
  %i.ot = load float, ptr %i.os, align 4
  %i.ou = fadd float %i.ot, %i.oq
  %i.ov = getelementptr [4 x i8], ptr %3, i64 %indvars.iv298 ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ov, i64 -4
  store float %i.ou, ptr %i.ow, align 4
  %i.ox = load float, ptr %i.os, align 4
  %i.oy = fsub float %i.ox, %i.oq
  %gep318 = getelementptr [4 x i8], ptr %invariant.gep317, i64 %indvars.iv298 ; 2 uses
  %i.oz = getelementptr i8, ptr %gep318, i64 -4
  store float %i.oy, ptr %i.oz, align 4
  %gep320 = getelementptr [4 x i8], ptr %invariant.gep319, i64 %indvars.iv294 ; 2 uses
  %i.pa = load float, ptr %gep320, align 4
  %i.pb = fsub float %i.oo, %i.pa
  store float %i.pb, ptr %i.ov, align 4
  %i.pc = load float, ptr %gep320, align 4
  %i.pd = fadd float %i.oo, %i.pc
  store float %i.pd, ptr %gep318, align 4
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, %i.od
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, %i.od
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, %i.og
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, %i.oi
  %i.pe = add nuw nsw i32 %.2259, 1               ; 2 uses
  %exitcond309.not = icmp eq i32 %i.pe, %1
  br i1 %exitcond309.not, label %.loopexit, label %.lr.ph261, !llvm.loop !958

.loopexit:                                        ; preds = %.lr.ph261, %._crit_edge254.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradf2(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #43 {
bb.a:
  %i.a = mul i32 %1, %0                           ; 3 uses
  %i.b = shl i32 %0, 1                            ; 5 uses
  %i.c = icmp slt i32 %1, 1                       ; 4 uses
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %i.a to i64                     ; 5 uses
  %i.e = sext i32 %0 to i64                       ; 2 uses
  %i.f = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 16
  br i1 %min.iters.check, label %.lr.ph.preheader247, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %ident.check = icmp ne i32 %0, 1
  %i.g = shl nuw i32 %1, 1
  %i.h = icmp slt i32 %i.g, 2
  %i.i = or i1 %ident.check, %i.h
  br i1 %i.i, label %.lr.ph.preheader247, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.j = zext nneg i32 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.k
  %i.l = add nsw i32 %1, -1
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n
  %scevgep190 = getelementptr i8, ptr %i.p, i64 4
  %i.q = shl nuw nsw i64 %i.m, 3
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %scevgep191 = getelementptr i8, ptr %i.r, i64 8 ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.n
  %scevgep192 = getelementptr i8, ptr %i.s, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep191
  %bound1 = icmp ult ptr %3, %scevgep190
  %found.conflict = and i1 %bound0, %bound1
  %bound0193 = icmp ult ptr %2, %scevgep191
  %bound1194 = icmp ult ptr %3, %scevgep192
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx = or i1 %found.conflict, %found.conflict195
  br i1 %conflict.rdx, label %.lr.ph.preheader247, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483644               ; 5 uses
  %i.t = add nuw nsw i64 %n.vec, %i.d
  %i.u = trunc nuw nsw i64 %n.vec to i32
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.v = trunc i64 %index to i32
  %i.w = getelementptr inbounds [4 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.w, align 4, !alias.scope !959, !noalias !962
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load196 = load <4 x float>, ptr %gep, align 4, !alias.scope !964, !noalias !962 ; 2 uses
  %i.x = fadd <4 x float> %wide.load, %wide.load196
  %i.y = shl i32 %i.v, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %3, i64 %i.z
  %wide.load197 = load <4 x float>, ptr %i.w, align 4, !alias.scope !959, !noalias !962
  %i.ab = fsub <4 x float> %wide.load197, %wide.load196
  %interleaved.vec = shufflevector <4 x float> %i.x, <4 x float> %i.ab, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aa, align 4, !alias.scope !962
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !966

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader247

.lr.ph.preheader247:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv138.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %vector.scevcheck ], [ %i.d, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  %.0111116.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader247, %.lr.ph
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph ], [ %indvars.iv138.ph, %.lr.ph.preheader247 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader247 ] ; 2 uses
  %.0111116 = phi i32 [ %i.at, %.lr.ph ], [ %.0111116.ph, %.lr.ph.preheader247 ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv138 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = trunc nsw i64 %indvars.iv138 to i32
  %i.aj = shl i32 %i.ai, 1                        ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ak
  store float %i.ah, ptr %i.al, align 4
  %i.am = load float, ptr %i.ad, align 4
  %i.an = load float, ptr %i.af, align 4
  %i.ao = fsub float %i.am, %i.an
  %i.ap = add nsw i32 %i.aj, %i.b
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %3, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  store float %i.ao, ptr %i.as, align 4
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, %i.e
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e
  %i.at = add nuw nsw i32 %.0111116, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !967

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.au = icmp slt i32 %0, 2
  br i1 %i.au, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.av = icmp eq i32 %0, 2
  br i1 %i.av, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.c, label %._crit_edge131.split, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.aw = zext nneg i32 %0 to i64
end_hunk_2
begin_hunk_3_@dradfg:bb.a
  br i1 %cmp.n1545, label %._crit_edge800, label %scalar.ph1532.preheader

scalar.ph1532.preheader:                          ; preds = %vector.memcheck1524, %.lr.ph799, %middle.block1544
  %indvars.iv1041.ph = phi i64 [ %i.sb, %vector.memcheck1524 ], [ %i.sb, %.lr.ph799 ], [ %i.se, %middle.block1544 ] ; 3 uses
  %indvars.iv1037.ph = phi i64 [ 0, %vector.memcheck1524 ], [ 0, %.lr.ph799 ], [ %n.vec1536, %middle.block1544 ] ; 4 uses
  br i1 %lcmp.mod1595.not, label %scalar.ph1532.prol.loopexit, label %scalar.ph1532.prol

scalar.ph1532.prol:                               ; preds = %scalar.ph1532.preheader
  %indvars.iv.next1042.prol = add nuw nsw i64 %indvars.iv1041.ph, 1
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041.ph
  %i.sm = load float, ptr %i.sl, align 4
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037.ph ; 2 uses
  %i.so = load float, ptr %i.sn, align 4
  %i.sp = fadd float %i.sm, %i.so
  store float %i.sp, ptr %i.sn, align 4
  %indvars.iv.next1038.prol = or disjoint i64 %indvars.iv1037.ph, 1
  br label %scalar.ph1532.prol.loopexit

scalar.ph1532.prol.loopexit:                      ; preds = %scalar.ph1532.prol, %scalar.ph1532.preheader
  %indvars.iv1041.unr = phi i64 [ %indvars.iv1041.ph, %scalar.ph1532.preheader ], [ %indvars.iv.next1042.prol, %scalar.ph1532.prol ]
  %indvars.iv1037.unr = phi i64 [ %indvars.iv1037.ph, %scalar.ph1532.preheader ], [ %indvars.iv.next1038.prol, %scalar.ph1532.prol ]
  %i.sq = icmp eq i64 %indvars.iv1037.ph, %i.ph
  br i1 %i.sq, label %._crit_edge800, label %scalar.ph1532

scalar.ph1532:                                    ; preds = %scalar.ph1532.prol.loopexit, %scalar.ph1532
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042.1, %scalar.ph1532 ], [ %indvars.iv1041.unr, %scalar.ph1532.prol.loopexit ] ; 3 uses
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038.1, %scalar.ph1532 ], [ %indvars.iv1037.unr, %scalar.ph1532.prol.loopexit ] ; 3 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.ss = load float, ptr %i.sr, align 4
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037 ; 2 uses
  %i.su = load float, ptr %i.st, align 4
  %i.sv = fadd float %i.ss, %i.su
  store float %i.sv, ptr %i.st, align 4
  %indvars.iv.next1042.1 = add nuw nsw i64 %indvars.iv1041, 2
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.sy = load float, ptr %i.sx, align 4
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4 ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4
  %i.tc = fadd float %i.sy, %i.tb
  store float %i.tc, ptr %i.ta, align 4
  %indvars.iv.next1038.1 = add nuw nsw i64 %indvars.iv1037, 2 ; 2 uses
  %exitcond1047.not.1 = icmp eq i64 %indvars.iv.next1038.1, %wide.trip.count1046
  br i1 %exitcond1047.not.1, label %._crit_edge800, label %scalar.ph1532, !llvm.loop !1044

._crit_edge800:                                   ; preds = %scalar.ph1532.prol.loopexit, %scalar.ph1532, %middle.block1544
  %i.td = add nuw nsw i32 %.7557802, 1            ; 2 uses
  %indvars.iv.next1040 = add i32 %indvars.iv1039, %3
  %exitcond1048.not = icmp eq i32 %i.td, %i.k
  br i1 %exitcond1048.not, label %._crit_edge804.split, label %.lr.ph799, !llvm.loop !1045

._crit_edge804.split:                             ; preds = %._crit_edge800, %._crit_edge766.split, %.preheader667
  %i.te = icmp slt i32 %0, %2
  %i.tf = icmp sgt i32 %0, 0
  %or.cond886 = and i1 %i.tf, %i.lp               ; 2 uses
  br i1 %i.te, label %.preheader662, label %.preheader665

.preheader665:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader664.preheader, label %.loopexit663

.preheader664.preheader:                          ; preds = %.preheader665
  %i.tg = zext nneg i32 %0 to i64                 ; 4 uses
  %i.th = sext i32 %i.o to i64                    ; 2 uses
  %i.ti = add nsw i32 %2, -1
  %i.tj = zext i32 %i.ti to i64                   ; 2 uses
  %i.tk = mul nsw i64 %i.th, %i.tj
  %i.tl = zext i32 %i.l to i64                    ; 2 uses
  %i.tm = add i64 %i.tk, %i.tl
  %i.tn = shl i64 %i.tm, 2
  %i.to = getelementptr i8, ptr %4, i64 %i.tn
  %scevgep1549 = getelementptr i8, ptr %i.to, i64 4
  %i.tp = mul nuw nsw i64 %i.tg, %i.tj
  %i.tq = add nuw i64 %i.tp, %i.tl
  %i.tr = shl i64 %i.tq, 2
  %i.ts = getelementptr i8, ptr %7, i64 %i.tr
  %scevgep1550 = getelementptr i8, ptr %i.ts, i64 4
  %min.iters.check1555 = icmp ult i32 %0, 8
  %bound01551 = icmp ult ptr %4, %scevgep1550
  %bound11552 = icmp ult ptr %7, %scevgep1549
  %found.conflict1553 = and i1 %bound01551, %bound11552
  %stride.check = icmp slt i32 %i.o, 0
  %i.tt = or i1 %found.conflict1553, %stride.check
  %n.vec1558 = and i64 %i.tg, 2147483640          ; 5 uses
  %i.tu = trunc nuw nsw i64 %n.vec1558 to i32
  %cmp.n1565 = icmp eq i64 %n.vec1558, %i.tg
  br label %.preheader664

.preheader662:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader661.preheader, label %.loopexit663

.preheader661.preheader:                          ; preds = %.preheader662
  %i.tv = zext nneg i32 %0 to i64                 ; 6 uses
  %i.tw = sext i32 %i.o to i64                    ; 5 uses
  %i.tx = add nsw i32 %2, -1
  %xtraiter1601 = and i32 %2, 3                   ; 3 uses
  %i.ty = icmp ult i32 %i.tx, 3
  %unroll_iter1605 = and i32 %2, 2147483644
  %lcmp.mod1603.not = icmp eq i32 %xtraiter1601, 0
  %lcmp.mod1604 = icmp ne i32 %xtraiter1601, 0
  br label %.preheader661

.preheader664:                                    ; preds = %.preheader664.preheader, %._crit_edge809
  %indvars.iv1054 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1055, %._crit_edge809 ] ; 4 uses
  %indvars.iv1050 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1051, %._crit_edge809 ] ; 4 uses
  %.6564812 = phi i32 [ 0, %.preheader664.preheader ], [ %i.vi, %._crit_edge809 ]
  %brmerge1655 = select i1 %min.iters.check1555, i1 true, i1 %i.tt
  br i1 %brmerge1655, label %scalar.ph1554.preheader, label %vector.ph1556

vector.ph1556:                                    ; preds = %.preheader664
  %i.tz = add i64 %indvars.iv1054, %n.vec1558
  %i.ua = add nuw i64 %indvars.iv1050, %n.vec1558
  %i.ub = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1050
  %i.uc = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1054
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1556
  %index1560 = phi i64 [ 0, %vector.ph1556 ], [ %index.next1563, %vector.body1559 ] ; 3 uses
  %i.ud = getelementptr [4 x i8], ptr %i.ub, i64 %index1560 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %wide.load1561 = load <4 x float>, ptr %i.ud, align 4, !alias.scope !1046
  %wide.load1562 = load <4 x float>, ptr %i.ue, align 4, !alias.scope !1046
  %i.uf = getelementptr [4 x i8], ptr %i.uc, i64 %index1560 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store <4 x float> %wide.load1561, ptr %i.uf, align 4, !alias.scope !1049, !noalias !1046
  store <4 x float> %wide.load1562, ptr %i.ug, align 4, !alias.scope !1049, !noalias !1046
  %index.next1563 = add nuw i64 %index1560, 8     ; 2 uses
  %i.uh = icmp eq i64 %index.next1563, %n.vec1558
  br i1 %i.uh, label %middle.block1564, label %vector.body1559, !llvm.loop !1051

middle.block1564:                                 ; preds = %vector.body1559
  br i1 %cmp.n1565, label %._crit_edge809, label %scalar.ph1554.preheader

scalar.ph1554.preheader:                          ; preds = %.preheader664, %middle.block1564
  %indvars.iv1056.ph = phi i64 [ %i.tz, %middle.block1564 ], [ %indvars.iv1054, %.preheader664 ] ; 2 uses
  %indvars.iv1052.ph = phi i64 [ %i.ua, %middle.block1564 ], [ %indvars.iv1050, %.preheader664 ] ; 2 uses
  %.4807.ph = phi i32 [ %i.tu, %middle.block1564 ], [ 0, %.preheader664 ] ; 4 uses
  %i.ui = sub i32 %0, %.4807.ph
  %xtraiter1597 = and i32 %i.ui, 3                ; 2 uses
  %lcmp.mod1598.not = icmp eq i32 %xtraiter1597, 0
  br i1 %lcmp.mod1598.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol

scalar.ph1554.prol:                               ; preds = %scalar.ph1554.preheader, %scalar.ph1554.prol
  %indvars.iv1056.prol = phi i64 [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ], [ %indvars.iv1056.ph, %scalar.ph1554.preheader ] ; 2 uses
  %indvars.iv1052.prol = phi i64 [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ], [ %indvars.iv1052.ph, %scalar.ph1554.preheader ] ; 2 uses
  %.4807.prol = phi i32 [ %i.um, %scalar.ph1554.prol ], [ %.4807.ph, %scalar.ph1554.preheader ]
  %prol.iter1599 = phi i32 [ %prol.iter1599.next, %scalar.ph1554.prol ], [ 0, %scalar.ph1554.preheader ]
  %indvars.iv.next1053.prol = add nuw nsw i64 %indvars.iv1052.prol, 1 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052.prol
  %i.uk = load float, ptr %i.uj, align 4
  %indvars.iv.next1057.prol = add nsw i64 %indvars.iv1056.prol, 1 ; 2 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056.prol
  store float %i.uk, ptr %i.ul, align 4
  %i.um = add nuw nsw i32 %.4807.prol, 1          ; 2 uses
  %prol.iter1599.next = add i32 %prol.iter1599, 1 ; 2 uses
  %prol.iter1599.cmp.not = icmp eq i32 %prol.iter1599.next, %xtraiter1597
  br i1 %prol.iter1599.cmp.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol, !llvm.loop !1052

scalar.ph1554.prol.loopexit:                      ; preds = %scalar.ph1554.prol, %scalar.ph1554.preheader
  %indvars.iv1056.unr = phi i64 [ %indvars.iv1056.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ]
  %indvars.iv1052.unr = phi i64 [ %indvars.iv1052.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ]
  %.4807.unr = phi i32 [ %.4807.ph, %scalar.ph1554.preheader ], [ %i.um, %scalar.ph1554.prol ]
  %i.un = sub i32 %.4807.ph, %0
  %i.uo = icmp ugt i32 %i.un, -4
  br i1 %i.uo, label %._crit_edge809, label %scalar.ph1554

scalar.ph1554:                                    ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057.3, %scalar.ph1554 ], [ %indvars.iv1056.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053.3, %scalar.ph1554 ], [ %indvars.iv1052.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %.4807 = phi i32 [ %i.vh, %scalar.ph1554 ], [ %.4807.unr, %scalar.ph1554.prol.loopexit ]
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uq = load float, ptr %i.up, align 4
  %i.ur = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056
  store float %i.uq, ptr %i.ur, align 4
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.uw = getelementptr i8, ptr %i.uv, i64 4
  store float %i.uu, ptr %i.uw, align 4
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vb = getelementptr i8, ptr %i.va, i64 8
  store float %i.uz, ptr %i.vb, align 4
  %indvars.iv.next1053.3 = add nuw nsw i64 %indvars.iv1052, 4
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %i.ve = load float, ptr %i.vd, align 4
  %indvars.iv.next1057.3 = add nsw i64 %indvars.iv1056, 4
  %i.vf = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vg = getelementptr i8, ptr %i.vf, i64 12
  store float %i.ve, ptr %i.vg, align 4
  %i.vh = add nuw nsw i32 %.4807, 4               ; 2 uses
  %exitcond1061.not.3 = icmp eq i32 %i.vh, %0
  br i1 %exitcond1061.not.3, label %._crit_edge809, label %scalar.ph1554, !llvm.loop !1053

._crit_edge809:                                   ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554, %middle.block1564
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, %i.tg
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, %i.th
  %i.vi = add nuw nsw i32 %.6564812, 1            ; 2 uses
  %exitcond1065.not = icmp eq i32 %i.vi, %2
  br i1 %exitcond1065.not, label %.loopexit663, label %.preheader664, !llvm.loop !1054

.preheader661:                                    ; preds = %.preheader661.preheader, %._crit_edge817
  %indvars.iv1066 = phi i64 [ 0, %.preheader661.preheader ], [ %indvars.iv.next1067, %._crit_edge817 ] ; 5 uses
  br i1 %i.ty, label %.epil.preheader1600, label %.preheader661.new

.preheader661.new:                                ; preds = %.preheader661, %.preheader661.new
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %niter1606 = phi i32 [ %niter1606.next.3, %.preheader661.new ], [ 0, %.preheader661 ]
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068
  %i.vk = load float, ptr %i.vj, align 4
  %i.vl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070
  store float %i.vk, ptr %i.vl, align 4
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, %i.tv ; 2 uses
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, %i.tw ; 2 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069
  %i.vn = load float, ptr %i.vm, align 4
  %i.vo = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071
  store float %i.vn, ptr %i.vo, align 4
  %indvars.iv.next1069.1 = add nuw nsw i64 %indvars.iv.next1069, %i.tv ; 2 uses
  %indvars.iv.next1071.1 = add nsw i64 %indvars.iv.next1071, %i.tw ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.1
  %i.vq = load float, ptr %i.vp, align 4
  %i.vr = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.1
  store float %i.vq, ptr %i.vr, align 4
  %indvars.iv.next1069.2 = add nuw nsw i64 %indvars.iv.next1069.1, %i.tv ; 2 uses
  %indvars.iv.next1071.2 = add nsw i64 %indvars.iv.next1071.1, %i.tw ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.2
  %i.vt = load float, ptr %i.vs, align 4
  %i.vu = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.2
  store float %i.vt, ptr %i.vu, align 4
  %indvars.iv.next1069.3 = add nuw nsw i64 %indvars.iv.next1069.2, %i.tv ; 2 uses
  %indvars.iv.next1071.3 = add nsw i64 %indvars.iv.next1071.2, %i.tw ; 2 uses
  %niter1606.next.3 = add i32 %niter1606, 4       ; 2 uses
  %niter1606.ncmp.3 = icmp eq i32 %niter1606.next.3, %unroll_iter1605
  br i1 %niter1606.ncmp.3, label %._crit_edge817.unr-lcssa, label %.preheader661.new, !llvm.loop !1055

._crit_edge817.unr-lcssa:                         ; preds = %.preheader661.new
  br i1 %lcmp.mod1603.not, label %._crit_edge817, label %.epil.preheader1600

.epil.preheader1600:                              ; preds = %._crit_edge817.unr-lcssa, %.preheader661
  %indvars.iv1070.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1071.3, %._crit_edge817.unr-lcssa ]
  %indvars.iv1068.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1069.3, %._crit_edge817.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1604)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader1600
  %indvars.iv1070.epil = phi i64 [ %indvars.iv1070.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1071.epil, %bb.f ] ; 2 uses
  %indvars.iv1068.epil = phi i64 [ %indvars.iv1068.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1069.epil, %bb.f ] ; 2 uses
  %epil.iter1602 = phi i32 [ 0, %.epil.preheader1600 ], [ %epil.iter1602.next, %bb.f ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068.epil
  %i.vw = load float, ptr %i.vv, align 4
  %i.vx = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070.epil
  store float %i.vw, ptr %i.vx, align 4
  %indvars.iv.next1069.epil = add nuw nsw i64 %indvars.iv1068.epil, %i.tv
  %indvars.iv.next1071.epil = add nsw i64 %indvars.iv1070.epil, %i.tw
  %epil.iter1602.next = add i32 %epil.iter1602, 1 ; 2 uses
  %epil.iter1602.cmp.not = icmp eq i32 %epil.iter1602.next, %xtraiter1601
  br i1 %epil.iter1602.cmp.not, label %._crit_edge817, label %bb.f, !llvm.loop !1056

._crit_edge817:                                   ; preds = %bb.f, %._crit_edge817.unr-lcssa
  %indvars.iv.next1067 = add nuw nsw i64 %indvars.iv1066, 1 ; 2 uses
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1067, %i.tv
  br i1 %exitcond1078.not, label %.loopexit663, label %.preheader661, !llvm.loop !1057

.loopexit663:                                     ; preds = %._crit_edge809, %._crit_edge817, %.preheader665, %.preheader662
  %i.vy = shl i32 %0, 1                           ; 9 uses
  br i1 %or.cond880, label %.lr.ph824.preheader, label %._crit_edge832.split

.lr.ph824.preheader:                              ; preds = %.loopexit663
  %i.vz = mul i32 %i.n, %i.og
  %i.wa = sext i32 %0 to i64                      ; 4 uses
  %i.wb = sext i32 %i.o to i64                    ; 2 uses
  %xtraiter1608 = and i32 %2, 1
  %i.wc = icmp eq i32 %2, 1
  %unroll_iter1612 = and i32 %2, 2147483646
  %lcmp.mod1610.not = icmp eq i32 %xtraiter1608, 0
  %lcmp.mod1611 = trunc i32 %2 to i1
  br label %.lr.ph824

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %._crit_edge825
  %indvars.iv1087 = phi i32 [ %i.vy, %.lr.ph824.preheader ], [ %indvars.iv.next1088, %._crit_edge825 ] ; 2 uses
  %indvars.iv1083 = phi i32 [ %i.n, %.lr.ph824.preheader ], [ %indvars.iv.next1084, %._crit_edge825 ] ; 2 uses
  %indvars.iv1079 = phi i32 [ %i.vz, %.lr.ph824.preheader ], [ %indvars.iv.next1080, %._crit_edge825 ] ; 2 uses
  %.8829 = phi i32 [ 1, %.lr.ph824.preheader ], [ %i.wy, %._crit_edge825 ]
  %i.wd = sext i32 %indvars.iv1079 to i64         ; 2 uses
  %i.we = sext i32 %indvars.iv1083 to i64         ; 2 uses
  %i.wf = sext i32 %indvars.iv1087 to i64         ; 2 uses
  br i1 %i.wc, label %.epil.preheader1607, label %.lr.ph824.new

.lr.ph824.new:                                    ; preds = %.lr.ph824, %.lr.ph824.new
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090.1, %.lr.ph824.new ], [ %i.wf, %.lr.ph824 ] ; 2 uses
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086.1, %.lr.ph824.new ], [ %i.we, %.lr.ph824 ] ; 2 uses
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082.1, %.lr.ph824.new ], [ %i.wd, %.lr.ph824 ] ; 2 uses
  %niter1613 = phi i32 [ %niter1613.next.1, %.lr.ph824.new ], [ 0, %.lr.ph824 ]
  %i.wg = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1085
  %i.wh = load float, ptr %i.wg, align 4
  %i.wi = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1089 ; 2 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -4
  store float %i.wh, ptr %i.wj, align 4
  %i.wk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1081
  %i.wl = load float, ptr %i.wk, align 4
  store float %i.wl, ptr %i.wi, align 4
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, %i.wb ; 2 uses
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, %i.wa ; 2 uses
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, %i.wa ; 2 uses
  %i.wm = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1086
  %i.wn = load float, ptr %i.wm, align 4
  %i.wo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next1090 ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wo, i64 -4
  store float %i.wn, ptr %i.wp, align 4
  %i.wq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1082
  %i.wr = load float, ptr %i.wq, align 4
  store float %i.wr, ptr %i.wo, align 4
  %indvars.iv.next1090.1 = add nsw i64 %indvars.iv.next1090, %i.wb ; 2 uses
  %indvars.iv.next1086.1 = add nsw i64 %indvars.iv.next1086, %i.wa ; 2 uses
  %indvars.iv.next1082.1 = add nsw i64 %indvars.iv.next1082, %i.wa ; 2 uses
  %niter1613.next.1 = add i32 %niter1613, 2       ; 2 uses
  %niter1613.ncmp.1 = icmp eq i32 %niter1613.next.1, %unroll_iter1612
  br i1 %niter1613.ncmp.1, label %._crit_edge825.unr-lcssa, label %.lr.ph824.new, !llvm.loop !1058

._crit_edge825.unr-lcssa:                         ; preds = %.lr.ph824.new
  br i1 %lcmp.mod1610.not, label %._crit_edge825, label %.epil.preheader1607

.epil.preheader1607:                              ; preds = %._crit_edge825.unr-lcssa, %.lr.ph824
  %indvars.iv1089.epil.init = phi i64 [ %i.wf, %.lr.ph824 ], [ %indvars.iv.next1090.1, %._crit_edge825.unr-lcssa ]
  %indvars.iv1085.epil.init = phi i64 [ %i.we, %.lr.ph824 ], [ %indvars.iv.next1086.1, %._crit_edge825.unr-lcssa ]
  %indvars.iv1081.epil.init = phi i64 [ %i.wd, %.lr.ph824 ], [ %indvars.iv.next1082.1, %._crit_edge825.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1611)
  %i.ws = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1085.epil.init
  %i.wt = load float, ptr %i.ws, align 4
  %i.wu = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1089.epil.init ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wu, i64 -4
  store float %i.wt, ptr %i.wv, align 4
  %i.ww = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1081.epil.init
  %i.wx = load float, ptr %i.ww, align 4
  store float %i.wx, ptr %i.wu, align 4
  br label %._crit_edge825

._crit_edge825:                                   ; preds = %._crit_edge825.unr-lcssa, %.epil.preheader1607
  %i.wy = add nuw nsw i32 %.8829, 1               ; 2 uses
  %indvars.iv.next1080 = sub i32 %indvars.iv1079, %i.n
  %indvars.iv.next1084 = add i32 %indvars.iv1083, %i.n
  %indvars.iv.next1088 = add i32 %indvars.iv1087, %i.vy
  %exitcond1097.not = icmp eq i32 %i.wy, %i.k
  br i1 %exitcond1097.not, label %._crit_edge832.split, label %.lr.ph824, !llvm.loop !1059

._crit_edge832.split:                             ; preds = %._crit_edge825, %.loopexit663
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge832.split
  %i.wz = icmp slt i32 %i.m, %2
  br i1 %i.wz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.lo, label %.lr.ph848, label %.loopexit

.lr.ph848:                                        ; preds = %bb.h
  %i.xa = icmp slt i32 %2, 1
  %i.xb = icmp slt i32 %0, 3
  %brmerge890 = or i1 %i.xa, %i.xb
  br i1 %brmerge890, label %.loopexit, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph848
  %i.xc = sub nsw i32 0, %0
  %i.xd = zext nneg i32 %0 to i64                 ; 3 uses
  %i.xe = mul i32 %i.n, %i.og
  %i.xf = sext i32 %i.o to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge841
  %indvars.iv1109 = phi i32 [ %i.vy, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1110, %._crit_edge841 ] ; 2 uses
  %indvars.iv1105 = phi i32 [ %i.n, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1106, %._crit_edge841 ] ; 2 uses
  %indvars.iv1101 = phi i32 [ %i.xe, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1102, %._crit_edge841 ] ; 2 uses
  %.9846 = phi i32 [ 1, %.preheader.lr.ph.preheader ], [ %i.yi, %._crit_edge841 ]
  %.11845 = phi i32 [ %i.xc, %.preheader.lr.ph.preheader ], [ %i.xj, %._crit_edge841 ]
  %i.xg = sext i32 %indvars.iv1101 to i64
  %i.xh = sext i32 %indvars.iv1105 to i64
  %i.xi = sext i32 %indvars.iv1109 to i64
  %i.xj = add nsw i32 %.11845, %i.vy              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge835
  %indvars.iv1111 = phi i64 [ %i.xi, %.preheader.lr.ph ], [ %indvars.iv.next1112, %._crit_edge835 ] ; 2 uses
  %indvars.iv1107 = phi i64 [ %i.xh, %.preheader.lr.ph ], [ %indvars.iv.next1108, %._crit_edge835 ] ; 2 uses
  %indvars.iv1103 = phi i64 [ %i.xg, %.preheader.lr.ph ], [ %indvars.iv.next1104, %._crit_edge835 ] ; 2 uses
  %.9567840 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.yh, %._crit_edge835 ]
  %.5636836 = phi i32 [ %i.xj, %.preheader.lr.ph ], [ %i.yg, %._crit_edge835 ] ; 2 uses
  %i.xk = add i32 %.5636836, %0
  %invariant.gep = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1107
  %invariant.gep1195 = getelementptr [4 x i8], ptr %7, i64 %indvars.iv1103
  %invariant.gep1197 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1111
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.i
  %indvars.iv1098 = phi i64 [ 2, %.preheader ], [ %indvars.iv.next1099, %bb.i ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1098 ; 3 uses
end_hunk_3
begin_hunk_4_@dradb4:bb.a
  %wide.vec783 = load <8 x float>, ptr %i.mj, align 4, !alias.scope !1096, !noalias !1085 ; 2 uses
  %reverse785 = shufflevector <8 x float> %wide.vec783, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse787 = shufflevector <8 x float> %wide.vec783, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.mk = fsub <4 x float> %strided.vec782, %reverse787 ; 2 uses
  %i.ml = fadd <4 x float> %strided.vec782, %reverse787 ; 2 uses
  %i.mm = fsub <4 x float> %strided.vec, %reverse ; 2 uses
  %i.mn = fadd <4 x float> %strided.vec, %reverse ; 2 uses
  %i.mo = fsub <4 x float> %strided.vec781, %reverse785 ; 2 uses
  %i.mp = fadd <4 x float> %strided.vec781, %reverse785 ; 2 uses
  %i.mq = fadd <4 x float> %i.mn, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mc
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mt = fsub <4 x float> %i.mn, %i.mp           ; 2 uses
  %i.mu = fadd <4 x float> %i.mh, %i.mk
  %interleaved.vec = shufflevector <4 x float> %i.mq, <4 x float> %i.mu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ms, align 4
  %i.mv = fsub <4 x float> %i.mh, %i.mk           ; 2 uses
  %i.mw = fsub <4 x float> %i.mm, %i.ml           ; 2 uses
  %i.mx = fadd <4 x float> %i.ml, %i.mm           ; 2 uses
  %i.my = fadd <4 x float> %i.mg, %i.mo           ; 2 uses
  %i.mz = fsub <4 x float> %i.mg, %i.mo           ; 2 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %4, i64 %i.mb ; 2 uses
  %wide.vec788 = load <8 x float>, ptr %i.na, align 4, !alias.scope !1098, !noalias !1085 ; 2 uses
  %strided.vec789 = shufflevector <8 x float> %wide.vec788, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec790 = shufflevector <8 x float> %wide.vec788, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nb = fmul <4 x float> %i.mw, %strided.vec789
  %i.nc = fmul <4 x float> %i.my, %strided.vec790
  %i.nd = fsub <4 x float> %i.nb, %i.nc
  %.reass = add nuw nsw i64 %i.mc, %invariant.op  ; 2 uses
  %i.ne = getelementptr [4 x i8], ptr %3, i64 %.reass
  %i.nf = getelementptr i8, ptr %i.ne, i64 -4
  %wide.vec791 = load <8 x float>, ptr %i.na, align 4, !alias.scope !1098, !noalias !1085 ; 2 uses
  %strided.vec792 = shufflevector <8 x float> %wide.vec791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec793 = shufflevector <8 x float> %wide.vec791, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ng = fmul <4 x float> %i.my, %strided.vec792
  %i.nh = fmul <4 x float> %i.mw, %strided.vec793
  %i.ni = fadd <4 x float> %i.ng, %i.nh
  %interleaved.vec794 = shufflevector <4 x float> %i.nd, <4 x float> %i.ni, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec794, ptr %i.nf, align 4
  %i.nj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.mb ; 2 uses
  %wide.vec795 = load <8 x float>, ptr %i.nj, align 4, !alias.scope !1100, !noalias !1085 ; 2 uses
  %strided.vec796 = shufflevector <8 x float> %wide.vec795, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec797 = shufflevector <8 x float> %wide.vec795, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nk = fmul <4 x float> %i.mt, %strided.vec796
  %i.nl = fmul <4 x float> %i.mv, %strided.vec797
  %i.nm = fsub <4 x float> %i.nk, %i.nl
  %i.nn = add nuw nsw i64 %.reass, %i.el          ; 2 uses
  %i.no = getelementptr [4 x i8], ptr %3, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 -4
  %wide.vec798 = load <8 x float>, ptr %i.nj, align 4, !alias.scope !1100, !noalias !1085 ; 2 uses
  %strided.vec799 = shufflevector <8 x float> %wide.vec798, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec800 = shufflevector <8 x float> %wide.vec798, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nq = fmul <4 x float> %i.mv, %strided.vec799
  %i.nr = fmul <4 x float> %i.mt, %strided.vec800
  %i.ns = fadd <4 x float> %i.nq, %i.nr
  %interleaved.vec801 = shufflevector <4 x float> %i.nm, <4 x float> %i.ns, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec801, ptr %i.np, align 4
  %i.nt = getelementptr inbounds [4 x i8], ptr %6, i64 %i.mb ; 2 uses
  %wide.vec802 = load <8 x float>, ptr %i.nt, align 4, !alias.scope !1102, !noalias !1085 ; 2 uses
  %strided.vec803 = shufflevector <8 x float> %wide.vec802, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec804 = shufflevector <8 x float> %wide.vec802, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nu = fmul <4 x float> %i.mx, %strided.vec803
  %i.nv = fmul <4 x float> %i.mz, %strided.vec804
  %i.nw = fsub <4 x float> %i.nu, %i.nv
  %i.nx = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.nn
  %i.ny = getelementptr i8, ptr %i.nx, i64 -4
  %wide.vec805 = load <8 x float>, ptr %i.nt, align 4, !alias.scope !1102, !noalias !1085 ; 2 uses
  %strided.vec806 = shufflevector <8 x float> %wide.vec805, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec807 = shufflevector <8 x float> %wide.vec805, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nz = fmul <4 x float> %i.mz, %strided.vec806
  %i.oa = fmul <4 x float> %i.mx, %strided.vec807
  %i.ob = fadd <4 x float> %i.nz, %i.oa
  %interleaved.vec808 = shufflevector <4 x float> %i.nw, <4 x float> %i.ob, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec808, ptr %i.ny, align 4
  %index.next809 = add nuw i64 %index774, 4       ; 2 uses
  %i.oc = icmp eq i64 %index.next809, %n.vec772
  br i1 %i.oc, label %middle.block810, label %vector.body773, !llvm.loop !1104

middle.block810:                                  ; preds = %vector.body773
  br i1 %cmp.n811, label %._crit_edge247, label %scalar.ph768.preheader

scalar.ph768.preheader:                           ; preds = %vector.memcheck396, %vector.scevcheck371, %.lr.ph246, %middle.block810
  %indvars.iv281.ph = phi i64 [ %indvars.iv279, %vector.memcheck396 ], [ %indvars.iv279, %vector.scevcheck371 ], [ %indvars.iv279, %.lr.ph246 ], [ %i.lw, %middle.block810 ]
  %indvars.iv277.ph = phi i64 [ %i.jm, %vector.memcheck396 ], [ %i.jm, %vector.scevcheck371 ], [ %i.jm, %.lr.ph246 ], [ %i.lx, %middle.block810 ]
  %indvars.iv273.ph = phi i64 [ %i.jl, %vector.memcheck396 ], [ %i.jl, %vector.scevcheck371 ], [ %i.jl, %.lr.ph246 ], [ %i.ly, %middle.block810 ]
  %indvars.iv271.ph = phi i64 [ %i.jl, %vector.memcheck396 ], [ %i.jl, %vector.scevcheck371 ], [ %i.jl, %.lr.ph246 ], [ %i.lz, %middle.block810 ]
  %indvars.iv267.ph = phi i64 [ %i.jk, %vector.memcheck396 ], [ %i.jk, %vector.scevcheck371 ], [ %i.jk, %.lr.ph246 ], [ %i.ma, %middle.block810 ]
  %indvars.iv263.ph = phi i64 [ 2, %vector.memcheck396 ], [ 2, %vector.scevcheck371 ], [ 2, %.lr.ph246 ], [ %i.jd, %middle.block810 ]
  br label %scalar.ph768

scalar.ph768:                                     ; preds = %scalar.ph768.preheader, %scalar.ph768
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %scalar.ph768 ], [ %indvars.iv281.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %scalar.ph768 ], [ %indvars.iv277.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph768 ], [ %indvars.iv273.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph768 ], [ %indvars.iv271.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %scalar.ph768 ], [ %indvars.iv267.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %scalar.ph768 ], [ %indvars.iv263.ph, %scalar.ph768.preheader ] ; 3 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 2 ; 2 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, 2 ; 2 uses
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, -2 ; 2 uses
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, -2 ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 2 ; 3 uses
  %i.od = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next268
  %i.oe = load float, ptr %i.od, align 4          ; 2 uses
  %i.of = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next278
  %i.og = load float, ptr %i.of, align 4          ; 2 uses
  %i.oh = fadd float %i.oe, %i.og                 ; 2 uses
  %i.oi = fsub float %i.oe, %i.og                 ; 2 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next272
  %i.ok = load float, ptr %i.oj, align 4          ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next274
  %i.om = load float, ptr %i.ol, align 4          ; 2 uses
  %i.on = fsub float %i.ok, %i.om                 ; 2 uses
  %i.oo = fadd float %i.ok, %i.om                 ; 2 uses
  %i.op = getelementptr [4 x i8], ptr %2, i64 %indvars.iv267
  %i.oq = getelementptr i8, ptr %i.op, i64 4
  %i.or = load float, ptr %i.oq, align 4          ; 2 uses
  %i.os = getelementptr [4 x i8], ptr %2, i64 %indvars.iv277
  %i.ot = getelementptr i8, ptr %i.os, i64 -12
  %i.ou = load float, ptr %i.ot, align 4          ; 2 uses
  %i.ov = fsub float %i.or, %i.ou                 ; 2 uses
  %i.ow = fadd float %i.or, %i.ou                 ; 2 uses
  %i.ox = getelementptr [4 x i8], ptr %2, i64 %indvars.iv271
  %i.oy = getelementptr i8, ptr %i.ox, i64 4
  %i.oz = load float, ptr %i.oy, align 4          ; 2 uses
  %i.pa = getelementptr [4 x i8], ptr %2, i64 %indvars.iv273
  %i.pb = getelementptr i8, ptr %i.pa, i64 -12
  %i.pc = load float, ptr %i.pb, align 4          ; 2 uses
  %i.pd = fsub float %i.oz, %i.pc                 ; 2 uses
  %i.pe = fadd float %i.oz, %i.pc                 ; 2 uses
  %i.pf = fadd float %i.ow, %i.pe
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv281
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  store float %i.pf, ptr %i.ph, align 4
  %i.pi = fsub float %i.ow, %i.pe                 ; 2 uses
  %i.pj = fadd float %i.oi, %i.on
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next282
  store float %i.pj, ptr %i.pk, align 4
  %i.pl = fsub float %i.oi, %i.on                 ; 2 uses
  %i.pm = fsub float %i.ov, %i.oo                 ; 2 uses
  %i.pn = fadd float %i.oo, %i.ov                 ; 2 uses
  %i.po = fadd float %i.oh, %i.pd                 ; 2 uses
  %i.pp = fsub float %i.oh, %i.pd                 ; 2 uses
  %i.pq = add nsw i64 %indvars.iv263, -2          ; 3 uses
  %i.pr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.pq ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4
  %i.pt = fmul float %i.pm, %i.ps
  %i.pu = add nsw i64 %indvars.iv263, -1          ; 3 uses
  %i.pv = getelementptr inbounds [4 x i8], ptr %4, i64 %i.pu ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4
  %i.px = fmul float %i.po, %i.pw
  %i.py = fsub float %i.pt, %i.px
  %i.pz = add nuw nsw i64 %indvars.iv.next282, %i.el ; 2 uses
  %i.qa = getelementptr [4 x i8], ptr %3, i64 %i.pz ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 -4
  store float %i.py, ptr %i.qb, align 4
  %i.qc = load float, ptr %i.pr, align 4
  %i.qd = fmul float %i.po, %i.qc
  %i.qe = load float, ptr %i.pv, align 4
  %i.qf = fmul float %i.pm, %i.qe
  %i.qg = fadd float %i.qd, %i.qf
  store float %i.qg, ptr %i.qa, align 4
  %i.qh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.pq ; 2 uses
  %i.qi = load float, ptr %i.qh, align 4
  %i.qj = fmul float %i.pi, %i.qi
  %i.qk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.pu ; 2 uses
  %i.ql = load float, ptr %i.qk, align 4
  %i.qm = fmul float %i.pl, %i.ql
  %i.qn = fsub float %i.qj, %i.qm
  %i.qo = add nuw nsw i64 %i.pz, %i.el            ; 2 uses
  %i.qp = getelementptr [4 x i8], ptr %3, i64 %i.qo ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 -4
  store float %i.qn, ptr %i.qq, align 4
  %i.qr = load float, ptr %i.qh, align 4
  %i.qs = fmul float %i.pl, %i.qr
  %i.qt = load float, ptr %i.qk, align 4
  %i.qu = fmul float %i.pi, %i.qt
  %i.qv = fadd float %i.qs, %i.qu
  store float %i.qv, ptr %i.qp, align 4
  %i.qw = getelementptr inbounds [4 x i8], ptr %6, i64 %i.pq ; 2 uses
  %i.qx = load float, ptr %i.qw, align 4
  %i.qy = fmul float %i.pn, %i.qx
  %i.qz = getelementptr inbounds [4 x i8], ptr %6, i64 %i.pu ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4
  %i.rb = fmul float %i.pp, %i.ra
  %i.rc = fsub float %i.qy, %i.rb
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.qo ; 2 uses
  %i.rd = getelementptr i8, ptr %gep314, i64 -4
  store float %i.rc, ptr %i.rd, align 4
  %i.re = load float, ptr %i.qw, align 4
  %i.rf = fmul float %i.pp, %i.re
  %i.rg = load float, ptr %i.qz, align 4
  %i.rh = fmul float %i.pn, %i.rg
  %i.ri = fadd float %i.rf, %i.rh
  store float %i.ri, ptr %gep314, align 4
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %i.rj = icmp samesign ult i64 %indvars.iv.next264, %i.ek
  br i1 %i.rj, label %scalar.ph768, label %._crit_edge247, !llvm.loop !1105

._crit_edge247:                                   ; preds = %scalar.ph768, %middle.block810
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, %i.ek
  %i.rk = add nuw nsw i32 %.1249, 1               ; 2 uses
  %indvars.iv.next266 = add i32 %indvars.iv265, %i.b
  %indvars.iv.next270 = add i32 %indvars.iv269, %i.b
  %indvars.iv.next276 = add i32 %indvars.iv275, %i.b
  %exitcond295.not = icmp eq i32 %i.rk, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond295.not, label %._crit_edge251.split, label %.lr.ph246, !llvm.loop !1106

._crit_edge251.split:                             ; preds = %._crit_edge247, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.d, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph257.preheader

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.loopexit, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %._crit_edge251.split, %bb.c
  %i.rl = mul i32 %0, 3
  %i.rm = add nsw i32 %0, -1
  %i.rn = zext nneg i32 %0 to i64                 ; 2 uses
  %i.ro = sext i32 %i.b to i64                    ; 2 uses
  %i.rp = zext nneg i32 %i.rm to i64
  %i.rq = zext nneg i32 %i.a to i64               ; 3 uses
  %i.rr = sext i32 %i.rl to i64
  %invariant.gep315 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rq
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv300 = phi i64 [ %i.rr, %.lr.ph257.preheader ], [ %indvars.iv.next301, %.lr.ph257 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.rp, %.lr.ph257.preheader ], [ %indvars.iv.next299, %.lr.ph257 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.rn, %.lr.ph257.preheader ], [ %indvars.iv.next297, %.lr.ph257 ] ; 2 uses
  %.2255 = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.sp, %.lr.ph257 ]
  %i.rs = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.rt = load float, ptr %i.rs, align 4          ; 2 uses
  %i.ru = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv300 ; 2 uses
  %i.rv = load float, ptr %i.ru, align 4          ; 2 uses
  %i.rw = fadd float %i.rt, %i.rv                 ; 2 uses
  %i.rx = fsub float %i.rv, %i.rt                 ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rs, i64 -4
  %i.rz = load float, ptr %i.ry, align 4          ; 2 uses
  %i.sa = getelementptr i8, ptr %i.ru, i64 -4
  %i.sb = load float, ptr %i.sa, align 4          ; 2 uses
  %i.sc = fsub float %i.rz, %i.sb                 ; 2 uses
  %i.sd = fadd float %i.rz, %i.sb                 ; 2 uses
  %i.se = fadd float %i.sd, %i.sd
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv298
  store float %i.se, ptr %i.sf, align 4
  %i.sg = fsub float %i.sc, %i.rw
  %i.sh = fmul float %i.sg, f0x3FB504F3
  %i.si = add nuw nsw i64 %indvars.iv298, %i.rq   ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.si
  store float %i.sh, ptr %i.sj, align 4
  %i.sk = fadd float %i.rx, %i.rx
  %i.sl = add nuw nsw i64 %i.si, %i.rq            ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sl
  store float %i.sk, ptr %i.sm, align 4
  %i.sn = fadd float %i.rw, %i.sc
  %i.so = fmul float %i.sn, f0xBFB504F3
  %gep316 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep315, i64 %i.sl
  store float %i.so, ptr %gep316, align 4
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, %i.rn
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, %i.ro
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, %i.ro
  %i.sp = add nuw nsw i32 %.2255, 1               ; 2 uses
  %exitcond307.not = icmp eq i32 %i.sp, %1
  br i1 %exitcond307.not, label %.loopexit, label %.lr.ph257, !llvm.loop !1107

.loopexit:                                        ; preds = %.lr.ph257, %._crit_edge251.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradb2(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #43 {
bb.a:
  %i.a = mul i32 %1, %0                           ; 3 uses
  %i.b = shl i32 %0, 1                            ; 5 uses
  %i.c = add nsw i32 %i.b, -1                     ; 5 uses
  %i.d = icmp sgt i32 %1, 0                       ; 3 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sext i32 %0 to i64
  %i.f = sext i32 %i.a to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.f ; 2 uses
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 17
  br i1 %min.iters.check, label %.lr.ph.preheader355, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %ident.check = icmp ne i32 %0, 1
  %i.h = shl nuw i32 %1, 1
  %mul.result = add i32 %i.h, -2
  %i.i = icmp slt i32 %mul.result, 0
  %i.j = or i1 %ident.check, %i.i
  br i1 %i.j, label %.lr.ph.preheader355, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.k = zext nneg i32 %1 to i64
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.l
  %i.m = add nsw i32 %1, -1
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 %i.l
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep180 = getelementptr i8, ptr %i.q, i64 4
  %i.r = shl nuw nsw i64 %i.n, 3
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %scevgep181 = getelementptr i8, ptr %i.s, i64 8 ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.o
  %scevgep182 = getelementptr i8, ptr %i.t, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep181
  %bound1 = icmp ult ptr %2, %scevgep180
  %found.conflict = and i1 %bound0, %bound1
  %bound0183 = icmp ult ptr %3, %scevgep181
  %bound1184 = icmp ult ptr %2, %scevgep182
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx = or i1 %found.conflict, %found.conflict185
  br i1 %conflict.rdx, label %.lr.ph.preheader355, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.g, 3                     ; 2 uses
  %i.u = icmp eq i64 %n.mod.vf, 0
  %i.v = select i1 %i.u, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.g, %i.v                 ; 3 uses
  %i.w = trunc i64 %n.vec to i32                  ; 2 uses
  %i.x = shl i32 %i.w, 1
  %invariant.op = or disjoint i32 2, %i.c
  %invariant.op357 = or disjoint i32 4, %i.c
  %invariant.op359 = or disjoint i32 6, %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = trunc i64 %index to i32
  %i.z = shl i32 %i.y, 1                          ; 5 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ab, align 4, !alias.scope !1108
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ac = or disjoint i32 %i.c, %i.z
  %.reass = or disjoint i32 %i.z, %invariant.op
  %.reass358 = or disjoint i32 %i.z, %invariant.op357
  %.reass360 = or disjoint i32 %i.z, %invariant.op359
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sext i32 %.reass to i64
  %i.af = sext i32 %.reass358 to i64
  %i.ag = sext i32 %.reass360 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !1108
  %i.am = load float, ptr %i.ai, align 4, !alias.scope !1108
  %i.an = load float, ptr %i.aj, align 4, !alias.scope !1108
  %i.ao = load float, ptr %i.ak, align 4, !alias.scope !1108
  %i.ap = insertelement <4 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 3
  %i.at = fadd <4 x float> %strided.vec, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.at, ptr %i.au, align 4, !alias.scope !1111, !noalias !1108
  %wide.vec186 = load <8 x float>, ptr %i.ab, align 4, !alias.scope !1108
  %strided.vec187 = shufflevector <8 x float> %wide.vec186, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.av = load float, ptr %i.ah, align 4, !alias.scope !1108
  %i.aw = load float, ptr %i.ai, align 4, !alias.scope !1108
  %i.ax = load float, ptr %i.aj, align 4, !alias.scope !1108
  %i.ay = load float, ptr %i.ak, align 4, !alias.scope !1108
  %i.az = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3
  %i.bd = fsub <4 x float> %strided.vec187, %i.bc
  %i.be = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bd, ptr %i.be, align 4, !alias.scope !1113, !noalias !1108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %.lr.ph.preheader355, label %vector.body, !llvm.loop !1115

.lr.ph.preheader355:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.0100115.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.w, %vector.body ]
  %.0105114.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.x, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader355, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader355 ] ; 3 uses
  %.0100115 = phi i32 [ %i.bu, %.lr.ph ], [ %.0100115.ph, %.lr.ph.preheader355 ]
  %.0105114 = phi i32 [ %i.bt, %.lr.ph ], [ %.0105114.ph, %.lr.ph.preheader355 ] ; 2 uses
  %i.bg = sext i32 %.0105114 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = add nsw i32 %i.c, %.0105114
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = fadd float %i.bi, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bn, ptr %i.bo, align 4
end_hunk_4
begin_hunk_5_@dradb3:bb.a

._crit_edge162:                                   ; preds = %scalar.ph472, %middle.block510
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, %i.di
  %i.kf = add nuw nsw i32 %.1164, 1               ; 2 uses
  %indvars.iv.next179 = add i32 %indvars.iv178, %i.d
  %indvars.iv.next185 = add i32 %indvars.iv184, %i.d
  %indvars.iv.next189 = add i32 %indvars.iv188, %0
  %indvars.iv.next193 = add i32 %indvars.iv192, %0
  %exitcond214.not = icmp eq i32 %i.kf, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond214.not, label %.loopexit, label %.lr.ph161, !llvm.loop !1156

.loopexit:                                        ; preds = %._crit_edge162, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @dradbg(i32 noundef %0, i32 noundef range(i32 5, 3) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %8 to i64                  ; 7 uses
  %i.c = mul i32 %1, %0                           ; 7 uses
  %i.d = mul i32 %2, %0                           ; 30 uses
  %i.e = sitofp i32 %1 to float
  %i.f = fdiv float f0x40C90FDB, %i.e
  %i.g = fpext float %i.f to double               ; 2 uses
  %i.h = tail call double @cos(double noundef %i.g) #62
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = tail call double @sin(double noundef %i.g) #62
  %i.k = fptrunc double %i.j to float             ; 2 uses
  %i.l = add i32 %0, -1                           ; 2 uses
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = add nsw i32 %1, 1
  %i.o = ashr i32 %i.n, 1                         ; 11 uses
  %i.p = icmp slt i32 %0, %2
  br i1 %i.p, label %.preheader666, label %.preheader669

.preheader669:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %2, 0
  %i.r = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.preheader668.preheader, label %.loopexit667

.preheader668.preheader:                          ; preds = %.preheader669
  %i.s = zext nneg i32 %0 to i64                  ; 4 uses
  %i.t = sext i32 %i.c to i64                     ; 2 uses
  %i.u = add nsw i32 %2, -1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, %i.v
  %i.x = zext i32 %i.l to i64                     ; 2 uses
  %i.y = add nuw i64 %i.w, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = getelementptr i8, ptr %7, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 4
  %i.ab = mul nsw i64 %i.t, %i.v
  %i.ac = add i64 %i.ab, %i.x
  %i.ad = shl i64 %i.ac, 2
  %i.ae = getelementptr i8, ptr %4, i64 %i.ad
  %scevgep1203 = getelementptr i8, ptr %i.ae, i64 4
  %min.iters.check = icmp ult i32 %0, 8
  %bound0 = icmp ult ptr %7, %scevgep1203
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.c, 0
  %i.af = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.s, 2147483640               ; 5 uses
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br label %.preheader668

.preheader666:                                    ; preds = %bb.a
  %i.ah = icmp sgt i32 %0, 0
  %i.ai = icmp sgt i32 %2, 0
  %or.cond861 = and i1 %i.ah, %i.ai
  br i1 %or.cond861, label %.preheader665.preheader, label %.loopexit667

.preheader665.preheader:                          ; preds = %.preheader666
  %i.aj = zext nneg i32 %0 to i64                 ; 7 uses
  %i.ak = sext i32 %i.c to i64                    ; 5 uses
  %i.al = add nsw i32 %2, -1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.aj, %i.am
  %i.ao = shl nuw nsw i64 %i.an, 2
  %scevgep1208 = getelementptr i8, ptr %7, i64 %i.ao
  %i.ap = sext i32 %1 to i64
  %i.aq = mul nsw i64 %i.ap, %i.am
  %i.ar = sext i32 %1 to i64                      ; 5 uses
  %i.as = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1216 = icmp ugt i32 %2, 3
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond1768 = and i1 %min.iters.check1216, %ident.check.not
  %n.vec1219 = and i64 %i.as, 2147483644          ; 5 uses
  %i.at = mul nsw i64 %n.vec1219, %i.ar
  %i.au = trunc nuw nsw i64 %n.vec1219 to i32
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.ar
  %.idx = shl nsw i64 %i.ar, 3
  %invariant.gep1820 = getelementptr i8, ptr %4, i64 %.idx
  %.idx1763 = mul nsw i64 %i.ar, 12
  %invariant.gep1822 = getelementptr i8, ptr %4, i64 %.idx1763
  %cmp.n1224 = icmp eq i64 %n.vec1219, %i.as
  br label %.preheader665

.preheader668:                                    ; preds = %.preheader668.preheader, %._crit_edge
  %indvars.iv892 = phi i64 [ 0, %.preheader668.preheader ], [ %indvars.iv.next893, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader668.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.0543676 = phi i32 [ 0, %.preheader668.preheader ], [ %i.ce, %._crit_edge ]
  %brmerge1870 = select i1 %min.iters.check, i1 true, i1 %i.af
  br i1 %brmerge1870, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader668
  %i.av = add i64 %indvars.iv892, %n.vec
  %i.aw = add nuw i64 %indvars.iv, %n.vec
  %i.ax = getelementptr [4 x i8], ptr %4, i64 %indvars.iv892
  %i.ay = getelementptr [4 x i8], ptr %7, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x float>, ptr %i.az, align 4, !alias.scope !1157
  %wide.load1204 = load <4 x float>, ptr %i.ba, align 4, !alias.scope !1157
  %i.bb = getelementptr [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> %wide.load, ptr %i.bb, align 4, !alias.scope !1160, !noalias !1157
  store <4 x float> %wide.load1204, ptr %i.bc, align 4, !alias.scope !1160, !noalias !1157
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader668, %middle.block
  %indvars.iv894.ph = phi i64 [ %i.av, %middle.block ], [ %indvars.iv892, %.preheader668 ] ; 2 uses
  %indvars.iv890.ph = phi i64 [ %i.aw, %middle.block ], [ %indvars.iv, %.preheader668 ] ; 2 uses
  %.0533673.ph = phi i32 [ %i.ag, %middle.block ], [ 0, %.preheader668 ] ; 4 uses
  %i.be = sub i32 %0, %.0533673.ph
  %xtraiter = and i32 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv894.prol = phi i64 [ %indvars.iv.next895.prol, %scalar.ph.prol ], [ %indvars.iv894.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv890.prol = phi i64 [ %indvars.iv.next891.prol, %scalar.ph.prol ], [ %indvars.iv890.ph, %scalar.ph.preheader ] ; 2 uses
  %.0533673.prol = phi i32 [ %i.bi, %scalar.ph.prol ], [ %.0533673.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv894.prol
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890.prol
  store float %i.bg, ptr %i.bh, align 4
  %indvars.iv.next891.prol = add nuw nsw i64 %indvars.iv890.prol, 1 ; 2 uses
  %indvars.iv.next895.prol = add nsw i64 %indvars.iv894.prol, 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.0533673.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1163

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv894.unr = phi i64 [ %indvars.iv894.ph, %scalar.ph.preheader ], [ %indvars.iv.next895.prol, %scalar.ph.prol ]
  %indvars.iv890.unr = phi i64 [ %indvars.iv890.ph, %scalar.ph.preheader ], [ %indvars.iv.next891.prol, %scalar.ph.prol ]
  %.0533673.unr = phi i32 [ %.0533673.ph, %scalar.ph.preheader ], [ %i.bi, %scalar.ph.prol ]
  %i.bj = sub i32 %.0533673.ph, %0
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.3, %scalar.ph ], [ %indvars.iv894.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv890 = phi i64 [ %indvars.iv.next891.3, %scalar.ph ], [ %indvars.iv890.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0533673 = phi i32 [ %i.cd, %scalar.ph ], [ %.0533673.unr, %scalar.ph.prol.loopexit ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  store float %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bq, ptr %i.bs, align 4
  %i.bt = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %i.bv, ptr %i.bx, align 4
  %i.by = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.ca, ptr %i.cc, align 4
  %indvars.iv.next891.3 = add nuw nsw i64 %indvars.iv890, 4
  %indvars.iv.next895.3 = add nsw i64 %indvars.iv894, 4
  %i.cd = add nuw nsw i32 %.0533673, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cd, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1164

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.s
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, %i.t
  %i.ce = add nuw nsw i32 %.0543676, 1            ; 2 uses
  %exitcond902.not = icmp eq i32 %i.ce, %2
  br i1 %exitcond902.not, label %.loopexit667, label %.preheader668, !llvm.loop !1165

.preheader665:                                    ; preds = %.preheader665.preheader, %._crit_edge680
  %indvars.iv903 = phi i64 [ 0, %.preheader665.preheader ], [ %indvars.iv.next904, %._crit_edge680 ] ; 11 uses
  br i1 %or.cond1768, label %vector.memcheck1207, label %scalar.ph1215.preheader

vector.memcheck1207:                              ; preds = %.preheader665
  %i.cf = shl nuw nsw i64 %indvars.iv903, 2
  %scevgep1209 = getelementptr i8, ptr %4, i64 %i.cf ; 4 uses
  %i.cg = add i64 %i.aq, %indvars.iv903
  %i.ch = shl i64 %i.cg, 2
  %scevgep1210 = getelementptr i8, ptr %4, i64 %i.ch ; 4 uses
  %i.ci = icmp ugt ptr %scevgep1209, %scevgep1210
  %umax = select i1 %i.ci, ptr %scevgep1209, ptr %scevgep1210
  %scevgep1211 = getelementptr i8, ptr %umax, i64 4
  %i.cj = icmp ult ptr %scevgep1209, %scevgep1210
  %umin = select i1 %i.cj, ptr %scevgep1209, ptr %scevgep1210
  %bound01212 = icmp ult ptr %7, %scevgep1211
  %bound11213 = icmp ult ptr %umin, %scevgep1208
  %found.conflict1214 = and i1 %bound01212, %bound11213
  br i1 %found.conflict1214, label %scalar.ph1215.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %vector.memcheck1207
  %i.ck = add i64 %indvars.iv903, %i.at
  %i.cl = add nuw i64 %indvars.iv903, %n.vec1219
  %i.cm = getelementptr [4 x i8], ptr %7, i64 %indvars.iv903
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1217
  %index1221 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1222, %vector.body1220 ] ; 3 uses
  %i.cn = mul i64 %index1221, %i.ar
  %i.co = add i64 %indvars.iv903, %i.cn           ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.co
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %gep1821 = getelementptr [4 x i8], ptr %invariant.gep1820, i64 %i.co
  %gep1823 = getelementptr [4 x i8], ptr %invariant.gep1822, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !alias.scope !1166
  %i.cr = load float, ptr %gep, align 4, !alias.scope !1166
  %i.cs = load float, ptr %gep1821, align 4, !alias.scope !1166
  %i.ct = load float, ptr %gep1823, align 4, !alias.scope !1166
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3
  %i.cy = getelementptr [4 x i8], ptr %i.cm, i64 %index1221
  store <4 x float> %i.cx, ptr %i.cy, align 4, !alias.scope !1169, !noalias !1166
  %index.next1222 = add nuw i64 %index1221, 4     ; 2 uses
  %i.cz = icmp eq i64 %index.next1222, %n.vec1219
  br i1 %i.cz, label %middle.block1223, label %vector.body1220, !llvm.loop !1171

middle.block1223:                                 ; preds = %vector.body1220
  br i1 %cmp.n1224, label %._crit_edge680, label %scalar.ph1215.preheader

scalar.ph1215.preheader:                          ; preds = %vector.memcheck1207, %.preheader665, %middle.block1223
  %indvars.iv907.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.ck, %middle.block1223 ] ; 2 uses
  %indvars.iv905.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.cl, %middle.block1223 ] ; 2 uses
  %.1544679.ph = phi i32 [ 0, %vector.memcheck1207 ], [ 0, %.preheader665 ], [ %i.au, %middle.block1223 ] ; 4 uses
  %i.da = sub i32 %2, %.1544679.ph
  %xtraiter1803 = and i32 %i.da, 3                ; 2 uses
  %lcmp.mod1804.not = icmp eq i32 %xtraiter1803, 0
  br i1 %lcmp.mod1804.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol

scalar.ph1215.prol:                               ; preds = %scalar.ph1215.preheader, %scalar.ph1215.prol
  %indvars.iv907.prol = phi i64 [ %indvars.iv.next908.prol, %scalar.ph1215.prol ], [ %indvars.iv907.ph, %scalar.ph1215.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %scalar.ph1215.prol ], [ %indvars.iv905.ph, %scalar.ph1215.preheader ] ; 2 uses
  %.1544679.prol = phi i32 [ %i.de, %scalar.ph1215.prol ], [ %.1544679.ph, %scalar.ph1215.preheader ]
  %prol.iter1805 = phi i32 [ %prol.iter1805.next, %scalar.ph1215.prol ], [ 0, %scalar.ph1215.preheader ]
  %i.db = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907.prol
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905.prol
  store float %i.dc, ptr %i.dd, align 4
  %indvars.iv.next906.prol = add nuw nsw i64 %indvars.iv905.prol, %i.aj ; 2 uses
  %indvars.iv.next908.prol = add nsw i64 %indvars.iv907.prol, %i.ak ; 2 uses
  %i.de = add nuw nsw i32 %.1544679.prol, 1       ; 2 uses
  %prol.iter1805.next = add i32 %prol.iter1805, 1 ; 2 uses
  %prol.iter1805.cmp.not = icmp eq i32 %prol.iter1805.next, %xtraiter1803
  br i1 %prol.iter1805.cmp.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol, !llvm.loop !1172

scalar.ph1215.prol.loopexit:                      ; preds = %scalar.ph1215.prol, %scalar.ph1215.preheader
  %indvars.iv907.unr = phi i64 [ %indvars.iv907.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next908.prol, %scalar.ph1215.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next906.prol, %scalar.ph1215.prol ]
  %.1544679.unr = phi i32 [ %.1544679.ph, %scalar.ph1215.preheader ], [ %i.de, %scalar.ph1215.prol ]
  %i.df = sub i32 %.1544679.ph, %2
  %i.dg = icmp ugt i32 %i.df, -4
  br i1 %i.dg, label %._crit_edge680, label %scalar.ph1215

scalar.ph1215:                                    ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215
  %indvars.iv907 = phi i64 [ %indvars.iv.next908.3, %scalar.ph1215 ], [ %indvars.iv907.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.3, %scalar.ph1215 ], [ %indvars.iv905.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %.1544679 = phi i32 [ %i.dt, %scalar.ph1215 ], [ %.1544679.unr, %scalar.ph1215.prol.loopexit ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905
  store float %i.di, ptr %i.dj, align 4
  %indvars.iv.next906 = add nuw nsw i64 %indvars.iv905, %i.aj ; 2 uses
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, %i.ak ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906
  store float %i.dl, ptr %i.dm, align 4
  %indvars.iv.next906.1 = add nuw nsw i64 %indvars.iv.next906, %i.aj ; 2 uses
  %indvars.iv.next908.1 = add nsw i64 %indvars.iv.next908, %i.ak ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.1
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.1
  store float %i.do, ptr %i.dp, align 4
  %indvars.iv.next906.2 = add nuw nsw i64 %indvars.iv.next906.1, %i.aj ; 2 uses
  %indvars.iv.next908.2 = add nsw i64 %indvars.iv.next908.1, %i.ak ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.2
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.2
  store float %i.dr, ptr %i.ds, align 4
  %indvars.iv.next906.3 = add nuw nsw i64 %indvars.iv.next906.2, %i.aj
  %indvars.iv.next908.3 = add nsw i64 %indvars.iv.next908.2, %i.ak
  %i.dt = add nuw nsw i32 %.1544679, 4            ; 2 uses
  %exitcond912.not.3 = icmp eq i32 %i.dt, %2
  br i1 %exitcond912.not.3, label %._crit_edge680, label %scalar.ph1215, !llvm.loop !1173

._crit_edge680:                                   ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215, %middle.block1223
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond916.not = icmp eq i64 %indvars.iv.next904, %i.aj
  br i1 %exitcond916.not, label %.loopexit667, label %.preheader665, !llvm.loop !1174

.loopexit667:                                     ; preds = %._crit_edge, %._crit_edge680, %.preheader669, %.preheader666
  %i.du = shl i32 %0, 1                           ; 7 uses
  %i.dv = icmp sgt i32 %i.o, 1                    ; 7 uses
  %i.dw = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond862 = and i1 %i.dv, %i.dw               ; 2 uses
  br i1 %or.cond862, label %.lr.ph.preheader, label %._crit_edge695.split

.lr.ph.preheader:                                 ; preds = %.loopexit667
  %i.dx = sext i32 %0 to i64                      ; 6 uses
  %i.dy = sext i32 %i.du to i64                   ; 2 uses
  %i.dz = sext i32 %i.c to i64                    ; 3 uses
  %i.ea = add i32 %1, -1                          ; 2 uses
  %i.eb = mul i32 %i.d, %i.ea
  %i.ec = add nsw i32 %2, -1                      ; 3 uses
  %i.ed = sext i32 %1 to i64                      ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 2                    ; 2 uses
  %i.ef = mul nsw i64 %i.ed, -4                   ; 2 uses
  %i.eg = zext i32 %i.ec to i64                   ; 2 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 4                ; 2 uses
  %scevgep1237 = getelementptr i8, ptr %7, i64 %i.ei
  %scevgep1240 = getelementptr i8, ptr %7, i64 %i.ei
  %i.ej = sext i32 %1 to i64
  %i.ek = mul nsw i64 %i.ej, %i.eg
  %i.el = shl i64 %i.ek, 2                        ; 2 uses
  %i.em = getelementptr i8, ptr %4, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = getelementptr i8, ptr %4, i64 %i.el
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %i.eq = sext i32 %1 to i64                      ; 5 uses
  %i.er = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1271 = icmp ult i32 %2, 36
  %ident.check1229 = icmp ne i32 %0, 1
  %i.es = icmp slt i32 %1, 0                      ; 2 uses
  %i.et = select i1 %i.es, i64 %i.ef, i64 %i.ee
  %i.eu = zext i32 %i.ec to i64
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.et, i64 %i.eu) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ev = sub i64 0, %mul.result
  %i.ew = icmp slt i32 %1, 0                      ; 2 uses
  %i.ex = select i1 %i.ew, i64 %i.ef, i64 %i.ee
  %i.ey = zext i32 %i.ec to i64
  %mul1232 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ex, i64 %i.ey) ; 2 uses
  %mul.result1233 = extractvalue { i64, i1 } %mul1232, 0 ; 2 uses
  %mul.overflow1234 = extractvalue { i64, i1 } %mul1232, 1
  %i.ez = sub i64 0, %mul.result1233
  %invariant.op = or i1 %mul.overflow, %ident.check1229
  %n.vec1274 = and i64 %i.er, 2147483644          ; 6 uses
  %i.fa = mul nsw i64 %n.vec1274, %i.eq
  %i.fb = trunc nuw nsw i64 %n.vec1274 to i32
  %invariant.gep1824 = getelementptr [4 x i8], ptr %4, i64 %i.eq
  %.idx1764 = shl nsw i64 %i.eq, 3
  %invariant.gep1826 = getelementptr i8, ptr %4, i64 %.idx1764
  %.idx1765 = mul nsw i64 %i.eq, 12
  %invariant.gep1828 = getelementptr i8, ptr %4, i64 %.idx1765
  %cmp.n1279 = icmp eq i64 %n.vec1274, %i.er
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge688
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge688 ] ; 5 uses
  %indvars.iv925 = phi i32 [ %i.eb, %.lr.ph.preheader ], [ %indvars.iv.next926, %._crit_edge688 ] ; 2 uses
  %indvars.iv921 = phi i64 [ %i.dy, %.lr.ph.preheader ], [ %indvars.iv.next922, %._crit_edge688 ] ; 6 uses
  %indvars.iv917 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next918, %._crit_edge688 ] ; 2 uses
  %.0535692 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.ip, %._crit_edge688 ]
  %i.fc = trunc i64 %indvar to i32
  %i.fd = add i32 %i.fc, 1
  %i.fe = mul i32 %i.fd, %2
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 2                    ; 2 uses
  %scevgep1236 = getelementptr i8, ptr %7, i64 %i.fg ; 3 uses
  %scevgep1238 = getelementptr i8, ptr %scevgep1237, i64 %i.fg ; 3 uses
  %i.fh = trunc i64 %indvar to i32
  %i.fi = sub i32 %i.ea, %i.fh
  %i.fj = mul i32 %2, %i.fi
end_hunk_5
