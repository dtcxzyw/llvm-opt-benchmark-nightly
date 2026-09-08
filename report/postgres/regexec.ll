Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/regexec?download=true
inline.NumInlined: 31
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@longest:bb.a
  store i32 1, ptr %4, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dq = load ptr, ptr %i.at, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = lshr i32 %i.dt, 1
  %.lobit = and i32 %i.du, 1
  %i.dv = xor i32 %.lobit, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = tail call fastcc ptr @miss(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.0133.lcssa, i16 noundef signext %i.dy, ptr noundef %.0135.lcssa, ptr noundef %2) ; 3 uses
  %i.ea = load i32, ptr %i.dl, align 8
  %.not161 = icmp eq i32 %i.ea, 0
  br i1 %.not161, label %bb.al, label %bb.av

bb.al:                                            ; preds = %bb.ak
  %.not162 = icmp eq ptr %i.dz, null
  br i1 %.not162, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = and i32 %i.ec, 2
  %.not163 = icmp eq i32 %i.ed, 0
  br i1 %.not163, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store ptr %.0135.lcssa, ptr %i.ee, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.an, %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eg = load ptr, ptr %i.ef, align 8            ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ei = load i32, ptr %i.eh, align 4            ; 5 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph181.preheader, label %._crit_edge182

.lr.ph181.preheader:                              ; preds = %.critedge
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.el = load ptr, ptr %i.ek, align 8            ; 4 uses
  %xtraiter = and i32 %i.ei, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph181.prol.loopexit, label %.lr.ph181.prol

.lr.ph181.prol:                                   ; preds = %.lr.ph181.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = and i32 %i.en, 2
  %.not165.prol = icmp eq i32 %i.eo, 0
  br i1 %.not165.prol, label %.lr.ph181.prol.loopexit.unr-lcssa, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph181.prol
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8            ; 3 uses
  %.not166.prol = icmp eq ptr %i.eg, %i.eq
  br i1 %.not166.prol, label %.lr.ph181.prol.loopexit.unr-lcssa, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = icmp eq ptr %i.eg, null
  %i.es = icmp ult ptr %i.eg, %i.eq
  %or.cond169.prol = or i1 %i.er, %i.es
  %spec.select171.prol = select i1 %or.cond169.prol, ptr %i.eq, ptr %i.eg
  br label %.lr.ph181.prol.loopexit.unr-lcssa

.lr.ph181.prol.loopexit.unr-lcssa:                ; preds = %bb.ap, %bb.ao, %.lr.ph181.prol
  %.1.prol = phi ptr [ %i.eg, %.lr.ph181.prol ], [ %spec.select171.prol, %bb.ap ], [ %i.eg, %bb.ao ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.eu = add nsw i32 %i.ei, -1
  br label %.lr.ph181.prol.loopexit

.lr.ph181.prol.loopexit:                          ; preds = %.lr.ph181.prol.loopexit.unr-lcssa, %.lr.ph181.preheader
  %.0180.unr = phi i32 [ %i.ei, %.lr.ph181.preheader ], [ %i.eu, %.lr.ph181.prol.loopexit.unr-lcssa ]
  %.0130179.unr = phi ptr [ %i.eg, %.lr.ph181.preheader ], [ %.1.prol, %.lr.ph181.prol.loopexit.unr-lcssa ]
  %.1132178.unr = phi ptr [ %i.el, %.lr.ph181.preheader ], [ %i.et, %.lr.ph181.prol.loopexit.unr-lcssa ]
  %.1.lcssa.unr = phi ptr [ poison, %.lr.ph181.preheader ], [ %.1.prol, %.lr.ph181.prol.loopexit.unr-lcssa ]
  %i.ev = icmp eq i32 %i.ei, 1
  br i1 %i.ev, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.prol.loopexit, %bb.au
  %.0180 = phi i32 [ %i.fl, %bb.au ], [ %.0180.unr, %.lr.ph181.prol.loopexit ] ; 2 uses
  %.0130179 = phi ptr [ %.1.1, %bb.au ], [ %.0130179.unr, %.lr.ph181.prol.loopexit ] ; 6 uses
  %.1132178 = phi ptr [ %i.fk, %bb.au ], [ %.1132178.unr, %.lr.ph181.prol.loopexit ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1132178, i64 12
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = and i32 %i.ex, 2
  %.not165 = icmp eq i32 %i.ey, 0
  br i1 %.not165, label %.lr.ph181.1, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph181
  %i.ez = getelementptr inbounds nuw i8, ptr %.1132178, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8            ; 3 uses
  %.not166 = icmp eq ptr %.0130179, %i.fa
  br i1 %.not166, label %.lr.ph181.1, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fb = icmp eq ptr %.0130179, null
  %i.fc = icmp ult ptr %.0130179, %i.fa
  %or.cond169 = or i1 %i.fb, %i.fc
  %spec.select171 = select i1 %or.cond169, ptr %i.fa, ptr %.0130179
  br label %.lr.ph181.1

.lr.ph181.1:                                      ; preds = %bb.ar, %.lr.ph181, %bb.aq
  %.1 = phi ptr [ %.0130179, %.lr.ph181 ], [ %spec.select171, %bb.ar ], [ %.0130179, %bb.aq ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.1132178, i64 68
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = and i32 %i.fe, 2
  %.not165.1 = icmp eq i32 %i.ff, 0
  br i1 %.not165.1, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.lr.ph181.1
  %i.fg = getelementptr inbounds nuw i8, ptr %.1132178, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8            ; 3 uses
  %.not166.1 = icmp eq ptr %.1, %i.fh
  br i1 %.not166.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fi = icmp eq ptr %.1, null
  %i.fj = icmp ult ptr %.1, %i.fh
  %or.cond169.1 = or i1 %i.fi, %i.fj
  %spec.select171.1 = select i1 %or.cond169.1, ptr %i.fh, ptr %.1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.lr.ph181.1
  %.1.1 = phi ptr [ %.1, %.lr.ph181.1 ], [ %spec.select171.1, %bb.at ], [ %.1, %bb.as ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.1132178, i64 112
  %i.fl = add nsw i32 %.0180, -2
  %i.fm = icmp sgt i32 %.0180, 2
  br i1 %i.fm, label %.lr.ph181, label %._crit_edge182, !llvm.loop !26

._crit_edge182:                                   ; preds = %.lr.ph181.prol.loopexit, %bb.au, %.critedge
  %.0130.lcssa = phi ptr [ %i.eg, %.critedge ], [ %.1.lcssa.unr, %.lr.ph181.prol.loopexit ], [ %.1.1, %bb.au ] ; 2 uses
  %.not164 = icmp eq ptr %.0130.lcssa, null
  %i.fn = getelementptr inbounds i8, ptr %.0130.lcssa, i64 -4
  %spec.select170 = select i1 %.not164, ptr null, ptr %i.fn
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge182, %bb.s, %bb.am, %bb.ak, %._crit_edge, %bb.z, %bb.t, %bb.l, %bb.n, %bb.o, %dfa_backref.exit, %bb.j
  %.1137 = phi ptr [ %.0135.lcssa, %bb.am ], [ %.060.i, %dfa_backref.exit ], [ %3, %bb.o ], [ null, %bb.t ], [ null, %bb.z ], [ null, %._crit_edge ], [ null, %bb.ak ], [ %3, %bb.n ], [ %.060.i, %bb.j ], [ %spec.select170, %._crit_edge182 ], [ null, %bb.l ], [ %spec.select, %bb.s ]
  ret ptr %.1137
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cdissect(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @ProcessInterrupts() #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f() #9
  %.not41 = icmp eq i32 %i.g, 0
  br i1 %.not41, label %bb.d, label %subset.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 8
  switch i8 %i.h, label %subset.exit [
    i8 61, label %crevcondissect.exit
    i8 98, label %bb.e
    i8 46, label %bb.l
    i8 124, label %bb.as
    i8 42, label %bb.bc
    i8 40, label %bb.cq
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i16, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.n = load i16, ptr %i.m, align 2              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 4 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %cbrdissect.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.y, %i.s                       ; 4 uses
  %i.aa = icmp eq i64 %i.y, %i.s
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp ne ptr %2, %3
  %.not49.i = icmp sgt i16 %i.l, %i.n
  %or.cond50.i = select i1 %i.ab, i1 true, i1 %.not49.i
  br label %cbrdissect.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp eq ptr %2, %3
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp ne i16 %i.l, 0
  br label %cbrdissect.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %3 to i64
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.z
  %i.aj = udiv exact i64 %i.ah, %i.z              ; 3 uses
  %.not.i = icmp ne i64 %i.ai, 0
  %i.ak = sext i16 %i.l to i64
  %i.al = icmp ult i64 %i.aj, %i.ak
  %or.cond313 = select i1 %.not.i, i1 true, i1 %i.al
  br i1 %or.cond313, label %cbrdissect.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = sext i16 %i.n to i64
  %i.an = icmp ugt i64 %i.aj, %i.am
  %i.ao = icmp ne i16 %i.n, 256
  %or.cond.i = and i1 %i.ao, %i.an
  br i1 %or.cond.i, label %cbrdissect.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i
  %.in.i = phi i64 [ %i.au, %.lr.ph.i ], [ %i.aj, %.preheader.i ]
  %.052.i = phi ptr [ %i.av, %.lr.ph.i ], [ %2, %.preheader.i ] ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 576
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i32 %i.as(ptr noundef %i.w, ptr noundef %.052.i, i64 noundef %i.z) #9, !inline_history !27
  %.not48.not.i.not = icmp ne i32 %i.at, 0        ; 2 uses
  %i.au = add i64 %.in.i, -1                      ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.052.i, i64 %i.z
  %.not47.i = icmp eq i64 %i.au, 0
  %or.cond269 = select i1 %.not48.not.i.not, i1 true, i1 %.not47.i
  br i1 %or.cond269, label %cbrdissect.exit, label %.lr.ph.i, !llvm.loop !28

cbrdissect.exit:                                  ; preds = %.lr.ph.i, %bb.e, %bb.g, %bb.i, %bb.j, %bb.k
  %.041.shrunk.i = phi i1 [ true, %bb.j ], [ true, %bb.e ], [ true, %bb.k ], [ %i.ad, %bb.i ], [ %or.cond50.i, %bb.g ], [ %.not48.not.i.not, %.lr.ph.i ]
  %.041.i = zext i1 %.041.shrunk.i to i32
  br label %crevcondissect.exit

bb.l:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 17 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, 2
  %.not43 = icmp eq i8 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %.not43, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.bk, label %bb.n, label %getsubdfa.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = tail call fastcc ptr @newdfa(ptr noundef nonnull %0, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, ptr noundef null) ; 6 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %getsubdfa.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = load i8, ptr %i.ax, align 8
  %i.bs = icmp eq i8 %i.br, 98
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 108
  store i16 %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 18
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 110
  store i16 %i.ca, ptr %i.cb, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cc = load ptr, ptr %i.bd, align 8
  %i.cd = load i32, ptr %i.bf, align 4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.bp, ptr %i.cf, align 8
  br label %getsubdfa.exit

getsubdfa.exit:                                   ; preds = %bb.m, %bb.n, %bb.q
  %.019.i = phi ptr [ null, %bb.n ], [ %i.bp, %bb.q ], [ %i.bj, %bb.m ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ch = load i32, ptr %i.cg, align 8            ; 2 uses
  %.not.i44 = icmp eq i32 %i.ch, 0
  br i1 %.not.i44, label %bb.r, label %subset.exit

bb.r:                                             ; preds = %getsubdfa.exit
  %i.ci = tail call fastcc ptr @getsubdfa(ptr noundef nonnull %0, ptr noundef %i.bc), !inline_history !29
  %i.cj = load i32, ptr %i.cg, align 8            ; 2 uses
  %.not61.i = icmp eq i32 %i.cj, 0
  br i1 %.not61.i, label %bb.s, label %subset.exit

bb.s:                                             ; preds = %bb.r
  %i.ck = tail call fastcc ptr @shortest(ptr noundef nonnull %0, ptr noundef %.019.i, ptr noundef %2, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null), !inline_history !29 ; 2 uses
  %i.cl = load i32, ptr %i.cg, align 8            ; 2 uses
  %.not62.i = icmp eq i32 %i.cl, 0
  br i1 %.not62.i, label %bb.t, label %subset.exit

bb.t:                                             ; preds = %bb.s
  %i.cm = icmp eq ptr %i.ck, null
  br i1 %i.cm, label %subset.exit, label %.preheader79

.preheader79:                                     ; preds = %bb.t, %bb.ab
  %.049.i = phi ptr [ %i.cw, %bb.ab ], [ %i.ck, %bb.t ] ; 5 uses
  %i.cn = tail call fastcc ptr @longest(ptr noundef nonnull %0, ptr noundef %i.ci, ptr noundef nonnull %.049.i, ptr noundef %3, ptr noundef null), !inline_history !29
  %i.co = icmp eq ptr %i.cn, %3
  br i1 %i.co, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.preheader79
  %i.cp = tail call fastcc i32 @cdissect(ptr noundef nonnull %0, ptr noundef %i.ax, ptr noundef %2, ptr noundef nonnull %.049.i), !inline_history !29 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cr = tail call fastcc i32 @cdissect(ptr noundef nonnull %0, ptr noundef %i.bc, ptr noundef nonnull %.049.i, ptr noundef %3), !inline_history !29 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %crevcondissect.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @zaptreesubs(ptr noundef nonnull %0, ptr noundef %i.ax), !inline_history !29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0.i = phi i32 [ %i.cr, %bb.w ], [ %i.cp, %bb.u ] ; 2 uses
  %.not63.i = icmp eq i32 %.0.i, 1
  br i1 %.not63.i, label %bb.y, label %subset.exit

bb.y:                                             ; preds = %bb.x, %.preheader79
  %i.ct = load i32, ptr %i.cg, align 8            ; 2 uses
  %.not64.i = icmp eq i32 %i.ct, 0
  br i1 %.not64.i, label %bb.z, label %subset.exit

bb.z:                                             ; preds = %bb.y
  %i.cu = icmp eq ptr %.049.i, %3
  br i1 %i.cu, label %subset.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %.049.i, i64 4
  %i.cw = tail call fastcc ptr @shortest(ptr noundef nonnull %0, ptr noundef %.019.i, ptr noundef %2, ptr noundef nonnull %i.cv, ptr noundef %3, ptr noundef null, ptr noundef null), !inline_history !29 ; 2 uses
  %i.cx = load i32, ptr %i.cg, align 8            ; 2 uses
  %.not65.i = icmp eq i32 %i.cx, 0
  br i1 %.not65.i, label %bb.ab, label %subset.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cy = icmp eq ptr %i.cw, null
  br i1 %i.cy, label %subset.exit, label %.preheader79

bb.ac:                                            ; preds = %bb.l
  br i1 %i.bk, label %bb.ad, label %getsubdfa.exit67

bb.ad:                                            ; preds = %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  %i.dd = tail call fastcc ptr @newdfa(ptr noundef nonnull %0, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.dc, ptr noundef null) ; 6 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %getsubdfa.exit67, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i8, ptr %i.ax, align 8
  %i.dg = icmp eq i8 %i.df, 98
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  store i32 %i.di, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.dl = load i16, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 108
  store i16 %i.dl, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ax, i64 18
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 110
  store i16 %i.do, ptr %i.dp, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dq = load ptr, ptr %i.bd, align 8
  %i.dr = load i32, ptr %i.bf, align 4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ds
  store ptr %i.dd, ptr %i.dt, align 8
  br label %getsubdfa.exit67

getsubdfa.exit67:                                 ; preds = %bb.ac, %bb.ad, %bb.ag
  %.019.i66 = phi ptr [ null, %bb.ad ], [ %i.dd, %bb.ag ], [ %i.bj, %bb.ac ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %.not.i45 = icmp eq i32 %i.dv, 0
  br i1 %.not.i45, label %bb.ah, label %subset.exit

bb.ah:                                            ; preds = %getsubdfa.exit67
  %i.dw = tail call fastcc ptr @getsubdfa(ptr noundef nonnull %0, ptr noundef %i.bc), !inline_history !30
  %i.dx = load i32, ptr %i.du, align 8            ; 2 uses
  %.not60.i = icmp eq i32 %i.dx, 0
  br i1 %.not60.i, label %bb.ai, label %subset.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dy = tail call fastcc ptr @longest(ptr noundef nonnull %0, ptr noundef %.019.i66, ptr noundef %2, ptr noundef %3, ptr noundef null), !inline_history !30 ; 2 uses
  %i.dz = load i32, ptr %i.du, align 8            ; 2 uses
  %.not61.i46 = icmp eq i32 %i.dz, 0
  br i1 %.not61.i46, label %bb.aj, label %subset.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ea = icmp eq ptr %i.dy, null
  br i1 %i.ea, label %subset.exit, label %.preheader

.preheader:                                       ; preds = %bb.aj, %bb.ar
  %.047.i = phi ptr [ %i.ek, %bb.ar ], [ %i.dy, %bb.aj ] ; 5 uses
  %i.eb = tail call fastcc ptr @longest(ptr noundef nonnull %0, ptr noundef %i.dw, ptr noundef nonnull %.047.i, ptr noundef %3, ptr noundef null), !inline_history !30
  %i.ec = icmp eq ptr %i.eb, %3
  br i1 %i.ec, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %.preheader
end_hunk_0
