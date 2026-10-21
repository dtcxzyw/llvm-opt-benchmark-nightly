Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/malloc_io?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@je_malloc_vsnprintf:bb.a

.lr.ph652:                                        ; preds = %bb.az, %bb.ba
  %.1651 = phi i64 [ %.2, %bb.ba ], [ %.0384, %bb.az ] ; 3 uses
  %.0411650 = phi i64 [ %i.eo, %bb.ba ], [ 0, %bb.az ]
  %i.em = icmp ult i64 %.1651, %1
  br i1 %i.em, label %.sink.split, label %bb.ba

.sink.split:                                      ; preds = %.lr.ph652
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %.1651
  store i8 %.1415, ptr %i.en, align 1, !tbaa !15
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph652, %.sink.split
  %.2 = add i64 %.1651, 1                         ; 2 uses
  %i.eo = add nuw i64 %.0411650, 1                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.ej
  br i1 %i.ep, label %.lr.ph652, label %.loopexit534, !llvm.loop !20

.loopexit534:                                     ; preds = %bb.ba, %.thread, %bb.az
  %i.eq = phi i1 [ %i.el, %bb.az ], [ false, %.thread ], [ true, %bb.ba ]
  %i.er = phi i1 [ %i.ek, %bb.az ], [ %i.eh, %.thread ], [ false, %bb.ba ]
  %i.es = phi i64 [ %i.ej, %bb.az ], [ 0, %.thread ], [ %i.ej, %bb.ba ] ; 2 uses
  %.3 = phi i64 [ %.0384, %bb.az ], [ %.0384, %.thread ], [ %.2, %bb.ba ] ; 4 uses
  %i.et = icmp ult i64 %.3, %1
  br i1 %i.et, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit534
  %i.eu = sub nuw i64 %1, %.3
  %i.ev = call i64 @llvm.umin.i64(i64 %.0511, i64 %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr nonnull align 1 %.012.i, i64 %i.ev, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit534
  %i.ex = add i64 %.3, %.0511                     ; 2 uses
  %or.cond3 = select i1 %i.er, i1 %i.eq, i1 false
  %i.ey = icmp ne i64 %i.es, 0
  %or.cond658 = select i1 %or.cond3, i1 %i.ey, i1 false
  br i1 %or.cond658, label %.lr.ph656, label %.loopexit

.lr.ph656:                                        ; preds = %bb.bc, %bb.be
  %.4655 = phi i64 [ %i.fb, %bb.be ], [ %i.ex, %bb.bc ] ; 3 uses
  %.0409654 = phi i64 [ %i.fc, %bb.be ], [ 0, %bb.bc ]
  %i.ez = icmp ult i64 %.4655, %1
  br i1 %i.ez, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph656
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %.4655
  store i8 32, ptr %i.fa, align 1, !tbaa !15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph656
  %i.fb = add i64 %.4655, 1                       ; 2 uses
  %i.fc = add nuw i64 %.0409654, 1                ; 2 uses
  %exitcond719.not = icmp eq i64 %i.fc, %i.es
  br i1 %exitcond719.not, label %.loopexit, label %.lr.ph656, !llvm.loop !21

.loopexit:                                        ; preds = %bb.be, %bb.bc
  %.5 = phi i64 [ %i.ex, %bb.bc ], [ %i.fb, %bb.be ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !17
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
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !12
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
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !37
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
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !39
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
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !37
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
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !37
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bf
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.bv, %bb.br, %bb.bn, %bb.bj
  %.0408 = phi i64 [ %i.ge, %bb.br ], [ %i.fo, %bb.bj ], [ %i.gu, %bb.bz ], [ %i.fw, %bb.bn ], [ %i.gm, %bb.bv ]
  store i8 0, ptr %i.l, align 16, !tbaa !15
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cc ], [ 64, %bb.cb ] ; 2 uses
  %.232.i.i = phi i64 [ %i.ha, %bb.cc ], [ %.0408, %bb.cb ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.gv = and i64 %.232.i.i, 7
  %i.gw = getelementptr inbounds nuw i8, ptr @.str.4, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15  ; 2 uses
  %i.gy = and i64 %indvars.iv.next.i, 4294967295  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gy
  store i8 %i.gx, ptr %i.gz, align 1, !tbaa !15
  %i.ha = lshr i64 %.232.i.i, 3
  %.not34.i.i = icmp ult i64 %.232.i.i, 8
  br i1 %.not34.i.i, label %u2s.exit.i484, label %bb.cc, !llvm.loop !22

u2s.exit.i484:                                    ; preds = %bb.cc
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gy ; 2 uses
  %i.hc = trunc nuw i8 %.0387 to i1
  %i.hd = sub i64 65, %indvars.iv.i
  %i.he = and i64 %i.hd, 4294967295               ; 2 uses
  %.not.i = icmp ne i8 %i.gx, 48
  %or.cond532.not = select i1 %i.hc, i1 %.not.i, i1 false
  br i1 %or.cond532.not, label %bb.cd, label %o2s.exit

bb.cd:                                            ; preds = %u2s.exit.i484
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 -1 ; 2 uses
  %i.hg = add nuw nsw i64 %i.he, 1
  store i8 48, ptr %i.hf, align 1, !tbaa !15
  br label %o2s.exit

o2s.exit:                                         ; preds = %u2s.exit.i484, %bb.cd
  %.1512 = phi i64 [ %i.he, %u2s.exit.i484 ], [ %i.hg, %bb.cd ] ; 4 uses
  %.0.i = phi ptr [ %i.hb, %u2s.exit.i484 ], [ %i.hf, %bb.cd ]
  %i.hh = icmp eq i32 %.0410, -1
  br i1 %i.hh, label %.thread516, label %bb.ce

.thread516:                                       ; preds = %o2s.exit
  %i.hi = trunc nuw i8 %.2393 to i1
  br label %.loopexit538

bb.ce:                                            ; preds = %o2s.exit
  %i.hj = sext i32 %.0410 to i64                  ; 2 uses
  %i.hk = call i64 @llvm.usub.sat.i64(i64 %i.hj, i64 %.1512) ; 3 uses
  %i.hl = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not4 = xor i1 %i.hl, true
  %i.hm = icmp ult i64 %.1512, %i.hj              ; 2 uses
  %or.cond6 = select i1 %.not4, i1 %i.hm, i1 false
  br i1 %or.cond6, label %.lr.ph643, label %.loopexit538

.lr.ph643:                                        ; preds = %bb.ce, %bb.cf
  %.6642 = phi i64 [ %.7, %bb.cf ], [ %.0384, %bb.ce ] ; 3 uses
  %.0407641 = phi i64 [ %i.hp, %bb.cf ], [ 0, %bb.ce ]
  %i.hn = icmp ult i64 %.6642, %1
  br i1 %i.hn, label %.sink.split832, label %bb.cf

.sink.split832:                                   ; preds = %.lr.ph643
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %.6642
  store i8 %.1415, ptr %i.ho, align 1, !tbaa !15
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph643, %.sink.split832
  %.7 = add i64 %.6642, 1                         ; 2 uses
  %i.hp = add nuw i64 %.0407641, 1                ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.hk
  br i1 %i.hq, label %.lr.ph643, label %.loopexit538, !llvm.loop !23

.loopexit538:                                     ; preds = %bb.cf, %.thread516, %bb.ce
  %i.hr = phi i1 [ %i.hm, %bb.ce ], [ false, %.thread516 ], [ true, %bb.cf ]
  %i.hs = phi i1 [ %i.hl, %bb.ce ], [ %i.hi, %.thread516 ], [ false, %bb.cf ]
  %i.ht = phi i64 [ %i.hk, %bb.ce ], [ 0, %.thread516 ], [ %i.hk, %bb.cf ] ; 2 uses
  %.8 = phi i64 [ %.0384, %bb.ce ], [ %.0384, %.thread516 ], [ %.7, %bb.cf ] ; 4 uses
  %i.hu = icmp ult i64 %.8, %1
  br i1 %i.hu, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit538
  %i.hv = sub nuw i64 %1, %.8
  %i.hw = call i64 @llvm.umin.i64(i64 %.1512, i64 %i.hv)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %.8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hx, ptr nonnull align 1 %.0.i, i64 %i.hw, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.loopexit538
  %i.hy = add i64 %.8, %.1512                     ; 2 uses
  %or.cond8 = select i1 %i.hs, i1 %i.hr, i1 false
  %i.hz = icmp ne i64 %i.ht, 0
  %or.cond659 = select i1 %or.cond8, i1 %i.hz, i1 false
  br i1 %or.cond659, label %.lr.ph647, label %.loopexit536

.lr.ph647:                                        ; preds = %bb.ch, %bb.cj
  %.9646 = phi i64 [ %i.ic, %bb.cj ], [ %i.hy, %bb.ch ] ; 3 uses
  %.0405645 = phi i64 [ %i.id, %bb.cj ], [ 0, %bb.ch ]
  %i.ia = icmp ult i64 %.9646, %1
  br i1 %i.ia, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph647
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 %.9646
  store i8 32, ptr %i.ib, align 1, !tbaa !15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph647
  %i.ic = add i64 %.9646, 1                       ; 2 uses
  %i.id = add nuw i64 %.0405645, 1                ; 2 uses
  %exitcond718.not = icmp eq i64 %i.id, %i.ht
  br i1 %exitcond718.not, label %.loopexit536, label %.lr.ph647, !llvm.loop !24

.loopexit536:                                     ; preds = %bb.cj, %bb.ch
  %.10 = phi i64 [ %i.hy, %bb.ch ], [ %i.ic, %bb.cj ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.ie, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.backedge

bb.ck:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %trunc476 = or i8 %.0413, -128
  %i.if = load i32, ptr %3, align 8               ; 11 uses
  %i.ig = icmp ult i32 %i.if, 41                  ; 5 uses
  switch i8 %trunc476, label %bb.df [
    i8 -15, label %bb.ct
    i8 -65, label %bb.cl
    i8 -6, label %bb.db
    i8 -20, label %bb.cp
    i8 -22, label %bb.cx
  ]

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ih = load ptr, ptr %i.h, align 8
  %i.ii = zext nneg i32 %i.if to i64
  %i.ij = getelementptr i8, ptr %i.ih, i64 %i.ii
  %i.ik = add nuw nsw i32 %i.if, 8
  store i32 %i.ik, ptr %3, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.il = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 8
  store ptr %i.im, ptr %i.g, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.in = phi ptr [ %i.ij, %bb.cm ], [ %i.il, %bb.cn ]
  %i.io = load i32, ptr %i.in, align 4, !tbaa !12
  %i.ip = zext i32 %i.io to i64
  br label %bb.dg

bb.cp:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.iq = load ptr, ptr %i.h, align 8
  %i.ir = zext nneg i32 %i.if to i64
  %i.is = getelementptr i8, ptr %i.iq, i64 %i.ir
  %i.it = add nuw nsw i32 %i.if, 8
  store i32 %i.it, ptr %3, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.iu = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 8
  store ptr %i.iv, ptr %i.g, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.iw = phi ptr [ %i.is, %bb.cq ], [ %i.iu, %bb.cr ]
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !37
  br label %bb.dg

bb.ct:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.iy = load ptr, ptr %i.h, align 8
  %i.iz = zext nneg i32 %i.if to i64
  %i.ja = getelementptr i8, ptr %i.iy, i64 %i.iz
  %i.jb = add nuw nsw i32 %i.if, 8
  store i32 %i.jb, ptr %3, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.jc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  store ptr %i.jd, ptr %i.g, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.je = phi ptr [ %i.ja, %bb.cu ], [ %i.jc, %bb.cv ]
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !39
  br label %bb.dg

bb.cx:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jg = load ptr, ptr %i.h, align 8
  %i.jh = zext nneg i32 %i.if to i64
  %i.ji = getelementptr i8, ptr %i.jg, i64 %i.jh
  %i.jj = add nuw nsw i32 %i.if, 8
  store i32 %i.jj, ptr %3, align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.jk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 8
  store ptr %i.jl, ptr %i.g, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.jm = phi ptr [ %i.ji, %bb.cy ], [ %i.jk, %bb.cz ]
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !37
  br label %bb.dg

bb.db:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.jo = load ptr, ptr %i.h, align 8
  %i.jp = zext nneg i32 %i.if to i64
  %i.jq = getelementptr i8, ptr %i.jo, i64 %i.jp
  %i.jr = add nuw nsw i32 %i.if, 8
end_hunk_0
