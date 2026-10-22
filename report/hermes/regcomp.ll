Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/regcomp?download=true
inline.NumInlined: 141
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !21
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ab, label %allocset.exit.thread

bb.ab:                                            ; preds = %.thread.i
  store i32 12, ptr %i.dr, align 8, !tbaa !21
  br label %allocset.exit.thread

allocset.exit.thread:                             ; preds = %.thread.i, %bb.ab
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %freeset.exit

allocset.exit:                                    ; preds = %bb.aa
  %i.du = sext i32 %i.bi to i64
  %i.dv = getelementptr inbounds [32 x i8], ptr %i.dd, i64 %i.du ; 34 uses
  %i.dw = sdiv i32 %i.bi, 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul nsw i64 %i.bm, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dy ; 2 uses
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !92
  %i.ea = and i32 %i.bi, 7
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = trunc nuw i32 %i.eb to i8               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 21 uses
  store i8 %i.ec, ptr %i.ed, align 8, !tbaa !93
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 9 ; 42 uses
  store i8 0, ptr %i.ee, align 1, !tbaa !94
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  %i.eg = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ei = icmp ult ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %allocset.exit
  %i.ej = load i8, ptr %i.eg, align 1, !tbaa !31
  %i.ek = icmp eq i8 %i.ej, 94
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  store ptr %i.el, ptr %0, align 8, !tbaa !19
  br label %bb.ae

bb.ae:                                            ; preds = %allocset.exit, %bb.ac, %bb.ad
  %i.em = phi ptr [ %i.el, %bb.ad ], [ %i.eg, %bb.ac ], [ %i.eg, %allocset.exit ] ; 3 uses
  %.not123 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ], [ true, %allocset.exit ]
  %i.en = icmp ult ptr %i.em, %i.eh
  br i1 %i.en, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !31  ; 2 uses
  switch i8 %i.eo, label %bb.ah [
    i8 93, label %.sink.split
    i8 45, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ag
  %.sink332 = phi i64 [ 45, %bb.ag ], [ 93, %bb.af ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.ep, ptr %0, align 8, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sink332 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !31
  %i.es = or i8 %i.er, %i.ec
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !31
  %i.et = load i8, ptr %i.ee, align 1, !tbaa !94
  %i.eu = add i8 %i.et, %i.eo
  store i8 %i.eu, ptr %i.ee, align 1, !tbaa !94
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.af, %bb.ae
  %i.ev = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.ex = icmp ult ptr %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %p_b_term.exit
  %i.fa = phi ptr [ %i.ew, %.lr.ph ], [ %i.my, %p_b_term.exit ] ; 6 uses
  %i.fb = phi ptr [ %i.ev, %.lr.ph ], [ %i.mz, %p_b_term.exit ] ; 5 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !31  ; 3 uses
  %.not = icmp eq i8 %i.fc, 93
  br i1 %.not, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 4 uses
  %i.fe = icmp ult ptr %i.fd, %i.fa               ; 2 uses
  %i.ff = icmp eq i8 %i.fc, 45
  %or.cond = and i1 %i.fe, %i.ff
  br i1 %or.cond, label %bb.ak, label %.critedge131

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load i8, ptr %i.fd, align 1, !tbaa !31
  %.not193 = icmp eq i8 %i.fg, 93
  br i1 %.not193, label %bb.cy, label %.critedge131.thread

.critedge131:                                     ; preds = %bb.aj
  switch i8 %i.fc, label %.thread106.i [
    i8 91, label %bb.al
    i8 45, label %.critedge131.thread
  ]

bb.al:                                            ; preds = %.critedge131
  br i1 %i.fe, label %bb.am, label %.thread106.i

.critedge131.thread:                              ; preds = %.critedge131, %bb.ak
  %i.fh = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %.critedge.thread.sink.split, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.fj = load i8, ptr %i.fd, align 1, !tbaa !31
  switch i8 %i.fj, label %.thread106.i [
    i8 58, label %bb.an
    i8 61, label %bb.bu
  ]

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 2 ; 3 uses
  store ptr %i.fk, ptr %0, align 8, !tbaa !19
  %i.fl = icmp ult ptr %i.fk, %i.fa
  br i1 %i.fl, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ap, label %seterr.exit95.i

bb.ap:                                            ; preds = %bb.ao
  store i32 7, ptr %i.ey, align 8, !tbaa !21
  br label %seterr.exit95.i

seterr.exit95.i:                                  ; preds = %bb.ap, %bb.ao
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %bb.aq

bb.aq:                                            ; preds = %seterr.exit95.i, %bb.an
  %i.fo = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.fa, %bb.an ] ; 3 uses
  %i.fp = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.fk, %bb.an ] ; 9 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !31
  switch i8 %i.fq, label %bb.at [
    i8 93, label %bb.ar
    i8 45, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.fr = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.as, label %.thread.i145

bb.as:                                            ; preds = %bb.ar
  store i32 4, ptr %i.ey, align 8, !tbaa !21
  br label %.thread.i145

.thread.i145:                                     ; preds = %bb.as, %bb.ar
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %.critedge.i.i

bb.at:                                            ; preds = %bb.aq
  %i.ft = icmp ult ptr %i.fp, %i.fo
  br i1 %i.ft, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.fu = ptrtoaddr ptr %i.fo to i64
  %i.fv = ptrtoaddr ptr %i.fp to i64
  %i.fw = tail call ptr @__ctype_b_loc() #21
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !41
  %i.fy = sub i64 %i.fu, %i.fv
  %scevgep.i.i = getelementptr i8, ptr %i.fp, i64 %i.fy
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.lr.ph.i.i
  %i.fz = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %i.gf, %bb.av ] ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !31
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !43
  %i.ge = and i16 %i.gd, 1024
  %.not.i.i147 = icmp eq i16 %i.ge, 0
  br i1 %.not.i.i147, label %.critedge.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 3 uses
  store ptr %i.gf, ptr %0, align 8, !tbaa !19
  %exitcond.not.i.i = icmp eq ptr %i.gf, %i.fo
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.au, !llvm.loop !77

.critedge.i.i:                                    ; preds = %bb.av, %bb.au, %bb.at, %.thread.i145
  %i.gg = phi ptr [ %i.fp, %bb.at ], [ @nuls, %.thread.i145 ], [ %i.fp, %bb.au ], [ %i.fp, %bb.av ] ; 13 uses
  %.lcssa37.i.i = phi ptr [ %i.fp, %bb.at ], [ @nuls, %.thread.i145 ], [ %scevgep.i.i, %bb.av ], [ %i.fz, %bb.au ]
  %i.gh = ptrtoint ptr %.lcssa37.i.i to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 24 uses
  %i.gk = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %1, label %5

1:                                                ; preds = %.critedge.i.i
  %2 = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.gj
  %3 = load i8, ptr %2, align 1, !tbaa !31
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %bb.bj, label %5

5:                                                ; preds = %1, %.critedge.i.i
  %6 = tail call i32 @strncmp(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr @.str.5, i64 %i.gj
  %10 = load i8, ptr %9, align 1, !tbaa !31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %bb.bj, label %12

12:                                               ; preds = %8, %5
  %13 = tail call i32 @strncmp(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr @.str.7, i64 %i.gj
  %17 = load i8, ptr %16, align 1, !tbaa !31
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %bb.bj, label %19

19:                                               ; preds = %15, %12
  %20 = tail call i32 @strncmp(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr @.str.9, i64 %i.gj
  %24 = load i8, ptr %23, align 1, !tbaa !31
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %bb.bj, label %26

26:                                               ; preds = %22, %19
  %27 = tail call i32 @strncmp(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.gj
  %31 = load i8, ptr %30, align 1, !tbaa !31
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %bb.bj, label %33

33:                                               ; preds = %29, %26
  %34 = tail call i32 @strncmp(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds nuw i8, ptr @.str.13, i64 %i.gj
  %38 = load i8, ptr %37, align 1, !tbaa !31
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %bb.bj, label %40

40:                                               ; preds = %36, %33
  %41 = tail call i32 @strncmp(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %40
  %43 = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.gj
  %44 = load i8, ptr %43, align 1, !tbaa !31
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %40
  %i.gm = tail call i32 @strncmp(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %46 = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.gj
  %47 = load i8, ptr %46, align 1, !tbaa !31
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %bb.bj, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.go = tail call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %49 = getelementptr inbounds nuw i8, ptr @.str.19, i64 %i.gj
  %50 = load i8, ptr %49, align 1, !tbaa !31
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gq = tail call i32 @strncmp(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %52 = getelementptr inbounds nuw i8, ptr @.str.21, i64 %i.gj
  %53 = load i8, ptr %52, align 1, !tbaa !31
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gs = tail call i32 @strncmp(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %55 = getelementptr inbounds nuw i8, ptr @.str.23, i64 %i.gj
  %56 = load i8, ptr %55, align 1, !tbaa !31
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gu = tail call i32 @strncmp(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.gg, i64 noundef %i.gj) #17
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %58 = getelementptr inbounds nuw i8, ptr @.str.25, i64 %i.gj
  %59 = load i8, ptr %58, align 1, !tbaa !31
  %i.gw = icmp eq i8 %59, 0
  br i1 %i.gw, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gx = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.bi, label %seterr.exit.i.i146

bb.bi:                                            ; preds = %bb.bh
  store i32 4, ptr %i.ey, align 8, !tbaa !21
  br label %seterr.exit.i.i146

seterr.exit.i.i146:                               ; preds = %bb.bi, %bb.bh
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %p_b_cclass.exit.i

bb.bj:                                            ; preds = %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %36, %29, %22, %15, %8, %1
  %.02940.lcssa.i.i = phi ptr [ @cclasses, %1 ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 24), %8 ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %15 ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 72), %22 ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %29 ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 120), %36 ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 168), %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 192), %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 216), %bb.bc ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 240), %bb.be ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 264), %bb.bg ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.02940.lcssa.i.i, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !96 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !31  ; 2 uses
  %.not3441.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not3441.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %bb.bj, %.lr.ph43.i.i
  %i.hc = phi i8 [ %i.hm, %.lr.ph43.i.i ], [ %i.hb, %bb.bj ] ; 2 uses
  %.042.i.i = phi ptr [ %i.hd, %.lr.ph43.i.i ], [ %i.ha, %bb.bj ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 1 ; 2 uses
  %i.he = load i8, ptr %i.ed, align 8, !tbaa !93
  %i.hf = load ptr, ptr %i.dv, align 8, !tbaa !92
  %i.hg = zext i8 %i.hc to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !31
  %i.hj = or i8 %i.hi, %i.he
  store i8 %i.hj, ptr %i.hh, align 1, !tbaa !31
  %i.hk = load i8, ptr %i.ee, align 1, !tbaa !94
  %i.hl = add i8 %i.hk, %i.hc
  store i8 %i.hl, ptr %i.ee, align 1, !tbaa !94
  %i.hm = load i8, ptr %i.hd, align 1, !tbaa !31  ; 2 uses
  %.not34.i.i = icmp eq i8 %i.hm, 0
  br i1 %.not34.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i, !llvm.loop !78

._crit_edge.i.i:                                  ; preds = %.lr.ph43.i.i, %bb.bj
  %i.hn = getelementptr inbounds nuw i8, ptr %.02940.lcssa.i.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !97 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !31
  %.not3544.i.i = icmp eq i8 %i.hp, 0
  br i1 %.not3544.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %._crit_edge.i.i, %mcadd.exit.i.i
  %.145.i.i = phi ptr [ %i.ih, %mcadd.exit.i.i ], [ %i.ho, %._crit_edge.i.i ] ; 4 uses
  %i.hq = load i64, ptr %i.ef, align 8, !tbaa !98 ; 3 uses
  %i.hr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #17
  %i.hs = add i64 %i.hq, 1
  %i.ht = add i64 %i.hs, %i.hr                    ; 2 uses
  store i64 %i.ht, ptr %i.ef, align 8, !tbaa !98
  %i.hu = load ptr, ptr %i.ez, align 8, !tbaa !99
  %i.hv = tail call ptr @realloc(ptr noundef %i.hu, i64 noundef %i.ht) #20 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %.lr.ph47.i.i
  %i.hx = load ptr, ptr %i.ez, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.hx) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr null, ptr %i.ez, align 8, !tbaa !99
  %i.hy = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.bn, label %seterr.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  store i32 12, ptr %i.ey, align 8, !tbaa !21
  br label %seterr.exit.i.i.i

seterr.exit.i.i.i:                                ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %mcadd.exit.i.i

bb.bo:                                            ; preds = %.lr.ph47.i.i
  store ptr %i.hv, ptr %i.ez, align 8, !tbaa !99
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hq
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -1
  %i.ic = load i64, ptr %i.ef, align 8, !tbaa !98
  %reass.sub = sub i64 %i.ic, %i.hq
  %i.id = add i64 %reass.sub, 1
  %i.ie = tail call i64 @llvh_strlcpy(ptr noundef nonnull %i.ib, ptr noundef nonnull %.145.i.i, i64 noundef %i.id) #16 ; 0 uses
  br label %mcadd.exit.i.i

mcadd.exit.i.i:                                   ; preds = %bb.bo, %seterr.exit.i.i.i
  %i.if = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #17
  %i.ig = getelementptr i8, ptr %.145.i.i, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 1      ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !31
  %.not35.i.i = icmp eq i8 %i.ii, 0
  br i1 %.not35.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i, !llvm.loop !79

p_b_cclass.exit.i:                                ; preds = %mcadd.exit.i.i, %._crit_edge.i.i, %seterr.exit.i.i146
  %i.ij = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.ik = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.il = icmp ult ptr %i.ij, %i.ik
  br i1 %i.il, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %p_b_cclass.exit.i
  %i.im = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bq:                                            ; preds = %p_b_cclass.exit.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 1 ; 2 uses
  %i.ip = icmp ult ptr %i.io, %i.ik
  br i1 %i.ip, label %bb.br, label %.thread147.i

bb.br:                                            ; preds = %bb.bq
  %i.iq = load i8, ptr %i.ij, align 1, !tbaa !31
  %i.ir = icmp eq i8 %i.iq, 58
  br i1 %i.ir, label %bb.bs, label %.thread147.i

bb.bs:                                            ; preds = %bb.br
  %i.is = load i8, ptr %i.io, align 1, !tbaa !31
  %i.it = icmp eq i8 %i.is, 93
  br i1 %i.it, label %bb.bt, label %.thread147.i

bb.bt:                                            ; preds = %bb.bs
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 2 ; 2 uses
  store ptr %i.iu, ptr %0, align 8, !tbaa !19
  br label %p_b_term.exit

.thread147.i:                                     ; preds = %bb.bs, %bb.br, %bb.bq
  %.pr = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.iv = icmp eq i32 %.pr, 0
  br i1 %i.iv, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bu:                                            ; preds = %bb.am
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fb, i64 2 ; 3 uses
  store ptr %i.iw, ptr %0, align 8, !tbaa !19
  %i.ix = icmp ult ptr %i.iw, %i.fa
  br i1 %i.ix, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iy = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.bw, label %seterr.exit99.i

bb.bw:                                            ; preds = %bb.bv
  store i32 7, ptr %i.ey, align 8, !tbaa !21
  br label %seterr.exit99.i

seterr.exit99.i:                                  ; preds = %bb.bw, %bb.bv
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %bb.bx

bb.bx:                                            ; preds = %seterr.exit99.i, %bb.bu
  %i.ja = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.fa, %bb.bu ] ; 3 uses
  %i.jb = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.iw, %bb.bu ] ; 6 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !31
  switch i8 %i.jc, label %bb.bz [
    i8 93, label %bb.by
    i8 45, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.jd = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

bb.bz:                                            ; preds = %bb.bx
  %i.jf = icmp ult ptr %i.jb, %i.ja
  br i1 %i.jf, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bz, %.critedge34.i.i.i
  %i.jg = phi ptr [ %i.jh, %.critedge34.i.i.i ], [ %i.jb, %bb.bz ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 5 uses
  %i.ji = icmp ult ptr %i.jh, %i.ja
  br i1 %i.ji, label %bb.ca, label %.critedge34.i.i.i

bb.ca:                                            ; preds = %.lr.ph.i.i.i
  %i.jj = load i8, ptr %i.jg, align 1, !tbaa !31
  %i.jk = icmp eq i8 %i.jj, 61
  br i1 %i.jk, label %bb.cb, label %.critedge34.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !31
  %.not36.i.i.i = icmp eq i8 %i.jl, 93
  br i1 %.not36.i.i.i, label %bb.cc, label %.critedge34.i.i.i

.critedge34.i.i.i:                                ; preds = %bb.cb, %bb.ca, %.lr.ph.i.i.i
  store ptr %i.jh, ptr %0, align 8, !tbaa !19
  %exitcond.not.i.i.i = icmp eq ptr %i.jh, %i.ja
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

.critedge.i.i.i:                                  ; preds = %.critedge34.i.i.i, %bb.bz
  %.pr306 = load i32, ptr %i.ey, align 8, !tbaa !21
  %i.jm = icmp eq i32 %.pr306, 0
  br i1 %i.jm, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

seterr.exit.i.i101.i.sink.split:                  ; preds = %.critedge.i.i.i, %bb.by
  %.sink333 = phi i32 [ 3, %bb.by ], [ 7, %.critedge.i.i.i ]
  store i32 %.sink333, ptr %i.ey, align 8, !tbaa !21
  br label %seterr.exit.i.i101.i

seterr.exit.i.i101.i:                             ; preds = %seterr.exit.i.i101.i.sink.split, %bb.by, %.critedge.i.i.i
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %p_b_eclass.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.jn = ptrtoint ptr %i.jg to i64
  %i.jo = ptrtoint ptr %i.jb to i64
  %i.jp = sub i64 %i.jn, %i.jo                    ; 3 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %bb.cc
  %i.jq = phi ptr [ @.str.27, %bb.cc ], [ %i.jy, %bb.cg ] ; 2 uses
end_hunk_0
