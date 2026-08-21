inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@duckdb_je_malloc_vsnprintf:bb.a
  br i1 %or.cond, label %.lr.ph650, label %.loopexit532

.lr.ph650:                                        ; preds = %bb.az, %bb.ba
  %.1649 = phi i64 [ %.2, %bb.ba ], [ %.0383, %bb.az ] ; 3 uses
  %.0410648 = phi i64 [ %i.eo, %bb.ba ], [ 0, %bb.az ]
  %i.em = icmp ult i64 %.1649, %1
  br i1 %i.em, label %.sink.split, label %bb.ba

.sink.split:                                      ; preds = %.lr.ph650
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %.1649
  store i8 %.1414, ptr %i.en, align 1, !tbaa !7
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph650, %.sink.split
  %.2 = add i64 %.1649, 1                         ; 2 uses
  %i.eo = add nuw i64 %.0410648, 1                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.ej
  br i1 %i.ep, label %.lr.ph650, label %.loopexit532

.loopexit532:                                     ; preds = %bb.ba, %.thread, %bb.az
  %i.eq = phi i1 [ %i.el, %bb.az ], [ false, %.thread ], [ true, %bb.ba ]
  %i.er = phi i1 [ %i.ek, %bb.az ], [ %i.eh, %.thread ], [ false, %bb.ba ]
  %i.es = phi i64 [ %i.ej, %bb.az ], [ 0, %.thread ], [ %i.ej, %bb.ba ] ; 2 uses
  %.3 = phi i64 [ %.0383, %bb.az ], [ %.0383, %.thread ], [ %.2, %bb.ba ] ; 4 uses
  %i.et = icmp ult i64 %.3, %1
  br i1 %i.et, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit532
  %i.eu = sub nuw i64 %1, %.3
  %i.ev = call i64 @llvm.umin.i64(i64 %.0509, i64 %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr nonnull align 1 %.012.i, i64 %i.ev, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit532
  %i.ex = add i64 %.3, %.0509                     ; 2 uses
  %or.cond3 = select i1 %i.er, i1 %i.eq, i1 false
  %i.ey = icmp ne i64 %i.es, 0
  %or.cond656.a = select i1 %or.cond3, i1 %i.ey, i1 false
  br i1 %or.cond656.a, label %.lr.ph654, label %.loopexit

.lr.ph654:                                        ; preds = %bb.bc, %bb.be
  %.4653 = phi i64 [ %i.fb, %bb.be ], [ %i.ex, %bb.bc ] ; 3 uses
  %.0408652 = phi i64 [ %i.fc, %bb.be ], [ 0, %bb.bc ]
  %i.ez = icmp ult i64 %.4653, %1
  br i1 %i.ez, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph654
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %.4653
  store i8 32, ptr %i.fa, align 1, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph654
  %i.fb = add i64 %.4653, 1                       ; 2 uses
  %i.fc = add nuw i64 %.0408652, 1                ; 2 uses
  %exitcond717.not = icmp eq i64 %i.fc, %i.es
  br i1 %exitcond717.not, label %.loopexit, label %.lr.ph654

.loopexit:                                        ; preds = %bb.be, %bb.bc
  %.5 = phi i64 [ %i.ex, %bb.bc ], [ %i.fb, %bb.be ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.backedge

bb.bf:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %trunc477 = or i8 %.0412, -128
  %i.fe = load i32, ptr %3, align 8               ; 11 uses
  %i.ff = icmp ult i32 %i.fe, 41                  ; 5 uses
  switch i8 %trunc477, label %bb.ca [
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
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
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
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !11
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
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !13
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
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !11
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
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !11
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bf
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.bv, %bb.br, %bb.bn, %bb.bj
  %.0407 = phi i64 [ %i.ge, %bb.br ], [ %i.fo, %bb.bj ], [ %i.gu, %bb.bz ], [ %i.fw, %bb.bn ], [ %i.gm, %bb.bv ]
  store i8 0, ptr %i.l, align 16, !tbaa !7
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cc ], [ 64, %bb.cb ] ; 2 uses
  %.232.i.i = phi i64 [ %i.gz, %bb.cc ], [ %.0407, %bb.cb ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.gv = and i64 %.232.i.i, 7                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr @.str.4, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !7
  %4 = and i64 %indvars.iv.next.i, 4294967295     ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 %4
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !7
  %i.gz = lshr i64 %.232.i.i, 3
  %.not34.i.i = icmp ult i64 %.232.i.i, 8
  br i1 %.not34.i.i, label %u2s.exit.i482, label %bb.cc

u2s.exit.i482:                                    ; preds = %bb.cc
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 %4 ; 2 uses
  %i.hb = trunc nuw i8 %.0386 to i1
  %i.hc = sub i64 65, %indvars.iv.i
  %i.hd = and i64 %i.hc, 4294967295               ; 2 uses
  %.not.i = icmp ne i64 %i.gv, 0
  %or.cond530.not = and i1 %.not.i, %i.hb
  br i1 %or.cond530.not, label %bb.cd, label %o2s.exit

bb.cd:                                            ; preds = %u2s.exit.i482
  %i.he = getelementptr inbounds i8, ptr %i.ha, i64 -1 ; 2 uses
  %i.hf = add nuw nsw i64 %i.hd, 1
  store i8 48, ptr %i.he, align 1, !tbaa !7
  br label %o2s.exit

o2s.exit:                                         ; preds = %u2s.exit.i482, %bb.cd
  %.1510 = phi i64 [ %i.hd, %u2s.exit.i482 ], [ %i.hf, %bb.cd ] ; 4 uses
  %.0.i = phi ptr [ %i.ha, %u2s.exit.i482 ], [ %i.he, %bb.cd ]
  %i.hg = icmp eq i32 %.0409, -1
  br i1 %i.hg, label %.thread514, label %bb.ce

.thread514:                                       ; preds = %o2s.exit
  %i.hh = trunc nuw i8 %.2392 to i1
  br label %.loopexit536

bb.ce:                                            ; preds = %o2s.exit
  %i.hi = sext i32 %.0409 to i64                  ; 2 uses
  %i.hj = call i64 @llvm.usub.sat.i64(i64 %i.hi, i64 %.1510) ; 3 uses
  %i.hk = trunc nuw i8 %.2392 to i1               ; 2 uses
  %.not4 = xor i1 %i.hk, true
  %i.hl = icmp ult i64 %.1510, %i.hi              ; 2 uses
  %or.cond6 = select i1 %.not4, i1 %i.hl, i1 false
  br i1 %or.cond6, label %.lr.ph641, label %.loopexit536

.lr.ph641:                                        ; preds = %bb.ce, %bb.cf
  %.6640 = phi i64 [ %.7, %bb.cf ], [ %.0383, %bb.ce ] ; 3 uses
  %.0406639 = phi i64 [ %i.ho, %bb.cf ], [ 0, %bb.ce ]
  %i.hm = icmp ult i64 %.6640, %1
  br i1 %i.hm, label %.sink.split830, label %bb.cf

.sink.split830:                                   ; preds = %.lr.ph641
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 %.6640
  store i8 %.1414, ptr %i.hn, align 1, !tbaa !7
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph641, %.sink.split830
  %.7 = add i64 %.6640, 1                         ; 2 uses
  %i.ho = add nuw i64 %.0406639, 1                ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hj
  br i1 %i.hp, label %.lr.ph641, label %.loopexit536

.loopexit536:                                     ; preds = %bb.cf, %.thread514, %bb.ce
  %i.hq = phi i1 [ %i.hl, %bb.ce ], [ false, %.thread514 ], [ true, %bb.cf ]
  %i.hr = phi i1 [ %i.hk, %bb.ce ], [ %i.hh, %.thread514 ], [ false, %bb.cf ]
  %i.hs = phi i64 [ %i.hj, %bb.ce ], [ 0, %.thread514 ], [ %i.hj, %bb.cf ] ; 2 uses
  %.8 = phi i64 [ %.0383, %bb.ce ], [ %.0383, %.thread514 ], [ %.7, %bb.cf ] ; 4 uses
  %i.ht = icmp ult i64 %.8, %1
  br i1 %i.ht, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit536
  %i.hu = sub nuw i64 %1, %.8
  %i.hv = call i64 @llvm.umin.i64(i64 %.1510, i64 %i.hu)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 %.8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr nonnull align 1 %.0.i, i64 %i.hv, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.loopexit536
  %i.hx = add i64 %.8, %.1510                     ; 2 uses
  %or.cond8 = select i1 %i.hr, i1 %i.hq, i1 false
  %i.hy = icmp ne i64 %i.hs, 0
  %or.cond657.a = select i1 %or.cond8, i1 %i.hy, i1 false
  br i1 %or.cond657.a, label %.lr.ph645, label %.loopexit534

.lr.ph645:                                        ; preds = %bb.ch, %bb.cj
  %.9644 = phi i64 [ %i.ib, %bb.cj ], [ %i.hx, %bb.ch ] ; 3 uses
  %.0404643 = phi i64 [ %i.ic, %bb.cj ], [ 0, %bb.ch ]
  %i.hz = icmp ult i64 %.9644, %1
  br i1 %i.hz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph645
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 %.9644
  store i8 32, ptr %i.ia, align 1, !tbaa !7
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph645
  %i.ib = add i64 %.9644, 1                       ; 2 uses
  %i.ic = add nuw i64 %.0404643, 1                ; 2 uses
  %exitcond716.not = icmp eq i64 %i.ic, %i.hs
  br i1 %exitcond716.not, label %.loopexit534, label %.lr.ph645

.loopexit534:                                     ; preds = %bb.cj, %bb.ch
  %.10 = phi i64 [ %i.hx, %bb.ch ], [ %i.ib, %bb.cj ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.id, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.backedge

bb.ck:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %trunc475 = or i8 %.0412, -128
  %i.ie = load i32, ptr %3, align 8               ; 11 uses
  %i.if = icmp ult i32 %i.ie, 41                  ; 5 uses
  switch i8 %trunc475, label %bb.df [
    i8 -15, label %bb.ct
    i8 -65, label %bb.cl
    i8 -6, label %bb.db
    i8 -20, label %bb.cp
    i8 -22, label %bb.cx
  ]

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.if, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ig = load ptr, ptr %i.h, align 8
  %i.ih = zext nneg i32 %i.ie to i64
  %i.ii = getelementptr i8, ptr %i.ig, i64 %i.ih
  %i.ij = add nuw nsw i32 %i.ie, 8
  store i32 %i.ij, ptr %3, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.ik = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  store ptr %i.il, ptr %i.g, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.im = phi ptr [ %i.ii, %bb.cm ], [ %i.ik, %bb.cn ]
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = zext i32 %i.in to i64
  br label %bb.dg

bb.cp:                                            ; preds = %bb.ck
  br i1 %i.if, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ip = load ptr, ptr %i.h, align 8
  %i.iq = zext nneg i32 %i.ie to i64
  %i.ir = getelementptr i8, ptr %i.ip, i64 %i.iq
  %i.is = add nuw nsw i32 %i.ie, 8
  store i32 %i.is, ptr %3, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.it = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  store ptr %i.iu, ptr %i.g, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.iv = phi ptr [ %i.ir, %bb.cq ], [ %i.it, %bb.cr ]
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !11
  br label %bb.dg

bb.ct:                                            ; preds = %bb.ck
  br i1 %i.if, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ix = load ptr, ptr %i.h, align 8
  %i.iy = zext nneg i32 %i.ie to i64
  %i.iz = getelementptr i8, ptr %i.ix, i64 %i.iy
  %i.ja = add nuw nsw i32 %i.ie, 8
  store i32 %i.ja, ptr %3, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.jb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  store ptr %i.jc, ptr %i.g, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.jd = phi ptr [ %i.iz, %bb.cu ], [ %i.jb, %bb.cv ]
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !13
  br label %bb.dg

bb.cx:                                            ; preds = %bb.ck
  br i1 %i.if, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jf = load ptr, ptr %i.h, align 8
  %i.jg = zext nneg i32 %i.ie to i64
  %i.jh = getelementptr i8, ptr %i.jf, i64 %i.jg
  %i.ji = add nuw nsw i32 %i.ie, 8
  store i32 %i.ji, ptr %3, align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.jj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  store ptr %i.jk, ptr %i.g, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.jl = phi ptr [ %i.jh, %bb.cy ], [ %i.jj, %bb.cz ]
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !11
  br label %bb.dg

bb.db:                                            ; preds = %bb.ck
  br i1 %i.if, label %bb.dc, label %bb.dd

end_hunk_0
begin_hunk_1_@duckdb_je_malloc_vsnprintf:bb.a
  %.11631 = phi i64 [ %.12, %bb.di ], [ %.0383, %bb.dh ] ; 3 uses
  %.0402630 = phi i64 [ %i.kn, %bb.di ], [ 0, %bb.dh ]
  %i.kl = icmp ult i64 %.11631, %1
  br i1 %i.kl, label %.sink.split833, label %bb.di

.sink.split833:                                   ; preds = %.lr.ph632
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 %.11631
  store i8 %.1414, ptr %i.km, align 1, !tbaa !7
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph632, %.sink.split833
  %.12 = add i64 %.11631, 1                       ; 2 uses
  %i.kn = add nuw i64 %.0402630, 1                ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.ki
  br i1 %i.ko, label %.lr.ph632, label %.loopexit540

.loopexit540:                                     ; preds = %bb.di, %.thread517, %bb.dh
  %i.kp = phi i1 [ %i.kk, %bb.dh ], [ false, %.thread517 ], [ true, %bb.di ]
  %i.kq = phi i1 [ %i.kj, %bb.dh ], [ %i.kg, %.thread517 ], [ false, %bb.di ]
  %i.kr = phi i64 [ %i.ki, %bb.dh ], [ 0, %.thread517 ], [ %i.ki, %bb.di ] ; 2 uses
  %.13 = phi i64 [ %.0383, %bb.dh ], [ %.0383, %.thread517 ], [ %.12, %bb.di ] ; 4 uses
  %i.ks = icmp ult i64 %.13, %1
  br i1 %i.ks, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.loopexit540
  %i.kt = sub nuw i64 %1, %.13
  %i.ku = call i64 @llvm.umin.i64(i64 %i.ke, i64 %i.kt)
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 %.13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kv, ptr nonnull align 1 %i.kc, i64 %i.ku, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.loopexit540
  %i.kw = add i64 %.13, %i.ke                     ; 2 uses
  %or.cond13 = select i1 %i.kq, i1 %i.kp, i1 false
  %i.kx = icmp ne i64 %i.kr, 0
  %or.cond658.a = select i1 %or.cond13, i1 %i.kx, i1 false
  br i1 %or.cond658.a, label %.lr.ph636, label %.loopexit538

.lr.ph636:                                        ; preds = %bb.dk, %bb.dm
  %.14635 = phi i64 [ %i.la, %bb.dm ], [ %i.kw, %bb.dk ] ; 3 uses
  %.0399634 = phi i64 [ %i.lb, %bb.dm ], [ 0, %bb.dk ]
  %i.ky = icmp ult i64 %.14635, %1
  br i1 %i.ky, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph636
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 %.14635
  store i8 32, ptr %i.kz, align 1, !tbaa !7
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph636
  %i.la = add i64 %.14635, 1                      ; 2 uses
  %i.lb = add nuw i64 %.0399634, 1                ; 2 uses
  %exitcond715.not = icmp eq i64 %i.lb, %i.kr
  br i1 %exitcond715.not, label %.loopexit538, label %.lr.ph636

.loopexit538:                                     ; preds = %bb.dm, %bb.dk
  %.15 = phi i64 [ %i.kw, %bb.dk ], [ %i.la, %bb.dm ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.lc, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.backedge

bb.dn:                                            ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %trunc = or i8 %.0412, -128
  %i.ld = load i32, ptr %3, align 8               ; 11 uses
  %i.le = icmp ult i32 %i.ld, 41                  ; 5 uses
  switch i8 %trunc, label %bb.ei [
    i8 -15, label %bb.dw
    i8 -65, label %bb.do
    i8 -6, label %bb.ee
    i8 -20, label %bb.ds
    i8 -22, label %bb.ea
  ]

bb.do:                                            ; preds = %bb.dn
  br i1 %i.le, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.lf = load ptr, ptr %i.h, align 8
  %i.lg = zext nneg i32 %i.ld to i64
  %i.lh = getelementptr i8, ptr %i.lf, i64 %i.lg
  %i.li = add nuw nsw i32 %i.ld, 8
  store i32 %i.li, ptr %3, align 8
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.lj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 8
  store ptr %i.lk, ptr %i.g, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ll = phi ptr [ %i.lh, %bb.dp ], [ %i.lj, %bb.dq ]
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3
  %i.ln = zext i32 %i.lm to i64
  br label %bb.ej

bb.ds:                                            ; preds = %bb.dn
  br i1 %i.le, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.lo = load ptr, ptr %i.h, align 8
  %i.lp = zext nneg i32 %i.ld to i64
  %i.lq = getelementptr i8, ptr %i.lo, i64 %i.lp
  %i.lr = add nuw nsw i32 %i.ld, 8
  store i32 %i.lr, ptr %3, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.ls = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 8
  store ptr %i.lt, ptr %i.g, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.lu = phi ptr [ %i.lq, %bb.dt ], [ %i.ls, %bb.du ]
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !11
  br label %bb.ej

bb.dw:                                            ; preds = %bb.dn
  br i1 %i.le, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.lw = load ptr, ptr %i.h, align 8
  %i.lx = zext nneg i32 %i.ld to i64
  %i.ly = getelementptr i8, ptr %i.lw, i64 %i.lx
  %i.lz = add nuw nsw i32 %i.ld, 8
  store i32 %i.lz, ptr %3, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.ma = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 8
  store ptr %i.mb, ptr %i.g, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.mc = phi ptr [ %i.ly, %bb.dx ], [ %i.ma, %bb.dy ]
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !13
  br label %bb.ej

bb.ea:                                            ; preds = %bb.dn
  br i1 %i.le, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.me = load ptr, ptr %i.h, align 8
  %i.mf = zext nneg i32 %i.ld to i64
  %i.mg = getelementptr i8, ptr %i.me, i64 %i.mf
  %i.mh = add nuw nsw i32 %i.ld, 8
  store i32 %i.mh, ptr %3, align 8
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.mi = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 8
  store ptr %i.mj, ptr %i.g, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.mk = phi ptr [ %i.mg, %bb.eb ], [ %i.mi, %bb.ec ]
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !11
  br label %bb.ej

bb.ee:                                            ; preds = %bb.dn
  br i1 %i.le, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.mm = load ptr, ptr %i.h, align 8
  %i.mn = zext nneg i32 %i.ld to i64
  %i.mo = getelementptr i8, ptr %i.mm, i64 %i.mn
  %i.mp = add nuw nsw i32 %i.ld, 8
  store i32 %i.mp, ptr %3, align 8
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.mq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mr = getelementptr i8, ptr %i.mq, i64 8
  store ptr %i.mr, ptr %i.g, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ms = phi ptr [ %i.mo, %bb.ef ], [ %i.mq, %bb.eg ]
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !11
  br label %bb.ej

bb.ei:                                            ; preds = %bb.dn
  unreachable

bb.ej:                                            ; preds = %bb.eh, %bb.ed, %bb.dz, %bb.dv, %bb.dr
  %.0398 = phi i64 [ %i.md, %bb.dz ], [ %i.ln, %bb.dr ], [ %i.mt, %bb.eh ], [ %i.lv, %bb.dv ], [ %i.ml, %bb.ed ]
  %i.mu = load i8, ptr %i.be, align 1, !tbaa !7
  %i.mv = icmp eq i8 %i.mu, 88                    ; 2 uses
  store i8 0, ptr %i.j, align 16, !tbaa !7
  %i.mw = select i1 %i.mv, ptr @.str.1, ptr @.str.2
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %bb.ej
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ek ], [ 64, %bb.ej ] ; 2 uses
  %.131.i.i = phi i64 [ %i.nb, %bb.ek ], [ %.0398, %bb.ej ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.mx = and i64 %.131.i.i, 15
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !7
  %5 = and i64 %indvars.iv.next.i.i, 4294967295   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.e, i64 %5
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !7
  %i.nb = lshr i64 %.131.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not.i.i, label %u2s.exit.i484, label %bb.ek

u2s.exit.i484:                                    ; preds = %bb.ek
  %i.nc = getelementptr inbounds nuw i8, ptr %i.e, i64 %5 ; 3 uses
  %i.nd = trunc nuw i8 %.0386 to i1
  %i.ne = sub i64 65, %indvars.iv.i.i
  %i.nf = and i64 %i.ne, 4294967295               ; 2 uses
  br i1 %i.nd, label %bb.el, label %x2s.exit

bb.el:                                            ; preds = %u2s.exit.i484
  %i.ng = getelementptr inbounds i8, ptr %i.nc, i64 -2 ; 2 uses
  %i.nh = add nuw nsw i64 %i.nf, 2
  store i8 48, ptr %i.ng, align 1, !tbaa !7
  %i.ni = select i1 %i.mv, i8 88, i8 120
  %i.nj = getelementptr inbounds i8, ptr %i.nc, i64 -1
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !7
  br label %x2s.exit

x2s.exit:                                         ; preds = %u2s.exit.i484, %bb.el
  %.2511 = phi i64 [ %i.nh, %bb.el ], [ %i.nf, %u2s.exit.i484 ] ; 4 uses
  %.0.i485 = phi ptr [ %i.ng, %bb.el ], [ %i.nc, %u2s.exit.i484 ]
  %i.nk = icmp eq i32 %.0409, -1
  br i1 %i.nk, label %.thread520, label %bb.em

.thread520:                                       ; preds = %x2s.exit
  %i.nl = trunc nuw i8 %.2392 to i1
  br label %.loopexit544

bb.em:                                            ; preds = %x2s.exit
  %i.nm = sext i32 %.0409 to i64                  ; 2 uses
  %i.nn = call i64 @llvm.usub.sat.i64(i64 %i.nm, i64 %.2511) ; 3 uses
  %i.no = trunc nuw i8 %.2392 to i1               ; 2 uses
  %.not14 = xor i1 %i.no, true
  %i.np = icmp ult i64 %.2511, %i.nm              ; 2 uses
  %or.cond16 = select i1 %.not14, i1 %i.np, i1 false
  br i1 %or.cond16, label %.lr.ph623, label %.loopexit544

.lr.ph623:                                        ; preds = %bb.em, %bb.en
  %.16622 = phi i64 [ %.17, %bb.en ], [ %.0383, %bb.em ] ; 3 uses
  %.0397621 = phi i64 [ %i.ns, %bb.en ], [ 0, %bb.em ]
  %i.nq = icmp ult i64 %.16622, %1
  br i1 %i.nq, label %.sink.split836, label %bb.en

.sink.split836:                                   ; preds = %.lr.ph623
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 %.16622
  store i8 %.1414, ptr %i.nr, align 1, !tbaa !7
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph623, %.sink.split836
  %.17 = add i64 %.16622, 1                       ; 2 uses
  %i.ns = add nuw i64 %.0397621, 1                ; 2 uses
  %i.nt = icmp ult i64 %i.ns, %i.nn
  br i1 %i.nt, label %.lr.ph623, label %.loopexit544

.loopexit544:                                     ; preds = %bb.en, %.thread520, %bb.em
  %i.nu = phi i1 [ %i.np, %bb.em ], [ false, %.thread520 ], [ true, %bb.en ]
  %i.nv = phi i1 [ %i.no, %bb.em ], [ %i.nl, %.thread520 ], [ false, %bb.en ]
  %i.nw = phi i64 [ %i.nn, %bb.em ], [ 0, %.thread520 ], [ %i.nn, %bb.en ] ; 2 uses
  %.18 = phi i64 [ %.0383, %bb.em ], [ %.0383, %.thread520 ], [ %.17, %bb.en ] ; 4 uses
  %i.nx = icmp ult i64 %.18, %1
  br i1 %i.nx, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %.loopexit544
  %i.ny = sub nuw i64 %1, %.18
  %i.nz = call i64 @llvm.umin.i64(i64 %.2511, i64 %i.ny)
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 %.18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oa, ptr nonnull align 1 %.0.i485, i64 %i.nz, i1 false)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.loopexit544
  %i.ob = add i64 %.18, %.2511                    ; 2 uses
  %or.cond18 = select i1 %i.nv, i1 %i.nu, i1 false
  %i.oc = icmp ne i64 %i.nw, 0
  %or.cond659.a = select i1 %or.cond18, i1 %i.oc, i1 false
  br i1 %or.cond659.a, label %.lr.ph627, label %.loopexit542

.lr.ph627:                                        ; preds = %bb.ep, %bb.er
  %.19626 = phi i64 [ %i.of, %bb.er ], [ %i.ob, %bb.ep ] ; 3 uses
  %.0394625 = phi i64 [ %i.og, %bb.er ], [ 0, %bb.ep ]
  %i.od = icmp ult i64 %.19626, %1
  br i1 %i.od, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph627
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 %.19626
  store i8 32, ptr %i.oe, align 1, !tbaa !7
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph627
  %i.of = add i64 %.19626, 1                      ; 2 uses
  %i.og = add nuw i64 %.0394625, 1                ; 2 uses
  %exitcond714.not = icmp eq i64 %i.og, %i.nw
  br i1 %exitcond714.not, label %.loopexit542, label %.lr.ph627

.loopexit542:                                     ; preds = %bb.er, %bb.ep
  %.20 = phi i64 [ %i.ob, %bb.ep ], [ %i.of, %bb.er ]
  %i.oh = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.oh, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %.backedge

bb.es:                                            ; preds = %bb.p
  %i.oi = load i32, ptr %3, align 8               ; 3 uses
  %i.oj = icmp ult i32 %i.oi, 41
  br i1 %i.oj, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ok = load ptr, ptr %i.h, align 8
  %i.ol = zext nneg i32 %i.oi to i64
  %i.om = getelementptr i8, ptr %i.ok, i64 %i.ol
  %i.on = add nuw nsw i32 %i.oi, 8
  store i32 %i.on, ptr %3, align 8
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.oo = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 8
  store ptr %i.op, ptr %i.g, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.oq = phi ptr [ %i.om, %bb.et ], [ %i.oo, %bb.eu ]
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !3
  %i.os = trunc i32 %i.or to i8
  %i.ot = sext i32 %.0409 to i64
  %i.ou = add nsw i64 %i.ot, -1
  %i.ov = add i32 %.0409, 1
  %i.ow = icmp ult i32 %i.ov, 3
  %i.ox = select i1 %i.ow, i64 0, i64 %i.ou       ; 3 uses
  %i.oy = trunc nuw i8 %.2392 to i1               ; 2 uses
  %.not19 = xor i1 %i.oy, true
  %i.oz = icmp ne i64 %i.ox, 0                    ; 2 uses
  %or.cond21 = select i1 %.not19, i1 %i.oz, i1 false
  br i1 %or.cond21, label %.preheader547, label %.loopexit548

.preheader547:                                    ; preds = %bb.ev, %bb.ew
  %.21618 = phi i64 [ %.22, %bb.ew ], [ %.0383, %bb.ev ] ; 3 uses
  %.0393617 = phi i64 [ %i.pc, %bb.ew ], [ 0, %bb.ev ]
  %i.pa = icmp ult i64 %.21618, %1
  br i1 %i.pa, label %.sink.split839, label %bb.ew

.sink.split839:                                   ; preds = %.preheader547
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 %.21618
  store i8 %.1414, ptr %i.pb, align 1, !tbaa !7
  br label %bb.ew

bb.ew:                                            ; preds = %.preheader547, %.sink.split839
  %.22 = add i64 %.21618, 1                       ; 2 uses
  %i.pc = add nuw i64 %.0393617, 1                ; 2 uses
  %exitcond712.not = icmp eq i64 %i.pc, %i.ox
  br i1 %exitcond712.not, label %.loopexit548, label %.preheader547

.loopexit548:                                     ; preds = %bb.ew, %bb.ev
  %.23 = phi i64 [ %.0383, %bb.ev ], [ %.22, %bb.ew ] ; 3 uses
  %i.pd = icmp ult i64 %.23, %1
  br i1 %i.pd, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.loopexit548
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 %.23
  store i8 %i.os, ptr %i.pe, align 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.loopexit548
  %i.pf = add i64 %.23, 1                         ; 2 uses
  %or.cond23 = select i1 %i.oy, i1 %i.oz, i1 false
  br i1 %or.cond23, label %.preheader545, label %.loopexit546

.preheader545:                                    ; preds = %bb.ey, %bb.fa
  %.24620 = phi i64 [ %i.pi, %bb.fa ], [ %i.pf, %bb.ey ] ; 3 uses
  %.0389619 = phi i64 [ %i.pj, %bb.fa ], [ 0, %bb.ey ]
  %i.pg = icmp ult i64 %.24620, %1
  br i1 %i.pg, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.preheader545
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 %.24620
  store i8 32, ptr %i.ph, align 1, !tbaa !7
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.preheader545
  %i.pi = add i64 %.24620, 1                      ; 2 uses
  %i.pj = add nuw i64 %.0389619, 1                ; 2 uses
  %exitcond713.not = icmp eq i64 %i.pj, %i.ox
  br i1 %exitcond713.not, label %.loopexit546, label %.preheader545

.loopexit546:                                     ; preds = %bb.fa, %bb.ey
  %.25 = phi i64 [ %i.pf, %bb.ey ], [ %i.pi, %bb.fa ]
  %i.pk = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.pk, ptr %i.a, align 8, !tbaa !8
  br label %.backedge

bb.fb:                                            ; preds = %bb.p
  %i.pl = load i32, ptr %3, align 8               ; 3 uses
  %i.pm = icmp ult i32 %i.pl, 41
  br i1 %i.pm, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.pn = load ptr, ptr %i.h, align 8
  %i.po = zext nneg i32 %i.pl to i64
  %i.pp = getelementptr i8, ptr %i.pn, i64 %i.po
  %i.pq = add nuw nsw i32 %i.pl, 8
  store i32 %i.pq, ptr %3, align 8
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.pr = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 8
  store ptr %i.ps, ptr %i.g, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.pt = phi ptr [ %i.pp, %bb.fc ], [ %i.pr, %bb.fd ]
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !8  ; 2 uses
  %i.pv = icmp slt i32 %.0405, 0
  br i1 %i.pv, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.pw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pu) #13
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.px = zext nneg i32 %.0405 to i64
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.py = phi i64 [ %i.pw, %bb.ff ], [ %i.px, %bb.fg ] ; 4 uses
  %i.pz = icmp eq i32 %.0409, -1
  br i1 %i.pz, label %.thread523, label %bb.fi

.thread523:                                       ; preds = %bb.fh
  %i.qa = trunc nuw i8 %.2392 to i1
  br label %.loopexit552

bb.fi:                                            ; preds = %bb.fh
  %i.qb = sext i32 %.0409 to i64                  ; 2 uses
  %i.qc = call i64 @llvm.usub.sat.i64(i64 %i.qb, i64 %i.py) ; 3 uses
  %i.qd = trunc nuw i8 %.2392 to i1               ; 2 uses
  %.not24 = xor i1 %i.qd, true
  %i.qe = icmp ult i64 %i.py, %i.qb               ; 2 uses
  %or.cond26 = select i1 %.not24, i1 %i.qe, i1 false
  br i1 %or.cond26, label %.lr.ph611, label %.loopexit552

.lr.ph611:                                        ; preds = %bb.fi, %bb.fj
  %.26610 = phi i64 [ %.27, %bb.fj ], [ %.0383, %bb.fi ] ; 3 uses
  %.0388609 = phi i64 [ %i.qh, %bb.fj ], [ 0, %bb.fi ]
  %i.qf = icmp ult i64 %.26610, %1
  br i1 %i.qf, label %.sink.split842, label %bb.fj

.sink.split842:                                   ; preds = %.lr.ph611
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 %.26610
  store i8 %.1414, ptr %i.qg, align 1, !tbaa !7
  br label %bb.fj

bb.fj:                                            ; preds = %.lr.ph611, %.sink.split842
  %.27 = add i64 %.26610, 1                       ; 2 uses
  %i.qh = add nuw i64 %.0388609, 1                ; 2 uses
  %i.qi = icmp ult i64 %i.qh, %i.qc
  br i1 %i.qi, label %.lr.ph611, label %.loopexit552

.loopexit552:                                     ; preds = %bb.fj, %.thread523, %bb.fi
  %i.qj = phi i1 [ %i.qe, %bb.fi ], [ false, %.thread523 ], [ true, %bb.fj ]
  %i.qk = phi i1 [ %i.qd, %bb.fi ], [ %i.qa, %.thread523 ], [ false, %bb.fj ]
  %i.ql = phi i64 [ %i.qc, %bb.fi ], [ 0, %.thread523 ], [ %i.qc, %bb.fj ] ; 2 uses
  %.28 = phi i64 [ %.0383, %bb.fi ], [ %.0383, %.thread523 ], [ %.27, %bb.fj ] ; 4 uses
  %i.qm = icmp ult i64 %.28, %1
  br i1 %i.qm, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.loopexit552
  %i.qn = sub nuw i64 %1, %.28
  %i.qo = call i64 @llvm.umin.i64(i64 %i.py, i64 %i.qn)
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 %.28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qp, ptr align 1 %i.pu, i64 %i.qo, i1 false)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.loopexit552
  %i.qq = add i64 %.28, %i.py                     ; 2 uses
  %or.cond28 = select i1 %i.qk, i1 %i.qj, i1 false
  %i.qr = icmp ne i64 %i.ql, 0
  %or.cond660 = select i1 %or.cond28, i1 %i.qr, i1 false
  br i1 %or.cond660, label %.lr.ph615, label %.loopexit550

.lr.ph615:                                        ; preds = %bb.fl, %bb.fn
  %.29614 = phi i64 [ %i.qu, %bb.fn ], [ %i.qq, %bb.fl ] ; 3 uses
  %.0385613 = phi i64 [ %i.qv, %bb.fn ], [ 0, %bb.fl ]
  %i.qs = icmp ult i64 %.29614, %1
  br i1 %i.qs, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.lr.ph615
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 %.29614
  store i8 32, ptr %i.qt, align 1, !tbaa !7
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.lr.ph615
  %i.qu = add i64 %.29614, 1                      ; 2 uses
  %i.qv = add nuw i64 %.0385613, 1                ; 2 uses
  %exitcond711.not = icmp eq i64 %i.qv, %i.ql
  br i1 %exitcond711.not, label %.loopexit550, label %.lr.ph615

.loopexit550:                                     ; preds = %bb.fn, %bb.fl
  %.30 = phi i64 [ %i.qq, %bb.fl ], [ %i.qu, %bb.fn ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.qw, ptr %i.a, align 8, !tbaa !8
  br label %.backedge

bb.fo:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.qx = load i32, ptr %3, align 8               ; 3 uses
  %i.qy = icmp ult i32 %i.qx, 41
  br i1 %i.qy, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.qz = load ptr, ptr %i.h, align 8
  %i.ra = zext nneg i32 %i.qx to i64
  %i.rb = getelementptr i8, ptr %i.qz, i64 %i.ra
  %i.rc = add nuw nsw i32 %i.qx, 8
  store i32 %i.rc, ptr %3, align 8
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  %i.rd = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.re = getelementptr i8, ptr %i.rd, i64 8
  store ptr %i.re, ptr %i.g, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.rf = phi ptr [ %i.rb, %bb.fp ], [ %i.rd, %bb.fq ]
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !11
  store i8 0, ptr %i.i, align 16, !tbaa !7
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %bb.fr
  %indvars.iv.i.i486 = phi i64 [ %indvars.iv.next.i.i488, %bb.fs ], [ 64, %bb.fr ] ; 2 uses
  %.131.i.i487 = phi i64 [ %i.rl, %bb.fs ], [ %i.rg, %bb.fr ] ; 2 uses
  %indvars.iv.next.i.i488 = add nsw i64 %indvars.iv.i.i486, -1 ; 2 uses
  %i.rh = and i64 %.131.i.i487, 15
  %i.ri = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !7
  %6 = and i64 %indvars.iv.next.i.i488, 4294967295 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.f, i64 %6
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !7
  %i.rl = lshr i64 %.131.i.i487, 4                ; 2 uses
  %.not.i.i489 = icmp eq i64 %i.rl, 0
  br i1 %.not.i.i489, label %x2s.exit492, label %bb.fs

x2s.exit492:                                      ; preds = %bb.fs
  %i.rm = getelementptr inbounds nuw i8, ptr %i.f, i64 %6 ; 2 uses
  %i.rn = sub i64 65, %indvars.iv.i.i486
  %i.ro = and i64 %i.rn, 4294967295
  %i.rp = getelementptr inbounds i8, ptr %i.rm, i64 -2 ; 2 uses
  %i.rq = add nuw nsw i64 %i.ro, 2                ; 4 uses
  store i8 48, ptr %i.rp, align 1, !tbaa !7
  %i.rr = getelementptr inbounds i8, ptr %i.rm, i64 -1
  store i8 120, ptr %i.rr, align 1, !tbaa !7
  %i.rs = icmp eq i32 %.0409, -1
  br i1 %i.rs, label %.thread526, label %bb.ft

.thread526:                                       ; preds = %x2s.exit492
  %i.rt = trunc nuw i8 %.2392 to i1
  br label %.loopexit556

bb.ft:                                            ; preds = %x2s.exit492
  %i.ru = sext i32 %.0409 to i64                  ; 2 uses
  %i.rv = call i64 @llvm.usub.sat.i64(i64 %i.ru, i64 %i.rq) ; 3 uses
  %i.rw = trunc nuw i8 %.2392 to i1               ; 2 uses
  %.not29 = xor i1 %i.rw, true
  %i.rx = icmp ult i64 %i.rq, %i.ru               ; 2 uses
  %or.cond31 = select i1 %.not29, i1 %i.rx, i1 false
  br i1 %or.cond31, label %.lr.ph, label %.loopexit556

.lr.ph:                                           ; preds = %bb.ft, %bb.fu
  %.31604 = phi i64 [ %.32, %bb.fu ], [ %.0383, %bb.ft ] ; 3 uses
  %.0384603 = phi i64 [ %i.sa, %bb.fu ], [ 0, %bb.ft ]
  %i.ry = icmp ult i64 %.31604, %1
  br i1 %i.ry, label %.sink.split845, label %bb.fu

.sink.split845:                                   ; preds = %.lr.ph
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 %.31604
  store i8 %.1414, ptr %i.rz, align 1, !tbaa !7
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph, %.sink.split845
  %.32 = add i64 %.31604, 1                       ; 2 uses
  %i.sa = add nuw i64 %.0384603, 1                ; 2 uses
  %i.sb = icmp ult i64 %i.sa, %i.rv
  br i1 %i.sb, label %.lr.ph, label %.loopexit556

.loopexit556:                                     ; preds = %bb.fu, %.thread526, %bb.ft
  %i.sc = phi i1 [ %i.rx, %bb.ft ], [ false, %.thread526 ], [ true, %bb.fu ]
  %i.sd = phi i1 [ %i.rw, %bb.ft ], [ %i.rt, %.thread526 ], [ false, %bb.fu ]
  %i.se = phi i64 [ %i.rv, %bb.ft ], [ 0, %.thread526 ], [ %i.rv, %bb.fu ] ; 2 uses
  %.33 = phi i64 [ %.0383, %bb.ft ], [ %.0383, %.thread526 ], [ %.32, %bb.fu ] ; 4 uses
  %i.sf = icmp ult i64 %.33, %1
  br i1 %i.sf, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.loopexit556
  %i.sg = sub nuw i64 %1, %.33
  %i.sh = call i64 @llvm.umin.i64(i64 %i.rq, i64 %i.sg)
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 %.33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.si, ptr nonnull align 1 %i.rp, i64 %i.sh, i1 false)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.loopexit556
  %i.sj = add i64 %.33, %i.rq                     ; 2 uses
  %or.cond33 = select i1 %i.sd, i1 %i.sc, i1 false
  %i.sk = icmp ne i64 %i.se, 0
  %or.cond661 = select i1 %or.cond33, i1 %i.sk, i1 false
  br i1 %or.cond661, label %.lr.ph607, label %.loopexit554

.lr.ph607:                                        ; preds = %bb.fw, %bb.fy
  %.0606 = phi i64 [ %i.so, %bb.fy ], [ 0, %bb.fw ]
  %.34605 = phi i64 [ %i.sn, %bb.fy ], [ %i.sj, %bb.fw ] ; 3 uses
  %i.sl = icmp ult i64 %.34605, %1
  br i1 %i.sl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.lr.ph607
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 %.34605
  store i8 32, ptr %i.sm, align 1, !tbaa !7
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %.lr.ph607
  %i.sn = add i64 %.34605, 1                      ; 2 uses
  %i.so = add nuw i64 %.0606, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.so, %i.se
  br i1 %exitcond.not, label %.loopexit554, label %.lr.ph607

.loopexit554:                                     ; preds = %bb.fy, %bb.fw
  %.35 = phi i64 [ %i.sj, %bb.fw ], [ %i.sn, %bb.fy ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.sp, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.backedge

bb.fz:                                            ; preds = %bb.p
  unreachable

bb.ga:                                            ; preds = %bb.b
  %i.sq = icmp ult i64 %.0383, %1
  br i1 %i.sq, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 %.0383
  store i8 %i.n, ptr %i.sr, align 1, !tbaa !7
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.ss = add i64 %.0383, 1
  %i.st = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  store ptr %i.st, ptr %i.a, align 8, !tbaa !8
  br label %.backedge

bb.gd:                                            ; preds = %bb.b
  %i.su = icmp ult i64 %.0383, %1
  br i1 %i.su, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 %.0383
  store i8 0, ptr %i.sv, align 1, !tbaa !7
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.sw = getelementptr i8, ptr %0, i64 %1
  %i.sx = getelementptr i8, ptr %i.sw, i64 -1
  store i8 0, ptr %i.sx, align 1, !tbaa !7
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %.0383
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold nofree nosync nounwind uwtable
define i64 @duckdb_je_malloc_snprintf(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #7 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i64 @duckdb_je_malloc_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #16
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i64 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: cold nounwind uwtable
define void @duckdb_je_malloc_vcprintf(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %0, null
  %i.c = load ptr, ptr @duckdb_je_malloc_message, align 8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = select i1 %.not, ptr @duckdb_je_wrtmessage, ptr %i.c
  %.0 = select i1 %i.b, ptr %i.d, ptr %0
  %i.e = call i64 @duckdb_je_malloc_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %2, ptr noundef %3) #16 ; 0 uses
  call void %.0(ptr noundef %1, ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define void @duckdb_je_malloc_cprintf(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #9 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @duckdb_je_malloc_vcprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define void @duckdb_je_malloc_printf(ptr noundef %0, ...) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load ptr, ptr @duckdb_je_malloc_message, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = select i1 %.not.i, ptr @duckdb_je_wrtmessage, ptr %i.b
  %i.d = call i64 @duckdb_je_malloc_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %0, ptr noundef nonnull %1) #16 ; 0 uses
  call void %i.c(ptr noundef null, ptr noundef nonnull %i.a) #14, !inline_history !15
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
end_hunk_1
