Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/malloc_io?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@je_malloc_vsnprintf:bb.a
  %i.el = icmp ult i64 %.0510, %i.ei              ; 2 uses
  %or.cond = select i1 %.not, i1 %i.el, i1 false
  br i1 %or.cond, label %.lr.ph649, label %.loopexit533

.lr.ph649:                                        ; preds = %bb.az, %bb.ba
  %.1648 = phi i64 [ %.2, %bb.ba ], [ %.0384, %bb.az ] ; 3 uses
  %.0411647 = phi i64 [ %i.eo, %bb.ba ], [ 0, %bb.az ]
  %i.em = icmp ult i64 %.1648, %1
  br i1 %i.em, label %.sink.split, label %bb.ba

.sink.split:                                      ; preds = %.lr.ph649
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %.1648
  store i8 %.1415, ptr %i.en, align 1, !tbaa !13
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph649, %.sink.split
  %.2 = add i64 %.1648, 1                         ; 2 uses
  %i.eo = add nuw i64 %.0411647, 1                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.ej
  br i1 %i.ep, label %.lr.ph649, label %.loopexit533, !llvm.loop !22

.loopexit533:                                     ; preds = %bb.ba, %.thread, %bb.az
  %i.eq = phi i1 [ %i.el, %bb.az ], [ false, %.thread ], [ true, %bb.ba ]
  %i.er = phi i1 [ %i.ek, %bb.az ], [ %i.eh, %.thread ], [ false, %bb.ba ]
  %i.es = phi i64 [ %i.ej, %bb.az ], [ 0, %.thread ], [ %i.ej, %bb.ba ] ; 2 uses
  %.3 = phi i64 [ %.0384, %bb.az ], [ %.0384, %.thread ], [ %.2, %bb.ba ] ; 4 uses
  %i.et = icmp ult i64 %.3, %1
  br i1 %i.et, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit533
  %i.eu = sub nuw i64 %1, %.3
  %i.ev = call i64 @llvm.umin.i64(i64 %.0510, i64 %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr nonnull align 1 %.012.i, i64 %i.ev, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit533
  %i.ex = add i64 %.3, %.0510                     ; 2 uses
  %or.cond3 = select i1 %i.er, i1 %i.eq, i1 false
  %i.ey = icmp ne i64 %i.es, 0
  %or.cond655 = select i1 %or.cond3, i1 %i.ey, i1 false
  br i1 %or.cond655, label %.lr.ph653, label %.loopexit

.lr.ph653:                                        ; preds = %bb.bc, %bb.be
  %.4652 = phi i64 [ %i.fb, %bb.be ], [ %i.ex, %bb.bc ] ; 3 uses
  %.0409651 = phi i64 [ %i.fc, %bb.be ], [ 0, %bb.bc ]
  %i.ez = icmp ult i64 %.4652, %1
  br i1 %i.ez, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph653
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %.4652
  store i8 32, ptr %i.fa, align 1, !tbaa !13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph653
  %i.fb = add i64 %.4652, 1                       ; 2 uses
  %i.fc = add nuw i64 %.0409651, 1                ; 2 uses
  %exitcond714.not.a = icmp eq i64 %i.fc, %i.es
  br i1 %exitcond714.not.a, label %.loopexit, label %.lr.ph653, !llvm.loop !23

.loopexit:                                        ; preds = %bb.be, %bb.bc
  %.5 = phi i64 [ %i.ex, %bb.bc ], [ %i.fb, %bb.be ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.backedge

bb.bf:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %trunc478 = or i8 %.0413, -128
  %i.fe = load i32, ptr %3, align 8               ; 11 uses
  %i.ff = icmp ult i32 %i.fe, 41                  ; 5 uses
  switch i8 %trunc478, label %bb.ca [
    i8 -15, label %bb.bo
    i8 -65, label %bb.bg
    i8 -6, label %bb.bw
    i8 -20, label %bb.bk
    i8 -22, label %bb.bs
  ]

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fg = load ptr, ptr %i.h, align 8
  %i.fh = zext nneg i32 %i.fe to i64
  %i.fi = getelementptr i8, ptr %i.fg, i64 %i.fh
  %i.fj = add nuw nsw i32 %i.fe, 8
  store i32 %i.fj, ptr %3, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  store ptr %i.fl, ptr %i.g, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fm = phi ptr [ %i.fi, %bb.bh ], [ %i.fk, %bb.bi ]
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = zext i32 %i.fn to i64
  br label %bb.cb

bb.bk:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fp = load ptr, ptr %i.h, align 8
  %i.fq = zext nneg i32 %i.fe to i64
  %i.fr = getelementptr i8, ptr %i.fp, i64 %i.fq
  %i.fs = add nuw nsw i32 %i.fe, 8
  store i32 %i.fs, ptr %3, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ft = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.g, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fv = phi ptr [ %i.fr, %bb.bl ], [ %i.ft, %bb.bm ]
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !16
  br label %bb.cb

bb.bo:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fx = load ptr, ptr %i.h, align 8
  %i.fy = zext nneg i32 %i.fe to i64
  %i.fz = getelementptr i8, ptr %i.fx, i64 %i.fy
  %i.ga = add nuw nsw i32 %i.fe, 8
  store i32 %i.ga, ptr %3, align 8
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.gb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  store ptr %i.gc, ptr %i.g, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gd = phi ptr [ %i.fz, %bb.bp ], [ %i.gb, %bb.bq ]
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !18
  br label %bb.cb

bb.bs:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gf = load ptr, ptr %i.h, align 8
  %i.gg = zext nneg i32 %i.fe to i64
  %i.gh = getelementptr i8, ptr %i.gf, i64 %i.gg
  %i.gi = add nuw nsw i32 %i.fe, 8
  store i32 %i.gi, ptr %3, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.gj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  store ptr %i.gk, ptr %i.g, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gl = phi ptr [ %i.gh, %bb.bt ], [ %i.gj, %bb.bu ]
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !16
  br label %bb.cb

bb.bw:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.gn = load ptr, ptr %i.h, align 8
  %i.go = zext nneg i32 %i.fe to i64
  %i.gp = getelementptr i8, ptr %i.gn, i64 %i.go
  %i.gq = add nuw nsw i32 %i.fe, 8
  store i32 %i.gq, ptr %3, align 8
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.gr = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  store ptr %i.gs, ptr %i.g, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.gt = phi ptr [ %i.gp, %bb.bx ], [ %i.gr, %bb.by ]
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !16
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bf
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.bv, %bb.br, %bb.bn, %bb.bj
  %.0408 = phi i64 [ %i.ge, %bb.br ], [ %i.fo, %bb.bj ], [ %i.gu, %bb.bz ], [ %i.fw, %bb.bn ], [ %i.gm, %bb.bv ]
  store i8 0, ptr %i.l, align 16, !tbaa !13
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cc ], [ 64, %bb.cb ] ; 2 uses
  %.232.i.i = phi i64 [ %i.gz, %bb.cc ], [ %.0408, %bb.cb ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.gv = and i64 %.232.i.i, 7                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr @.str.4, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !13
  %i.gz = lshr i64 %.232.i.i, 3
  %.not34.i.i = icmp ult i64 %.232.i.i, 8
  br i1 %.not34.i.i, label %u2s.exit.i483, label %bb.cc, !llvm.loop !24

u2s.exit.i483:                                    ; preds = %bb.cc
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i ; 2 uses
  %i.hb = trunc nuw i8 %.0387 to i1
  %4 = sub i64 65, %indvars.iv.i
  %5 = and i64 %4, 4294967295                     ; 2 uses
  %.not.i = icmp ne i64 %i.gv, 0
  %or.cond531.not = and i1 %.not.i, %i.hb
  br i1 %or.cond531.not, label %bb.cd, label %o2s.exit

bb.cd:                                            ; preds = %u2s.exit.i483
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -1 ; 2 uses
  %i.hd = add nuw nsw i64 %5, 1
  store i8 48, ptr %i.hc, align 1, !tbaa !13
  br label %o2s.exit

o2s.exit:                                         ; preds = %u2s.exit.i483, %bb.cd
  %.1511 = phi i64 [ %5, %u2s.exit.i483 ], [ %i.hd, %bb.cd ] ; 4 uses
  %.0.i = phi ptr [ %i.ha, %u2s.exit.i483 ], [ %i.hc, %bb.cd ]
  %i.he = icmp eq i32 %.0410, -1
  br i1 %i.he, label %.thread515, label %bb.ce

.thread515:                                       ; preds = %o2s.exit
  %i.hf = trunc nuw i8 %.2393 to i1
  br label %.loopexit537

bb.ce:                                            ; preds = %o2s.exit
  %i.hg = sext i32 %.0410 to i64                  ; 2 uses
  %i.hh = call i64 @llvm.usub.sat.i64(i64 %i.hg, i64 %.1511) ; 3 uses
  %i.hi = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not4 = xor i1 %i.hi, true
  %i.hj = icmp ult i64 %.1511, %i.hg              ; 2 uses
  %or.cond6 = select i1 %.not4, i1 %i.hj, i1 false
  br i1 %or.cond6, label %.lr.ph640, label %.loopexit537

.lr.ph640:                                        ; preds = %bb.ce, %bb.cf
  %.6639 = phi i64 [ %.7, %bb.cf ], [ %.0384, %bb.ce ] ; 3 uses
  %.0407638 = phi i64 [ %i.hm, %bb.cf ], [ 0, %bb.ce ]
  %i.hk = icmp ult i64 %.6639, %1
  br i1 %i.hk, label %.sink.split824, label %bb.cf

.sink.split824:                                   ; preds = %.lr.ph640
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 %.6639
  store i8 %.1415, ptr %i.hl, align 1, !tbaa !13
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph640, %.sink.split824
  %.7 = add i64 %.6639, 1                         ; 2 uses
  %i.hm = add nuw i64 %.0407638, 1                ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hh
  br i1 %i.hn, label %.lr.ph640, label %.loopexit537, !llvm.loop !25

.loopexit537:                                     ; preds = %bb.cf, %.thread515, %bb.ce
  %i.ho = phi i1 [ %i.hj, %bb.ce ], [ false, %.thread515 ], [ true, %bb.cf ]
  %i.hp = phi i1 [ %i.hi, %bb.ce ], [ %i.hf, %.thread515 ], [ false, %bb.cf ]
  %i.hq = phi i64 [ %i.hh, %bb.ce ], [ 0, %.thread515 ], [ %i.hh, %bb.cf ] ; 2 uses
  %.8 = phi i64 [ %.0384, %bb.ce ], [ %.0384, %.thread515 ], [ %.7, %bb.cf ] ; 4 uses
  %i.hr = icmp ult i64 %.8, %1
  br i1 %i.hr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit537
  %i.hs = sub nuw i64 %1, %.8
  %i.ht = call i64 @llvm.umin.i64(i64 %.1511, i64 %i.hs)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 %.8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr nonnull align 1 %.0.i, i64 %i.ht, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.loopexit537
  %i.hv = add i64 %.8, %.1511                     ; 2 uses
  %or.cond8 = select i1 %i.hp, i1 %i.ho, i1 false
  %i.hw = icmp ne i64 %i.hq, 0
  %or.cond656 = select i1 %or.cond8, i1 %i.hw, i1 false
  br i1 %or.cond656, label %.lr.ph644, label %.loopexit535

.lr.ph644:                                        ; preds = %bb.ch, %bb.cj
  %.9643 = phi i64 [ %i.hz, %bb.cj ], [ %i.hv, %bb.ch ] ; 3 uses
  %.0405642 = phi i64 [ %i.ia, %bb.cj ], [ 0, %bb.ch ]
  %i.hx = icmp ult i64 %.9643, %1
  br i1 %i.hx, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph644
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 %.9643
  store i8 32, ptr %i.hy, align 1, !tbaa !13
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph644
  %i.hz = add i64 %.9643, 1                       ; 2 uses
  %i.ia = add nuw i64 %.0405642, 1                ; 2 uses
  %exitcond713.not.a = icmp eq i64 %i.ia, %i.hq
  br i1 %exitcond713.not.a, label %.loopexit535, label %.lr.ph644, !llvm.loop !26

.loopexit535:                                     ; preds = %bb.cj, %bb.ch
  %.10 = phi i64 [ %i.hv, %bb.ch ], [ %i.hz, %bb.cj ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.ib, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.backedge

bb.ck:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %trunc476 = or i8 %.0413, -128
  %i.ic = load i32, ptr %3, align 8               ; 11 uses
  %i.id = icmp ult i32 %i.ic, 41                  ; 5 uses
  switch i8 %trunc476, label %bb.df [
    i8 -15, label %bb.ct
    i8 -65, label %bb.cl
    i8 -6, label %bb.db
    i8 -20, label %bb.cp
    i8 -22, label %bb.cx
  ]

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.id, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ie = load ptr, ptr %i.h, align 8
  %i.if = zext nneg i32 %i.ic to i64
  %i.ig = getelementptr i8, ptr %i.ie, i64 %i.if
  %i.ih = add nuw nsw i32 %i.ic, 8
  store i32 %i.ih, ptr %3, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.ii = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  store ptr %i.ij, ptr %i.g, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ik = phi ptr [ %i.ig, %bb.cm ], [ %i.ii, %bb.cn ]
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !7
  %i.im = zext i32 %i.il to i64
  br label %bb.dg

bb.cp:                                            ; preds = %bb.ck
  br i1 %i.id, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.in = load ptr, ptr %i.h, align 8
  %i.io = zext nneg i32 %i.ic to i64
  %i.ip = getelementptr i8, ptr %i.in, i64 %i.io
  %i.iq = add nuw nsw i32 %i.ic, 8
  store i32 %i.iq, ptr %3, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ir = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  store ptr %i.is, ptr %i.g, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.it = phi ptr [ %i.ip, %bb.cq ], [ %i.ir, %bb.cr ]
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !16
  br label %bb.dg

bb.ct:                                            ; preds = %bb.ck
  br i1 %i.id, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.iv = load ptr, ptr %i.h, align 8
  %i.iw = zext nneg i32 %i.ic to i64
  %i.ix = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.iy = add nuw nsw i32 %i.ic, 8
  store i32 %i.iy, ptr %3, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.iz = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  store ptr %i.ja, ptr %i.g, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.jb = phi ptr [ %i.ix, %bb.cu ], [ %i.iz, %bb.cv ]
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !18
  br label %bb.dg

bb.cx:                                            ; preds = %bb.ck
  br i1 %i.id, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jd = load ptr, ptr %i.h, align 8
  %i.je = zext nneg i32 %i.ic to i64
  %i.jf = getelementptr i8, ptr %i.jd, i64 %i.je
  %i.jg = add nuw nsw i32 %i.ic, 8
  store i32 %i.jg, ptr %3, align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.jh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  store ptr %i.ji, ptr %i.g, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.jj = phi ptr [ %i.jf, %bb.cy ], [ %i.jh, %bb.cz ]
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !16
  br label %bb.dg

bb.db:                                            ; preds = %bb.ck
  br i1 %i.id, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.jl = load ptr, ptr %i.h, align 8
  %i.jm = zext nneg i32 %i.ic to i64
  %i.jn = getelementptr i8, ptr %i.jl, i64 %i.jm
  %i.jo = add nuw nsw i32 %i.ic, 8
  store i32 %i.jo, ptr %3, align 8
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.jp = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 8
  store ptr %i.jq, ptr %i.g, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
end_hunk_0
begin_hunk_1_@je_malloc_vsnprintf:bb.a

.lr.ph631:                                        ; preds = %bb.dh, %bb.di
  %.11630 = phi i64 [ %.12, %bb.di ], [ %.0384, %bb.dh ] ; 3 uses
  %.0403629 = phi i64 [ %i.kl, %bb.di ], [ 0, %bb.dh ]
  %i.kj = icmp ult i64 %.11630, %1
  br i1 %i.kj, label %.sink.split827, label %bb.di

.sink.split827:                                   ; preds = %.lr.ph631
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 %.11630
  store i8 %.1415, ptr %i.kk, align 1, !tbaa !13
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph631, %.sink.split827
  %.12 = add i64 %.11630, 1                       ; 2 uses
  %i.kl = add nuw i64 %.0403629, 1                ; 2 uses
  %i.km = icmp ult i64 %i.kl, %i.kg
  br i1 %i.km, label %.lr.ph631, label %.loopexit541, !llvm.loop !27

.loopexit541:                                     ; preds = %bb.di, %.thread518, %bb.dh
  %i.kn = phi i1 [ %i.ki, %bb.dh ], [ false, %.thread518 ], [ true, %bb.di ]
  %i.ko = phi i1 [ %i.kh, %bb.dh ], [ %i.ke, %.thread518 ], [ false, %bb.di ]
  %i.kp = phi i64 [ %i.kg, %bb.dh ], [ 0, %.thread518 ], [ %i.kg, %bb.di ] ; 2 uses
  %.13 = phi i64 [ %.0384, %bb.dh ], [ %.0384, %.thread518 ], [ %.12, %bb.di ] ; 4 uses
  %i.kq = icmp ult i64 %.13, %1
  br i1 %i.kq, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.loopexit541
  %i.kr = sub nuw i64 %1, %.13
  %i.ks = call i64 @llvm.umin.i64(i64 %i.kc, i64 %i.kr)
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 %.13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kt, ptr nonnull align 1 %i.ka, i64 %i.ks, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.loopexit541
  %i.ku = add i64 %.13, %i.kc                     ; 2 uses
  %or.cond13 = select i1 %i.ko, i1 %i.kn, i1 false
  %i.kv = icmp ne i64 %i.kp, 0
  %or.cond657 = select i1 %or.cond13, i1 %i.kv, i1 false
  br i1 %or.cond657, label %.lr.ph635, label %.loopexit539

.lr.ph635:                                        ; preds = %bb.dk, %bb.dm
  %.14634 = phi i64 [ %i.ky, %bb.dm ], [ %i.ku, %bb.dk ] ; 3 uses
  %.0400633 = phi i64 [ %i.kz, %bb.dm ], [ 0, %bb.dk ]
  %i.kw = icmp ult i64 %.14634, %1
  br i1 %i.kw, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph635
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %.14634
  store i8 32, ptr %i.kx, align 1, !tbaa !13
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph635
  %i.ky = add i64 %.14634, 1                      ; 2 uses
  %i.kz = add nuw i64 %.0400633, 1                ; 2 uses
  %exitcond712.not.a = icmp eq i64 %i.kz, %i.kp
  br i1 %exitcond712.not.a, label %.loopexit539, label %.lr.ph635, !llvm.loop !28

.loopexit539:                                     ; preds = %bb.dm, %bb.dk
  %.15 = phi i64 [ %i.ku, %bb.dk ], [ %i.ky, %bb.dm ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.la, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.backedge

bb.dn:                                            ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %trunc = or i8 %.0413, -128
  %i.lb = load i32, ptr %3, align 8               ; 11 uses
  %i.lc = icmp ult i32 %i.lb, 41                  ; 5 uses
  switch i8 %trunc, label %bb.ei [
    i8 -15, label %bb.dw
    i8 -65, label %bb.do
    i8 -6, label %bb.ee
    i8 -20, label %bb.ds
    i8 -22, label %bb.ea
  ]

bb.do:                                            ; preds = %bb.dn
  br i1 %i.lc, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ld = load ptr, ptr %i.h, align 8
  %i.le = zext nneg i32 %i.lb to i64
  %i.lf = getelementptr i8, ptr %i.ld, i64 %i.le
  %i.lg = add nuw nsw i32 %i.lb, 8
  store i32 %i.lg, ptr %3, align 8
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.lh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 8
  store ptr %i.li, ptr %i.g, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.lj = phi ptr [ %i.lf, %bb.dp ], [ %i.lh, %bb.dq ]
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !7
  %i.ll = zext i32 %i.lk to i64
  br label %bb.ej

bb.ds:                                            ; preds = %bb.dn
  br i1 %i.lc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.lm = load ptr, ptr %i.h, align 8
  %i.ln = zext nneg i32 %i.lb to i64
  %i.lo = getelementptr i8, ptr %i.lm, i64 %i.ln
  %i.lp = add nuw nsw i32 %i.lb, 8
  store i32 %i.lp, ptr %3, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.lq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 8
  store ptr %i.lr, ptr %i.g, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.ls = phi ptr [ %i.lo, %bb.dt ], [ %i.lq, %bb.du ]
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !16
  br label %bb.ej

bb.dw:                                            ; preds = %bb.dn
  br i1 %i.lc, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.lu = load ptr, ptr %i.h, align 8
  %i.lv = zext nneg i32 %i.lb to i64
  %i.lw = getelementptr i8, ptr %i.lu, i64 %i.lv
  %i.lx = add nuw nsw i32 %i.lb, 8
  store i32 %i.lx, ptr %3, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.ly = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 8
  store ptr %i.lz, ptr %i.g, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.ma = phi ptr [ %i.lw, %bb.dx ], [ %i.ly, %bb.dy ]
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !18
  br label %bb.ej

bb.ea:                                            ; preds = %bb.dn
  br i1 %i.lc, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.mc = load ptr, ptr %i.h, align 8
  %i.md = zext nneg i32 %i.lb to i64
  %i.me = getelementptr i8, ptr %i.mc, i64 %i.md
  %i.mf = add nuw nsw i32 %i.lb, 8
  store i32 %i.mf, ptr %3, align 8
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.mg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 8
  store ptr %i.mh, ptr %i.g, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.mi = phi ptr [ %i.me, %bb.eb ], [ %i.mg, %bb.ec ]
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !16
  br label %bb.ej

bb.ee:                                            ; preds = %bb.dn
  br i1 %i.lc, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.mk = load ptr, ptr %i.h, align 8
  %i.ml = zext nneg i32 %i.lb to i64
  %i.mm = getelementptr i8, ptr %i.mk, i64 %i.ml
  %i.mn = add nuw nsw i32 %i.lb, 8
  store i32 %i.mn, ptr %3, align 8
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.mo = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 8
  store ptr %i.mp, ptr %i.g, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.mq = phi ptr [ %i.mm, %bb.ef ], [ %i.mo, %bb.eg ]
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !16
  br label %bb.ej

bb.ei:                                            ; preds = %bb.dn
  unreachable

bb.ej:                                            ; preds = %bb.eh, %bb.ed, %bb.dz, %bb.dv, %bb.dr
  %.0399 = phi i64 [ %i.mb, %bb.dz ], [ %i.ll, %bb.dr ], [ %i.mr, %bb.eh ], [ %i.lt, %bb.dv ], [ %i.mj, %bb.ed ]
  %i.ms = load i8, ptr %i.be, align 1, !tbaa !13
  %i.mt = icmp eq i8 %i.ms, 88                    ; 2 uses
  store i8 0, ptr %i.j, align 16, !tbaa !13
  %i.mu = select i1 %i.mt, ptr @.str.1, ptr @.str.2
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %bb.ej
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ek ], [ 64, %bb.ej ] ; 2 uses
  %.131.i.i = phi i64 [ %i.mz, %bb.ek ], [ %.0399, %bb.ej ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.mv = and i64 %.131.i.i, 15
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i.i
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !13
  %i.mz = lshr i64 %.131.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i, label %u2s.exit.i485, label %bb.ek, !llvm.loop !29

u2s.exit.i485:                                    ; preds = %bb.ek
  %i.na = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.nb = trunc nuw i8 %.0387 to i1
  %6 = sub i64 65, %indvars.iv.i.i
  %7 = and i64 %6, 4294967295                     ; 2 uses
  br i1 %i.nb, label %bb.el, label %x2s.exit

bb.el:                                            ; preds = %u2s.exit.i485
  %i.nc = getelementptr inbounds i8, ptr %i.na, i64 -2 ; 2 uses
  %i.nd = add nuw nsw i64 %7, 2
  %i.ne = select i1 %i.mt, i16 22576, i16 30768
  store i16 %i.ne, ptr %i.nc, align 1
  br label %x2s.exit

x2s.exit:                                         ; preds = %u2s.exit.i485, %bb.el
  %.2512 = phi i64 [ %i.nd, %bb.el ], [ %7, %u2s.exit.i485 ] ; 4 uses
  %.0.i486 = phi ptr [ %i.nc, %bb.el ], [ %i.na, %u2s.exit.i485 ]
  %i.nf = icmp eq i32 %.0410, -1
  br i1 %i.nf, label %.thread521, label %bb.em

.thread521:                                       ; preds = %x2s.exit
  %i.ng = trunc nuw i8 %.2393 to i1
  br label %.loopexit545

bb.em:                                            ; preds = %x2s.exit
  %i.nh = sext i32 %.0410 to i64                  ; 2 uses
  %i.ni = call i64 @llvm.usub.sat.i64(i64 %i.nh, i64 %.2512) ; 3 uses
  %i.nj = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not14 = xor i1 %i.nj, true
  %i.nk = icmp ult i64 %.2512, %i.nh              ; 2 uses
  %or.cond16 = select i1 %.not14, i1 %i.nk, i1 false
  br i1 %or.cond16, label %.lr.ph623, label %.loopexit545

.lr.ph623:                                        ; preds = %bb.em, %bb.en
  %.16622 = phi i64 [ %.17, %bb.en ], [ %.0384, %bb.em ] ; 3 uses
  %.0398621 = phi i64 [ %i.nn, %bb.en ], [ 0, %bb.em ]
  %i.nl = icmp ult i64 %.16622, %1
  br i1 %i.nl, label %.sink.split830, label %bb.en

.sink.split830:                                   ; preds = %.lr.ph623
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 %.16622
  store i8 %.1415, ptr %i.nm, align 1, !tbaa !13
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph623, %.sink.split830
  %.17 = add i64 %.16622, 1                       ; 2 uses
  %i.nn = add nuw i64 %.0398621, 1                ; 2 uses
  %i.no = icmp ult i64 %i.nn, %i.ni
  br i1 %i.no, label %.lr.ph623, label %.loopexit545, !llvm.loop !30

.loopexit545:                                     ; preds = %bb.en, %.thread521, %bb.em
  %i.np = phi i1 [ %i.nk, %bb.em ], [ false, %.thread521 ], [ true, %bb.en ]
  %i.nq = phi i1 [ %i.nj, %bb.em ], [ %i.ng, %.thread521 ], [ false, %bb.en ]
  %i.nr = phi i64 [ %i.ni, %bb.em ], [ 0, %.thread521 ], [ %i.ni, %bb.en ] ; 2 uses
  %.18 = phi i64 [ %.0384, %bb.em ], [ %.0384, %.thread521 ], [ %.17, %bb.en ] ; 4 uses
  %i.ns = icmp ult i64 %.18, %1
  br i1 %i.ns, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %.loopexit545
  %i.nt = sub nuw i64 %1, %.18
  %i.nu = call i64 @llvm.umin.i64(i64 %.2512, i64 %i.nt)
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 %.18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nv, ptr nonnull align 1 %.0.i486, i64 %i.nu, i1 false)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.loopexit545
  %i.nw = add i64 %.18, %.2512                    ; 2 uses
  %or.cond18 = select i1 %i.nq, i1 %i.np, i1 false
  %i.nx = icmp ne i64 %i.nr, 0
  %or.cond658 = select i1 %or.cond18, i1 %i.nx, i1 false
  br i1 %or.cond658, label %.lr.ph627, label %.loopexit543

.lr.ph627:                                        ; preds = %bb.ep, %bb.er
  %.19626 = phi i64 [ %i.oa, %bb.er ], [ %i.nw, %bb.ep ] ; 3 uses
  %.0395625 = phi i64 [ %i.ob, %bb.er ], [ 0, %bb.ep ]
  %i.ny = icmp ult i64 %.19626, %1
  br i1 %i.ny, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph627
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 %.19626
  store i8 32, ptr %i.nz, align 1, !tbaa !13
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph627
  %i.oa = add i64 %.19626, 1                      ; 2 uses
  %i.ob = add nuw i64 %.0395625, 1                ; 2 uses
  %exitcond711.not.a = icmp eq i64 %i.ob, %i.nr
  br i1 %exitcond711.not.a, label %.loopexit543, label %.lr.ph627, !llvm.loop !31

.loopexit543:                                     ; preds = %bb.er, %bb.ep
  %.20 = phi i64 [ %i.nw, %bb.ep ], [ %i.oa, %bb.er ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.oc, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %.backedge

bb.es:                                            ; preds = %bb.p
  %i.od = load i32, ptr %3, align 8               ; 3 uses
  %i.oe = icmp ult i32 %i.od, 41
  br i1 %i.oe, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.of = load ptr, ptr %i.h, align 8
  %i.og = zext nneg i32 %i.od to i64
  %i.oh = getelementptr i8, ptr %i.of, i64 %i.og
  %i.oi = add nuw nsw i32 %i.od, 8
  store i32 %i.oi, ptr %3, align 8
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.oj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  store ptr %i.ok, ptr %i.g, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.ol = phi ptr [ %i.oh, %bb.et ], [ %i.oj, %bb.eu ]
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7
  %i.on = trunc i32 %i.om to i8
  %i.oo = sext i32 %.0410 to i64
  %i.op = add nsw i64 %i.oo, -1
  %i.oq = add i32 %.0410, 1
  %i.or = icmp ult i32 %i.oq, 3
  %i.os = select i1 %i.or, i64 0, i64 %i.op       ; 3 uses
  %i.ot = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not19 = xor i1 %i.ot, true
  %i.ou = icmp ne i64 %i.os, 0                    ; 2 uses
  %or.cond21 = select i1 %.not19, i1 %i.ou, i1 false
  br i1 %or.cond21, label %.preheader548, label %.loopexit549

.preheader548:                                    ; preds = %bb.ev, %bb.ew
  %.21618 = phi i64 [ %.22, %bb.ew ], [ %.0384, %bb.ev ] ; 3 uses
  %.0394617 = phi i64 [ %i.ox, %bb.ew ], [ 0, %bb.ev ]
  %i.ov = icmp ult i64 %.21618, %1
  br i1 %i.ov, label %.sink.split833, label %bb.ew

.sink.split833:                                   ; preds = %.preheader548
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 %.21618
  store i8 %.1415, ptr %i.ow, align 1, !tbaa !13
  br label %bb.ew

bb.ew:                                            ; preds = %.preheader548, %.sink.split833
  %.22 = add i64 %.21618, 1                       ; 2 uses
  %i.ox = add nuw i64 %.0394617, 1                ; 2 uses
  %exitcond709.not = icmp eq i64 %i.ox, %i.os
  br i1 %exitcond709.not, label %.loopexit549, label %.preheader548, !llvm.loop !32

.loopexit549:                                     ; preds = %bb.ew, %bb.ev
  %.23 = phi i64 [ %.0384, %bb.ev ], [ %.22, %bb.ew ] ; 3 uses
  %i.oy = icmp ult i64 %.23, %1
  br i1 %i.oy, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.loopexit549
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 %.23
  store i8 %i.on, ptr %i.oz, align 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.loopexit549
  %i.pa = add i64 %.23, 1                         ; 2 uses
  %or.cond23 = select i1 %i.ot, i1 %i.ou, i1 false
  br i1 %or.cond23, label %.preheader546, label %.loopexit547

.preheader546:                                    ; preds = %bb.ey, %bb.fa
  %.24620 = phi i64 [ %i.pd, %bb.fa ], [ %i.pa, %bb.ey ] ; 3 uses
  %.0390619 = phi i64 [ %i.pe, %bb.fa ], [ 0, %bb.ey ]
  %i.pb = icmp ult i64 %.24620, %1
  br i1 %i.pb, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.preheader546
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 %.24620
  store i8 32, ptr %i.pc, align 1, !tbaa !13
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.preheader546
  %i.pd = add i64 %.24620, 1                      ; 2 uses
  %i.pe = add nuw i64 %.0390619, 1                ; 2 uses
  %exitcond710.not = icmp eq i64 %i.pe, %i.os
  br i1 %exitcond710.not, label %.loopexit547, label %.preheader546, !llvm.loop !33

.loopexit547:                                     ; preds = %bb.fa, %bb.ey
  %.25 = phi i64 [ %i.pa, %bb.ey ], [ %i.pd, %bb.fa ]
  %i.pf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.pf, ptr %i.a, align 8, !tbaa !14
  br label %.backedge

bb.fb:                                            ; preds = %bb.p
  %i.pg = load i32, ptr %3, align 8               ; 3 uses
  %i.ph = icmp ult i32 %i.pg, 41
  br i1 %i.ph, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.pi = load ptr, ptr %i.h, align 8
  %i.pj = zext nneg i32 %i.pg to i64
  %i.pk = getelementptr i8, ptr %i.pi, i64 %i.pj
  %i.pl = add nuw nsw i32 %i.pg, 8
  store i32 %i.pl, ptr %3, align 8
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.pm = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 8
  store ptr %i.pn, ptr %i.g, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.po = phi ptr [ %i.pk, %bb.fc ], [ %i.pm, %bb.fd ]
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !14 ; 2 uses
  %i.pq = icmp slt i32 %.0406, 0
  br i1 %i.pq, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.pr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pp) #13
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.ps = zext nneg i32 %.0406 to i64
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.pt = phi i64 [ %i.pr, %bb.ff ], [ %i.ps, %bb.fg ] ; 4 uses
  %i.pu = icmp eq i32 %.0410, -1
  br i1 %i.pu, label %.thread524, label %bb.fi

.thread524:                                       ; preds = %bb.fh
  %i.pv = trunc nuw i8 %.2393 to i1
  br label %.loopexit553

bb.fi:                                            ; preds = %bb.fh
  %i.pw = sext i32 %.0410 to i64                  ; 2 uses
  %i.px = call i64 @llvm.usub.sat.i64(i64 %i.pw, i64 %i.pt) ; 3 uses
  %i.py = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not24 = xor i1 %i.py, true
  %i.pz = icmp ult i64 %i.pt, %i.pw               ; 2 uses
  %or.cond26 = select i1 %.not24, i1 %i.pz, i1 false
  br i1 %or.cond26, label %.lr.ph611, label %.loopexit553

.lr.ph611:                                        ; preds = %bb.fi, %bb.fj
  %.26610 = phi i64 [ %.27, %bb.fj ], [ %.0384, %bb.fi ] ; 3 uses
  %.0389609 = phi i64 [ %i.qc, %bb.fj ], [ 0, %bb.fi ]
  %i.qa = icmp ult i64 %.26610, %1
  br i1 %i.qa, label %.sink.split836, label %bb.fj

.sink.split836:                                   ; preds = %.lr.ph611
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 %.26610
  store i8 %.1415, ptr %i.qb, align 1, !tbaa !13
  br label %bb.fj

bb.fj:                                            ; preds = %.lr.ph611, %.sink.split836
  %.27 = add i64 %.26610, 1                       ; 2 uses
  %i.qc = add nuw i64 %.0389609, 1                ; 2 uses
  %i.qd = icmp ult i64 %i.qc, %i.px
  br i1 %i.qd, label %.lr.ph611, label %.loopexit553, !llvm.loop !34

.loopexit553:                                     ; preds = %bb.fj, %.thread524, %bb.fi
  %i.qe = phi i1 [ %i.pz, %bb.fi ], [ false, %.thread524 ], [ true, %bb.fj ]
  %i.qf = phi i1 [ %i.py, %bb.fi ], [ %i.pv, %.thread524 ], [ false, %bb.fj ]
  %i.qg = phi i64 [ %i.px, %bb.fi ], [ 0, %.thread524 ], [ %i.px, %bb.fj ] ; 2 uses
  %.28 = phi i64 [ %.0384, %bb.fi ], [ %.0384, %.thread524 ], [ %.27, %bb.fj ] ; 4 uses
  %i.qh = icmp ult i64 %.28, %1
  br i1 %i.qh, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.loopexit553
  %i.qi = sub nuw i64 %1, %.28
  %i.qj = call i64 @llvm.umin.i64(i64 %i.pt, i64 %i.qi)
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 %.28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qk, ptr align 1 %i.pp, i64 %i.qj, i1 false)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.loopexit553
  %i.ql = add i64 %.28, %i.pt                     ; 2 uses
  %or.cond28 = select i1 %i.qf, i1 %i.qe, i1 false
  %i.qm = icmp ne i64 %i.qg, 0
  %or.cond659 = select i1 %or.cond28, i1 %i.qm, i1 false
  br i1 %or.cond659, label %.lr.ph615, label %.loopexit551

.lr.ph615:                                        ; preds = %bb.fl, %bb.fn
  %.29614 = phi i64 [ %i.qp, %bb.fn ], [ %i.ql, %bb.fl ] ; 3 uses
  %.0386613 = phi i64 [ %i.qq, %bb.fn ], [ 0, %bb.fl ]
  %i.qn = icmp ult i64 %.29614, %1
  br i1 %i.qn, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.lr.ph615
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 %.29614
  store i8 32, ptr %i.qo, align 1, !tbaa !13
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.lr.ph615
  %i.qp = add i64 %.29614, 1                      ; 2 uses
  %i.qq = add nuw i64 %.0386613, 1                ; 2 uses
  %exitcond708.not = icmp eq i64 %i.qq, %i.qg
  br i1 %exitcond708.not, label %.loopexit551, label %.lr.ph615, !llvm.loop !35

.loopexit551:                                     ; preds = %bb.fn, %bb.fl
  %.30 = phi i64 [ %i.ql, %bb.fl ], [ %i.qp, %bb.fn ]
  %i.qr = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.qr, ptr %i.a, align 8, !tbaa !14
  br label %.backedge

bb.fo:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.qs = load i32, ptr %3, align 8               ; 3 uses
  %i.qt = icmp ult i32 %i.qs, 41
  br i1 %i.qt, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.qu = load ptr, ptr %i.h, align 8
  %i.qv = zext nneg i32 %i.qs to i64
  %i.qw = getelementptr i8, ptr %i.qu, i64 %i.qv
  %i.qx = add nuw nsw i32 %i.qs, 8
  store i32 %i.qx, ptr %3, align 8
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  %i.qy = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.qz = getelementptr i8, ptr %i.qy, i64 8
  store ptr %i.qz, ptr %i.g, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.ra = phi ptr [ %i.qw, %bb.fp ], [ %i.qy, %bb.fq ]
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !16
  store i8 0, ptr %i.i, align 16, !tbaa !13
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %bb.fr
  %indvars.iv.i.i487 = phi i64 [ %indvars.iv.next.i.i489, %bb.fs ], [ 64, %bb.fr ] ; 2 uses
  %.131.i.i488 = phi i64 [ %i.rg, %bb.fs ], [ %i.rb, %bb.fr ] ; 2 uses
  %indvars.iv.next.i.i489 = add nsw i64 %indvars.iv.i.i487, -1 ; 3 uses
  %i.rc = and i64 %.131.i.i488, 15
  %i.rd = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !13
  %i.rf = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next.i.i489
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !13
  %i.rg = lshr i64 %.131.i.i488, 4                ; 2 uses
  %.not.i.i490 = icmp eq i64 %i.rg, 0
  br i1 %.not.i.i490, label %x2s.exit493, label %bb.fs, !llvm.loop !29

x2s.exit493:                                      ; preds = %bb.fs
  %i.rh = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next.i.i489
  %8 = sub i64 65, %indvars.iv.i.i487
  %9 = and i64 %8, 4294967295
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -2 ; 2 uses
  %i.rj = add nuw nsw i64 %9, 2                   ; 4 uses
  store i16 30768, ptr %i.ri, align 1
  %i.rk = icmp eq i32 %.0410, -1
  br i1 %i.rk, label %.thread527, label %bb.ft

.thread527:                                       ; preds = %x2s.exit493
  %i.rl = trunc nuw i8 %.2393 to i1
  br label %.loopexit557

bb.ft:                                            ; preds = %x2s.exit493
  %i.rm = sext i32 %.0410 to i64                  ; 2 uses
  %i.rn = call i64 @llvm.usub.sat.i64(i64 %i.rm, i64 %i.rj) ; 3 uses
  %i.ro = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not29 = xor i1 %i.ro, true
  %i.rp = icmp ult i64 %i.rj, %i.rm               ; 2 uses
  %or.cond31 = select i1 %.not29, i1 %i.rp, i1 false
  br i1 %or.cond31, label %.lr.ph, label %.loopexit557

.lr.ph:                                           ; preds = %bb.ft, %bb.fu
  %.31604 = phi i64 [ %.32, %bb.fu ], [ %.0384, %bb.ft ] ; 3 uses
  %.0385603 = phi i64 [ %i.rs, %bb.fu ], [ 0, %bb.ft ]
  %i.rq = icmp ult i64 %.31604, %1
  br i1 %i.rq, label %.sink.split839, label %bb.fu

.sink.split839:                                   ; preds = %.lr.ph
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 %.31604
  store i8 %.1415, ptr %i.rr, align 1, !tbaa !13
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph, %.sink.split839
  %.32 = add i64 %.31604, 1                       ; 2 uses
  %i.rs = add nuw i64 %.0385603, 1                ; 2 uses
  %i.rt = icmp ult i64 %i.rs, %i.rn
  br i1 %i.rt, label %.lr.ph, label %.loopexit557, !llvm.loop !36

.loopexit557:                                     ; preds = %bb.fu, %.thread527, %bb.ft
  %i.ru = phi i1 [ %i.rp, %bb.ft ], [ false, %.thread527 ], [ true, %bb.fu ]
  %i.rv = phi i1 [ %i.ro, %bb.ft ], [ %i.rl, %.thread527 ], [ false, %bb.fu ]
  %i.rw = phi i64 [ %i.rn, %bb.ft ], [ 0, %.thread527 ], [ %i.rn, %bb.fu ] ; 2 uses
  %.33 = phi i64 [ %.0384, %bb.ft ], [ %.0384, %.thread527 ], [ %.32, %bb.fu ] ; 4 uses
  %i.rx = icmp ult i64 %.33, %1
  br i1 %i.rx, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.loopexit557
  %i.ry = sub nuw i64 %1, %.33
  %i.rz = call i64 @llvm.umin.i64(i64 %i.rj, i64 %i.ry)
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 %.33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sa, ptr nonnull align 1 %i.ri, i64 %i.rz, i1 false)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.loopexit557
  %i.sb = add i64 %.33, %i.rj                     ; 2 uses
  %or.cond33 = select i1 %i.rv, i1 %i.ru, i1 false
  %i.sc = icmp ne i64 %i.rw, 0
  %or.cond660 = select i1 %or.cond33, i1 %i.sc, i1 false
  br i1 %or.cond660, label %.lr.ph607, label %.loopexit555

.lr.ph607:                                        ; preds = %bb.fw, %bb.fy
  %.0606 = phi i64 [ %i.sg, %bb.fy ], [ 0, %bb.fw ]
  %.34605 = phi i64 [ %i.sf, %bb.fy ], [ %i.sb, %bb.fw ] ; 3 uses
  %i.sd = icmp ult i64 %.34605, %1
  br i1 %i.sd, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.lr.ph607
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 %.34605
  store i8 32, ptr %i.se, align 1, !tbaa !13
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %.lr.ph607
  %i.sf = add i64 %.34605, 1                      ; 2 uses
  %i.sg = add nuw i64 %.0606, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.sg, %i.rw
  br i1 %exitcond.not, label %.loopexit555, label %.lr.ph607, !llvm.loop !37

.loopexit555:                                     ; preds = %bb.fy, %bb.fw
  %.35 = phi i64 [ %i.sb, %bb.fw ], [ %i.sf, %bb.fy ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.sh, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.backedge

bb.fz:                                            ; preds = %bb.p
  unreachable

bb.ga:                                            ; preds = %bb.b
  %i.si = icmp ult i64 %.0384, %1
  br i1 %i.si, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 %.0384
  store i8 %i.n, ptr %i.sj, align 1, !tbaa !13
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.sk = add i64 %.0384, 1
  %i.sl = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  store ptr %i.sl, ptr %i.a, align 8, !tbaa !14
  br label %.backedge

bb.gd:                                            ; preds = %bb.b
  %i.sm = icmp ult i64 %.0384, %1
  br i1 %i.sm, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 %.0384
  store i8 0, ptr %i.sn, align 1, !tbaa !13
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.so = getelementptr i8, ptr %0, i64 %1
  %i.sp = getelementptr i8, ptr %i.so, i64 -1
  store i8 0, ptr %i.sp, align 1, !tbaa !13
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %.0384
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree nosync nounwind uwtable
define hidden i64 @je_malloc_snprintf(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #7 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i64 @je_malloc_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #16
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i64 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: cold nounwind uwtable
define hidden void @je_malloc_vcprintf(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %0, null
  %i.c = load ptr, ptr @je_malloc_message, align 8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = select i1 %.not, ptr @je_wrtmessage, ptr %i.c
  %.0 = select i1 %i.b, ptr %i.d, ptr %0
  %i.e = call i64 @je_malloc_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %2, ptr noundef %3) #16 ; 0 uses
  call void %.0(ptr noundef %1, ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define hidden void @je_malloc_cprintf(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #9 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @je_malloc_vcprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define hidden void @je_malloc_printf(ptr noundef %0, ...) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load ptr, ptr @je_malloc_message, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = select i1 %.not.i, ptr @je_wrtmessage, ptr %i.b
  %i.d = call i64 @je_malloc_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %0, ptr noundef nonnull %1) #16 ; 0 uses
  call void %i.c(ptr noundef null, ptr noundef nonnull %i.a) #14, !inline_history !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12
end_hunk_1
