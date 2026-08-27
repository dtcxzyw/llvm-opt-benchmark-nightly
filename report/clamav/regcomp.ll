Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/regcomp?download=true
inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a
  tail call void @free(ptr noundef %i.dj) #10
  %i.dk = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr null, ptr %i.dl, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.dn) #10
  %i.do = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr null, ptr %i.dp, align 8, !tbaa !54
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !21
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.y, label %allocset.exit.thread

bb.y:                                             ; preds = %.thread.i
  store i32 12, ptr %i.dq, align 8, !tbaa !21
  br label %allocset.exit.thread

allocset.exit.thread:                             ; preds = %.thread.i, %bb.y
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.a, align 8, !tbaa !20
  br label %freeset.exit

allocset.exit:                                    ; preds = %bb.x
  %i.dt = sext i32 %i.bi to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dt ; 32 uses
  %i.dv = sdiv i32 %i.bi, 8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul nsw i64 %i.bm, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dx ; 2 uses
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !55
  %i.dz = and i32 %i.bi, 7
  %i.ea = shl nuw nsw i32 1, %i.dz
  %i.eb = trunc nuw i32 %i.ea to i8               ; 2 uses
  %i.ec = getelementptr i8, ptr %i.du, i64 8      ; 21 uses
  store i8 %i.eb, ptr %i.ec, align 8, !tbaa !57
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 9 ; 42 uses
  store i8 0, ptr %i.ed, align 1, !tbaa !58
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ef = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.eg = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = icmp sgt i64 %i.ei, 0
  br i1 %i.ej, label %bb.z, label %.thread270

bb.z:                                             ; preds = %allocset.exit
  %i.ek = load i8, ptr %i.ef, align 1, !tbaa !38  ; 2 uses
  %i.el = icmp ne i8 %i.ek, 94                    ; 3 uses
  br i1 %i.el, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 4 uses
  store ptr %i.em, ptr %0, align 8, !tbaa !19
  %.pre216 = ptrtoint ptr %i.em to i64
  %.pre217 = sub i64 %i.eg, %.pre216
  %i.en = icmp sgt i64 %.pre217, 0
  br i1 %i.en, label %thread-pre-split, label %.thread270

thread-pre-split:                                 ; preds = %bb.aa
  %.pr = load i8, ptr %i.em, align 1, !tbaa !38
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
  %.sink290 = phi i64 [ 45, %bb.ab ], [ 93, %.thread ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %0, align 8, !tbaa !19
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sink290 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !38
  %i.et = or i8 %i.es, %i.eb
  store i8 %i.et, ptr %i.er, align 1, !tbaa !38
  %i.eu = load i8, ptr %i.ed, align 1, !tbaa !58
  %i.ev = add i8 %i.eu, %i.eo
  store i8 %i.ev, ptr %i.ed, align 1, !tbaa !58
  br label %.thread270

.thread270:                                       ; preds = %.thread270.sink.split, %.thread, %allocset.exit, %bb.aa
  %.not86268 = phi i1 [ false, %bb.aa ], [ true, %allocset.exit ], [ %i.el, %.thread ], [ %i.el, %.thread270.sink.split ]
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %i.ex = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread270
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %p_b_term.exit
  %i.fd = phi ptr [ %i.ew, %.lr.ph ], [ %i.op, %p_b_term.exit ] ; 3 uses
  %i.fe = phi i64 [ %i.fa, %.lr.ph ], [ %i.os, %p_b_term.exit ] ; 2 uses
  %i.ff = phi i64 [ %i.ey, %.lr.ph ], [ %i.oq, %p_b_term.exit ] ; 2 uses
  %i.fg = phi ptr [ %i.ex, %.lr.ph ], [ %i.oo, %p_b_term.exit ] ; 7 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !38  ; 3 uses
  %.not = icmp eq i8 %i.fh, 93
  br i1 %.not, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not83 = icmp ne i64 %i.fe, 1
  %i.fi = icmp eq i8 %i.fh, 45
  %or.cond = and i1 %.not83, %i.fi
  br i1 %or.cond, label %bb.ae, label %.critedge93

bb.ae:                                            ; preds = %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !38
  %.not170 = icmp eq i8 %i.fk, 93
  br i1 %.not170, label %bb.cv, label %.critedge93.thread

.critedge93:                                      ; preds = %bb.ad
  switch i8 %i.fh, label %.thread88.i [
    i8 91, label %bb.af
    i8 45, label %.critedge93.thread
  ]

bb.af:                                            ; preds = %.critedge93
  %.not94.i = icmp eq i64 %i.fe, 1
  br i1 %.not94.i, label %.thread88.i, label %bb.ah

.critedge93.thread:                               ; preds = %bb.ae, %.critedge93
  %i.fl = load i32, ptr %i.fc, align 8, !tbaa !21
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ag, label %seterr.exit.i110

bb.ag:                                            ; preds = %.critedge93.thread
  store i32 11, ptr %i.fc, align 8, !tbaa !21
  br label %seterr.exit.i110

seterr.exit.i110:                                 ; preds = %bb.ag, %.critedge93.thread
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !45
  br label %p_b_term.exit

bb.ah:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !38
  switch i8 %i.fo, label %.thread88.i [
    i8 58, label %bb.ai
    i8 61, label %bb.bl
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 2 ; 3 uses
  store ptr %i.fp, ptr %0, align 8, !tbaa !19
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.ff, %i.fq
  %i.fs = icmp sgt i64 %i.fr, 0
  br i1 %i.fs, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ft = load i32, ptr %i.fc, align 8, !tbaa !21
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ak, label %seterr.exit79.i

bb.ak:                                            ; preds = %bb.aj
  store i32 7, ptr %i.fc, align 8, !tbaa !21
  br label %seterr.exit79.i

seterr.exit79.i:                                  ; preds = %bb.ak, %bb.aj
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !45
  br label %bb.al

bb.al:                                            ; preds = %seterr.exit79.i, %bb.ai
  %i.fv = phi ptr [ @nuls, %seterr.exit79.i ], [ %i.fd, %bb.ai ]
  %i.fw = phi ptr [ @nuls, %seterr.exit79.i ], [ %i.fp, %bb.ai ] ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !38
  switch i8 %i.fx, label %bb.ao [
    i8 93, label %bb.am
    i8 45, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.fy = load i32, ptr %i.fc, align 8, !tbaa !21
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.an, label %seterr.exit80.i

bb.an:                                            ; preds = %bb.am
  store i32 4, ptr %i.fc, align 8, !tbaa !21
  br label %seterr.exit80.i

seterr.exit80.i:                                  ; preds = %bb.an, %bb.am
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !45
  br label %bb.ao

bb.ao:                                            ; preds = %seterr.exit80.i, %bb.al
  %i.ga = phi ptr [ %i.fv, %bb.al ], [ @nuls, %seterr.exit80.i ] ; 2 uses
  %i.gb = phi ptr [ %i.fw, %bb.al ], [ @nuls, %seterr.exit80.i ] ; 17 uses
  %i.gc = ptrtoint ptr %i.ga to i64               ; 5 uses
  %i.gd = ptrtoint ptr %i.gb to i64               ; 4 uses
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp sgt i64 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.gg = tail call ptr @__ctype_b_loc() #12
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !47 ; 2 uses
  %i.gi = load i8, ptr %i.gb, align 1, !tbaa !38
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !49
  %i.gm = and i16 %i.gl, 1024
  %.not.i97.i = icmp eq i16 %i.gm, 0
  br i1 %.not.i97.i, label %.critedge.i.i, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %.lr.ph.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 4 uses
  store ptr %i.gn, ptr %0, align 8, !tbaa !19
  %i.go = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gp = sub i64 %i.gc, %i.go
  %i.gq = icmp sgt i64 %i.gp, 0
  br i1 %i.gq, label %.lr.ph301, label %.critedge.i.i

.lr.ph301:                                        ; preds = %.lr.ph.i112.preheader, %.lr.ph.i112
  %i.gr = phi i64 [ %i.gz, %.lr.ph.i112 ], [ %i.go, %.lr.ph.i112.preheader ]
  %i.gs = phi ptr [ %i.gy, %.lr.ph.i112 ], [ %i.gn, %.lr.ph.i112.preheader ] ; 3 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !38
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !49
  %i.gx = and i16 %i.gw, 1024
  %.not.i.i113 = icmp eq i16 %i.gx, 0
  br i1 %.not.i.i113, label %.critedge.i.i, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph301
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 4 uses
  store ptr %i.gy, ptr %0, align 8, !tbaa !19
  %i.gz = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.ha = sub i64 %i.gc, %i.gz
  %i.hb = icmp sgt i64 %i.ha, 0
  br i1 %i.hb, label %.lr.ph301, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph301, %.lr.ph.i112, %.lr.ph.i112.preheader, %.lr.ph.i.i, %bb.ao
  %i.hc = phi ptr [ %i.gb, %bb.ao ], [ %i.gb, %.lr.ph.i.i ], [ %i.gn, %.lr.ph.i112.preheader ], [ %i.gy, %.lr.ph.i112 ], [ %i.gs, %.lr.ph301 ]
  %.lcssa.i.i = phi i64 [ %i.gd, %bb.ao ], [ %i.gd, %.lr.ph.i.i ], [ %i.gc, %.lr.ph.i112.preheader ], [ %i.gc, %.lr.ph.i112 ], [ %i.gr, %.lr.ph301 ]
  %i.hd = sub i64 %.lcssa.i.i, %i.gd              ; 14 uses
  %i.he = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hf = icmp eq i32 %i.he, 0
  %i.hg = icmp eq i64 %i.hd, 5                    ; 11 uses
  %or.cond.i.i = and i1 %i.hf, %i.hg
  br i1 %or.cond.i.i, label %bb.bc, label %bb.ap

bb.ap:                                            ; preds = %.critedge.i.i
  %i.hh = tail call i32 @strncmp(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hi = icmp eq i32 %i.hh, 0
  %or.cond32.i.i = and i1 %i.hg, %i.hi
  br i1 %or.cond32.i.i, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = tail call i32 @strncmp(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hk = icmp eq i32 %i.hj, 0
  %or.cond33.i.i = and i1 %i.hg, %i.hk
  br i1 %or.cond33.i.i, label %bb.bc, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = tail call i32 @strncmp(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hm = icmp eq i32 %i.hl, 0
  %or.cond34.i.i = and i1 %i.hg, %i.hm
  br i1 %or.cond34.i.i, label %bb.bc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hn = tail call i32 @strncmp(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.ho = icmp eq i32 %i.hn, 0
  %or.cond35.i.i = and i1 %i.hg, %i.ho
  br i1 %or.cond35.i.i, label %bb.bc, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hp = tail call i32 @strncmp(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hq = icmp eq i32 %i.hp, 0
  %or.cond36.i.i = and i1 %i.hg, %i.hq
  br i1 %or.cond36.i.i, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hr = tail call i32 @strncmp(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hs = icmp eq i32 %i.hr, 0
  %or.cond37.i.i = and i1 %i.hg, %i.hs
  br i1 %or.cond37.i.i, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = tail call i32 @strncmp(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hu = icmp eq i32 %i.ht, 0
  %or.cond38.i.i = and i1 %i.hg, %i.hu
  br i1 %or.cond38.i.i, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = tail call i32 @strncmp(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hw = icmp eq i32 %i.hv, 0
  %or.cond39.i.i = and i1 %i.hg, %i.hw
  br i1 %or.cond39.i.i, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hx = tail call i32 @strncmp(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.hy = icmp eq i32 %i.hx, 0
  %or.cond40.i.i = and i1 %i.hg, %i.hy
  br i1 %or.cond40.i.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hz = tail call i32 @strncmp(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.ia = icmp eq i32 %i.hz, 0
  %or.cond41.i.i = and i1 %i.hg, %i.ia
  br i1 %or.cond41.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ib = tail call i32 @strncmp(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.gb, i64 noundef %i.hd) #11
  %i.ic = icmp eq i32 %i.ib, 0
  %i.id = icmp eq i64 %i.hd, 6
  %or.cond42.i.i = and i1 %i.id, %i.ic
  br i1 %or.cond42.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ie = load i32, ptr %i.fc, align 8, !tbaa !21
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.bb, label %seterr.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  store i32 4, ptr %i.fc, align 8, !tbaa !21
  br label %seterr.exit.i.i

seterr.exit.i.i:                                  ; preds = %bb.bb, %bb.ba
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !45
  br label %p_b_cclass.exit.i

bb.bc:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.critedge.i.i
  %.01927.lcssa.i.i = phi ptr [ @cclasses, %.critedge.i.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 16), %bb.ap ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 32), %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %bb.ar ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 64), %bb.as ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 80), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 112), %bb.av ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 128), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 160), %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 176), %bb.az ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.01927.lcssa.i.i, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !59 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !38  ; 2 uses
  %.not2228.i.i = icmp eq i8 %i.ii, 0
  br i1 %.not2228.i.i, label %p_b_cclass.exit.i, label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %bb.bc, %.lr.ph30.i.i
  %i.ij = phi i8 [ %i.it, %.lr.ph30.i.i ], [ %i.ii, %bb.bc ] ; 2 uses
  %.029.i.i = phi ptr [ %i.ik, %.lr.ph30.i.i ], [ %i.ih, %bb.bc ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 1 ; 2 uses
  %i.il = load i8, ptr %i.ec, align 8, !tbaa !57
  %i.im = load ptr, ptr %i.du, align 8, !tbaa !55
  %i.in = zext i8 %i.ij to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.in ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !38
  %i.iq = or i8 %i.ip, %i.il
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !38
  %i.ir = load i8, ptr %i.ed, align 1, !tbaa !58
  %i.is = add i8 %i.ir, %i.ij
  store i8 %i.is, ptr %i.ed, align 1, !tbaa !58
  %i.it = load i8, ptr %i.ik, align 1, !tbaa !38  ; 2 uses
  %.not22.i.i = icmp eq i8 %i.it, 0
  br i1 %.not22.i.i, label %p_b_cclass.exit.loopexit.i, label %.lr.ph30.i.i

p_b_cclass.exit.loopexit.i:                       ; preds = %.lr.ph30.i.i
  %.pre.i111 = load ptr, ptr %i.a, align 8, !tbaa !20
  %.pre105.i = load ptr, ptr %0, align 8, !tbaa !19
  br label %p_b_cclass.exit.i

p_b_cclass.exit.i:                                ; preds = %p_b_cclass.exit.loopexit.i, %bb.bc, %seterr.exit.i.i
  %i.iu = phi ptr [ %.pre.i111, %p_b_cclass.exit.loopexit.i ], [ @nuls, %seterr.exit.i.i ], [ %i.ga, %bb.bc ] ; 2 uses
  %i.iv = phi ptr [ %.pre105.i, %p_b_cclass.exit.loopexit.i ], [ @nuls, %seterr.exit.i.i ], [ %i.hc, %bb.bc ] ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = icmp sgt i64 %i.iy, 0
  br i1 %i.iz, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %p_b_cclass.exit.i
  %i.ja = load i32, ptr %i.fc, align 8, !tbaa !21
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.be, label %seterr.exit81.i

bb.be:                                            ; preds = %bb.bd
  store i32 7, ptr %i.fc, align 8, !tbaa !21
  br label %seterr.exit81.i

seterr.exit81.i:                                  ; preds = %bb.be, %bb.bd
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !45
  br label %bb.bf

bb.bf:                                            ; preds = %seterr.exit81.i, %p_b_cclass.exit.i
  %i.jc = phi ptr [ %i.iu, %p_b_cclass.exit.i ], [ @nuls, %seterr.exit81.i ] ; 2 uses
  %i.jd = phi ptr [ %i.iv, %p_b_cclass.exit.i ], [ @nuls, %seterr.exit81.i ] ; 4 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = icmp sgt i64 %i.jg, 1
  br i1 %i.jh, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.ji = load i8, ptr %i.jd, align 1, !tbaa !38
  %i.jj = icmp eq i8 %i.ji, 58
  br i1 %i.jj, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !38
  %i.jm = icmp eq i8 %i.jl, 93
  br i1 %i.jm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 2 ; 2 uses
  store ptr %i.jn, ptr %0, align 8, !tbaa !19
  br label %p_b_term.exit

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.jo = load i32, ptr %i.fc, align 8, !tbaa !21
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.bk, label %seterr.exit82.i

bb.bk:                                            ; preds = %bb.bj
  store i32 4, ptr %i.fc, align 8, !tbaa !21
  br label %seterr.exit82.i

seterr.exit82.i:                                  ; preds = %bb.bk, %bb.bj
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !45
  br label %p_b_term.exit

bb.bl:                                            ; preds = %bb.ah
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fg, i64 2 ; 3 uses
  store ptr %i.jq, ptr %0, align 8, !tbaa !19
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.ff, %i.jr
  %i.jt = icmp sgt i64 %i.js, 0
  br i1 %i.jt, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ju = load i32, ptr %i.fc, align 8, !tbaa !21
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.bn, label %seterr.exit83.i

bb.bn:                                            ; preds = %bb.bm
  store i32 7, ptr %i.fc, align 8, !tbaa !21
  br label %seterr.exit83.i

seterr.exit83.i:                                  ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !45
  br label %bb.bo

bb.bo:                                            ; preds = %seterr.exit83.i, %bb.bl
end_hunk_0
