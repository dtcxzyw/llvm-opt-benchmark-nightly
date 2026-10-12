Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@decode_residue:bb.a
  %i.x = load i32, ptr %i.w, align 4, !tbaa !100
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.u)
  %i.z = sub i32 %i.y, %.
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 9 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ac = udiv i32 %i.z, %i.ab                    ; 17 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = shl i32 %i.ac, 3
  %i.ak = add i32 %i.aj, 8
  %i.al = mul i32 %i.ai, %i.ak
  %i.am = sub nsw i32 %i.ae, %i.al                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !45
  %i.ap = icmp slt i32 %i.am, %i.ao
  br i1 %i.ap, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.am, ptr %i.ad, align 4, !tbaa !46
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 %i.aq
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.as = sext i32 %i.ai to i64
  %i.at = sext i32 %i.ac to i64
  %i.au = shl nsw i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 8
  %i.aw = mul i64 %i.av, %i.as
  %i.ax = alloca i8, i64 %i.aw, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.ay = phi ptr [ %i.ax, %bb.d ], [ null, %bb.b ], [ %i.ar, %bb.c ] ; 19 uses
  %i.az = icmp sgt i32 %i.ai, 0
  br i1 %i.az, label %.lr.ph.i, label %make_block_array.exit

.lr.ph.i:                                         ; preds = %setup_temp_malloc.exit
  %i.ba = shl i32 %i.ac, 3
  %i.bb = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = sext i32 %i.ba to i64                   ; 9 uses
  %xtraiter = and i64 %i.bb, 7                    ; 3 uses
  %i.be = icmp ult i32 %i.ai, 8
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bb, 2147483640
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.e ] ; 9 uses
  %.013.i = phi ptr [ %i.bc, %.lr.ph.i.new ], [ %i.cb, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.e ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  store ptr %.013.i, ptr %i.bf, align 8, !tbaa !40
  %i.bg = getelementptr inbounds i8, ptr %.013.i, i64 %i.bd ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !40
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bd ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !40
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bd ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.bd ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
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
  %lcmp.mod1050 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1050)
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
  %xtraiter1052 = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i32 %2, 1
  br i1 %i.ch, label %.epil.preheader1051, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter1056 = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %niter1057 = phi i64 [ 0, %.lr.ph.new ], [ %niter1057.next.1, %bb.k ]
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
  %niter1057.next.1 = add i64 %niter1057, 2       ; 2 uses
  %niter1057.ncmp.1 = icmp eq i64 %niter1057.next.1, %unroll_iter1056
  br i1 %niter1057.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g, !llvm.loop !212

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod1054.not = icmp eq i64 %xtraiter1052, 0
  br i1 %lcmp.mod1054.not, label %._crit_edge, label %.epil.preheader1051

.epil.preheader1051:                              ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod1055 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod1055)
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.epil.init
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !50
  %.not337.epil = icmp eq i8 %i.cr, 0
  br i1 %.not337.epil, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.epil.preheader1051
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 0, i64 %i.cg, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader1051, %bb.l, %._crit_edge.unr-lcssa
  %i.cu = icmp ne i32 %2, 1
  %or.cond = and i1 %i.cu, %i.s
  br i1 %or.cond, label %.lr.ph728.preheader, label %.preheader660

._crit_edge.thread:                               ; preds = %make_block_array.exit
  br i1 %i.s, label %._crit_edge729, label %.preheader660

.preheader660:                                    ; preds = %._crit_edge.thread, %._crit_edge
  %i.cv = icmp sgt i32 %i.ac, 0
  %i.cw = icmp slt i32 %2, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 31 uses
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
end_hunk_0
begin_hunk_1_@decode_residue:bb.a

bb.dt:                                            ; preds = %.preheader1030, %get8_packet_raw.exit499.thread593.us.us.us
  %i.sp = load i32, ptr %i.da, align 4, !tbaa !83
  %.not.i.i432.us.us.us = icmp eq i32 %i.sp, 0
  %.pr588.us.us.us = load i8, ptr %i.cz, align 4, !tbaa !86 ; 3 uses
  %.not.i481.us.us.us = icmp eq i8 %.pr588.us.us.us, 0 ; 2 uses
  br i1 %.not.i.i432.us.us.us, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  br i1 %.not.i481.us.us.us, label %prep_huffman.exit.i402.us.us.us, label %.thread589.us.us.us

bb.dv:                                            ; preds = %bb.dt
  br i1 %.not.i481.us.us.us, label %bb.dw, label %.thread589.us.us.us

bb.dw:                                            ; preds = %bb.dv
  %i.sq = load i32, ptr %i.db, align 8, !tbaa !82 ; 2 uses
  %i.sr = icmp eq i32 %i.sq, -1
  br i1 %i.sr, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.ss = load i32, ptr %i.dc, align 8, !tbaa !79
  %i.st = add nsw i32 %i.ss, -1
  store i32 %i.st, ptr %i.dd, align 8, !tbaa !87
  %i.su = call i32 @capture_pattern(ptr noundef nonnull %0)
  %.not.i.i.i492.us.us.us = icmp eq i32 %i.su, 0
  br i1 %.not.i.i.i492.us.us.us, label %start_page.exit.thread.i.i498.us.us.us, label %start_page.exit.i.i493.us.us.us

start_page.exit.i.i493.us.us.us:                  ; preds = %bb.dx
  %i.sv = call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i494.us.us.us = icmp eq i32 %i.sv, 0
  br i1 %.not20.i.i494.us.us.us, label %.loopexit646.us.us.us, label %bb.dy

bb.dy:                                            ; preds = %start_page.exit.i.i493.us.us.us
  %i.sw = load i8, ptr %i.de, align 1, !tbaa !78
  %i.sx = and i8 %i.sw, 1
  %.not21.i.i495.us.us.us = icmp eq i8 %i.sx, 0
  br i1 %.not21.i.i495.us.us.us, label %bb.ej, label %._crit_edge.i.i496.us.us.us

._crit_edge.i.i496.us.us.us:                      ; preds = %bb.dy
  %.pre.i.i497.us.us.us = load i32, ptr %i.db, align 8, !tbaa !82
  br label %bb.dz

bb.dz:                                            ; preds = %._crit_edge.i.i496.us.us.us, %bb.dw
  %i.sy = phi i32 [ %.pre.i.i497.us.us.us, %._crit_edge.i.i496.us.us.us ], [ %i.sq, %bb.dw ] ; 3 uses
  %i.sz = add nsw i32 %i.sy, 1                    ; 2 uses
  store i32 %i.sz, ptr %i.db, align 8, !tbaa !82
  %i.ta = sext i32 %i.sy to i64
  %i.tb = getelementptr inbounds i8, ptr %i.df, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !50  ; 4 uses
  %.not22.i.i488.us.us.us = icmp eq i8 %i.tc, -1
  br i1 %.not22.i.i488.us.us.us, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i32 1, ptr %i.da, align 4, !tbaa !83
  store i32 %i.sy, ptr %i.dd, align 8, !tbaa !87
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.td = load i32, ptr %i.dc, align 8, !tbaa !79
  %.not23.i.i489.us.us.us = icmp slt i32 %i.sz, %i.td
  br i1 %.not23.i.i489.us.us.us, label %next_segment.exit.i490.us.us.us, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i32 -1, ptr %i.db, align 8, !tbaa !82
  br label %next_segment.exit.i490.us.us.us

next_segment.exit.i490.us.us.us:                  ; preds = %bb.ec, %bb.eb
  store i8 %i.tc, ptr %i.cz, align 4, !tbaa !86
  %.not7.i491.us.us.us = icmp eq i8 %i.tc, 0
  br i1 %.not7.i491.us.us.us, label %prep_huffman.exit.i402.us.us.us, label %.thread589.us.us.us

.thread589.us.us.us:                              ; preds = %next_segment.exit.i490.us.us.us, %bb.dv, %bb.du
  %i.te = phi i8 [ %i.tc, %next_segment.exit.i490.us.us.us ], [ %.pr588.us.us.us, %bb.dv ], [ %.pr588.us.us.us, %bb.du ]
  %i.tf = add i8 %i.te, -1
  store i8 %i.tf, ptr %i.cz, align 4, !tbaa !86
  %i.tg = load i32, ptr %i.dg, align 4, !tbaa !85
  %i.th = add nsw i32 %i.tg, 1
  store i32 %i.th, ptr %i.dg, align 4, !tbaa !85
  %i.ti = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i482.us.us.us = icmp eq ptr %i.ti, null
  br i1 %.not.i8.i482.us.us.us, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %.thread589.us.us.us
  %i.tj = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i483.us.us.us = icmp ult ptr %i.ti, %i.tj
  br i1 %.not11.i.i483.us.us.us, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit499.thread593.us.us.us

bb.ef:                                            ; preds = %bb.ed
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  store ptr %i.tk, ptr %i.dh, align 8, !tbaa !70
  %i.tl = load i8, ptr %i.ti, align 1, !tbaa !50
  br label %get8_packet_raw.exit499.us.us.us

bb.eg:                                            ; preds = %.thread589.us.us.us
  %i.tm = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.tn = call i32 @fgetc(ptr noundef %i.tm)      ; 2 uses
  %i.to = icmp eq i32 %i.tn, -1
  br i1 %i.to, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.tp = trunc i32 %i.tn to i8
  br label %get8_packet_raw.exit499.us.us.us

get8_packet_raw.exit499.us.us.us:                 ; preds = %bb.eh, %bb.ef
  %.1.i.i485.us.us.us = phi i8 [ %i.tp, %bb.eh ], [ %i.tl, %bb.ef ]
  %i.tq = zext i8 %.1.i.i485.us.us.us to i32
  br label %get8_packet_raw.exit499.thread593.us.us.us

bb.ei:                                            ; preds = %bb.eg
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit499.thread593.us.us.us

get8_packet_raw.exit499.thread593.us.us.us:       ; preds = %bb.ei, %get8_packet_raw.exit499.us.us.us, %bb.ee
  %i.tr = phi i32 [ %i.tq, %get8_packet_raw.exit499.us.us.us ], [ 0, %bb.ee ], [ 0, %bb.ei ]
  %i.ts = load i32, ptr %i.cx, align 8, !tbaa !84 ; 3 uses
  %i.tt = shl i32 %i.tr, %i.ts
  %i.tu = load i32, ptr %i.cy, align 4, !tbaa !88
  %i.tv = add i32 %i.tu, %i.tt
  store i32 %i.tv, ptr %i.cy, align 4, !tbaa !88
  %i.tw = add nsw i32 %i.ts, 8
  store i32 %i.tw, ptr %i.cx, align 8, !tbaa !84
  %i.tx = icmp slt i32 %i.ts, 17
  br i1 %i.tx, label %bb.dt, label %prep_huffman.exit.i402.us.us.us, !llvm.loop !8

bb.ej:                                            ; preds = %bb.dy
  store i32 32, ptr %i.dl, align 4, !tbaa !39
  br label %prep_huffman.exit.i402.us.us.us

start_page.exit.thread.i.i498.us.us.us:           ; preds = %bb.dx
  store i32 30, ptr %i.dl, align 4, !tbaa !39
  br label %.loopexit646.us.us.us

.loopexit646.us.us.us:                            ; preds = %start_page.exit.i.i493.us.us.us, %start_page.exit.thread.i.i498.us.us.us
  store i32 1, ptr %i.da, align 4, !tbaa !83
  br label %prep_huffman.exit.i402.us.us.us

prep_huffman.exit.i402.us.us.us:                  ; preds = %bb.du, %next_segment.exit.i490.us.us.us, %get8_packet_raw.exit499.thread593.us.us.us, %.loopexit646.us.us.us, %bb.ej, %bb.dq
  %i.ty = load ptr, ptr %i.pf, align 8, !tbaa !56 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %bb.eq, label %.thread.i403.us.us.us

.thread.i403.us.us.us:                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.ua = load i32, ptr %i.pg, align 4, !tbaa !62 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 8
  br i1 %i.ub, label %bb.ek, label %.thread66.i404.us.us.us

.thread66.i404.us.us.us:                          ; preds = %.thread.i403.us.us.us
  %i.uc = icmp sgt i32 %i.ua, 0
  br i1 %i.uc, label %.lr.ph76.i410.us.us.us, label %._crit_edge77.i405

bb.ek:                                            ; preds = %.thread.i403.us.us.us
  %.pre.i418.us.us.us = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !60 ; 2 uses
  %.not61.i419.us.us.us = icmp eq ptr %.pre.i418.us.us.us, null
  br i1 %.not61.i419.us.us.us, label %.lr.ph76.i410.us.us.us, label %.thread96.i420.us.us.us

.lr.ph76.i410.us.us.us:                           ; preds = %bb.ek, %.thread66.i404.us.us.us
  %i.ud = load ptr, ptr %i.ph, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count.i411.us.us.us = zext nneg i32 %i.ua to i64
  br label %bb.el

bb.el:                                            ; preds = %bb.en, %.lr.ph76.i410.us.us.us
  %indvars.iv.i412.us.us.us = phi i64 [ 0, %.lr.ph76.i410.us.us.us ], [ %indvars.iv.next.i414.us.us.us, %bb.en ] ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %indvars.iv.i412.us.us.us
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !50  ; 2 uses
  %i.ug = icmp eq i8 %i.uf, -1
  br i1 %i.ug, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.uh = zext i8 %i.uf to i32                    ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %indvars.iv.i412.us.us.us
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !47
  %i.uk = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %notmask.i413.us.us.us = shl nsw i32 -1, %i.uh
  %i.ul = xor i32 %notmask.i413.us.us.us, -1
  %i.um = and i32 %i.uk, %i.ul
  %i.un = icmp eq i32 %i.uj, %i.um
  br i1 %i.un, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %indvars.iv.next.i414.us.us.us = add nuw nsw i64 %indvars.iv.i412.us.us.us, 1 ; 2 uses
  %exitcond.not.i415.us.us.us = icmp eq i64 %indvars.iv.next.i414.us.us.us, %wide.trip.count.i411.us.us.us
  br i1 %exitcond.not.i415.us.us.us, label %._crit_edge77.i405, label %bb.el, !llvm.loop !10

bb.eo:                                            ; preds = %bb.em
  %i.uo = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %.not62.i416.us.us.us = icmp slt i32 %i.uo, %i.uh
  br i1 %.not62.i416.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.up = getelementptr inbounds nuw i8, ptr %i.ud, i64 %indvars.iv.i412.us.us.us
  %i.uq = trunc nuw nsw i64 %indvars.iv.i412.us.us.us to i32
  %i.ur = lshr i32 %i.uk, %i.uh
  store i32 %i.ur, ptr %i.cy, align 4, !tbaa !88
  %i.us = load i8, ptr %i.up, align 1, !tbaa !50
  %i.ut = zext i8 %i.us to i32
  %i.uu = sub nsw i32 %i.uo, %i.ut
  store i32 %i.uu, ptr %i.cx, align 8, !tbaa !84
  br label %codebook_decode_start.exit373.us.us.us

bb.eq:                                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.uv = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !60 ; 2 uses
  %i.uw = icmp eq ptr %i.uv, null
  br i1 %i.uw, label %.thread.i364, label %.thread96.i420.us.us.us

.thread96.i420.us.us.us:                          ; preds = %bb.eq, %bb.ek
  %i.ux = phi ptr [ %.pre.i418.us.us.us, %bb.ek ], [ %i.uv, %bb.eq ]
  %i.uy = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %i.uz = call noundef i32 @llvm.bitreverse.i32(i32 %i.uy)
  %i.va = load i32, ptr %i.pi, align 8, !tbaa !61 ; 2 uses
  %i.vb = icmp sgt i32 %i.va, 1
  br i1 %i.vb, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us

.lr.ph.i426.us.us.us:                             ; preds = %.thread96.i420.us.us.us, %.lr.ph.i426.us.us.us
  %.072.i427.us.us.us = phi i32 [ %.1.i431.us.us.us, %.lr.ph.i426.us.us.us ], [ %i.va, %.thread96.i420.us.us.us ] ; 2 uses
  %.05471.i428.us.us.us = phi i32 [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ], [ 0, %.thread96.i420.us.us.us ] ; 2 uses
  %i.vc = lshr i32 %.072.i427.us.us.us, 1         ; 3 uses
  %i.vd = add nsw i32 %i.vc, %.05471.i428.us.us.us ; 2 uses
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !47
  %.not65.i429.us.us.us = icmp ugt i32 %i.vg, %i.uz ; 2 uses
  %i.vh = sub nuw nsw i32 %.072.i427.us.us.us, %i.vc
  %.155.i430.us.us.us = select i1 %.not65.i429.us.us.us, i32 %.05471.i428.us.us.us, i32 %i.vd ; 2 uses
  %.1.i431.us.us.us = select i1 %.not65.i429.us.us.us, i32 %i.vc, i32 %i.vh ; 2 uses
  %i.vi = icmp samesign ugt i32 %.1.i431.us.us.us, 1
  br i1 %i.vi, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us, !llvm.loop !9

._crit_edge.i421.us.us.us:                        ; preds = %.lr.ph.i426.us.us.us, %.thread96.i420.us.us.us
  %.054.lcssa.i422.us.us.us = phi i32 [ 0, %.thread96.i420.us.us.us ], [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ] ; 2 uses
  %i.vj = load i8, ptr %i.pj, align 1, !tbaa !55
  %.not63.i423.us.us.us = icmp eq i8 %i.vj, 0
  br i1 %.not63.i423.us.us.us, label %bb.er, label %bb.es

bb.er:                                            ; preds = %._crit_edge.i421.us.us.us
  %i.vk = load ptr, ptr %i.pk, align 8, !tbaa !63
  %i.vl = sext i32 %.054.lcssa.i422.us.us.us to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !47
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge.i421.us.us.us
  %.2.i424.us.us.us = phi i32 [ %.054.lcssa.i422.us.us.us, %._crit_edge.i421.us.us.us ], [ %i.vn, %bb.er ] ; 3 uses
  %i.vo = load ptr, ptr %i.ph, align 8, !tbaa !57
  %i.vp = sext i32 %.2.i424.us.us.us to i64
  %i.vq = getelementptr inbounds i8, ptr %i.vo, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !50
  %i.vs = zext i8 %i.vr to i32                    ; 3 uses
  %i.vt = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %.not64.i425.us.us.us = icmp slt i32 %i.vt, %i.vs
  br i1 %.not64.i425.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %codebook_decode_scalar_raw.exit434.us.us.us

codebook_decode_scalar_raw.exit434.us.us.us:      ; preds = %bb.es
  %6 = lshr i32 %i.uy, %i.vs
  store i32 %6, ptr %i.cy, align 4, !tbaa !88
  %7 = sub nuw nsw i32 %i.vt, %i.vs
  store i32 %7, ptr %i.cx, align 8, !tbaa !84
  %i.vu = icmp slt i32 %.2.i424.us.us.us, 0
  br i1 %i.vu, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

bb.et:                                            ; preds = %prep_huffman.exit.i362.us.us.us
  %i.vv = zext nneg i16 %i.sk to i32
  %i.vw = load ptr, ptr %i.ph, align 8, !tbaa !57
  %i.vx = zext nneg i16 %i.sk to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !50
  %i.wa = zext i8 %i.vz to i32                    ; 2 uses
  %i.wb = lshr i32 %i.sg, %i.wa
  store i32 %i.wb, ptr %i.cy, align 4, !tbaa !88
  %i.wc = load i32, ptr %i.cx, align 8, !tbaa !84
  %i.wd = sub nsw i32 %i.wc, %i.wa                ; 2 uses
  %i.we = icmp slt i32 %i.wd, 0
  %spec.select.i370.us.us.us = call i32 @llvm.smax.i32(i32 %i.wd, i32 0)
  store i32 %spec.select.i370.us.us.us, ptr %i.cx, align 8, !tbaa !84
  br i1 %i.we, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

codebook_decode_start.exit373.us.us.us:           ; preds = %bb.et, %codebook_decode_scalar_raw.exit434.us.us.us, %bb.ep
  %.025.i363.ph.us.us.us = phi i32 [ %i.uq, %bb.ep ], [ %i.vv, %bb.et ], [ %.2.i424.us.us.us, %codebook_decode_scalar_raw.exit434.us.us.us ]
  %i.wf = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.wg = add i32 %i.ot, %i.wf
  %i.wh = sub i32 %i.or, %i.wg
  %i.wi = load i32, ptr %i.ov, align 8, !tbaa !91 ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wh, i32 %i.wi) ; 5 uses
  %i.wj = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.wj, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit373.us.us.us
  %i.wk = mul i32 %i.wi, %.025.i363.ph.us.us.us
  %i.wl = load ptr, ptr %i.pa, align 8, !tbaa !93 ; 2 uses
  %i.wm = load i8, ptr %i.pb, align 2, !tbaa !92
  %.fr.i.i.us.us.us = freeze i8 %i.wm
  %.not.i.i.us.us.us = icmp eq i8 %.fr.i.i.us.us.us, 0
  %i.wn = sext i32 %i.wk to i64                   ; 2 uses
  %wide.trip.count34.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64 ; 9 uses
  %invariant.gep37.i.i.us.us.us = getelementptr [4 x i8], ptr %i.wl, i64 %i.wn ; 8 uses
  br i1 %.not.i.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader, label %.lr.ph.split.i.i.us.us.us.preheader

.lr.ph.split.i.i.us.us.us.preheader:              ; preds = %.lr.ph.i.i.us.us.us
  %xtraiter1067.a = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %i.wo = icmp eq i32 %spec.select.i.i.us.us.us, 1
  br i1 %i.wo, label %.lr.ph.split.i.i.us.us.us.epil.preheader, label %.lr.ph.split.i.i.us.us.us.preheader.new

.lr.ph.split.i.i.us.us.us.preheader.new:          ; preds = %.lr.ph.split.i.i.us.us.us.preheader
  %unroll_iter1071.a = and i64 %wide.trip.count34.i.i.us.us.us, 2147483646
  br label %.lr.ph.split.i.i.us.us.us

.lr.ph.split.us.i.i.us.us.us.preheader:           ; preds = %.lr.ph.i.i.us.us.us
  %min.iters.check = icmp ugt i32 %spec.select.i.i.us.us.us, 7
  %or.cond1021 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1021, label %vector.memcheck, label %.lr.ph.split.us.i.i.us.us.us.preheader1028

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader
  %i.wp = shl nuw nsw i64 %wide.trip.count34.i.i.us.us.us, 2
  %scevgep = getelementptr i8, ptr %i.pl, i64 %i.wp
  %i.wq = add nsw i64 %i.wn, %wide.trip.count34.i.i.us.us.us
  %i.wr = shl nsw i64 %i.wq, 2
  %scevgep997 = getelementptr i8, ptr %i.wl, i64 %i.wr
  %bound0 = icmp ult ptr %i.pl, %scevgep997
  %bound1 = icmp ult ptr %invariant.gep37.i.i.us.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.i.i.us.us.us.preheader1028, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count34.i.i.us.us.us, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ws = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %index ; 2 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 16
  %wide.load = load <4 x float>, ptr %i.ws, align 4, !tbaa !64, !alias.scope !234
  %wide.load998 = load <4 x float>, ptr %i.wt, align 4, !tbaa !64, !alias.scope !234
  %i.wu = fadd <4 x float> %wide.load, zeroinitializer
  %i.wv = fadd <4 x float> %wide.load998, zeroinitializer
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16 ; 2 uses
  %wide.load999 = load <4 x float>, ptr %i.ww, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %wide.load1000 = load <4 x float>, ptr %i.wx, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %i.wy = fadd <4 x float> %wide.load999, %i.wu
  %i.wz = fadd <4 x float> %wide.load1000, %i.wv
  store <4 x float> %i.wy, ptr %i.ww, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  store <4 x float> %i.wz, ptr %i.wx, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xa = icmp eq i64 %index.next, %n.vec
  br i1 %i.xa, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34.i.i.us.us.us
  br i1 %cmp.n, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader1028

.lr.ph.split.us.i.i.us.us.us.preheader1028:       ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.us.us.us.preheader, %middle.block
  %indvars.iv31.i.i.us.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter1073.a = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %lcmp.mod1074.not.a = icmp eq i64 %xtraiter1073.a, 0
  br i1 %lcmp.mod1074.not.a, label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, label %.lr.ph.split.us.i.i.us.us.us.prol

.lr.ph.split.us.i.i.us.us.us.prol:                ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader1028
  %gep38.i.i.us.us.us.prol = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us.ph
  %i.xb = load float, ptr %gep38.i.i.us.us.us.prol, align 4, !tbaa !64
  %i.xc = fadd float %i.xb, 0.000000e+00
  %i.xd = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us.ph, %i.pc
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xd ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !64
  %i.xg = fadd float %i.xf, %i.xc
  store float %i.xg, ptr %i.xe, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us.prol = or disjoint i64 %indvars.iv31.i.i.us.us.us.ph, 1
  br label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit

.lr.ph.split.us.i.i.us.us.us.prol.loopexit:       ; preds = %.lr.ph.split.us.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.preheader1028
  %indvars.iv31.i.i.us.us.us.unr = phi i64 [ %indvars.iv31.i.i.us.us.us.ph, %.lr.ph.split.us.i.i.us.us.us.preheader1028 ], [ %indvars.iv.next32.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.prol ]
  %i.xh = add nsw i64 %wide.trip.count34.i.i.us.us.us, -1
  %i.xi = icmp eq i64 %indvars.iv31.i.i.us.us.us.ph, %i.xh
  br i1 %i.xi, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us

.lr.ph.split.i.i.us.us.us:                        ; preds = %.lr.ph.split.i.i.us.us.us, %.lr.ph.split.i.i.us.us.us.preheader.new
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %indvars.iv.next.i.i.us.us.us.1, %.lr.ph.split.i.i.us.us.us ] ; 4 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %i.xq, %.lr.ph.split.i.i.us.us.us ]
  %niter1072.a = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %niter1072.next.1.a, %.lr.ph.split.i.i.us.us.us ]
  %gep.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.xj = load float, ptr %gep.i.i.us.us.us, align 4, !tbaa !64
  %i.xk = fadd float %.028.i.i.us.us.us, %i.xj    ; 2 uses
  %i.xl = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.pc
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xl ; 2 uses
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !64
  %i.xo = fadd float %i.xn, %i.xk
  store float %i.xo, ptr %i.xm, align 4, !tbaa !64
  %indvars.iv.next.i.i.us.us.us = or disjoint i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %gep.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.xp = load float, ptr %gep.i.i.us.us.us.1, align 4, !tbaa !64
  %i.xq = fadd float %i.xk, %i.xp                 ; 3 uses
  %i.xr = mul nuw nsw i64 %indvars.iv.next.i.i.us.us.us, %i.pc
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xr ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !64
  %i.xu = fadd float %i.xt, %i.xq
  store float %i.xu, ptr %i.xs, align 4, !tbaa !64
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %niter1072.next.1.a = add i64 %niter1072.a, 2   ; 2 uses
  %niter1072.ncmp.1.a = icmp eq i64 %niter1072.next.1.a, %unroll_iter1071.a
  br i1 %niter1072.ncmp.1.a, label %.loopexit.i.us.us.us.loopexit1029.unr-lcssa, label %.lr.ph.split.i.i.us.us.us, !llvm.loop !12

.lr.ph.split.us.i.i.us.us.us:                     ; preds = %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us
  %indvars.iv31.i.i.us.us.us = phi i64 [ %indvars.iv.next32.i.i.us.us.us.1, %.lr.ph.split.us.i.i.us.us.us ], [ %indvars.iv31.i.i.us.us.us.unr, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit ] ; 4 uses
  %gep38.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us
  %i.xv = load float, ptr %gep38.i.i.us.us.us, align 4, !tbaa !64
  %i.xw = fadd float %i.xv, 0.000000e+00
  %i.xx = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us, %i.pc
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xx ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !64
  %i.ya = fadd float %i.xz, %i.xw
  store float %i.ya, ptr %i.xy, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 1 ; 2 uses
  %gep38.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next32.i.i.us.us.us
  %i.yb = load float, ptr %gep38.i.i.us.us.us.1, align 4, !tbaa !64
  %i.yc = fadd float %i.yb, 0.000000e+00
  %i.yd = mul nuw nsw i64 %indvars.iv.next32.i.i.us.us.us, %i.pc
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.yd ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !64
  %i.yg = fadd float %i.yf, %i.yc
  store float %i.yg, ptr %i.ye, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 2 ; 2 uses
  %exitcond35.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next32.i.i.us.us.us.1, %wide.trip.count34.i.i.us.us.us
  br i1 %exitcond35.not.i.i.us.us.us.1, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us, !llvm.loop !224

.loopexit.i.us.us.us.loopexit1029.unr-lcssa:      ; preds = %.lr.ph.split.i.i.us.us.us
  %lcmp.mod1069.not.a = icmp eq i64 %xtraiter1067.a, 0
  br i1 %lcmp.mod1069.not.a, label %.loopexit.i.us.us.us, label %.lr.ph.split.i.i.us.us.us.epil.preheader

.lr.ph.split.i.i.us.us.us.epil.preheader:         ; preds = %.loopexit.i.us.us.us.loopexit1029.unr-lcssa, %.lr.ph.split.i.i.us.us.us.preheader
  %indvars.iv.i.i.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader ], [ %indvars.iv.next.i.i.us.us.us.1, %.loopexit.i.us.us.us.loopexit1029.unr-lcssa ] ; 2 uses
  %.028.i.i.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader ], [ %i.xq, %.loopexit.i.us.us.us.loopexit1029.unr-lcssa ]
  %lcmp.mod1070.a = trunc i32 %spec.select.i.i.us.us.us to i1
  call void @llvm.assume(i1 %lcmp.mod1070.a)
  %gep.i.i.us.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.epil.init
  %i.yh = load float, ptr %gep.i.i.us.us.us.epil, align 4, !tbaa !64
  %i.yi = fadd float %.028.i.i.us.us.us.epil.init, %i.yh
  %i.yj = mul nuw nsw i64 %indvars.iv.i.i.us.us.us.epil.init, %i.pc
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.yj ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !64
  %i.ym = fadd float %i.yl, %i.yi
  store float %i.ym, ptr %i.yk, align 4, !tbaa !64
  br label %.loopexit.i.us.us.us

.loopexit.i.us.us.us:                             ; preds = %.lr.ph.split.i.i.us.us.us.epil.preheader, %.loopexit.i.us.us.us.loopexit1029.unr-lcssa, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us, %middle.block, %codebook_decode_start.exit373.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.pc
  br i1 %exitcond.not.i356.us.us.us, label %.thread629.us.us.us, label %bb.cc, !llvm.loop !13

.thread629.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.cb, %bb.ca, %bb.bz
  %indvars.iv.next796.a = add nuw nsw i64 %indvars.iv795.a, 1 ; 2 uses
  %exitcond799.not.a = icmp eq i64 %indvars.iv.next796.a, %wide.trip.count798
  br i1 %exitcond799.not.a, label %._crit_edge700.split.us.us.us, label %bb.bz, !llvm.loop !225

._crit_edge700.split.us.us.us:                    ; preds = %.thread629.us.us.us
  %indvars.iv.next801.a = add nuw nsw i64 %indvars.iv800.a, 1 ; 2 uses
  %i.yn = add nsw i32 %.1280704.us.us, 1          ; 3 uses
  %i.yo = icmp slt i64 %indvars.iv.next801.a, %i.dq
  %i.yp = icmp slt i32 %i.yn, %i.ac
  %i.yq = select i1 %i.yo, i1 %i.yp, i1 false
  br i1 %i.yq, label %.preheader654.us.us, label %._crit_edge706, !llvm.loop !226

.preheader654.us:                                 ; preds = %.preheader654.lr.ph.split.us, %._crit_edge700.split.us711
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %._crit_edge700.split.us711 ], [ 0, %.preheader654.lr.ph.split.us ] ; 2 uses
  %.1280704.us = phi i32 [ %i.akl, %._crit_edge700.split.us711 ], [ %.0279721, %.preheader654.lr.ph.split.us ] ; 2 uses
  br label %bb.eu

bb.eu:                                            ; preds = %.thread629.us710, %.preheader654.us
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %.thread629.us710 ], [ 0, %.preheader654.us ] ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv787
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !50
  %.not323.us709 = icmp eq i8 %i.ys, 0
  br i1 %.not323.us709, label %bb.ev, label %.thread629.us710

bb.ev:                                            ; preds = %bb.eu
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv787
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !105
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %indvars.iv803.a
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !104
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 %indvars.iv792
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !50
  %i.yz = load ptr, ptr %i.do, align 8, !tbaa !106
  %i.za = zext i8 %i.yy to i64
  %i.zb = getelementptr inbounds nuw [16 x i8], ptr %i.yz, i64 %i.za
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.zb, i64 %indvars.iv806
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !59 ; 2 uses
  %i.ze = icmp sgt i16 %i.zd, -1
  br i1 %i.ze, label %.preheader.i.us, label %.thread629.us710

.preheader.i.us:                                  ; preds = %bb.ev
end_hunk_1
begin_hunk_2_@decode_residue:bb.a

bb.hi:                                            ; preds = %bb.hh
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 1
  store ptr %i.aek, ptr %i.dh, align 8, !tbaa !70
  %i.ael = load i8, ptr %i.aei, align 1, !tbaa !50
  %i.aem = freeze i8 %i.ael
  br label %capture_pattern.exit545.us

bb.hj:                                            ; preds = %bb.hg
  %i.aen = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.aeo = call i32 @fgetc(ptr noundef %i.aen)    ; 2 uses
  %i.aep = icmp eq i32 %i.aeo, -1
  br i1 %i.aep, label %start_page.exit.thread.i.i471.us.sink.split, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aeq = trunc i32 %i.aeo to i8
  br label %capture_pattern.exit545.us

capture_pattern.exit545.us:                       ; preds = %bb.hk, %bb.hi
  %.1.i17.i542.us = phi i8 [ %i.aeq, %bb.hk ], [ %i.aem, %bb.hi ]
  %.not6.i543.not.us = icmp eq i8 %.1.i17.i542.us, 83
  br i1 %.not6.i543.not.us, label %start_page.exit.i.i466.us, label %start_page.exit.thread.i.i471.us

start_page.exit.i.i466.us:                        ; preds = %capture_pattern.exit545.us
  %i.aer = call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i467.us = icmp eq i32 %i.aer, 0
  br i1 %.not20.i.i467.us, label %.loopexit649.us, label %bb.hl

bb.hl:                                            ; preds = %start_page.exit.i.i466.us
  %i.aes = load i8, ptr %i.de, align 1, !tbaa !78
  %i.aet = and i8 %i.aes, 1
  %.not21.i.i468.us = icmp eq i8 %i.aet, 0
  br i1 %.not21.i.i468.us, label %bb.hw, label %._crit_edge.i.i469.us

._crit_edge.i.i469.us:                            ; preds = %bb.hl
  %.pre.i.i470.us = load i32, ptr %i.db, align 8, !tbaa !82
  br label %bb.hm

bb.hm:                                            ; preds = %._crit_edge.i.i469.us, %bb.gq
  %i.aeu = phi i32 [ %.pre.i.i470.us, %._crit_edge.i.i469.us ], [ %i.adg, %bb.gq ] ; 3 uses
  %i.aev = add nsw i32 %i.aeu, 1                  ; 2 uses
  store i32 %i.aev, ptr %i.db, align 8, !tbaa !82
  %i.aew = sext i32 %i.aeu to i64
  %i.aex = getelementptr inbounds i8, ptr %i.df, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !50 ; 4 uses
  %.not22.i.i461.us = icmp eq i8 %i.aey, -1
  br i1 %.not22.i.i461.us, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  store i32 1, ptr %i.da, align 4, !tbaa !83
  store i32 %i.aeu, ptr %i.dd, align 8, !tbaa !87
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.aez = load i32, ptr %i.dc, align 8, !tbaa !79
  %.not23.i.i462.us = icmp slt i32 %i.aev, %i.aez
  br i1 %.not23.i.i462.us, label %next_segment.exit.i463.us, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  store i32 -1, ptr %i.db, align 8, !tbaa !82
  br label %next_segment.exit.i463.us

next_segment.exit.i463.us:                        ; preds = %bb.hp, %bb.ho
  store i8 %i.aey, ptr %i.cz, align 4, !tbaa !86
  %.not7.i464.us = icmp eq i8 %i.aey, 0
  br i1 %.not7.i464.us, label %prep_huffman.exit.i374.us, label %.thread612.us

.thread612.us:                                    ; preds = %next_segment.exit.i463.us, %bb.gp, %bb.go
  %i.afa = phi i8 [ %i.aey, %next_segment.exit.i463.us ], [ %.pr611.us, %bb.gp ], [ %.pr611.us, %bb.go ]
  %i.afb = add i8 %i.afa, -1
  store i8 %i.afb, ptr %i.cz, align 4, !tbaa !86
  %i.afc = load i32, ptr %i.dg, align 4, !tbaa !85
  %i.afd = add nsw i32 %i.afc, 1
  store i32 %i.afd, ptr %i.dg, align 4, !tbaa !85
  %i.afe = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i455.us = icmp eq ptr %i.afe, null
  br i1 %.not.i8.i455.us, label %bb.ht, label %bb.hq

bb.hq:                                            ; preds = %.thread612.us
  %i.aff = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i456.us = icmp ult ptr %i.afe, %i.aff
  br i1 %.not11.i.i456.us, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit472.thread618.us

bb.hs:                                            ; preds = %bb.hq
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afe, i64 1
  store ptr %i.afg, ptr %i.dh, align 8, !tbaa !70
  %i.afh = load i8, ptr %i.afe, align 1, !tbaa !50
  br label %get8_packet_raw.exit472.us

bb.ht:                                            ; preds = %.thread612.us
  %i.afi = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.afj = call i32 @fgetc(ptr noundef %i.afi)    ; 2 uses
  %i.afk = icmp eq i32 %i.afj, -1
  br i1 %i.afk, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.afl = trunc i32 %i.afj to i8
  br label %get8_packet_raw.exit472.us

get8_packet_raw.exit472.us:                       ; preds = %bb.hu, %bb.hs
  %.1.i.i458.us = phi i8 [ %i.afl, %bb.hu ], [ %i.afh, %bb.hs ]
  %i.afm = zext i8 %.1.i.i458.us to i32
  br label %get8_packet_raw.exit472.thread618.us

bb.hv:                                            ; preds = %bb.ht
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit472.thread618.us

get8_packet_raw.exit472.thread618.us:             ; preds = %bb.hv, %get8_packet_raw.exit472.us, %bb.hr
  %i.afn = phi i32 [ %i.afm, %get8_packet_raw.exit472.us ], [ 0, %bb.hr ], [ 0, %bb.hv ]
  %i.afo = load i32, ptr %i.cx, align 8, !tbaa !84 ; 3 uses
  %i.afp = shl i32 %i.afn, %i.afo
  %i.afq = load i32, ptr %i.cy, align 4, !tbaa !88
  %i.afr = add i32 %i.afq, %i.afp
  store i32 %i.afr, ptr %i.cy, align 4, !tbaa !88
  %i.afs = add nsw i32 %i.afo, 8
  store i32 %i.afs, ptr %i.cx, align 8, !tbaa !84
  %i.aft = icmp slt i32 %i.afo, 17
  br i1 %i.aft, label %bb.gn, label %prep_huffman.exit.i374.us, !llvm.loop !8

bb.hw:                                            ; preds = %bb.hl
  store i32 32, ptr %i.dl, align 4, !tbaa !39
  br label %prep_huffman.exit.i374.us

start_page.exit.thread.i.i471.us.sink.split:      ; preds = %bb.gu, %bb.gz, %bb.he, %bb.hj, %bb.hh, %bb.hc, %bb.gx, %bb.gs
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %start_page.exit.thread.i.i471.us

start_page.exit.thread.i.i471.us:                 ; preds = %get8.exit.i526.us, %get8.exit10.i531.us, %get8.exit14.i536.us, %capture_pattern.exit545.us, %start_page.exit.thread.i.i471.us.sink.split
  store i32 30, ptr %i.dl, align 4, !tbaa !39
  br label %.loopexit649.us

.loopexit649.us:                                  ; preds = %start_page.exit.i.i466.us, %start_page.exit.thread.i.i471.us
  store i32 1, ptr %i.da, align 4, !tbaa !83
  br label %prep_huffman.exit.i374.us

prep_huffman.exit.i374.us:                        ; preds = %bb.go, %next_segment.exit.i463.us, %get8_packet_raw.exit472.thread618.us, %.loopexit649.us, %bb.hw, %bb.gk
  %i.afu = load ptr, ptr %i.zu, align 8, !tbaa !56 ; 2 uses
  %i.afv = icmp eq ptr %i.afu, null
  br i1 %i.afv, label %bb.id, label %.thread.i375.us

.thread.i375.us:                                  ; preds = %prep_huffman.exit.i374.us
  %i.afw = load i32, ptr %i.zv, align 4, !tbaa !62 ; 3 uses
  %i.afx = icmp sgt i32 %i.afw, 8
  br i1 %i.afx, label %bb.hx, label %.thread66.i.us

.thread66.i.us:                                   ; preds = %.thread.i375.us
  %i.afy = icmp sgt i32 %i.afw, 0
  br i1 %i.afy, label %.lr.ph76.i.us, label %._crit_edge77.i

bb.hx:                                            ; preds = %.thread.i375.us
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !60 ; 2 uses
  %.not61.i.us = icmp eq ptr %.pre.i.us, null
  br i1 %.not61.i.us, label %.lr.ph76.i.us, label %.thread96.i.us

.lr.ph76.i.us:                                    ; preds = %bb.hx, %.thread66.i.us
  %i.afz = load ptr, ptr %i.zw, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count.i376.us = zext nneg i32 %i.afw to i64
  br label %bb.hy

bb.hy:                                            ; preds = %bb.ia, %.lr.ph76.i.us
  %indvars.iv.i377.us = phi i64 [ 0, %.lr.ph76.i.us ], [ %indvars.iv.next.i378.us, %bb.ia ] ; 5 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 %indvars.iv.i377.us
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !50 ; 2 uses
  %i.agc = icmp eq i8 %i.agb, -1
  br i1 %i.agc, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.agd = zext i8 %i.agb to i32                  ; 3 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv.i377.us
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !47
  %i.agg = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %notmask.i.us = shl nsw i32 -1, %i.agd
  %i.agh = xor i32 %notmask.i.us, -1
  %i.agi = and i32 %i.agg, %i.agh
  %i.agj = icmp eq i32 %i.agf, %i.agi
  br i1 %i.agj, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %indvars.iv.next.i378.us = add nuw nsw i64 %indvars.iv.i377.us, 1 ; 2 uses
  %exitcond.not.i379.us = icmp eq i64 %indvars.iv.next.i378.us, %wide.trip.count.i376.us
  br i1 %exitcond.not.i379.us, label %._crit_edge77.i, label %bb.hy, !llvm.loop !10

bb.ib:                                            ; preds = %bb.hz
  %i.agk = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %.not62.i.us = icmp slt i32 %i.agk, %i.agd
  br i1 %.not62.i.us, label %codebook_decode_scalar_raw.exit.thread621, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.agl = getelementptr inbounds nuw i8, ptr %i.afz, i64 %indvars.iv.i377.us
  %i.agm = trunc nuw nsw i64 %indvars.iv.i377.us to i32
  %i.agn = lshr i32 %i.agg, %i.agd
  store i32 %i.agn, ptr %i.cy, align 4, !tbaa !88
  %i.ago = load i8, ptr %i.agl, align 1, !tbaa !50
  %i.agp = zext i8 %i.ago to i32
  %i.agq = sub nsw i32 %i.agk, %i.agp
  store i32 %i.agq, ptr %i.cx, align 8, !tbaa !84
  br label %codebook_decode_start.exit.us

bb.id:                                            ; preds = %prep_huffman.exit.i374.us
  %i.agr = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !60 ; 2 uses
  %i.ags = icmp eq ptr %i.agr, null
  br i1 %i.ags, label %.thread.i, label %.thread96.i.us

.thread96.i.us:                                   ; preds = %bb.id, %bb.hx
  %i.agt = phi ptr [ %.pre.i.us, %bb.hx ], [ %i.agr, %bb.id ]
  %i.agu = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %i.agv = call noundef i32 @llvm.bitreverse.i32(i32 %i.agu)
  %i.agw = load i32, ptr %i.zx, align 8, !tbaa !61 ; 2 uses
  %i.agx = icmp sgt i32 %i.agw, 1
  br i1 %i.agx, label %.lr.ph.i380.us, label %._crit_edge.i.us

.lr.ph.i380.us:                                   ; preds = %.thread96.i.us, %.lr.ph.i380.us
  %.072.i.us = phi i32 [ %.1.i.us, %.lr.ph.i380.us ], [ %i.agw, %.thread96.i.us ] ; 2 uses
  %.05471.i.us = phi i32 [ %.155.i.us, %.lr.ph.i380.us ], [ 0, %.thread96.i.us ] ; 2 uses
  %i.agy = lshr i32 %.072.i.us, 1                 ; 3 uses
  %i.agz = add nsw i32 %i.agy, %.05471.i.us       ; 2 uses
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %i.aha
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !47
  %.not65.i.us = icmp ugt i32 %i.ahc, %i.agv      ; 2 uses
  %i.ahd = sub nuw nsw i32 %.072.i.us, %i.agy
  %.155.i.us = select i1 %.not65.i.us, i32 %.05471.i.us, i32 %i.agz ; 2 uses
  %.1.i.us = select i1 %.not65.i.us, i32 %i.agy, i32 %i.ahd ; 2 uses
  %i.ahe = icmp samesign ugt i32 %.1.i.us, 1
  br i1 %i.ahe, label %.lr.ph.i380.us, label %._crit_edge.i.us, !llvm.loop !9

._crit_edge.i.us:                                 ; preds = %.lr.ph.i380.us, %.thread96.i.us
  %.054.lcssa.i.us = phi i32 [ 0, %.thread96.i.us ], [ %.155.i.us, %.lr.ph.i380.us ] ; 2 uses
  %i.ahf = load i8, ptr %i.zy, align 1, !tbaa !55
  %.not63.i.us = icmp eq i8 %i.ahf, 0
  br i1 %.not63.i.us, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %._crit_edge.i.us
  %i.ahg = load ptr, ptr %i.zz, align 8, !tbaa !63
  %i.ahh = sext i32 %.054.lcssa.i.us to i64
  %i.ahi = getelementptr inbounds [4 x i8], ptr %i.ahg, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !47
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %._crit_edge.i.us
  %.2.i.us = phi i32 [ %.054.lcssa.i.us, %._crit_edge.i.us ], [ %i.ahj, %bb.ie ] ; 3 uses
  %i.ahk = load ptr, ptr %i.zw, align 8, !tbaa !57
  %i.ahl = sext i32 %.2.i.us to i64
  %i.ahm = getelementptr inbounds i8, ptr %i.ahk, i64 %i.ahl
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !50
  %i.aho = zext i8 %i.ahn to i32                  ; 3 uses
  %i.ahp = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %.not64.i.us = icmp slt i32 %i.ahp, %i.aho
  br i1 %.not64.i.us, label %codebook_decode_scalar_raw.exit.thread621, label %codebook_decode_scalar_raw.exit.us

codebook_decode_scalar_raw.exit.us:               ; preds = %bb.if
  %8 = lshr i32 %i.agu, %i.aho
  store i32 %8, ptr %i.cy, align 4, !tbaa !88
  %9 = sub nuw nsw i32 %i.ahp, %i.aho
  store i32 %9, ptr %i.cx, align 8, !tbaa !84
  %i.ahq = icmp slt i32 %.2.i.us, 0
  br i1 %i.ahq, label %.thread.i, label %codebook_decode_start.exit.us

bb.ig:                                            ; preds = %prep_huffman.exit.i.us
  %i.ahr = zext nneg i16 %i.ada to i32
  %i.ahs = load ptr, ptr %i.zw, align 8, !tbaa !57
  %i.aht = zext nneg i16 %i.ada to i64
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.aht
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !50
  %i.ahw = zext i8 %i.ahv to i32                  ; 2 uses
  %i.ahx = lshr i32 %i.acw, %i.ahw
  store i32 %i.ahx, ptr %i.cy, align 4, !tbaa !88
  %i.ahy = load i32, ptr %i.cx, align 8, !tbaa !84
  %i.ahz = sub nsw i32 %i.ahy, %i.ahw             ; 2 uses
  %i.aia = icmp slt i32 %i.ahz, 0
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 %i.ahz, i32 0)
  store i32 %spec.select.i.us, ptr %i.cx, align 8, !tbaa !84
  br i1 %i.aia, label %.thread.i, label %codebook_decode_start.exit.us

codebook_decode_start.exit.us:                    ; preds = %bb.ig, %codebook_decode_scalar_raw.exit.us, %bb.ic
  %.025.i.ph.us = phi i32 [ %i.agm, %bb.ic ], [ %i.ahr, %bb.ig ], [ %.2.i.us, %codebook_decode_scalar_raw.exit.us ]
  %i.aib = sub i32 %i.zi, %.154.i.us
  %i.aic = load i32, ptr %i.zk, align 8, !tbaa !91 ; 4 uses
  %spec.select.i36.i.us = call i32 @llvm.smin.i32(i32 %i.aib, i32 %i.aic) ; 6 uses
  %i.aid = mul nsw i32 %i.aic, %.025.i.ph.us      ; 2 uses
  %i.aie = load i8, ptr %i.zp, align 2, !tbaa !92
  %.not.i37.i.us = icmp eq i8 %i.aie, 0
  %i.aif = icmp sgt i32 %spec.select.i36.i.us, 0  ; 2 uses
  br i1 %.not.i37.i.us, label %.preheader.i.i.us, label %.preheader36.i.i.us

.preheader36.i.i.us:                              ; preds = %codebook_decode_start.exit.us
  br i1 %i.aif, label %.lr.ph.i38.i.us, label %.loopexit49.i.us

.lr.ph.i38.i.us:                                  ; preds = %.preheader36.i.i.us
  %i.aig = load ptr, ptr %i.zq, align 8, !tbaa !93
  %i.aih = sext i32 %i.aid to i64
  %wide.trip.count.i.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 2 uses
  %invariant.gep.i.i.us = getelementptr [4 x i8], ptr %i.aig, i64 %i.aih ; 3 uses
  %xtraiter1059 = and i64 %wide.trip.count.i.i.us, 1
  %i.aii = icmp eq i32 %spec.select.i36.i.us, 1
  br i1 %i.aii, label %.epil.preheader1058, label %.lr.ph.i38.i.us.new

.lr.ph.i38.i.us.new:                              ; preds = %.lr.ph.i38.i.us
  %unroll_iter1063 = and i64 %wide.trip.count.i.i.us, 2147483646
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ih, %.lr.ph.i38.i.us.new
  %indvars.iv.i39.i.us = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %indvars.iv.next.i41.i.us.1, %bb.ih ] ; 4 uses
  %.03039.i.i.us = phi float [ 0.000000e+00, %.lr.ph.i38.i.us.new ], [ %i.aiw, %bb.ih ]
  %niter1064 = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %niter1064.next.1, %bb.ih ]
  %gep.i40.i.us = getelementptr [4 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.i39.i.us
  %i.aij = load float, ptr %gep.i40.i.us, align 4, !tbaa !64
  %i.aik = fadd float %.03039.i.i.us, %i.aij      ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.i39.i.us ; 2 uses
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !64
  %i.ain = fadd float %i.aim, %i.aik
  store float %i.ain, ptr %i.ail, align 4, !tbaa !64
  %i.aio = load float, ptr %i.zr, align 8, !tbaa !94
  %i.aip = fadd float %i.aik, %i.aio
  %indvars.iv.next.i41.i.us = or disjoint i64 %indvars.iv.i39.i.us, 1 ; 2 uses
  %gep.i40.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.next.i41.i.us
  %i.aiq = load float, ptr %gep.i40.i.us.1, align 4, !tbaa !64
  %i.air = fadd float %i.aip, %i.aiq              ; 2 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next.i41.i.us ; 2 uses
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !64
  %i.aiu = fadd float %i.ait, %i.air
  store float %i.aiu, ptr %i.ais, align 4, !tbaa !64
  %i.aiv = load float, ptr %i.zr, align 8, !tbaa !94
  %i.aiw = fadd float %i.air, %i.aiv              ; 2 uses
  %indvars.iv.next.i41.i.us.1 = add nuw nsw i64 %indvars.iv.i39.i.us, 2 ; 2 uses
  %niter1064.next.1 = add i64 %niter1064, 2       ; 2 uses
  %niter1064.ncmp.1 = icmp eq i64 %niter1064.next.1, %unroll_iter1063
  br i1 %niter1064.ncmp.1, label %.loopexit49.i.us.loopexit1032.unr-lcssa, label %bb.ih, !llvm.loop !11

.preheader.i.i.us:                                ; preds = %codebook_decode_start.exit.us
  br i1 %i.aif, label %.lr.ph41.i.i.us, label %.loopexit49.i.us

.lr.ph41.i.i.us:                                  ; preds = %.preheader.i.i.us
  %i.aix = load ptr, ptr %i.zq, align 8, !tbaa !93 ; 2 uses
  %i.aiy = sext i32 %i.aid to i64                 ; 2 uses
  %wide.trip.count47.i.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 7 uses
  %invariant.gep51.i.i.us = getelementptr [4 x i8], ptr %i.aix, i64 %i.aiy ; 5 uses
  %min.iters.check1008 = icmp ult i32 %spec.select.i36.i.us, 8
  br i1 %min.iters.check1008, label %scalar.ph1007.preheader, label %vector.memcheck1001

vector.memcheck1001:                              ; preds = %.lr.ph41.i.i.us
  %i.aiz = add nsw i64 %i.aaa, %wide.trip.count47.i.i.us
  %i.aja = shl nsw i64 %i.aiz, 2
  %scevgep1002 = getelementptr i8, ptr %i.zh, i64 %i.aja
  %i.ajb = add nsw i64 %i.aiy, %wide.trip.count47.i.i.us
  %i.ajc = shl nsw i64 %i.ajb, 2
  %scevgep1003 = getelementptr i8, ptr %i.aix, i64 %i.ajc
  %bound01004 = icmp ult ptr %i.aab, %scevgep1003
  %bound11005 = icmp ult ptr %invariant.gep51.i.i.us, %scevgep1002
  %found.conflict1006 = and i1 %bound01004, %bound11005
  br i1 %found.conflict1006, label %scalar.ph1007.preheader, label %vector.ph1009

vector.ph1009:                                    ; preds = %vector.memcheck1001
  %n.vec1010 = and i64 %wide.trip.count47.i.i.us, 2147483640 ; 3 uses
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %vector.ph1009
  %index1012 = phi i64 [ 0, %vector.ph1009 ], [ %index.next1017, %vector.body1011 ] ; 3 uses
  %i.ajd = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %index1012 ; 2 uses
  %i.aje = getelementptr i8, ptr %i.ajd, i64 16
  %wide.load1013 = load <4 x float>, ptr %i.ajd, align 4, !tbaa !64, !alias.scope !236
  %wide.load1014 = load <4 x float>, ptr %i.aje, align 4, !tbaa !64, !alias.scope !236
  %i.ajf = fadd <4 x float> %wide.load1013, zeroinitializer
  %i.ajg = fadd <4 x float> %wide.load1014, zeroinitializer
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %index1012 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16 ; 2 uses
  %wide.load1015 = load <4 x float>, ptr %i.ajh, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  %wide.load1016 = load <4 x float>, ptr %i.aji, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  %i.ajj = fadd <4 x float> %wide.load1015, %i.ajf
  %i.ajk = fadd <4 x float> %wide.load1016, %i.ajg
  store <4 x float> %i.ajj, ptr %i.ajh, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  store <4 x float> %i.ajk, ptr %i.aji, align 4, !tbaa !64, !alias.scope !237, !noalias !236
  %index.next1017 = add nuw i64 %index1012, 8     ; 2 uses
  %i.ajl = icmp eq i64 %index.next1017, %n.vec1010
  br i1 %i.ajl, label %middle.block1018, label %vector.body1011, !llvm.loop !230

middle.block1018:                                 ; preds = %vector.body1011
  %cmp.n1019 = icmp eq i64 %n.vec1010, %wide.trip.count47.i.i.us
  br i1 %cmp.n1019, label %.loopexit49.i.us, label %scalar.ph1007.preheader

scalar.ph1007.preheader:                          ; preds = %vector.memcheck1001, %.lr.ph41.i.i.us, %middle.block1018
  %indvars.iv44.i.i.us.ph = phi i64 [ 0, %vector.memcheck1001 ], [ 0, %.lr.ph41.i.i.us ], [ %n.vec1010, %middle.block1018 ] ; 5 uses
  %xtraiter1065 = and i64 %wide.trip.count47.i.i.us, 1
  %lcmp.mod1066.not = icmp eq i64 %xtraiter1065, 0
  br i1 %lcmp.mod1066.not, label %scalar.ph1007.prol.loopexit, label %scalar.ph1007.prol

scalar.ph1007.prol:                               ; preds = %scalar.ph1007.preheader
  %gep52.i.i.us.prol = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv44.i.i.us.ph
  %i.ajm = load float, ptr %gep52.i.i.us.prol, align 4, !tbaa !64
  %i.ajn = fadd float %i.ajm, 0.000000e+00
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv44.i.i.us.ph ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !64
  %i.ajq = fadd float %i.ajp, %i.ajn
  store float %i.ajq, ptr %i.ajo, align 4, !tbaa !64
  %indvars.iv.next45.i.i.us.prol = or disjoint i64 %indvars.iv44.i.i.us.ph, 1
  br label %scalar.ph1007.prol.loopexit

scalar.ph1007.prol.loopexit:                      ; preds = %scalar.ph1007.prol, %scalar.ph1007.preheader
  %indvars.iv44.i.i.us.unr = phi i64 [ %indvars.iv44.i.i.us.ph, %scalar.ph1007.preheader ], [ %indvars.iv.next45.i.i.us.prol, %scalar.ph1007.prol ]
  %i.ajr = add nsw i64 %wide.trip.count47.i.i.us, -1
  %i.ajs = icmp eq i64 %indvars.iv44.i.i.us.ph, %i.ajr
  br i1 %i.ajs, label %.loopexit49.i.us, label %scalar.ph1007

scalar.ph1007:                                    ; preds = %scalar.ph1007.prol.loopexit, %scalar.ph1007
  %indvars.iv44.i.i.us = phi i64 [ %indvars.iv.next45.i.i.us.1, %scalar.ph1007 ], [ %indvars.iv44.i.i.us.unr, %scalar.ph1007.prol.loopexit ] ; 4 uses
  %gep52.i.i.us = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv44.i.i.us
  %i.ajt = load float, ptr %gep52.i.i.us, align 4, !tbaa !64
  %i.aju = fadd float %i.ajt, 0.000000e+00
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv44.i.i.us ; 2 uses
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !64
  %i.ajx = fadd float %i.ajw, %i.aju
  store float %i.ajx, ptr %i.ajv, align 4, !tbaa !64
  %indvars.iv.next45.i.i.us = add nuw nsw i64 %indvars.iv44.i.i.us, 1 ; 2 uses
  %gep52.i.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv.next45.i.i.us
  %i.ajy = load float, ptr %gep52.i.i.us.1, align 4, !tbaa !64
  %i.ajz = fadd float %i.ajy, 0.000000e+00
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next45.i.i.us ; 2 uses
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !64
  %i.akc = fadd float %i.akb, %i.ajz
  store float %i.akc, ptr %i.aka, align 4, !tbaa !64
  %indvars.iv.next45.i.i.us.1 = add nuw nsw i64 %indvars.iv44.i.i.us, 2 ; 2 uses
  %exitcond48.not.i.i.us.1 = icmp eq i64 %indvars.iv.next45.i.i.us.1, %wide.trip.count47.i.i.us
  br i1 %exitcond48.not.i.i.us.1, label %.loopexit49.i.us, label %scalar.ph1007, !llvm.loop !231

.loopexit49.i.us.loopexit1032.unr-lcssa:          ; preds = %bb.ih
  %lcmp.mod1061.not = icmp eq i64 %xtraiter1059, 0
  br i1 %lcmp.mod1061.not, label %.loopexit49.i.us, label %.epil.preheader1058

.epil.preheader1058:                              ; preds = %.loopexit49.i.us.loopexit1032.unr-lcssa, %.lr.ph.i38.i.us
  %indvars.iv.i39.i.us.epil.init = phi i64 [ 0, %.lr.ph.i38.i.us ], [ %indvars.iv.next.i41.i.us.1, %.loopexit49.i.us.loopexit1032.unr-lcssa ] ; 2 uses
  %.03039.i.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.us ], [ %i.aiw, %.loopexit49.i.us.loopexit1032.unr-lcssa ]
  %lcmp.mod1062 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1062)
  %gep.i40.i.us.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.i39.i.us.epil.init
  %i.akd = load float, ptr %gep.i40.i.us.epil, align 4, !tbaa !64
  %i.ake = fadd float %.03039.i.i.us.epil.init, %i.akd
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.i39.i.us.epil.init ; 2 uses
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !64
  %i.akh = fadd float %i.akg, %i.ake
  store float %i.akh, ptr %i.akf, align 4, !tbaa !64
  br label %.loopexit49.i.us

.loopexit49.i.us:                                 ; preds = %.epil.preheader1058, %.loopexit49.i.us.loopexit1032.unr-lcssa, %scalar.ph1007.prol.loopexit, %scalar.ph1007, %middle.block1018, %.preheader.i.i.us, %.preheader36.i.i.us
  %i.aki = add nsw i32 %i.aic, %.154.i.us         ; 2 uses
  %i.akj = add nsw i32 %i.aic, %.03153.i.us
  %i.akk = icmp slt i32 %i.aki, %i.zi
  br i1 %i.akk, label %bb.ew, label %.thread629.us710, !llvm.loop !14

.thread629.us710:                                 ; preds = %.loopexit49.i.us, %.preheader.i.us, %bb.ev, %bb.eu
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1 ; 2 uses
  %exitcond791.not = icmp eq i64 %indvars.iv.next788, %wide.trip.count790
  br i1 %exitcond791.not, label %._crit_edge700.split.us711, label %bb.eu, !llvm.loop !225

._crit_edge700.split.us711:                       ; preds = %.thread629.us710
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1 ; 2 uses
  %i.akl = add nsw i32 %.1280704.us, 1            ; 3 uses
  %i.akm = icmp slt i64 %indvars.iv.next793, %i.dq
  %i.akn = icmp slt i32 %i.akl, %i.ac
  %i.ako = select i1 %i.akm, i1 %i.akn, i1 false
  br i1 %i.ako, label %.preheader654.us, label %._crit_edge706, !llvm.loop !226

.preheader654:                                    ; preds = %.preheader654.lr.ph, %.preheader654
  %.1280704 = phi i32 [ %i.akq, %.preheader654 ], [ %.0279721, %.preheader654.lr.ph ]
  %.3308703 = phi i32 [ %i.akp, %.preheader654 ], [ 0, %.preheader654.lr.ph ]
  %i.akp = add nuw nsw i32 %.3308703, 1           ; 2 uses
  %i.akq = add nsw i32 %.1280704, 1               ; 3 uses
  %i.akr = icmp slt i32 %i.akp, %i.r
  %i.aks = icmp slt i32 %i.akq, %i.ac
  %i.akt = select i1 %i.akr, i1 %i.aks, i1 false
  br i1 %i.akt, label %.preheader654, label %._crit_edge706, !llvm.loop !226

._crit_edge77.i405:                               ; preds = %.thread66.i404.us.us.us, %bb.en
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %codebook_decode_scalar_raw.exit434.thread596

codebook_decode_scalar_raw.exit434.thread596:     ; preds = %bb.es, %bb.eo, %._crit_edge77.i405
  store i32 0, ptr %i.cx, align 8, !tbaa !84
  br label %.thread.i364

.thread.i364:                                     ; preds = %bb.et, %codebook_decode_scalar_raw.exit434.us.us.us, %bb.eq, %codebook_decode_scalar_raw.exit434.thread596
  %i.aku = load i8, ptr %i.cz, align 4, !tbaa !86
  %.not.i366 = icmp eq i8 %i.aku, 0
  br i1 %.not.i366, label %bb.ii, label %.thread31.sink.split.i367

bb.ii:                                            ; preds = %.thread.i364
  %i.akv = load i32, ptr %i.da, align 4, !tbaa !83
  %.not27.i369 = icmp eq i32 %i.akv, 0
  br i1 %.not27.i369, label %.thread31.sink.split.i367, label %.thread633

.thread31.sink.split.i367:                        ; preds = %bb.cc, %bb.ii, %.thread.i364
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %.thread633

._crit_edge77.i:                                  ; preds = %.thread66.i.us, %bb.ia
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %codebook_decode_scalar_raw.exit.thread621

codebook_decode_scalar_raw.exit.thread621:        ; preds = %bb.if, %bb.ib, %._crit_edge77.i
  store i32 0, ptr %i.cx, align 8, !tbaa !84
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ig, %codebook_decode_scalar_raw.exit.us, %bb.id, %codebook_decode_scalar_raw.exit.thread621
  %i.akw = load i8, ptr %i.cz, align 4, !tbaa !86
  %.not.i360 = icmp eq i8 %i.akw, 0
  br i1 %.not.i360, label %bb.ij, label %.thread31.sink.split.i

bb.ij:                                            ; preds = %.thread.i
  %i.akx = load i32, ptr %i.da, align 4, !tbaa !83
  %.not27.i = icmp eq i32 %i.akx, 0
  br i1 %.not27.i, label %.thread31.sink.split.i, label %.thread633

.thread31.sink.split.i:                           ; preds = %bb.ew, %bb.ij, %.thread.i
  store i32 21, ptr %i.dl, align 4, !tbaa !39
  br label %.thread633

._crit_edge706:                                   ; preds = %.preheader654, %._crit_edge700.split.us711, %._crit_edge700.split.us.us.us, %.loopexit657
  %.1280.lcssa = phi i32 [ %.0279721, %.loopexit657 ], [ %i.akl, %._crit_edge700.split.us711 ], [ %i.yn, %._crit_edge700.split.us.us.us ], [ %i.akq, %.preheader654 ] ; 2 uses
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803.a, 1
  %i.aky = icmp slt i32 %.1280.lcssa, %i.ac
  br i1 %i.aky, label %bb.ax, label %._crit_edge725, !llvm.loop !232

._crit_edge725:                                   ; preds = %._crit_edge706
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1 ; 2 uses
  %exitcond809.not = icmp eq i64 %indvars.iv.next807, 8
  br i1 %exitcond809.not, label %.thread633, label %.preheader659, !llvm.loop !233

.thread633:                                       ; preds = %._crit_edge725, %bb.bw, %bb.m, %..loopexit641_crit_edge, %..loopexit_crit_edge.us, %.preheader643.split, %.preheader660, %.preheader643.split.us, %.thread31.sink.split.i, %bb.ij, %bb.ii, %.thread31.sink.split.i367, %.thread550, %.thread561, %._crit_edge729
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
  %i.ac = getelementptr inbounds [4 x i8], ptr %.09091, i64 %i.g ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %.08893, i64 -8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !64 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.094, i64 -8 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !64 ; 2 uses
  %i.ah = fsub float %i.ae, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.08893, i64 -12 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !64 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.094, i64 -12 ; 3 uses
end_hunk_2
begin_hunk_3_@start_decoder:bb.a
  %.not1120.2 = icmp sgt i32 %i.agm, %i.agl
  br i1 %.not1120.2, label %bb.gm, label %.critedge1169

bb.gl:                                            ; preds = %bb.gj
  %i.agn = getelementptr inbounds nuw [16 x i8], ptr %i.age, i64 %indvars.iv1652
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 4
  store i16 -1, ptr %i.ago, align 2, !tbaa !59
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.agp = phi ptr [ %i.age, %bb.gl ], [ %i.agi, %bb.gk ] ; 2 uses
  %i.agq = and i32 %i.afk, 8
  %.not1119.3 = icmp eq i32 %i.agq, 0
  br i1 %.not1119.3, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agr = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.ags = trunc i32 %i.agr to i16
  %i.agt = load ptr, ptr %i.afe, align 8, !tbaa !106 ; 2 uses
  %i.agu = getelementptr inbounds nuw [16 x i8], ptr %i.agt, i64 %indvars.iv1652
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 6
  store i16 %i.ags, ptr %i.agv, align 2, !tbaa !59
  %sext.3 = shl i32 %i.agr, 16
  %i.agw = ashr exact i32 %sext.3, 16
  %i.agx = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.3 = icmp sgt i32 %i.agx, %i.agw
  br i1 %.not1120.3, label %bb.gp, label %.critedge1169

bb.go:                                            ; preds = %bb.gm
  %i.agy = getelementptr inbounds nuw [16 x i8], ptr %i.agp, i64 %indvars.iv1652
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 6
  store i16 -1, ptr %i.agz, align 2, !tbaa !59
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.aha = phi ptr [ %i.agp, %bb.go ], [ %i.agt, %bb.gn ] ; 2 uses
  %i.ahb = and i32 %i.afk, 16
  %.not1119.4 = icmp eq i32 %i.ahb, 0
  br i1 %.not1119.4, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ahc = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.ahd = trunc i32 %i.ahc to i16
  %i.ahe = load ptr, ptr %i.afe, align 8, !tbaa !106 ; 2 uses
  %i.ahf = getelementptr inbounds nuw [16 x i8], ptr %i.ahe, i64 %indvars.iv1652
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store i16 %i.ahd, ptr %i.ahg, align 2, !tbaa !59
  %sext.4 = shl i32 %i.ahc, 16
  %i.ahh = ashr exact i32 %sext.4, 16
  %i.ahi = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.4 = icmp sgt i32 %i.ahi, %i.ahh
  br i1 %.not1120.4, label %bb.gs, label %.critedge1169

bb.gr:                                            ; preds = %bb.gp
  %i.ahj = getelementptr inbounds nuw [16 x i8], ptr %i.aha, i64 %indvars.iv1652
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  store i16 -1, ptr %i.ahk, align 2, !tbaa !59
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ahl = phi ptr [ %i.aha, %bb.gr ], [ %i.ahe, %bb.gq ] ; 2 uses
  %i.ahm = and i32 %i.afk, 32
  %.not1119.5 = icmp eq i32 %i.ahm, 0
  br i1 %.not1119.5, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ahn = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.aho = trunc i32 %i.ahn to i16
  %i.ahp = load ptr, ptr %i.afe, align 8, !tbaa !106 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [16 x i8], ptr %i.ahp, i64 %indvars.iv1652
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 10
  store i16 %i.aho, ptr %i.ahr, align 2, !tbaa !59
  %sext.5 = shl i32 %i.ahn, 16
  %i.ahs = ashr exact i32 %sext.5, 16
  %i.aht = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.5 = icmp sgt i32 %i.aht, %i.ahs
  br i1 %.not1120.5, label %bb.gv, label %.critedge1169

bb.gu:                                            ; preds = %bb.gs
  %i.ahu = getelementptr inbounds nuw [16 x i8], ptr %i.ahl, i64 %indvars.iv1652
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 10
  store i16 -1, ptr %i.ahv, align 2, !tbaa !59
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.ahw = phi ptr [ %i.ahl, %bb.gu ], [ %i.ahp, %bb.gt ] ; 2 uses
  %i.ahx = and i32 %i.afk, 64
  %.not1119.6 = icmp eq i32 %i.ahx, 0
  br i1 %.not1119.6, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ahy = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.ahz = trunc i32 %i.ahy to i16
  %i.aia = load ptr, ptr %i.afe, align 8, !tbaa !106 ; 2 uses
  %i.aib = getelementptr inbounds nuw [16 x i8], ptr %i.aia, i64 %indvars.iv1652
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 12
  store i16 %i.ahz, ptr %i.aic, align 2, !tbaa !59
  %sext.6 = shl i32 %i.ahy, 16
  %i.aid = ashr exact i32 %sext.6, 16
  %i.aie = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.6 = icmp sgt i32 %i.aie, %i.aid
  br i1 %.not1120.6, label %bb.gy, label %.critedge1169

bb.gx:                                            ; preds = %bb.gv
  %i.aif = getelementptr inbounds nuw [16 x i8], ptr %i.ahw, i64 %indvars.iv1652
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 12
  store i16 -1, ptr %i.aig, align 2, !tbaa !59
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.aih = phi ptr [ %i.ahw, %bb.gx ], [ %i.aia, %bb.gw ] ; 2 uses
  %.not1119.7 = icmp sgt i8 %i.afj, -1
  br i1 %.not1119.7, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aii = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.aij = trunc i32 %i.aii to i16
  %i.aik = load ptr, ptr %i.afe, align 8, !tbaa !106 ; 2 uses
  %i.ail = getelementptr inbounds nuw [16 x i8], ptr %i.aik, i64 %indvars.iv1652
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 14
  store i16 %i.aij, ptr %i.aim, align 2, !tbaa !59
  %sext.7 = shl i32 %i.aii, 16
  %i.ain = ashr exact i32 %sext.7, 16
  %i.aio = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.7 = icmp sgt i32 %i.aio, %i.ain
  br i1 %.not1120.7, label %bb.hb, label %.critedge1169

bb.ha:                                            ; preds = %bb.gy
  %i.aip = getelementptr inbounds nuw [16 x i8], ptr %i.aih, i64 %indvars.iv1652
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 14
  store i16 -1, ptr %i.aiq, align 2, !tbaa !59
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.air = phi ptr [ %i.aih, %bb.ha ], [ %i.aik, %bb.gz ]
  %indvars.iv.next1653 = add nuw nsw i64 %indvars.iv1652, 1 ; 2 uses
  %i.ais = load i8, ptr %i.aej, align 4, !tbaa !369
  %i.ait = zext i8 %i.ais to i64
  %i.aiu = icmp samesign ult i64 %indvars.iv.next1653, %i.ait
  br i1 %i.aiu, label %.preheader1255, label %._crit_edge1443, !llvm.loop !340

._crit_edge1443:                                  ; preds = %bb.hb, %.preheader1256
  %i.aiv = load ptr, ptr %i.gt, align 8, !tbaa !98
  %i.aiw = load i8, ptr %i.aem, align 1, !tbaa !97
  %i.aix = zext i8 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [2120 x i8], ptr %i.aiv, i64 %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !62
  %i.ajb = shl i32 %i.aja, 3
  %i.ajc = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.ajb) ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ads, i64 16 ; 5 uses
  store ptr %i.ajc, ptr %i.ajd, align 8, !tbaa !103
  %.not1117 = icmp eq ptr %i.ajc, null
  br i1 %.not1117, label %.critedge1169, label %bb.hc

bb.hc:                                            ; preds = %._crit_edge1443
  %i.aje = load ptr, ptr %i.gt, align 8, !tbaa !98
  %i.ajf = load i8, ptr %i.aem, align 1, !tbaa !97
  %i.ajg = zext i8 %i.ajf to i64
  %i.ajh = getelementptr inbounds nuw [2120 x i8], ptr %i.aje, i64 %i.ajg
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !62
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = shl nsw i64 %i.ajk, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ajc, i8 0, i64 %i.ajl, i1 false)
  %i.ajm = load ptr, ptr %i.gt, align 8, !tbaa !98
  %i.ajn = load i8, ptr %i.aem, align 1, !tbaa !97
  %i.ajo = zext i8 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw [2120 x i8], ptr %i.ajm, i64 %i.ajo ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !62
  %i.ajs = icmp sgt i32 %i.ajr, 0
  br i1 %i.ajs, label %.lr.ph1450, label %._crit_edge1451

.lr.ph1450:                                       ; preds = %bb.hc, %._crit_edge1447
  %indvars.iv1658 = phi i64 [ %indvars.iv.next1659, %._crit_edge1447 ], [ 0, %bb.hc ] ; 6 uses
  %i.ajt = phi ptr [ %i.alk, %._crit_edge1447 ], [ %i.ajp, %bb.hc ]
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !91 ; 4 uses
  %i.ajv = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.aju) ; 2 uses
  %i.ajw = load ptr, ptr %i.ajd, align 8, !tbaa !103
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ajw, i64 %indvars.iv1658
  store ptr %i.ajv, ptr %i.ajx, align 8, !tbaa !104
  %.not1118 = icmp eq ptr %i.ajv, null
  br i1 %.not1118, label %.critedge1169, label %.preheader1254

.preheader1254:                                   ; preds = %.lr.ph1450
  %i.ajy = icmp sgt i32 %i.aju, 0
  br i1 %i.ajy, label %.lr.ph1446.preheader, label %._crit_edge1447

.lr.ph1446.preheader:                             ; preds = %.preheader1254
  %i.ajz = zext nneg i32 %i.aju to i64            ; 3 uses
  %i.aka = trunc nuw nsw i64 %indvars.iv1658 to i32 ; 3 uses
  %.pre1707 = load i8, ptr %i.aej, align 4, !tbaa !369 ; 2 uses
  %xtraiter2035 = and i64 %i.ajz, 1
  %lcmp.mod2036.not = icmp eq i64 %xtraiter2035, 0
  br i1 %lcmp.mod2036.not, label %.lr.ph1446.prol.loopexit, label %.lr.ph1446.prol

.lr.ph1446.prol:                                  ; preds = %.lr.ph1446.preheader
  %indvars.iv.next1656.prol = add nsw i64 %i.ajz, -1 ; 2 uses
  %i.akb = zext i8 %.pre1707 to i32
  %2 = urem i32 %i.aka, %i.akb
  %i.akc = trunc nuw i32 %2 to i8
  %i.akd = load ptr, ptr %i.ajd, align 8, !tbaa !103
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.akd, i64 %indvars.iv1658
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !104
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 %indvars.iv.next1656.prol
  store i8 %i.akc, ptr %i.akg, align 1, !tbaa !50
  %i.akh = load i8, ptr %i.aej, align 4, !tbaa !369 ; 2 uses
  %i.aki = zext i8 %i.akh to i32
  %3 = udiv i32 %i.aka, %i.aki
  br label %.lr.ph1446.prol.loopexit

.lr.ph1446.prol.loopexit:                         ; preds = %.lr.ph1446.prol, %.lr.ph1446.preheader
  %.unr = phi i8 [ %.pre1707, %.lr.ph1446.preheader ], [ %i.akh, %.lr.ph1446.prol ]
  %indvars.iv1655.unr = phi i64 [ %i.ajz, %.lr.ph1446.preheader ], [ %indvars.iv.next1656.prol, %.lr.ph1446.prol ]
  %.09391445.unr = phi i32 [ %i.aka, %.lr.ph1446.preheader ], [ %3, %.lr.ph1446.prol ]
  %i.akj = icmp eq i32 %i.aju, 1
  br i1 %i.akj, label %._crit_edge1447, label %.lr.ph1446

.lr.ph1446:                                       ; preds = %.lr.ph1446.prol.loopexit, %.lr.ph1446
  %i.akk = phi i8 [ %i.ald, %.lr.ph1446 ], [ %.unr, %.lr.ph1446.prol.loopexit ]
  %indvars.iv1655 = phi i64 [ %indvars.iv.next1656.1, %.lr.ph1446 ], [ %indvars.iv1655.unr, %.lr.ph1446.prol.loopexit ] ; 3 uses
  %.09391445 = phi i32 [ %i.alf, %.lr.ph1446 ], [ %.09391445.unr, %.lr.ph1446.prol.loopexit ] ; 2 uses
  %i.akl = zext i8 %i.akk to i32
  %i.akm = srem i32 %.09391445, %i.akl
  %i.akn = trunc i32 %i.akm to i8
  %i.ako = load ptr, ptr %i.ajd, align 8, !tbaa !103
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %indvars.iv1658
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !104
  %i.akr = getelementptr i8, ptr %i.akq, i64 %indvars.iv1655
  %i.aks = getelementptr i8, ptr %i.akr, i64 -1
  store i8 %i.akn, ptr %i.aks, align 1, !tbaa !50
  %i.akt = load i8, ptr %i.aej, align 4, !tbaa !369 ; 2 uses
  %i.aku = zext i8 %i.akt to i32
  %i.akv = sdiv i32 %.09391445, %i.aku            ; 2 uses
  %indvars.iv.next1656.1 = add nsw i64 %indvars.iv1655, -2 ; 2 uses
  %i.akw = zext i8 %i.akt to i32
  %i.akx = srem i32 %i.akv, %i.akw
  %i.aky = trunc i32 %i.akx to i8
  %i.akz = load ptr, ptr %i.ajd, align 8, !tbaa !103
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.akz, i64 %indvars.iv1658
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !104
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %indvars.iv.next1656.1
  store i8 %i.aky, ptr %i.alc, align 1, !tbaa !50
  %i.ald = load i8, ptr %i.aej, align 4, !tbaa !369 ; 2 uses
  %i.ale = zext i8 %i.ald to i32
  %i.alf = sdiv i32 %i.akv, %i.ale
  %i.alg = icmp sgt i64 %indvars.iv1655, 2
  br i1 %i.alg, label %.lr.ph1446, label %._crit_edge1447, !llvm.loop !341

._crit_edge1447:                                  ; preds = %.lr.ph1446.prol.loopexit, %.lr.ph1446, %.preheader1254
  %indvars.iv.next1659 = add nuw nsw i64 %indvars.iv1658, 1 ; 2 uses
  %i.alh = load ptr, ptr %i.gt, align 8, !tbaa !98
  %i.ali = load i8, ptr %i.aem, align 1, !tbaa !97
  %i.alj = zext i8 %i.ali to i64
  %i.alk = getelementptr inbounds nuw [2120 x i8], ptr %i.alh, i64 %i.alj ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 4
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !62
  %i.aln = sext i32 %i.alm to i64
  %i.alo = icmp slt i64 %indvars.iv.next1659, %i.aln
  br i1 %i.alo, label %.lr.ph1450, label %._crit_edge1451, !llvm.loop !342

._crit_edge1451:                                  ; preds = %._crit_edge1447, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %indvars.iv.next1662 = add nuw nsw i64 %indvars.iv1661, 1 ; 2 uses
  %i.alp = load i32, ptr %i.adf, align 8, !tbaa !139
  %i.alq = sext i32 %i.alp to i64
  %i.alr = icmp slt i64 %indvars.iv.next1662, %i.alq
  br i1 %i.alr, label %bb.fz, label %._crit_edge1455, !llvm.loop !343

._crit_edge1455:                                  ; preds = %._crit_edge1451, %bb.fy
  %i.als = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.alt = add i32 %i.als, 1                      ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 5 uses
  store i32 %i.alt, ptr %i.alu, align 8, !tbaa !140
  %i.alv = mul i32 %i.alt, 48
  %i.alw = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.alv) ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.alw, ptr %i.alx, align 8, !tbaa !122
  %i.aly = icmp eq ptr %i.alw, null
  br i1 %i.aly, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %._crit_edge1455
  %i.alz = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.alz, align 4, !tbaa !39
  br label %.critedge

bb.he:                                            ; preds = %._crit_edge1455
  %i.ama = load i32, ptr %i.alu, align 8, !tbaa !140
  %i.amb = sext i32 %i.ama to i64
  %i.amc = mul nsw i64 %i.amb, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.alw, i8 0, i64 %i.amc, i1 false)
  %i.amd = load i32, ptr %i.alu, align 8, !tbaa !140
  %i.ame = icmp sgt i32 %i.amd, 0
  br i1 %i.ame, label %.lr.ph1469, label %._crit_edge1470

.lr.ph1469:                                       ; preds = %bb.he, %._crit_edge1465
  %indvars.iv1678 = phi i64 [ %indvars.iv.next1679, %._crit_edge1465 ], [ 0, %bb.he ] ; 2 uses
  %i.amf = load ptr, ptr %i.alx, align 8, !tbaa !122
  %i.amg = getelementptr inbounds nuw [48 x i8], ptr %i.amf, i64 %indvars.iv1678 ; 7 uses
  %i.amh = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %.not1107 = icmp eq i32 %i.amh, 0
  br i1 %.not1107, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph1469
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ami, align 4, !tbaa !39
  br label %.critedge

bb.hg:                                            ; preds = %.lr.ph1469
  %i.amj = load i32, ptr %i.bd, align 4, !tbaa !102
  %i.amk = mul i32 %i.amj, 3
  %i.aml = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.amk) ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amg, i64 8 ; 5 uses
  store ptr %i.aml, ptr %i.amm, align 8, !tbaa !110
  %i.amn = icmp eq ptr %i.aml, null
  br i1 %i.amn, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.amo, align 4, !tbaa !39
  br label %.critedge

bb.hi:                                            ; preds = %bb.hg
  %i.amp = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1108 = icmp eq i32 %i.amp, 0
  br i1 %.not1108, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.amq = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %i.amr = trunc i32 %i.amq to i8
  %i.ams = add i8 %i.amr, 1
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hi, %bb.hj
  %.sink = phi i8 [ %i.ams, %bb.hj ], [ 1, %bb.hi ]
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amg, i64 16 ; 4 uses
  store i8 %.sink, ptr %i.amt, align 8, !tbaa !126
  %i.amu = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1109 = icmp eq i32 %i.amu, 0
  br i1 %.not1109, label %bb.ht, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.amv = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.amw = trunc i32 %i.amv to i16
  %i.amx = add i16 %i.amw, 1                      ; 3 uses
  store i16 %i.amx, ptr %i.amg, align 8, !tbaa !125
  %i.amy = zext i16 %i.amx to i32
  %i.amz = load i32, ptr %i.bd, align 4, !tbaa !102 ; 2 uses
  %i.ana = icmp slt i32 %i.amz, %i.amy
  br i1 %i.ana, label %bb.hm, label %.preheader1252

.preheader1252:                                   ; preds = %bb.hl
  %.not1494 = icmp eq i16 %i.amx, 0
  br i1 %.not1494, label %.loopexit1253, label %.lr.ph1457

bb.hm:                                            ; preds = %bb.hl
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.anb, align 4, !tbaa !39
  br label %.critedge

bb.hn:                                            ; preds = %bb.hr
  %indvars.iv.next1665 = add nuw nsw i64 %indvars.iv1664, 1 ; 2 uses
  %i.anc = load i16, ptr %i.amg, align 8, !tbaa !125
  %i.and = zext i16 %i.anc to i64
  %i.ane = icmp samesign ult i64 %indvars.iv.next1665, %i.and
  br i1 %i.ane, label %.lr.ph1457, label %.loopexit1253, !llvm.loop !344

.lr.ph1457:                                       ; preds = %.preheader1252, %bb.hn
  %i.anf = phi i32 [ %i.anw, %bb.hn ], [ %i.amz, %.preheader1252 ]
  %indvars.iv1664 = phi i64 [ %indvars.iv.next1665, %bb.hn ], [ 0, %.preheader1252 ] ; 3 uses
  %i.ang = add nsw i32 %i.anf, -1
  %i.anh = call i32 @ilog(i32 noundef %i.ang)
  %i.ani = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.anh)
  %i.anj = trunc i32 %i.ani to i8
  %i.ank = load ptr, ptr %i.amm, align 8, !tbaa !110
  %i.anl = getelementptr inbounds nuw [3 x i8], ptr %i.ank, i64 %indvars.iv1664
  store i8 %i.anj, ptr %i.anl, align 1, !tbaa !127
  %i.anm = load i32, ptr %i.bd, align 4, !tbaa !102
  %i.ann = add nsw i32 %i.anm, -1
  %i.ano = call i32 @ilog(i32 noundef %i.ann)
  %i.anp = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.ano) ; 2 uses
  %i.anq = trunc i32 %i.anp to i8                 ; 2 uses
  %i.anr = load ptr, ptr %i.amm, align 8, !tbaa !110
  %i.ans = getelementptr inbounds nuw [3 x i8], ptr %i.anr, i64 %indvars.iv1664 ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  store i8 %i.anq, ptr %i.ant, align 1, !tbaa !128
  %i.anu = load i8, ptr %i.ans, align 1, !tbaa !127 ; 2 uses
  %i.anv = zext i8 %i.anu to i32
  %i.anw = load i32, ptr %i.bd, align 4, !tbaa !102 ; 3 uses
  %.not1114 = icmp sgt i32 %i.anw, %i.anv
  br i1 %.not1114, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph1457
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.anx, align 4, !tbaa !39
  br label %.critedge

bb.hp:                                            ; preds = %.lr.ph1457
  %i.any = and i32 %i.anp, 255
  %.not1115 = icmp samesign ugt i32 %i.anw, %i.any
  br i1 %.not1115, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.anz, align 4, !tbaa !39
  br label %.critedge

bb.hr:                                            ; preds = %bb.hp
  %i.aoa = icmp eq i8 %i.anu, %i.anq
end_hunk_3
