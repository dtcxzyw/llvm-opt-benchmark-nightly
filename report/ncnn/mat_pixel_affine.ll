Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_affine?download=true
inline.NumInlined: 228
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij:bb.a
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !14
  %i.ch = add nsw i32 %i.cg, %i.bx
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0598.0613697, i64 %i.cb
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !14
  %i.ck = add nsw i32 %i.cj, %i.bo
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0590.0703, i64 %i.cb
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !14
  %i.cn = add nsw i32 %i.cm, %i.bx
  %i.co = ashr i32 %i.ce, 10                      ; 2 uses
  %.sroa.speculated538 = tail call i32 @llvm.smax.i32(i32 %i.co, i32 -32768)
  %.sroa.speculated534 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated538, i32 32767) ; 2 uses
  %i.cp = ashr i32 %i.ch, 10                      ; 2 uses
  %.sroa.speculated527 = tail call i32 @llvm.smax.i32(i32 %i.cp, i32 -32768)
  %.sroa.speculated523 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated527, i32 32767) ; 2 uses
  %i.cq = ashr i32 %i.ck, 10                      ; 2 uses
  %.sroa.speculated516 = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 -32768)
  %.sroa.speculated512 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated516, i32 32767) ; 2 uses
  %i.cr = ashr i32 %i.cn, 10                      ; 2 uses
  %.sroa.speculated505 = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 -32768)
  %.sroa.speculated501 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated505, i32 32767) ; 2 uses
  %i.cs = and i32 %.sroa.speculated534, 65535
  %i.ct = icmp slt i32 %i.cs, %i.ao
  br i1 %i.ct, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph636
  %i.cu = and i32 %.sroa.speculated523, 65535
  %i.cv = icmp slt i32 %i.cu, %i.ap
  %i.cw = and i32 %.sroa.speculated512, 65535
  %i.cx = icmp samesign ult i32 %i.cw, %i.ao
  %or.cond380 = select i1 %i.cv, i1 %i.cx, i1 false
  %i.cy = and i32 %.sroa.speculated501, 65535
  %i.cz = icmp slt i32 %i.cy, %i.ap
  %or.cond382 = select i1 %or.cond380, i1 %i.cz, i1 false
  br i1 %or.cond382, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph636
  %i.da = icmp slt i32 %i.co, -1
  %i.db = icmp slt i32 %i.cq, -1
  %or.cond = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not356 = icmp slt i32 %.sroa.speculated534, %1
  %.not357 = icmp slt i32 %.sroa.speculated512, %1
  %or.cond383 = select i1 %.not356, i1 true, i1 %.not357
  br i1 %or.cond383, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dc = icmp slt i32 %i.cp, -1
  %i.dd = icmp slt i32 %i.cr, -1
  %or.cond5 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not360 = icmp slt i32 %.sroa.speculated523, %2
  %.not361 = icmp slt i32 %.sroa.speculated501, %2
  %or.cond384 = select i1 %.not360, i1 true, i1 %.not361
  br i1 %or.cond384, label %.critedge386.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.e
  br i1 %.not362, label %.loopexit621, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 4, !tbaa !15
  %i.de = insertelement <8 x i8> poison, i8 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., i64 0
  %i.df = shufflevector <8 x i8> %i.de, <8 x i8> poison, <8 x i32> zeroinitializer
  store <8 x i8> %i.df, ptr %.1635, align 1, !tbaa !15
  br label %.loopexit621

.critedge:                                        ; preds = %bb.d, %.critedge
  %indvars.iv662 = phi i64 [ %indvars.iv.next663, %.critedge ], [ 0, %bb.d ] ; 2 uses
  %.2632 = phi ptr [ %i.fa, %.critedge ], [ %.1635, %bb.d ] ; 2 uses
  %i.dg = or disjoint i64 %indvars.iv662, %indvars.iv666 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0598.0613697, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = add nsw i32 %i.di, %i.bo                ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0590.0703, i64 %i.dg
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !14
  %i.dm = add nsw i32 %i.dl, %i.bx                ; 2 uses
  %i.dn = ashr i32 %i.dj, 10
  %.sroa.speculated494 = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 -32768)
  %.sroa.speculated490 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated494, i32 32767)
  %i.do = ashr i32 %i.dm, 10
  %.sroa.speculated483 = tail call i32 @llvm.smax.i32(i32 %i.do, i32 -32768)
  %.sroa.speculated479 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated483, i32 32767) ; 2 uses
  %i.dp = and i32 %i.dj, 1023                     ; 3 uses
  %i.dq = and i32 %i.dm, 1023                     ; 2 uses
  %i.dr = sub nuw nsw i32 1024, %i.dp             ; 2 uses
  %i.ds = sub nuw nsw i32 1024, %i.dq
  %i.dt = mul nsw i32 %.sroa.speculated479, %3
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %0, i64 %i.du
  %i.dw = sext i32 %.sroa.speculated490 to i64    ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.dz = add nsw i32 %.sroa.speculated479, 1
  %i.ea = mul nsw i32 %i.dz, %3
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %0, i64 %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.dw ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.dx, align 1, !tbaa !15
  %i.eg = zext i8 %i.ef to i32
  %i.eh = mul nuw nsw i32 %i.dr, %i.eg
  %i.ei = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ej = zext i8 %i.ei to i32
  %i.ek = mul nuw nsw i32 %i.dp, %i.ej
  %i.el = add nuw nsw i32 %i.ek, %i.eh
  %i.em = lshr i32 %i.el, 5
  %i.en = mul nuw nsw i32 %i.em, %i.ds
  %i.eo = load i8, ptr %i.ed, align 1, !tbaa !15
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.dr, %i.ep
  %i.er = load i8, ptr %i.ee, align 1, !tbaa !15
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.dp, %i.es
  %i.eu = add nuw nsw i32 %i.et, %i.eq
  %i.ev = lshr i32 %i.eu, 5
  %i.ew = mul nuw nsw i32 %i.ev, %i.dq
  %i.ex = add nuw nsw i32 %i.ew, %i.en
  %i.ey = lshr i32 %i.ex, 15
  %i.ez = trunc nuw i32 %i.ey to i8
  store i8 %i.ez, ptr %.2632, align 1, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %.2632, i64 1 ; 2 uses
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next663, 8
  br i1 %exitcond665.not, label %.loopexit, label %.critedge, !llvm.loop !20

.loopexit621:                                     ; preds = %.preheader.preheader, %bb.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.1635, i64 8
  br label %.loopexit

.critedge386.preheader:                           ; preds = %bb.h, %.critedge386
  %indvars.iv654 = phi i64 [ %indvars.iv.next655, %.critedge386 ], [ 0, %bb.h ] ; 2 uses
  %.3628 = phi ptr [ %i.hf, %.critedge386 ], [ %.1635, %bb.h ] ; 3 uses
  %i.fc = or disjoint i64 %indvars.iv654, %indvars.iv666 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0598.0613697, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !14
  %i.ff = add nsw i32 %i.fe, %i.bo                ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0590.0703, i64 %i.fc
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !14
  %i.fi = add nsw i32 %i.fh, %i.bx                ; 2 uses
  %i.fj = ashr i32 %i.ff, 10                      ; 2 uses
  %.sroa.speculated472 = tail call i32 @llvm.smax.i32(i32 %i.fj, i32 -32768)
  %.sroa.speculated468 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated472, i32 32767) ; 5 uses
  %i.fk = ashr i32 %i.fi, 10                      ; 2 uses
  %.sroa.speculated461 = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 -32768)
  %.sroa.speculated457 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated461, i32 32767) ; 5 uses
  br i1 %.not362, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.critedge386.preheader
  %i.fl = icmp slt i32 %i.fj, -1
  br i1 %i.fl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fm = icmp slt i32 %.sroa.speculated468, %1
  %i.fn = icmp sgt i32 %i.fk, -2
  %or.cond8.not620 = select i1 %i.fm, i1 %i.fn, i1 false
  %.not365 = icmp slt i32 %.sroa.speculated457, %2
  %or.cond387 = select i1 %or.cond8.not620, i1 %.not365, i1 false
  br i1 %or.cond387, label %._crit_edge675, label %bb.l

._crit_edge675:                                   ; preds = %bb.k
  %.pre679 = and i32 %.sroa.speculated468, 65535
  %.pre681 = and i32 %.sroa.speculated457, 65535
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.329 = load i8, ptr %.sroa.0, align 4, !tbaa !15
  br label %.critedge386.sink.split

bb.m:                                             ; preds = %.critedge386.preheader
  %i.fo = and i32 %.sroa.speculated468, 65535     ; 2 uses
  %.not366 = icmp slt i32 %i.fo, %i.ao
  %i.fp = and i32 %.sroa.speculated457, 65535     ; 2 uses
  %.not367 = icmp slt i32 %i.fp, %i.ap
  %or.cond646 = select i1 %.not366, i1 %.not367, i1 false
  br i1 %or.cond646, label %bb.n, label %.critedge386

bb.n:                                             ; preds = %._crit_edge675, %bb.m
  %.pre-phi682 = phi i32 [ %.pre681, %._crit_edge675 ], [ %i.fp, %bb.m ]
  %.pre-phi680 = phi i32 [ %.pre679, %._crit_edge675 ], [ %i.fo, %bb.m ]
  %i.fq = phi ptr [ %.sroa.0, %._crit_edge675 ], [ %.3628, %bb.m ] ; 4 uses
  %i.fr = and i32 %i.ff, 1023                     ; 3 uses
  %i.fs = and i32 %i.fi, 1023                     ; 2 uses
  %i.ft = sub nuw nsw i32 1024, %i.fr             ; 2 uses
  %i.fu = sub nuw nsw i32 1024, %i.fs
  %i.fv = add nsw i32 %.sroa.speculated468, 1
  %i.fw = add nsw i32 %.sroa.speculated457, 1     ; 2 uses
  %i.fx = mul nsw i32 %.sroa.speculated457, %3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %0, i64 %i.fy
  %i.ga = sext i32 %.sroa.speculated468 to i64    ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = mul nsw i32 %i.fw, %3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %0, i64 %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.ga ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %.not370 = icmp slt i32 %.pre-phi680, %1        ; 2 uses
  %.not371 = icmp slt i32 %.pre-phi682, %2        ; 2 uses
  %or.cond388 = select i1 %.not370, i1 %.not371, i1 false
  %.0317 = select i1 %or.cond388, ptr %i.gb, ptr %i.fq
  %i.gi = and i32 %i.fv, 65535
  %.not372 = icmp slt i32 %i.gi, %1               ; 2 uses
  %or.cond389 = select i1 %.not372, i1 %.not371, i1 false
  %.0316 = select i1 %or.cond389, ptr %i.gc, ptr %i.fq
  %i.gj = and i32 %i.fw, 65535
  %.not374 = icmp slt i32 %i.gj, %2               ; 2 uses
  %or.cond390 = select i1 %.not370, i1 %.not374, i1 false
  %.0315 = select i1 %or.cond390, ptr %i.gg, ptr %i.fq
  %or.cond391 = select i1 %.not372, i1 %.not374, i1 false
  %.0314 = select i1 %or.cond391, ptr %i.gh, ptr %i.fq
  %i.gk = load i8, ptr %.0317, align 1, !tbaa !15
  %i.gl = zext i8 %i.gk to i32
  %i.gm = mul nuw nsw i32 %i.ft, %i.gl
  %i.gn = load i8, ptr %.0316, align 1, !tbaa !15
  %i.go = zext i8 %i.gn to i32
  %i.gp = mul nuw nsw i32 %i.fr, %i.go
  %i.gq = add nuw nsw i32 %i.gp, %i.gm
  %i.gr = lshr i32 %i.gq, 5
  %i.gs = mul nuw nsw i32 %i.gr, %i.fu
  %i.gt = load i8, ptr %.0315, align 1, !tbaa !15
  %i.gu = zext i8 %i.gt to i32
  %i.gv = mul nuw nsw i32 %i.ft, %i.gu
  %i.gw = load i8, ptr %.0314, align 1, !tbaa !15
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul nuw nsw i32 %i.fr, %i.gx
  %i.gz = add nuw nsw i32 %i.gy, %i.gv
  %i.ha = lshr i32 %i.gz, 5
  %i.hb = mul nuw nsw i32 %i.ha, %i.fs
  %i.hc = add nuw nsw i32 %i.hb, %i.gs
  %i.hd = lshr i32 %i.hc, 15
  %i.he = trunc nuw i32 %i.hd to i8
  br label %.critedge386.sink.split

.critedge386.sink.split:                          ; preds = %bb.l, %bb.n
  %.sink = phi i8 [ %i.he, %bb.n ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.329, %bb.l ]
  store i8 %.sink, ptr %.3628, align 1, !tbaa !15
  br label %.critedge386

.critedge386:                                     ; preds = %.critedge386.sink.split, %bb.m
  %i.hf = getelementptr inbounds nuw i8, ptr %.3628, i64 1 ; 2 uses
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next655, 8
  br i1 %exitcond657.not, label %.loopexit, label %.critedge386.preheader, !llvm.loop !21

.loopexit:                                        ; preds = %.critedge386, %.critedge, %.loopexit621
  %.4 = phi ptr [ %i.fa, %.critedge ], [ %i.fb, %.loopexit621 ], [ %i.hf, %.critedge386 ] ; 2 uses
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 8 ; 3 uses
  %i.hg = icmp slt i64 %indvars.iv.next667, %invariant.op
  br i1 %i.hg, label %.lr.ph636, label %.preheader623.loopexit, !llvm.loop !22

.lr.ph640:                                        ; preds = %.lr.ph640.preheader, %bb.t
  %indvars.iv669 = phi i64 [ %i.ca, %.lr.ph640.preheader ], [ %indvars.iv.next670, %bb.t ] ; 3 uses
  %.5639 = phi ptr [ %.1.lcssa, %.lr.ph640.preheader ], [ %i.jj, %bb.t ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0598.0613697, i64 %indvars.iv669
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !14
  %i.hj = add nsw i32 %i.hi, %i.bo                ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0590.0703, i64 %indvars.iv669
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !14
  %i.hm = add nsw i32 %i.hl, %i.bx                ; 2 uses
  %i.hn = ashr i32 %i.hj, 10                      ; 2 uses
  %.sroa.speculated450 = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 -32768)
  %.sroa.speculated446 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated450, i32 32767) ; 5 uses
  %i.ho = ashr i32 %i.hm, 10                      ; 2 uses
  %.sroa.speculated439 = tail call i32 @llvm.smax.i32(i32 %i.ho, i32 -32768)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated439, i32 32767) ; 5 uses
  br i1 %.not362, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph640
  %i.hp = icmp slt i32 %i.hn, -1
  br i1 %i.hp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hq = icmp slt i32 %.sroa.speculated446, %1
  %i.hr = icmp sgt i32 %i.ho, -2
  %or.cond11.not617 = select i1 %i.hq, i1 %i.hr, i1 false
  %.not343 = icmp slt i32 %.sroa.speculated, %2
  %or.cond392 = select i1 %or.cond11.not617, i1 %.not343, i1 false
  br i1 %or.cond392, label %._crit_edge676, label %bb.q

._crit_edge676:                                   ; preds = %bb.p
  %.pre = and i32 %.sroa.speculated446, 65535
  %.pre677 = and i32 %.sroa.speculated, 65535
  br label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.330 = load i8, ptr %.sroa.0, align 4, !tbaa !15
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph640
  %i.hs = and i32 %.sroa.speculated446, 65535     ; 2 uses
  %.not344 = icmp slt i32 %i.hs, %i.ao
  %i.ht = and i32 %.sroa.speculated, 65535        ; 2 uses
  %.not345 = icmp slt i32 %i.ht, %i.ap
  %or.cond647 = select i1 %.not344, i1 %.not345, i1 false
  br i1 %or.cond647, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge676, %bb.r
  %.pre-phi678 = phi i32 [ %.pre677, %._crit_edge676 ], [ %i.ht, %bb.r ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge676 ], [ %i.hs, %bb.r ]
  %i.hu = phi ptr [ %.sroa.0, %._crit_edge676 ], [ %.5639, %bb.r ] ; 4 uses
  %i.hv = and i32 %i.hj, 1023                     ; 3 uses
  %i.hw = and i32 %i.hm, 1023                     ; 2 uses
  %i.hx = sub nuw nsw i32 1024, %i.hv             ; 2 uses
  %i.hy = sub nuw nsw i32 1024, %i.hw
  %i.hz = add nsw i32 %.sroa.speculated446, 1
  %i.ia = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %i.ib = mul nsw i32 %.sroa.speculated, %3
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %0, i64 %i.ic
  %i.ie = sext i32 %.sroa.speculated446 to i64    ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.ih = mul nsw i32 %i.ia, %3
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %0, i64 %i.ii
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.ie ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %.not348 = icmp slt i32 %.pre-phi, %1           ; 2 uses
  %.not349 = icmp slt i32 %.pre-phi678, %2        ; 2 uses
  %or.cond393 = select i1 %.not348, i1 %.not349, i1 false
  %.0313 = select i1 %or.cond393, ptr %i.if, ptr %i.hu
  %i.im = and i32 %i.hz, 65535
  %.not350 = icmp slt i32 %i.im, %1               ; 2 uses
  %or.cond394 = select i1 %.not350, i1 %.not349, i1 false
  %.0312 = select i1 %or.cond394, ptr %i.ig, ptr %i.hu
  %i.in = and i32 %i.ia, 65535
  %.not352 = icmp slt i32 %i.in, %2               ; 2 uses
  %or.cond395 = select i1 %.not348, i1 %.not352, i1 false
  %.0311 = select i1 %or.cond395, ptr %i.ik, ptr %i.hu
  %or.cond396 = select i1 %.not350, i1 %.not352, i1 false
  %.0 = select i1 %or.cond396, ptr %i.il, ptr %i.hu
  %i.io = load i8, ptr %.0313, align 1, !tbaa !15
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.hx, %i.ip
  %i.ir = load i8, ptr %.0312, align 1, !tbaa !15
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.hv, %i.is
  %i.iu = add nuw nsw i32 %i.it, %i.iq
  %i.iv = lshr i32 %i.iu, 5
  %i.iw = mul nuw nsw i32 %i.iv, %i.hy
  %i.ix = load i8, ptr %.0311, align 1, !tbaa !15
  %i.iy = zext i8 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.hx, %i.iy
  %i.ja = load i8, ptr %.0, align 1, !tbaa !15
  %i.jb = zext i8 %i.ja to i32
  %i.jc = mul nuw nsw i32 %i.hv, %i.jb
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = mul nuw nsw i32 %i.je, %i.hw
  %i.jg = add nuw nsw i32 %i.jf, %i.iw
  %i.jh = lshr i32 %i.jg, 15
  %i.ji = trunc nuw i32 %i.jh to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.s
  %.sink707 = phi i8 [ %i.ji, %bb.s ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.330, %bb.q ]
  store i8 %.sink707, ptr %.5639, align 1, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %i.jj = getelementptr inbounds nuw i8, ptr %.5639, i64 1 ; 2 uses
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %._crit_edge, label %.lr.ph640, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.t, %.preheader623
  %.5.lcssa = phi ptr [ %.1.lcssa, %.preheader623 ], [ %i.jj, %bb.t ]
  %i.jk = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.aq
  %i.jl = add nuw nsw i32 %.0324642, 1            ; 2 uses
  %exitcond674.not = icmp eq i32 %i.jl, %6
  br i1 %exitcond674.not, label %._crit_edge645, label %bb.c, !llvm.loop !24

._crit_edge645:                                   ; preds = %._crit_edge, %.preheader624
  %.not.i.i.i434 = icmp eq ptr %.sroa.0590.0703, null
  br i1 %.not.i.i.i434, label %_ZNSt6vectorIiSaIiEED2Ev.exit435, label %bb.u

bb.u:                                             ; preds = %._crit_edge645
  %i.jm = ptrtoint ptr %.sroa.0590.0703 to i64
  %i.jn = sub i64 %.sroa.14.0701, %i.jm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0590.0703, i64 noundef %i.jn) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit435

_ZNSt6vectorIiSaIiEED2Ev.exit435:                 ; preds = %._crit_edge645, %bb.u
  %.not.i.i.i436 = icmp eq ptr %.sroa.0598.0613697, null
  br i1 %.not.i.i.i436, label %_ZNSt6vectorIiSaIiEED2Ev.exit437, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit435
  %i.jo = ptrtoint ptr %.sroa.0598.0613697 to i64
  %i.jp = sub i64 %.sroa.15.0611699, %i.jo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0598.0613697, i64 noundef %i.jp) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit437

_ZNSt6vectorIiSaIiEED2Ev.exit437:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit435, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c2EPKhiiPhiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = shl nsw i32 %1, 1
  %i.b = shl nsw i32 %4, 1
  tail call void @_ZN4ncnn22warpaffine_bilinear_c2EPKhiiiPhiiiPKfij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.b, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c2EPKhiiiPhiiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  store i32 %10, ptr %i.a, align 4, !tbaa !14
  %i.b = shl nuw nsw i32 %5, 1
  %i.c = sub nsw i32 %7, %i.b
  %i.d = sext i32 %5 to i64                       ; 5 uses
  %i.e = icmp slt i32 %5, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %.preheader676, label %.noexc435

.noexc435:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #12 ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d
  store i32 0, ptr %i.g, align 4, !tbaa !14
  %i.i = add nsw i64 %i.d, -1                     ; 3 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc435
  %i.k = getelementptr i8, ptr %i.g, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.noexc435, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #12
          to label %.noexc443 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 6 uses

.noexc443:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.d
  store i32 0, ptr %i.l, align 4, !tbaa !14
  br i1 %i.j, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i438

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i438: ; preds = %.noexc443
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %.idx.i.i.i.i.i.i.i439 = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i439, i1 false), !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i438, %.noexc443
  %i.o = load float, ptr %8, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fmul fast <2 x float> %i.s, splat (float 1.024000e+03) ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat766 = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = uitofp nneg <4 x i32> %vec.ind to <4 x float> ; 2 uses
  %i.v = fmul fast <4 x float> %broadcast.splat, %i.u ; 2 uses
  %i.w = fcmp fast oge <4 x float> %i.v, zeroinitializer
  %i.x = select fast <4 x i1> %i.w, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.y = fadd fast <4 x float> %i.x, %i.v
  %i.z = fptosi <4 x float> %i.y to <4 x i32>
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  store <4 x i32> %i.z, ptr %i.aa, align 4, !tbaa !14
  %i.ab = fmul fast <4 x float> %broadcast.splat766, %i.u ; 2 uses
  %i.ac = fcmp fast oge <4 x float> %i.ab, zeroinitializer
  %i.ad = select fast <4 x i1> %i.ac, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ae = fadd fast <4 x float> %i.ad, %i.ab
  %i.af = fptosi <4 x float> %i.ae to <4 x i32>
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index
  store <4 x i32> %i.af, ptr %i.ag, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader676.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader676.loopexit:                           ; preds = %scalar.ph, %middle.block
  %i.ai = ptrtoint ptr %i.m to i64
  %i.aj = ptrtoint ptr %i.h to i64
  br label %.preheader676

.preheader676:                                    ; preds = %.preheader676.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0627.0755 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.preheader676.loopexit ] ; 8 uses
  %.sroa.14.0753 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.preheader676.loopexit ]
  %.sroa.15.0663751 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aj, %.preheader676.loopexit ]
  %.sroa.0635.0665749 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.g, %.preheader676.loopexit ] ; 8 uses
  %i.ak = icmp sgt i32 %6, 0
  br i1 %i.ak, label %.lr.ph696, label %._crit_edge697

.lr.ph696:                                        ; preds = %.preheader676
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ap = icmp samesign ugt i32 %5, 7
  %i.aq = add nsw i32 %1, -1                      ; 4 uses
  %i.ar = add nsw i32 %2, -1                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn22warpaffine_bilinear_c2EPKhiiiPhiiiPKfij:bb.a
  br i1 %.not400, label %.loopexit673, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.dh = load i8, ptr %i.a, align 4, !tbaa !15   ; 8 uses
  store i8 %i.dh, ptr %.1687, align 1, !tbaa !15
  %i.di = load i8, ptr %i.as, align 1, !tbaa !15  ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1687, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %.1687, i64 2
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.1687, i64 3
  store i8 %i.di, ptr %i.dl, align 1, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %.1687, i64 4
  store i8 %i.dh, ptr %i.dm, align 1, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %.1687, i64 5
  store i8 %i.di, ptr %i.dn, align 1, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %.1687, i64 6
  store i8 %i.dh, ptr %i.do, align 1, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %.1687, i64 7
  store i8 %i.di, ptr %i.dp, align 1, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %.1687, i64 8
  store i8 %i.dh, ptr %i.dq, align 1, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %.1687, i64 9
  store i8 %i.di, ptr %i.dr, align 1, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %.1687, i64 10
  store i8 %i.dh, ptr %i.ds, align 1, !tbaa !15
  %i.dt = getelementptr inbounds nuw i8, ptr %.1687, i64 11
  store i8 %i.di, ptr %i.dt, align 1, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %.1687, i64 12
  store i8 %i.dh, ptr %i.du, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %.1687, i64 13
  store i8 %i.di, ptr %i.dv, align 1, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %.1687, i64 14
  store i8 %i.dh, ptr %i.dw, align 1, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %.1687, i64 15
  store i8 %i.di, ptr %i.dx, align 1, !tbaa !15
  br label %.loopexit673

.critedge:                                        ; preds = %bb.d, %.critedge
  %indvars.iv714 = phi i64 [ %indvars.iv.next715, %.critedge ], [ 0, %bb.d ] ; 2 uses
  %.2684 = phi ptr [ %i.gt, %.critedge ], [ %.1687, %bb.d ] ; 3 uses
  %i.dy = or disjoint i64 %indvars.iv714, %indvars.iv718 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0635.0665749, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !14
  %i.eb = add nsw i32 %i.ea, %i.br                ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0627.0755, i64 %i.dy
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !14
  %i.ee = add nsw i32 %i.ed, %i.ca                ; 2 uses
  %i.ef = ashr i32 %i.eb, 10
  %.sroa.speculated532 = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 -32768)
  %.sroa.speculated528 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated532, i32 32767)
  %i.eg = ashr i32 %i.ee, 10
  %.sroa.speculated521 = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 -32768)
  %.sroa.speculated517 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated521, i32 32767) ; 2 uses
  %i.eh = and i32 %i.eb, 1023                     ; 5 uses
  %i.ei = and i32 %i.ee, 1023                     ; 3 uses
  %i.ej = sub nuw nsw i32 1024, %i.eh             ; 4 uses
  %i.ek = sub nuw nsw i32 1024, %i.ei             ; 2 uses
  %i.el = mul nsw i32 %.sroa.speculated517, %3
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %0, i64 %i.em
  %i.eo = shl nsw i32 %.sroa.speculated528, 1
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %i.ep ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.es = add nsw i32 %.sroa.speculated517, 1
  %i.et = mul nsw i32 %i.es, %3
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %0, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.ep ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !15
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.ej, %i.ez
  %i.fb = load i8, ptr %i.er, align 1, !tbaa !15
  %i.fc = zext i8 %i.fb to i32
  %i.fd = mul nuw nsw i32 %i.eh, %i.fc
  %i.fe = add nuw nsw i32 %i.fd, %i.fa
  %i.ff = lshr i32 %i.fe, 5
  %i.fg = mul nuw nsw i32 %i.ff, %i.ek
  %i.fh = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.fi = zext i8 %i.fh to i32
  %i.fj = mul nuw nsw i32 %i.ej, %i.fi
  %i.fk = load i8, ptr %i.ex, align 1, !tbaa !15
  %i.fl = zext i8 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.eh, %i.fl
  %i.fn = add nuw nsw i32 %i.fm, %i.fj
  %i.fo = lshr i32 %i.fn, 5
  %i.fp = mul nuw nsw i32 %i.fo, %i.ei
  %i.fq = add nuw nsw i32 %i.fp, %i.fg
  %i.fr = lshr i32 %i.fq, 15
  %i.fs = trunc nuw i32 %i.fr to i8
  store i8 %i.fs, ptr %.2684, align 1, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !15
  %i.fv = zext i8 %i.fu to i32
  %i.fw = mul nuw nsw i32 %i.ej, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %i.fz = zext i8 %i.fy to i32
  %i.ga = mul nuw nsw i32 %i.eh, %i.fz
  %i.gb = add nuw nsw i32 %i.ga, %i.fw
  %i.gc = lshr i32 %i.gb, 5
  %i.gd = mul nuw nsw i32 %i.gc, %i.ek
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !15
  %i.gg = zext i8 %i.gf to i32
  %i.gh = mul nuw nsw i32 %i.ej, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !15
  %i.gk = zext i8 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.eh, %i.gk
  %i.gm = add nuw nsw i32 %i.gl, %i.gh
  %i.gn = lshr i32 %i.gm, 5
  %i.go = mul nuw nsw i32 %i.gn, %i.ei
  %i.gp = add nuw nsw i32 %i.go, %i.gd
  %i.gq = lshr i32 %i.gp, 15
  %i.gr = trunc nuw i32 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.2684, i64 1
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !15
  %i.gt = getelementptr inbounds nuw i8, ptr %.2684, i64 2 ; 2 uses
  %indvars.iv.next715 = add nuw nsw i64 %indvars.iv714, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next715, 8
  br i1 %exitcond717.not, label %.loopexit, label %.critedge, !llvm.loop !27

.loopexit673:                                     ; preds = %.preheader.preheader, %bb.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.1687, i64 16
  br label %.loopexit

.critedge424.preheader:                           ; preds = %bb.h, %.critedge424
  %indvars.iv706 = phi i64 [ %indvars.iv.next707, %.critedge424 ], [ 0, %bb.h ] ; 2 uses
  %.3680 = phi ptr [ %i.jx, %.critedge424 ], [ %.1687, %bb.h ] ; 5 uses
  %i.gv = or disjoint i64 %indvars.iv706, %indvars.iv718 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0635.0665749, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !14
  %i.gy = add nsw i32 %i.gx, %i.br                ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0627.0755, i64 %i.gv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !14
  %i.hb = add nsw i32 %i.ha, %i.ca                ; 2 uses
  %i.hc = ashr i32 %i.gy, 10                      ; 2 uses
  %.sroa.speculated510 = tail call i32 @llvm.smax.i32(i32 %i.hc, i32 -32768)
  %.sroa.speculated506 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated510, i32 32767) ; 5 uses
  %i.hd = ashr i32 %i.hb, 10                      ; 2 uses
  %.sroa.speculated499 = tail call i32 @llvm.smax.i32(i32 %i.hd, i32 -32768)
  %.sroa.speculated495 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated499, i32 32767) ; 5 uses
  br i1 %.not400, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.critedge424.preheader
  %i.he = icmp slt i32 %i.hc, -1
  br i1 %i.he, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hf = icmp slt i32 %.sroa.speculated506, %1
  %i.hg = icmp sgt i32 %i.hd, -2
  %or.cond8.not672 = select i1 %i.hf, i1 %i.hg, i1 false
  %.not403 = icmp slt i32 %.sroa.speculated495, %2
  %or.cond425 = select i1 %or.cond8.not672, i1 %.not403, i1 false
  br i1 %or.cond425, label %._crit_edge727, label %bb.l

._crit_edge727:                                   ; preds = %bb.k
  %.pre731 = and i32 %.sroa.speculated506, 65535
  %.pre733 = and i32 %.sroa.speculated495, 65535
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hh = load i8, ptr %i.a, align 4, !tbaa !15
  store i8 %i.hh, ptr %.3680, align 1, !tbaa !15
  %i.hi = load i8, ptr %i.as, align 1, !tbaa !15
  br label %.critedge424.sink.split

bb.m:                                             ; preds = %.critedge424.preheader
  %i.hj = and i32 %.sroa.speculated506, 65535     ; 2 uses
  %.not404 = icmp slt i32 %i.hj, %i.aq
  %i.hk = and i32 %.sroa.speculated495, 65535     ; 2 uses
  %.not405 = icmp slt i32 %i.hk, %i.ar
  %or.cond698 = select i1 %.not404, i1 %.not405, i1 false
  br i1 %or.cond698, label %bb.n, label %.critedge424

bb.n:                                             ; preds = %._crit_edge727, %bb.m
  %.pre-phi734 = phi i32 [ %.pre733, %._crit_edge727 ], [ %i.hk, %bb.m ]
  %.pre-phi732 = phi i32 [ %.pre731, %._crit_edge727 ], [ %i.hj, %bb.m ]
  %i.hl = phi ptr [ %i.a, %._crit_edge727 ], [ %.3680, %bb.m ] ; 5 uses
  %i.hm = and i32 %i.gy, 1023                     ; 5 uses
  %i.hn = and i32 %i.hb, 1023                     ; 3 uses
  %i.ho = sub nuw nsw i32 1024, %i.hm             ; 4 uses
  %i.hp = sub nuw nsw i32 1024, %i.hn             ; 2 uses
  %i.hq = add nsw i32 %.sroa.speculated506, 1
  %i.hr = add nsw i32 %.sroa.speculated495, 1     ; 2 uses
  %i.hs = mul nsw i32 %.sroa.speculated495, %3
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %0, i64 %i.ht
  %i.hv = shl nsw i32 %.sroa.speculated506, 1
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 %i.hw ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = mul nsw i32 %i.hr, %3
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %0, i64 %i.ia
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 %i.hw ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %.not408 = icmp slt i32 %.pre-phi732, %1        ; 2 uses
  %.not409 = icmp slt i32 %.pre-phi734, %2        ; 2 uses
  %or.cond426 = select i1 %.not408, i1 %.not409, i1 false ; 2 uses
  %.0357 = select i1 %or.cond426, ptr %i.hx, ptr %i.hl
  %i.ie = and i32 %i.hq, 65535
  %.not410 = icmp slt i32 %i.ie, %1               ; 2 uses
  %or.cond427 = select i1 %.not410, i1 %.not409, i1 false ; 2 uses
  %.0356 = select i1 %or.cond427, ptr %i.hy, ptr %i.hl
  %i.if = and i32 %i.hr, 65535
  %.not412 = icmp slt i32 %i.if, %2               ; 2 uses
  %or.cond428 = select i1 %.not408, i1 %.not412, i1 false ; 2 uses
  %.0355 = select i1 %or.cond428, ptr %i.ic, ptr %i.hl
  %or.cond429 = select i1 %.not410, i1 %.not412, i1 false ; 2 uses
  %.0354 = select i1 %or.cond429, ptr %i.id, ptr %i.hl
  %i.ig = load i8, ptr %.0357, align 1, !tbaa !15
  %i.ih = zext i8 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.ho, %i.ih
  %i.ij = load i8, ptr %.0356, align 1, !tbaa !15
  %i.ik = zext i8 %i.ij to i32
  %i.il = mul nuw nsw i32 %i.hm, %i.ik
  %i.im = add nuw nsw i32 %i.il, %i.ii
  %i.in = lshr i32 %i.im, 5
  %i.io = mul nuw nsw i32 %i.in, %i.hp
  %i.ip = load i8, ptr %.0355, align 1, !tbaa !15
  %i.iq = zext i8 %i.ip to i32
  %i.ir = mul nuw nsw i32 %i.ho, %i.iq
  %i.is = load i8, ptr %.0354, align 1, !tbaa !15
  %i.it = zext i8 %i.is to i32
  %i.iu = mul nuw nsw i32 %i.hm, %i.it
  %i.iv = add nuw nsw i32 %i.iu, %i.ir
  %i.iw = lshr i32 %i.iv, 5
  %i.ix = mul nuw nsw i32 %i.iw, %i.hn
  %i.iy = add nuw nsw i32 %i.ix, %i.io
  %i.iz = lshr i32 %i.iy, 15
  %i.ja = trunc nuw i32 %i.iz to i8
  store i8 %i.ja, ptr %.3680, align 1, !tbaa !15
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %.sroa.gep645 = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 4 uses
  %.0357.sroa.sel = select i1 %or.cond426, ptr %.sroa.gep, ptr %.sroa.gep645
  %i.jb = load i8, ptr %.0357.sroa.sel, align 1, !tbaa !15
  %i.jc = zext i8 %i.jb to i32
  %i.jd = mul nuw nsw i32 %i.ho, %i.jc
  %.sroa.gep646 = getelementptr inbounds nuw i8, ptr %i.hx, i64 3
  %.0356.sroa.sel = select i1 %or.cond427, ptr %.sroa.gep646, ptr %.sroa.gep645
  %i.je = load i8, ptr %.0356.sroa.sel, align 1, !tbaa !15
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.hm, %i.jf
  %i.jh = add nuw nsw i32 %i.jg, %i.jd
  %i.ji = lshr i32 %i.jh, 5
  %i.jj = mul nuw nsw i32 %i.ji, %i.hp
  %.sroa.gep648 = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %.0355.sroa.sel = select i1 %or.cond428, ptr %.sroa.gep648, ptr %.sroa.gep645
  %i.jk = load i8, ptr %.0355.sroa.sel, align 1, !tbaa !15
  %i.jl = zext i8 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.ho, %i.jl
  %.sroa.gep650 = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  %.0354.sroa.sel = select i1 %or.cond429, ptr %.sroa.gep650, ptr %.sroa.gep645
  %i.jn = load i8, ptr %.0354.sroa.sel, align 1, !tbaa !15
  %i.jo = zext i8 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.hm, %i.jo
  %i.jq = add nuw nsw i32 %i.jp, %i.jm
  %i.jr = lshr i32 %i.jq, 5
  %i.js = mul nuw nsw i32 %i.jr, %i.hn
  %i.jt = add nuw nsw i32 %i.js, %i.jj
  %i.ju = lshr i32 %i.jt, 15
  %i.jv = trunc nuw i32 %i.ju to i8
  br label %.critedge424.sink.split

.critedge424.sink.split:                          ; preds = %bb.l, %bb.n
  %.sink = phi i8 [ %i.jv, %bb.n ], [ %i.hi, %bb.l ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.3680, i64 1
  store i8 %.sink, ptr %i.jw, align 1, !tbaa !15
  br label %.critedge424

.critedge424:                                     ; preds = %.critedge424.sink.split, %bb.m
  %i.jx = getelementptr inbounds nuw i8, ptr %.3680, i64 2 ; 2 uses
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %exitcond709.not = icmp eq i64 %indvars.iv.next707, 8
  br i1 %exitcond709.not, label %.loopexit, label %.critedge424.preheader, !llvm.loop !28

.loopexit:                                        ; preds = %.critedge424, %.critedge, %.loopexit673
  %.4 = phi ptr [ %i.gt, %.critedge ], [ %i.gu, %.loopexit673 ], [ %i.jx, %.critedge424 ] ; 2 uses
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 8 ; 3 uses
  %i.jy = icmp slt i64 %indvars.iv.next719, %invariant.op
  br i1 %i.jy, label %.lr.ph688, label %.preheader675.loopexit, !llvm.loop !29

.lr.ph692:                                        ; preds = %.lr.ph692.preheader, %bb.t
  %indvars.iv721 = phi i64 [ %i.cd, %.lr.ph692.preheader ], [ %indvars.iv.next722, %bb.t ] ; 3 uses
  %.5691 = phi ptr [ %.1.lcssa, %.lr.ph692.preheader ], [ %i.na, %bb.t ] ; 5 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0635.0665749, i64 %indvars.iv721
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !14
  %i.kb = add nsw i32 %i.ka, %i.br                ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0627.0755, i64 %indvars.iv721
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !14
  %i.ke = add nsw i32 %i.kd, %i.ca                ; 2 uses
  %i.kf = ashr i32 %i.kb, 10                      ; 2 uses
  %.sroa.speculated488 = tail call i32 @llvm.smax.i32(i32 %i.kf, i32 -32768)
  %.sroa.speculated484 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated488, i32 32767) ; 5 uses
  %i.kg = ashr i32 %i.ke, 10                      ; 2 uses
  %.sroa.speculated477 = tail call i32 @llvm.smax.i32(i32 %i.kg, i32 -32768)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated477, i32 32767) ; 5 uses
  br i1 %.not400, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph692
  %i.kh = icmp slt i32 %i.kf, -1
  br i1 %i.kh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ki = icmp slt i32 %.sroa.speculated484, %1
  %i.kj = icmp sgt i32 %i.kg, -2
  %or.cond11.not669 = select i1 %i.ki, i1 %i.kj, i1 false
  %.not381 = icmp slt i32 %.sroa.speculated, %2
  %or.cond430 = select i1 %or.cond11.not669, i1 %.not381, i1 false
  br i1 %or.cond430, label %._crit_edge728, label %bb.q

._crit_edge728:                                   ; preds = %bb.p
  %.pre = and i32 %.sroa.speculated484, 65535
  %.pre729 = and i32 %.sroa.speculated, 65535
  br label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.kk = load i8, ptr %i.a, align 4, !tbaa !15
  store i8 %i.kk, ptr %.5691, align 1, !tbaa !15
  %i.kl = load i8, ptr %i.as, align 1, !tbaa !15
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph692
  %i.km = and i32 %.sroa.speculated484, 65535     ; 2 uses
  %.not382 = icmp slt i32 %i.km, %i.aq
  %i.kn = and i32 %.sroa.speculated, 65535        ; 2 uses
  %.not383 = icmp slt i32 %i.kn, %i.ar
  %or.cond699 = select i1 %.not382, i1 %.not383, i1 false
  br i1 %or.cond699, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge728, %bb.r
  %.pre-phi730 = phi i32 [ %.pre729, %._crit_edge728 ], [ %i.kn, %bb.r ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge728 ], [ %i.km, %bb.r ]
  %i.ko = phi ptr [ %i.a, %._crit_edge728 ], [ %.5691, %bb.r ] ; 5 uses
  %i.kp = and i32 %i.kb, 1023                     ; 5 uses
  %i.kq = and i32 %i.ke, 1023                     ; 3 uses
  %i.kr = sub nuw nsw i32 1024, %i.kp             ; 4 uses
  %i.ks = sub nuw nsw i32 1024, %i.kq             ; 2 uses
  %i.kt = add nsw i32 %.sroa.speculated484, 1
  %i.ku = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %i.kv = mul nsw i32 %.sroa.speculated, %3
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds i8, ptr %0, i64 %i.kw
  %i.ky = shl nsw i32 %.sroa.speculated484, 1
  %i.kz = sext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %i.kx, i64 %i.kz ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = mul nsw i32 %i.ku, %3
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %0, i64 %i.ld
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %i.kz ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %.not386 = icmp slt i32 %.pre-phi, %1           ; 2 uses
  %.not387 = icmp slt i32 %.pre-phi730, %2        ; 2 uses
  %or.cond431 = select i1 %.not386, i1 %.not387, i1 false ; 2 uses
  %.0353 = select i1 %or.cond431, ptr %i.la, ptr %i.ko
  %i.lh = and i32 %i.kt, 65535
  %.not388 = icmp slt i32 %i.lh, %1               ; 2 uses
  %or.cond432 = select i1 %.not388, i1 %.not387, i1 false ; 2 uses
  %.0352 = select i1 %or.cond432, ptr %i.lb, ptr %i.ko
  %i.li = and i32 %i.ku, 65535
  %.not390 = icmp slt i32 %i.li, %2               ; 2 uses
  %or.cond433 = select i1 %.not386, i1 %.not390, i1 false ; 2 uses
  %.0351 = select i1 %or.cond433, ptr %i.lf, ptr %i.ko
  %or.cond434 = select i1 %.not388, i1 %.not390, i1 false ; 2 uses
  %.0 = select i1 %or.cond434, ptr %i.lg, ptr %i.ko
  %i.lj = load i8, ptr %.0353, align 1, !tbaa !15
  %i.lk = zext i8 %i.lj to i32
  %i.ll = mul nuw nsw i32 %i.kr, %i.lk
  %i.lm = load i8, ptr %.0352, align 1, !tbaa !15
  %i.ln = zext i8 %i.lm to i32
  %i.lo = mul nuw nsw i32 %i.kp, %i.ln
  %i.lp = add nuw nsw i32 %i.lo, %i.ll
  %i.lq = lshr i32 %i.lp, 5
  %i.lr = mul nuw nsw i32 %i.lq, %i.ks
  %i.ls = load i8, ptr %.0351, align 1, !tbaa !15
  %i.lt = zext i8 %i.ls to i32
  %i.lu = mul nuw nsw i32 %i.kr, %i.lt
  %i.lv = load i8, ptr %.0, align 1, !tbaa !15
  %i.lw = zext i8 %i.lv to i32
  %i.lx = mul nuw nsw i32 %i.kp, %i.lw
  %i.ly = add nuw nsw i32 %i.lx, %i.lu
  %i.lz = lshr i32 %i.ly, 5
  %i.ma = mul nuw nsw i32 %i.lz, %i.kq
  %i.mb = add nuw nsw i32 %i.ma, %i.lr
  %i.mc = lshr i32 %i.mb, 15
  %i.md = trunc nuw i32 %i.mc to i8
  store i8 %i.md, ptr %.5691, align 1, !tbaa !15
  %.sroa.gep652 = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  %.sroa.gep653 = getelementptr inbounds nuw i8, ptr %i.ko, i64 1 ; 4 uses
  %.0353.sroa.sel = select i1 %or.cond431, ptr %.sroa.gep652, ptr %.sroa.gep653
  %i.me = load i8, ptr %.0353.sroa.sel, align 1, !tbaa !15
  %i.mf = zext i8 %i.me to i32
  %i.mg = mul nuw nsw i32 %i.kr, %i.mf
  %.sroa.gep654 = getelementptr inbounds nuw i8, ptr %i.la, i64 3
  %.0352.sroa.sel = select i1 %or.cond432, ptr %.sroa.gep654, ptr %.sroa.gep653
  %i.mh = load i8, ptr %.0352.sroa.sel, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i32
  %i.mj = mul nuw nsw i32 %i.kp, %i.mi
  %i.mk = add nuw nsw i32 %i.mj, %i.mg
  %i.ml = lshr i32 %i.mk, 5
  %i.mm = mul nuw nsw i32 %i.ml, %i.ks
  %.sroa.gep656 = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %.0351.sroa.sel = select i1 %or.cond433, ptr %.sroa.gep656, ptr %.sroa.gep653
  %i.mn = load i8, ptr %.0351.sroa.sel, align 1, !tbaa !15
  %i.mo = zext i8 %i.mn to i32
  %i.mp = mul nuw nsw i32 %i.kr, %i.mo
  %.sroa.gep658 = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %.0.sroa.sel = select i1 %or.cond434, ptr %.sroa.gep658, ptr %.sroa.gep653
  %i.mq = load i8, ptr %.0.sroa.sel, align 1, !tbaa !15
  %i.mr = zext i8 %i.mq to i32
  %i.ms = mul nuw nsw i32 %i.kp, %i.mr
  %i.mt = add nuw nsw i32 %i.ms, %i.mp
  %i.mu = lshr i32 %i.mt, 5
  %i.mv = mul nuw nsw i32 %i.mu, %i.kq
  %i.mw = add nuw nsw i32 %i.mv, %i.mm
  %i.mx = lshr i32 %i.mw, 15
  %i.my = trunc nuw i32 %i.mx to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.s
  %.sink760 = phi i8 [ %i.my, %bb.s ], [ %i.kl, %bb.q ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.5691, i64 1
  store i8 %.sink760, ptr %i.mz, align 1, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %i.na = getelementptr inbounds nuw i8, ptr %.5691, i64 2 ; 2 uses
  %indvars.iv.next722 = add nuw nsw i64 %indvars.iv721, 1 ; 2 uses
  %exitcond725.not = icmp eq i64 %indvars.iv.next722, %wide.trip.count724
  br i1 %exitcond725.not, label %._crit_edge, label %.lr.ph692, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.t, %.preheader675
  %.5.lcssa = phi ptr [ %.1.lcssa, %.preheader675 ], [ %i.na, %bb.t ]
  %i.nb = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.at
  %i.nc = add nuw nsw i32 %.0364694, 1            ; 2 uses
  %exitcond726.not = icmp eq i32 %i.nc, %6
  br i1 %exitcond726.not, label %._crit_edge697, label %bb.c, !llvm.loop !31

._crit_edge697:                                   ; preds = %._crit_edge, %.preheader676
  %.not.i.i.i472 = icmp eq ptr %.sroa.0627.0755, null
  br i1 %.not.i.i.i472, label %_ZNSt6vectorIiSaIiEED2Ev.exit473, label %bb.u

bb.u:                                             ; preds = %._crit_edge697
  %i.nd = ptrtoint ptr %.sroa.0627.0755 to i64
  %i.ne = sub i64 %.sroa.14.0753, %i.nd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0627.0755, i64 noundef %i.ne) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit473

_ZNSt6vectorIiSaIiEED2Ev.exit473:                 ; preds = %._crit_edge697, %bb.u
  %.not.i.i.i474 = icmp eq ptr %.sroa.0635.0665749, null
  br i1 %.not.i.i.i474, label %_ZNSt6vectorIiSaIiEED2Ev.exit475, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit473
  %i.nf = ptrtoint ptr %.sroa.0635.0665749 to i64
  %i.ng = sub i64 %.sroa.15.0663751, %i.nf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0635.0665749, i64 noundef %i.ng) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit475

_ZNSt6vectorIiSaIiEED2Ev.exit475:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit473, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c3EPKhiiPhiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %1, 3
  %i.b = mul nsw i32 %4, 3
  tail call void @_ZN4ncnn22warpaffine_bilinear_c3EPKhiiiPhiiiPKfij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.b, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c3EPKhiiiPhiiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  store i32 %10, ptr %i.a, align 4, !tbaa !14
  %.neg = mul i32 %5, -3
  %i.b = add i32 %7, %.neg
  %i.c = sext i32 %5 to i64                       ; 5 uses
  %i.d = icmp slt i32 %5, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %.preheader740, label %.noexc475

.noexc475:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #12 ; 7 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  store i32 0, ptr %i.f, align 4, !tbaa !14
  %i.h = add nsw i64 %i.c, -1                     ; 3 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc475
  %i.j = getelementptr i8, ptr %i.f, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.noexc475, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #12
          to label %.noexc483 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 6 uses

.noexc483:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.c
  store i32 0, ptr %i.k, align 4, !tbaa !14
  br i1 %i.i, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i478

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i478: ; preds = %.noexc483
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i479 = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i479, i1 false), !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i478, %.noexc483
  %i.n = load float, ptr %8, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = insertelement <2 x float> poison, float %i.n, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.s = fmul fast <2 x float> %i.r, splat (float 1.024000e+03) ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat830 = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.t = uitofp nneg <4 x i32> %vec.ind to <4 x float> ; 2 uses
  %i.u = fmul fast <4 x float> %broadcast.splat, %i.t ; 2 uses
  %i.v = fcmp fast oge <4 x float> %i.u, zeroinitializer
  %i.w = select fast <4 x i1> %i.v, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.x = fadd fast <4 x float> %i.w, %i.u
  %i.y = fptosi <4 x float> %i.x to <4 x i32>
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  store <4 x i32> %i.y, ptr %i.z, align 4, !tbaa !14
  %i.aa = fmul fast <4 x float> %broadcast.splat830, %i.t ; 2 uses
  %i.ab = fcmp fast oge <4 x float> %i.aa, zeroinitializer
  %i.ac = select fast <4 x i1> %i.ab, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ad = fadd fast <4 x float> %i.ac, %i.aa
  %i.ae = fptosi <4 x float> %i.ad to <4 x i32>
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  store <4 x i32> %i.ae, ptr %i.af, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
end_hunk_1
begin_hunk_2_@_ZN4ncnn22warpaffine_bilinear_c3EPKhiiiPhiiiPKfij:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %.1751, i64 21
  store i8 %i.dh, ptr %i.ee, align 1, !tbaa !15
  %i.ef = getelementptr inbounds nuw i8, ptr %.1751, i64 22
  store i8 %i.di, ptr %i.ef, align 1, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %.1751, i64 23
  store i8 %i.dk, ptr %i.eg, align 1, !tbaa !15
  br label %.loopexit737

.critedge:                                        ; preds = %bb.d, %.critedge
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %.critedge ], [ 0, %bb.d ] ; 2 uses
  %.2748 = phi ptr [ %i.ic, %.critedge ], [ %.1751, %bb.d ] ; 4 uses
  %i.eh = or disjoint i64 %indvars.iv778, %indvars.iv782 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0675.0729813, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !14
  %i.ek = add nsw i32 %i.ej, %i.br                ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0667.0819, i64 %i.eh
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14
  %i.en = add nsw i32 %i.em, %i.ca                ; 2 uses
  %i.eo = ashr i32 %i.ek, 10
  %.sroa.speculated572 = tail call i32 @llvm.smax.i32(i32 %i.eo, i32 -32768)
  %.sroa.speculated568 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated572, i32 32767)
  %i.ep = ashr i32 %i.en, 10
  %.sroa.speculated561 = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 -32768)
  %.sroa.speculated557 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated561, i32 32767) ; 2 uses
  %i.eq = and i32 %i.ek, 1023                     ; 7 uses
  %i.er = and i32 %i.en, 1023                     ; 4 uses
  %i.es = sub nuw nsw i32 1024, %i.eq             ; 6 uses
  %i.et = sub nuw nsw i32 1024, %i.er             ; 3 uses
  %i.eu = mul nsw i32 %.sroa.speculated557, %3
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %i.ev
  %i.ex = mul nsw i32 %.sroa.speculated568, 3
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ey ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.fb = add nsw i32 %.sroa.speculated557, 1
  %i.fc = mul nsw i32 %i.fb, %3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %0, i64 %i.fd
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.ey ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fi = zext i8 %i.fh to i32
  %i.fj = mul nuw nsw i32 %i.es, %i.fi
  %i.fk = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.fl = zext i8 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.eq, %i.fl
  %i.fn = add nuw nsw i32 %i.fm, %i.fj
  %i.fo = lshr i32 %i.fn, 5
  %i.fp = mul nuw nsw i32 %i.fo, %i.et
  %i.fq = load i8, ptr %i.ff, align 1, !tbaa !15
  %i.fr = zext i8 %i.fq to i32
  %i.fs = mul nuw nsw i32 %i.es, %i.fr
  %i.ft = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fu = zext i8 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.eq, %i.fu
  %i.fw = add nuw nsw i32 %i.fv, %i.fs
  %i.fx = lshr i32 %i.fw, 5
  %i.fy = mul nuw nsw i32 %i.fx, %i.er
  %i.fz = add nuw nsw i32 %i.fy, %i.fp
  %i.ga = lshr i32 %i.fz, 15
  %i.gb = trunc nuw i32 %i.ga to i8
  store i8 %i.gb, ptr %.2748, align 1, !tbaa !15
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15
  %i.ge = zext i8 %i.gd to i32
  %i.gf = mul nuw nsw i32 %i.es, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !15
  %i.gi = zext i8 %i.gh to i32
  %i.gj = mul nuw nsw i32 %i.eq, %i.gi
  %i.gk = add nuw nsw i32 %i.gj, %i.gf
  %i.gl = lshr i32 %i.gk, 5
  %i.gm = mul nuw nsw i32 %i.gl, %i.et
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  %i.gp = zext i8 %i.go to i32
  %i.gq = mul nuw nsw i32 %i.es, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.eq, %i.gt
  %i.gv = add nuw nsw i32 %i.gu, %i.gq
  %i.gw = lshr i32 %i.gv, 5
  %i.gx = mul nuw nsw i32 %i.gw, %i.er
  %i.gy = add nuw nsw i32 %i.gx, %i.gm
  %i.gz = lshr i32 %i.gy, 15
  %i.ha = trunc nuw i32 %i.gz to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %.2748, i64 1
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !15
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15
  %i.he = zext i8 %i.hd to i32
  %i.hf = mul nuw nsw i32 %i.es, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ez, i64 5
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !15
  %i.hi = zext i8 %i.hh to i32
  %i.hj = mul nuw nsw i32 %i.eq, %i.hi
  %i.hk = add nuw nsw i32 %i.hj, %i.hf
  %i.hl = lshr i32 %i.hk, 5
  %i.hm = mul nuw nsw i32 %i.hl, %i.et
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !15
  %i.hp = zext i8 %i.ho to i32
  %i.hq = mul nuw nsw i32 %i.es, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ff, i64 5
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %i.ht = zext i8 %i.hs to i32
  %i.hu = mul nuw nsw i32 %i.eq, %i.ht
  %i.hv = add nuw nsw i32 %i.hu, %i.hq
  %i.hw = lshr i32 %i.hv, 5
  %i.hx = mul nuw nsw i32 %i.hw, %i.er
  %i.hy = add nuw nsw i32 %i.hx, %i.hm
  %i.hz = lshr i32 %i.hy, 15
  %i.ia = trunc nuw i32 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %.2748, i64 2
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %.2748, i64 3 ; 2 uses
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1 ; 2 uses
  %exitcond781.not = icmp eq i64 %indvars.iv.next779, 8
  br i1 %exitcond781.not, label %.loopexit, label %.critedge, !llvm.loop !34

.loopexit737:                                     ; preds = %.preheader.preheader, %bb.i
  %i.id = getelementptr inbounds nuw i8, ptr %.1751, i64 24
  br label %.loopexit

.critedge464.preheader:                           ; preds = %bb.h, %.critedge464
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.critedge464 ], [ 0, %bb.h ] ; 2 uses
  %.3744 = phi ptr [ %i.me, %.critedge464 ], [ %.1751, %bb.h ] ; 7 uses
  %i.ie = or disjoint i64 %indvars.iv770, %indvars.iv782 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0675.0729813, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !14
  %i.ih = add nsw i32 %i.ig, %i.br                ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0667.0819, i64 %i.ie
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !14
  %i.ik = add nsw i32 %i.ij, %i.ca                ; 2 uses
  %i.il = ashr i32 %i.ih, 10                      ; 2 uses
  %.sroa.speculated550 = tail call i32 @llvm.smax.i32(i32 %i.il, i32 -32768)
  %.sroa.speculated546 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated550, i32 32767) ; 5 uses
  %i.im = ashr i32 %i.ik, 10                      ; 2 uses
  %.sroa.speculated539 = tail call i32 @llvm.smax.i32(i32 %i.im, i32 -32768)
  %.sroa.speculated535 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated539, i32 32767) ; 5 uses
  br i1 %.not440, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.critedge464.preheader
  %i.in = icmp slt i32 %i.il, -1
  br i1 %i.in, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.io = icmp slt i32 %.sroa.speculated546, %1
  %i.ip = icmp sgt i32 %i.im, -2
  %or.cond8.not736 = select i1 %i.io, i1 %i.ip, i1 false
  %.not443 = icmp slt i32 %.sroa.speculated535, %2
  %or.cond465 = select i1 %or.cond8.not736, i1 %.not443, i1 false
  br i1 %or.cond465, label %._crit_edge791, label %bb.l

._crit_edge791:                                   ; preds = %bb.k
  %.pre795 = and i32 %.sroa.speculated546, 65535
  %.pre797 = and i32 %.sroa.speculated535, 65535
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.iq = load i8, ptr %i.a, align 4, !tbaa !15
  store i8 %i.iq, ptr %.3744, align 1, !tbaa !15
  %i.ir = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %.3744, i64 1
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !15
  %i.it = load i8, ptr %i.as, align 2, !tbaa !15
  br label %.critedge464.sink.split

bb.m:                                             ; preds = %.critedge464.preheader
  %i.iu = and i32 %.sroa.speculated546, 65535     ; 2 uses
  %.not444 = icmp slt i32 %i.iu, %i.ap
  %i.iv = and i32 %.sroa.speculated535, 65535     ; 2 uses
  %.not445 = icmp slt i32 %i.iv, %i.aq
  %or.cond762 = select i1 %.not444, i1 %.not445, i1 false
  br i1 %or.cond762, label %bb.n, label %.critedge464

bb.n:                                             ; preds = %._crit_edge791, %bb.m
  %.pre-phi798 = phi i32 [ %.pre797, %._crit_edge791 ], [ %i.iv, %bb.m ]
  %.pre-phi796 = phi i32 [ %.pre795, %._crit_edge791 ], [ %i.iu, %bb.m ]
  %i.iw = phi ptr [ %i.a, %._crit_edge791 ], [ %.3744, %bb.m ] ; 6 uses
  %i.ix = and i32 %i.ih, 1023                     ; 7 uses
  %i.iy = and i32 %i.ik, 1023                     ; 4 uses
  %i.iz = sub nuw nsw i32 1024, %i.ix             ; 6 uses
  %i.ja = sub nuw nsw i32 1024, %i.iy             ; 3 uses
  %i.jb = add nsw i32 %.sroa.speculated546, 1
  %i.jc = add nsw i32 %.sroa.speculated535, 1     ; 2 uses
  %i.jd = mul nsw i32 %.sroa.speculated535, %3
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %0, i64 %i.je
  %i.jg = mul nsw i32 %.sroa.speculated546, 3
  %i.jh = sext i32 %i.jg to i64                   ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jf, i64 %i.jh ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  %i.jk = mul nsw i32 %i.jc, %3
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds i8, ptr %0, i64 %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 %i.jh ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  %.not448 = icmp slt i32 %.pre-phi796, %1        ; 2 uses
  %.not449 = icmp slt i32 %.pre-phi798, %2        ; 2 uses
  %or.cond466 = select i1 %.not448, i1 %.not449, i1 false ; 3 uses
  %.0397 = select i1 %or.cond466, ptr %i.ji, ptr %i.iw
  %i.jp = and i32 %i.jb, 65535
  %.not450 = icmp slt i32 %i.jp, %1               ; 2 uses
  %or.cond467 = select i1 %.not450, i1 %.not449, i1 false ; 3 uses
  %.0396 = select i1 %or.cond467, ptr %i.jj, ptr %i.iw
  %i.jq = and i32 %i.jc, 65535
  %.not452 = icmp slt i32 %i.jq, %2               ; 2 uses
  %or.cond468 = select i1 %.not448, i1 %.not452, i1 false ; 3 uses
  %.0395 = select i1 %or.cond468, ptr %i.jn, ptr %i.iw
  %or.cond469 = select i1 %.not450, i1 %.not452, i1 false ; 3 uses
  %.0394 = select i1 %or.cond469, ptr %i.jo, ptr %i.iw
  %i.jr = load i8, ptr %.0397, align 1, !tbaa !15
  %i.js = zext i8 %i.jr to i32
  %i.jt = mul nuw nsw i32 %i.iz, %i.js
  %i.ju = load i8, ptr %.0396, align 1, !tbaa !15
  %i.jv = zext i8 %i.ju to i32
  %i.jw = mul nuw nsw i32 %i.ix, %i.jv
  %i.jx = add nuw nsw i32 %i.jw, %i.jt
  %i.jy = lshr i32 %i.jx, 5
  %i.jz = mul nuw nsw i32 %i.jy, %i.ja
  %i.ka = load i8, ptr %.0395, align 1, !tbaa !15
  %i.kb = zext i8 %i.ka to i32
  %i.kc = mul nuw nsw i32 %i.iz, %i.kb
  %i.kd = load i8, ptr %.0394, align 1, !tbaa !15
  %i.ke = zext i8 %i.kd to i32
  %i.kf = mul nuw nsw i32 %i.ix, %i.ke
  %i.kg = add nuw nsw i32 %i.kf, %i.kc
  %i.kh = lshr i32 %i.kg, 5
  %i.ki = mul nuw nsw i32 %i.kh, %i.iy
  %i.kj = add nuw nsw i32 %i.ki, %i.jz
  %i.kk = lshr i32 %i.kj, 15
  %i.kl = trunc nuw i32 %i.kk to i8
  store i8 %i.kl, ptr %.3744, align 1, !tbaa !15
  %.sroa.gep686 = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %.sroa.gep687 = getelementptr inbounds nuw i8, ptr %i.iw, i64 1 ; 4 uses
  %.0397.sroa.sel688 = select i1 %or.cond466, ptr %.sroa.gep686, ptr %.sroa.gep687
  %i.km = load i8, ptr %.0397.sroa.sel688, align 1, !tbaa !15
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.iz, %i.kn
  %.sroa.gep691 = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %.0396.sroa.sel693 = select i1 %or.cond467, ptr %.sroa.gep691, ptr %.sroa.gep687
  %i.kp = load i8, ptr %.0396.sroa.sel693, align 1, !tbaa !15
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul nuw nsw i32 %i.ix, %i.kq
  %i.ks = add nuw nsw i32 %i.kr, %i.ko
  %i.kt = lshr i32 %i.ks, 5
  %i.ku = mul nuw nsw i32 %i.kt, %i.ja
  %.sroa.gep696 = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %.0395.sroa.sel698 = select i1 %or.cond468, ptr %.sroa.gep696, ptr %.sroa.gep687
  %i.kv = load i8, ptr %.0395.sroa.sel698, align 1, !tbaa !15
  %i.kw = zext i8 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.iz, %i.kw
  %.sroa.gep701 = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %.0394.sroa.sel703 = select i1 %or.cond469, ptr %.sroa.gep701, ptr %.sroa.gep687
  %i.ky = load i8, ptr %.0394.sroa.sel703, align 1, !tbaa !15
  %i.kz = zext i8 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ix, %i.kz
  %i.lb = add nuw nsw i32 %i.la, %i.kx
  %i.lc = lshr i32 %i.lb, 5
  %i.ld = mul nuw nsw i32 %i.lc, %i.iy
  %i.le = add nuw nsw i32 %i.ld, %i.ku
  %i.lf = lshr i32 %i.le, 15
  %i.lg = trunc nuw i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.3744, i64 1
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !15
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %.sroa.gep685 = getelementptr inbounds nuw i8, ptr %i.iw, i64 2 ; 4 uses
  %.0397.sroa.sel = select i1 %or.cond466, ptr %.sroa.gep, ptr %.sroa.gep685
  %i.li = load i8, ptr %.0397.sroa.sel, align 1, !tbaa !15
  %i.lj = zext i8 %i.li to i32
  %i.lk = mul nuw nsw i32 %i.iz, %i.lj
  %.sroa.gep689 = getelementptr inbounds nuw i8, ptr %i.ji, i64 5
  %.0396.sroa.sel = select i1 %or.cond467, ptr %.sroa.gep689, ptr %.sroa.gep685
  %i.ll = load i8, ptr %.0396.sroa.sel, align 1, !tbaa !15
  %i.lm = zext i8 %i.ll to i32
  %i.ln = mul nuw nsw i32 %i.ix, %i.lm
  %i.lo = add nuw nsw i32 %i.ln, %i.lk
  %i.lp = lshr i32 %i.lo, 5
  %i.lq = mul nuw nsw i32 %i.lp, %i.ja
  %.sroa.gep694 = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %.0395.sroa.sel = select i1 %or.cond468, ptr %.sroa.gep694, ptr %.sroa.gep685
  %i.lr = load i8, ptr %.0395.sroa.sel, align 1, !tbaa !15
  %i.ls = zext i8 %i.lr to i32
  %i.lt = mul nuw nsw i32 %i.iz, %i.ls
  %.sroa.gep699 = getelementptr inbounds nuw i8, ptr %i.jn, i64 5
  %.0394.sroa.sel = select i1 %or.cond469, ptr %.sroa.gep699, ptr %.sroa.gep685
  %i.lu = load i8, ptr %.0394.sroa.sel, align 1, !tbaa !15
  %i.lv = zext i8 %i.lu to i32
  %i.lw = mul nuw nsw i32 %i.ix, %i.lv
  %i.lx = add nuw nsw i32 %i.lw, %i.lt
  %i.ly = lshr i32 %i.lx, 5
  %i.lz = mul nuw nsw i32 %i.ly, %i.iy
  %i.ma = add nuw nsw i32 %i.lz, %i.lq
  %i.mb = lshr i32 %i.ma, 15
  %i.mc = trunc nuw i32 %i.mb to i8
  br label %.critedge464.sink.split

.critedge464.sink.split:                          ; preds = %bb.l, %bb.n
  %.sink = phi i8 [ %i.mc, %bb.n ], [ %i.it, %bb.l ]
  %i.md = getelementptr inbounds nuw i8, ptr %.3744, i64 2
  store i8 %.sink, ptr %i.md, align 1, !tbaa !15
  br label %.critedge464

.critedge464:                                     ; preds = %.critedge464.sink.split, %bb.m
  %i.me = getelementptr inbounds nuw i8, ptr %.3744, i64 3 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond773.not = icmp eq i64 %indvars.iv.next771, 8
  br i1 %exitcond773.not, label %.loopexit, label %.critedge464.preheader, !llvm.loop !35

.loopexit:                                        ; preds = %.critedge464, %.critedge, %.loopexit737
  %.4 = phi ptr [ %i.ic, %.critedge ], [ %i.id, %.loopexit737 ], [ %i.me, %.critedge464 ] ; 2 uses
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 8 ; 3 uses
  %i.mf = icmp slt i64 %indvars.iv.next783, %invariant.op
  br i1 %i.mf, label %.lr.ph752, label %.preheader739.loopexit, !llvm.loop !36

.lr.ph756:                                        ; preds = %.lr.ph756.preheader, %bb.t
  %indvars.iv785 = phi i64 [ %i.cd, %.lr.ph756.preheader ], [ %indvars.iv.next786, %bb.t ] ; 3 uses
  %.5755 = phi ptr [ %.1.lcssa, %.lr.ph756.preheader ], [ %i.qf, %bb.t ] ; 7 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0675.0729813, i64 %indvars.iv785
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !14
  %i.mi = add nsw i32 %i.mh, %i.br                ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0667.0819, i64 %indvars.iv785
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !14
  %i.ml = add nsw i32 %i.mk, %i.ca                ; 2 uses
  %i.mm = ashr i32 %i.mi, 10                      ; 2 uses
  %.sroa.speculated528 = tail call i32 @llvm.smax.i32(i32 %i.mm, i32 -32768)
  %.sroa.speculated524 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated528, i32 32767) ; 5 uses
  %i.mn = ashr i32 %i.ml, 10                      ; 2 uses
  %.sroa.speculated517 = tail call i32 @llvm.smax.i32(i32 %i.mn, i32 -32768)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated517, i32 32767) ; 5 uses
  br i1 %.not440, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph756
  %i.mo = icmp slt i32 %i.mm, -1
  br i1 %i.mo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mp = icmp slt i32 %.sroa.speculated524, %1
  %i.mq = icmp sgt i32 %i.mn, -2
  %or.cond11.not733 = select i1 %i.mp, i1 %i.mq, i1 false
  %.not421 = icmp slt i32 %.sroa.speculated, %2
  %or.cond470 = select i1 %or.cond11.not733, i1 %.not421, i1 false
  br i1 %or.cond470, label %._crit_edge792, label %bb.q

._crit_edge792:                                   ; preds = %bb.p
  %.pre = and i32 %.sroa.speculated524, 65535
  %.pre793 = and i32 %.sroa.speculated, 65535
  br label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.mr = load i8, ptr %i.a, align 4, !tbaa !15
  store i8 %i.mr, ptr %.5755, align 1, !tbaa !15
  %i.ms = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.mt = getelementptr inbounds nuw i8, ptr %.5755, i64 1
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !15
  %i.mu = load i8, ptr %i.as, align 2, !tbaa !15
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph756
  %i.mv = and i32 %.sroa.speculated524, 65535     ; 2 uses
  %.not422 = icmp slt i32 %i.mv, %i.ap
  %i.mw = and i32 %.sroa.speculated, 65535        ; 2 uses
  %.not423 = icmp slt i32 %i.mw, %i.aq
  %or.cond763 = select i1 %.not422, i1 %.not423, i1 false
  br i1 %or.cond763, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge792, %bb.r
  %.pre-phi794 = phi i32 [ %.pre793, %._crit_edge792 ], [ %i.mw, %bb.r ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge792 ], [ %i.mv, %bb.r ]
  %i.mx = phi ptr [ %i.a, %._crit_edge792 ], [ %.5755, %bb.r ] ; 6 uses
  %i.my = and i32 %i.mi, 1023                     ; 7 uses
  %i.mz = and i32 %i.ml, 1023                     ; 4 uses
  %i.na = sub nuw nsw i32 1024, %i.my             ; 6 uses
  %i.nb = sub nuw nsw i32 1024, %i.mz             ; 3 uses
  %i.nc = add nsw i32 %.sroa.speculated524, 1
  %i.nd = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %i.ne = mul nsw i32 %.sroa.speculated, %3
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds i8, ptr %0, i64 %i.nf
  %i.nh = mul nsw i32 %.sroa.speculated524, 3
  %i.ni = sext i32 %i.nh to i64                   ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %i.ng, i64 %i.ni ; 6 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.nl = mul nsw i32 %i.nd, %3
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds i8, ptr %0, i64 %i.nm
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.ni ; 6 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 3
  %.not426 = icmp slt i32 %.pre-phi, %1           ; 2 uses
  %.not427 = icmp slt i32 %.pre-phi794, %2        ; 2 uses
  %or.cond471 = select i1 %.not426, i1 %.not427, i1 false ; 3 uses
  %.0393 = select i1 %or.cond471, ptr %i.nj, ptr %i.mx
  %i.nq = and i32 %i.nc, 65535
  %.not428 = icmp slt i32 %i.nq, %1               ; 2 uses
  %or.cond472 = select i1 %.not428, i1 %.not427, i1 false ; 3 uses
  %.0392 = select i1 %or.cond472, ptr %i.nk, ptr %i.mx
  %i.nr = and i32 %i.nd, 65535
  %.not430 = icmp slt i32 %i.nr, %2               ; 2 uses
  %or.cond473 = select i1 %.not426, i1 %.not430, i1 false ; 3 uses
  %.0391 = select i1 %or.cond473, ptr %i.no, ptr %i.mx
  %or.cond474 = select i1 %.not428, i1 %.not430, i1 false ; 3 uses
  %.0 = select i1 %or.cond474, ptr %i.np, ptr %i.mx
  %i.ns = load i8, ptr %.0393, align 1, !tbaa !15
  %i.nt = zext i8 %i.ns to i32
  %i.nu = mul nuw nsw i32 %i.na, %i.nt
  %i.nv = load i8, ptr %.0392, align 1, !tbaa !15
  %i.nw = zext i8 %i.nv to i32
  %i.nx = mul nuw nsw i32 %i.my, %i.nw
  %i.ny = add nuw nsw i32 %i.nx, %i.nu
  %i.nz = lshr i32 %i.ny, 5
  %i.oa = mul nuw nsw i32 %i.nz, %i.nb
  %i.ob = load i8, ptr %.0391, align 1, !tbaa !15
  %i.oc = zext i8 %i.ob to i32
  %i.od = mul nuw nsw i32 %i.na, %i.oc
  %i.oe = load i8, ptr %.0, align 1, !tbaa !15
  %i.of = zext i8 %i.oe to i32
  %i.og = mul nuw nsw i32 %i.my, %i.of
  %i.oh = add nuw nsw i32 %i.og, %i.od
  %i.oi = lshr i32 %i.oh, 5
  %i.oj = mul nuw nsw i32 %i.oi, %i.mz
  %i.ok = add nuw nsw i32 %i.oj, %i.oa
  %i.ol = lshr i32 %i.ok, 15
  %i.om = trunc nuw i32 %i.ol to i8
  store i8 %i.om, ptr %.5755, align 1, !tbaa !15
  %.sroa.gep706 = getelementptr inbounds nuw i8, ptr %i.nj, i64 1
  %.sroa.gep707 = getelementptr inbounds nuw i8, ptr %i.mx, i64 1 ; 4 uses
  %.0393.sroa.sel708 = select i1 %or.cond471, ptr %.sroa.gep706, ptr %.sroa.gep707
  %i.on = load i8, ptr %.0393.sroa.sel708, align 1, !tbaa !15
  %i.oo = zext i8 %i.on to i32
  %i.op = mul nuw nsw i32 %i.na, %i.oo
  %.sroa.gep711 = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %.0392.sroa.sel713 = select i1 %or.cond472, ptr %.sroa.gep711, ptr %.sroa.gep707
  %i.oq = load i8, ptr %.0392.sroa.sel713, align 1, !tbaa !15
  %i.or = zext i8 %i.oq to i32
  %i.os = mul nuw nsw i32 %i.my, %i.or
  %i.ot = add nuw nsw i32 %i.os, %i.op
  %i.ou = lshr i32 %i.ot, 5
  %i.ov = mul nuw nsw i32 %i.ou, %i.nb
  %.sroa.gep716 = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  %.0391.sroa.sel718 = select i1 %or.cond473, ptr %.sroa.gep716, ptr %.sroa.gep707
  %i.ow = load i8, ptr %.0391.sroa.sel718, align 1, !tbaa !15
  %i.ox = zext i8 %i.ow to i32
  %i.oy = mul nuw nsw i32 %i.na, %i.ox
  %.sroa.gep721 = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %.0.sroa.sel723 = select i1 %or.cond474, ptr %.sroa.gep721, ptr %.sroa.gep707
  %i.oz = load i8, ptr %.0.sroa.sel723, align 1, !tbaa !15
  %i.pa = zext i8 %i.oz to i32
  %i.pb = mul nuw nsw i32 %i.my, %i.pa
  %i.pc = add nuw nsw i32 %i.pb, %i.oy
  %i.pd = lshr i32 %i.pc, 5
  %i.pe = mul nuw nsw i32 %i.pd, %i.mz
  %i.pf = add nuw nsw i32 %i.pe, %i.ov
  %i.pg = lshr i32 %i.pf, 15
  %i.ph = trunc nuw i32 %i.pg to i8
  %i.pi = getelementptr inbounds nuw i8, ptr %.5755, i64 1
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !15
  %.sroa.gep704 = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %.sroa.gep705 = getelementptr inbounds nuw i8, ptr %i.mx, i64 2 ; 4 uses
  %.0393.sroa.sel = select i1 %or.cond471, ptr %.sroa.gep704, ptr %.sroa.gep705
  %i.pj = load i8, ptr %.0393.sroa.sel, align 1, !tbaa !15
  %i.pk = zext i8 %i.pj to i32
  %i.pl = mul nuw nsw i32 %i.na, %i.pk
  %.sroa.gep709 = getelementptr inbounds nuw i8, ptr %i.nj, i64 5
  %.0392.sroa.sel = select i1 %or.cond472, ptr %.sroa.gep709, ptr %.sroa.gep705
  %i.pm = load i8, ptr %.0392.sroa.sel, align 1, !tbaa !15
  %i.pn = zext i8 %i.pm to i32
  %i.po = mul nuw nsw i32 %i.my, %i.pn
  %i.pp = add nuw nsw i32 %i.po, %i.pl
  %i.pq = lshr i32 %i.pp, 5
  %i.pr = mul nuw nsw i32 %i.pq, %i.nb
  %.sroa.gep714 = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  %.0391.sroa.sel = select i1 %or.cond473, ptr %.sroa.gep714, ptr %.sroa.gep705
  %i.ps = load i8, ptr %.0391.sroa.sel, align 1, !tbaa !15
  %i.pt = zext i8 %i.ps to i32
  %i.pu = mul nuw nsw i32 %i.na, %i.pt
  %.sroa.gep719 = getelementptr inbounds nuw i8, ptr %i.no, i64 5
  %.0.sroa.sel = select i1 %or.cond474, ptr %.sroa.gep719, ptr %.sroa.gep705
  %i.pv = load i8, ptr %.0.sroa.sel, align 1, !tbaa !15
  %i.pw = zext i8 %i.pv to i32
  %i.px = mul nuw nsw i32 %i.my, %i.pw
  %i.py = add nuw nsw i32 %i.px, %i.pu
  %i.pz = lshr i32 %i.py, 5
  %i.qa = mul nuw nsw i32 %i.pz, %i.mz
  %i.qb = add nuw nsw i32 %i.qa, %i.pr
  %i.qc = lshr i32 %i.qb, 15
  %i.qd = trunc nuw i32 %i.qc to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.s
  %.sink824 = phi i8 [ %i.qd, %bb.s ], [ %i.mu, %bb.q ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.5755, i64 2
  store i8 %.sink824, ptr %i.qe, align 1, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %i.qf = getelementptr inbounds nuw i8, ptr %.5755, i64 3 ; 2 uses
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next786, %wide.trip.count788
  br i1 %exitcond789.not, label %._crit_edge, label %.lr.ph756, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.t, %.preheader739
  %.5.lcssa = phi ptr [ %.1.lcssa, %.preheader739 ], [ %i.qf, %bb.t ]
  %i.qg = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.at
  %i.qh = add nuw nsw i32 %.0404758, 1            ; 2 uses
  %exitcond790.not = icmp eq i32 %i.qh, %6
  br i1 %exitcond790.not, label %._crit_edge761, label %bb.c, !llvm.loop !38

._crit_edge761:                                   ; preds = %._crit_edge, %.preheader740
  %.not.i.i.i512 = icmp eq ptr %.sroa.0667.0819, null
  br i1 %.not.i.i.i512, label %_ZNSt6vectorIiSaIiEED2Ev.exit513, label %bb.u

bb.u:                                             ; preds = %._crit_edge761
  %i.qi = ptrtoint ptr %.sroa.0667.0819 to i64
  %i.qj = sub i64 %.sroa.14.0817, %i.qi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0667.0819, i64 noundef %i.qj) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit513

_ZNSt6vectorIiSaIiEED2Ev.exit513:                 ; preds = %._crit_edge761, %bb.u
  %.not.i.i.i514 = icmp eq ptr %.sroa.0675.0729813, null
  br i1 %.not.i.i.i514, label %_ZNSt6vectorIiSaIiEED2Ev.exit515, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit513
  %i.qk = ptrtoint ptr %.sroa.0675.0729813 to i64
  %i.ql = sub i64 %.sroa.15.0727815, %i.qk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0675.0729813, i64 noundef %i.ql) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit515

_ZNSt6vectorIiSaIiEED2Ev.exit515:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit513, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c4EPKhiiPhiiPKfij(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = shl nsw i32 %4, 2
  tail call void @_ZN4ncnn22warpaffine_bilinear_c4EPKhiiiPhiiiPKfij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.b, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c4EPKhiiiPhiiiPKfij(ptr nofree noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  store i32 %10, ptr %i.a, align 4, !tbaa !14
  %i.b = shl nsw i32 %5, 2
  %i.c = sub nsw i32 %7, %i.b
  %i.d = sext i32 %5 to i64                       ; 5 uses
  %i.e = icmp slt i32 %5, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %.preheader804, label %.noexc515

.noexc515:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #12 ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d
  store i32 0, ptr %i.g, align 4, !tbaa !14
  %i.i = add nsw i64 %i.d, -1                     ; 3 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc515
  %i.k = getelementptr i8, ptr %i.g, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.noexc515, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #12
          to label %.noexc523 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 6 uses

.noexc523:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.d
  store i32 0, ptr %i.l, align 4, !tbaa !14
  br i1 %i.j, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i518

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i518: ; preds = %.noexc523
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %.idx.i.i.i.i.i.i.i519 = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i519, i1 false), !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i518, %.noexc523
  %i.o = load float, ptr %8, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
end_hunk_2
begin_hunk_3_@_ZN4ncnn22warpaffine_bilinear_c4EPKhiiiPhiiiPKfij:bb.a
  %i.fh = getelementptr inbounds i8, ptr %0, i64 %i.fg
  %i.fi = shl nsw i32 %.sroa.speculated608, 2
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 %i.fj ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = add nsw i32 %.sroa.speculated597, 1
  %i.fn = mul nsw i32 %i.fm, %3
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %0, i64 %i.fo
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fj ; 8 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i8, ptr %i.fk, align 1, !tbaa !15
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.fd, %i.ft
  %i.fv = load i8, ptr %i.fl, align 1, !tbaa !15
  %i.fw = zext i8 %i.fv to i32
  %i.fx = mul nuw nsw i32 %i.fb, %i.fw
  %i.fy = add nuw nsw i32 %i.fx, %i.fu
  %i.fz = lshr i32 %i.fy, 5
  %i.ga = mul nuw nsw i32 %i.fz, %i.fe
  %i.gb = load i8, ptr %i.fq, align 1, !tbaa !15
  %i.gc = zext i8 %i.gb to i32
  %i.gd = mul nuw nsw i32 %i.fd, %i.gc
  %i.ge = load i8, ptr %i.fr, align 1, !tbaa !15
  %i.gf = zext i8 %i.ge to i32
  %i.gg = mul nuw nsw i32 %i.fb, %i.gf
  %i.gh = add nuw nsw i32 %i.gg, %i.gd
  %i.gi = lshr i32 %i.gh, 5
  %i.gj = mul nuw nsw i32 %i.gi, %i.fc
  %i.gk = add nuw nsw i32 %i.gj, %i.ga
  %i.gl = lshr i32 %i.gk, 15
  %i.gm = trunc nuw i32 %i.gl to i8
  store i8 %i.gm, ptr %.2812, align 1, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  %i.gp = zext i8 %i.go to i32
  %i.gq = mul nuw nsw i32 %i.fd, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fk, i64 5
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.fb, %i.gt
  %i.gv = add nuw nsw i32 %i.gu, %i.gq
  %i.gw = lshr i32 %i.gv, 5
  %i.gx = mul nuw nsw i32 %i.gw, %i.fe
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !15
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.fd, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fq, i64 5
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15
  %i.he = zext i8 %i.hd to i32
  %i.hf = mul nuw nsw i32 %i.fb, %i.he
  %i.hg = add nuw nsw i32 %i.hf, %i.hb
  %i.hh = lshr i32 %i.hg, 5
  %i.hi = mul nuw nsw i32 %i.hh, %i.fc
  %i.hj = add nuw nsw i32 %i.hi, %i.gx
  %i.hk = lshr i32 %i.hj, 15
  %i.hl = trunc nuw i32 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %.2812, i64 1
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !15
  %i.hp = zext i8 %i.ho to i32
  %i.hq = mul nuw nsw i32 %i.fd, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fk, i64 6
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %i.ht = zext i8 %i.hs to i32
  %i.hu = mul nuw nsw i32 %i.fb, %i.ht
  %i.hv = add nuw nsw i32 %i.hu, %i.hq
  %i.hw = lshr i32 %i.hv, 5
  %i.hx = mul nuw nsw i32 %i.hw, %i.fe
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !15
  %i.ia = zext i8 %i.hz to i32
  %i.ib = mul nuw nsw i32 %i.fd, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fq, i64 6
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !15
  %i.ie = zext i8 %i.id to i32
  %i.if = mul nuw nsw i32 %i.fb, %i.ie
  %i.ig = add nuw nsw i32 %i.if, %i.ib
  %i.ih = lshr i32 %i.ig, 5
  %i.ii = mul nuw nsw i32 %i.ih, %i.fc
  %i.ij = add nuw nsw i32 %i.ii, %i.hx
  %i.ik = lshr i32 %i.ij, 15
  %i.il = trunc nuw i32 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %.2812, i64 2
  store i8 %i.il, ptr %i.im, align 1, !tbaa !15
  %i.in = getelementptr inbounds nuw i8, ptr %i.fk, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !15
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.fd, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fk, i64 7
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !15
  %i.it = zext i8 %i.is to i32
  %i.iu = mul nuw nsw i32 %i.fb, %i.it
  %i.iv = add nuw nsw i32 %i.iu, %i.iq
  %i.iw = lshr i32 %i.iv, 5
  %i.ix = mul nuw nsw i32 %i.iw, %i.fe
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fq, i64 3
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %i.ja = zext i8 %i.iz to i32
  %i.jb = mul nuw nsw i32 %i.fd, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fq, i64 7
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !15
  %i.je = zext i8 %i.jd to i32
  %i.jf = mul nuw nsw i32 %i.fb, %i.je
  %i.jg = add nuw nsw i32 %i.jf, %i.jb
  %i.jh = lshr i32 %i.jg, 5
  %i.ji = mul nuw nsw i32 %i.jh, %i.fc
  %i.jj = add nuw nsw i32 %i.ji, %i.ix
  %i.jk = lshr i32 %i.jj, 15
  %i.jl = trunc nuw i32 %i.jk to i8
  %i.jm = getelementptr inbounds nuw i8, ptr %.2812, i64 3
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !15
  %i.jn = getelementptr inbounds nuw i8, ptr %.2812, i64 4 ; 2 uses
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1 ; 2 uses
  %exitcond845.not = icmp eq i64 %indvars.iv.next843, 8
  br i1 %exitcond845.not, label %.loopexit, label %.critedge, !llvm.loop !41

.loopexit801:                                     ; preds = %.preheader.preheader, %bb.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.1815, i64 32
  br label %.loopexit

.critedge504.preheader:                           ; preds = %bb.h, %.critedge504
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %.critedge504 ], [ 0, %bb.h ] ; 2 uses
  %.3808 = phi ptr [ %i.on, %.critedge504 ], [ %.1815, %bb.h ] ; 9 uses
  %i.jp = or disjoint i64 %indvars.iv834, %indvars.iv846 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0715.0793877, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !14
  %i.js = add nsw i32 %i.jr, %i.bt                ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0707.0883, i64 %i.jp
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !14
  %i.jv = add nsw i32 %i.ju, %i.cc                ; 2 uses
  %i.jw = ashr i32 %i.js, 10                      ; 2 uses
  %.sroa.speculated590 = tail call i32 @llvm.smax.i32(i32 %i.jw, i32 -32768)
  %.sroa.speculated586 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated590, i32 32767) ; 5 uses
  %i.jx = ashr i32 %i.jv, 10                      ; 2 uses
  %.sroa.speculated579 = tail call i32 @llvm.smax.i32(i32 %i.jx, i32 -32768)
  %.sroa.speculated575 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated579, i32 32767) ; 5 uses
  br i1 %.not480, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.critedge504.preheader
  %i.jy = icmp slt i32 %i.jw, -1
  br i1 %i.jy, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.jz = icmp slt i32 %.sroa.speculated586, %1
  %i.ka = icmp sgt i32 %i.jx, -2
  %or.cond8.not800 = select i1 %i.jz, i1 %i.ka, i1 false
  %.not483 = icmp slt i32 %.sroa.speculated575, %2
  %or.cond505 = select i1 %or.cond8.not800, i1 %.not483, i1 false
  br i1 %or.cond505, label %._crit_edge855, label %bb.l

._crit_edge855:                                   ; preds = %bb.k
  %.pre859 = and i32 %.sroa.speculated586, 65535
  %.pre861 = and i32 %.sroa.speculated575, 65535
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.kb = load i8, ptr %i.a, align 4, !tbaa !15
  store i8 %i.kb, ptr %.3808, align 1, !tbaa !15
  %i.kc = load i8, ptr %i.as, align 1, !tbaa !15
  %i.kd = getelementptr inbounds nuw i8, ptr %.3808, i64 1
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !15
  %i.ke = load i8, ptr %i.at, align 2, !tbaa !15
  %i.kf = getelementptr inbounds nuw i8, ptr %.3808, i64 2
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !15
  %i.kg = load i8, ptr %i.au, align 1, !tbaa !15
  br label %.critedge504.sink.split

bb.m:                                             ; preds = %.critedge504.preheader
  %i.kh = and i32 %.sroa.speculated586, 65535     ; 2 uses
  %.not484 = icmp slt i32 %i.kh, %i.aq
  %i.ki = and i32 %.sroa.speculated575, 65535     ; 2 uses
  %.not485 = icmp slt i32 %i.ki, %i.ar
  %or.cond826 = select i1 %.not484, i1 %.not485, i1 false
  br i1 %or.cond826, label %bb.n, label %.critedge504

bb.n:                                             ; preds = %._crit_edge855, %bb.m
  %.pre-phi862 = phi i32 [ %.pre861, %._crit_edge855 ], [ %i.ki, %bb.m ]
  %.pre-phi860 = phi i32 [ %.pre859, %._crit_edge855 ], [ %i.kh, %bb.m ]
  %i.kj = phi ptr [ %i.a, %._crit_edge855 ], [ %.3808, %bb.m ] ; 7 uses
  %i.kk = and i32 %i.js, 1023                     ; 9 uses
  %i.kl = and i32 %i.jv, 1023                     ; 5 uses
  %i.km = sub nuw nsw i32 1024, %i.kk             ; 8 uses
  %i.kn = sub nuw nsw i32 1024, %i.kl             ; 4 uses
  %i.ko = add nsw i32 %.sroa.speculated586, 1
  %i.kp = add nsw i32 %.sroa.speculated575, 1     ; 2 uses
  %i.kq = mul nsw i32 %.sroa.speculated575, %3
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %0, i64 %i.kr
  %i.kt = shl nsw i32 %.sroa.speculated586, 2
  %i.ku = sext i32 %i.kt to i64                   ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ks, i64 %i.ku ; 8 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.kx = mul nsw i32 %i.kp, %3
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds i8, ptr %0, i64 %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.ku ; 8 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %.not488 = icmp slt i32 %.pre-phi860, %1        ; 2 uses
  %.not489 = icmp slt i32 %.pre-phi862, %2        ; 2 uses
  %or.cond506 = select i1 %.not488, i1 %.not489, i1 false ; 4 uses
  %.0437 = select i1 %or.cond506, ptr %i.kv, ptr %i.kj
  %i.lc = and i32 %i.ko, 65535
  %.not490 = icmp slt i32 %i.lc, %1               ; 2 uses
  %or.cond507 = select i1 %.not490, i1 %.not489, i1 false ; 4 uses
  %.0436 = select i1 %or.cond507, ptr %i.kw, ptr %i.kj
  %i.ld = and i32 %i.kp, 65535
  %.not492 = icmp slt i32 %i.ld, %2               ; 2 uses
  %or.cond508 = select i1 %.not488, i1 %.not492, i1 false ; 4 uses
  %.0435 = select i1 %or.cond508, ptr %i.la, ptr %i.kj
  %or.cond509 = select i1 %.not490, i1 %.not492, i1 false ; 4 uses
  %.0434 = select i1 %or.cond509, ptr %i.lb, ptr %i.kj
  %i.le = load i8, ptr %.0437, align 1, !tbaa !15
  %i.lf = zext i8 %i.le to i32
  %i.lg = mul nuw nsw i32 %i.km, %i.lf
  %i.lh = load i8, ptr %.0436, align 1, !tbaa !15
  %i.li = zext i8 %i.lh to i32
  %i.lj = mul nuw nsw i32 %i.kk, %i.li
  %i.lk = add nuw nsw i32 %i.lj, %i.lg
  %i.ll = lshr i32 %i.lk, 5
  %i.lm = mul nuw nsw i32 %i.ll, %i.kn
  %i.ln = load i8, ptr %.0435, align 1, !tbaa !15
  %i.lo = zext i8 %i.ln to i32
  %i.lp = mul nuw nsw i32 %i.km, %i.lo
  %i.lq = load i8, ptr %.0434, align 1, !tbaa !15
  %i.lr = zext i8 %i.lq to i32
  %i.ls = mul nuw nsw i32 %i.kk, %i.lr
  %i.lt = add nuw nsw i32 %i.ls, %i.lp
  %i.lu = lshr i32 %i.lt, 5
  %i.lv = mul nuw nsw i32 %i.lu, %i.kl
  %i.lw = add nuw nsw i32 %i.lv, %i.lm
  %i.lx = lshr i32 %i.lw, 15
  %i.ly = trunc nuw i32 %i.lx to i8
  store i8 %i.ly, ptr %.3808, align 1, !tbaa !15
  %.sroa.gep729 = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %.sroa.gep730 = getelementptr inbounds nuw i8, ptr %i.kj, i64 1 ; 4 uses
  %.0437.sroa.sel731 = select i1 %or.cond506, ptr %.sroa.gep729, ptr %.sroa.gep730
  %i.lz = load i8, ptr %.0437.sroa.sel731, align 1, !tbaa !15
  %i.ma = zext i8 %i.lz to i32
  %i.mb = mul nuw nsw i32 %i.km, %i.ma
  %.sroa.gep737 = getelementptr inbounds nuw i8, ptr %i.kv, i64 5
  %.0436.sroa.sel739 = select i1 %or.cond507, ptr %.sroa.gep737, ptr %.sroa.gep730
  %i.mc = load i8, ptr %.0436.sroa.sel739, align 1, !tbaa !15
  %i.md = zext i8 %i.mc to i32
  %i.me = mul nuw nsw i32 %i.kk, %i.md
  %i.mf = add nuw nsw i32 %i.me, %i.mb
  %i.mg = lshr i32 %i.mf, 5
  %i.mh = mul nuw nsw i32 %i.mg, %i.kn
  %.sroa.gep745 = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  %.0435.sroa.sel747 = select i1 %or.cond508, ptr %.sroa.gep745, ptr %.sroa.gep730
  %i.mi = load i8, ptr %.0435.sroa.sel747, align 1, !tbaa !15
  %i.mj = zext i8 %i.mi to i32
  %i.mk = mul nuw nsw i32 %i.km, %i.mj
  %.sroa.gep753 = getelementptr inbounds nuw i8, ptr %i.la, i64 5
  %.0434.sroa.sel755 = select i1 %or.cond509, ptr %.sroa.gep753, ptr %.sroa.gep730
  %i.ml = load i8, ptr %.0434.sroa.sel755, align 1, !tbaa !15
  %i.mm = zext i8 %i.ml to i32
  %i.mn = mul nuw nsw i32 %i.kk, %i.mm
  %i.mo = add nuw nsw i32 %i.mn, %i.mk
  %i.mp = lshr i32 %i.mo, 5
  %i.mq = mul nuw nsw i32 %i.mp, %i.kl
  %i.mr = add nuw nsw i32 %i.mq, %i.mh
  %i.ms = lshr i32 %i.mr, 15
  %i.mt = trunc nuw i32 %i.ms to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.3808, i64 1
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !15
  %.sroa.gep726 = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %.sroa.gep727 = getelementptr inbounds nuw i8, ptr %i.kj, i64 2 ; 4 uses
  %.0437.sroa.sel728 = select i1 %or.cond506, ptr %.sroa.gep726, ptr %.sroa.gep727
  %i.mv = load i8, ptr %.0437.sroa.sel728, align 1, !tbaa !15
  %i.mw = zext i8 %i.mv to i32
  %i.mx = mul nuw nsw i32 %i.km, %i.mw
  %.sroa.gep734 = getelementptr inbounds nuw i8, ptr %i.kv, i64 6
  %.0436.sroa.sel736 = select i1 %or.cond507, ptr %.sroa.gep734, ptr %.sroa.gep727
  %i.my = load i8, ptr %.0436.sroa.sel736, align 1, !tbaa !15
  %i.mz = zext i8 %i.my to i32
  %i.na = mul nuw nsw i32 %i.kk, %i.mz
  %i.nb = add nuw nsw i32 %i.na, %i.mx
  %i.nc = lshr i32 %i.nb, 5
  %i.nd = mul nuw nsw i32 %i.nc, %i.kn
  %.sroa.gep742 = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %.0435.sroa.sel744 = select i1 %or.cond508, ptr %.sroa.gep742, ptr %.sroa.gep727
  %i.ne = load i8, ptr %.0435.sroa.sel744, align 1, !tbaa !15
  %i.nf = zext i8 %i.ne to i32
  %i.ng = mul nuw nsw i32 %i.km, %i.nf
  %.sroa.gep750 = getelementptr inbounds nuw i8, ptr %i.la, i64 6
  %.0434.sroa.sel752 = select i1 %or.cond509, ptr %.sroa.gep750, ptr %.sroa.gep727
  %i.nh = load i8, ptr %.0434.sroa.sel752, align 1, !tbaa !15
  %i.ni = zext i8 %i.nh to i32
  %i.nj = mul nuw nsw i32 %i.kk, %i.ni
  %i.nk = add nuw nsw i32 %i.nj, %i.ng
  %i.nl = lshr i32 %i.nk, 5
  %i.nm = mul nuw nsw i32 %i.nl, %i.kl
  %i.nn = add nuw nsw i32 %i.nm, %i.nd
  %i.no = lshr i32 %i.nn, 15
  %i.np = trunc nuw i32 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %.3808, i64 2
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !15
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.kv, i64 3
  %.sroa.gep725 = getelementptr inbounds nuw i8, ptr %i.kj, i64 3 ; 4 uses
  %.0437.sroa.sel = select i1 %or.cond506, ptr %.sroa.gep, ptr %.sroa.gep725
  %i.nr = load i8, ptr %.0437.sroa.sel, align 1, !tbaa !15
  %i.ns = zext i8 %i.nr to i32
  %i.nt = mul nuw nsw i32 %i.km, %i.ns
  %.sroa.gep732 = getelementptr inbounds nuw i8, ptr %i.kv, i64 7
  %.0436.sroa.sel = select i1 %or.cond507, ptr %.sroa.gep732, ptr %.sroa.gep725
  %i.nu = load i8, ptr %.0436.sroa.sel, align 1, !tbaa !15
  %i.nv = zext i8 %i.nu to i32
  %i.nw = mul nuw nsw i32 %i.kk, %i.nv
  %i.nx = add nuw nsw i32 %i.nw, %i.nt
  %i.ny = lshr i32 %i.nx, 5
  %i.nz = mul nuw nsw i32 %i.ny, %i.kn
  %.sroa.gep740 = getelementptr inbounds nuw i8, ptr %i.la, i64 3
  %.0435.sroa.sel = select i1 %or.cond508, ptr %.sroa.gep740, ptr %.sroa.gep725
  %i.oa = load i8, ptr %.0435.sroa.sel, align 1, !tbaa !15
  %i.ob = zext i8 %i.oa to i32
  %i.oc = mul nuw nsw i32 %i.km, %i.ob
  %.sroa.gep748 = getelementptr inbounds nuw i8, ptr %i.la, i64 7
  %.0434.sroa.sel = select i1 %or.cond509, ptr %.sroa.gep748, ptr %.sroa.gep725
  %i.od = load i8, ptr %.0434.sroa.sel, align 1, !tbaa !15
  %i.oe = zext i8 %i.od to i32
  %i.of = mul nuw nsw i32 %i.kk, %i.oe
  %i.og = add nuw nsw i32 %i.of, %i.oc
  %i.oh = lshr i32 %i.og, 5
  %i.oi = mul nuw nsw i32 %i.oh, %i.kl
  %i.oj = add nuw nsw i32 %i.oi, %i.nz
  %i.ok = lshr i32 %i.oj, 15
  %i.ol = trunc nuw i32 %i.ok to i8
  br label %.critedge504.sink.split

.critedge504.sink.split:                          ; preds = %bb.l, %bb.n
  %.sink = phi i8 [ %i.ol, %bb.n ], [ %i.kg, %bb.l ]
  %i.om = getelementptr inbounds nuw i8, ptr %.3808, i64 3
  store i8 %.sink, ptr %i.om, align 1, !tbaa !15
  br label %.critedge504

.critedge504:                                     ; preds = %.critedge504.sink.split, %bb.m
  %i.on = getelementptr inbounds nuw i8, ptr %.3808, i64 4 ; 2 uses
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %exitcond837.not = icmp eq i64 %indvars.iv.next835, 8
  br i1 %exitcond837.not, label %.loopexit, label %.critedge504.preheader, !llvm.loop !42

.loopexit:                                        ; preds = %.critedge504, %.critedge, %.loopexit801
  %.4 = phi ptr [ %i.jn, %.critedge ], [ %i.jo, %.loopexit801 ], [ %i.on, %.critedge504 ] ; 2 uses
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 8 ; 3 uses
  %i.oo = icmp slt i64 %indvars.iv.next847, %invariant.op
  br i1 %i.oo, label %.lr.ph816, label %.preheader803.loopexit, !llvm.loop !43

.lr.ph820:                                        ; preds = %.lr.ph820.preheader, %bb.t
  %indvars.iv849 = phi i64 [ %i.cf, %.lr.ph820.preheader ], [ %indvars.iv.next850, %bb.t ] ; 3 uses
  %.5819 = phi ptr [ %.1.lcssa, %.lr.ph820.preheader ], [ %i.tm, %bb.t ] ; 9 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0715.0793877, i64 %indvars.iv849
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !14
  %i.or = add nsw i32 %i.oq, %i.bt                ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0707.0883, i64 %indvars.iv849
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !14
  %i.ou = add nsw i32 %i.ot, %i.cc                ; 2 uses
  %i.ov = ashr i32 %i.or, 10                      ; 2 uses
  %.sroa.speculated568 = tail call i32 @llvm.smax.i32(i32 %i.ov, i32 -32768)
  %.sroa.speculated564 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated568, i32 32767) ; 5 uses
  %i.ow = ashr i32 %i.ou, 10                      ; 2 uses
  %.sroa.speculated557 = tail call i32 @llvm.smax.i32(i32 %i.ow, i32 -32768)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated557, i32 32767) ; 5 uses
  br i1 %.not480, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph820
  %i.ox = icmp slt i32 %i.ov, -1
  br i1 %i.ox, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.oy = icmp slt i32 %.sroa.speculated564, %1
  %i.oz = icmp sgt i32 %i.ow, -2
  %or.cond11.not797 = select i1 %i.oy, i1 %i.oz, i1 false
  %.not461 = icmp slt i32 %.sroa.speculated, %2
  %or.cond510 = select i1 %or.cond11.not797, i1 %.not461, i1 false
  br i1 %or.cond510, label %._crit_edge856, label %bb.q

._crit_edge856:                                   ; preds = %bb.p
  %.pre = and i32 %.sroa.speculated564, 65535
  %.pre857 = and i32 %.sroa.speculated, 65535
  br label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.pa = load i8, ptr %i.a, align 4, !tbaa !15
  store i8 %i.pa, ptr %.5819, align 1, !tbaa !15
  %i.pb = load i8, ptr %i.as, align 1, !tbaa !15
  %i.pc = getelementptr inbounds nuw i8, ptr %.5819, i64 1
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !15
  %i.pd = load i8, ptr %i.at, align 2, !tbaa !15
  %i.pe = getelementptr inbounds nuw i8, ptr %.5819, i64 2
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !15
  %i.pf = load i8, ptr %i.au, align 1, !tbaa !15
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph820
  %i.pg = and i32 %.sroa.speculated564, 65535     ; 2 uses
  %.not462 = icmp slt i32 %i.pg, %i.aq
  %i.ph = and i32 %.sroa.speculated, 65535        ; 2 uses
  %.not463 = icmp slt i32 %i.ph, %i.ar
  %or.cond827 = select i1 %.not462, i1 %.not463, i1 false
  br i1 %or.cond827, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge856, %bb.r
  %.pre-phi858 = phi i32 [ %.pre857, %._crit_edge856 ], [ %i.ph, %bb.r ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge856 ], [ %i.pg, %bb.r ]
  %i.pi = phi ptr [ %i.a, %._crit_edge856 ], [ %.5819, %bb.r ] ; 7 uses
  %i.pj = and i32 %i.or, 1023                     ; 9 uses
  %i.pk = and i32 %i.ou, 1023                     ; 5 uses
  %i.pl = sub nuw nsw i32 1024, %i.pj             ; 8 uses
  %i.pm = sub nuw nsw i32 1024, %i.pk             ; 4 uses
  %i.pn = add nsw i32 %.sroa.speculated564, 1
  %i.po = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %i.pp = mul nsw i32 %.sroa.speculated, %3
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds i8, ptr %0, i64 %i.pq
  %i.ps = shl nsw i32 %.sroa.speculated564, 2
  %i.pt = sext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.pr, i64 %i.pt ; 8 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pw = mul nsw i32 %i.po, %3
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds i8, ptr %0, i64 %i.px
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 %i.pt ; 8 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %.not466 = icmp slt i32 %.pre-phi, %1           ; 2 uses
  %.not467 = icmp slt i32 %.pre-phi858, %2        ; 2 uses
  %or.cond511 = select i1 %.not466, i1 %.not467, i1 false ; 4 uses
  %.0433 = select i1 %or.cond511, ptr %i.pu, ptr %i.pi
  %i.qb = and i32 %i.pn, 65535
  %.not468 = icmp slt i32 %i.qb, %1               ; 2 uses
  %or.cond512 = select i1 %.not468, i1 %.not467, i1 false ; 4 uses
  %.0432 = select i1 %or.cond512, ptr %i.pv, ptr %i.pi
  %i.qc = and i32 %i.po, 65535
  %.not470 = icmp slt i32 %i.qc, %2               ; 2 uses
  %or.cond513 = select i1 %.not466, i1 %.not470, i1 false ; 4 uses
  %.0431 = select i1 %or.cond513, ptr %i.pz, ptr %i.pi
  %or.cond514 = select i1 %.not468, i1 %.not470, i1 false ; 4 uses
  %.0 = select i1 %or.cond514, ptr %i.qa, ptr %i.pi
  %i.qd = load i8, ptr %.0433, align 1, !tbaa !15
  %i.qe = zext i8 %i.qd to i32
  %i.qf = mul nuw nsw i32 %i.pl, %i.qe
  %i.qg = load i8, ptr %.0432, align 1, !tbaa !15
  %i.qh = zext i8 %i.qg to i32
  %i.qi = mul nuw nsw i32 %i.pj, %i.qh
  %i.qj = add nuw nsw i32 %i.qi, %i.qf
  %i.qk = lshr i32 %i.qj, 5
  %i.ql = mul nuw nsw i32 %i.qk, %i.pm
  %i.qm = load i8, ptr %.0431, align 1, !tbaa !15
  %i.qn = zext i8 %i.qm to i32
  %i.qo = mul nuw nsw i32 %i.pl, %i.qn
  %i.qp = load i8, ptr %.0, align 1, !tbaa !15
  %i.qq = zext i8 %i.qp to i32
  %i.qr = mul nuw nsw i32 %i.pj, %i.qq
  %i.qs = add nuw nsw i32 %i.qr, %i.qo
  %i.qt = lshr i32 %i.qs, 5
  %i.qu = mul nuw nsw i32 %i.qt, %i.pk
  %i.qv = add nuw nsw i32 %i.qu, %i.ql
  %i.qw = lshr i32 %i.qv, 15
  %i.qx = trunc nuw i32 %i.qw to i8
  store i8 %i.qx, ptr %.5819, align 1, !tbaa !15
  %.sroa.gep761 = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  %.sroa.gep762 = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 4 uses
  %.0433.sroa.sel763 = select i1 %or.cond511, ptr %.sroa.gep761, ptr %.sroa.gep762
  %i.qy = load i8, ptr %.0433.sroa.sel763, align 1, !tbaa !15
  %i.qz = zext i8 %i.qy to i32
  %i.ra = mul nuw nsw i32 %i.pl, %i.qz
  %.sroa.gep769 = getelementptr inbounds nuw i8, ptr %i.pu, i64 5
  %.0432.sroa.sel771 = select i1 %or.cond512, ptr %.sroa.gep769, ptr %.sroa.gep762
  %i.rb = load i8, ptr %.0432.sroa.sel771, align 1, !tbaa !15
  %i.rc = zext i8 %i.rb to i32
  %i.rd = mul nuw nsw i32 %i.pj, %i.rc
  %i.re = add nuw nsw i32 %i.rd, %i.ra
  %i.rf = lshr i32 %i.re, 5
  %i.rg = mul nuw nsw i32 %i.rf, %i.pm
  %.sroa.gep777 = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  %.0431.sroa.sel779 = select i1 %or.cond513, ptr %.sroa.gep777, ptr %.sroa.gep762
  %i.rh = load i8, ptr %.0431.sroa.sel779, align 1, !tbaa !15
  %i.ri = zext i8 %i.rh to i32
  %i.rj = mul nuw nsw i32 %i.pl, %i.ri
  %.sroa.gep785 = getelementptr inbounds nuw i8, ptr %i.pz, i64 5
  %.0.sroa.sel787 = select i1 %or.cond514, ptr %.sroa.gep785, ptr %.sroa.gep762
  %i.rk = load i8, ptr %.0.sroa.sel787, align 1, !tbaa !15
  %i.rl = zext i8 %i.rk to i32
  %i.rm = mul nuw nsw i32 %i.pj, %i.rl
  %i.rn = add nuw nsw i32 %i.rm, %i.rj
  %i.ro = lshr i32 %i.rn, 5
  %i.rp = mul nuw nsw i32 %i.ro, %i.pk
  %i.rq = add nuw nsw i32 %i.rp, %i.rg
  %i.rr = lshr i32 %i.rq, 15
  %i.rs = trunc nuw i32 %i.rr to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %.5819, i64 1
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !15
  %.sroa.gep758 = getelementptr inbounds nuw i8, ptr %i.pu, i64 2
  %.sroa.gep759 = getelementptr inbounds nuw i8, ptr %i.pi, i64 2 ; 4 uses
  %.0433.sroa.sel760 = select i1 %or.cond511, ptr %.sroa.gep758, ptr %.sroa.gep759
  %i.ru = load i8, ptr %.0433.sroa.sel760, align 1, !tbaa !15
  %i.rv = zext i8 %i.ru to i32
  %i.rw = mul nuw nsw i32 %i.pl, %i.rv
  %.sroa.gep766 = getelementptr inbounds nuw i8, ptr %i.pu, i64 6
  %.0432.sroa.sel768 = select i1 %or.cond512, ptr %.sroa.gep766, ptr %.sroa.gep759
  %i.rx = load i8, ptr %.0432.sroa.sel768, align 1, !tbaa !15
  %i.ry = zext i8 %i.rx to i32
  %i.rz = mul nuw nsw i32 %i.pj, %i.ry
  %i.sa = add nuw nsw i32 %i.rz, %i.rw
  %i.sb = lshr i32 %i.sa, 5
  %i.sc = mul nuw nsw i32 %i.sb, %i.pm
  %.sroa.gep774 = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  %.0431.sroa.sel776 = select i1 %or.cond513, ptr %.sroa.gep774, ptr %.sroa.gep759
  %i.sd = load i8, ptr %.0431.sroa.sel776, align 1, !tbaa !15
  %i.se = zext i8 %i.sd to i32
  %i.sf = mul nuw nsw i32 %i.pl, %i.se
  %.sroa.gep782 = getelementptr inbounds nuw i8, ptr %i.pz, i64 6
  %.0.sroa.sel784 = select i1 %or.cond514, ptr %.sroa.gep782, ptr %.sroa.gep759
  %i.sg = load i8, ptr %.0.sroa.sel784, align 1, !tbaa !15
  %i.sh = zext i8 %i.sg to i32
  %i.si = mul nuw nsw i32 %i.pj, %i.sh
  %i.sj = add nuw nsw i32 %i.si, %i.sf
  %i.sk = lshr i32 %i.sj, 5
  %i.sl = mul nuw nsw i32 %i.sk, %i.pk
  %i.sm = add nuw nsw i32 %i.sl, %i.sc
  %i.sn = lshr i32 %i.sm, 15
  %i.so = trunc nuw i32 %i.sn to i8
  %i.sp = getelementptr inbounds nuw i8, ptr %.5819, i64 2
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !15
  %.sroa.gep756 = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  %.sroa.gep757 = getelementptr inbounds nuw i8, ptr %i.pi, i64 3 ; 4 uses
  %.0433.sroa.sel = select i1 %or.cond511, ptr %.sroa.gep756, ptr %.sroa.gep757
  %i.sq = load i8, ptr %.0433.sroa.sel, align 1, !tbaa !15
  %i.sr = zext i8 %i.sq to i32
  %i.ss = mul nuw nsw i32 %i.pl, %i.sr
  %.sroa.gep764 = getelementptr inbounds nuw i8, ptr %i.pu, i64 7
  %.0432.sroa.sel = select i1 %or.cond512, ptr %.sroa.gep764, ptr %.sroa.gep757
  %i.st = load i8, ptr %.0432.sroa.sel, align 1, !tbaa !15
  %i.su = zext i8 %i.st to i32
  %i.sv = mul nuw nsw i32 %i.pj, %i.su
  %i.sw = add nuw nsw i32 %i.sv, %i.ss
  %i.sx = lshr i32 %i.sw, 5
  %i.sy = mul nuw nsw i32 %i.sx, %i.pm
  %.sroa.gep772 = getelementptr inbounds nuw i8, ptr %i.pz, i64 3
  %.0431.sroa.sel = select i1 %or.cond513, ptr %.sroa.gep772, ptr %.sroa.gep757
  %i.sz = load i8, ptr %.0431.sroa.sel, align 1, !tbaa !15
  %i.ta = zext i8 %i.sz to i32
  %i.tb = mul nuw nsw i32 %i.pl, %i.ta
  %.sroa.gep780 = getelementptr inbounds nuw i8, ptr %i.pz, i64 7
  %.0.sroa.sel = select i1 %or.cond514, ptr %.sroa.gep780, ptr %.sroa.gep757
  %i.tc = load i8, ptr %.0.sroa.sel, align 1, !tbaa !15
  %i.td = zext i8 %i.tc to i32
  %i.te = mul nuw nsw i32 %i.pj, %i.td
  %i.tf = add nuw nsw i32 %i.te, %i.tb
  %i.tg = lshr i32 %i.tf, 5
  %i.th = mul nuw nsw i32 %i.tg, %i.pk
  %i.ti = add nuw nsw i32 %i.th, %i.sy
  %i.tj = lshr i32 %i.ti, 15
  %i.tk = trunc nuw i32 %i.tj to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.s
  %.sink888 = phi i8 [ %i.tk, %bb.s ], [ %i.pf, %bb.q ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.5819, i64 3
  store i8 %.sink888, ptr %i.tl, align 1, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %i.tm = getelementptr inbounds nuw i8, ptr %.5819, i64 4 ; 2 uses
  %indvars.iv.next850 = add nuw nsw i64 %indvars.iv849, 1 ; 2 uses
  %exitcond853.not = icmp eq i64 %indvars.iv.next850, %wide.trip.count852
  br i1 %exitcond853.not, label %._crit_edge, label %.lr.ph820, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.t, %.preheader803
  %.5.lcssa = phi ptr [ %.1.lcssa, %.preheader803 ], [ %i.tm, %bb.t ]
  %i.tn = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.av
  %i.to = add nuw nsw i32 %.0444822, 1            ; 2 uses
  %exitcond854.not = icmp eq i32 %i.to, %6
  br i1 %exitcond854.not, label %._crit_edge825, label %bb.c, !llvm.loop !45

._crit_edge825:                                   ; preds = %._crit_edge, %.preheader804
  %.not.i.i.i552 = icmp eq ptr %.sroa.0707.0883, null
  br i1 %.not.i.i.i552, label %_ZNSt6vectorIiSaIiEED2Ev.exit553, label %bb.u

bb.u:                                             ; preds = %._crit_edge825
  %i.tp = ptrtoint ptr %.sroa.0707.0883 to i64
  %i.tq = sub i64 %.sroa.14.0881, %i.tp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0707.0883, i64 noundef %i.tq) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit553

_ZNSt6vectorIiSaIiEED2Ev.exit553:                 ; preds = %._crit_edge825, %bb.u
  %.not.i.i.i554 = icmp eq ptr %.sroa.0715.0793877, null
  br i1 %.not.i.i.i554, label %_ZNSt6vectorIiSaIiEED2Ev.exit555, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit553
  %i.tr = ptrtoint ptr %.sroa.0715.0793877 to i64
  %i.ts = sub i64 %.sroa.15.0791879, %i.tr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0715.0793877, i64 noundef %i.ts) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit555

_ZNSt6vectorIiSaIiEED2Ev.exit555:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit553, %bb.v
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn28warpaffine_bilinear_yuv420spEPKhiiPhiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [6 x float], align 16             ; 5 uses
  %.sroa.2.0.extract.shift = lshr i32 %8, 8
  %.sroa.034.0.insert.ext = and i32 %8, 255
  tail call void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %4, ptr noundef readonly %6, i32 noundef %7, i32 noundef %.sroa.034.0.insert.ext)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load <4 x float>, ptr %6, align 4, !tbaa !10
  %i.c = fmul reassoc nsz arcp contract afn <4 x float> %i.b, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 1.000000e+00>
  store <4 x float> %i.c, ptr %i.a, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !10
  %i.g = fmul reassoc nsz arcp contract afn <2 x float> %i.f, <float 1.000000e+00, float 5.000000e-01>
  store <2 x float> %i.g, ptr %i.d, align 16, !tbaa !10
  %i.h = mul nsw i32 %2, %1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = mul nsw i32 %5, %4
end_hunk_3
