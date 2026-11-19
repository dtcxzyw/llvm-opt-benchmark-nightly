Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@decode_residue:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !40
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.bd ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !40
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bd ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !40
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bd ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !40
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.bd ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %make_block_array.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

make_block_array.exit.loopexit.unr-lcssa:         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %make_block_array.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %make_block_array.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %make_block_array.exit.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.cb, %make_block_array.exit.loopexit.unr-lcssa ]
  %lcmp.mod1053 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1053)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.013.i.epil = phi ptr [ %.013.i.epil.init, %.epil.preheader ], [ %i.cd, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil
  store ptr %.013.i.epil, ptr %i.cc, align 8, !tbaa !40
  %i.cd = getelementptr inbounds i8, ptr %.013.i.epil, i64 %i.bd
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %make_block_array.exit, label %bb.f, !llvm.loop !211

make_block_array.exit:                            ; preds = %make_block_array.exit.loopexit.unr-lcssa, %bb.f, %setup_temp_malloc.exit
  %i.ce = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ce, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %make_block_array.exit
  %i.cf = sext i32 %3 to i64
  %i.cg = shl nsw i64 %i.cf, 2                    ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter1055 = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i32 %2, 1
  br i1 %i.ch, label %.epil.preheader1054, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter1059 = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %niter1060 = phi i64 [ 0, %.lr.ph.new ], [ %niter1060.next.1, %bb.k ]
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !50
  %.not337 = icmp eq i8 %i.cj, 0
  br i1 %.not337, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %i.cg, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !50
  %.not337.1 = icmp eq i8 %i.cn, 0
  br i1 %.not337.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %i.cg, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter1060.next.1 = add i64 %niter1060, 2       ; 2 uses
  %niter1060.ncmp.1 = icmp eq i64 %niter1060.next.1, %unroll_iter1059
  br i1 %niter1060.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g, !llvm.loop !212

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod1057.not = icmp eq i64 %xtraiter1055, 0
  br i1 %lcmp.mod1057.not, label %._crit_edge, label %.epil.preheader1054

.epil.preheader1054:                              ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod1058 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod1058)
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.epil.init
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !50
  %.not337.epil = icmp eq i8 %i.cr, 0
  br i1 %.not337.epil, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.epil.preheader1054
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 0, i64 %i.cg, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader1054, %bb.l, %._crit_edge.unr-lcssa
  %i.cu = icmp ne i32 %2, 1
  %or.cond = and i1 %i.cu, %i.s
  br i1 %or.cond, label %.lr.ph728.preheader, label %.preheader660

._crit_edge.thread:                               ; preds = %make_block_array.exit
  br i1 %i.s, label %._crit_edge729, label %.preheader660

.preheader660:                                    ; preds = %._crit_edge.thread, %._crit_edge
  %i.cv = icmp sgt i32 %i.ac, 0
  %i.cw = icmp slt i32 %2, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 29 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 29 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 17 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 17 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 20 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1763 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1508 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 34 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 17 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 13 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 17 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 14 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dn = icmp sgt i32 %i.r, 0
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.dp = icmp eq i16 %.fr759, 0
  br i1 %i.cv, label %.preheader659.preheader, label %.thread633

.preheader659.preheader:                          ; preds = %.preheader660
  %i.dq = sext i32 %i.r to i64                    ; 2 uses
  %wide.trip.count785 = zext nneg i32 %2 to i64
  %wide.trip.count790 = zext nneg i32 %2 to i64
  %wide.trip.count798 = zext nneg i32 %2 to i64
  br label %.preheader659

.lr.ph728.preheader:                              ; preds = %._crit_edge
  %wide.trip.count813 = zext nneg i32 %2 to i64
  br label %.lr.ph728

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %bb.m
  %indvars.iv810 = phi i64 [ 0, %.lr.ph728.preheader ], [ %indvars.iv.next811, %bb.m ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv810
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !50
  %.not328 = icmp eq i8 %i.ds, 0
  br i1 %.not328, label %._crit_edge729.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph728
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond814.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count813
  br i1 %exitcond814.not, label %.thread633, label %.lr.ph728, !llvm.loop !213

._crit_edge729.loopexit:                          ; preds = %.lr.ph728
  %i.dt = trunc nuw nsw i64 %indvars.iv810 to i32
  br label %._crit_edge729

._crit_edge729:                                   ; preds = %._crit_edge729.loopexit, %._crit_edge.thread
  %.0302.lcssa = phi i32 [ %i.dt, %._crit_edge729.loopexit ], [ 0, %._crit_edge.thread ]
  %i.du = icmp eq i32 %.0302.lcssa, %2
  br i1 %i.du, label %.thread633, label %.preheader643

.preheader643:                                    ; preds = %._crit_edge729
  %i.dv = icmp eq i32 %2, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 10 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.eb = icmp sgt i32 %i.r, 0                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  br i1 %i.dv, label %.preheader643.split.us, label %.preheader643.split

.preheader643.split.us:                           ; preds = %.preheader643
  %i.ed = icmp sgt i32 %i.ac, 0
  br i1 %i.ed, label %.preheader.us.preheader, label %.thread633

.preheader.us.preheader:                          ; preds = %.preheader643.split.us
  %i.ee = sext i32 %i.r to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv831 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next832, %..loopexit_crit_edge.us ] ; 3 uses
  %i.ef = icmp eq i64 %indvars.iv831, 0
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %._crit_edge746.us
  %indvars.iv828 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next829, %._crit_edge746.us ] ; 3 uses
  %.0294748.us = phi i32 [ 0, %.preheader.us ], [ %.1295.lcssa.us, %._crit_edge746.us ] ; 4 uses
  %i.eg = load i32, ptr %i.h, align 8, !tbaa !99
  %i.eh = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ei = mul i32 %i.eh, %.0294748.us
  %i.ej = add i32 %i.ei, %i.eg                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ek = and i32 %i.ej, 1
  store i32 %i.ek, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.el = ashr i32 %i.ej, 1
  store i32 %i.el, ptr %i.b, align 4, !tbaa !47
  br i1 %i.ef, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.em = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.en = load i8, ptr %i.l, align 1, !tbaa !97
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2120 x i8], ptr %i.em, i64 %i.eo ; 5 uses
  %i.eq = load i32, ptr %i.dw, align 8, !tbaa !84 ; 2 uses
  %i.er = icmp slt i32 %i.eq, 10
  br i1 %i.er, label %bb.p, label %prep_huffman.exit.us

bb.p:                                             ; preds = %bb.o
  %i.es = icmp eq i32 %i.eq, 0
  br i1 %i.es, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dx, align 4, !tbaa !88
  br label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.u
  %i.et = load i32, ptr %i.dz, align 4, !tbaa !83
  %.not.i346.us = icmp eq i32 %i.et, 0
  br i1 %.not.i346.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load i8, ptr %i.dy, align 4, !tbaa !86
  %.not14.i.us = icmp eq i8 %i.eu, 0
  br i1 %.not14.i.us, label %prep_huffman.exit.us, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ev = call i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %prep_huffman.exit.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = load i32, ptr %i.dw, align 8, !tbaa !84 ; 3 uses
  %i.ey = shl i32 %i.ev, %i.ex
  %i.ez = load i32, ptr %i.dx, align 4, !tbaa !88
  %i.fa = add i32 %i.ez, %i.ey
  store i32 %i.fa, ptr %i.dx, align 4, !tbaa !88
  %i.fb = add nsw i32 %i.ex, 8
  store i32 %i.fb, ptr %i.dw, align 8, !tbaa !84
  %i.fc = icmp slt i32 %i.ex, 17
  br i1 %i.fc, label %bb.r, label %prep_huffman.exit.us, !llvm.loop !8

prep_huffman.exit.us:                             ; preds = %bb.s, %bb.t, %bb.u, %bb.o
  %i.fd = load i32, ptr %i.dx, align 4, !tbaa !88 ; 2 uses
  %i.fe = and i32 %i.fd, 1023
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !59 ; 3 uses
  %i.fj = icmp sgt i16 %i.fi, -1
  br i1 %i.fj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %prep_huffman.exit.us
  %i.fk = call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.ep)
  br label %bb.x

bb.w:                                             ; preds = %prep_huffman.exit.us
  %i.fl = zext nneg i16 %i.fi to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !57
  %i.fo = zext nneg i16 %i.fi to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !50
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %i.fs = lshr i32 %i.fd, %i.fr
  store i32 %i.fs, ptr %i.dx, align 4, !tbaa !88
  %i.ft = load i32, ptr %i.dw, align 8, !tbaa !84
  %i.fu = sub nsw i32 %i.ft, %i.fr                ; 2 uses
  %spec.select.us = call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %.inv636.us = icmp sgt i32 %i.fu, -1
  %spec.select338.us = select i1 %.inv636.us, i32 %i.fl, i32 -1
  store i32 %spec.select.us, ptr %i.dw, align 8, !tbaa !84
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1288.us = phi i32 [ %spec.select338.us, %bb.w ], [ %i.fk, %bb.v ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 27
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !55
  %.not334.us = icmp eq i8 %i.fw, 0
  br i1 %.not334.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ep, i64 2104
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !63
  %i.fz = sext i32 %.1288.us to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !47
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2289.us = phi i32 [ %i.gb, %bb.y ], [ %.1288.us, %bb.x ] ; 2 uses
  %.not335.us = icmp eq i32 %.2289.us, -1
  br i1 %.not335.us, label %.thread550, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = load ptr, ptr %i.ea, align 8, !tbaa !103
  %i.gd = sext i32 %.2289.us to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !104
  %i.gg = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv828
  store ptr %i.gf, ptr %i.gh, align 8, !tbaa !104
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.n
  %i.gi = icmp slt i32 %.0294748.us, %i.ac
  %i.gj = select i1 %i.eb, i1 %i.gi, i1 false
  br i1 %i.gj, label %.lr.ph745.us, label %._crit_edge746.us

bb.ac:                                            ; preds = %.lr.ph745.us, %.thread547.us
  %i.gk = phi ptr [ %.pre845, %.lr.ph745.us ], [ %i.hg, %.thread547.us ] ; 2 uses
  %i.gl = phi ptr [ %.pre843, %.lr.ph745.us ], [ %i.hh, %.thread547.us ] ; 2 uses
  %i.gm = phi i32 [ %.pre841, %.lr.ph745.us ], [ %i.hi, %.thread547.us ] ; 3 uses
  %indvars.iv825 = phi i64 [ 0, %.lr.ph745.us ], [ %indvars.iv.next826, %.thread547.us ] ; 2 uses
  %.1295743.us = phi i32 [ %.0294748.us, %.lr.ph745.us ], [ %.pre-phi, %.thread547.us ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv828
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !104
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv825
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !50
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %indvars.iv831
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !59 ; 2 uses
  %i.gv = icmp sgt i16 %i.gu, -1
  br i1 %i.gv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gw = load i32, ptr %i.h, align 8, !tbaa !99
  %i.gx = add nsw i32 %.1295743.us, 1             ; 2 uses
  %i.gy = mul i32 %i.gm, %i.gx
  %i.gz = add i32 %i.gy, %i.gw                    ; 2 uses
  %i.ha = and i32 %i.gz, 1
  store i32 %i.ha, ptr %i.a, align 4, !tbaa !47
  %i.hb = ashr i32 %i.gz, 1
  store i32 %i.hb, ptr %i.b, align 4, !tbaa !47
  br label %.thread547.us

bb.ae:                                            ; preds = %bb.ac
  %i.hc = zext nneg i16 %i.gu to i64
  %i.hd = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.he = getelementptr inbounds nuw [2120 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = call i32 @codebook_decode_deinterleave_repeat(ptr noundef %0, ptr noundef %i.he, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %3, i32 noundef %i.gm)
  %.not336.not.us = icmp eq i32 %i.hf, 0
  br i1 %.not336.not.us, label %.thread550, label %..thread547.us_crit_edge

..thread547.us_crit_edge:                         ; preds = %bb.ae
  %.pre844 = load ptr, ptr %i.ec, align 8, !tbaa !106
  %.pre842 = load ptr, ptr %i.ay, align 8, !tbaa !105
  %.pre840 = load i32, ptr %i.aa, align 8, !tbaa !101
  %.pre846 = add nsw i32 %.1295743.us, 1
  br label %.thread547.us

.thread547.us:                                    ; preds = %..thread547.us_crit_edge, %bb.ad
  %.pre-phi = phi i32 [ %.pre846, %..thread547.us_crit_edge ], [ %i.gx, %bb.ad ] ; 3 uses
  %i.hg = phi ptr [ %.pre844, %..thread547.us_crit_edge ], [ %i.gk, %bb.ad ]
  %i.hh = phi ptr [ %.pre842, %..thread547.us_crit_edge ], [ %i.gl, %bb.ad ]
  %i.hi = phi i32 [ %.pre840, %..thread547.us_crit_edge ], [ %i.gm, %bb.ad ]
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 1 ; 2 uses
  %i.hj = icmp slt i64 %indvars.iv.next826, %i.ee
  %i.hk = icmp slt i32 %.pre-phi, %i.ac
  %i.hl = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %i.hl, label %bb.ac, label %._crit_edge746.us, !llvm.loop !214

._crit_edge746.us:                                ; preds = %.thread547.us, %bb.ab
  %.1295.lcssa.us = phi i32 [ %.0294748.us, %bb.ab ], [ %.pre-phi, %.thread547.us ] ; 2 uses
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.hm = icmp slt i32 %.1295.lcssa.us, %i.ac
  br i1 %i.hm, label %bb.n, label %..loopexit_crit_edge.us, !llvm.loop !215

.lr.ph745.us:                                     ; preds = %bb.ab
  %.pre841 = load i32, ptr %i.aa, align 8, !tbaa !101
  %.pre843 = load ptr, ptr %i.ay, align 8, !tbaa !105
  %.pre845 = load ptr, ptr %i.ec, align 8, !tbaa !106
  br label %bb.ac

..loopexit_crit_edge.us:                          ; preds = %._crit_edge746.us
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 1 ; 2 uses
  %exitcond834.not = icmp eq i64 %indvars.iv.next832, 8
  br i1 %exitcond834.not, label %.thread633, label %.preheader.us, !llvm.loop !216

.preheader643.split:                              ; preds = %.preheader643
  %i.hn = icmp slt i32 %i.ac, 1
  %i.ho = icmp slt i32 %2, 3
  %brmerge = select i1 %i.ho, i1 true, i1 %i.hn
  br i1 %brmerge, label %.thread633, label %.preheader640.preheader

.preheader640.preheader:                          ; preds = %.preheader643.split
  %i.hp = sext i32 %i.r to i64
  br label %.preheader640

.preheader640:                                    ; preds = %.preheader640.preheader, %..loopexit641_crit_edge
  %indvars.iv821 = phi i64 [ 0, %.preheader640.preheader ], [ %indvars.iv.next822, %..loopexit641_crit_edge ] ; 3 uses
  %i.hq = icmp eq i64 %indvars.iv821, 0
  br label %bb.af

.thread550:                                       ; preds = %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.thread633

bb.af:                                            ; preds = %.preheader640, %._crit_edge737
  %indvars.iv818 = phi i64 [ 0, %.preheader640 ], [ %indvars.iv.next819, %._crit_edge737 ] ; 3 uses
  %.3297739 = phi i32 [ 0, %.preheader640 ], [ %.4298.lcssa, %._crit_edge737 ] ; 4 uses
  %i.hr = load i32, ptr %i.h, align 8, !tbaa !99
  %i.hs = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ht = mul i32 %i.hs, %.3297739
  %i.hu = add i32 %i.ht, %i.hr                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.hv = srem i32 %i.hu, %2
  store i32 %i.hv, ptr %i.c, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.hw = sdiv i32 %i.hu, %2
  store i32 %i.hw, ptr %i.d, align 4, !tbaa !47
  br i1 %i.hq, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.hx = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.hy = load i8, ptr %i.l, align 1, !tbaa !97
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2120 x i8], ptr %i.hx, i64 %i.hz ; 5 uses
  %i.ib = load i32, ptr %i.dw, align 8, !tbaa !84 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 10
  br i1 %i.ic, label %bb.ah, label %prep_huffman.exit349

bb.ah:                                            ; preds = %bb.ag
  %i.id = icmp eq i32 %i.ib, 0
  br i1 %i.id, label %bb.ai, label %.preheader1026

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dx, align 4, !tbaa !88
  br label %.preheader1026

.preheader1026:                                   ; preds = %bb.ai, %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader1026, %bb.am
  %i.ie = load i32, ptr %i.dz, align 4, !tbaa !83
  %.not.i347 = icmp eq i32 %i.ie, 0
  br i1 %.not.i347, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.if = load i8, ptr %i.dy, align 4, !tbaa !86
  %.not14.i348 = icmp eq i8 %i.if, 0
  br i1 %.not14.i348, label %prep_huffman.exit349, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ig = call i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %i.ih = icmp eq i32 %i.ig, -1
  br i1 %i.ih, label %prep_huffman.exit349, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = load i32, ptr %i.dw, align 8, !tbaa !84 ; 3 uses
  %i.ij = shl i32 %i.ig, %i.ii
  %i.ik = load i32, ptr %i.dx, align 4, !tbaa !88
  %i.il = add i32 %i.ik, %i.ij
  store i32 %i.il, ptr %i.dx, align 4, !tbaa !88
  %i.im = add nsw i32 %i.ii, 8
  store i32 %i.im, ptr %i.dw, align 8, !tbaa !84
  %i.in = icmp slt i32 %i.ii, 17
  br i1 %i.in, label %bb.aj, label %prep_huffman.exit349, !llvm.loop !8

prep_huffman.exit349:                             ; preds = %bb.am, %bb.al, %bb.ak, %bb.ag
  %i.io = load i32, ptr %i.dx, align 4, !tbaa !88 ; 2 uses
  %i.ip = and i32 %i.io, 1023
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !59 ; 3 uses
  %i.iu = icmp sgt i16 %i.it, -1
  br i1 %i.iu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %prep_huffman.exit349
  %i.iv = zext nneg i16 %i.it to i32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !57
  %i.iy = zext nneg i16 %i.it to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !50
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = lshr i32 %i.io, %i.jb
  store i32 %i.jc, ptr %i.dx, align 4, !tbaa !88
  %i.jd = load i32, ptr %i.dw, align 8, !tbaa !84
  %i.je = sub nsw i32 %i.jd, %i.jb                ; 2 uses
  %spec.select340 = call i32 @llvm.smax.i32(i32 %i.je, i32 0)
  %.inv635 = icmp sgt i32 %i.je, -1
  %spec.select341 = select i1 %.inv635, i32 %i.iv, i32 -1
  store i32 %spec.select340, ptr %i.dw, align 8, !tbaa !84
  br label %bb.ap

bb.ao:                                            ; preds = %prep_huffman.exit349
  %i.jf = call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.ia)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1282 = phi i32 [ %spec.select341, %bb.an ], [ %i.jf, %bb.ao ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ia, i64 27
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !55
  %.not330 = icmp eq i8 %i.jh, 0
  br i1 %.not330, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ia, i64 2104
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !63
  %i.jk = sext i32 %.1282 to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !47
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.2283 = phi i32 [ %i.jm, %bb.aq ], [ %.1282, %bb.ap ] ; 2 uses
  %.not331 = icmp eq i32 %.2283, -1
  br i1 %.not331, label %.thread561, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jn = load ptr, ptr %i.ea, align 8, !tbaa !103
  %i.jo = sext i32 %.2283 to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !104
  %i.jr = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv818
  store ptr %i.jq, ptr %i.js, align 8, !tbaa !104
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.af
  %i.jt = icmp slt i32 %.3297739, %i.ac
  %i.ju = select i1 %i.eb, i1 %i.jt, i1 false
  br i1 %i.ju, label %.lr.ph736, label %._crit_edge737

.lr.ph736:                                        ; preds = %bb.at
  %.pre835 = load i32, ptr %i.aa, align 8, !tbaa !101
  %.pre837 = load ptr, ptr %i.ay, align 8, !tbaa !105
  %.pre839 = load ptr, ptr %i.ec, align 8, !tbaa !106
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph736, %.thread557
  %i.jv = phi ptr [ %.pre839, %.lr.ph736 ], [ %i.kr, %.thread557 ] ; 2 uses
  %i.jw = phi ptr [ %.pre837, %.lr.ph736 ], [ %i.ks, %.thread557 ] ; 2 uses
  %i.jx = phi i32 [ %.pre835, %.lr.ph736 ], [ %i.kt, %.thread557 ] ; 3 uses
  %indvars.iv815 = phi i64 [ 0, %.lr.ph736 ], [ %indvars.iv.next816.a, %.thread557 ] ; 2 uses
  %.4298734 = phi i32 [ %.3297739, %.lr.ph736 ], [ %.pre-phi848, %.thread557 ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv818
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !104
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv815
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !50
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %indvars.iv821
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !59 ; 2 uses
  %i.kg = icmp sgt i16 %i.kf, -1
  br i1 %i.kg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kh = zext nneg i16 %i.kf to i64
  %i.ki = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.kj = getelementptr inbounds nuw [2120 x i8], ptr %i.ki, i64 %i.kh
  %i.kk = call i32 @codebook_decode_deinterleave_repeat(ptr noundef %0, ptr noundef %i.kj, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %3, i32 noundef %i.jx)
  %.not332.not = icmp eq i32 %i.kk, 0
  br i1 %.not332.not, label %.thread561, label %..thread557_crit_edge

..thread557_crit_edge:                            ; preds = %bb.av
  %.pre838.a = load ptr, ptr %i.ec, align 8, !tbaa !106
  %.pre836 = load ptr, ptr %i.ay, align 8, !tbaa !105
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !101
  %.pre847 = add nsw i32 %.4298734, 1
  br label %.thread557

bb.aw:                                            ; preds = %bb.au
  %i.kl = load i32, ptr %i.h, align 8, !tbaa !99
  %i.km = add nsw i32 %.4298734, 1                ; 2 uses
  %i.kn = mul i32 %i.jx, %i.km
  %i.ko = add i32 %i.kn, %i.kl                    ; 2 uses
  %i.kp = srem i32 %i.ko, %2
  store i32 %i.kp, ptr %i.c, align 4, !tbaa !47
  %i.kq = sdiv i32 %i.ko, %2
  store i32 %i.kq, ptr %i.d, align 4, !tbaa !47
  br label %.thread557

.thread557:                                       ; preds = %..thread557_crit_edge, %bb.aw
  %.pre-phi848 = phi i32 [ %.pre847, %..thread557_crit_edge ], [ %i.km, %bb.aw ] ; 3 uses
  %i.kr = phi ptr [ %.pre838.a, %..thread557_crit_edge ], [ %i.jv, %bb.aw ]
  %i.ks = phi ptr [ %.pre836, %..thread557_crit_edge ], [ %i.jw, %bb.aw ]
  %i.kt = phi i32 [ %.pre, %..thread557_crit_edge ], [ %i.jx, %bb.aw ]
  %indvars.iv.next816.a = add nuw nsw i64 %indvars.iv815, 1 ; 2 uses
  %i.ku = icmp slt i64 %indvars.iv.next816.a, %i.hp
  %i.kv = icmp slt i32 %.pre-phi848, %i.ac
  %i.kw = select i1 %i.ku, i1 %i.kv, i1 false
  br i1 %i.kw, label %bb.au, label %._crit_edge737, !llvm.loop !217

.thread561:                                       ; preds = %bb.ar, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %.thread633

._crit_edge737:                                   ; preds = %.thread557, %bb.at
  %.4298.lcssa = phi i32 [ %.3297739, %bb.at ], [ %.pre-phi848, %.thread557 ] ; 2 uses
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.kx = icmp slt i32 %.4298.lcssa, %i.ac
  br i1 %i.kx, label %bb.af, label %..loopexit641_crit_edge, !llvm.loop !218

..loopexit641_crit_edge:                          ; preds = %._crit_edge737
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1 ; 2 uses
  %exitcond824.not = icmp eq i64 %indvars.iv.next822, 8
  br i1 %exitcond824.not, label %.thread633, label %.preheader640, !llvm.loop !216

.preheader659:                                    ; preds = %.preheader659.preheader, %._crit_edge725
  %indvars.iv806 = phi i64 [ 0, %.preheader659.preheader ], [ %indvars.iv.next807, %._crit_edge725 ] ; 4 uses
  %i.ky = icmp ne i64 %indvars.iv806, 0
  %brmerge758 = or i1 %i.ky, %i.cw
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader659, %._crit_edge706
  %indvars.iv803 = phi i64 [ 0, %.preheader659 ], [ %indvars.iv.next804, %._crit_edge706 ] ; 4 uses
  %.0279721 = phi i32 [ 0, %.preheader659 ], [ %.1280.lcssa, %._crit_edge706 ] ; 5 uses
  br i1 %brmerge758, label %.loopexit657, label %.lr.ph695.a

.lr.ph695.a:                                      ; preds = %bb.ax, %bb.by
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %bb.by ], [ 0, %bb.ax ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv782
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !50
  %.not325 = icmp eq i8 %i.la, 0
  br i1 %.not325, label %bb.ay, label %bb.by

bb.ay:                                            ; preds = %.lr.ph695.a
  %i.lb = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.lc = load i8, ptr %i.l, align 1, !tbaa !97
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw [2120 x i8], ptr %i.lb, i64 %i.ld ; 5 uses
  %i.lf = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %i.lg = icmp slt i32 %i.lf, 10
  br i1 %i.lg, label %bb.az, label %prep_huffman.exit352

bb.az:                                            ; preds = %bb.ay
  %i.lh = icmp eq i32 %i.lf, 0
  br i1 %i.lh, label %bb.ba, label %.preheader1040

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.cy, align 4, !tbaa !88
  br label %.preheader1040

.preheader1040:                                   ; preds = %bb.ba, %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %.preheader1040, %get8_packet_raw.exit.thread573
  %i.li = load i32, ptr %i.da, align 4, !tbaa !83
  %.not.i350 = icmp eq i32 %i.li, 0
  %.pr = load i8, ptr %i.cz, align 4, !tbaa !86   ; 3 uses
  %.not.i357 = icmp eq i8 %.pr, 0                 ; 2 uses
  br i1 %.not.i350, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not.i357, label %prep_huffman.exit352, label %.thread569

bb.bd:                                            ; preds = %bb.bb
  br i1 %.not.i357, label %bb.be, label %.thread569

bb.be:                                            ; preds = %bb.bd
  %i.lj = load i32, ptr %i.db, align 8, !tbaa !82 ; 2 uses
  %i.lk = icmp eq i32 %i.lj, -1
  br i1 %i.lk, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ll = load i32, ptr %i.dc, align 8, !tbaa !79
  %i.lm = add nsw i32 %i.ll, -1
  store i32 %i.lm, ptr %i.dd, align 8, !tbaa !87
  %i.ln = call i32 @capture_pattern(ptr noundef nonnull %0)
  %.not.i.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i.i, label %start_page.exit.thread.i.i, label %start_page.exit.i.i

start_page.exit.thread.i.i:                       ; preds = %bb.bf
  store i32 30, ptr %i.dl, align 4, !tbaa !39
  br label %.loopexit655

start_page.exit.i.i:                              ; preds = %bb.bf
  %i.lo = call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i = icmp eq i32 %i.lo, 0
  br i1 %.not20.i.i, label %.loopexit655, label %bb.bg

.loopexit655:                                     ; preds = %start_page.exit.i.i, %start_page.exit.thread.i.i
  store i32 1, ptr %i.da, align 4, !tbaa !83
  br label %prep_huffman.exit352

bb.bg:                                            ; preds = %start_page.exit.i.i
  %i.lp = load i8, ptr %i.de, align 1, !tbaa !78
  %i.lq = and i8 %i.lp, 1
  %.not21.i.i = icmp eq i8 %i.lq, 0
  br i1 %.not21.i.i, label %bb.bh, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bg
  %.pre.i.i = load i32, ptr %i.db, align 8, !tbaa !82
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 32, ptr %i.dl, align 4, !tbaa !39
  br label %prep_huffman.exit352

bb.bi:                                            ; preds = %._crit_edge.i.i, %bb.be
  %i.lr = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.lj, %bb.be ] ; 3 uses
  %i.ls = add nsw i32 %i.lr, 1                    ; 2 uses
  store i32 %i.ls, ptr %i.db, align 8, !tbaa !82
  %i.lt = sext i32 %i.lr to i64
  %i.lu = getelementptr inbounds i8, ptr %i.df, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !50  ; 4 uses
  %.not22.i.i = icmp eq i8 %i.lv, -1
  br i1 %.not22.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 1, ptr %i.da, align 4, !tbaa !83
  store i32 %i.lr, ptr %i.dd, align 8, !tbaa !87
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lw = load i32, ptr %i.dc, align 8, !tbaa !79
  %.not23.i.i = icmp slt i32 %i.ls, %i.lw
  br i1 %.not23.i.i, label %next_segment.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 -1, ptr %i.db, align 8, !tbaa !82
  br label %next_segment.exit.i

next_segment.exit.i:                              ; preds = %bb.bl, %bb.bk
  store i8 %i.lv, ptr %i.cz, align 4, !tbaa !86
  %.not7.i = icmp eq i8 %i.lv, 0
  br i1 %.not7.i, label %prep_huffman.exit352, label %.thread569

.thread569:                                       ; preds = %bb.bc, %next_segment.exit.i, %bb.bd
  %i.lx = phi i8 [ %i.lv, %next_segment.exit.i ], [ %.pr, %bb.bd ], [ %.pr, %bb.bc ]
  %i.ly = add i8 %i.lx, -1
  store i8 %i.ly, ptr %i.cz, align 4, !tbaa !86
  %i.lz = load i32, ptr %i.dg, align 4, !tbaa !85
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.dg, align 4, !tbaa !85
  %i.mb = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i = icmp eq ptr %i.mb, null
  br i1 %.not.i8.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %.thread569
  %i.mc = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i = icmp ult ptr %i.mb, %i.mc
  br i1 %.not11.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread573

bb.bo:                                            ; preds = %bb.bm
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  store ptr %i.md, ptr %i.dh, align 8, !tbaa !70
  %i.me = load i8, ptr %i.mb, align 1, !tbaa !50
  br label %get8_packet_raw.exit

bb.bp:                                            ; preds = %.thread569
  %i.mf = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.mg = call i32 @fgetc(ptr noundef %i.mf)      ; 2 uses
  %i.mh = icmp eq i32 %i.mg, -1
  br i1 %i.mh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread573

bb.br:                                            ; preds = %bb.bp
  %i.mi = trunc i32 %i.mg to i8
  br label %get8_packet_raw.exit

get8_packet_raw.exit:                             ; preds = %bb.bo, %bb.br
  %.1.i.i = phi i8 [ %i.mi, %bb.br ], [ %i.me, %bb.bo ]
  %i.mj = zext i8 %.1.i.i to i32
  br label %get8_packet_raw.exit.thread573

get8_packet_raw.exit.thread573:                   ; preds = %get8_packet_raw.exit, %bb.bq, %bb.bn
  %i.mk = phi i32 [ %i.mj, %get8_packet_raw.exit ], [ 0, %bb.bn ], [ 0, %bb.bq ]
  %i.ml = load i32, ptr %i.cx, align 8, !tbaa !84 ; 3 uses
  %i.mm = shl i32 %i.mk, %i.ml
  %i.mn = load i32, ptr %i.cy, align 4, !tbaa !88
  %i.mo = add i32 %i.mn, %i.mm
  store i32 %i.mo, ptr %i.cy, align 4, !tbaa !88
  %i.mp = add nsw i32 %i.ml, 8
  store i32 %i.mp, ptr %i.cx, align 8, !tbaa !84
  %i.mq = icmp slt i32 %i.ml, 17
  br i1 %i.mq, label %bb.bb, label %prep_huffman.exit352, !llvm.loop !8

prep_huffman.exit352:                             ; preds = %next_segment.exit.i, %get8_packet_raw.exit.thread573, %bb.bc, %.loopexit655, %bb.bh, %bb.ay
  %i.mr = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %i.ms = and i32 %i.mr, 1023
  %i.mt = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.mu = zext nneg i32 %i.ms to i64
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !59 ; 3 uses
  %i.mx = icmp sgt i16 %i.mw, -1
  br i1 %i.mx, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %prep_huffman.exit352
  %i.my = zext nneg i16 %i.mw to i32
  %i.mz = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !57
  %i.nb = zext nneg i16 %i.mw to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !50
  %i.ne = zext i8 %i.nd to i32                    ; 2 uses
  %i.nf = lshr i32 %i.mr, %i.ne
  store i32 %i.nf, ptr %i.cy, align 4, !tbaa !88
  %i.ng = load i32, ptr %i.cx, align 8, !tbaa !84
  %i.nh = sub nsw i32 %i.ng, %i.ne                ; 2 uses
  %spec.select343 = call i32 @llvm.smax.i32(i32 %i.nh, i32 0)
  %.inv = icmp sgt i32 %i.nh, -1
  %spec.select344 = select i1 %.inv, i32 %i.my, i32 -1
  store i32 %spec.select343, ptr %i.cx, align 8, !tbaa !84
  br label %bb.bu

bb.bt:                                            ; preds = %prep_huffman.exit352
  %i.ni = call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.le)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1 = phi i32 [ %spec.select344, %bb.bs ], [ %i.ni, %bb.bt ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.le, i64 27
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !55
  %.not326 = icmp eq i8 %i.nk, 0
  br i1 %.not326, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nl = getelementptr inbounds nuw i8, ptr %i.le, i64 2104
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !63
  %i.nn = sext i32 %.1 to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !47
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2 = phi i32 [ %i.np, %bb.bv ], [ %.1, %bb.bu ] ; 2 uses
  %.not327 = icmp eq i32 %.2, -1
  br i1 %.not327, label %.thread633, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nq = load ptr, ptr %i.dm, align 8, !tbaa !103
  %i.nr = sext i32 %.2 to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !104
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv782
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !105
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv803
  store ptr %i.nt, ptr %i.nw, align 8, !tbaa !104
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph695.a
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next783, %wide.trip.count785
  br i1 %exitcond786.not, label %.loopexit657, label %.lr.ph695.a, !llvm.loop !219

.loopexit657:                                     ; preds = %bb.by, %bb.ax
  %i.nx = icmp slt i32 %.0279721, %i.ac
  %i.ny = select i1 %i.dn, i1 %i.nx, i1 false
  br i1 %i.ny, label %.preheader654.lr.ph, label %._crit_edge706

.preheader654.lr.ph:                              ; preds = %.loopexit657
  br i1 %i.ce, label %.preheader654.lr.ph.split.us, label %.preheader654

.preheader654.lr.ph.split.us:                     ; preds = %.preheader654.lr.ph
  br i1 %i.dp, label %.preheader654.us.us, label %.preheader654.us

.preheader654.us.us:                              ; preds = %.preheader654.lr.ph.split.us, %._crit_edge700.split.us.us.us
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %._crit_edge700.split.us.us.us ], [ 0, %.preheader654.lr.ph.split.us ] ; 2 uses
  %.1280704.us.us = phi i32 [ %i.yt, %._crit_edge700.split.us.us.us ], [ %.0279721, %.preheader654.lr.ph.split.us ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.thread629.us.us.us, %.preheader654.us.us
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %.thread629.us.us.us ], [ 0, %.preheader654.us.us ] ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv795
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !50
  %.not323.us.us.us = icmp eq i8 %i.oa, 0
  br i1 %.not323.us.us.us, label %bb.ca, label %.thread629.us.us.us

bb.ca:                                            ; preds = %bb.bz
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv795
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !105
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv803
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !104
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %indvars.iv800
  %i.og = load i8, ptr %i.of, align 1, !tbaa !50
  %i.oh = load ptr, ptr %i.do, align 8, !tbaa !106
  %i.oi = zext i8 %i.og to i64
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %i.oi
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %indvars.iv806
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !59 ; 2 uses
  %i.om = icmp sgt i16 %i.ol, -1
  br i1 %i.om, label %bb.cb, label %.thread629.us.us.us

bb.cb:                                            ; preds = %bb.ca
  %i.on = zext nneg i16 %i.ol to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv795
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !65 ; 2 uses
  %i.oq = load i32, ptr %i.h, align 8, !tbaa !99
  %i.or = load i32, ptr %i.aa, align 8, !tbaa !101 ; 3 uses
  %i.os = mul i32 %i.or, %.1280704.us.us
  %i.ot = add i32 %i.os, %i.oq                    ; 2 uses
  %i.ou = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.ov = getelementptr inbounds nuw [2120 x i8], ptr %i.ou, i64 %i.on ; 13 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !91
  %i.ox = sdiv i32 %i.or, %i.ow                   ; 3 uses
  %i.oy = sext i32 %i.ot to i64                   ; 2 uses
  %i.oz = getelementptr [4 x i8], ptr %i.op, i64 %i.oy
  %.not3557.i.us.us.us = icmp sgt i32 %i.ox, 0
  br i1 %.not3557.i.us.us.us, label %.lr.ph59.i.us.us.us, label %.thread629.us.us.us

.lr.ph59.i.us.us.us:                              ; preds = %bb.cb
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 26
  %i.pc = zext nneg i32 %i.ox to i64              ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ov, i64 25
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %.phi.trans.insert.i417.us.us.us = getelementptr inbounds nuw i8, ptr %i.ov, i64 2096 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ov, i64 2112
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 27
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ov, i64 2104
  %ident.check.not = icmp eq i32 %i.ox, 1
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i.us.us.us, %.lr.ph59.i.us.us.us
  %indvars.iv.i354.us.us.us = phi i64 [ 0, %.lr.ph59.i.us.us.us ], [ %indvars.iv.next.i355.us.us.us, %.loopexit.i.us.us.us ] ; 4 uses
  %i.pl = getelementptr [4 x i8], ptr %i.oz, i64 %indvars.iv.i354.us.us.us ; 8 uses
  %i.pm = load i8, ptr %i.pd, align 1, !tbaa !90
  %i.pn = icmp eq i8 %i.pm, 0
  br i1 %i.pn, label %.thread31.sink.split.i367, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.po = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %i.pp = icmp slt i32 %i.po, 10
  br i1 %i.pp, label %bb.ce, label %prep_huffman.exit.i362.us.us.us

bb.ce:                                            ; preds = %bb.cd
  %i.pq = icmp eq i32 %i.po, 0
  br i1 %i.pq, label %bb.cf, label %.preheader1034

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.cy, align 4, !tbaa !88
  br label %.preheader1034

.preheader1034:                                   ; preds = %bb.cf, %bb.ce
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader1034, %get8_packet_raw.exit453.thread585.us.us.us
  %i.pr = load i32, ptr %i.da, align 4, !tbaa !83
  %.not.i.i371.us.us.us = icmp eq i32 %i.pr, 0
  %.pr578.us.us.us = load i8, ptr %i.cz, align 4, !tbaa !86 ; 3 uses
  %.not.i435.us.us.us = icmp eq i8 %.pr578.us.us.us, 0 ; 2 uses
  br i1 %.not.i.i371.us.us.us, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not.i435.us.us.us, label %prep_huffman.exit.i362.us.us.us, label %.thread579.us.us.us

bb.ci:                                            ; preds = %bb.cg
  br i1 %.not.i435.us.us.us, label %bb.cj, label %.thread579.us.us.us

bb.cj:                                            ; preds = %bb.ci
  %i.ps = load i32, ptr %i.db, align 8, !tbaa !82 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, -1
  br i1 %i.pt, label %bb.ck, label %bb.df

bb.ck:                                            ; preds = %bb.cj
  %i.pu = load i32, ptr %i.dc, align 8, !tbaa !79
  %i.pv = add nsw i32 %i.pu, -1
  store i32 %i.pv, ptr %i.dd, align 8, !tbaa !87
  %i.pw = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i.i500.us.us.us = icmp eq ptr %i.pw, null
  br i1 %.not.i.i500.us.us.us, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.px = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i501.us.us.us = icmp ult ptr %i.pw, %i.px
  br i1 %.not11.i.i501.us.us.us, label %bb.cm, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cm:                                            ; preds = %bb.cl
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.py, ptr %i.dh, align 8, !tbaa !70
  %i.pz = load i8, ptr %i.pw, align 1, !tbaa !50
  br label %get8.exit.i503.us.us.us

bb.cn:                                            ; preds = %bb.ck
  %i.qa = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qb = call i32 @fgetc(ptr noundef %i.qa)      ; 2 uses
  %i.qc = icmp eq i32 %i.qb, -1
  br i1 %i.qc, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qd = trunc i32 %i.qb to i8
  br label %get8.exit.i503.us.us.us

get8.exit.i503.us.us.us:                          ; preds = %bb.co, %bb.cm
  %.1.i.i504.us.us.us = phi i8 [ %i.qd, %bb.co ], [ %i.pz, %bb.cm ]
  %.not.i505.us.us.us = icmp eq i8 %.1.i.i504.us.us.us, 79
  br i1 %.not.i505.us.us.us, label %bb.cp, label %start_page.exit.thread.i.i452.us.us.us

bb.cp:                                            ; preds = %get8.exit.i503.us.us.us
  %i.qe = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i7.i506.us.us.us = icmp eq ptr %i.qe, null
  br i1 %.not.i7.i506.us.us.us, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qf = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i8.i507.us.us.us = icmp ult ptr %i.qe, %i.qf
  br i1 %.not11.i8.i507.us.us.us, label %bb.cr, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cr:                                            ; preds = %bb.cq
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  store ptr %i.qg, ptr %i.dh, align 8, !tbaa !70
  %i.qh = load i8, ptr %i.qe, align 1, !tbaa !50
  br label %get8.exit10.i508.us.us.us

bb.cs:                                            ; preds = %bb.cp
  %i.qi = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qj = call i32 @fgetc(ptr noundef %i.qi)      ; 2 uses
  %i.qk = icmp eq i32 %i.qj, -1
  br i1 %i.qk, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ql = trunc i32 %i.qj to i8
  br label %get8.exit10.i508.us.us.us

get8.exit10.i508.us.us.us:                        ; preds = %bb.ct, %bb.cr
  %.1.i9.i509.us.us.us = phi i8 [ %i.ql, %bb.ct ], [ %i.qh, %bb.cr ]
  %.not4.i510.us.us.us = icmp eq i8 %.1.i9.i509.us.us.us, 103
  br i1 %.not4.i510.us.us.us, label %bb.cu, label %start_page.exit.thread.i.i452.us.us.us

bb.cu:                                            ; preds = %get8.exit10.i508.us.us.us
  %i.qm = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i11.i511.us.us.us = icmp eq ptr %i.qm, null
  br i1 %.not.i11.i511.us.us.us, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qn = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i12.i512.us.us.us = icmp ult ptr %i.qm, %i.qn
  br i1 %.not11.i12.i512.us.us.us, label %bb.cw, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cw:                                            ; preds = %bb.cv
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 1
  store ptr %i.qo, ptr %i.dh, align 8, !tbaa !70
  %i.qp = load i8, ptr %i.qm, align 1, !tbaa !50
  br label %get8.exit14.i513.us.us.us

bb.cx:                                            ; preds = %bb.cu
  %i.qq = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qr = call i32 @fgetc(ptr noundef %i.qq)      ; 2 uses
  %i.qs = icmp eq i32 %i.qr, -1
  br i1 %i.qs, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qt = trunc i32 %i.qr to i8
  br label %get8.exit14.i513.us.us.us

get8.exit14.i513.us.us.us:                        ; preds = %bb.cy, %bb.cw
  %.1.i13.i514.us.us.us = phi i8 [ %i.qt, %bb.cy ], [ %i.qp, %bb.cw ]
  %.not5.i515.us.us.us = icmp eq i8 %.1.i13.i514.us.us.us, 103
  br i1 %.not5.i515.us.us.us, label %bb.cz, label %start_page.exit.thread.i.i452.us.us.us

bb.cz:                                            ; preds = %get8.exit14.i513.us.us.us
  %i.qu = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i15.i516.us.us.us = icmp eq ptr %i.qu, null
  br i1 %.not.i15.i516.us.us.us, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qv = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i16.i517.us.us.us = icmp ult ptr %i.qu, %i.qv
  br i1 %.not11.i16.i517.us.us.us, label %bb.db, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.db:                                            ; preds = %bb.da
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  store ptr %i.qw, ptr %i.dh, align 8, !tbaa !70
  %i.qx = load i8, ptr %i.qu, align 1, !tbaa !50
  %i.qy = freeze i8 %i.qx
  br label %capture_pattern.exit522.us.us.us

bb.dc:                                            ; preds = %bb.cz
  %i.qz = load ptr, ptr %i.dk, align 8, !tbaa !73
end_hunk_0
begin_hunk_1_@decode_residue:bb.a
  %.025.i363.us.us.us = phi i32 [ %i.vx, %bb.eu ], [ %.158.ph.i408.us.us.us, %codebook_decode_scalar_raw.exit434.us.us.us ]
  %i.wh = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.wi = add i32 %i.ot, %i.wh
  %i.wj = sub i32 %i.or, %i.wi
  %i.wk = load i32, ptr %i.ov, align 8, !tbaa !91 ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wj, i32 %i.wk) ; 5 uses
  %i.wl = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.wl, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit373.us.us.us
  %i.wm = mul i32 %i.wk, %.025.i363.us.us.us
  %i.wn = load ptr, ptr %i.pa, align 8, !tbaa !93 ; 2 uses
  %i.wo = load i8, ptr %i.pb, align 2, !tbaa !92
  %.fr.i.i.us.us.us = freeze i8 %i.wo
  %.not.i.i.us.us.us = icmp eq i8 %.fr.i.i.us.us.us, 0
  %i.wp = sext i32 %i.wm to i64                   ; 2 uses
  %wide.trip.count34.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64 ; 9 uses
  %invariant.gep37.i.i.us.us.us = getelementptr [4 x i8], ptr %i.wn, i64 %i.wp ; 8 uses
  br i1 %.not.i.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader, label %.lr.ph.split.i.i.us.us.us.preheader

.lr.ph.split.i.i.us.us.us.preheader:              ; preds = %.lr.ph.i.i.us.us.us
  %xtraiter1070 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %i.wq = icmp eq i32 %spec.select.i.i.us.us.us, 1
  br i1 %i.wq, label %.lr.ph.split.i.i.us.us.us.epil.preheader, label %.lr.ph.split.i.i.us.us.us.preheader.new

.lr.ph.split.i.i.us.us.us.preheader.new:          ; preds = %.lr.ph.split.i.i.us.us.us.preheader
  %unroll_iter1074 = and i64 %wide.trip.count34.i.i.us.us.us, 2147483646
  br label %.lr.ph.split.i.i.us.us.us

.lr.ph.split.us.i.i.us.us.us.preheader:           ; preds = %.lr.ph.i.i.us.us.us
  %min.iters.check = icmp ugt i32 %spec.select.i.i.us.us.us, 7
  %or.cond1024 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1024, label %vector.memcheck, label %.lr.ph.split.us.i.i.us.us.us.preheader1031

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader
  %i.wr = add i64 %indvars.iv.i354.us.us.us, %i.oy
  %i.ws = add i64 %i.wr, %wide.trip.count34.i.i.us.us.us
  %i.wt = shl i64 %i.ws, 2
  %i.wu = getelementptr i8, ptr %i.op, i64 %i.wt
  %i.wv = add nsw i64 %i.wp, %wide.trip.count34.i.i.us.us.us
  %i.ww = shl nsw i64 %i.wv, 2
  %i.wx = getelementptr i8, ptr %i.wn, i64 %i.ww
  %bound0 = icmp ult ptr %i.pl, %i.wx
  %bound1 = icmp ult ptr %invariant.gep37.i.i.us.us.us, %i.wu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.i.i.us.us.us.preheader1031, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count34.i.i.us.us.us, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.wy = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %index ; 2 uses
  %i.wz = getelementptr i8, ptr %i.wy, i64 16
  %wide.load = load <4 x float>, ptr %i.wy, align 4, !tbaa !64, !alias.scope !234
  %wide.load998 = load <4 x float>, ptr %i.wz, align 4, !tbaa !64, !alias.scope !234
  %i.xa = fadd <4 x float> %wide.load, zeroinitializer
  %i.xb = fadd <4 x float> %wide.load998, zeroinitializer
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 2 uses
  %wide.load999 = load <4 x float>, ptr %i.xc, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %wide.load1000 = load <4 x float>, ptr %i.xd, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %i.xe = fadd <4 x float> %wide.load999, %i.xa
  %i.xf = fadd <4 x float> %wide.load1000, %i.xb
  store <4 x float> %i.xe, ptr %i.xc, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  store <4 x float> %i.xf, ptr %i.xd, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xg = icmp eq i64 %index.next, %n.vec
  br i1 %i.xg, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34.i.i.us.us.us
  br i1 %cmp.n, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader1031

.lr.ph.split.us.i.i.us.us.us.preheader1031:       ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.us.us.us.preheader, %middle.block
  %indvars.iv31.i.i.us.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter1076 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %lcmp.mod1077.not = icmp eq i64 %xtraiter1076, 0
  br i1 %lcmp.mod1077.not, label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, label %.lr.ph.split.us.i.i.us.us.us.prol

.lr.ph.split.us.i.i.us.us.us.prol:                ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader1031
  %gep38.i.i.us.us.us.prol = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us.ph
  %i.xh = load float, ptr %gep38.i.i.us.us.us.prol, align 4, !tbaa !64
  %i.xi = fadd float %i.xh, 0.000000e+00
  %i.xj = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us.ph, %i.pc
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xj ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !64
  %i.xm = fadd float %i.xl, %i.xi
  store float %i.xm, ptr %i.xk, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us.prol = or disjoint i64 %indvars.iv31.i.i.us.us.us.ph, 1
  br label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit

.lr.ph.split.us.i.i.us.us.us.prol.loopexit:       ; preds = %.lr.ph.split.us.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.preheader1031
  %indvars.iv31.i.i.us.us.us.unr = phi i64 [ %indvars.iv31.i.i.us.us.us.ph, %.lr.ph.split.us.i.i.us.us.us.preheader1031 ], [ %indvars.iv.next32.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.prol ]
  %i.xn = add nsw i64 %wide.trip.count34.i.i.us.us.us, -1
  %i.xo = icmp eq i64 %indvars.iv31.i.i.us.us.us.ph, %i.xn
  br i1 %i.xo, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us

.lr.ph.split.i.i.us.us.us:                        ; preds = %.lr.ph.split.i.i.us.us.us, %.lr.ph.split.i.i.us.us.us.preheader.new
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %indvars.iv.next.i.i.us.us.us.1, %.lr.ph.split.i.i.us.us.us ] ; 4 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %i.xw, %.lr.ph.split.i.i.us.us.us ]
  %niter1075 = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %niter1075.next.1, %.lr.ph.split.i.i.us.us.us ]
  %gep.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.xp = load float, ptr %gep.i.i.us.us.us, align 4, !tbaa !64
  %i.xq = fadd float %.028.i.i.us.us.us, %i.xp    ; 2 uses
  %i.xr = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.pc
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xr ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !64
  %i.xu = fadd float %i.xt, %i.xq
  store float %i.xu, ptr %i.xs, align 4, !tbaa !64
  %indvars.iv.next.i.i.us.us.us = or disjoint i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %gep.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.xv = load float, ptr %gep.i.i.us.us.us.1, align 4, !tbaa !64
  %i.xw = fadd float %i.xq, %i.xv                 ; 3 uses
  %i.xx = mul nuw nsw i64 %indvars.iv.next.i.i.us.us.us, %i.pc
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xx ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !64
  %i.ya = fadd float %i.xz, %i.xw
  store float %i.ya, ptr %i.xy, align 4, !tbaa !64
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %niter1075.next.1 = add i64 %niter1075, 2       ; 2 uses
  %niter1075.ncmp.1 = icmp eq i64 %niter1075.next.1, %unroll_iter1074
  br i1 %niter1075.ncmp.1, label %.loopexit.i.us.us.us.loopexit1032.unr-lcssa, label %.lr.ph.split.i.i.us.us.us, !llvm.loop !12

.lr.ph.split.us.i.i.us.us.us:                     ; preds = %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us
  %indvars.iv31.i.i.us.us.us = phi i64 [ %indvars.iv.next32.i.i.us.us.us.1, %.lr.ph.split.us.i.i.us.us.us ], [ %indvars.iv31.i.i.us.us.us.unr, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit ] ; 4 uses
  %gep38.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us
  %i.yb = load float, ptr %gep38.i.i.us.us.us, align 4, !tbaa !64
  %i.yc = fadd float %i.yb, 0.000000e+00
  %i.yd = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us, %i.pc
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.yd ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !64
  %i.yg = fadd float %i.yf, %i.yc
  store float %i.yg, ptr %i.ye, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 1 ; 2 uses
  %gep38.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next32.i.i.us.us.us
  %i.yh = load float, ptr %gep38.i.i.us.us.us.1, align 4, !tbaa !64
  %i.yi = fadd float %i.yh, 0.000000e+00
  %i.yj = mul nuw nsw i64 %indvars.iv.next32.i.i.us.us.us, %i.pc
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.yj ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !64
  %i.ym = fadd float %i.yl, %i.yi
  store float %i.ym, ptr %i.yk, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 2 ; 2 uses
  %exitcond35.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next32.i.i.us.us.us.1, %wide.trip.count34.i.i.us.us.us
  br i1 %exitcond35.not.i.i.us.us.us.1, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us, !llvm.loop !224

.loopexit.i.us.us.us.loopexit1032.unr-lcssa:      ; preds = %.lr.ph.split.i.i.us.us.us
  %lcmp.mod1072.not = icmp eq i64 %xtraiter1070, 0
  br i1 %lcmp.mod1072.not, label %.loopexit.i.us.us.us, label %.lr.ph.split.i.i.us.us.us.epil.preheader

.lr.ph.split.i.i.us.us.us.epil.preheader:         ; preds = %.loopexit.i.us.us.us.loopexit1032.unr-lcssa, %.lr.ph.split.i.i.us.us.us.preheader
  %indvars.iv.i.i.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader ], [ %indvars.iv.next.i.i.us.us.us.1, %.loopexit.i.us.us.us.loopexit1032.unr-lcssa ] ; 2 uses
  %.028.i.i.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader ], [ %i.xw, %.loopexit.i.us.us.us.loopexit1032.unr-lcssa ]
  %lcmp.mod1073 = trunc i32 %spec.select.i.i.us.us.us to i1
  call void @llvm.assume(i1 %lcmp.mod1073)
  %gep.i.i.us.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.epil.init
  %i.yn = load float, ptr %gep.i.i.us.us.us.epil, align 4, !tbaa !64
  %i.yo = fadd float %.028.i.i.us.us.us.epil.init, %i.yn
  %i.yp = mul nuw nsw i64 %indvars.iv.i.i.us.us.us.epil.init, %i.pc
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.yp ; 2 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !64
  %i.ys = fadd float %i.yr, %i.yo
  store float %i.ys, ptr %i.yq, align 4, !tbaa !64
  br label %.loopexit.i.us.us.us

.loopexit.i.us.us.us:                             ; preds = %.lr.ph.split.i.i.us.us.us.epil.preheader, %.loopexit.i.us.us.us.loopexit1032.unr-lcssa, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us, %middle.block, %codebook_decode_start.exit373.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.pc
  br i1 %exitcond.not.i356.us.us.us, label %.thread629.us.us.us, label %bb.cc, !llvm.loop !13

.thread629.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.cb, %bb.ca, %bb.bz
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next796, %wide.trip.count798
  br i1 %exitcond799.not, label %._crit_edge700.split.us.us.us, label %bb.bz, !llvm.loop !225

._crit_edge700.split.us.us.us:                    ; preds = %.thread629.us.us.us
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %i.yt = add nsw i32 %.1280704.us.us, 1          ; 3 uses
  %i.yu = icmp slt i64 %indvars.iv.next801, %i.dq
  %i.yv = icmp slt i32 %i.yt, %i.ac
  %i.yw = select i1 %i.yu, i1 %i.yv, i1 false
  br i1 %i.yw, label %.preheader654.us.us, label %._crit_edge706, !llvm.loop !226

.preheader654.us:                                 ; preds = %.preheader654.lr.ph.split.us, %._crit_edge700.split.us711
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %._crit_edge700.split.us711 ], [ 0, %.preheader654.lr.ph.split.us ] ; 2 uses
  %.1280704.us = phi i32 [ %i.akv, %._crit_edge700.split.us711 ], [ %.0279721, %.preheader654.lr.ph.split.us ] ; 2 uses
  br label %bb.ev

bb.ev:                                            ; preds = %.thread629.us710, %.preheader654.us
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %.thread629.us710 ], [ 0, %.preheader654.us ] ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv787
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !50
  %.not323.us709 = icmp eq i8 %i.yy, 0
  br i1 %.not323.us709, label %bb.ew, label %.thread629.us710

bb.ew:                                            ; preds = %bb.ev
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv787
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !105
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %indvars.iv803
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !104
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %indvars.iv792
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !50
  %i.zf = load ptr, ptr %i.do, align 8, !tbaa !106
  %i.zg = zext i8 %i.ze to i64
  %i.zh = getelementptr inbounds nuw [16 x i8], ptr %i.zf, i64 %i.zg
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.zh, i64 %indvars.iv806
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !59 ; 2 uses
  %i.zk = icmp sgt i16 %i.zj, -1
  br i1 %i.zk, label %.preheader.i.us, label %.thread629.us710

.preheader.i.us:                                  ; preds = %bb.ew
  %i.zl = zext nneg i16 %i.zj to i64
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv787
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !65 ; 2 uses
  %i.zo = load i32, ptr %i.aa, align 8, !tbaa !101 ; 4 uses
  %i.zp = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.zq = getelementptr inbounds nuw [2120 x i8], ptr %i.zp, i64 %i.zl ; 13 uses
  %i.zr = icmp sgt i32 %i.zo, 0
  br i1 %i.zr, label %.lr.ph.i353.us, label %.thread629.us710

.lr.ph.i353.us:                                   ; preds = %.preheader.i.us
  %i.zs = mul i32 %i.zo, %.1280704.us
  %i.zt = load i32, ptr %i.h, align 8, !tbaa !99
  %i.zu = add i32 %i.zs, %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 26
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zq, i64 32 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zq, i64 16 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zq, i64 25
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zq, i64 48
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.zq, i64 2096 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zq, i64 8 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zq, i64 2112
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zq, i64 27
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zq, i64 2104
  br label %bb.ex

bb.ex:                                            ; preds = %.loopexit49.i.us, %.lr.ph.i353.us
  %.154.i.us = phi i32 [ 0, %.lr.ph.i353.us ], [ %i.aks, %.loopexit49.i.us ] ; 2 uses
  %.03153.i.us = phi i32 [ %i.zu, %.lr.ph.i353.us ], [ %i.akt, %.loopexit49.i.us ] ; 2 uses
  %i.aag = sext i32 %.03153.i.us to i64           ; 2 uses
  %i.aah = getelementptr [4 x i8], ptr %i.zn, i64 %i.aag ; 8 uses
  %i.aai = load i8, ptr %i.zy, align 1, !tbaa !90
  %i.aaj = icmp eq i8 %i.aai, 0
  br i1 %i.aaj, label %.thread31.sink.split.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aak = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %i.aal = icmp slt i32 %i.aak, 10
  br i1 %i.aal, label %bb.ez, label %prep_huffman.exit.i.us

bb.ez:                                            ; preds = %bb.ey
  %i.aam = icmp eq i32 %i.aak, 0
  br i1 %i.aam, label %bb.fa, label %.preheader1037

bb.fa:                                            ; preds = %bb.ez
  store i32 0, ptr %i.cy, align 4, !tbaa !88
  br label %.preheader1037

.preheader1037:                                   ; preds = %bb.fa, %bb.ez
  br label %bb.fb

bb.fb:                                            ; preds = %.preheader1037, %get8_packet_raw.exit401.thread608.us
  %i.aan = load i32, ptr %i.da, align 4, !tbaa !83
  %.not.i.i361.us = icmp eq i32 %i.aan, 0
  %.pr601.us = load i8, ptr %i.cz, align 4, !tbaa !86 ; 3 uses
  %.not.i383.us = icmp eq i8 %.pr601.us, 0        ; 2 uses
  br i1 %.not.i.i361.us, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  br i1 %.not.i383.us, label %prep_huffman.exit.i.us, label %.thread602.us

bb.fd:                                            ; preds = %bb.fb
  br i1 %.not.i383.us, label %bb.fe, label %.thread602.us

bb.fe:                                            ; preds = %bb.fd
  %i.aao = load i32, ptr %i.db, align 8, !tbaa !82 ; 2 uses
  %i.aap = icmp eq i32 %i.aao, -1
  br i1 %i.aap, label %bb.ff, label %bb.ga

bb.ff:                                            ; preds = %bb.fe
  %i.aaq = load i32, ptr %i.dc, align 8, !tbaa !79
  %i.aar = add nsw i32 %i.aaq, -1
  store i32 %i.aar, ptr %i.dd, align 8, !tbaa !87
  %i.aas = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i.i473.us = icmp eq ptr %i.aas, null
  br i1 %.not.i.i473.us, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aat = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i474.us = icmp ult ptr %i.aas, %i.aat
  br i1 %.not11.i.i474.us, label %bb.fh, label %start_page.exit.thread.i.i400.us.sink.split

bb.fh:                                            ; preds = %bb.fg
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  store ptr %i.aau, ptr %i.dh, align 8, !tbaa !70
  %i.aav = load i8, ptr %i.aas, align 1, !tbaa !50
  br label %get8.exit.i476.us

bb.fi:                                            ; preds = %bb.ff
  %i.aaw = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.aax = call i32 @fgetc(ptr noundef %i.aaw)    ; 2 uses
  %i.aay = icmp eq i32 %i.aax, -1
  br i1 %i.aay, label %start_page.exit.thread.i.i400.us.sink.split, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aaz = trunc i32 %i.aax to i8
  br label %get8.exit.i476.us

get8.exit.i476.us:                                ; preds = %bb.fj, %bb.fh
  %.1.i.i477.us = phi i8 [ %i.aaz, %bb.fj ], [ %i.aav, %bb.fh ]
  %.not.i478.us = icmp eq i8 %.1.i.i477.us, 79
  br i1 %.not.i478.us, label %bb.fk, label %start_page.exit.thread.i.i400.us

bb.fk:                                            ; preds = %get8.exit.i476.us
  %i.aba = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i7.i.us = icmp eq ptr %i.aba, null
  br i1 %.not.i7.i.us, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.abb = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i8.i.us = icmp ult ptr %i.aba, %i.abb
  br i1 %.not11.i8.i.us, label %bb.fm, label %start_page.exit.thread.i.i400.us.sink.split

bb.fm:                                            ; preds = %bb.fl
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 1
  store ptr %i.abc, ptr %i.dh, align 8, !tbaa !70
  %i.abd = load i8, ptr %i.aba, align 1, !tbaa !50
  br label %get8.exit10.i.us

bb.fn:                                            ; preds = %bb.fk
  %i.abe = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.abf = call i32 @fgetc(ptr noundef %i.abe)    ; 2 uses
  %i.abg = icmp eq i32 %i.abf, -1
  br i1 %i.abg, label %start_page.exit.thread.i.i400.us.sink.split, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.abh = trunc i32 %i.abf to i8
  br label %get8.exit10.i.us

get8.exit10.i.us:                                 ; preds = %bb.fo, %bb.fm
  %.1.i9.i.us = phi i8 [ %i.abh, %bb.fo ], [ %i.abd, %bb.fm ]
  %.not4.i.us = icmp eq i8 %.1.i9.i.us, 103
  br i1 %.not4.i.us, label %bb.fp, label %start_page.exit.thread.i.i400.us

bb.fp:                                            ; preds = %get8.exit10.i.us
  %i.abi = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i11.i.us = icmp eq ptr %i.abi, null
  br i1 %.not.i11.i.us, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.abj = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i12.i.us = icmp ult ptr %i.abi, %i.abj
  br i1 %.not11.i12.i.us, label %bb.fr, label %start_page.exit.thread.i.i400.us.sink.split

bb.fr:                                            ; preds = %bb.fq
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 1
  store ptr %i.abk, ptr %i.dh, align 8, !tbaa !70
  %i.abl = load i8, ptr %i.abi, align 1, !tbaa !50
  br label %get8.exit14.i.us

bb.fs:                                            ; preds = %bb.fp
  %i.abm = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.abn = call i32 @fgetc(ptr noundef %i.abm)    ; 2 uses
  %i.abo = icmp eq i32 %i.abn, -1
  br i1 %i.abo, label %start_page.exit.thread.i.i400.us.sink.split, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.abp = trunc i32 %i.abn to i8
  br label %get8.exit14.i.us

get8.exit14.i.us:                                 ; preds = %bb.ft, %bb.fr
  %.1.i13.i.us = phi i8 [ %i.abp, %bb.ft ], [ %i.abl, %bb.fr ]
  %.not5.i.us = icmp eq i8 %.1.i13.i.us, 103
  br i1 %.not5.i.us, label %bb.fu, label %start_page.exit.thread.i.i400.us

bb.fu:                                            ; preds = %get8.exit14.i.us
  %i.abq = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i15.i.us = icmp eq ptr %i.abq, null
  br i1 %.not.i15.i.us, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.abr = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i16.i.us = icmp ult ptr %i.abq, %i.abr
  br i1 %.not11.i16.i.us, label %bb.fw, label %start_page.exit.thread.i.i400.us.sink.split

bb.fw:                                            ; preds = %bb.fv
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 1
  store ptr %i.abs, ptr %i.dh, align 8, !tbaa !70
  %i.abt = load i8, ptr %i.abq, align 1, !tbaa !50
  %i.abu = freeze i8 %i.abt
  br label %capture_pattern.exit.us

bb.fx:                                            ; preds = %bb.fu
  %i.abv = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.abw = call i32 @fgetc(ptr noundef %i.abv)    ; 2 uses
  %i.abx = icmp eq i32 %i.abw, -1
  br i1 %i.abx, label %start_page.exit.thread.i.i400.us.sink.split, label %bb.fy
end_hunk_1
begin_hunk_2_@decode_residue:bb.a
  %i.aiz = fadd float %i.aix, %i.aiy              ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.next.i41.i.us ; 2 uses
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !64
  %i.ajc = fadd float %i.ajb, %i.aiz
  store float %i.ajc, ptr %i.aja, align 4, !tbaa !64
  %i.ajd = load float, ptr %i.zx, align 8, !tbaa !94
  %i.aje = fadd float %i.aiz, %i.ajd              ; 2 uses
  %indvars.iv.next.i41.i.us.1 = add nuw nsw i64 %indvars.iv.i39.i.us, 2 ; 2 uses
  %niter1067.next.1 = add i64 %niter1067, 2       ; 2 uses
  %niter1067.ncmp.1 = icmp eq i64 %niter1067.next.1, %unroll_iter1066
  br i1 %niter1067.ncmp.1, label %.loopexit49.i.us.loopexit1035.unr-lcssa, label %bb.ij, !llvm.loop !11

.preheader.i.i.us:                                ; preds = %codebook_decode_start.exit.us
  br i1 %i.ain, label %.lr.ph41.i.i.us, label %.loopexit49.i.us

.lr.ph41.i.i.us:                                  ; preds = %.preheader.i.i.us
  %i.ajf = load ptr, ptr %i.zw, align 8, !tbaa !93 ; 2 uses
  %i.ajg = sext i32 %i.ail to i64                 ; 2 uses
  %wide.trip.count47.i.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 7 uses
  %invariant.gep51.i.i.us = getelementptr [4 x i8], ptr %i.ajf, i64 %i.ajg ; 5 uses
  %min.iters.check1007 = icmp ult i32 %spec.select.i36.i.us, 8
  br i1 %min.iters.check1007, label %scalar.ph1006.preheader, label %vector.memcheck1008

vector.memcheck1008:                              ; preds = %.lr.ph41.i.i.us
  %i.ajh = add nsw i64 %i.aag, %wide.trip.count47.i.i.us
  %i.aji = shl nsw i64 %i.ajh, 2
  %i.ajj = getelementptr i8, ptr %i.zn, i64 %i.aji
  %i.ajk = add nsw i64 %i.ajg, %wide.trip.count47.i.i.us
  %i.ajl = shl nsw i64 %i.ajk, 2
  %i.ajm = getelementptr i8, ptr %i.ajf, i64 %i.ajl
  %bound01009 = icmp ult ptr %i.aah, %i.ajm
  %bound11010 = icmp ult ptr %invariant.gep51.i.i.us, %i.ajj
  %found.conflict1011 = and i1 %bound01009, %bound11010
  br i1 %found.conflict1011, label %scalar.ph1006.preheader, label %vector.ph1012

vector.ph1012:                                    ; preds = %vector.memcheck1008
  %n.vec1013 = and i64 %wide.trip.count47.i.i.us, 2147483640 ; 3 uses
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1020, %vector.body1014 ] ; 3 uses
  %i.ajn = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %index1015 ; 2 uses
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 16
  %wide.load1016 = load <4 x float>, ptr %i.ajn, align 4, !tbaa !64, !alias.scope !236
  %wide.load1017 = load <4 x float>, ptr %i.ajo, align 4, !tbaa !64, !alias.scope !236
  %i.ajp = fadd <4 x float> %wide.load1016, zeroinitializer
  %i.ajq = fadd <4 x float> %wide.load1017, zeroinitializer
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %index1015 ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16 ; 2 uses
  %wide.load1018 = load <4 x float>, ptr %i.ajr, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  %wide.load1019 = load <4 x float>, ptr %i.ajs, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  %i.ajt = fadd <4 x float> %wide.load1018, %i.ajp
  %i.aju = fadd <4 x float> %wide.load1019, %i.ajq
  store <4 x float> %i.ajt, ptr %i.ajr, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  store <4 x float> %i.aju, ptr %i.ajs, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  %index.next1020 = add nuw i64 %index1015, 8     ; 2 uses
  %i.ajv = icmp eq i64 %index.next1020, %n.vec1013
  br i1 %i.ajv, label %middle.block1021, label %vector.body1014, !llvm.loop !230

middle.block1021:                                 ; preds = %vector.body1014
  %cmp.n1022 = icmp eq i64 %n.vec1013, %wide.trip.count47.i.i.us
  br i1 %cmp.n1022, label %.loopexit49.i.us, label %scalar.ph1006.preheader

scalar.ph1006.preheader:                          ; preds = %vector.memcheck1008, %.lr.ph41.i.i.us, %middle.block1021
  %indvars.iv44.i.i.us.ph = phi i64 [ 0, %vector.memcheck1008 ], [ 0, %.lr.ph41.i.i.us ], [ %n.vec1013, %middle.block1021 ] ; 5 uses
  %xtraiter1068 = and i64 %wide.trip.count47.i.i.us, 1
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1069.not, label %scalar.ph1006.prol.loopexit, label %scalar.ph1006.prol

scalar.ph1006.prol:                               ; preds = %scalar.ph1006.preheader
  %gep52.i.i.us.prol = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv44.i.i.us.ph
  %i.ajw = load float, ptr %gep52.i.i.us.prol, align 4, !tbaa !64
  %i.ajx = fadd float %i.ajw, 0.000000e+00
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv44.i.i.us.ph ; 2 uses
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !64
  %i.aka = fadd float %i.ajz, %i.ajx
  store float %i.aka, ptr %i.ajy, align 4, !tbaa !64
  %indvars.iv.next45.i.i.us.prol = or disjoint i64 %indvars.iv44.i.i.us.ph, 1
  br label %scalar.ph1006.prol.loopexit

scalar.ph1006.prol.loopexit:                      ; preds = %scalar.ph1006.prol, %scalar.ph1006.preheader
  %indvars.iv44.i.i.us.unr = phi i64 [ %indvars.iv44.i.i.us.ph, %scalar.ph1006.preheader ], [ %indvars.iv.next45.i.i.us.prol, %scalar.ph1006.prol ]
  %i.akb = add nsw i64 %wide.trip.count47.i.i.us, -1
  %i.akc = icmp eq i64 %indvars.iv44.i.i.us.ph, %i.akb
  br i1 %i.akc, label %.loopexit49.i.us, label %scalar.ph1006

scalar.ph1006:                                    ; preds = %scalar.ph1006.prol.loopexit, %scalar.ph1006
  %indvars.iv44.i.i.us = phi i64 [ %indvars.iv.next45.i.i.us.1, %scalar.ph1006 ], [ %indvars.iv44.i.i.us.unr, %scalar.ph1006.prol.loopexit ] ; 4 uses
  %gep52.i.i.us = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv44.i.i.us
  %i.akd = load float, ptr %gep52.i.i.us, align 4, !tbaa !64
  %i.ake = fadd float %i.akd, 0.000000e+00
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv44.i.i.us ; 2 uses
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !64
  %i.akh = fadd float %i.akg, %i.ake
  store float %i.akh, ptr %i.akf, align 4, !tbaa !64
  %indvars.iv.next45.i.i.us = add nuw nsw i64 %indvars.iv44.i.i.us, 1 ; 2 uses
  %gep52.i.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv.next45.i.i.us
  %i.aki = load float, ptr %gep52.i.i.us.1, align 4, !tbaa !64
  %i.akj = fadd float %i.aki, 0.000000e+00
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.next45.i.i.us ; 2 uses
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !64
  %i.akm = fadd float %i.akl, %i.akj
  store float %i.akm, ptr %i.akk, align 4, !tbaa !64
  %indvars.iv.next45.i.i.us.1 = add nuw nsw i64 %indvars.iv44.i.i.us, 2 ; 2 uses
  %exitcond48.not.i.i.us.1 = icmp eq i64 %indvars.iv.next45.i.i.us.1, %wide.trip.count47.i.i.us
  br i1 %exitcond48.not.i.i.us.1, label %.loopexit49.i.us, label %scalar.ph1006, !llvm.loop !231

.loopexit49.i.us.loopexit1035.unr-lcssa:          ; preds = %bb.ij
  %lcmp.mod1064.not = icmp eq i64 %xtraiter1062, 0
  br i1 %lcmp.mod1064.not, label %.loopexit49.i.us, label %.epil.preheader1061

.epil.preheader1061:                              ; preds = %.loopexit49.i.us.loopexit1035.unr-lcssa, %.lr.ph.i38.i.us
  %indvars.iv.i39.i.us.epil.init = phi i64 [ 0, %.lr.ph.i38.i.us ], [ %indvars.iv.next.i41.i.us.1, %.loopexit49.i.us.loopexit1035.unr-lcssa ] ; 2 uses
  %.03039.i.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.us ], [ %i.aje, %.loopexit49.i.us.loopexit1035.unr-lcssa ]
  %lcmp.mod1065 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1065)
  %gep.i40.i.us.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.i39.i.us.epil.init
  %i.akn = load float, ptr %gep.i40.i.us.epil, align 4, !tbaa !64
  %i.ako = fadd float %.03039.i.i.us.epil.init, %i.akn
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.i39.i.us.epil.init ; 2 uses
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !64
  %i.akr = fadd float %i.akq, %i.ako
  store float %i.akr, ptr %i.akp, align 4, !tbaa !64
  br label %.loopexit49.i.us

.loopexit49.i.us:                                 ; preds = %.epil.preheader1061, %.loopexit49.i.us.loopexit1035.unr-lcssa, %scalar.ph1006.prol.loopexit, %scalar.ph1006, %middle.block1021, %.preheader.i.i.us, %.preheader36.i.i.us
  %i.aks = add nsw i32 %i.aik, %.154.i.us         ; 2 uses
  %i.akt = add nsw i32 %i.aik, %.03153.i.us
  %i.aku = icmp slt i32 %i.aks, %i.zo
  br i1 %i.aku, label %bb.ex, label %.thread629.us710, !llvm.loop !14

.thread629.us710:                                 ; preds = %.loopexit49.i.us, %.preheader.i.us, %bb.ew, %bb.ev
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1 ; 2 uses
  %exitcond791.not = icmp eq i64 %indvars.iv.next788, %wide.trip.count790
  br i1 %exitcond791.not, label %._crit_edge700.split.us711, label %bb.ev, !llvm.loop !225

._crit_edge700.split.us711:                       ; preds = %.thread629.us710
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1 ; 2 uses
  %i.akv = add nsw i32 %.1280704.us, 1            ; 3 uses
  %i.akw = icmp slt i64 %indvars.iv.next793, %i.dq
  %i.akx = icmp slt i32 %i.akv, %i.ac
  %i.aky = select i1 %i.akw, i1 %i.akx, i1 false
  br i1 %i.aky, label %.preheader654.us, label %._crit_edge706, !llvm.loop !226

.preheader654:                                    ; preds = %.preheader654.lr.ph, %.preheader654
  %.1280704 = phi i32 [ %i.ala, %.preheader654 ], [ %.0279721, %.preheader654.lr.ph ]
  %.3308703 = phi i32 [ %i.akz, %.preheader654 ], [ 0, %.preheader654.lr.ph ]
  %i.akz = add nuw nsw i32 %.3308703, 1           ; 2 uses
  %i.ala = add nsw i32 %.1280704, 1               ; 3 uses
  %i.alb = icmp slt i32 %i.akz, %i.r
  %i.alc = icmp slt i32 %i.ala, %i.ac
  %i.ald = select i1 %i.alb, i1 %i.alc, i1 false
  br i1 %i.ald, label %.preheader654, label %._crit_edge706, !llvm.loop !226

._crit_edge77.i405:                               ; preds = %.thread66.i404.us.us.us, %bb.en
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %codebook_decode_scalar_raw.exit434.thread596

codebook_decode_scalar_raw.exit434.thread596:     ; preds = %bb.es, %bb.eo, %._crit_edge77.i405
  store i32 0, ptr %i.cx, align 8, !tbaa !84
  br label %.thread.i364

.thread.i364:                                     ; preds = %bb.eu, %codebook_decode_scalar_raw.exit434.us.us.us, %bb.eq, %codebook_decode_scalar_raw.exit434.thread596
  %i.ale = load i8, ptr %i.cz, align 4, !tbaa !86
  %.not.i366 = icmp eq i8 %i.ale, 0
  br i1 %.not.i366, label %bb.ik, label %.thread31.sink.split.i367

bb.ik:                                            ; preds = %.thread.i364
  %i.alf = load i32, ptr %i.da, align 4, !tbaa !83
  %.not27.i369 = icmp eq i32 %i.alf, 0
  br i1 %.not27.i369, label %.thread31.sink.split.i367, label %.thread633

.thread31.sink.split.i367:                        ; preds = %bb.cc, %bb.ik, %.thread.i364
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %.thread633

._crit_edge77.i:                                  ; preds = %.thread66.i.us, %bb.ib
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %codebook_decode_scalar_raw.exit.thread621

codebook_decode_scalar_raw.exit.thread621:        ; preds = %bb.ig, %bb.ic, %._crit_edge77.i
  store i32 0, ptr %i.cx, align 8, !tbaa !84
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ii, %codebook_decode_scalar_raw.exit.us, %bb.ie, %codebook_decode_scalar_raw.exit.thread621
  %i.alg = load i8, ptr %i.cz, align 4, !tbaa !86
  %.not.i360 = icmp eq i8 %i.alg, 0
  br i1 %.not.i360, label %bb.il, label %.thread31.sink.split.i

bb.il:                                            ; preds = %.thread.i
  %i.alh = load i32, ptr %i.da, align 4, !tbaa !83
  %.not27.i = icmp eq i32 %i.alh, 0
  br i1 %.not27.i, label %.thread31.sink.split.i, label %.thread633

.thread31.sink.split.i:                           ; preds = %bb.ex, %bb.il, %.thread.i
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %.thread633

._crit_edge706:                                   ; preds = %.preheader654, %._crit_edge700.split.us711, %._crit_edge700.split.us.us.us, %.loopexit657
  %.1280.lcssa = phi i32 [ %.0279721, %.loopexit657 ], [ %i.akv, %._crit_edge700.split.us711 ], [ %i.yt, %._crit_edge700.split.us.us.us ], [ %i.ala, %.preheader654 ] ; 2 uses
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1
  %i.ali = icmp slt i32 %.1280.lcssa, %i.ac
  br i1 %i.ali, label %bb.ax, label %._crit_edge725, !llvm.loop !232

._crit_edge725:                                   ; preds = %._crit_edge706
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1 ; 2 uses
  %exitcond809.not = icmp eq i64 %indvars.iv.next807, 8
  br i1 %exitcond809.not, label %.thread633, label %.preheader659, !llvm.loop !233

.thread633:                                       ; preds = %._crit_edge725, %bb.bw, %bb.m, %..loopexit641_crit_edge, %..loopexit_crit_edge.us, %.preheader643.split, %.preheader660, %.preheader643.split.us, %bb.ik, %.thread31.sink.split.i367, %bb.il, %.thread31.sink.split.i, %.thread550, %.thread561, %._crit_edge729
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @imdct_step3_iter0_loop(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #21 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.090 = phi ptr [ %i.cv, %.lr.ph ], [ %4, %.lr.ph.preheader ] ; 10 uses
  %.08489 = phi ptr [ %i.cw, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 10 uses
  %.08588 = phi i32 [ %i.cy, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %.08687 = phi ptr [ %i.cx, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 10 uses
  %i.g = load float, ptr %.08489, align 4, !tbaa !64 ; 2 uses
  %i.h = load float, ptr %.08687, align 4, !tbaa !64 ; 2 uses
  %i.i = fsub float %i.g, %i.h                    ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.08489, i64 -4 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !64 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.08687, i64 -4 ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !64
  %i.n = fsub float %i.k, %i.m                    ; 2 uses
  %i.o = fadd float %i.g, %i.h
  store float %i.o, ptr %.08489, align 4, !tbaa !64
  %i.p = load float, ptr %i.l, align 4, !tbaa !64
  %i.q = fadd float %i.k, %i.p
  store float %i.q, ptr %i.j, align 4, !tbaa !64
  %i.r = load float, ptr %.090, align 4, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %.090, i64 4 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !64
  %i.u = fneg float %i.t
  %i.v = fmul float %i.n, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.i, float %i.r, float %i.v)
  store float %i.w, ptr %.08687, align 4, !tbaa !64
  %i.x = load float, ptr %.090, align 4, !tbaa !64
  %i.y = load float, ptr %i.s, align 4, !tbaa !64
  %i.z = fmul float %i.i, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.n, float %i.x, float %i.z)
  store float %i.aa, ptr %i.l, align 4, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %.090, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.08489, i64 -8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !64 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.08687, i64 -8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !64 ; 2 uses
  %i.ag = fsub float %i.ad, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.08489, i64 -12 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !64 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.08687, i64 -12 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !64
  %i.al = fsub float %i.ai, %i.ak                 ; 2 uses
  %i.am = fadd float %i.ad, %i.af
  store float %i.am, ptr %i.ac, align 4, !tbaa !64
  %i.an = load float, ptr %i.aj, align 4, !tbaa !64
  %i.ao = fadd float %i.ai, %i.an
  store float %i.ao, ptr %i.ah, align 4, !tbaa !64
  %i.ap = load float, ptr %i.ab, align 4, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %.090, i64 36 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !64
  %i.as = fneg float %i.ar
  %i.at = fmul float %i.al, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ap, float %i.at)
  store float %i.au, ptr %i.ae, align 4, !tbaa !64
  %i.av = load float, ptr %i.ab, align 4, !tbaa !64
  %i.aw = load float, ptr %i.aq, align 4, !tbaa !64
  %i.ax = fmul float %i.ag, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.al, float %i.av, float %i.ax)
  store float %i.ay, ptr %i.aj, align 4, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %.090, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.08489, i64 -16 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !64 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.08687, i64 -16 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !64 ; 2 uses
  %i.be = fsub float %i.bb, %i.bd                 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.08489, i64 -20 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !64 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.08687, i64 -20 ; 3 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !64
  %i.bj = fsub float %i.bg, %i.bi                 ; 2 uses
  %i.bk = fadd float %i.bb, %i.bd
  store float %i.bk, ptr %i.ba, align 4, !tbaa !64
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !64
  %i.bm = fadd float %i.bg, %i.bl
  store float %i.bm, ptr %i.bf, align 4, !tbaa !64
  %i.bn = load float, ptr %i.az, align 4, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %.090, i64 68 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !64
  %i.bq = fneg float %i.bp
  %i.br = fmul float %i.bj, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bn, float %i.br)
  store float %i.bs, ptr %i.bc, align 4, !tbaa !64
  %i.bt = load float, ptr %i.az, align 4, !tbaa !64
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !64
  %i.bv = fmul float %i.be, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bt, float %i.bv)
  store float %i.bw, ptr %i.bh, align 4, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %.090, i64 96 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.08489, i64 -24 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !64 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.08687, i64 -24 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !64 ; 2 uses
  %i.cc = fsub float %i.bz, %i.cb                 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.08489, i64 -28 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !64 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.08687, i64 -28 ; 3 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ch = fsub float %i.ce, %i.cg                 ; 2 uses
  %i.ci = fadd float %i.bz, %i.cb
  store float %i.ci, ptr %i.by, align 4, !tbaa !64
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ck = fadd float %i.ce, %i.cj
  store float %i.ck, ptr %i.cd, align 4, !tbaa !64
  %i.cl = load float, ptr %i.bx, align 4, !tbaa !64
  %i.cm = getelementptr inbounds nuw i8, ptr %.090, i64 100 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !64
  %i.co = fneg float %i.cn
  %i.cp = fmul float %i.ch, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cl, float %i.cp)
  store float %i.cq, ptr %i.ca, align 4, !tbaa !64
  %i.cr = load float, ptr %i.bx, align 4, !tbaa !64
  %i.cs = load float, ptr %i.cm, align 4, !tbaa !64
  %i.ct = fmul float %i.cc, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.cr, float %i.ct)
  store float %i.cu, ptr %i.cf, align 4, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %.090, i64 128
  %i.cw = getelementptr inbounds i8, ptr %.08489, i64 -32
  %i.cx = getelementptr inbounds i8, ptr %.08687, i64 -32
  %i.cy = add nsw i32 %.08588, -1
  %i.cz = icmp samesign ugt i32 %.08588, 1
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !238

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @imdct_step3_inner_r_loop(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #21 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = sext i32 %5 to i64                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.094 = phi ptr [ %i.f, %.lr.ph ], [ %i.cx, %bb.b ] ; 10 uses
  %.08893 = phi ptr [ %i.d, %.lr.ph ], [ %i.cw, %bb.b ] ; 10 uses
  %.08992 = phi i32 [ %i.a, %.lr.ph ], [ %i.cz, %bb.b ] ; 2 uses
  %.09091 = phi ptr [ %4, %.lr.ph ], [ %i.cy, %bb.b ] ; 4 uses
  %i.h = load float, ptr %.08893, align 4, !tbaa !64 ; 2 uses
  %i.i = load float, ptr %.094, align 4, !tbaa !64 ; 2 uses
  %i.j = fsub float %i.h, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.08893, i64 -4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !64 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.094, i64 -4 ; 3 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !64
  %i.o = fsub float %i.l, %i.n                    ; 2 uses
  %i.p = fadd float %i.h, %i.i
  store float %i.p, ptr %.08893, align 4, !tbaa !64
  %i.q = load float, ptr %i.m, align 4, !tbaa !64
  %i.r = fadd float %i.l, %i.q
  store float %i.r, ptr %i.k, align 4, !tbaa !64
  %i.s = load float, ptr %.09091, align 4, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %.09091, i64 4 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !64
  %i.v = fneg float %i.u
  %i.w = fmul float %i.o, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.j, float %i.s, float %i.w)
  store float %i.x, ptr %.094, align 4, !tbaa !64
  %i.y = load float, ptr %.09091, align 4, !tbaa !64
  %i.z = load float, ptr %i.t, align 4, !tbaa !64
  %i.aa = fmul float %i.j, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.o, float %i.y, float %i.aa)
  store float %i.ab, ptr %i.m, align 4, !tbaa !64
end_hunk_2
begin_hunk_3_@imdct_step3_inner_s_loop:bb.a
  %i.ch = extractelement <2 x float> %i.cd, i64 1
  %i.ci = fadd float %i.ch, %i.ce
  store float %i.ci, ptr %i.bz, align 4, !tbaa !64
  %i.cj = load float, ptr %i.cc, align 4, !tbaa !64
  %i.ck = extractelement <2 x float> %i.cd, i64 0
  %i.cl = fadd float %i.ck, %i.cj
  store float %i.cl, ptr %i.cb, align 4, !tbaa !64
  %i.cm = fmul <2 x float> %i.am, %i.cg
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ak, <2 x float> %i.cn)
  store <2 x float> %i.co, ptr %i.cc, align 4, !tbaa !64
  %i.cp = getelementptr inbounds i8, ptr %.0104107, i64 -24
  %i.cq = getelementptr inbounds i8, ptr %.0108, i64 -24
  %i.cr = getelementptr inbounds i8, ptr %.0104107, i64 -28 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.0108, i64 -28 ; 3 uses
  %i.ct = load <2 x float>, ptr %i.cr, align 4, !tbaa !64 ; 3 uses
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !64
  %i.cv = load <2 x float>, ptr %i.cs, align 4, !tbaa !64
  %i.cw = fsub <2 x float> %i.ct, %i.cv           ; 2 uses
  %i.cx = extractelement <2 x float> %i.ct, i64 1
  %i.cy = fadd float %i.cx, %i.cu
  store float %i.cy, ptr %i.cp, align 4, !tbaa !64
  %i.cz = load float, ptr %i.cs, align 4, !tbaa !64
  %i.da = extractelement <2 x float> %i.ct, i64 0
  %i.db = fadd float %i.da, %i.cz
  store float %i.db, ptr %i.cr, align 4, !tbaa !64
  %i.dc = fmul <2 x float> %i.ai, %i.cw
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ag, <2 x float> %i.dd)
  store <2 x float> %i.de, ptr %i.cs, align 4, !tbaa !64
  %i.df = getelementptr inbounds [4 x i8], ptr %.0104107, i64 %i.ae
  %i.dg = getelementptr inbounds [4 x i8], ptr %.0108, i64 %i.ae
  %i.dh = add nsw i32 %.0105106, -1
  %i.di = icmp samesign ugt i32 %.0105106, 1
  br i1 %i.di, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @imdct_step3_inner_s_loop_ld654(i32 noundef %0, ptr nofree noundef captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = shl nsw i32 %0, 4
  %i.d = sext i32 %i.c to i64
  %.neg = mul nsw i64 %i.d, -4
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.neg
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = ashr i32 %4, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %3, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !64 ; 2 uses
  %i.k = fneg float %i.j
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = insertelement <2 x float> %i.m, float %i.k, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.075 = phi ptr [ %i.b, %.lr.ph ], [ %i.cs, %bb.b ] ; 13 uses
  %i.o = getelementptr inbounds i8, ptr %.075, i64 -4
  %i.p = getelementptr inbounds i8, ptr %.075, i64 -36
  %i.q = getelementptr inbounds i8, ptr %.075, i64 -8
  %i.r = getelementptr inbounds i8, ptr %.075, i64 -40
  %i.s = getelementptr inbounds i8, ptr %.075, i64 -12 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.075, i64 -44 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.075, i64 -20
  %i.v = getelementptr inbounds i8, ptr %.075, i64 -52
  %i.w = getelementptr inbounds i8, ptr %.075, i64 -24
  %i.x = getelementptr inbounds i8, ptr %.075, i64 -56
  %i.y = getelementptr inbounds i8, ptr %.075, i64 -28 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.075, i64 -60 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.o, align 4, !tbaa !64 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !64 ; 2 uses
  %i.ac = fsub <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.ad = load <2 x float>, ptr %i.s, align 4, !tbaa !64 ; 2 uses
  %i.ae = load float, ptr %i.q, align 4, !tbaa !64
  %i.af = load <2 x float>, ptr %i.t, align 4, !tbaa !64 ; 2 uses
  %i.ag = load float, ptr %i.r, align 4, !tbaa !64
  %i.ah = load <2 x float>, ptr %i.y, align 4, !tbaa !64 ; 2 uses
  %i.ai = load float, ptr %i.w, align 4, !tbaa !64
  %i.aj = load <2 x float>, ptr %i.z, align 4, !tbaa !64 ; 2 uses
  %i.ak = load float, ptr %i.x, align 4, !tbaa !64
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.an = fsub <4 x float> %i.al, %i.am           ; 4 uses
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aq = fadd <2 x float> %i.ao, %i.ap
  %i.ar = fsub <2 x float> %i.ao, %i.ap
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = fmul <2 x float> %i.m, %i.as            ; 2 uses
  %i.au = load <2 x float>, ptr %i.u, align 4, !tbaa !64 ; 2 uses
  %i.av = load <2 x float>, ptr %i.v, align 4, !tbaa !64 ; 2 uses
  %i.aw = fsub <2 x float> %i.au, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.az = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ba = fsub <2 x float> %i.ay, %i.az
  %i.bb = fadd <2 x float> %i.ay, %i.az
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.bd = fmul <2 x float> %i.n, %i.bc            ; 2 uses
  %i.be = fadd <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x float> %i.bf, float %i.ae, i64 0
  %i.bh = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = insertelement <2 x float> %i.bh, float %i.ag, i64 0
  %i.bj = fadd <2 x float> %i.bg, %i.bi           ; 2 uses
  %i.bk = fadd <2 x float> %i.au, %i.av           ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bm = insertelement <2 x float> %i.bl, float %i.ai, i64 0
  %i.bn = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.ak, i64 0
  %i.bp = fadd <2 x float> %i.bm, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> %i.bj, %i.bp
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bs = fsub <2 x float> %i.be, %i.bk
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bu = fadd <2 x float> %i.be, %i.bk
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bw = fadd <2 x float> %i.bj, %i.bp
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.by = fsub <4 x float> %i.bv, %i.bx
  %i.bz = fadd <4 x float> %i.bv, %i.bx
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ca, ptr %i.s, align 4, !tbaa !64
  %i.cb = fadd <4 x float> %i.bt, %i.br
  %i.cc = fsub <4 x float> %i.bt, %i.br
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.cd, ptr %i.y, align 4, !tbaa !64
  %i.ce = fsub <2 x float> %i.at, %i.bd
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cg = fadd <2 x float> %i.ac, %i.ax           ; 2 uses
  %i.ch = fsub <2 x float> %i.ac, %i.ax           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.ck = fadd <2 x float> %i.at, %i.bd
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.cm = fsub <4 x float> %i.cj, %i.cl
  %i.cn = fadd <4 x float> %i.cj, %i.cl
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.co, ptr %i.t, align 4, !tbaa !64
  %i.cp = fadd <4 x float> %i.ci, %i.cf
  %i.cq = fsub <4 x float> %i.ci, %i.cf
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.cr, ptr %i.z, align 4, !tbaa !64
  %i.cs = getelementptr inbounds i8, ptr %.075, i64 -64 ; 2 uses
  %i.ct = icmp ugt ptr %i.cs, %i.e
  br i1 %i.ct, label %bb.b, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @inverse_mdct(ptr nofree noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #24 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 6 uses
  %i.b = ashr i32 %1, 2                           ; 2 uses
  %i.c = ashr i32 %1, 3                           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.a, 2
  %i.i = add nsw i32 %i.h, 4
  %i.j = and i32 %i.i, -8
  %i.k = sub nsw i32 %i.e, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.d, align 4, !tbaa !46
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %i.a to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.c ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.v = sext i32 %3 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65   ; 19 uses
  %i.y = sext i32 %i.a to i64                     ; 5 uses
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 10 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.0388423 = getelementptr i8, ptr %i.z, i64 -8  ; 5 uses
  %.not409424 = icmp eq i32 %i.a, 0
  br i1 %.not409424, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %setup_temp_malloc.exit
  %i.ab = add nsw i64 %.idx, -16                  ; 4 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 128
  br i1 %min.iters.check, label %.lr.ph.preheader537, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = lshr exact i64 %i.ab, 1
  %i.af = and i64 %i.ae, 9223372036854775800      ; 2 uses
  %i.ag = add nsw i64 %.idx, -8
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = or i64 %i.ab, 12
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.x, i64 %i.af
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %bound0 = icmp ult ptr %i.ai, %i.ak
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0518 = icmp ult ptr %i.ai, %i.am
  %bound1519 = icmp ult ptr %i.x, %i.z
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx = or i1 %found.conflict, %found.conflict520
  br i1 %conflict.rdx, label %.lr.ph.preheader537, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.an = and i64 %i.ad, 3                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 4, i64 %i.an
  %n.vec = sub nsw i64 %i.ad, %i.ap               ; 4 uses
  %i.aq = mul i64 %n.vec, -8                      ; 2 uses
  %i.ar = getelementptr i8, ptr %.0388423, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  %i.at = shl i64 %n.vec, 4
  %i.au = getelementptr i8, ptr %0, i64 %i.at
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.x, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ax = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.0388423, i64 %i.ax
  %i.ay = shl i64 %index, 4                       ; 4 uses
  %next.gep521.a = getelementptr i8, ptr %0, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep522.a = getelementptr i8, ptr %i.az, i64 16
  %i.ba = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.ba, i64 32
  %i.bb = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.bb, i64 48
  %i.bc = shl i64 %index, 3
  %next.gep525 = getelementptr i8, ptr %i.x, i64 %i.bc ; 2 uses
  %i.bd = load float, ptr %next.gep521.a, align 4, !tbaa !64, !alias.scope !255
  %i.be = load float, ptr %next.gep522.a, align 4, !tbaa !64, !alias.scope !255
  %i.bf = load float, ptr %next.gep523, align 4, !tbaa !64, !alias.scope !255
  %i.bg = load float, ptr %next.gep524, align 4, !tbaa !64, !alias.scope !255
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3 ; 2 uses
  %wide.vec = load <8 x float>, ptr %next.gep525, align 4, !tbaa !64, !alias.scope !256 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep521.a, i64 8
  %i.bm = getelementptr i8, ptr %i.az, i64 24
  %i.bn = getelementptr i8, ptr %i.ba, i64 40
  %i.bo = getelementptr i8, ptr %i.bb, i64 56
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !64, !alias.scope !255
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !64, !alias.scope !255
  %i.br = load float, ptr %i.bn, align 4, !tbaa !64, !alias.scope !255
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !64, !alias.scope !255
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3 ; 2 uses
  %i.bx = fneg <8 x float> %wide.vec
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bz = fmul <4 x float> %i.bw, %i.by
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %strided.vec, <4 x float> %i.bz)
  %wide.vec527 = load <8 x float>, ptr %next.gep525, align 4, !tbaa !64, !alias.scope !256 ; 2 uses
  %strided.vec528 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec529 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cb = fmul <4 x float> %i.bw, %strided.vec528
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %strided.vec529, <4 x float> %i.cb)
  %i.cd = getelementptr i8, ptr %next.gep, i64 -24
  %interleaved.vec = shufflevector <4 x float> %i.cc, <4 x float> %i.ca, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.cd, align 4, !tbaa !64, !alias.scope !257, !noalias !258
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %.lr.ph.preheader537, label %vector.body, !llvm.loop !244

.lr.ph.preheader537:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.0388428.ph = phi ptr [ %.0388423, %vector.memcheck ], [ %.0388423, %.lr.ph.preheader ], [ %i.ar, %vector.body ]
  %.pn419427.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.as, %vector.body ]
  %.0397426.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.au, %vector.body ]
  %.0399425.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.aw, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader537, %.lr.ph
  %.0388428 = phi ptr [ %.0388, %.lr.ph ], [ %.0388428.ph, %.lr.ph.preheader537 ] ; 3 uses
  %.pn419427 = phi ptr [ %.0388428, %.lr.ph ], [ %.pn419427.ph, %.lr.ph.preheader537 ]
  %.0397426 = phi ptr [ %i.cw, %.lr.ph ], [ %.0397426.ph, %.lr.ph.preheader537 ] ; 4 uses
  %.0399425 = phi ptr [ %i.cv, %.lr.ph ], [ %.0399425.ph, %.lr.ph.preheader537 ] ; 4 uses
  %i.cf = load float, ptr %.0397426, align 4, !tbaa !64
  %i.cg = load float, ptr %.0399425, align 4, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0397426, i64 8 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0399425, i64 4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !64
  %i.cl = fneg float %i.ck
  %i.cm = fmul float %i.ci, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.cm)
  %i.co = getelementptr i8, ptr %.pn419427, i64 -4
  store float %i.cn, ptr %i.co, align 4, !tbaa !64
  %i.cp = load float, ptr %.0397426, align 4, !tbaa !64
  %i.cq = load float, ptr %i.cj, align 4, !tbaa !64
  %i.cr = load float, ptr %i.ch, align 4, !tbaa !64
  %i.cs = load float, ptr %.0399425, align 4, !tbaa !64
  %i.ct = fmul float %i.cr, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cq, float %i.ct)
  store float %i.cu, ptr %.0388428, align 4, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0399425, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0397426, i64 16 ; 2 uses
  %.0388 = getelementptr i8, ptr %.0388428, i64 -8 ; 2 uses
  %.not409 = icmp eq ptr %i.cw, %i.aa
  br i1 %.not409, label %._crit_edge, label %.lr.ph, !llvm.loop !245

._crit_edge:                                      ; preds = %.lr.ph, %setup_temp_malloc.exit
  %.0399.lcssa = phi ptr [ %i.x, %setup_temp_malloc.exit ], [ %i.cv, %.lr.ph ]
  %.0388.lcssa = phi ptr [ %.0388423, %setup_temp_malloc.exit ], [ %.0388, %.lr.ph ] ; 2 uses
  %.not410430 = icmp ult ptr %.0388.lcssa, %i.t
  br i1 %.not410430, label %._crit_edge436, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %._crit_edge
  %i.cx = getelementptr i8, ptr %i.aa, i64 -12
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %.lr.ph435
  %.1389433 = phi ptr [ %i.dq, %.lr.ph435 ], [ %.0388.lcssa, %.lr.ph435.preheader ] ; 3 uses
  %.1398432 = phi ptr [ %i.ds, %.lr.ph435 ], [ %i.cx, %.lr.ph435.preheader ] ; 4 uses
  %.1400431 = phi ptr [ %i.dr, %.lr.ph435 ], [ %.0399.lcssa, %.lr.ph435.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1398432, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !64
  %i.da = fneg float %i.cz
  %i.db = load float, ptr %.1400431, align 4, !tbaa !64
  %i.dc = load float, ptr %.1398432, align 4, !tbaa !64
  %i.dd = getelementptr inbounds nuw i8, ptr %.1400431, i64 4 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !64
  %i.df = fmul float %i.dc, %i.de
  %i.dg = call float @llvm.fmuladd.f32(float %i.da, float %i.db, float %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.1389433, i64 4
  store float %i.dg, ptr %i.dh, align 4, !tbaa !64
  %i.di = load float, ptr %i.cy, align 4, !tbaa !64
  %i.dj = fneg float %i.di
  %i.dk = load float, ptr %i.dd, align 4, !tbaa !64
  %i.dl = load float, ptr %.1398432, align 4, !tbaa !64
  %i.dm = fneg float %i.dl
  %i.dn = load float, ptr %.1400431, align 4, !tbaa !64
  %i.do = fmul float %i.dn, %i.dm
  %i.dp = call float @llvm.fmuladd.f32(float %i.dj, float %i.dk, float %i.do)
  store float %i.dp, ptr %.1389433, align 4, !tbaa !64
  %i.dq = getelementptr inbounds i8, ptr %.1389433, i64 -8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1400431, i64 8
  %i.ds = getelementptr inbounds i8, ptr %.1398432, i64 -16
  %.not410 = icmp ult ptr %i.dq, %i.t
  br i1 %.not410, label %._crit_edge436, label %.lr.ph435, !llvm.loop !246

._crit_edge436:                                   ; preds = %.lr.ph435, %._crit_edge
  %i.dt = getelementptr [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.du = sext i32 %i.b to i64                    ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.t, i64 %i.du ; 3 uses
  %.0405437 = getelementptr i8, ptr %i.dt, i64 -32 ; 2 uses
  %.not411438 = icmp ult ptr %.0405437, %i.x
  br i1 %.not411438, label %._crit_edge447, label %.lr.ph446.preheader

.lr.ph446.preheader:                              ; preds = %._crit_edge436
  %i.dw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.du
  br label %.lr.ph446

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %.lr.ph446
  %.0405444 = phi ptr [ %.0405, %.lr.ph446 ], [ %.0405437, %.lr.ph446.preheader ] ; 4 uses
  %.0401443 = phi ptr [ %i.gb, %.lr.ph446 ], [ %i.t, %.lr.ph446.preheader ] ; 6 uses
  %.0402442 = phi ptr [ %i.ga, %.lr.ph446 ], [ %i.dv, %.lr.ph446.preheader ] ; 6 uses
  %.0403441 = phi ptr [ %i.fz, %.lr.ph446 ], [ %0, %.lr.ph446.preheader ] ; 5 uses
  %.0404440 = phi ptr [ %i.fy, %.lr.ph446 ], [ %i.dw, %.lr.ph446.preheader ] ; 5 uses
  %.pn418439 = phi ptr [ %.0405444, %.lr.ph446 ], [ %i.dt, %.lr.ph446.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0402442, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !64 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0401443, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !64 ; 2 uses
  %i.eb = fsub float %i.dy, %i.ea                 ; 2 uses
  %i.ec = load float, ptr %.0402442, align 4, !tbaa !64
  %i.ed = load float, ptr %.0401443, align 4, !tbaa !64
  %i.ee = fsub float %i.ec, %i.ed                 ; 2 uses
  %i.ef = fadd float %i.dy, %i.ea
  %i.eg = getelementptr inbounds nuw i8, ptr %.0404440, i64 4
  store float %i.ef, ptr %i.eg, align 4, !tbaa !64
  %i.eh = load float, ptr %.0402442, align 4, !tbaa !64
  %i.ei = load float, ptr %.0401443, align 4, !tbaa !64
  %i.ej = fadd float %i.eh, %i.ei
  store float %i.ej, ptr %.0404440, align 4, !tbaa !64
  %i.ek = getelementptr i8, ptr %.pn418439, i64 -16 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !64
  %i.em = getelementptr i8, ptr %.pn418439, i64 -12 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !64
  %i.eo = fneg float %i.en
  %i.ep = fmul float %i.ee, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.eb, float %i.el, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %.0403441, i64 4
  store float %i.eq, ptr %i.er, align 4, !tbaa !64
  %i.es = load float, ptr %i.ek, align 4, !tbaa !64
  %i.et = load float, ptr %i.em, align 4, !tbaa !64
  %i.eu = fmul float %i.eb, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.ee, float %i.es, float %i.eu)
  store float %i.ev, ptr %.0403441, align 4, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %.0402442, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !64 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0401443, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !64 ; 2 uses
  %i.fa = fsub float %i.ex, %i.ez                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0402442, i64 8 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !64
  %i.fd = getelementptr inbounds nuw i8, ptr %.0401443, i64 8 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !64
  %i.ff = fsub float %i.fc, %i.fe                 ; 2 uses
  %i.fg = fadd float %i.ex, %i.ez
  %i.fh = getelementptr inbounds nuw i8, ptr %.0404440, i64 12
  store float %i.fg, ptr %i.fh, align 4, !tbaa !64
  %i.fi = load float, ptr %i.fb, align 4, !tbaa !64
  %i.fj = load float, ptr %i.fd, align 4, !tbaa !64
  %i.fk = fadd float %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.0404440, i64 8
  store float %i.fk, ptr %i.fl, align 4, !tbaa !64
  %i.fm = load float, ptr %.0405444, align 4, !tbaa !64
  %i.fn = getelementptr i8, ptr %.pn418439, i64 -28 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !64
  %i.fp = fneg float %i.fo
  %i.fq = fmul float %i.ff, %i.fp
  %i.fr = call float @llvm.fmuladd.f32(float %i.fa, float %i.fm, float %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0403441, i64 12
  store float %i.fr, ptr %i.fs, align 4, !tbaa !64
  %i.ft = load float, ptr %.0405444, align 4, !tbaa !64
  %i.fu = load float, ptr %i.fn, align 4, !tbaa !64
  %i.fv = fmul float %i.fa, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.ff, float %i.ft, float %i.fv)
  %i.fx = getelementptr inbounds nuw i8, ptr %.0403441, i64 8
  store float %i.fw, ptr %i.fx, align 4, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %.0404440, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %.0403441, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.0402442, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.0401443, i64 16
  %.0405 = getelementptr i8, ptr %.0405444, i64 -32 ; 2 uses
  %.not411 = icmp ult ptr %.0405, %i.x
  br i1 %.not411, label %._crit_edge447, label %.lr.ph446, !llvm.loop !247

._crit_edge447:                                   ; preds = %.lr.ph446, %._crit_edge436
  %i.gc = icmp slt i32 %1, 0
  br i1 %i.gc, label %ilog.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge447
  %i.gd = icmp samesign ult i32 %1, 16384
  br i1 %i.gd, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ge = icmp samesign ult i32 %1, 16
  br i1 %i.ge, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gf = zext nneg i32 %1 to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !50
  %i.gi = sext i8 %i.gh to i32
  br label %ilog.exit

bb.h:                                             ; preds = %bb.f
  %i.gj = icmp samesign ult i32 %1, 512
  br i1 %i.gj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gk = lshr i32 %1, 5
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !50
  %i.go = sext i8 %i.gn to i32
  %i.gp = add nsw i32 %i.go, 5
  br label %ilog.exit

bb.j:                                             ; preds = %bb.h
  %i.gq = lshr i32 %1, 10
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !50
  %i.gu = sext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, 10
  br label %ilog.exit

bb.k:                                             ; preds = %bb.e
  %i.gw = icmp samesign ult i32 %1, 16777216
  br i1 %i.gw, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.gx = icmp samesign ult i32 %1, 524288
  br i1 %i.gx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gy = lshr i32 %1, 15
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !50
  %i.hc = sext i8 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, 15
  br label %ilog.exit

bb.n:                                             ; preds = %bb.l
  %i.he = lshr i32 %1, 20
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !50
  %i.hi = sext i8 %i.hh to i32
  %i.hj = add nsw i32 %i.hi, 20
  br label %ilog.exit

bb.o:                                             ; preds = %bb.k
  %i.hk = icmp samesign ult i32 %1, 536870912
  br i1 %i.hk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hl = lshr i32 %1, 25
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !50
  %i.hp = sext i8 %i.ho to i32
  %i.hq = add nsw i32 %i.hp, 25
  br label %ilog.exit

bb.q:                                             ; preds = %bb.o
  %i.hr = lshr i32 %1, 30
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !50
  %i.hv = sext i8 %i.hu to i32
  %i.hw = add nsw i32 %i.hv, 30
  br label %ilog.exit

ilog.exit:                                        ; preds = %._crit_edge447, %bb.g, %bb.i, %bb.j, %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i420 = phi i32 [ %i.hw, %bb.q ], [ %i.gi, %bb.g ], [ %i.gp, %bb.i ], [ %i.gv, %bb.j ], [ %i.hd, %bb.m ], [ %i.hj, %bb.n ], [ %i.hq, %bb.p ], [ 0, %._crit_edge447 ] ; 2 uses
  %i.hx = ashr i32 %1, 4                          ; 3 uses
  %i.hy = add nsw i32 %i.a, -1                    ; 8 uses
  %i.hz = sub nsw i32 0, %i.c                     ; 2 uses
  call void @imdct_step3_iter0_loop(i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.hy, i32 noundef %i.hz, ptr noundef nonnull %i.x)
  %i.ia = sub nsw i32 %i.hy, %i.b
  call void @imdct_step3_iter0_loop(i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.ia, i32 noundef %i.hz, ptr noundef nonnull %i.x)
  %i.ib = ashr i32 %1, 5                          ; 5 uses
  %i.ic = sub nsw i32 0, %i.hx                    ; 4 uses
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.hy, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.id = sub nsw i32 %i.hy, %i.c
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.id, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.ie = shl nsw i32 %i.c, 1
  %i.if = sub nsw i32 %i.hy, %i.ie
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.if, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %.neg = mul nsw i32 %i.c, -3
  %i.ig = add nsw i32 %.neg, %i.hy
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.ig, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.ih = add nsw i32 %.0.i420, -4
  %i.ii = ashr i32 %i.ih, 1                       ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 2
  br i1 %i.ij, label %.lr.ph452.preheader, label %.preheader

.lr.ph452.preheader:                              ; preds = %ilog.exit
  %i.ik = sext i32 %i.hy to i64
  br label %.lr.ph452

.loopexit422:                                     ; preds = %imdct_step3_inner_r_loop.exit.loopexit, %.lr.ph450, %.lr.ph452
  %exitcond494.not = icmp eq i32 %i.ip, %i.ii
  br i1 %exitcond494.not, label %.preheader, label %.lr.ph452, !llvm.loop !248

.preheader:                                       ; preds = %.loopexit422, %ilog.exit
  %.0.lcssa = phi i32 [ 2, %ilog.exit ], [ %i.ii, %.loopexit422 ] ; 2 uses
  %i.il = add nsw i32 %.0.i420, -7                ; 2 uses
  %i.im = icmp slt i32 %.0.lcssa, %i.il
  br i1 %i.im, label %.lr.ph460.preheader, label %._crit_edge461

.lr.ph460.preheader:                              ; preds = %.preheader
  %4 = add nsw i64 %i.y, -1
  br label %.lr.ph460

.lr.ph452:                                        ; preds = %.lr.ph452.preheader, %.loopexit422
  %.0451 = phi i32 [ %i.ip, %.loopexit422 ], [ 2, %.lr.ph452.preheader ] ; 5 uses
  %i.in = add nuw nsw i32 %.0451, 2
  %i.io = ashr i32 %1, %i.in                      ; 2 uses
  %i.ip = add nuw nsw i32 %.0451, 1               ; 2 uses
  %i.iq = shl nuw i32 2, %.0451                   ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph450, label %.loopexit422

.lr.ph450:                                        ; preds = %.lr.ph452
  %i.is = ashr i32 %i.io, 1
  %i.it = add nuw nsw i32 %.0451, 4
  %i.iu = ashr i32 %1, %i.it
  %i.iv = ashr i32 %i.iu, 2                       ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  %i.ix = shl nuw i32 8, %.0451
  %i.iy = sub nsw i32 0, %i.is
  %i.iz = sext i32 %i.iy to i64
  %i.ja = sext i32 %i.ix to i64                   ; 4 uses
  br i1 %i.iw, label %.lr.ph.i.preheader, label %.loopexit422

.lr.ph.i.preheader:                               ; preds = %.lr.ph450
  %i.jb = sext i32 %i.io to i64
  %wide.trip.count = zext nneg i32 %i.iq to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %imdct_step3_inner_r_loop.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %imdct_step3_inner_r_loop.exit.loopexit ] ; 2 uses
  %i.jc = mul nsw i64 %indvars.iv, %i.jb
  %i.jd = sub nsw i64 %i.ik, %i.jc
  %i.je = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.iz
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i
  %.094.i = phi ptr [ %i.jf, %.lr.ph.i ], [ %i.mw, %bb.r ] ; 10 uses
  %.08893.i = phi ptr [ %i.je, %.lr.ph.i ], [ %i.mv, %bb.r ] ; 10 uses
  %.08992.i = phi i32 [ %i.iv, %.lr.ph.i ], [ %i.my, %bb.r ] ; 2 uses
  %.09091.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.mx, %bb.r ] ; 4 uses
  %i.jg = load float, ptr %.08893.i, align 4, !tbaa !64 ; 2 uses
  %i.jh = load float, ptr %.094.i, align 4, !tbaa !64 ; 2 uses
  %i.ji = fsub float %i.jg, %i.jh                 ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %.08893.i, i64 -4 ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !64 ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.094.i, i64 -4 ; 3 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !64
  %i.jn = fsub float %i.jk, %i.jm                 ; 2 uses
  %i.jo = fadd float %i.jg, %i.jh
  store float %i.jo, ptr %.08893.i, align 4, !tbaa !64
  %i.jp = load float, ptr %i.jl, align 4, !tbaa !64
  %i.jq = fadd float %i.jk, %i.jp
  store float %i.jq, ptr %i.jj, align 4, !tbaa !64
  %i.jr = load float, ptr %.09091.i, align 4, !tbaa !64
  %i.js = getelementptr inbounds nuw i8, ptr %.09091.i, i64 4 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !64
  %i.ju = fneg float %i.jt
  %i.jv = fmul float %i.jn, %i.ju
  %i.jw = call float @llvm.fmuladd.f32(float %i.ji, float %i.jr, float %i.jv)
  store float %i.jw, ptr %.094.i, align 4, !tbaa !64
  %i.jx = load float, ptr %.09091.i, align 4, !tbaa !64
  %i.jy = load float, ptr %i.js, align 4, !tbaa !64
  %i.jz = fmul float %i.ji, %i.jy
  %i.ka = call float @llvm.fmuladd.f32(float %i.jn, float %i.jx, float %i.jz)
  store float %i.ka, ptr %i.jl, align 4, !tbaa !64
  %i.kb = getelementptr inbounds [4 x i8], ptr %.09091.i, i64 %i.ja ; 4 uses
  %i.kc = getelementptr inbounds i8, ptr %.08893.i, i64 -8 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !64 ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %.094.i, i64 -8 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !64 ; 2 uses
  %i.kg = fsub float %i.kd, %i.kf                 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.08893.i, i64 -12 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !64 ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %.094.i, i64 -12 ; 3 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !64
  %i.kl = fsub float %i.ki, %i.kk                 ; 2 uses
  %i.km = fadd float %i.kd, %i.kf
  store float %i.km, ptr %i.kc, align 4, !tbaa !64
  %i.kn = load float, ptr %i.kj, align 4, !tbaa !64
  %i.ko = fadd float %i.ki, %i.kn
  store float %i.ko, ptr %i.kh, align 4, !tbaa !64
  %i.kp = load float, ptr %i.kb, align 4, !tbaa !64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !64
  %i.ks = fneg float %i.kr
  %i.kt = fmul float %i.kl, %i.ks
  %i.ku = call float @llvm.fmuladd.f32(float %i.kg, float %i.kp, float %i.kt)
  store float %i.ku, ptr %i.ke, align 4, !tbaa !64
  %i.kv = load float, ptr %i.kb, align 4, !tbaa !64
  %i.kw = load float, ptr %i.kq, align 4, !tbaa !64
  %i.kx = fmul float %i.kg, %i.kw
  %i.ky = call float @llvm.fmuladd.f32(float %i.kl, float %i.kv, float %i.kx)
  store float %i.ky, ptr %i.kj, align 4, !tbaa !64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.ja ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %.08893.i, i64 -16 ; 2 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !64 ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %.094.i, i64 -16 ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !64 ; 2 uses
  %i.le = fsub float %i.lb, %i.ld                 ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %.08893.i, i64 -20 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !64 ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %.094.i, i64 -20 ; 3 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !64
  %i.lj = fsub float %i.lg, %i.li                 ; 2 uses
  %i.lk = fadd float %i.lb, %i.ld
  store float %i.lk, ptr %i.la, align 4, !tbaa !64
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !64
  %i.lm = fadd float %i.lg, %i.ll
  store float %i.lm, ptr %i.lf, align 4, !tbaa !64
  %i.ln = load float, ptr %i.kz, align 4, !tbaa !64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kz, i64 4 ; 2 uses
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !64
  %i.lq = fneg float %i.lp
  %i.lr = fmul float %i.lj, %i.lq
  %i.ls = call float @llvm.fmuladd.f32(float %i.le, float %i.ln, float %i.lr)
  store float %i.ls, ptr %i.lc, align 4, !tbaa !64
  %i.lt = load float, ptr %i.kz, align 4, !tbaa !64
  %i.lu = load float, ptr %i.lo, align 4, !tbaa !64
  %i.lv = fmul float %i.le, %i.lu
  %i.lw = call float @llvm.fmuladd.f32(float %i.lj, float %i.lt, float %i.lv)
  store float %i.lw, ptr %i.lh, align 4, !tbaa !64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.ja ; 4 uses
  %i.ly = getelementptr inbounds i8, ptr %.08893.i, i64 -24 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !64 ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %.094.i, i64 -24 ; 2 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !64 ; 2 uses
  %i.mc = fsub float %i.lz, %i.mb                 ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %.08893.i, i64 -28 ; 2 uses
  %i.me = load float, ptr %i.md, align 4, !tbaa !64 ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %.094.i, i64 -28 ; 3 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !64
  %i.mh = fsub float %i.me, %i.mg                 ; 2 uses
  %i.mi = fadd float %i.lz, %i.mb
  store float %i.mi, ptr %i.ly, align 4, !tbaa !64
  %i.mj = load float, ptr %i.mf, align 4, !tbaa !64
  %i.mk = fadd float %i.me, %i.mj
  store float %i.mk, ptr %i.md, align 4, !tbaa !64
  %i.ml = load float, ptr %i.lx, align 4, !tbaa !64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 4 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !64
  %i.mo = fneg float %i.mn
  %i.mp = fmul float %i.mh, %i.mo
  %i.mq = call float @llvm.fmuladd.f32(float %i.mc, float %i.ml, float %i.mp)
  store float %i.mq, ptr %i.ma, align 4, !tbaa !64
  %i.mr = load float, ptr %i.lx, align 4, !tbaa !64
  %i.ms = load float, ptr %i.mm, align 4, !tbaa !64
  %i.mt = fmul float %i.mc, %i.ms
  %i.mu = call float @llvm.fmuladd.f32(float %i.mh, float %i.mr, float %i.mt)
  store float %i.mu, ptr %i.mf, align 4, !tbaa !64
  %i.mv = getelementptr inbounds i8, ptr %.08893.i, i64 -32
  %i.mw = getelementptr inbounds i8, ptr %.094.i, i64 -32
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.ja
  %i.my = add nsw i32 %.08992.i, -1
  %i.mz = icmp samesign ugt i32 %.08992.i, 1
  br i1 %i.mz, label %bb.r, label %imdct_step3_inner_r_loop.exit.loopexit, !llvm.loop !15

imdct_step3_inner_r_loop.exit.loopexit:           ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit422, label %.lr.ph.i, !llvm.loop !249

.loopexit:                                        ; preds = %imdct_step3_inner_s_loop.exit.loopexit, %.lr.ph458, %.lr.ph460
  %exitcond498.not = icmp eq i32 %i.nc, %i.il
  br i1 %exitcond498.not, label %._crit_edge461, label %.lr.ph460, !llvm.loop !250

.lr.ph460:                                        ; preds = %.lr.ph460.preheader, %.loopexit
  %.1459 = phi i32 [ %i.nc, %.loopexit ], [ %.0.lcssa, %.lr.ph460.preheader ] ; 8 uses
  %i.na = add nuw nsw i32 %.1459, 6
  %i.nb = ashr i32 %1, %i.na                      ; 2 uses
  %i.nc = add nuw nsw i32 %.1459, 1               ; 2 uses
  %i.nd = shl nuw i32 2, %.1459                   ; 2 uses
  %i.ne = icmp sgt i32 %i.nb, 0
  br i1 %i.ne, label %.lr.ph458, label %.loopexit

.lr.ph458:                                        ; preds = %.lr.ph460
  %i.nf = add nuw nsw i32 %.1459, 2
  %i.ng = ashr i32 %1, %i.nf                      ; 2 uses
  %i.nh = ashr i32 %i.ng, 1
  %i.ni = shl nuw i32 8, %.1459
  %i.nj = sext i32 %i.ni to i64
  %i.nk = shl i32 16, %.1459
  %i.nl = sext i32 %i.nk to i64
  %i.nm = shl i32 24, %.1459
  %i.nn = sext i32 %i.nm to i64
  %i.no = icmp sgt i32 %i.nd, 0
  %i.np = sub nsw i32 0, %i.nh
  %i.nq = sext i32 %i.np to i64
  %i.nr = sext i32 %i.ng to i64
  %i.ns = sub nsw i64 0, %i.nr                    ; 2 uses
  %i.nt = shl i32 32, %.1459
  %i.nu = sext i32 %i.nt to i64
  br i1 %i.no, label %.lr.ph.i421, label %.loopexit

.lr.ph.i421:                                      ; preds = %.lr.ph458, %imdct_step3_inner_s_loop.exit.loopexit
  %indvars.iv495 = phi i64 [ %indvars.iv.next496, %imdct_step3_inner_s_loop.exit.loopexit ], [ %4, %.lr.ph458 ] ; 2 uses
  %.0393456 = phi ptr [ %i.ru, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.x, %.lr.ph458 ] ; 6 uses
  %.0395454 = phi i32 [ %i.rv, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.nb, %.lr.ph458 ] ; 2 uses
  %i.nv = load float, ptr %.0393456, align 4, !tbaa !64
  %i.nw = getelementptr inbounds nuw i8, ptr %.0393456, i64 4
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !64 ; 2 uses
  %i.ny = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.nj ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !64
  %i.oa = getelementptr i8, ptr %i.ny, i64 4
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !64 ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.nl ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !64
  %i.oe = getelementptr i8, ptr %i.oc, i64 4
  %i.of = load float, ptr %i.oe, align 4, !tbaa !64 ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.nn ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !64
  %i.oi = getelementptr i8, ptr %i.og, i64 4
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !64 ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv495 ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.nq
  %i.om = fneg float %i.nx
  %i.on = fneg float %i.ob
  %i.oo = fneg float %i.of
  %i.op = fneg float %i.oj
  %i.oq = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = insertelement <2 x float> poison, float %i.op, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %i.oj, i64 1
  %i.ou = insertelement <2 x float> poison, float %i.od, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %i.of, i64 1
  %i.oy = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pa = insertelement <2 x float> poison, float %i.on, i64 0
  %i.pb = insertelement <2 x float> %i.pa, float %i.ob, i64 1
  %i.pc = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pe = insertelement <2 x float> poison, float %i.om, i64 0
  %i.pf = insertelement <2 x float> %i.pe, float %i.nx, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i421
  %.0108.i = phi ptr [ %i.ol, %.lr.ph.i421 ], [ %i.rr, %bb.s ] ; 9 uses
  %.0104107.i = phi ptr [ %i.ok, %.lr.ph.i421 ], [ %i.rq, %bb.s ] ; 9 uses
  %.0105106.i = phi i32 [ %i.nd, %.lr.ph.i421 ], [ %i.rs, %bb.s ] ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %.0104107.i, i64 -4 ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %.0108.i, i64 -4 ; 3 uses
  %i.pi = load <2 x float>, ptr %i.pg, align 4, !tbaa !64 ; 3 uses
  %i.pj = load float, ptr %.0108.i, align 4, !tbaa !64
  %i.pk = load <2 x float>, ptr %i.ph, align 4, !tbaa !64
  %i.pl = fsub <2 x float> %i.pi, %i.pk           ; 2 uses
  %i.pm = extractelement <2 x float> %i.pi, i64 1
  %i.pn = fadd float %i.pm, %i.pj
  store float %i.pn, ptr %.0104107.i, align 4, !tbaa !64
  %i.po = load float, ptr %i.ph, align 4, !tbaa !64
  %i.pp = extractelement <2 x float> %i.pi, i64 0
  %i.pq = fadd float %i.pp, %i.po
  store float %i.pq, ptr %i.pg, align 4, !tbaa !64
  %i.pr = fmul <2 x float> %i.pf, %i.pl
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.pd, <2 x float> %i.ps)
  store <2 x float> %i.pt, ptr %i.ph, align 4, !tbaa !64
  %i.pu = getelementptr inbounds i8, ptr %.0104107.i, i64 -8
  %i.pv = getelementptr inbounds i8, ptr %.0108.i, i64 -8
  %i.pw = getelementptr inbounds i8, ptr %.0104107.i, i64 -12 ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %.0108.i, i64 -12 ; 3 uses
  %i.py = load <2 x float>, ptr %i.pw, align 4, !tbaa !64 ; 3 uses
  %i.pz = load float, ptr %i.pv, align 4, !tbaa !64
  %i.qa = load <2 x float>, ptr %i.px, align 4, !tbaa !64
  %i.qb = fsub <2 x float> %i.py, %i.qa           ; 2 uses
  %i.qc = extractelement <2 x float> %i.py, i64 1
  %i.qd = fadd float %i.qc, %i.pz
  store float %i.qd, ptr %i.pu, align 4, !tbaa !64
  %i.qe = load float, ptr %i.px, align 4, !tbaa !64
  %i.qf = extractelement <2 x float> %i.py, i64 0
  %i.qg = fadd float %i.qf, %i.qe
  store float %i.qg, ptr %i.pw, align 4, !tbaa !64
  %i.qh = fmul <2 x float> %i.pb, %i.qb
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qb, <2 x float> %i.oz, <2 x float> %i.qi)
  store <2 x float> %i.qj, ptr %i.px, align 4, !tbaa !64
  %i.qk = getelementptr inbounds i8, ptr %.0104107.i, i64 -16
  %i.ql = getelementptr inbounds i8, ptr %.0108.i, i64 -16
  %i.qm = getelementptr inbounds i8, ptr %.0104107.i, i64 -20 ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %.0108.i, i64 -20 ; 3 uses
  %i.qo = load <2 x float>, ptr %i.qm, align 4, !tbaa !64 ; 3 uses
  %i.qp = load float, ptr %i.ql, align 4, !tbaa !64
  %i.qq = load <2 x float>, ptr %i.qn, align 4, !tbaa !64
  %i.qr = fsub <2 x float> %i.qo, %i.qq           ; 2 uses
  %i.qs = extractelement <2 x float> %i.qo, i64 1
  %i.qt = fadd float %i.qs, %i.qp
  store float %i.qt, ptr %i.qk, align 4, !tbaa !64
  %i.qu = load float, ptr %i.qn, align 4, !tbaa !64
  %i.qv = extractelement <2 x float> %i.qo, i64 0
  %i.qw = fadd float %i.qv, %i.qu
  store float %i.qw, ptr %i.qm, align 4, !tbaa !64
  %i.qx = fmul <2 x float> %i.ox, %i.qr
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qr, <2 x float> %i.ov, <2 x float> %i.qy)
  store <2 x float> %i.qz, ptr %i.qn, align 4, !tbaa !64
  %i.ra = getelementptr inbounds i8, ptr %.0104107.i, i64 -24
  %i.rb = getelementptr inbounds i8, ptr %.0108.i, i64 -24
  %i.rc = getelementptr inbounds i8, ptr %.0104107.i, i64 -28 ; 2 uses
  %i.rd = getelementptr inbounds i8, ptr %.0108.i, i64 -28 ; 3 uses
  %i.re = load <2 x float>, ptr %i.rc, align 4, !tbaa !64 ; 3 uses
  %i.rf = load float, ptr %i.rb, align 4, !tbaa !64
  %i.rg = load <2 x float>, ptr %i.rd, align 4, !tbaa !64
  %i.rh = fsub <2 x float> %i.re, %i.rg           ; 2 uses
  %i.ri = extractelement <2 x float> %i.re, i64 1
  %i.rj = fadd float %i.ri, %i.rf
  store float %i.rj, ptr %i.ra, align 4, !tbaa !64
  %i.rk = load float, ptr %i.rd, align 4, !tbaa !64
  %i.rl = extractelement <2 x float> %i.re, i64 0
  %i.rm = fadd float %i.rl, %i.rk
  store float %i.rm, ptr %i.rc, align 4, !tbaa !64
  %i.rn = fmul <2 x float> %i.ot, %i.rh
  %i.ro = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rh, <2 x float> %i.or, <2 x float> %i.ro)
  store <2 x float> %i.rp, ptr %i.rd, align 4, !tbaa !64
  %i.rq = getelementptr inbounds [4 x i8], ptr %.0104107.i, i64 %i.ns
  %i.rr = getelementptr inbounds [4 x i8], ptr %.0108.i, i64 %i.ns
  %i.rs = add nsw i32 %.0105106.i, -1
  %i.rt = icmp samesign ugt i32 %.0105106.i, 1
  br i1 %i.rt, label %bb.s, label %imdct_step3_inner_s_loop.exit.loopexit, !llvm.loop !16

imdct_step3_inner_s_loop.exit.loopexit:           ; preds = %bb.s
  %i.ru = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.nu
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -8
  %i.rv = add nsw i32 %.0395454, -1
  %i.rw = icmp sgt i32 %.0395454, 1
  br i1 %i.rw, label %.lr.ph.i421, label %.loopexit, !llvm.loop !251

._crit_edge461:                                   ; preds = %.loopexit, %.preheader
  call void @imdct_step3_inner_s_loop_ld654(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.hy, ptr noundef nonnull %i.x, i32 noundef %1)
  %i.rx = add nsw i32 %i.a, -4
  %i.ry = sext i32 %i.rx to i64                   ; 2 uses
  %.0391462 = getelementptr i8, ptr %i.dv, i64 -16 ; 2 uses
  %.not412463 = icmp ult ptr %.0391462, %i.t
  br i1 %.not412463, label %._crit_edge470, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %._crit_edge461
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 1480
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.v
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !67
  br label %.lr.ph469

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.0391467 = phi ptr [ %.0391, %.lr.ph469 ], [ %.0391462, %.lr.ph469.preheader ] ; 3 uses
  %.0390466 = phi ptr [ %i.te, %.lr.ph469 ], [ %i.rz, %.lr.ph469.preheader ] ; 5 uses
  %.pn417465 = phi ptr [ %.0391467, %.lr.ph469 ], [ %i.dv, %.lr.ph469.preheader ] ; 3 uses
  %.0392464 = phi ptr [ %i.tf, %.lr.ph469 ], [ %i.sc, %.lr.ph469.preheader ] ; 3 uses
  %i.sd = load i16, ptr %.0392464, align 2, !tbaa !59
  %i.se = zext i16 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.se ; 4 uses
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !64
  %i.sh = getelementptr inbounds nuw i8, ptr %.0390466, i64 12
  store float %i.sg, ptr %i.sh, align 4, !tbaa !64
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sj = load float, ptr %i.si, align 4, !tbaa !64
  %i.sk = getelementptr inbounds nuw i8, ptr %.0390466, i64 8
  store float %i.sj, ptr %i.sk, align 4, !tbaa !64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !64
  %i.sn = getelementptr i8, ptr %.pn417465, i64 -4
  store float %i.sm, ptr %i.sn, align 4, !tbaa !64
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  %i.sp = load float, ptr %i.so, align 4, !tbaa !64
  %i.sq = getelementptr i8, ptr %.pn417465, i64 -8
  store float %i.sp, ptr %i.sq, align 4, !tbaa !64
  %i.sr = getelementptr inbounds nuw i8, ptr %.0392464, i64 2
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !59
  %i.st = zext i16 %i.ss to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.st ; 4 uses
  %i.sv = load float, ptr %i.su, align 4, !tbaa !64
  %i.sw = getelementptr inbounds nuw i8, ptr %.0390466, i64 4
  store float %i.sv, ptr %i.sw, align 4, !tbaa !64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !64
  store float %i.sy, ptr %.0390466, align 4, !tbaa !64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !64
  %i.tb = getelementptr i8, ptr %.pn417465, i64 -12
  store float %i.ta, ptr %i.tb, align 4, !tbaa !64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 12
  %i.td = load float, ptr %i.tc, align 4, !tbaa !64
  store float %i.td, ptr %.0391467, align 4, !tbaa !64
  %i.te = getelementptr inbounds i8, ptr %.0390466, i64 -16
  %i.tf = getelementptr inbounds nuw i8, ptr %.0392464, i64 4
  %.0391 = getelementptr i8, ptr %.0391467, i64 -16 ; 2 uses
  %.not412 = icmp ult ptr %.0391, %i.t
  br i1 %.not412, label %._crit_edge470, label %.lr.ph469, !llvm.loop !252

._crit_edge470:                                   ; preds = %.lr.ph469, %._crit_edge461
  %.0385471 = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.tg = icmp ult ptr %i.t, %.0385471
  br i1 %i.tg, label %.lr.ph477.preheader, label %._crit_edge478

.lr.ph477.preheader:                              ; preds = %._crit_edge470
  %i.th = getelementptr inbounds nuw i8, ptr %2, i64 1448
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.th, i64 %i.v
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !65
  br label %.lr.ph477

.lr.ph477:                                        ; preds = %.lr.ph477.preheader, %.lr.ph477
  %.0385475 = phi ptr [ %.0385, %.lr.ph477 ], [ %.0385471, %.lr.ph477.preheader ] ; 4 uses
  %.pn416474 = phi ptr [ %.0385475, %.lr.ph477 ], [ %i.z, %.lr.ph477.preheader ] ; 2 uses
  %.0386473 = phi ptr [ %i.uw, %.lr.ph477 ], [ %i.t, %.lr.ph477.preheader ] ; 4 uses
  %.0387472 = phi ptr [ %i.uv, %.lr.ph477 ], [ %i.tj, %.lr.ph477.preheader ] ; 3 uses
  %i.tk = getelementptr inbounds i8, ptr %.pn416474, i64 -8 ; 2 uses
  %i.tl = load <2 x float>, ptr %.0386473, align 4, !tbaa !64 ; 2 uses
  %i.tm = load <2 x float>, ptr %i.tk, align 4, !tbaa !64 ; 2 uses
  %i.tn = fsub <2 x float> %i.tl, %i.tm           ; 2 uses
  %i.to = fadd <2 x float> %i.tl, %i.tm           ; 3 uses
  %i.tp = shufflevector <2 x float> %i.tn, <2 x float> %i.to, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.tq = load <2 x float>, ptr %.0387472, align 4, !tbaa !64 ; 2 uses
  %i.tr = fneg <2 x float> %i.tp
  %i.ts = shufflevector <2 x float> %i.to, <2 x float> %i.tr, <2 x i32> <i32 1, i32 2>
  %i.tt = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tu = fmul <2 x float> %i.ts, %i.tt
  %i.tv = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tv, <2 x float> %i.tp, <2 x float> %i.tu) ; 3 uses
  %i.tx = shufflevector <2 x float> %i.to, <2 x float> %i.tn, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ty = fadd <2 x float> %i.tx, %i.tw
  store <2 x float> %i.ty, ptr %.0386473, align 4, !tbaa !64
  %i.tz = shufflevector <2 x float> %i.tx, <2 x float> %i.tw, <2 x i32> <i32 0, i32 3>
  %i.ua = shufflevector <2 x float> %i.tw, <2 x float> %i.tx, <2 x i32> <i32 0, i32 3>
  %i.ub = fsub <2 x float> %i.tz, %i.ua
  store <2 x float> %i.ub, ptr %i.tk, align 4, !tbaa !64
  %i.uc = getelementptr inbounds nuw i8, ptr %.0386473, i64 8 ; 2 uses
  %i.ud = getelementptr inbounds i8, ptr %.pn416474, i64 -12
  %i.ue = getelementptr inbounds nuw i8, ptr %.0387472, i64 8
  %i.uf = load <2 x float>, ptr %i.uc, align 4, !tbaa !64 ; 2 uses
  %i.ug = load <2 x float>, ptr %.0385475, align 4, !tbaa !64 ; 2 uses
  %i.uh = fsub <2 x float> %i.uf, %i.ug           ; 2 uses
  %i.ui = fadd <2 x float> %i.uf, %i.ug           ; 3 uses
  %i.uj = shufflevector <2 x float> %i.uh, <2 x float> %i.ui, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.uk = load <2 x float>, ptr %i.ue, align 4, !tbaa !64 ; 2 uses
  %i.ul = fneg <2 x float> %i.uj
  %i.um = shufflevector <2 x float> %i.ui, <2 x float> %i.ul, <2 x i32> <i32 1, i32 2>
  %i.un = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = fmul <2 x float> %i.um, %i.un
  %i.up = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.up, <2 x float> %i.uj, <2 x float> %i.uo) ; 3 uses
  %i.ur = shufflevector <2 x float> %i.ui, <2 x float> %i.uh, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.us = fadd <2 x float> %i.ur, %i.uq
  store <2 x float> %i.us, ptr %i.uc, align 4, !tbaa !64
  %foldExtExtBinop = fsub <2 x float> %i.ur, %i.uq
  %i.ut = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.ut, ptr %.0385475, align 4, !tbaa !64
  %foldExtExtBinop535 = fsub <2 x float> %i.uq, %i.ur
  %i.uu = extractelement <2 x float> %foldExtExtBinop535, i64 1
  store float %i.uu, ptr %i.ud, align 4, !tbaa !64
  %i.uv = getelementptr inbounds nuw i8, ptr %.0387472, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %.0386473, i64 16 ; 2 uses
  %.0385 = getelementptr inbounds i8, ptr %.0385475, i64 -16 ; 2 uses
  %i.ux = icmp ult ptr %i.uw, %.0385
  br i1 %i.ux, label %.lr.ph477, label %._crit_edge478, !llvm.loop !253

._crit_edge478:                                   ; preds = %.lr.ph477, %._crit_edge470
  %.0379479 = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %.not413480 = icmp ult ptr %.0379479, %i.t
  br i1 %.not413480, label %._crit_edge490, label %.lr.ph489.preheader

.lr.ph489.preheader:                              ; preds = %._crit_edge478
  %i.uy = sext i32 %1 to i64
  %i.uz = getelementptr [4 x i8], ptr %0, i64 %i.uy
  %i.va = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ry
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 1432
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.vb, i64 %i.v
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !65
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.y
  br label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %.lr.ph489
  %.0379487 = phi ptr [ %.0379, %.lr.ph489 ], [ %.0379479, %.lr.ph489.preheader ] ; 3 uses
  %.pn414486 = phi ptr [ %.0379487, %.lr.ph489 ], [ %i.z, %.lr.ph489.preheader ] ; 7 uses
  %.pn485 = phi ptr [ %.0380, %.lr.ph489 ], [ %i.ve, %.lr.ph489.preheader ] ; 8 uses
  %.pn415484 = phi ptr [ %.0381, %.lr.ph489 ], [ %i.uz, %.lr.ph489.preheader ] ; 4 uses
  %.0382483 = phi ptr [ %i.yc, %.lr.ph489 ], [ %i.aa, %.lr.ph489.preheader ] ; 5 uses
  %.0383482 = phi ptr [ %i.yd, %.lr.ph489 ], [ %i.va, %.lr.ph489.preheader ] ; 5 uses
  %.0384481 = phi ptr [ %i.yb, %.lr.ph489 ], [ %0, %.lr.ph489.preheader ] ; 5 uses
  %.0381 = getelementptr i8, ptr %.pn415484, i64 -16 ; 2 uses
  %.0380 = getelementptr inbounds i8, ptr %.pn485, i64 -32 ; 2 uses
  %i.vf = getelementptr inbounds i8, ptr %.pn414486, i64 -8
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !64 ; 2 uses
  %i.vh = getelementptr inbounds i8, ptr %.pn485, i64 -4
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !64 ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %.pn414486, i64 -4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !64 ; 2 uses
  %i.vl = getelementptr inbounds i8, ptr %.pn485, i64 -8
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !64 ; 2 uses
  %i.vn = fneg float %i.vm
  %i.vo = fmul float %i.vk, %i.vn
  %i.vp = call float @llvm.fmuladd.f32(float %i.vg, float %i.vi, float %i.vo) ; 2 uses
  %i.vq = fneg float %i.vg
  %i.vr = fneg float %i.vi
  %i.vs = fmul float %i.vk, %i.vr
  %i.vt = call float @llvm.fmuladd.f32(float %i.vq, float %i.vm, float %i.vs) ; 2 uses
  store float %i.vp, ptr %.0384481, align 4, !tbaa !64
  %i.vu = fneg float %i.vp
  %i.vv = getelementptr inbounds nuw i8, ptr %.0383482, i64 12
  store float %i.vu, ptr %i.vv, align 4, !tbaa !64
  store float %i.vt, ptr %.0382483, align 4, !tbaa !64
  %i.vw = getelementptr i8, ptr %.pn415484, i64 -4
  store float %i.vt, ptr %i.vw, align 4, !tbaa !64
  %i.vx = getelementptr inbounds i8, ptr %.pn414486, i64 -16
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !64 ; 2 uses
  %i.vz = getelementptr inbounds i8, ptr %.pn485, i64 -12
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !64 ; 2 uses
  %i.wb = getelementptr inbounds i8, ptr %.pn414486, i64 -12
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !64 ; 2 uses
  %i.wd = getelementptr inbounds i8, ptr %.pn485, i64 -16
  %i.we = load float, ptr %i.wd, align 4, !tbaa !64 ; 2 uses
  %i.wf = fneg float %i.we
  %i.wg = fmul float %i.wc, %i.wf
  %i.wh = call float @llvm.fmuladd.f32(float %i.vy, float %i.wa, float %i.wg) ; 2 uses
  %i.wi = fneg float %i.vy
  %i.wj = fneg float %i.wa
  %i.wk = fmul float %i.wc, %i.wj
  %i.wl = call float @llvm.fmuladd.f32(float %i.wi, float %i.we, float %i.wk) ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.0384481, i64 4
  store float %i.wh, ptr %i.wm, align 4, !tbaa !64
  %i.wn = fneg float %i.wh
  %i.wo = getelementptr inbounds nuw i8, ptr %.0383482, i64 8
  store float %i.wn, ptr %i.wo, align 4, !tbaa !64
  %i.wp = getelementptr inbounds nuw i8, ptr %.0382483, i64 4
  store float %i.wl, ptr %i.wp, align 4, !tbaa !64
end_hunk_3
begin_hunk_4_@vorbis_decode_packet_rest:bb.a
  store i32 %i.bl, ptr %i.aa, align 4, !tbaa !88
  %i.bm = add nsw i32 %i.bi, 8                    ; 2 uses
  store i32 %i.bm, ptr %i.z, align 8, !tbaa !84
  %i.bn = icmp slt i32 %i.bi, -7
  br i1 %i.bn, label %bb.e, label %get_bits.exit, !llvm.loop !7

.critedge.i:                                      ; preds = %bb.e
  store i32 -1, ptr %i.z, align 8, !tbaa !84
  br label %get_bits.exit.thread

get_bits.exit:                                    ; preds = %bb.f, %.get_bits.exit_crit_edge
  %i.bo = phi i32 [ %.pre, %.get_bits.exit_crit_edge ], [ %i.bl, %bb.f ] ; 2 uses
  %i.bp = phi i32 [ %i.be, %.get_bits.exit_crit_edge ], [ %i.bm, %bb.f ]
  %i.bq = and i32 %i.bo, 1
  %i.br = lshr i32 %i.bo, 1
  store i32 %i.br, ptr %i.aa, align 4, !tbaa !88
  %i.bs = add nsw i32 %i.bp, -1
  store i32 %i.bs, ptr %i.z, align 8, !tbaa !84
  %.not396 = icmp eq i32 %i.bq, 0
  br i1 %.not396, label %get_bits.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_bits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 1588
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !115
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr @__const.vorbis_decode_packet_rest.range_list, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47 ; 25 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv603.a
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 29 uses
  %i.cb = icmp slt i32 %i.by, 0
  br i1 %i.cb, label %ilog.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = icmp samesign ult i32 %i.by, 16384
  br i1 %i.cc, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp samesign ult i32 %i.by, 16
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = zext nneg i32 %i.by to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !50
  %i.ch = sext i8 %i.cg to i32
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ci = icmp samesign ult i32 %i.by, 512
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = lshr i32 %i.by, 5
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !50
  %i.cn = sext i8 %i.cm to i32
  %i.co = add nsw i32 %i.cn, 5
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cp = lshr i32 %i.by, 10
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !50
  %i.ct = sext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, 10
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.cv = icmp samesign ult i32 %i.by, 16777216
  %i.cw = icmp samesign ult i32 %i.by, 524288
  %.734 = select i1 %i.cw, i32 15, i32 20
  %i.cx = icmp samesign ult i32 %i.by, 536870912
  %.735 = select i1 %i.cx, i32 25, i32 30
  %.sink728 = select i1 %i.cv, i32 %.734, i32 %.735 ; 2 uses
  %i.cy = lshr i32 %i.by, %.sink728
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !50
  %i.dc = sext i8 %i.db to i32
  %i.dd = add nsw i32 %.sink728, %i.dc
  %i.de = add nsw i32 %i.dd, -1
  %i.df = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.de)
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %i.ca, align 2, !tbaa !59
  %i.dh = icmp samesign ult i32 %i.by, 16777216
  br i1 %i.dh, label %bb.t, label %bb.w

ilog.exit:                                        ; preds = %bb.g
  %i.di = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef -1)
  %i.dj = trunc i32 %i.di to i16
  store i16 %i.dj, ptr %i.ca, align 2, !tbaa !59
  br label %ilog.exit411

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.ph = phi i32 [ %i.cu, %bb.m ], [ %i.co, %bb.l ], [ %i.ch, %bb.j ]
  %i.dk = add nsw i32 %.0.i.ph, -1
  %i.dl = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.dk)
  %i.dm = trunc i32 %i.dl to i16
  store i16 %i.dm, ptr %i.ca, align 2, !tbaa !59
  %i.dn = icmp samesign ult i32 %i.by, 16
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.do = zext nneg i32 %i.by to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !50
  %i.dr = sext i8 %i.dq to i32
  br label %ilog.exit411

bb.q:                                             ; preds = %bb.o
  %i.ds = icmp samesign ult i32 %i.by, 512
  br i1 %i.ds, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dt = lshr i32 %i.by, 5
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !50
  %i.dx = sext i8 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, 5
  br label %ilog.exit411

bb.s:                                             ; preds = %bb.q
  %i.dz = lshr i32 %i.by, 10
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !50
  %i.ed = sext i8 %i.ec to i32
  %i.ee = add nsw i32 %i.ed, 10
  br label %ilog.exit411

bb.t:                                             ; preds = %bb.n
  %i.ef = icmp samesign ult i32 %i.by, 524288
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eg = lshr i32 %i.by, 15
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !50
  %i.ek = sext i8 %i.ej to i32
  %i.el = add nsw i32 %i.ek, 15
  br label %ilog.exit411

bb.v:                                             ; preds = %bb.t
  %i.em = lshr i32 %i.by, 20
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !50
  %i.eq = sext i8 %i.ep to i32
  %i.er = add nsw i32 %i.eq, 20
  br label %ilog.exit411

bb.w:                                             ; preds = %bb.n
  %i.es = icmp samesign ult i32 %i.by, 536870912
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.et = lshr i32 %i.by, 25
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !50
  %i.ex = sext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, 25
  br label %ilog.exit411

bb.y:                                             ; preds = %bb.w
  %i.ez = lshr i32 %i.by, 30
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !50
  %i.fd = sext i8 %i.fc to i32
  %i.fe = add nsw i32 %i.fd, 30
  br label %ilog.exit411

ilog.exit411:                                     ; preds = %ilog.exit, %bb.p, %bb.r, %bb.s, %bb.u, %bb.v, %bb.x, %bb.y
  %.0.i410 = phi i32 [ %i.fe, %bb.y ], [ %i.dr, %bb.p ], [ %i.dy, %bb.r ], [ %i.ee, %bb.s ], [ %i.el, %bb.u ], [ %i.er, %bb.v ], [ %i.ey, %bb.x ], [ 0, %ilog.exit ]
  %i.ff = add nsw i32 %.0.i410, -1
  %i.fg = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.ff)
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !59
  %i.fj = load i8, ptr %i.bd, align 4, !tbaa !124
  %.not581 = icmp eq i8 %i.fj, 0
  br i1 %.not581, label %._crit_edge546, label %.lr.ph545

.lr.ph545:                                        ; preds = %ilog.exit411
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bd, i64 33
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bd, i64 49
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bd, i64 65
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bd, i64 82
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph545, %._crit_edge
  %indvars.iv591.a = phi i64 [ 0, %.lr.ph545 ], [ %indvars.iv.next592.a, %._crit_edge ] ; 2 uses
  %.0342544 = phi i32 [ 2, %.lr.ph545 ], [ %.1343.lcssa, %._crit_edge ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv591.a
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !50
  %i.fr = zext i8 %i.fq to i64                    ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !50  ; 2 uses
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fr
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !50  ; 2 uses
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  %notmask = shl nsw i32 -1, %i.fx
  %i.fy = xor i32 %notmask, -1
  %.not401 = icmp eq i8 %i.fw, 0
  br i1 %.not401, label %bb.ay, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fz = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fr
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !50
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [2120 x i8], ptr %i.fz, i64 %i.gc ; 5 uses
  %i.ge = load i32, ptr %i.z, align 8, !tbaa !84  ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 10
  br i1 %i.gf, label %bb.ab, label %prep_huffman.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gg = icmp eq i32 %i.ge, 0
  br i1 %i.gg, label %bb.ac, label %.preheader804

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.aa, align 4, !tbaa !88
  br label %.preheader804

.preheader804:                                    ; preds = %bb.ac, %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader804, %get8_packet_raw.exit.thread494
  %i.gh = load i32, ptr %i.ae, align 4, !tbaa !83
  %.not.i412 = icmp eq i32 %i.gh, 0
  %.pr = load i8, ptr %i.ad, align 4, !tbaa !86   ; 3 uses
  %.not.i418 = icmp eq i8 %.pr, 0                 ; 2 uses
  br i1 %.not.i412, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not.i418, label %prep_huffman.exit, label %.thread

bb.af:                                            ; preds = %bb.ad
  br i1 %.not.i418, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.gi = load i32, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.gj = icmp eq i32 %i.gi, -1
  br i1 %i.gj, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gk = load i32, ptr %i.ag, align 8, !tbaa !79
  %i.gl = add nsw i32 %i.gk, -1
  store i32 %i.gl, ptr %i.ah, align 8, !tbaa !87
  %i.gm = tail call i32 @capture_pattern(ptr noundef nonnull %0)
  %.not.i.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i.i, label %start_page.exit.thread.i.i, label %start_page.exit.i.i

start_page.exit.thread.i.i:                       ; preds = %bb.ah
  store i32 30, ptr %i.ap, align 4, !tbaa !39
  br label %.loopexit527

start_page.exit.i.i:                              ; preds = %bb.ah
  %i.gn = tail call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i = icmp eq i32 %i.gn, 0
  br i1 %.not20.i.i, label %.loopexit527, label %bb.ai

.loopexit527:                                     ; preds = %start_page.exit.i.i, %start_page.exit.thread.i.i
  store i32 1, ptr %i.ae, align 4, !tbaa !83
  br label %prep_huffman.exit

bb.ai:                                            ; preds = %start_page.exit.i.i
  %i.go = load i8, ptr %i.ai, align 1, !tbaa !78
  %i.gp = and i8 %i.go, 1
  %.not21.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not21.i.i, label %bb.aj, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ai
  %.pre.i.i = load i32, ptr %i.af, align 8, !tbaa !82
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 32, ptr %i.ap, align 4, !tbaa !39
  br label %prep_huffman.exit

bb.ak:                                            ; preds = %._crit_edge.i.i, %bb.ag
  %i.gq = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.gi, %bb.ag ] ; 3 uses
  %i.gr = add nsw i32 %i.gq, 1                    ; 2 uses
  store i32 %i.gr, ptr %i.af, align 8, !tbaa !82
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr inbounds i8, ptr %i.aj, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !50  ; 4 uses
  %.not22.i.i = icmp eq i8 %i.gu, -1
  br i1 %.not22.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %i.ae, align 4, !tbaa !83
  store i32 %i.gq, ptr %i.ah, align 8, !tbaa !87
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gv = load i32, ptr %i.ag, align 8, !tbaa !79
  %.not23.i.i = icmp slt i32 %i.gr, %i.gv
  br i1 %.not23.i.i, label %next_segment.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 -1, ptr %i.af, align 8, !tbaa !82
  br label %next_segment.exit.i

next_segment.exit.i:                              ; preds = %bb.an, %bb.am
  store i8 %i.gu, ptr %i.ad, align 4, !tbaa !86
  %.not7.i = icmp eq i8 %i.gu, 0
  br i1 %.not7.i, label %prep_huffman.exit, label %.thread

.thread:                                          ; preds = %bb.ae, %next_segment.exit.i, %bb.af
  %i.gw = phi i8 [ %i.gu, %next_segment.exit.i ], [ %.pr, %bb.af ], [ %.pr, %bb.ae ]
  %i.gx = add i8 %i.gw, -1
  store i8 %i.gx, ptr %i.ad, align 4, !tbaa !86
  %i.gy = load i32, ptr %i.ak, align 4, !tbaa !85
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.ak, align 4, !tbaa !85
  %i.ha = load ptr, ptr %i.al, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i = icmp eq ptr %i.ha, null
  br i1 %.not.i8.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.hb = load ptr, ptr %i.am, align 8, !tbaa !71
  %.not11.i.i = icmp ult ptr %i.ha, %i.hb
  br i1 %.not11.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 1, ptr %i.an, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread494

bb.aq:                                            ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  store ptr %i.hc, ptr %i.al, align 8, !tbaa !70
  %i.hd = load i8, ptr %i.ha, align 1, !tbaa !50
  br label %get8_packet_raw.exit

bb.ar:                                            ; preds = %.thread
  %i.he = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.hf = tail call i32 @fgetc(ptr noundef %i.he) ; 2 uses
  %i.hg = icmp eq i32 %i.hf, -1
  br i1 %i.hg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %i.an, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread494

bb.at:                                            ; preds = %bb.ar
  %i.hh = trunc i32 %i.hf to i8
  br label %get8_packet_raw.exit

get8_packet_raw.exit:                             ; preds = %bb.aq, %bb.at
  %.1.i.i = phi i8 [ %i.hh, %bb.at ], [ %i.hd, %bb.aq ]
  %i.hi = zext i8 %.1.i.i to i32
  br label %get8_packet_raw.exit.thread494

get8_packet_raw.exit.thread494:                   ; preds = %get8_packet_raw.exit, %bb.as, %bb.ap
  %i.hj = phi i32 [ %i.hi, %get8_packet_raw.exit ], [ 0, %bb.ap ], [ 0, %bb.as ]
  %i.hk = load i32, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.hl = shl i32 %i.hj, %i.hk
  %i.hm = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.hn = add i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.aa, align 4, !tbaa !88
  %i.ho = add nsw i32 %i.hk, 8
  store i32 %i.ho, ptr %i.z, align 8, !tbaa !84
  %i.hp = icmp slt i32 %i.hk, 17
  br i1 %i.hp, label %bb.ad, label %prep_huffman.exit, !llvm.loop !8

prep_huffman.exit:                                ; preds = %next_segment.exit.i, %get8_packet_raw.exit.thread494, %bb.ae, %.loopexit527, %bb.aj, %bb.aa
  %i.hq = load i32, ptr %i.aa, align 4, !tbaa !88 ; 2 uses
  %i.hr = and i32 %i.hq, 1023
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !59 ; 3 uses
  %i.hw = icmp sgt i16 %i.hv, -1
  br i1 %i.hw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %prep_huffman.exit
  %i.hx = zext nneg i16 %i.hv to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !57
  %i.ia = zext nneg i16 %i.hv to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !50
  %i.id = zext i8 %i.ic to i32                    ; 2 uses
  %i.ie = lshr i32 %i.hq, %i.id
  store i32 %i.ie, ptr %i.aa, align 4, !tbaa !88
  %i.if = load i32, ptr %i.z, align 8, !tbaa !84
  %i.ig = sub nsw i32 %i.if, %i.id                ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ig, i32 0)
  %.inv = icmp sgt i32 %i.ig, -1
  %spec.select407 = select i1 %.inv, i32 %i.hx, i32 -1
  store i32 %spec.select, ptr %i.z, align 8, !tbaa !84
  br label %bb.aw

bb.av:                                            ; preds = %prep_huffman.exit
  %i.ih = tail call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.gd)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1340 = phi i32 [ %spec.select407, %bb.au ], [ %i.ih, %bb.av ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gd, i64 27
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !55
  %.not403 = icmp eq i8 %i.ij, 0
  br i1 %.not403, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gd, i64 2104
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !63
  %i.im = sext i32 %.1340 to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !47
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.z
  %.3 = phi i32 [ 0, %bb.z ], [ %i.io, %bb.ax ], [ %.1340, %bb.aw ]
  %.not582 = icmp eq i8 %i.ft, 0
  br i1 %.not582, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ay
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.fr
  %8 = sext i32 %.0342544 to i64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %bb.en
  %indvars.iv = phi i64 [ %8, %.lr.ph ], [ %indvars.iv.next, %bb.en ] ; 2 uses
  %.4542 = phi i32 [ %.3, %.lr.ph ], [ %i.iu, %bb.en ] ; 2 uses
  %.0348540 = phi i32 [ 0, %.lr.ph ], [ %i.ro, %bb.en ]
  %i.iq = and i32 %.4542, %i.fy
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !59 ; 2 uses
  %i.iu = ashr i32 %.4542, %i.fx
  %i.iv = icmp sgt i16 %i.it, -1
  br i1 %i.iv, label %bb.ba, label %bb.en

bb.ba:                                            ; preds = %bb.az
  %i.iw = zext nneg i16 %i.it to i64
  %i.ix = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.iy = getelementptr inbounds nuw [2120 x i8], ptr %i.ix, i64 %i.iw ; 13 uses
  %i.iz = load i32, ptr %i.z, align 8, !tbaa !84  ; 2 uses
  %i.ja = icmp slt i32 %i.iz, 10
  br i1 %i.ja, label %bb.bb, label %prep_huffman.exit415

bb.bb:                                            ; preds = %bb.ba
  %i.jb = icmp eq i32 %i.iz, 0
  br i1 %i.jb, label %bb.bc, label %.preheader803

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.aa, align 4, !tbaa !88
  br label %.preheader803

.preheader803:                                    ; preds = %bb.bc, %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %.preheader803, %get8_packet_raw.exit438.thread504
  %i.jc = load i32, ptr %i.ae, align 4, !tbaa !83
  %.not.i413 = icmp eq i32 %i.jc, 0
  %.pr497 = load i8, ptr %i.ad, align 4, !tbaa !86 ; 3 uses
  %.not.i420 = icmp eq i8 %.pr497, 0              ; 2 uses
  br i1 %.not.i413, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i420, label %prep_huffman.exit415, label %.thread498

bb.bf:                                            ; preds = %bb.bd
  br i1 %.not.i420, label %bb.bg, label %.thread498

bb.bg:                                            ; preds = %bb.bf
  %i.jd = load i32, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.je = icmp eq i32 %i.jd, -1
  br i1 %i.je, label %bb.bh, label %bb.cd

bb.bh:                                            ; preds = %bb.bg
  %i.jf = load i32, ptr %i.ag, align 8, !tbaa !79
  %i.jg = add nsw i32 %i.jf, -1
  store i32 %i.jg, ptr %i.ah, align 8, !tbaa !87
  %i.jh = load ptr, ptr %i.al, align 8, !tbaa !70 ; 4 uses
  %.not.i.i458 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i458, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ji = load ptr, ptr %i.am, align 8, !tbaa !71
  %.not11.i.i459 = icmp ult ptr %i.jh, %i.ji
  br i1 %.not11.i.i459, label %bb.bj, label %start_page.exit.thread.i.i437.sink.split

bb.bj:                                            ; preds = %bb.bi
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.jj, ptr %i.al, align 8, !tbaa !70
  %i.jk = load i8, ptr %i.jh, align 1, !tbaa !50
  br label %get8.exit.i461

bb.bk:                                            ; preds = %bb.bh
  %i.jl = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.jm = tail call i32 @fgetc(ptr noundef %i.jl) ; 2 uses
  %i.jn = icmp eq i32 %i.jm, -1
  br i1 %i.jn, label %start_page.exit.thread.i.i437.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jo = trunc i32 %i.jm to i8
  br label %get8.exit.i461

get8.exit.i461:                                   ; preds = %bb.bl, %bb.bj
  %.1.i.i462 = phi i8 [ %i.jo, %bb.bl ], [ %i.jk, %bb.bj ]
  %.not.i463 = icmp eq i8 %.1.i.i462, 79
  br i1 %.not.i463, label %bb.bm, label %start_page.exit.thread.i.i437

bb.bm:                                            ; preds = %get8.exit.i461
  %i.jp = load ptr, ptr %i.al, align 8, !tbaa !70 ; 4 uses
  %.not.i7.i = icmp eq ptr %i.jp, null
  br i1 %.not.i7.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jq = load ptr, ptr %i.am, align 8, !tbaa !71
  %.not11.i8.i = icmp ult ptr %i.jp, %i.jq
  br i1 %.not11.i8.i, label %bb.bo, label %start_page.exit.thread.i.i437.sink.split

bb.bo:                                            ; preds = %bb.bn
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  store ptr %i.jr, ptr %i.al, align 8, !tbaa !70
  %i.js = load i8, ptr %i.jp, align 1, !tbaa !50
  br label %get8.exit10.i

bb.bp:                                            ; preds = %bb.bm
  %i.jt = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.ju = tail call i32 @fgetc(ptr noundef %i.jt) ; 2 uses
  %i.jv = icmp eq i32 %i.ju, -1
  br i1 %i.jv, label %start_page.exit.thread.i.i437.sink.split, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jw = trunc i32 %i.ju to i8
  br label %get8.exit10.i

get8.exit10.i:                                    ; preds = %bb.bq, %bb.bo
  %.1.i9.i = phi i8 [ %i.jw, %bb.bq ], [ %i.js, %bb.bo ]
  %.not4.i = icmp eq i8 %.1.i9.i, 103
  br i1 %.not4.i, label %bb.br, label %start_page.exit.thread.i.i437

bb.br:                                            ; preds = %get8.exit10.i
  %i.jx = load ptr, ptr %i.al, align 8, !tbaa !70 ; 4 uses
  %.not.i11.i = icmp eq ptr %i.jx, null
  br i1 %.not.i11.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jy = load ptr, ptr %i.am, align 8, !tbaa !71
  %.not11.i12.i = icmp ult ptr %i.jx, %i.jy
  br i1 %.not11.i12.i, label %bb.bt, label %start_page.exit.thread.i.i437.sink.split

bb.bt:                                            ; preds = %bb.bs
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  store ptr %i.jz, ptr %i.al, align 8, !tbaa !70
  %i.ka = load i8, ptr %i.jx, align 1, !tbaa !50
  br label %get8.exit14.i

bb.bu:                                            ; preds = %bb.br
  %i.kb = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.kc = tail call i32 @fgetc(ptr noundef %i.kb) ; 2 uses
  %i.kd = icmp eq i32 %i.kc, -1
  br i1 %i.kd, label %start_page.exit.thread.i.i437.sink.split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ke = trunc i32 %i.kc to i8
  br label %get8.exit14.i

get8.exit14.i:                                    ; preds = %bb.bv, %bb.bt
  %.1.i13.i = phi i8 [ %i.ke, %bb.bv ], [ %i.ka, %bb.bt ]
  %.not5.i = icmp eq i8 %.1.i13.i, 103
  br i1 %.not5.i, label %bb.bw, label %start_page.exit.thread.i.i437

bb.bw:                                            ; preds = %get8.exit14.i
  %i.kf = load ptr, ptr %i.al, align 8, !tbaa !70 ; 4 uses
  %.not.i15.i = icmp eq ptr %i.kf, null
  br i1 %.not.i15.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kg = load ptr, ptr %i.am, align 8, !tbaa !71
  %.not11.i16.i = icmp ult ptr %i.kf, %i.kg
  br i1 %.not11.i16.i, label %bb.by, label %start_page.exit.thread.i.i437.sink.split

bb.by:                                            ; preds = %bb.bx
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store ptr %i.kh, ptr %i.al, align 8, !tbaa !70
  %i.ki = load i8, ptr %i.kf, align 1, !tbaa !50
  %i.kj = freeze i8 %i.ki
  br label %capture_pattern.exit

bb.bz:                                            ; preds = %bb.bw
  %i.kk = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.kl = tail call i32 @fgetc(ptr noundef %i.kk) ; 2 uses
  %i.km = icmp eq i32 %i.kl, -1
  br i1 %i.km, label %start_page.exit.thread.i.i437.sink.split, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kn = trunc i32 %i.kl to i8
  br label %capture_pattern.exit

capture_pattern.exit:                             ; preds = %bb.by, %bb.ca
  %.1.i17.i = phi i8 [ %i.kn, %bb.ca ], [ %i.kj, %bb.by ]
  %.not6.i464.not = icmp eq i8 %.1.i17.i, 83
  br i1 %.not6.i464.not, label %start_page.exit.i.i432, label %start_page.exit.thread.i.i437

start_page.exit.thread.i.i437.sink.split:         ; preds = %bb.bz, %bb.bx, %bb.bu, %bb.bs, %bb.bp, %bb.bn, %bb.bk, %bb.bi
  store i32 1, ptr %i.an, align 8, !tbaa !72
  br label %start_page.exit.thread.i.i437

start_page.exit.thread.i.i437:                    ; preds = %get8.exit10.i, %get8.exit.i461, %get8.exit14.i, %capture_pattern.exit, %start_page.exit.thread.i.i437.sink.split
  store i32 30, ptr %i.ap, align 4, !tbaa !39
  br label %.loopexit526

start_page.exit.i.i432:                           ; preds = %capture_pattern.exit
  %i.ko = tail call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i433 = icmp eq i32 %i.ko, 0
  br i1 %.not20.i.i433, label %.loopexit526, label %bb.cb

.loopexit526:                                     ; preds = %start_page.exit.i.i432, %start_page.exit.thread.i.i437
  store i32 1, ptr %i.ae, align 4, !tbaa !83
  br label %prep_huffman.exit415

bb.cb:                                            ; preds = %start_page.exit.i.i432
  %i.kp = load i8, ptr %i.ai, align 1, !tbaa !78
  %i.kq = and i8 %i.kp, 1
  %.not21.i.i434 = icmp eq i8 %i.kq, 0
  br i1 %.not21.i.i434, label %bb.cc, label %._crit_edge.i.i435

._crit_edge.i.i435:                               ; preds = %bb.cb
  %.pre.i.i436 = load i32, ptr %i.af, align 8, !tbaa !82
  br label %bb.cd

end_hunk_4
begin_hunk_5_@vorbis_decode_packet_rest:bb.a
  br label %get8_packet_raw.exit457.thread514

bb.dx:                                            ; preds = %bb.dv
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  store ptr %i.om, ptr %i.al, align 8, !tbaa !70
  %i.on = load i8, ptr %i.ok, align 1, !tbaa !50
  br label %get8_packet_raw.exit457

bb.dy:                                            ; preds = %.thread508
  %i.oo = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.op = tail call i32 @fgetc(ptr noundef %i.oo) ; 2 uses
  %i.oq = icmp eq i32 %i.op, -1
  br i1 %i.oq, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 1, ptr %i.an, align 8, !tbaa !72
  br label %get8_packet_raw.exit457.thread514

bb.ea:                                            ; preds = %bb.dy
  %i.or = trunc i32 %i.op to i8
  br label %get8_packet_raw.exit457

get8_packet_raw.exit457:                          ; preds = %bb.dx, %bb.ea
  %.1.i.i443 = phi i8 [ %i.or, %bb.ea ], [ %i.on, %bb.dx ]
  %i.os = zext i8 %.1.i.i443 to i32
  br label %get8_packet_raw.exit457.thread514

get8_packet_raw.exit457.thread514:                ; preds = %get8_packet_raw.exit457, %bb.dz, %bb.dw
  %i.ot = phi i32 [ %i.os, %get8_packet_raw.exit457 ], [ 0, %bb.dw ], [ 0, %bb.dz ]
  %i.ou = load i32, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.ov = shl i32 %i.ot, %i.ou
  %i.ow = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.ox = add i32 %i.ow, %i.ov
  store i32 %i.ox, ptr %i.aa, align 4, !tbaa !88
  %i.oy = add nsw i32 %i.ou, 8
  store i32 %i.oy, ptr %i.z, align 8, !tbaa !84
  %i.oz = icmp slt i32 %i.ou, 17
  br i1 %i.oz, label %bb.cr, label %prep_huffman.exit.i, !llvm.loop !8

prep_huffman.exit.i:                              ; preds = %next_segment.exit.i448, %get8_packet_raw.exit457.thread514, %bb.cs, %.loopexit525, %bb.dq, %bb.co
  %i.pa = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !56 ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.eb, label %.thread.i

bb.eb:                                            ; preds = %prep_huffman.exit.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.iy, i64 2096
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !60 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %codebook_decode_scalar_raw.exit, label %.thread96.i

.thread.i:                                        ; preds = %prep_huffman.exit.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !62 ; 3 uses
  %i.pi = icmp sgt i32 %i.ph, 8
  br i1 %i.pi, label %bb.ec, label %.thread66.i

bb.ec:                                            ; preds = %.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 2096
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !60 ; 2 uses
  %.not61.i = icmp eq ptr %.pre.i, null
  br i1 %.not61.i, label %.lr.ph76.i, label %.thread96.i

.thread96.i:                                      ; preds = %bb.ec, %bb.eb
  %i.pj = phi ptr [ %.pre.i, %bb.ec ], [ %i.pe, %bb.eb ]
  %i.pk = load i32, ptr %i.aa, align 4, !tbaa !88 ; 2 uses
  %i.pl = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.pk)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.iy, i64 2112
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !61 ; 2 uses
  %i.po = icmp sgt i32 %i.pn, 1
  br i1 %i.po, label %.lr.ph.i416, label %._crit_edge.i

.lr.ph.i416:                                      ; preds = %.thread96.i, %.lr.ph.i416
  %.072.i = phi i32 [ %.1.i, %.lr.ph.i416 ], [ %i.pn, %.thread96.i ] ; 2 uses
  %.05471.i = phi i32 [ %.155.i, %.lr.ph.i416 ], [ 0, %.thread96.i ] ; 2 uses
  %i.pp = lshr i32 %.072.i, 1                     ; 3 uses
  %i.pq = add nsw i32 %i.pp, %.05471.i            ; 2 uses
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !47
  %.not65.i = icmp ugt i32 %i.pt, %i.pl           ; 2 uses
  %i.pu = sub nuw nsw i32 %.072.i, %i.pp
  %.155.i = select i1 %.not65.i, i32 %.05471.i, i32 %i.pq ; 2 uses
  %.1.i = select i1 %.not65.i, i32 %i.pp, i32 %i.pu ; 2 uses
  %i.pv = icmp samesign ugt i32 %.1.i, 1
  br i1 %i.pv, label %.lr.ph.i416, label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %.lr.ph.i416, %.thread96.i
  %.054.lcssa.i = phi i32 [ 0, %.thread96.i ], [ %.155.i, %.lr.ph.i416 ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.iy, i64 27
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !55
  %.not63.i = icmp eq i8 %i.px, 0
  br i1 %.not63.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.iy, i64 2104
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !63
  %i.qa = sext i32 %.054.lcssa.i to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !47
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge.i
  %.2.i = phi i32 [ %.054.lcssa.i, %._crit_edge.i ], [ %i.qc, %bb.ed ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !57
  %i.qf = sext i32 %.2.i to i64
  %i.qg = getelementptr inbounds i8, ptr %i.qe, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !50
  %i.qi = zext i8 %i.qh to i32                    ; 3 uses
  %i.qj = load i32, ptr %i.z, align 8, !tbaa !84  ; 2 uses
  %.not64.i = icmp slt i32 %i.qj, %i.qi
  br i1 %.not64.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qk = lshr i32 %i.pk, %i.qi
  store i32 %i.qk, ptr %i.aa, align 4, !tbaa !88
  %i.ql = sub nuw nsw i32 %i.qj, %i.qi
  br label %codebook_decode_scalar_raw.exit.sink.split

.thread66.i:                                      ; preds = %.thread.i
  %i.qm = icmp sgt i32 %i.ph, 0
  br i1 %i.qm, label %.lr.ph76.i, label %._crit_edge77.i

.lr.ph76.i:                                       ; preds = %.thread66.i, %bb.ec
  %i.qn = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ph to i64
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ek, %.lr.ph76.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph76.i ], [ %indvars.iv.next.i, %bb.ek ] ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %indvars.iv.i
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !50  ; 2 uses
  %i.qr = icmp eq i8 %i.qq, -1
  br i1 %i.qr, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qs = zext i8 %i.qq to i32                    ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv.i
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !47
  %i.qv = load i32, ptr %i.aa, align 4, !tbaa !88 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.qs
  %i.qw = xor i32 %notmask.i, -1
  %i.qx = and i32 %i.qv, %i.qw
  %i.qy = icmp eq i32 %i.qu, %i.qx
  br i1 %i.qy, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.qz = load i32, ptr %i.z, align 8, !tbaa !84  ; 2 uses
  %.not62.i = icmp slt i32 %i.qz, %i.qs
  br i1 %.not62.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qo, i64 %indvars.iv.i
  %i.rb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.rc = lshr i32 %i.qv, %i.qs
  store i32 %i.rc, ptr %i.aa, align 4, !tbaa !88
  %i.rd = load i8, ptr %i.ra, align 1, !tbaa !50
  %i.re = zext i8 %i.rd to i32
  %i.rf = sub nsw i32 %i.qz, %i.re
  br label %codebook_decode_scalar_raw.exit.sink.split

bb.ek:                                            ; preds = %bb.eh, %bb.eg
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge77.i, label %bb.eg, !llvm.loop !10

._crit_edge77.i:                                  ; preds = %bb.ek, %.thread66.i
  store i32 21, ptr %i.ap, align 4, !tbaa !39
  br label %codebook_decode_scalar_raw.exit.sink.split

codebook_decode_scalar_raw.exit.sink.split:       ; preds = %bb.ee, %bb.ef, %bb.ei, %bb.ej, %._crit_edge77.i, %bb.cn
  %.sink.i.sink = phi i32 [ %spec.select408, %bb.cn ], [ 0, %._crit_edge77.i ], [ 0, %bb.ee ], [ %i.rf, %bb.ej ], [ %i.ql, %bb.ef ], [ 0, %bb.ei ]
  %.1338.ph = phi i32 [ %spec.select409, %bb.cn ], [ -1, %._crit_edge77.i ], [ -1, %bb.ee ], [ %i.rb, %bb.ej ], [ %.2.i, %bb.ef ], [ -1, %bb.ei ]
  store i32 %.sink.i.sink, ptr %i.z, align 8, !tbaa !84
  br label %codebook_decode_scalar_raw.exit

codebook_decode_scalar_raw.exit:                  ; preds = %codebook_decode_scalar_raw.exit.sink.split, %bb.eb
  %.1338 = phi i32 [ -1, %bb.eb ], [ %.1338.ph, %codebook_decode_scalar_raw.exit.sink.split ] ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.iy, i64 27
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !55
  %.not405 = icmp eq i8 %i.rh, 0
  br i1 %.not405, label %bb.em, label %bb.el

bb.el:                                            ; preds = %codebook_decode_scalar_raw.exit
  %i.ri = getelementptr inbounds nuw i8, ptr %i.iy, i64 2104
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !63
  %i.rk = sext i32 %.1338 to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !47
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %codebook_decode_scalar_raw.exit
  %.2 = phi i32 [ %i.rm, %bb.el ], [ %.1338, %codebook_decode_scalar_raw.exit ]
  %i.rn = trunc i32 %.2 to i16
  br label %bb.en

bb.en:                                            ; preds = %bb.az, %bb.em
  %.sink = phi i16 [ %i.rn, %bb.em ], [ 0, %bb.az ]
  %9 = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %indvars.iv
  store i16 %.sink, ptr %9, align 2, !tbaa !59
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ro = add nuw nsw i32 %.0348540, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ro, %i.fu
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.az, !llvm.loop !270

._crit_edge.loopexit:                             ; preds = %bb.en
  %10 = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ay
  %.1343.lcssa = phi i32 [ %.0342544, %bb.ay ], [ %10, %._crit_edge.loopexit ]
  %indvars.iv.next592.a = add nuw nsw i64 %indvars.iv591.a, 1 ; 2 uses
  %i.rp = load i8, ptr %i.bd, align 4, !tbaa !124
  %i.rq = zext i8 %i.rp to i64
  %i.rr = icmp samesign ult i64 %indvars.iv.next592.a, %i.rq
  br i1 %i.rr, label %bb.z, label %._crit_edge546, !llvm.loop !271

._crit_edge546:                                   ; preds = %._crit_edge, %ilog.exit411
  %i.rs = load i32, ptr %i.z, align 8, !tbaa !84
  %i.rt = icmp eq i32 %i.rs, -1
  br i1 %i.rt, label %bb.fa, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge546
  store i8 1, ptr %i.aq, align 1, !tbaa !50
  store i8 1, ptr %i.c, align 16, !tbaa !50
  %i.ru = getelementptr inbounds nuw i8, ptr %i.bd, i64 1592
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !116 ; 6 uses
  %i.rw = icmp sgt i32 %i.rv, 2
  br i1 %i.rw, label %.lr.ph549, label %.preheader528

.lr.ph549:                                        ; preds = %bb.eo
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1088
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bd, i64 338 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.rv to i64
  br label %bb.ep

.preheader528:                                    ; preds = %bb.ex, %bb.eo
  %i.rz = icmp sgt i32 %i.rv, 0
  br i1 %i.rz, label %iter.check, label %.thread516

iter.check:                                       ; preds = %.preheader528
  %wide.trip.count601 = zext nneg i32 %i.rv to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.rv, 4
  br i1 %min.iters.check, label %.lr.ph552.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check742 = icmp ult i32 %i.rv, 16
  br i1 %min.iters.check742, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sa = and i64 %wide.trip.count601, 12
  %n.vec = and i64 %wide.trip.count601, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue773
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue773 ] ; 18 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %wide.load = load <8 x i8>, ptr %i.sb, align 16, !tbaa !50
  %wide.load743 = load <8 x i8>, ptr %i.sc, align 8, !tbaa !50
  %i.sd = icmp eq <8 x i8> %wide.load, zeroinitializer ; 8 uses
  %i.se = icmp eq <8 x i8> %wide.load743, zeroinitializer ; 8 uses
  %i.sf = extractelement <8 x i1> %i.sd, i64 0
  br i1 %i.sf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  store i16 -1, ptr %i.sg, align 2, !tbaa !59
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.sh = extractelement <8 x i1> %i.sd, i64 1
  br i1 %i.sh, label %pred.store.if744.a, label %pred.store.continue745.a

pred.store.if744.a:                               ; preds = %pred.store.continue
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  store i16 -1, ptr %i.sj, align 2, !tbaa !59
  br label %pred.store.continue745.a

pred.store.continue745.a:                         ; preds = %pred.store.if744.a, %pred.store.continue
  %i.sk = extractelement <8 x i1> %i.sd, i64 2
  br i1 %i.sk, label %pred.store.if746.a, label %pred.store.continue747.a

pred.store.if746.a:                               ; preds = %pred.store.continue745.a
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  store i16 -1, ptr %i.sm, align 2, !tbaa !59
  br label %pred.store.continue747.a

pred.store.continue747.a:                         ; preds = %pred.store.if746.a, %pred.store.continue745.a
  %i.sn = extractelement <8 x i1> %i.sd, i64 3
  br i1 %i.sn, label %pred.store.if748.a, label %pred.store.continue749.a

pred.store.if748.a:                               ; preds = %pred.store.continue747.a
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 6
  store i16 -1, ptr %i.sp, align 2, !tbaa !59
  br label %pred.store.continue749.a

pred.store.continue749.a:                         ; preds = %pred.store.if748.a, %pred.store.continue747.a
  %i.sq = extractelement <8 x i1> %i.sd, i64 4
  br i1 %i.sq, label %pred.store.if750.a, label %pred.store.continue751.a

pred.store.if750.a:                               ; preds = %pred.store.continue749.a
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  store i16 -1, ptr %i.ss, align 2, !tbaa !59
  br label %pred.store.continue751.a

pred.store.continue751.a:                         ; preds = %pred.store.if750.a, %pred.store.continue749.a
  %i.st = extractelement <8 x i1> %i.sd, i64 5
  br i1 %i.st, label %pred.store.if752.a, label %pred.store.continue753.a

pred.store.if752.a:                               ; preds = %pred.store.continue751.a
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 10
  store i16 -1, ptr %i.sv, align 2, !tbaa !59
  br label %pred.store.continue753.a

pred.store.continue753.a:                         ; preds = %pred.store.if752.a, %pred.store.continue751.a
  %i.sw = extractelement <8 x i1> %i.sd, i64 6
  br i1 %i.sw, label %pred.store.if754.a, label %pred.store.continue755.a

pred.store.if754.a:                               ; preds = %pred.store.continue753.a
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 12
  store i16 -1, ptr %i.sy, align 2, !tbaa !59
  br label %pred.store.continue755.a

pred.store.continue755.a:                         ; preds = %pred.store.if754.a, %pred.store.continue753.a
  %i.sz = extractelement <8 x i1> %i.sd, i64 7
  br i1 %i.sz, label %pred.store.if756.a, label %pred.store.continue757.a

pred.store.if756.a:                               ; preds = %pred.store.continue755.a
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 14
  store i16 -1, ptr %i.tb, align 2, !tbaa !59
  br label %pred.store.continue757.a

pred.store.continue757.a:                         ; preds = %pred.store.if756.a, %pred.store.continue755.a
  %i.tc = extractelement <8 x i1> %i.se, i64 0
  br i1 %i.tc, label %pred.store.if758.a, label %pred.store.continue759.a

pred.store.if758.a:                               ; preds = %pred.store.continue757.a
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  store i16 -1, ptr %i.te, align 2, !tbaa !59
  br label %pred.store.continue759.a

pred.store.continue759.a:                         ; preds = %pred.store.if758.a, %pred.store.continue757.a
  %i.tf = extractelement <8 x i1> %i.se, i64 1
  br i1 %i.tf, label %pred.store.if760.a, label %pred.store.continue761.a

pred.store.if760.a:                               ; preds = %pred.store.continue759.a
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 18
  store i16 -1, ptr %i.th, align 2, !tbaa !59
  br label %pred.store.continue761.a

pred.store.continue761.a:                         ; preds = %pred.store.if760.a, %pred.store.continue759.a
  %i.ti = extractelement <8 x i1> %i.se, i64 2
  br i1 %i.ti, label %pred.store.if762.a, label %pred.store.continue763.a

pred.store.if762.a:                               ; preds = %pred.store.continue761.a
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 20
  store i16 -1, ptr %i.tk, align 2, !tbaa !59
  br label %pred.store.continue763.a

pred.store.continue763.a:                         ; preds = %pred.store.if762.a, %pred.store.continue761.a
  %i.tl = extractelement <8 x i1> %i.se, i64 3
  br i1 %i.tl, label %pred.store.if764.a, label %pred.store.continue765.a

pred.store.if764.a:                               ; preds = %pred.store.continue763.a
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 22
  store i16 -1, ptr %i.tn, align 2, !tbaa !59
  br label %pred.store.continue765.a

pred.store.continue765.a:                         ; preds = %pred.store.if764.a, %pred.store.continue763.a
  %i.to = extractelement <8 x i1> %i.se, i64 4
  br i1 %i.to, label %pred.store.if766.a, label %pred.store.continue767.a

pred.store.if766.a:                               ; preds = %pred.store.continue765.a
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  store i16 -1, ptr %i.tq, align 2, !tbaa !59
  br label %pred.store.continue767.a

pred.store.continue767.a:                         ; preds = %pred.store.if766.a, %pred.store.continue765.a
  %i.tr = extractelement <8 x i1> %i.se, i64 5
  br i1 %i.tr, label %pred.store.if768.a, label %pred.store.continue769.a

pred.store.if768.a:                               ; preds = %pred.store.continue767.a
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 26
  store i16 -1, ptr %i.tt, align 2, !tbaa !59
  br label %pred.store.continue769.a

pred.store.continue769.a:                         ; preds = %pred.store.if768.a, %pred.store.continue767.a
  %i.tu = extractelement <8 x i1> %i.se, i64 6
  br i1 %i.tu, label %pred.store.if770.a, label %pred.store.continue771.a

pred.store.if770.a:                               ; preds = %pred.store.continue769.a
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 28
  store i16 -1, ptr %i.tw, align 2, !tbaa !59
  br label %pred.store.continue771.a

pred.store.continue771.a:                         ; preds = %pred.store.if770.a, %pred.store.continue769.a
end_hunk_5
