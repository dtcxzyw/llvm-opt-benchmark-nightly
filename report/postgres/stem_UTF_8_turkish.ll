Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stem_UTF_8_turkish?download=true
inline.NumInlined: 47
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@r_stem_suffix_chain_before_ki:bb.a
  %.not.not.not.i380 = icmp eq i32 %i.z, 0
  br i1 %.not.not.not.i380, label %r_mark_lAr.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ab = add i32 %i.aa, -2
  %i.ac = load i32, ptr %i.m, align 8
  %.not.i381 = icmp sgt i32 %i.ab, %i.ac
  br i1 %.not.i381, label %bb.h, label %r_mark_lAr.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = add i32 %i.aa, -1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %.not10.i = icmp eq i8 %i.ah, 114
  br i1 %.not10.i, label %r_mark_lAr.exit, label %r_mark_lAr.exit.thread

r_mark_lAr.exit:                                  ; preds = %bb.h
  %i.ai = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_16, i32 noundef 2, ptr noundef null) #2
  %.not520 = icmp eq i32 %i.ai, 0
  br i1 %.not520, label %r_mark_lAr.exit.thread, label %bb.i

bb.i:                                             ; preds = %r_mark_lAr.exit
  %i.aj = load i32, ptr %i.a, align 8
  store i32 %i.aj, ptr %i.u, align 4
  %i.ak = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.j, label %.thread418

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.f, align 4
  %i.an = load i32, ptr %i.a, align 8
  %i.ao = tail call fastcc i32 @r_stem_suffix_chain_before_ki(ptr noundef nonnull %0) ; 3 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.neg356 = sub i32 %i.an, %i.am
  %i.aq = load i32, ptr %i.f, align 4
  %i.ar = add i32 %.neg356, %i.aq
  br label %.thread516.sink.split

bb.l:                                             ; preds = %bb.j
  %i.as = icmp slt i32 %i.ao, 0
  br i1 %i.as, label %.thread418, label %.thread516

r_mark_lAr.exit.thread:                           ; preds = %bb.g, %bb.h, %bb.f, %r_mark_lAr.exit
  %i.at = load i32, ptr %i.f, align 4
  %i.au = add i32 %i.at, %.neg355
  store i32 %i.au, ptr %i.a, align 8
  %i.av = tail call fastcc i32 @r_mark_possessives(ptr noundef nonnull %0)
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %r_mark_lAr.exit.thread
  %i.ax = load i32, ptr %i.f, align 4
  %i.ay = add i32 %i.ax, %.neg355
  br label %.thread516.sink.split

bb.n:                                             ; preds = %r_mark_lAr.exit.thread
  %i.az = load i32, ptr %i.a, align 8
  store i32 %i.az, ptr %i.u, align 4
  %i.ba = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.o, label %.thread418

bb.o:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %i.f, align 4
  %i.bd = load i32, ptr %i.a, align 8             ; 2 uses
  %i.be = sub i32 %i.bc, %i.bd                    ; 2 uses
  store i32 %i.bd, ptr %i.c, align 8
  %i.bf = tail call fastcc i32 @r_mark_lAr(ptr noundef nonnull %0)
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %i.f, align 4
  %i.bi = sub i32 %i.bh, %i.be
  br label %.thread516.sink.split

bb.q:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %i.a, align 8
  store i32 %i.bj, ptr %i.u, align 4
  %i.bk = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.r, label %.thread418

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call fastcc i32 @r_stem_suffix_chain_before_ki(ptr noundef nonnull %0) ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.f, align 4
  %i.bp = sub i32 %i.bo, %i.be
  br label %.thread516.sink.split

bb.t:                                             ; preds = %bb.r
  %i.bq = icmp slt i32 %i.bm, 0
  br i1 %i.bq, label %.thread418, label %.thread516

r_mark_DA.exit.thread:                            ; preds = %bb.c, %bb.d, %bb.b, %r_mark_DA.exit
  %i.br = load i32, ptr %i.f, align 4
  %i.bs = sub i32 %i.br, %i.i
  store i32 %i.bs, ptr %i.a, align 8
  %i.bt = tail call fastcc i32 @r_check_vowel_harmony(ptr noundef nonnull %0)
  %.not.not.not.i383 = icmp eq i32 %i.bt, 0
  br i1 %.not.not.not.i383, label %r_mark_nUn.exit.thread, label %bb.u

bb.u:                                             ; preds = %r_mark_DA.exit.thread
  %i.bu = load i32, ptr %i.a, align 8
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %.not.i384 = icmp sgt i32 %i.bv, %i.bx
  br i1 %.not.i384, label %bb.v, label %r_mark_nUn.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.by = load ptr, ptr %0, align 8
  %i.bz = sext i32 %i.bv to i64
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %.not12.i = icmp eq i8 %i.cb, 110
  br i1 %.not12.i, label %bb.w, label %r_mark_nUn.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cc = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 4, ptr noundef null) #2
  %.not13.i = icmp eq i32 %i.cc, 0
  br i1 %.not13.i, label %r_mark_nUn.exit.thread, label %r_mark_nUn.exit

r_mark_nUn.exit:                                  ; preds = %bb.w
  %i.cd = tail call fastcc i32 @r_mark_suffix_with_optional_n_consonant(ptr noundef nonnull %0)
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %r_mark_nUn.exit.thread, label %bb.x

bb.x:                                             ; preds = %r_mark_nUn.exit
  %i.cf = load i32, ptr %i.a, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.y, label %.thread418

bb.y:                                             ; preds = %bb.x
  %i.cj = load i32, ptr %i.f, align 4             ; 4 uses
  %i.ck = load i32, ptr %i.a, align 8             ; 5 uses
  %.neg = sub i32 %i.ck, %i.cj
  store i32 %i.ck, ptr %i.c, align 8
  %i.cl = sub i32 %i.cj, %i.ck                    ; 3 uses
  %i.cm = add i32 %i.ck, -3
  %i.cn = load i32, ptr %i.bw, align 8
  %.not.i386 = icmp sgt i32 %i.cm, %i.cn
  br i1 %.not.i386, label %bb.z, label %r_mark_lArI.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr %0, align 8
  %i.cp = add i32 %i.ck, -1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  switch i8 %i.cs, label %r_mark_lArI.exit.thread [
    i8 105, label %r_mark_lArI.exit
    i8 -79, label %r_mark_lArI.exit
  ]

r_mark_lArI.exit:                                 ; preds = %bb.z, %bb.z
  %i.ct = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 2, ptr noundef null) #2
  %.not521 = icmp eq i32 %i.ct, 0
  br i1 %.not521, label %r_mark_lArI.exit.r_mark_lArI.exit.thread_crit_edge, label %bb.aa

r_mark_lArI.exit.r_mark_lArI.exit.thread_crit_edge: ; preds = %r_mark_lArI.exit
  %.pre = load i32, ptr %i.f, align 4
  br label %r_mark_lArI.exit.thread

bb.aa:                                            ; preds = %r_mark_lArI.exit
  %i.cu = load i32, ptr %i.a, align 8
  store i32 %i.cu, ptr %i.cg, align 4
  %i.cv = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %.thread516, label %.thread418

r_mark_lArI.exit.thread:                          ; preds = %r_mark_lArI.exit.r_mark_lArI.exit.thread_crit_edge, %bb.y, %bb.z
  %i.cx = phi i32 [ %.pre, %r_mark_lArI.exit.r_mark_lArI.exit.thread_crit_edge ], [ %i.cj, %bb.y ], [ %i.cj, %bb.z ]
  %i.cy = sub i32 %i.cx, %i.cl                    ; 2 uses
  store i32 %i.cy, ptr %i.a, align 8
  store i32 %i.cy, ptr %i.c, align 8
  %i.cz = tail call fastcc i32 @r_mark_possessives(ptr noundef nonnull %0)
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ab, label %.thread444

bb.ab:                                            ; preds = %r_mark_lArI.exit.thread
  %i.db = load i32, ptr %i.f, align 4
  %i.dc = sub i32 %i.db, %i.cl
  store i32 %i.dc, ptr %i.a, align 8
  %i.dd = tail call fastcc i32 @r_mark_sU(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.ai, label %.thread444

.thread444:                                       ; preds = %bb.ab, %r_mark_lArI.exit.thread
  %i.de = load i32, ptr %i.a, align 8
  store i32 %i.de, ptr %i.cg, align 4
  %i.df = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.ac, label %.thread418

bb.ac:                                            ; preds = %.thread444
  %i.dh = load i32, ptr %i.f, align 4
  %i.di = load i32, ptr %i.a, align 8             ; 2 uses
  %i.dj = sub i32 %i.dh, %i.di                    ; 2 uses
  store i32 %i.di, ptr %i.c, align 8
  %i.dk = tail call fastcc i32 @r_mark_lAr(ptr noundef nonnull %0)
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %i.f, align 4
  %i.dn = sub i32 %i.dm, %i.dj
  br label %.thread516.sink.split

bb.ae:                                            ; preds = %bb.ac
  %i.do = load i32, ptr %i.a, align 8
  store i32 %i.do, ptr %i.cg, align 4
  %i.dp = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %bb.af, label %.thread418

bb.af:                                            ; preds = %bb.ae
  %i.dr = tail call fastcc i32 @r_stem_suffix_chain_before_ki(ptr noundef nonnull %0) ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = load i32, ptr %i.f, align 4
  %i.du = sub i32 %i.dt, %i.dj
  br label %.thread516.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.dv = icmp slt i32 %i.dr, 0
  br i1 %i.dv, label %.thread418, label %.thread516

bb.ai:                                            ; preds = %bb.ab
  %i.dw = load i32, ptr %i.f, align 4
  %i.dx = sub i32 %i.dw, %i.cl
  store i32 %i.dx, ptr %i.a, align 8
  %i.dy = tail call fastcc i32 @r_stem_suffix_chain_before_ki(ptr noundef nonnull %0) ; 3 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.thread461, label %bb.aj

.thread461:                                       ; preds = %bb.ai
  %i.ea = load i32, ptr %i.f, align 4
  %i.eb = add i32 %.neg, %i.ea
  br label %.thread516.sink.split

bb.aj:                                            ; preds = %bb.ai
  %1 = icmp slt i32 %i.dy, 0
  br i1 %1, label %.thread418, label %.thread516

r_mark_nUn.exit.thread:                           ; preds = %bb.w, %bb.v, %bb.u, %r_mark_DA.exit.thread, %r_mark_nUn.exit
  %i.ec = load i32, ptr %i.f, align 4
  %i.ed = sub i32 %i.ec, %i.i
  store i32 %i.ed, ptr %i.a, align 8
  %i.ee = tail call fastcc i32 @r_check_vowel_harmony(ptr noundef nonnull %0)
  %.not.not.not.i387 = icmp eq i32 %i.ee, 0
  br i1 %.not.not.not.i387, label %.thread418, label %bb.ak

bb.ak:                                            ; preds = %r_mark_nUn.exit.thread
  %i.ef = load i32, ptr %i.a, align 8             ; 2 uses
  %i.eg = add i32 %i.ef, -2
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %.not.i388 = icmp sgt i32 %i.eg, %i.ei
  br i1 %.not.i388, label %bb.al, label %.thread418

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %0, align 8
  %i.ek = add i32 %i.ef, -1
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1
  switch i8 %i.en, label %.thread418 [
    i8 97, label %r_mark_ndA.exit
    i8 101, label %r_mark_ndA.exit
  ]

r_mark_ndA.exit:                                  ; preds = %bb.al, %bb.al
  %i.eo = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_7, i32 noundef 2, ptr noundef null) #2
  %.not522 = icmp eq i32 %i.eo, 0
  br i1 %.not522, label %.thread418, label %bb.am

bb.am:                                            ; preds = %r_mark_ndA.exit
  %i.ep = load i32, ptr %i.f, align 4             ; 3 uses
  %i.eq = load i32, ptr %i.a, align 8             ; 3 uses
  %i.er = sub i32 %i.ep, %i.eq                    ; 2 uses
  %i.es = add i32 %i.eq, -3
  %i.et = load i32, ptr %i.eh, align 8
  %.not.i390 = icmp sgt i32 %i.es, %i.et
  br i1 %.not.i390, label %bb.an, label %r_mark_lArI.exit392.thread

bb.an:                                            ; preds = %bb.am
  %i.eu = load ptr, ptr %0, align 8
  %i.ev = add i32 %i.eq, -1
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1
  switch i8 %i.ey, label %r_mark_lArI.exit392.thread [
    i8 105, label %r_mark_lArI.exit392
    i8 -79, label %r_mark_lArI.exit392
  ]

r_mark_lArI.exit392:                              ; preds = %bb.an, %bb.an
  %i.ez = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 2, ptr noundef null) #2
  %.not523 = icmp eq i32 %i.ez, 0
  br i1 %.not523, label %r_mark_lArI.exit392.r_mark_lArI.exit392.thread_crit_edge, label %bb.ao

r_mark_lArI.exit392.r_mark_lArI.exit392.thread_crit_edge: ; preds = %r_mark_lArI.exit392
  %.pre526 = load i32, ptr %i.f, align 4
  br label %r_mark_lArI.exit392.thread

bb.ao:                                            ; preds = %r_mark_lArI.exit392
  %i.fa = load i32, ptr %i.a, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.fa, ptr %i.fb, align 4
  %i.fc = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  br i1 %i.fd, label %.thread516, label %.thread418

r_mark_lArI.exit392.thread:                       ; preds = %r_mark_lArI.exit392.r_mark_lArI.exit392.thread_crit_edge, %bb.am, %bb.an
  %i.fe = phi i32 [ %.pre526, %r_mark_lArI.exit392.r_mark_lArI.exit392.thread_crit_edge ], [ %i.ep, %bb.am ], [ %i.ep, %bb.an ]
  %i.ff = sub i32 %i.fe, %i.er
  store i32 %i.ff, ptr %i.a, align 8
  %i.fg = tail call fastcc i32 @r_mark_sU(ptr noundef nonnull %0)
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %r_mark_lArI.exit392.thread
  %i.fi = load i32, ptr %i.a, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %i.fi, ptr %i.fj, align 4
  %i.fk = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %bb.aq, label %.thread418

bb.aq:                                            ; preds = %bb.ap
  %i.fm = load i32, ptr %i.f, align 4
  %i.fn = load i32, ptr %i.a, align 8             ; 2 uses
  %i.fo = sub i32 %i.fm, %i.fn                    ; 2 uses
  store i32 %i.fn, ptr %i.c, align 8
  %i.fp = tail call fastcc i32 @r_mark_lAr(ptr noundef nonnull %0)
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fr = load i32, ptr %i.f, align 4
  %i.fs = sub i32 %i.fr, %i.fo
  br label %.thread516.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.ft = load i32, ptr %i.a, align 8
  store i32 %i.ft, ptr %i.fj, align 4
  %i.fu = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, -1
  br i1 %i.fv, label %bb.at, label %.thread418

bb.at:                                            ; preds = %bb.as
  %i.fw = tail call fastcc i32 @r_stem_suffix_chain_before_ki(ptr noundef nonnull %0) ; 3 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fy = load i32, ptr %i.f, align 4
  %i.fz = sub i32 %i.fy, %i.fo
  br label %.thread516.sink.split

bb.av:                                            ; preds = %bb.at
  %i.ga = icmp slt i32 %i.fw, 0
  br i1 %i.ga, label %.thread418, label %.thread516

bb.aw:                                            ; preds = %r_mark_lArI.exit392.thread
  %i.gb = load i32, ptr %i.f, align 4
  %i.gc = sub i32 %i.gb, %i.er
  store i32 %i.gc, ptr %i.a, align 8
  %i.gd = tail call fastcc i32 @r_stem_suffix_chain_before_ki(ptr noundef nonnull %0) ; 2 uses
  %2 = icmp slt i32 %i.gd, 1
  br i1 %2, label %.thread418, label %.thread516

.thread516.sink.split:                            ; preds = %bb.ar, %bb.au, %bb.ag, %bb.ad, %.thread461, %bb.s, %bb.k, %bb.m, %bb.p
  %.sink = phi i32 [ %i.bi, %bb.p ], [ %i.ay, %bb.m ], [ %i.ar, %bb.k ], [ %i.bp, %bb.s ], [ %i.eb, %.thread461 ], [ %i.dn, %bb.ad ], [ %i.du, %bb.ag ], [ %i.fz, %bb.au ], [ %i.fs, %bb.ar ]
  store i32 %.sink, ptr %i.a, align 8
  br label %.thread516

.thread516:                                       ; preds = %.thread516.sink.split, %bb.aj, %bb.aw, %bb.l, %bb.t, %bb.ah, %bb.aa, %bb.av, %bb.ao
  br label %.thread418

.thread418:                                       ; preds = %bb.aw, %bb.as, %bb.av, %bb.ap, %bb.ao, %bb.ak, %bb.al, %r_mark_nUn.exit.thread, %bb.aj, %.thread516, %r_mark_ndA.exit, %bb.x, %bb.e, %bb.t, %bb.l, %bb.q, %bb.i, %bb.n, %bb.aa, %bb.ah, %bb.ae, %.thread444, %bb.a
  %.42 = phi i32 [ %i.d, %bb.a ], [ 1, %.thread516 ], [ 0, %r_mark_ndA.exit ], [ 0, %bb.ak ], [ %i.v, %bb.e ], [ %i.dy, %bb.aj ], [ %i.cv, %bb.aa ], [ %i.ch, %bb.x ], [ %i.ao, %bb.l ], [ %i.ba, %bb.n ], [ %i.bm, %bb.t ], [ %i.bk, %bb.q ], [ %i.ak, %bb.i ], [ %i.df, %.thread444 ], [ %i.dr, %bb.ah ], [ %i.dp, %bb.ae ], [ 0, %r_mark_nUn.exit.thread ], [ 0, %bb.al ], [ %i.fc, %bb.ao ], [ %i.fu, %bb.as ], [ %i.fw, %bb.av ], [ %i.fk, %bb.ap ], [ %i.gd, %bb.aw ]
  ret i32 %.42
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @r_mark_lArI(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add i32 %i.b, -3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp sgt i32 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = add i32 %i.b, -1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.d [
    i8 105, label %bb.c
    i8 -79, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 2, ptr noundef null) #2
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @r_mark_possessives(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp sgt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %r_mark_suffix_with_optional_U_vowel.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %.mask = and i32 %i.j, 224
  %.not9 = icmp eq i32 %.mask, 96
  br i1 %.not9, label %bb.c, label %r_mark_suffix_with_optional_U_vowel.exit

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.j, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, 67133440
  %.not10 = icmp eq i32 %i.m, 0
  br i1 %.not10, label %r_mark_suffix_with_optional_U_vowel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_0, i32 noundef 10, ptr noundef null) #2
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %r_mark_suffix_with_optional_U_vowel.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %i.a, align 8
  %.neg44.i = sub i32 %i.q, %i.p                  ; 3 uses
  %i.r = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_U, i32 noundef 105, i32 noundef 305, i32 noundef 0) #2
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.o, align 4
  %i.t = load i32, ptr %i.a, align 8
  %i.u = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 305, i32 noundef 0) #2
  %.not43.i = icmp eq i32 %i.u, 0
  br i1 %.not43.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %.neg.i = sub i32 %i.t, %i.s
  %i.v = load i32, ptr %i.o, align 4
  %i.w = add i32 %.neg.i, %i.v
  br label %.critedge49.sink.split.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load i32, ptr %i.o, align 4
  %i.y = add i32 %i.x, %.neg44.i
  store i32 %i.y, ptr %i.a, align 8
  %i.z = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_U, i32 noundef 105, i32 noundef 305, i32 noundef 0) #2
  %.not45.not.i = icmp eq i32 %i.z, 0
  br i1 %.not45.not.i, label %r_mark_suffix_with_optional_U_vowel.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.o, align 4
  %i.ab = add i32 %i.aa, %.neg44.i                ; 2 uses
  store i32 %i.ab, ptr %i.a, align 8
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = load i32, ptr %i.c, align 8
  %i.ae = tail call i32 @skip_b_utf8(ptr noundef %i.ac, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef 1) #2 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.i, label %r_mark_suffix_with_optional_U_vowel.exit

bb.i:                                             ; preds = %bb.h
  store i32 %i.ae, ptr %i.a, align 8
  %i.ag = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 305, i32 noundef 0) #2
  %.not46.i = icmp eq i32 %i.ag, 0
  br i1 %.not46.i, label %bb.j, label %r_mark_suffix_with_optional_U_vowel.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %i.o, align 4
  %i.ai = add i32 %i.ah, %.neg44.i
  br label %.critedge49.sink.split.i

.critedge49.sink.split.i:                         ; preds = %bb.j, %.thread.i
  %.sink.i = phi i32 [ %i.ai, %bb.j ], [ %i.w, %.thread.i ]
  store i32 %.sink.i, ptr %i.a, align 8
  br label %r_mark_suffix_with_optional_U_vowel.exit

r_mark_suffix_with_optional_U_vowel.exit:         ; preds = %.critedge49.sink.split.i, %bb.i, %bb.h, %bb.g, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 1, %.critedge49.sink.split.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @r_mark_sU(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @r_check_vowel_harmony(ptr noundef %0)
  %.not.not.not = icmp eq i32 %i.a, 0
  br i1 %.not.not.not, label %r_mark_suffix_with_optional_s_consonant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @in_grouping_b_U(ptr noundef %0, ptr noundef nonnull @g_U, i32 noundef 105, i32 noundef 305, i32 noundef 0) #2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %r_mark_suffix_with_optional_s_consonant.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %.neg55.i = sub i32 %i.f, %i.d                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp sgt i32 %i.f, %i.h
  %.pre66.pre67.i = load ptr, ptr %0, align 8     ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.f, -1                     ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %.pre66.pre67.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %.not53.i = icmp eq i8 %i.l, 115
  br i1 %.not53.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %i.e, align 8
  %i.m = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_vowel, i32 noundef 97, i32 noundef 305, i32 noundef 0) #2
  %.not54.i = icmp eq i32 %i.m, 0
  %.pre.i = load i32, ptr %i.c, align 4           ; 2 uses
  br i1 %.not54.i, label %.thread.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre65.i = load i32, ptr %i.g, align 8
  %.pre66.pre.i = load ptr, ptr %0, align 8
  br label %bb.f

.thread.i:                                        ; preds = %bb.e
  %.neg.i = sub i32 %i.i, %i.d
  %i.n = add i32 %.neg.i, %.pre.i
  br label %.critedge61.sink.split.i

bb.f:                                             ; preds = %._crit_edge.i, %bb.d, %bb.c
  %.pre66.i = phi ptr [ %.pre66.pre.i, %._crit_edge.i ], [ %.pre66.pre67.i, %bb.c ], [ %.pre66.pre67.i, %bb.d ] ; 2 uses
  %i.o = phi i32 [ %.pre65.i, %._crit_edge.i ], [ %i.h, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.p = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  %i.q = add i32 %i.p, %.neg55.i                  ; 4 uses
  store i32 %i.q, ptr %i.e, align 8
  %.not56.i = icmp sgt i32 %i.q, %i.o
  br i1 %.not56.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %.pre66.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %.not57.i = icmp eq i8 %i.u, 115
  br i1 %.not57.i, label %.critedge61.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call i32 @skip_b_utf8(ptr noundef %.pre66.i, i32 noundef %i.q, i32 noundef %i.o, i32 noundef 1) #2 ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.i, label %r_mark_suffix_with_optional_s_consonant.exit
end_hunk_0
