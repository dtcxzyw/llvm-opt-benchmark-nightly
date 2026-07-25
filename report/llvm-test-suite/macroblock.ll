inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 103
begin_hunk_0_@IntraChromaPrediction:bb.a
.lr.ph460.new:                                    ; preds = %.lr.ph460
  %unroll_iter = and i64 %wide.trip.count566, 2147483646
  br label %bb.f

.preheader454.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader454, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader454.loopexit.unr-lcssa, %.lr.ph460
  %indvars.iv563.epil.init = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next564.1, %.preheader454.loopexit.unr-lcssa ]
  %.sroa.0.0457.epil.init = phi i32 [ 1, %.lr.ph460 ], [ %i.bz, %.preheader454.loopexit.unr-lcssa ]
  %lcmp.mod881 = trunc i32 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod881)
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv563.epil.init ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !222
  %.not377.epil = icmp eq i32 %i.at, 0
  br i1 %.not377.epil, label %.preheader454, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !224
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = and i32 %i.az, %.sroa.0.0457.epil.init
  br label %.preheader454

.preheader454:                                    ; preds = %.preheader454.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.d
  %.sroa.0.0.lcssa = phi i32 [ 1, %bb.d ], [ %i.bz, %.preheader454.loopexit.unr-lcssa ], [ %i.ba, %bb.e ], [ 0, %.epil.preheader ] ; 2 uses
  %i.bb = icmp sgt i32 %i.m, 0
  br i1 %i.bb, label %.lr.ph464, label %._crit_edge465

.lr.ph464:                                        ; preds = %.preheader454
  %i.bc = load ptr, ptr @img, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 14240
  %i.be = zext nneg i32 %i.am to i64
  br label %bb.k

bb.f:                                             ; preds = %bb.j, %.lr.ph460.new
  %indvars.iv563 = phi i64 [ 0, %.lr.ph460.new ], [ %indvars.iv.next564.1, %bb.j ] ; 2 uses
  %.sroa.0.0457 = phi i32 [ 1, %.lr.ph460.new ], [ %i.bz, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph460.new ], [ %niter.next.1, %bb.j ]
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv563 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !222
  %.not377 = icmp eq i32 %i.bh, 0
  br i1 %.not377, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !224
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = and i32 %i.bn, %.sroa.0.0457
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bp = phi i32 [ %i.bo, %bb.g ], [ 0, %bb.f ]
  %indvars.iv.next564.1 = add nuw nsw i64 %indvars.iv563, 2 ; 3 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next564.1 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 16, !tbaa !222
  %.not377.1 = icmp eq i32 %i.br, 0
  br i1 %.not377.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !224
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = and i32 %i.bx, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader454.loopexit.unr-lcssa, label %bb.f, !llvm.loop !225

bb.k:                                             ; preds = %.lr.ph464, %bb.m
  %indvars.iv568 = phi i64 [ %i.be, %.lr.ph464 ], [ %indvars.iv.next569, %bb.m ]
  %.sroa.16.0462 = phi i32 [ 1, %.lr.ph464 ], [ %i.cj, %bb.m ]
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next569 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !222
  %.not376 = icmp eq i32 %i.cb, 0
  br i1 %.not376, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.bd, align 8, !tbaa !157
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !224
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = and i32 %i.ch, %.sroa.16.0462
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.ck = trunc nuw i64 %indvars.iv.next569 to i32
  %i.cl = icmp sgt i32 %i.m, %i.ck
  br i1 %i.cl, label %bb.k, label %._crit_edge465, !llvm.loop !226

._crit_edge465:                                   ; preds = %bb.m, %.preheader454
  %.sroa.16.0.lcssa = phi i32 [ 1, %.preheader454 ], [ %i.cj, %bb.m ] ; 2 uses
  %.not363 = icmp eq i32 %i.x, 0
  br i1 %.not363, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge465
  %i.cm = load ptr, ptr @img, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 14240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !157
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !224
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge465, %._crit_edge
  %.0352 = phi i32 [ %i.w, %._crit_edge ], [ %i.al, %._crit_edge465 ], [ %i.al, %bb.n ] ; 3 uses
  %.sroa.16.1 = phi i32 [ %i.z, %._crit_edge ], [ %.sroa.16.0.lcssa, %._crit_edge465 ], [ %.sroa.16.0.lcssa, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i32 [ %i.z, %._crit_edge ], [ %.sroa.0.0.lcssa, %._crit_edge465 ], [ %.sroa.0.0.lcssa, %bb.n ] ; 3 uses
  %.0351 = phi i32 [ %i.x, %._crit_edge ], [ 0, %._crit_edge465 ], [ %i.ct, %bb.n ] ; 2 uses
  %.not364 = icmp eq ptr %0, null
  br i1 %.not364, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.0352, ptr %0, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not365 = icmp eq ptr %1, null
  br i1 %.not365, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp ne i32 %.sroa.0.1, 0
  %i.cv = icmp ne i32 %.sroa.16.1, 0
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %1, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not366 = icmp eq ptr %2, null
  br i1 %.not366, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.0351, ptr %2, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cy = icmp ne i32 %.0352, 0                   ; 5 uses
  %i.cz = icmp ne i32 %.sroa.0.1, 0
  %i.da = icmp ne i32 %.sroa.16.1, 0
  %or.cond8 = select i1 %i.cz, i1 %i.da, i1 false ; 5 uses
  %i.db = sext i32 %i.p to i64                    ; 3 uses
  %i.dc = getelementptr inbounds [32 x i8], ptr @subblk_offset_y, i64 %i.db
  %i.dd = getelementptr inbounds [32 x i8], ptr @subblk_offset_x, i64 %i.db
  %i.de = getelementptr inbounds [64 x i8], ptr @IntraChromaPrediction.block_pos, i64 %i.db
  %.not425 = icmp eq i32 %.0352, 0                ; 24 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not427 = icmp eq i32 %.sroa.16.1, 0           ; 12 uses
  %.not374 = icmp eq i32 %.sroa.0.1, 0            ; 12 uses
  %i.dh = sext i32 %i.k to i64                    ; 2 uses
  %i.di = shl nsw i64 %i.dh, 1                    ; 4 uses
  %i.dj = icmp slt i32 %i.m, 1                    ; 6 uses
  %i.dk = icmp slt i32 %i.k, 1                    ; 4 uses
  %i.dl = icmp ne i32 %.0351, 0                   ; 2 uses
  %or.cond15 = select i1 %i.cy, i1 %i.dl, i1 false
  %i.dm = ashr i32 %i.k, 1                        ; 8 uses
  %i.dn = getelementptr [2 x i8], ptr %i.a, i64 %i.dh
  %i.do = getelementptr i8, ptr %i.dn, i64 -2
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dr = add nsw i32 %i.dm, -1
  %i.ds = icmp sgt i32 %i.dm, 1
  %i.dt = add nsw i32 %i.dm, -2
  %i.du = ashr i32 %i.m, 1                        ; 7 uses
  %i.dv = sext i32 %i.m to i64
  %i.dw = getelementptr [2 x i8], ptr %i.b, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -2
  %i.dy = add nsw i32 %i.du, -1
  %i.dz = icmp sgt i32 %i.du, 1
  %i.ea = add nsw i32 %i.du, -2
  %i.eb = icmp eq i32 %i.k, 8                     ; 2 uses
  %i.ec = select i1 %i.eb, i32 17, i32 5
  %i.ed = shl nsw i32 %i.k, 1
  %i.ee = select i1 %i.eb, i32 5, i32 6
  %i.ef = icmp eq i32 %i.m, 8                     ; 2 uses
  %i.eg = select i1 %i.ef, i32 17, i32 5
  %i.eh = shl nsw i32 %i.m, 1                     ; 2 uses
  %i.ei = select i1 %i.ef, i32 5, i32 6
  %5 = sext i32 %i.dm to i64
  %6 = sext i32 %i.dt to i64                      ; 2 uses
  %7 = sext i32 %i.du to i64
  %8 = sext i32 %i.ea to i64                      ; 2 uses
  %wide.trip.count665 = zext i32 %i.m to i64      ; 7 uses
  %wide.trip.count680 = zext i32 %i.k to i64      ; 3 uses
  %wide.trip.count685 = zext i32 %i.dr to i64     ; 3 uses
  %invariant.gep798 = getelementptr [2 x i8], ptr %i.a, i64 %5 ; 2 uses
  %wide.trip.count690 = zext i32 %i.dy to i64     ; 3 uses
  %invariant.gep800 = getelementptr [2 x i8], ptr %i.b, i64 %7 ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.m to i64
  %wide.trip.count696 = zext nneg i32 %i.k to i64
  %i.ej = add nsw i64 %wide.trip.count665, -1     ; 3 uses
  %xtraiter882 = and i64 %wide.trip.count665, 1
  %i.ek = icmp eq i64 %i.ej, 0
  %unroll_iter885 = and i64 %wide.trip.count665, 2147483646
  %lcmp.mod883.not = icmp eq i64 %xtraiter882, 0
  %lcmp.mod884 = trunc i32 %i.m to i1
  %xtraiter887 = and i64 %wide.trip.count665, 1
  %i.el = icmp eq i64 %i.ej, 0
  %unroll_iter890 = and i64 %wide.trip.count665, 4294967294
  %lcmp.mod888.not = icmp eq i64 %xtraiter887, 0
  %lcmp.mod889 = trunc i32 %i.m to i1
  %brmerge861 = or i1 %i.dk, %i.dj
  %xtraiter893 = and i64 %wide.trip.count665, 3   ; 3 uses
  %i.em = icmp ult i64 %i.ej, 3
  %unroll_iter896 = and i64 %wide.trip.count665, 4294967292
  %lcmp.mod894.not = icmp eq i64 %xtraiter893, 0
  %lcmp.mod895 = icmp ne i64 %xtraiter893, 0
  %min.iters.check838 = icmp ult i32 %i.dm, 9
  %n.vec841 = and i64 %wide.trip.count685, 4294967288 ; 3 uses
  %cmp.n858 = icmp eq i64 %n.vec841, %wide.trip.count685
  %min.iters.check820 = icmp ult i32 %i.du, 9
  %n.vec823 = and i64 %wide.trip.count690, 4294967288 ; 3 uses
  %cmp.n835 = icmp eq i64 %n.vec823, %wide.trip.count690
  %invariant.op909 = sub i32 1, %i.du
  %min.iters.check = icmp ult i32 %i.k, 8
  %n.vec = and i64 %wide.trip.count680, 2147483640 ; 3 uses
  %broadcast.splatinsert813 = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat814 = shufflevector <8 x i32> %broadcast.splatinsert813, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op = sub <8 x i32> splat (i32 1), %broadcast.splat814
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count680
  %invariant.op908 = sub i32 1, %i.dm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread410
  %i.en = phi i1 [ true, %bb.u ], [ false, %.thread410 ]
  %indvars.iv704 = phi i64 [ 0, %bb.u ], [ 1, %.thread410 ] ; 7 uses
  %i.eo = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6472
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !206
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv704
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !41 ; 70 uses
  %i.et = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 15528
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !227
  %i.ew = ashr i32 %i.ev, 1                       ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.preheader450.lr.ph, label %._crit_edge487

.preheader450.lr.ph:                              ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 15516
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !228 ; 20 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 8528
  %i.fb = getelementptr inbounds nuw [2048 x i8], ptr %i.fa, i64 %indvars.iv704 ; 16 uses
  %wide.trip.count660 = zext nneg i32 %i.ew to i64
  br label %.preheader450

.preheader450:                                    ; preds = %.preheader450.lr.ph, %.thread385.3
  %indvars.iv657 = phi i64 [ 0, %.preheader450.lr.ph ], [ %indvars.iv.next658, %.thread385.3 ] ; 4 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv657 ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv657 ; 4 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv657 ; 4 uses
  %i.ff = load i32, ptr %i.df, align 4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fg ; 16 uses
  %i.fi = load i32, ptr %i.dg, align 4
  %i.fj = sext i32 %i.fi to i64                   ; 16 uses
  %i.fk = load i8, ptr %i.fc, align 4, !tbaa !69  ; 5 uses
  %i.fl = load i8, ptr %i.fd, align 4, !tbaa !69  ; 5 uses
  %i.fm = load i32, ptr %i.fe, align 16, !tbaa !4
  switch i32 %i.fm, label %.thread385 [
    i32 0, label %bb.w
    i32 1, label %bb.z
    i32 2, label %bb.ad
    i32 3, label %bb.ah
  ]

bb.w:                                             ; preds = %.preheader450
  br i1 %.not425, label %.thread413, label %.preheader438

.preheader438:                                    ; preds = %bb.w
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !146
  %i.fo = zext i8 %i.fl to i64
  %i.fp = getelementptr [2 x i8], ptr %i.fn, i64 %i.fj
  %i.fq = getelementptr [2 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load <4 x i16>, ptr %i.fq, align 2, !tbaa !179
  %i.fs = zext <4 x i16> %i.fr to <4 x i32>
  %i.ft = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fs) ; 2 uses
  br i1 %.not374, label %.thread382, label %.preheader437

.thread413:                                       ; preds = %bb.w
  br i1 %.not374, label %.thread385, label %.preheader437

.preheader437:                                    ; preds = %.preheader438, %.thread413
  %.1415.ph = phi i32 [ 0, %.thread413 ], [ %i.ft, %.preheader438 ]
  %i.fu = zext i8 %i.fk to i64                    ; 4 uses
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 44
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !229
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !146
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !230
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.ga, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !179
  %i.gg = zext i16 %i.gf to i32
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fu ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 68
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !229
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !146
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !230
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.gm, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !179
  %i.gs = zext i16 %i.gr to i32
  %i.gt = add nuw nsw i32 %i.gg, %i.gs
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fu ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 92
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !229
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !146
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 88
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !230
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !179
  %i.hf = zext i16 %i.he to i32
  %i.hg = add nuw nsw i32 %i.gt, %i.hf
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fu ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 116
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !229
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !146
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !230
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !179
  %i.hs = zext i16 %i.hr to i32
  %i.ht = add nuw nsw i32 %i.hg, %i.hs            ; 2 uses
  br i1 %.not425, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader437
  %i.hu = add nuw nsw i32 %.1415.ph, 4
  %i.hv = add nuw nsw i32 %i.hu, %i.ht
  %i.hw = lshr i32 %i.hv, 3
  br label %.thread385

.thread382:                                       ; preds = %.preheader438
  %i.hx = add nuw nsw i32 %i.ft, 2
  %i.hy = lshr i32 %i.hx, 2
  br label %.thread385

bb.y:                                             ; preds = %.preheader437
  %i.hz = add nuw nsw i32 %i.ht, 2
  %i.ia = lshr i32 %i.hz, 2
  br label %.thread385

bb.z:                                             ; preds = %.preheader450
  br i1 %.not425, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %.not374, label %.thread385, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ib = load ptr, ptr %i.fh, align 8, !tbaa !146
  %i.ic = zext i8 %i.fl to i64
  %i.id = getelementptr [2 x i8], ptr %i.ib, i64 %i.fj
  %i.ie = getelementptr [2 x i8], ptr %i.id, i64 %i.ic
  %i.if = load <4 x i16>, ptr %i.ie, align 2, !tbaa !179
  %i.ig = zext <4 x i16> %i.if to <4 x i32>
  %i.ih = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ig)
  %op.rdx867 = add nuw nsw i32 %i.ih, 2
  %i.ii = lshr i32 %op.rdx867, 2
  br label %.thread385

bb.ac:                                            ; preds = %bb.aa
  %i.ij = zext i8 %i.fk to i64                    ; 4 uses
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 44
  %i.im = load i32, ptr %i.il, align 4, !tbaa !229
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !146
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !230
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [2 x i8], ptr %i.ip, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !179
  %i.iv = zext i16 %i.iu to i32
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.ij ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 68
end_hunk_0
begin_hunk_1_@IntraChromaPrediction:bb.a
  %niter886 = phi i64 [ %niter886.next.1, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ]
  %i.awi = load ptr, ptr @img, align 8, !tbaa !8
  %i.awj = getelementptr inbounds nuw [2048 x i8], ptr %i.awi, i64 %indvars.iv704
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 9552
  %i.awl = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awl, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %i.awm = load ptr, ptr @img, align 8, !tbaa !8
  %i.awn = getelementptr inbounds nuw [2048 x i8], ptr %i.awm, i64 %indvars.iv704
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 9584
  %i.awp = getelementptr inbounds nuw [32 x i8], ptr %i.awo, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awp, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %indvars.iv.next663.1 = add nuw nsw i64 %indvars.iv662, 2 ; 2 uses
  %niter886.next.1 = add i64 %niter886, 2         ; 2 uses
  %niter886.ncmp.1 = icmp eq i64 %niter886.next.1, %unroll_iter885
  br i1 %niter886.ncmp.1, label %.loopexit453.thread790.unr-lcssa, label %.lr.ph490, !llvm.loop !232

.loopexit453:                                     ; preds = %._crit_edge487
  br i1 %or.cond8, label %.preheader452, label %.thread410

.loopexit453.thread790.unr-lcssa:                 ; preds = %.lr.ph490
  br i1 %lcmp.mod883.not, label %.loopexit453.thread790, label %.lr.ph490.epil.preheader

.lr.ph490.epil.preheader:                         ; preds = %.loopexit453.thread790.unr-lcssa, %.lr.ph490.preheader
  %indvars.iv662.epil.init = phi i64 [ 0, %.lr.ph490.preheader ], [ %indvars.iv.next663.1, %.loopexit453.thread790.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod884)
  %i.awq = load ptr, ptr @img, align 8, !tbaa !8
  %i.awr = getelementptr inbounds nuw [2048 x i8], ptr %i.awq, i64 %indvars.iv704
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 9552
  %i.awt = getelementptr inbounds nuw [32 x i8], ptr %i.aws, i64 %indvars.iv662.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awt, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  br label %.loopexit453.thread790

.loopexit453.thread790:                           ; preds = %.loopexit453.thread790.unr-lcssa, %.lr.ph490.epil.preheader
  br i1 %or.cond8, label %.lr.ph492.preheader, label %.thread410

.loopexit453.thread:                              ; preds = %bb.ca
  br i1 %or.cond8, label %.preheader451, label %.thread410

.preheader452:                                    ; preds = %.loopexit453
  br i1 %i.dj, label %.preheader451, label %.lr.ph492.preheader

.lr.ph492.preheader:                              ; preds = %.loopexit453.thread790, %.preheader452
  br i1 %i.el, label %.lr.ph492.epil.preheader, label %.lr.ph492

.preheader451:                                    ; preds = %.loopexit453.thread, %.preheader452
  br i1 %brmerge861, label %._crit_edge497.split, label %.preheader449.preheader

.preheader451.thread.unr-lcssa:                   ; preds = %.lr.ph492
  br i1 %lcmp.mod888.not, label %.preheader451.thread, label %.lr.ph492.epil.preheader

.lr.ph492.epil.preheader:                         ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.preheader
  %indvars.iv667.epil.init = phi i64 [ 0, %.lr.ph492.preheader ], [ %indvars.iv.next668.1, %.preheader451.thread.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod889)
  %i.awu = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv667.epil.init ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 44
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !229
  %i.awx = sext i32 %i.aww to i64
  %i.awy = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.awx
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !146
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awu, i64 40
  %i.axb = load i32, ptr %i.axa, align 8, !tbaa !230
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds [2 x i8], ptr %i.awz, i64 %i.axc
  %i.axe = load i16, ptr %i.axd, align 2, !tbaa !179
  %i.axf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667.epil.init
  store i16 %i.axe, ptr %i.axf, align 2, !tbaa !179
  br label %.preheader451.thread

.preheader451.thread:                             ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.epil.preheader
  br i1 %i.dk, label %._crit_edge497.split, label %.preheader449.preheader

.preheader449.preheader:                          ; preds = %.preheader451, %.preheader451.thread
  %.pn804 = load ptr, ptr @img, align 8
  %.pn = getelementptr inbounds nuw [2048 x i8], ptr %.pn804, i64 %indvars.iv704
  %i.axg = getelementptr inbounds nuw i8, ptr %.pn, i64 9040
  br label %.preheader449

.lr.ph492:                                        ; preds = %.lr.ph492.preheader, %.lr.ph492
  %indvars.iv667 = phi i64 [ %indvars.iv.next668.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ] ; 3 uses
  %niter891 = phi i64 [ %niter891.next.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ]
  %indvars.iv.next668 = or disjoint i64 %indvars.iv667, 1 ; 2 uses
  %i.axh = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 20
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !229
  %i.axk = sext i32 %i.axj to i64
  %i.axl = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.axk
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !146
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axh, i64 16
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !230
  %i.axp = sext i32 %i.axo to i64
  %i.axq = getelementptr inbounds [2 x i8], ptr %i.axm, i64 %i.axp
  %i.axr = load i16, ptr %i.axq, align 2, !tbaa !179
  %i.axs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667
  store i16 %i.axr, ptr %i.axs, align 4, !tbaa !179
  %indvars.iv.next668.1 = add nuw nsw i64 %indvars.iv667, 2 ; 3 uses
  %i.axt = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668.1 ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 20
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !229
  %i.axw = sext i32 %i.axv to i64
  %i.axx = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.axw
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !146
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axt, i64 16
  %i.aya = load i32, ptr %i.axz, align 16, !tbaa !230
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = getelementptr inbounds [2 x i8], ptr %i.axy, i64 %i.ayb
  %i.ayd = load i16, ptr %i.ayc, align 2, !tbaa !179
  %i.aye = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next668
  store i16 %i.ayd, ptr %i.aye, align 2, !tbaa !179
  %niter891.next.1 = add nuw i64 %niter891, 2     ; 2 uses
  %niter891.ncmp.1 = icmp eq i64 %niter891.next.1, %unroll_iter890
  br i1 %niter891.ncmp.1, label %.preheader451.thread.unr-lcssa, label %.lr.ph492, !llvm.loop !233

.preheader449:                                    ; preds = %.preheader449.preheader, %._crit_edge495
  %indvars.iv677 = phi i64 [ 0, %.preheader449.preheader ], [ %indvars.iv.next678, %._crit_edge495 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.axg, i64 %indvars.iv677 ; 5 uses
  br i1 %i.em, label %.epil.preheader892, label %.preheader449.new

.preheader449.new:                                ; preds = %.preheader449, %.preheader449.new
  %indvars.iv672 = phi i64 [ %indvars.iv.next673.3, %.preheader449.new ], [ 0, %.preheader449 ] ; 6 uses
  %niter897 = phi i64 [ %niter897.next.3, %.preheader449.new ], [ 0, %.preheader449 ]
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672
  %i.ayg = load i16, ptr %i.ayf, align 8, !tbaa !179
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672
  store i16 %i.ayg, ptr %gep, align 2, !tbaa !179
  %indvars.iv.next673 = or disjoint i64 %indvars.iv672, 1 ; 2 uses
  %i.ayh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673
  %i.ayi = load i16, ptr %i.ayh, align 2, !tbaa !179
  %gep.1 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673
  store i16 %i.ayi, ptr %gep.1, align 2, !tbaa !179
  %indvars.iv.next673.1 = or disjoint i64 %indvars.iv672, 2 ; 2 uses
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.1
  %i.ayk = load i16, ptr %i.ayj, align 4, !tbaa !179
  %gep.2 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.1
  store i16 %i.ayk, ptr %gep.2, align 2, !tbaa !179
  %indvars.iv.next673.2 = or disjoint i64 %indvars.iv672, 3 ; 2 uses
  %i.ayl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.2
  %i.aym = load i16, ptr %i.ayl, align 2, !tbaa !179
  %gep.3 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.2
  store i16 %i.aym, ptr %gep.3, align 2, !tbaa !179
  %indvars.iv.next673.3 = add nuw nsw i64 %indvars.iv672, 4 ; 2 uses
  %niter897.next.3 = add i64 %niter897, 4         ; 2 uses
  %niter897.ncmp.3 = icmp eq i64 %niter897.next.3, %unroll_iter896
  br i1 %niter897.ncmp.3, label %._crit_edge495.unr-lcssa, label %.preheader449.new, !llvm.loop !234

._crit_edge495.unr-lcssa:                         ; preds = %.preheader449.new
  br i1 %lcmp.mod894.not, label %._crit_edge495, label %.epil.preheader892

.epil.preheader892:                               ; preds = %._crit_edge495.unr-lcssa, %.preheader449
  %indvars.iv672.epil.init = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next673.3, %._crit_edge495.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod895)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.epil.preheader892
  %indvars.iv672.epil = phi i64 [ %indvars.iv672.epil.init, %.epil.preheader892 ], [ %indvars.iv.next673.epil, %bb.cb ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader892 ], [ %epil.iter.next, %bb.cb ]
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672.epil
  %i.ayo = load i16, ptr %i.ayn, align 2, !tbaa !179
  %gep.epil = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672.epil
  store i16 %i.ayo, ptr %gep.epil, align 2, !tbaa !179
  %indvars.iv.next673.epil = add nuw nsw i64 %indvars.iv672.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter893
  br i1 %epil.iter.cmp.not, label %._crit_edge495, label %bb.cb, !llvm.loop !235

._crit_edge495:                                   ; preds = %bb.cb, %._crit_edge495.unr-lcssa
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge497.split, label %.preheader449, !llvm.loop !237

._crit_edge497.split:                             ; preds = %._crit_edge495, %.preheader451, %.preheader451.thread
  br i1 %or.cond15, label %bb.cc, label %.thread410

bb.cc:                                            ; preds = %._crit_edge497.split
  %i.ayp = load i16, ptr %i.do, align 2, !tbaa !179
  %i.ayq = zext i16 %i.ayp to i32                 ; 2 uses
  %i.ayr = load i32, ptr %i.dp, align 4, !tbaa !229
  %i.ays = sext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ays
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !146
  %i.ayv = load i32, ptr %i.dq, align 16, !tbaa !230
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = getelementptr inbounds [2 x i8], ptr %i.ayu, i64 %i.ayw
  %i.ayy = load i16, ptr %i.ayx, align 2, !tbaa !179
  %i.ayz = zext i16 %i.ayy to i32                 ; 2 uses
  %i.aza = sub nsw i32 %i.ayq, %i.ayz
  %i.azb = mul nsw i32 %i.aza, %i.dm              ; 3 uses
  br i1 %i.ds, label %.lr.ph501.preheader, label %._crit_edge502

.lr.ph501.preheader:                              ; preds = %bb.cc
  br i1 %min.iters.check838, label %.lr.ph501.preheader871, label %vector.ph839

vector.ph839:                                     ; preds = %.lr.ph501.preheader
  %i.azc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.azb, i64 0
  br label %vector.body842

vector.body842:                                   ; preds = %vector.body842, %vector.ph839
  %index843 = phi i64 [ 0, %vector.ph839 ], [ %index.next854, %vector.body842 ] ; 3 uses
  %vec.ind844 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph839 ], [ %vec.ind.next855, %vector.body842 ] ; 3 uses
  %vec.phi845 = phi <4 x i32> [ %i.azc, %vector.ph839 ], [ %i.azv, %vector.body842 ]
  %vec.phi846 = phi <4 x i32> [ zeroinitializer, %vector.ph839 ], [ %i.azw, %vector.body842 ]
  %i.azd = getelementptr [2 x i8], ptr %invariant.gep798, i64 %index843 ; 2 uses
  %i.aze = getelementptr i8, ptr %i.azd, i64 8
  %wide.load848 = load <4 x i16>, ptr %i.azd, align 2, !tbaa !179
  %wide.load849 = load <4 x i16>, ptr %i.aze, align 2, !tbaa !179
  %i.azf = zext <4 x i16> %wide.load848 to <4 x i32>
  %i.azg = zext <4 x i16> %wide.load849 to <4 x i32>
  %i.azh = sub nsw i64 %6, %index843
  %i.azi = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.azh ; 2 uses
  %i.azj = getelementptr inbounds i8, ptr %i.azi, i64 -6
  %i.azk = getelementptr inbounds i8, ptr %i.azi, i64 -14
  %wide.load850 = load <4 x i16>, ptr %i.azj, align 2, !tbaa !179
  %wide.load851 = load <4 x i16>, ptr %i.azk, align 2, !tbaa !179
  %reverse852 = shufflevector <4 x i16> %wide.load850, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse853 = shufflevector <4 x i16> %wide.load851, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.azl = zext <4 x i16> %reverse852 to <4 x i32>
  %i.azm = zext <4 x i16> %reverse853 to <4 x i32>
  %i.azn = sub nsw <4 x i32> %i.azf, %i.azl
  %i.azo = sub nsw <4 x i32> %i.azg, %i.azm
  %i.azp = trunc <4 x i64> %vec.ind844 to <4 x i32>
  %i.azq = add <4 x i32> %i.azp, splat (i32 1)
  %i.azr = trunc <4 x i64> %vec.ind844 to <4 x i32>
  %i.azs = add <4 x i32> %i.azr, splat (i32 5)
  %i.azt = mul nsw <4 x i32> %i.azn, %i.azq
  %i.azu = mul nsw <4 x i32> %i.azo, %i.azs
  %i.azv = add <4 x i32> %i.azt, %vec.phi845      ; 2 uses
  %i.azw = add <4 x i32> %i.azu, %vec.phi846      ; 2 uses
  %index.next854 = add nuw i64 %index843, 8       ; 2 uses
  %vec.ind.next855 = add nuw <4 x i64> %vec.ind844, splat (i64 8)
  %i.azx = icmp eq i64 %index.next854, %n.vec841
  br i1 %i.azx, label %middle.block856, label %vector.body842, !llvm.loop !238

middle.block856:                                  ; preds = %vector.body842
  %bin.rdx857 = add <4 x i32> %i.azw, %i.azv
  %i.azy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx857) ; 2 uses
  br i1 %cmp.n858, label %._crit_edge502, label %.lr.ph501.preheader871

.lr.ph501.preheader871:                           ; preds = %.lr.ph501.preheader, %middle.block856
  %indvars.iv682.ph = phi i64 [ 0, %.lr.ph501.preheader ], [ %n.vec841, %middle.block856 ]
  %.0350498.ph = phi i32 [ %i.azb, %.lr.ph501.preheader ], [ %i.azy, %middle.block856 ]
  br label %.lr.ph501

.lr.ph501:                                        ; preds = %.lr.ph501.preheader871, %.lr.ph501
  %indvars.iv682 = phi i64 [ %indvars.iv.next683, %.lr.ph501 ], [ %indvars.iv682.ph, %.lr.ph501.preheader871 ] ; 3 uses
  %.0350498 = phi i32 [ %i.bai, %.lr.ph501 ], [ %.0350498.ph, %.lr.ph501.preheader871 ]
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 3 uses
  %gep799 = getelementptr [2 x i8], ptr %invariant.gep798, i64 %indvars.iv682
  %i.azz = load i16, ptr %gep799, align 2, !tbaa !179
  %i.baa = zext i16 %i.azz to i32
  %i.bab = sub nsw i64 %6, %indvars.iv682
  %i.bac = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bab
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !179
  %i.bae = zext i16 %i.bad to i32
  %i.baf = sub nsw i32 %i.baa, %i.bae
  %i.bag = trunc nuw nsw i64 %indvars.iv.next683 to i32
  %i.bah = mul nsw i32 %i.baf, %i.bag
  %i.bai = add nsw i32 %i.bah, %.0350498          ; 2 uses
  %exitcond686.not = icmp eq i64 %indvars.iv.next683, %wide.trip.count685
  br i1 %exitcond686.not, label %._crit_edge502, label %.lr.ph501, !llvm.loop !241

._crit_edge502:                                   ; preds = %.lr.ph501, %middle.block856, %bb.cc
  %.0350.lcssa = phi i32 [ %i.azb, %bb.cc ], [ %i.azy, %middle.block856 ], [ %i.bai, %.lr.ph501 ]
  %i.baj = load i16, ptr %i.dx, align 2, !tbaa !179
  %i.bak = zext i16 %i.baj to i32                 ; 2 uses
  %i.bal = sub nsw i32 %i.bak, %i.ayz
  %i.bam = mul nsw i32 %i.bal, %i.du              ; 3 uses
  br i1 %i.dz, label %.lr.ph507.preheader, label %._crit_edge508

.lr.ph507.preheader:                              ; preds = %._crit_edge502
  br i1 %min.iters.check820, label %.lr.ph507.preheader870, label %vector.ph821

vector.ph821:                                     ; preds = %.lr.ph507.preheader
  %i.ban = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bam, i64 0
  br label %vector.body824

vector.body824:                                   ; preds = %vector.body824, %vector.ph821
  %index825 = phi i64 [ 0, %vector.ph821 ], [ %index.next832, %vector.body824 ] ; 3 uses
  %vec.ind826 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph821 ], [ %vec.ind.next833, %vector.body824 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ban, %vector.ph821 ], [ %i.bbg, %vector.body824 ]
  %vec.phi827 = phi <4 x i32> [ zeroinitializer, %vector.ph821 ], [ %i.bbh, %vector.body824 ]
  %i.bao = getelementptr [2 x i8], ptr %invariant.gep800, i64 %index825 ; 2 uses
  %i.bap = getelementptr i8, ptr %i.bao, i64 8
  %wide.load = load <4 x i16>, ptr %i.bao, align 2, !tbaa !179
  %wide.load828 = load <4 x i16>, ptr %i.bap, align 2, !tbaa !179
  %i.baq = zext <4 x i16> %wide.load to <4 x i32>
  %i.bar = zext <4 x i16> %wide.load828 to <4 x i32>
  %i.bas = sub nsw i64 %8, %index825
  %i.bat = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.bas ; 2 uses
  %i.bau = getelementptr inbounds i8, ptr %i.bat, i64 -6
  %i.bav = getelementptr inbounds i8, ptr %i.bat, i64 -14
  %wide.load829 = load <4 x i16>, ptr %i.bau, align 2, !tbaa !179
  %wide.load830 = load <4 x i16>, ptr %i.bav, align 2, !tbaa !179
  %reverse = shufflevector <4 x i16> %wide.load829, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse831 = shufflevector <4 x i16> %wide.load830, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.baw = zext <4 x i16> %reverse to <4 x i32>
  %i.bax = zext <4 x i16> %reverse831 to <4 x i32>
  %i.bay = sub nsw <4 x i32> %i.baq, %i.baw
  %i.baz = sub nsw <4 x i32> %i.bar, %i.bax
  %i.bba = trunc <4 x i64> %vec.ind826 to <4 x i32>
  %i.bbb = add <4 x i32> %i.bba, splat (i32 1)
  %i.bbc = trunc <4 x i64> %vec.ind826 to <4 x i32>
  %i.bbd = add <4 x i32> %i.bbc, splat (i32 5)
  %i.bbe = mul nsw <4 x i32> %i.bay, %i.bbb
  %i.bbf = mul nsw <4 x i32> %i.baz, %i.bbd
  %i.bbg = add <4 x i32> %i.bbe, %vec.phi         ; 2 uses
  %i.bbh = add <4 x i32> %i.bbf, %vec.phi827      ; 2 uses
  %index.next832 = add nuw i64 %index825, 8       ; 2 uses
  %vec.ind.next833 = add nuw <4 x i64> %vec.ind826, splat (i64 8)
  %i.bbi = icmp eq i64 %index.next832, %n.vec823
  br i1 %i.bbi, label %middle.block834, label %vector.body824, !llvm.loop !242

middle.block834:                                  ; preds = %vector.body824
  %bin.rdx = add <4 x i32> %i.bbh, %i.bbg
  %i.bbj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n835, label %._crit_edge508.thread, label %.lr.ph507.preheader870

.lr.ph507.preheader870:                           ; preds = %.lr.ph507.preheader, %middle.block834
  %indvars.iv687.ph = phi i64 [ 0, %.lr.ph507.preheader ], [ %n.vec823, %middle.block834 ]
  %.0349504.ph = phi i32 [ %i.bam, %.lr.ph507.preheader ], [ %i.bbj, %middle.block834 ]
  br label %.lr.ph507

.lr.ph507:                                        ; preds = %.lr.ph507.preheader870, %.lr.ph507
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %.lr.ph507 ], [ %indvars.iv687.ph, %.lr.ph507.preheader870 ] ; 3 uses
  %.0349504 = phi i32 [ %i.bbt, %.lr.ph507 ], [ %.0349504.ph, %.lr.ph507.preheader870 ]
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 3 uses
  %gep801 = getelementptr [2 x i8], ptr %invariant.gep800, i64 %indvars.iv687
  %i.bbk = load i16, ptr %gep801, align 2, !tbaa !179
  %i.bbl = zext i16 %i.bbk to i32
  %i.bbm = sub nsw i64 %8, %indvars.iv687
  %i.bbn = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.bbm
  %i.bbo = load i16, ptr %i.bbn, align 2, !tbaa !179
  %i.bbp = zext i16 %i.bbo to i32
  %i.bbq = sub nsw i32 %i.bbl, %i.bbp
  %i.bbr = trunc nuw nsw i64 %indvars.iv.next688 to i32
  %i.bbs = mul nsw i32 %i.bbq, %i.bbr
  %i.bbt = add nsw i32 %i.bbs, %.0349504          ; 2 uses
  %exitcond691.not = icmp eq i64 %indvars.iv.next688, %wide.trip.count690
  br i1 %exitcond691.not, label %._crit_edge508.thread, label %.lr.ph507, !llvm.loop !243

._crit_edge508.thread:                            ; preds = %.lr.ph507, %middle.block834
  %.lcssa810 = phi i32 [ %i.bbj, %middle.block834 ], [ %i.bbt, %.lr.ph507 ]
  %i.bbu = mul nsw i32 %.lcssa810, %i.eg
  %i.bbv = add nsw i32 %i.bbu, %i.eh
  %i.bbw = ashr i32 %i.bbv, %i.ei
  br label %.preheader448.lr.ph

._crit_edge508:                                   ; preds = %._crit_edge502
  %i.bbx = mul nsw i32 %i.bam, 5
  %i.bby = add nsw i32 %i.bbx, %i.eh
  %i.bbz = ashr i32 %i.bby, 6
  br i1 %i.dj, label %.thread410, label %.preheader448.lr.ph

.preheader448.lr.ph:                              ; preds = %._crit_edge508.thread, %._crit_edge508
  %i.bca = phi i32 [ %i.bbw, %._crit_edge508.thread ], [ %i.bbz, %._crit_edge508 ]
  %.pn806 = mul nsw i32 %.0350.lcssa, %i.ec
  %.pn805 = add nsw i32 %.pn806, %i.ed
  %i.bcb = ashr i32 %.pn805, %i.ee                ; 2 uses
  %i.bcc = add nuw nsw i32 %i.bak, %i.ayq
  %i.bcd = shl nuw nsw i32 %i.bcc, 4
  %i.bce = load ptr, ptr @img, align 8            ; 2 uses
  %i.bcf = add nuw nsw i32 %i.bcd, 16
  %i.bcg = getelementptr inbounds nuw [2048 x i8], ptr %i.bce, i64 %indvars.iv704
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 10064
  br i1 %i.dk, label %.thread410, label %.preheader448.lr.ph.split

.preheader448.lr.ph.split:                        ; preds = %.preheader448.lr.ph
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bce, i64 15524
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !213 ; 2 uses
  %broadcast.splatinsert815 = insertelement <8 x i32> poison, i32 %i.bcb, i64 0
  %broadcast.splat816 = shufflevector <8 x i32> %broadcast.splatinsert815, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert817 = insertelement <8 x i32> poison, i32 %i.bcj, i64 0
  %broadcast.splat818 = shufflevector <8 x i32> %broadcast.splatinsert817, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader448

.preheader448:                                    ; preds = %.preheader448.lr.ph.split, %._crit_edge512
  %indvars.iv698 = phi i64 [ 0, %.preheader448.lr.ph.split ], [ %indvars.iv.next699, %._crit_edge512 ] ; 3 uses
  %i.bck = trunc i64 %indvars.iv698 to i32
  %.reass.reass.reass.reass = add i32 %i.bck, %invariant.op909
  %i.bcl = mul nsw i32 %.reass.reass.reass.reass, %i.bca
  %i.bcm = add i32 %i.bcf, %i.bcl                 ; 2 uses
  %i.bcn = getelementptr inbounds nuw [32 x i8], ptr %i.bch, i64 %indvars.iv698 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader448
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bcm, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.reass907 = add <8 x i32> %vec.ind, %invariant.op
  %i.bco = mul nsw <8 x i32> %.reass907, %broadcast.splat816
  %i.bcp = add <8 x i32> %broadcast.splat, %i.bco
  %i.bcq = ashr <8 x i32> %i.bcp, splat (i32 5)
  %i.bcr = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bcq, <8 x i32> zeroinitializer)
  %i.bcs = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bcr, <8 x i32> %broadcast.splat818)
  %i.bct = trunc <8 x i32> %i.bcs to <8 x i16>
  %i.bcu = getelementptr inbounds nuw [2 x i8], ptr %i.bcn, i64 %index
  store <8 x i16> %i.bct, ptr %i.bcu, align 2, !tbaa !179
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bcv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bcv, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge512, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader448, %middle.block
  %indvars.iv692.ph = phi i64 [ 0, %.preheader448 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %scalar.ph ], [ %indvars.iv692.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bcw = trunc i64 %indvars.iv692 to i32
  %.reass.reass = add i32 %i.bcw, %invariant.op908
  %i.bcx = mul nsw i32 %.reass.reass, %i.bcb
  %i.bcy = add i32 %i.bcm, %i.bcx
  %i.bcz = ashr i32 %i.bcy, 5
  %i.bda = call noundef i32 @llvm.smax.i32(i32 %i.bcz, i32 0)
  %i.bdb = call noundef i32 @llvm.smin.i32(i32 %i.bda, i32 %i.bcj)
  %i.bdc = trunc i32 %i.bdb to i16
  %i.bdd = getelementptr inbounds nuw [2 x i8], ptr %i.bcn, i64 %indvars.iv692
  store i16 %i.bdc, ptr %i.bdd, align 2, !tbaa !179
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %exitcond697.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count696
  br i1 %exitcond697.not, label %._crit_edge512, label %scalar.ph, !llvm.loop !245

._crit_edge512:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next699, %wide.trip.count702
  br i1 %exitcond703.not, label %.thread410, label %.preheader448, !llvm.loop !246

.thread410:                                       ; preds = %._crit_edge512, %.loopexit453.thread790, %.loopexit453.thread, %._crit_edge508, %.preheader448.lr.ph, %.loopexit453, %._crit_edge497.split
  br i1 %i.en, label %bb.v, label %bb.cd, !llvm.loop !247

bb.cd:                                            ; preds = %.thread410
  %i.bde = load ptr, ptr @input, align 8, !tbaa !8
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 4168
  %i.bdg = load i32, ptr %i.bdf, align 8, !tbaa !248
  %.not367 = icmp eq i32 %i.bdg, 0
  br i1 %.not367, label %.preheader435, label %bb.co

.preheader435:                                    ; preds = %bb.cd
  br i1 %i.dj, label %.preheader434, label %.lr.ph517.preheader

.lr.ph517.preheader:                              ; preds = %.preheader435
  %wide.trip.count710 = zext nneg i32 %i.m to i64
  br label %.lr.ph517

.preheader434:                                    ; preds = %.lr.ph517, %.preheader435
  %or.cond27 = select i1 %or.cond8, i1 %i.cy, i1 false
  %or.cond29 = select i1 %or.cond27, i1 %i.dl, i1 false
  %brmerge = select i1 %i.dj, i1 true, i1 %i.dk
  br label %bb.ce

.lr.ph517:                                        ; preds = %.lr.ph517.preheader, %.lr.ph517
  %indvars.iv707 = phi i64 [ 0, %.lr.ph517.preheader ], [ %indvars.iv.next708, %.lr.ph517 ] ; 3 uses
  %i.bdh = load ptr, ptr @getNeighbour, align 8, !tbaa !8
  %i.bdi = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv707
  %i.bdj = trunc nuw nsw i64 %indvars.iv707 to i32
  call void %i.bdh(i32 noundef %i.g, i32 noundef 0, i32 noundef %i.bdj, i32 noundef 1, ptr noundef nonnull %i.bdi) #17
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count710
  br i1 %exitcond711.not, label %.preheader434, label %.lr.ph517, !llvm.loop !249

bb.ce:                                            ; preds = %.preheader434, %bb.cm
  %indvars.iv751 = phi i64 [ 0, %.preheader434 ], [ %indvars.iv.next752, %bb.cm ] ; 7 uses
  %.0328541 = phi i32 [ 2147483647, %.preheader434 ], [ %.1329, %bb.cm ] ; 6 uses
  %.0333540 = phi i32 [ 0, %.preheader434 ], [ %.1334, %bb.cm ] ; 5 uses
  %i.bdk = load ptr, ptr @img, align 8, !tbaa !8
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 20
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !55
  %.not368 = icmp eq i32 %i.bdm, 2
  %.pre = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  br i1 %.not368, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.bdn = getelementptr inbounds nuw i8, ptr %.pre, i64 4048
  %i.bdo = load i32, ptr %i.bdn, align 8, !tbaa !250
  %.not369 = icmp eq i32 %i.bdo, 0
  br i1 %.not369, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.bdp = getelementptr inbounds nuw i8, ptr %.pre, i64 4072
  %i.bdq = load i32, ptr %i.bdp, align 8, !tbaa !251
  %i.bdr = icmp ne i32 %i.bdq, 1
  %i.bds = icmp eq i64 %indvars.iv751, 0
  %or.cond17.not544 = or i1 %i.bds, %i.bdr
  %i.bdt = icmp ne i64 %indvars.iv751, 2
  %or.cond19 = select i1 %i.bdt, i1 true, i1 %i.cy
  %or.cond = select i1 %or.cond17.not544, i1 %or.cond19, i1 false
  br i1 %or.cond, label %bb.ci, label %bb.cm

bb.ch:                                            ; preds = %bb.cf
  %.old = icmp ne i64 %indvars.iv751, 2
  %or.cond19.old = select i1 %.old, i1 true, i1 %i.cy
  br i1 %or.cond19.old, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.bdu = trunc nuw nsw i64 %indvars.iv751 to i32 ; 2 uses
  switch i32 %i.bdu, label %bb.cl [
    i32 1, label %bb.cj
    i32 3, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.ci
  br i1 %or.cond8, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  br i1 %or.cond29, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ck
  br i1 %brmerge, label %.split537.us, label %.preheader433.lr.ph.us.us.preheader

.preheader433.lr.ph.us.us.preheader:              ; preds = %bb.cl
  %i.bdv = load ptr, ptr @imgUV_org, align 8, !tbaa !43
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !41 ; 4 uses
  br label %.preheader433.us.us.us

.preheader433.us.us.us:                           ; preds = %._crit_edge524.us.us.us, %.preheader433.lr.ph.us.us.preheader
  %indvars.iv722 = phi i64 [ %indvars.iv.next723, %._crit_edge524.us.us.us ], [ 0, %.preheader433.lr.ph.us.us.preheader ] ; 6 uses
  %.1331527.us.us.us = phi i32 [ %i.bgv, %._crit_edge524.us.us.us ], [ 0, %.preheader433.lr.ph.us.us.preheader ]
  %i.bdx = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv722 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 20
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdx, i64 16
end_hunk_1
