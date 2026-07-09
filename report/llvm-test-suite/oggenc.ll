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
  %i.bs = shl nsw i64 %i.br, 3
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
  %i.bx = shl nsw i64 %i.bw, 3
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
  %.7208 = phi i64 [ 2, %.lr.ph209 ], [ %i.jr, %post_Y.exit168 ] ; 5 uses
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
  %sext = shl i64 %.7208, 32
  %5 = ashr exact i64 %sext, 32                   ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %5
  %i.jh = load i32, ptr %i.jg, align 4            ; 3 uses
  %i.ji = icmp slt i32 %i.jh, 0
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %5
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
