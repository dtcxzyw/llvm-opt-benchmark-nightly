Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/regcomp?download=true
inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a

bb.z:                                             ; preds = %allocset.exit
  %i.ek = load i8, ptr %i.ef, align 1, !tbaa !30  ; 2 uses
  %i.el = icmp ne i8 %i.ek, 94                    ; 3 uses
  br i1 %i.el, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 4 uses
  store ptr %i.em, ptr %0, align 8, !tbaa !17
  %.pre216 = ptrtoint ptr %i.em to i64
  %.pre217 = sub i64 %i.eg, %.pre216
  %i.en = icmp sgt i64 %.pre217, 0
  br i1 %i.en, label %thread-pre-split, label %.thread270

thread-pre-split:                                 ; preds = %bb.aa
  %.pr = load i8, ptr %i.em, align 1, !tbaa !30
  br label %.thread

.thread:                                          ; preds = %bb.z, %thread-pre-split
  %i.eo = phi i8 [ %.pr, %thread-pre-split ], [ %i.ek, %bb.z ] ; 2 uses
  %i.ep = phi ptr [ %i.em, %thread-pre-split ], [ %i.ef, %bb.z ]
  switch i8 %i.eo, label %.thread270 [
    i8 93, label %.thread270.sink.split
    i8 45, label %bb.ab
  ]

bb.ab:                                            ; preds = %.thread
  br label %.thread270.sink.split

.thread270.sink.split:                            ; preds = %.thread, %bb.ab
  %.sink291 = phi i64 [ 45, %bb.ab ], [ 93, %.thread ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %0, align 8, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sink291 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !30
  %i.et = or i8 %i.es, %i.eb
  store i8 %i.et, ptr %i.er, align 1, !tbaa !30
  %i.eu = load i8, ptr %i.ed, align 1, !tbaa !66
  %i.ev = add i8 %i.eu, %i.eo
  store i8 %i.ev, ptr %i.ed, align 1, !tbaa !66
  br label %.thread270

.thread270:                                       ; preds = %.thread270.sink.split, %.thread, %allocset.exit, %bb.aa
  %.not86268 = phi i1 [ false, %bb.aa ], [ true, %allocset.exit ], [ %i.el, %.thread ], [ %i.el, %.thread270.sink.split ]
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.ex = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread270
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %p_b_term.exit
  %i.fd = phi ptr [ %i.ew, %.lr.ph ], [ %i.oc, %p_b_term.exit ] ; 3 uses
  %i.fe = phi i64 [ %i.fa, %.lr.ph ], [ %i.of, %p_b_term.exit ]
  %i.ff = phi i64 [ %i.ey, %.lr.ph ], [ %i.od, %p_b_term.exit ] ; 2 uses
  %i.fg = phi ptr [ %i.ex, %.lr.ph ], [ %i.ob, %p_b_term.exit ] ; 7 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !30  ; 3 uses
  %.not = icmp eq i8 %i.fh, 93
  br i1 %.not, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not83 = icmp ne i64 %i.fe, 1                  ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 45
  %or.cond = and i1 %.not83, %i.fi
  br i1 %or.cond, label %bb.ae, label %.critedge93

bb.ae:                                            ; preds = %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !30
  %.not170 = icmp eq i8 %i.fk, 93
  br i1 %.not170, label %bb.cv, label %.critedge93.thread

.critedge93:                                      ; preds = %bb.ad
  switch i8 %i.fh, label %.thread88.i [
    i8 91, label %bb.af
    i8 45, label %.critedge93.thread
  ]

bb.af:                                            ; preds = %.critedge93
  br i1 %.not83, label %bb.ah, label %.thread88.i

.critedge93.thread:                               ; preds = %bb.ae, %.critedge93
  %i.fl = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ag, label %seterr.exit.i110

bb.ag:                                            ; preds = %.critedge93.thread
  store i32 11, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit.i110

seterr.exit.i110:                                 ; preds = %bb.ag, %.critedge93.thread
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %p_b_term.exit

bb.ah:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !30
  switch i8 %i.fo, label %.thread88.i [
    i8 58, label %bb.ai
    i8 61, label %bb.bl
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 2 ; 3 uses
  store ptr %i.fp, ptr %0, align 8, !tbaa !17
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.ff, %i.fq
  %i.fs = icmp sgt i64 %i.fr, 0
  br i1 %i.fs, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ft = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ak, label %seterr.exit79.i

bb.ak:                                            ; preds = %bb.aj
  store i32 7, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit79.i

seterr.exit79.i:                                  ; preds = %bb.ak, %bb.aj
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %bb.al

bb.al:                                            ; preds = %seterr.exit79.i, %bb.ai
  %i.fv = phi ptr [ @nuls, %seterr.exit79.i ], [ %i.fd, %bb.ai ]
  %i.fw = phi ptr [ @nuls, %seterr.exit79.i ], [ %i.fp, %bb.ai ] ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !30
  switch i8 %i.fx, label %bb.ao [
    i8 93, label %bb.am
    i8 45, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.fy = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.an, label %seterr.exit80.i

bb.an:                                            ; preds = %bb.am
  store i32 4, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit80.i

seterr.exit80.i:                                  ; preds = %bb.an, %bb.am
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %bb.ao

bb.ao:                                            ; preds = %seterr.exit80.i, %bb.al
  %i.ga = phi ptr [ %i.fv, %bb.al ], [ @nuls, %seterr.exit80.i ] ; 2 uses
  %i.gb = phi ptr [ %i.fw, %bb.al ], [ @nuls, %seterr.exit80.i ] ; 17 uses
  %i.gc = ptrtoint ptr %i.ga to i64               ; 3 uses
  %i.gd = ptrtoint ptr %i.gb to i64               ; 4 uses
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp sgt i64 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.gg = tail call ptr @__ctype_b_loc() #12
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !34 ; 2 uses
  %i.gi = load i8, ptr %i.gb, align 1, !tbaa !30
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !36
  %i.gm = and i16 %i.gl, 1024
  %.not.i97.i = icmp eq i16 %i.gm, 0
  br i1 %.not.i97.i, label %.critedge.i.i, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %.lr.ph.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 4 uses
  store ptr %i.gn, ptr %0, align 8, !tbaa !17
  %i.go = ptrtoint ptr %i.gn to i64               ; 3 uses
  %i.gp = sub i64 %i.gc, %i.go
  %i.gq = icmp sgt i64 %i.gp, 0
  br i1 %i.gq, label %.lr.ph303, label %.critedge.i.i

.lr.ph303:                                        ; preds = %.lr.ph.i112.preheader, %.lr.ph.i112
  %i.gr = phi i64 [ %i.gz, %.lr.ph.i112 ], [ %i.go, %.lr.ph.i112.preheader ]
  %i.gs = phi ptr [ %i.gy, %.lr.ph.i112 ], [ %i.gn, %.lr.ph.i112.preheader ] ; 3 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !30
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !36
  %i.gx = and i16 %i.gw, 1024
  %.not.i.i113 = icmp eq i16 %i.gx, 0
  br i1 %.not.i.i113, label %.critedge.i.i, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph303
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 4 uses
  store ptr %i.gy, ptr %0, align 8, !tbaa !17
  %i.gz = ptrtoint ptr %i.gy to i64               ; 3 uses
  %i.ha = sub i64 %i.gc, %i.gz
  %i.hb = icmp sgt i64 %i.ha, 0
  br i1 %i.hb, label %.lr.ph303, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph303, %.lr.ph.i112, %.lr.ph.i112.preheader, %.lr.ph.i.i, %bb.ao
  %i.hc = phi ptr [ %i.gb, %bb.ao ], [ %i.gb, %.lr.ph.i.i ], [ %i.gn, %.lr.ph.i112.preheader ], [ %i.gy, %.lr.ph.i112 ], [ %i.gs, %.lr.ph303 ]
  %.lcssa.i.i = phi i64 [ %i.gd, %bb.ao ], [ %i.gd, %.lr.ph.i.i ], [ %i.go, %.lr.ph.i112.preheader ], [ %i.gz, %.lr.ph.i112 ], [ %i.gr, %.lr.ph303 ]
  %i.hd = sub i64 %.lcssa.i.i, %i.gd              ; 14 uses
  %i.he = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %1 = icmp eq i32 %i.he, 0
  %i.hf = icmp eq i64 %i.hd, 5                    ; 11 uses
  %or.cond.i.i = and i1 %1, %i.hf
  br i1 %or.cond.i.i, label %bb.bc, label %bb.ap

bb.ap:                                            ; preds = %.critedge.i.i
  %2 = tail call i32 @strncmp(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %3 = icmp eq i32 %2, 0
  %or.cond32.i.i = and i1 %i.hf, %3
  br i1 %or.cond32.i.i, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = tail call i32 @strncmp(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hh = icmp eq i32 %i.hg, 0
  %or.cond33.i.i = and i1 %i.hf, %i.hh
  br i1 %or.cond33.i.i, label %bb.bc, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %4 = tail call i32 @strncmp(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %5 = icmp eq i32 %4, 0
  %or.cond34.i.i = and i1 %i.hf, %5
  br i1 %or.cond34.i.i, label %bb.bc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hi = tail call i32 @strncmp(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hj = icmp eq i32 %i.hi, 0
  %or.cond35.i.i = and i1 %i.hf, %i.hj
  br i1 %or.cond35.i.i, label %bb.bc, label %bb.at

bb.at:                                            ; preds = %bb.as
  %6 = tail call i32 @strncmp(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %7 = icmp eq i32 %6, 0
  %or.cond36.i.i = and i1 %i.hf, %7
  br i1 %or.cond36.i.i, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hk = tail call i32 @strncmp(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hl = icmp eq i32 %i.hk, 0
  %or.cond37.i.i = and i1 %i.hf, %i.hl
  br i1 %or.cond37.i.i, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %8 = tail call i32 @strncmp(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %9 = icmp eq i32 %8, 0
  %or.cond38.i.i = and i1 %i.hf, %9
  br i1 %or.cond38.i.i, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hm = tail call i32 @strncmp(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hn = icmp eq i32 %i.hm, 0
  %or.cond39.i.i = and i1 %i.hf, %i.hn
  br i1 %or.cond39.i.i, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %10 = tail call i32 @strncmp(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %11 = icmp eq i32 %10, 0
  %or.cond40.i.i = and i1 %i.hf, %11
  br i1 %or.cond40.i.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ho = tail call i32 @strncmp(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hp = icmp eq i32 %i.ho, 0
  %or.cond41.i.i = and i1 %i.hf, %i.hp
  br i1 %or.cond41.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %12 = tail call i32 @strncmp(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %13 = icmp eq i32 %12, 0
  %i.hq = icmp eq i64 %i.hd, 6
  %or.cond42.i.i = and i1 %i.hq, %13
  br i1 %or.cond42.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hr = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.bb, label %seterr.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  store i32 4, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit.i.i

seterr.exit.i.i:                                  ; preds = %bb.bb, %bb.ba
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %p_b_cclass.exit.i

bb.bc:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.critedge.i.i
  %.01927.lcssa.i.i = phi ptr [ @cclasses, %.critedge.i.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 16), %bb.ap ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 32), %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %bb.ar ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 64), %bb.as ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 80), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 112), %bb.av ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 128), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 160), %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 176), %bb.az ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.01927.lcssa.i.i, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !68 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30  ; 2 uses
  %.not2228.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not2228.i.i, label %p_b_cclass.exit.i, label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %bb.bc, %.lr.ph30.i.i
  %i.hw = phi i8 [ %i.ig, %.lr.ph30.i.i ], [ %i.hv, %bb.bc ] ; 2 uses
  %.029.i.i = phi ptr [ %i.hx, %.lr.ph30.i.i ], [ %i.hu, %bb.bc ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 1 ; 2 uses
  %i.hy = load i8, ptr %i.ec, align 8, !tbaa !65
  %i.hz = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.ia = zext i8 %i.hw to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ia ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !30
  %i.id = or i8 %i.ic, %i.hy
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !30
  %i.ie = load i8, ptr %i.ed, align 1, !tbaa !66
  %i.if = add i8 %i.ie, %i.hw
  store i8 %i.if, ptr %i.ed, align 1, !tbaa !66
  %i.ig = load i8, ptr %i.hx, align 1, !tbaa !30  ; 2 uses
  %.not22.i.i = icmp eq i8 %i.ig, 0
  br i1 %.not22.i.i, label %p_b_cclass.exit.loopexit.i, label %.lr.ph30.i.i

p_b_cclass.exit.loopexit.i:                       ; preds = %.lr.ph30.i.i
  %.pre.i111 = load ptr, ptr %i.a, align 8, !tbaa !18
  %.pre106.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %p_b_cclass.exit.i

p_b_cclass.exit.i:                                ; preds = %p_b_cclass.exit.loopexit.i, %bb.bc, %seterr.exit.i.i
  %i.ih = phi ptr [ %.pre.i111, %p_b_cclass.exit.loopexit.i ], [ @nuls, %seterr.exit.i.i ], [ %i.ga, %bb.bc ] ; 2 uses
  %i.ii = phi ptr [ %.pre106.i, %p_b_cclass.exit.loopexit.i ], [ @nuls, %seterr.exit.i.i ], [ %i.hc, %bb.bc ] ; 2 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = icmp sgt i64 %i.il, 0
  br i1 %i.im, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %p_b_cclass.exit.i
  %i.in = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.be, label %seterr.exit81.i

bb.be:                                            ; preds = %bb.bd
  store i32 7, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit81.i

seterr.exit81.i:                                  ; preds = %bb.be, %bb.bd
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %bb.bf

bb.bf:                                            ; preds = %seterr.exit81.i, %p_b_cclass.exit.i
  %i.ip = phi ptr [ %i.ih, %p_b_cclass.exit.i ], [ @nuls, %seterr.exit81.i ] ; 2 uses
  %i.iq = phi ptr [ %i.ii, %p_b_cclass.exit.i ], [ @nuls, %seterr.exit81.i ] ; 4 uses
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = icmp sgt i64 %i.it, 1
  br i1 %i.iu, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.iv = load i8, ptr %i.iq, align 1, !tbaa !30
  %i.iw = icmp eq i8 %i.iv, 58
  br i1 %i.iw, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !30
  %i.iz = icmp eq i8 %i.iy, 93
  br i1 %i.iz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 2 ; 2 uses
  store ptr %i.ja, ptr %0, align 8, !tbaa !17
  br label %p_b_term.exit

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.jb = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.bk, label %seterr.exit82.i

bb.bk:                                            ; preds = %bb.bj
  store i32 4, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit82.i

seterr.exit82.i:                                  ; preds = %bb.bk, %bb.bj
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %p_b_term.exit

bb.bl:                                            ; preds = %bb.ah
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fg, i64 2 ; 3 uses
  store ptr %i.jd, ptr %0, align 8, !tbaa !17
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.ff, %i.je
  %i.jg = icmp sgt i64 %i.jf, 0
  br i1 %i.jg, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jh = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.bn, label %seterr.exit83.i

bb.bn:                                            ; preds = %bb.bm
  store i32 7, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit83.i

seterr.exit83.i:                                  ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %bb.bo

bb.bo:                                            ; preds = %seterr.exit83.i, %bb.bl
  %i.jj = phi ptr [ @nuls, %seterr.exit83.i ], [ %i.fd, %bb.bl ]
  %i.jk = phi ptr [ @nuls, %seterr.exit83.i ], [ %i.jd, %bb.bl ] ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !30
  switch i8 %i.jl, label %bb.br [
    i8 93, label %bb.bp
    i8 45, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  %i.jm = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.bq, label %seterr.exit84.i

bb.bq:                                            ; preds = %bb.bp
  store i32 3, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit84.i

seterr.exit84.i:                                  ; preds = %bb.bq, %bb.bp
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %bb.br

bb.br:                                            ; preds = %seterr.exit84.i, %bb.bo
  %i.jo = phi ptr [ %i.jj, %bb.bo ], [ @nuls, %seterr.exit84.i ]
  %i.jp = phi ptr [ %i.jk, %bb.bo ], [ @nuls, %seterr.exit84.i ] ; 4 uses
  %i.jq = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64               ; 3 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 2 uses
  %i.jt = icmp sgt i64 %i.js, 0
  br i1 %i.jt, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.critedge30.i.i.i
  %i.ju = phi i64 [ %i.kd, %.critedge30.i.i.i ], [ %i.js, %bb.br ]
  %i.jv = phi i64 [ %i.kc, %.critedge30.i.i.i ], [ %i.jr, %bb.br ]
  %i.jw = phi ptr [ %i.kb, %.critedge30.i.i.i ], [ %i.jp, %bb.br ] ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ju, 1
  br i1 %.not.i.i.i, label %.critedge30.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !30
  %i.jy = icmp eq i8 %i.jx, 61
  br i1 %i.jy, label %bb.bt, label %.critedge30.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !30
  %.not32.i.i.i = icmp eq i8 %i.ka, 93
  br i1 %.not32.i.i.i, label %bb.bv, label %.critedge30.i.i.i

.critedge30.i.i.i:                                ; preds = %bb.bt, %bb.bs, %.lr.ph.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 1 ; 3 uses
  store ptr %i.kb, ptr %0, align 8, !tbaa !17
  %i.kc = ptrtoint ptr %i.kb to i64               ; 2 uses
  %i.kd = sub i64 %i.jq, %i.kc                    ; 2 uses
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge30.i.i.i, %bb.br
  %i.kf = load i32, ptr %i.fc, align 8, !tbaa !19
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.bu, label %seterr.exit.i.i.i

bb.bu:                                            ; preds = %.critedge.i.i.i
  store i32 7, ptr %i.fc, align 8, !tbaa !19
  br label %seterr.exit.i.i.i

seterr.exit.i.i.i:                                ; preds = %bb.bu, %.critedge.i.i.i
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !32
  br label %p_b_eclass.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.kh = sub i64 %i.jv, %i.jr                    ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  %i.ki = phi ptr [ @.str.26, %bb.bv ], [ %i.kq, %bb.bz ] ; 2 uses
  %.037.i.i.i = phi ptr [ @cnames, %bb.bv ], [ %i.kp, %bb.bz ] ; 2 uses
  %i.kj = tail call i32 @strncmp(ptr noundef nonnull %i.ki, ptr noundef nonnull %i.jp, i64 noundef %i.kh) #11
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.kl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ki) #11
  %i.km = icmp eq i64 %i.kl, %i.kh
  br i1 %i.km, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.kn = getelementptr inbounds nuw i8, ptr %.037.i.i.i, i64 8
  %i.ko = load i8, ptr %i.kn, align 8, !tbaa !38
  br label %p_b_eclass.exit.i
end_hunk_0
