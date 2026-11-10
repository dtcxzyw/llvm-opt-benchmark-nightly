Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_c_lexer?download=true
inline.NumInlined: 40
begin_hunk_0_@stb_c_lexer_get_token:bb.a

stb__clex_iswhite.exit.thread:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  switch i8 %i.q, label %.thread209.thread [
    i8 47, label %.preheader
    i8 42, label %bb.e
  ]

.preheader:                                       ; preds = %bb.c
  %.not195270 = icmp eq ptr %i.m, %i.j
  br i1 %.not195270, label %.backedge222, label %.lr.ph271

.lr.ph271:                                        ; preds = %.preheader, %bb.d
  %i.r = phi ptr [ %i.t, %bb.d ], [ %i.m, %.preheader ] ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  switch i8 %i.s, label %bb.d [
    i8 13, label %.backedge222
    i8 10, label %.backedge222
  ]

bb.d:                                             ; preds = %.lr.ph271
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not195 = icmp eq ptr %i.t, %i.j
  br i1 %.not195, label %.backedge222, label %.lr.ph271, !llvm.loop !33

.backedge222:                                     ; preds = %.lr.ph249, %.lr.ph249, %bb.h, %.lr.ph271, %.lr.ph271, %bb.d, %.preheader221, %.preheader, %bb.g
  %.lcssa269279 = phi ptr [ %i.ad, %bb.g ], [ %scevgep323, %bb.d ], [ %i.m, %.preheader ], [ %i.m, %.preheader221 ], [ %i.r, %.lr.ph271 ], [ %i.r, %.lr.ph271 ], [ %i.ae, %.lr.ph249 ], [ %i.ae, %.lr.ph249 ], [ %scevgep323, %bb.h ] ; 2 uses
  %.not243 = icmp eq ptr %.lcssa269279, %i.j
  br i1 %.not243, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  %.not191257 = icmp eq ptr %i.u, %i.j
  br i1 %.not191257, label %.thread210, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.e, %.critedge7
  %storemerge190258 = phi ptr [ %i.y, %.critedge7 ], [ %i.u, %bb.e ] ; 4 uses
  %i.v = load i8, ptr %storemerge190258, align 1, !tbaa !19
  %.not192 = icmp eq i8 %i.v, 42
  br i1 %.not192, label %bb.f, label %.critedge7

bb.f:                                             ; preds = %.lr.ph260
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge190258, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
  %.not193 = icmp eq i8 %i.x, 47
  br i1 %.not193, label %bb.g, label %.critedge7

.critedge7:                                       ; preds = %.lr.ph260, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge190258, i64 1 ; 2 uses
  %.not191 = icmp eq ptr %i.y, %i.j
  br i1 %.not191, label %.thread210, label %.lr.ph260, !llvm.loop !34

.thread210:                                       ; preds = %bb.e, %.critedge7
  %storemerge190.lcssa255 = phi ptr [ %scevgep323, %.critedge7 ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %storemerge190.lcssa255, i64 -1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.aa, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !23
  store ptr %storemerge190.lcssa255, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge190258, i64 2
  br label %.backedge222

.preheader221:                                    ; preds = %bb.b
  %.not187248 = icmp eq ptr %i.m, %i.j
  br i1 %.not187248, label %.backedge222, label %.lr.ph249

.lr.ph249:                                        ; preds = %.preheader221, %bb.h
  %i.ae = phi ptr [ %i.ag, %bb.h ], [ %i.m, %.preheader221 ] ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19
  switch i8 %i.af, label %bb.h [
    i8 13, label %.backedge222
    i8 10, label %.backedge222
  ]

bb.h:                                             ; preds = %.lr.ph249
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %.not187 = icmp eq ptr %i.ag, %i.j
  br i1 %.not187, label %.backedge222, label %.lr.ph249, !llvm.loop !35

._crit_edge:                                      ; preds = %.backedge222, %stb__clex_iswhite.exit.thread, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 256, ptr %i.ah, align 8, !tbaa !21
  br label %stb__clex_parse_string.exit

.thread209.thread:                                ; preds = %bb.c, %bb.b
  store ptr %i.m, ptr %i.b, align 8
  %i.ai = load i8, ptr %i.m, align 1, !tbaa !19   ; 7 uses
  switch i8 %i.ai, label %bb.i [
    i8 43, label %bb.n
    i8 45, label %bb.r
    i8 38, label %bb.w
    i8 124, label %bb.aa
    i8 61, label %bb.ae
    i8 33, label %bb.ah
    i8 94, label %bb.ak
    i8 37, label %bb.an
    i8 42, label %bb.aq
    i8 47, label %bb.at
    i8 60, label %bb.aw
    i8 62, label %bb.bd
    i8 34, label %bb.bk
    i8 39, label %bb.br
    i8 48, label %bb.bx
    i8 49, label %bb.ca
    i8 50, label %bb.ca
    i8 51, label %bb.ca
    i8 52, label %bb.ca
    i8 53, label %bb.ca
    i8 54, label %bb.ca
    i8 55, label %bb.ca
    i8 56, label %bb.ca
    i8 57, label %bb.ca
  ]

bb.i:                                             ; preds = %.thread209.thread
  %i.aj = add i8 %i.ai, -97
  %or.cond = icmp ult i8 %i.aj, 26
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add i8 %i.ai, -65
  %or.cond198 = icmp ult i8 %i.ak, 26
  %i.al = icmp slt i8 %i.ai, 0
  %or.cond216 = or i1 %i.al, %or.cond198
  br i1 %or.cond216, label %bb.k, label %switch.early.test

switch.early.test:                                ; preds = %bb.j
  switch i8 %i.ai, label %bb.m [
    i8 95, label %bb.k
    i8 36, label %bb.k
  ]

bb.k:                                             ; preds = %switch.early.test, %switch.early.test, %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !18
  %.not186292 = icmp sgt i32 %i.aq, 1
  br i1 %.not186292, label %.lr.ph295, label %._crit_edge296

._crit_edge296:                                   ; preds = %.backedge, %bb.k
  %.0.lcssa = phi i64 [ 0, %bb.k ], [ %indvars.iv, %.backedge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.lcssa ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.as, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.at, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.av, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

.lr.ph295:                                        ; preds = %bb.k, %.backedge
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %.backedge ], [ 0, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ 1, %bb.k ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv330
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv330
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %.fr = freeze i8 %i.bb                          ; 4 uses
  %i.bc = and i8 %.fr, -33
  %i.bd = add i8 %i.bc, -65
  %or.cond219 = icmp ult i8 %i.bd, 26
  %i.be = add i8 %.fr, -48
  %or.cond203 = icmp ult i8 %i.be, 10
  %or.cond220 = or i1 %or.cond203, %or.cond219
  %i.bf = icmp slt i8 %.fr, 0
  %or.cond398 = or i1 %or.cond220, %i.bf
  br i1 %or.cond398, label %.backedge, label %switch.early.test299

switch.early.test299:                             ; preds = %.lr.ph295
  switch i8 %.fr, label %bb.l [
    i8 95, label %.backedge
    i8 36, label %.backedge
  ]

.backedge:                                        ; preds = %switch.early.test299, %switch.early.test299, %.lr.ph295
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !18
  %i.bh = sext i32 %i.bg to i64
  %.not186 = icmp slt i64 %indvars.iv.next, %i.bh
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1
  br i1 %.not186, label %.lr.ph295, label %._crit_edge296

bb.l:                                             ; preds = %switch.early.test299
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  store i8 0, ptr %i.bl, align 1, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.bj, ptr %i.bm, align 8, !tbaa !26
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 260, ptr %i.bo, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.bp, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !23
  store ptr %i.bi, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.m:                                             ; preds = %switch.early.test, %bb.be, %bb.ax, %bb.ab, %bb.x, %bb.s, %bb.o, %bb.bd, %bb.aw, %bb.at, %bb.au, %bb.aq, %bb.ar, %bb.an, %bb.ao, %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.aa, %bb.w, %bb.r, %bb.n
  %i.br = zext nneg i8 %i.ai to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.bt, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.bu, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.n:                                             ; preds = %.thread209.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  %.not185 = icmp eq ptr %i.bw, %i.j
  br i1 %.not185, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19
  switch i8 %i.bx, label %bb.m [
    i8 43, label %bb.p
    i8 61, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 272, ptr %i.by, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.bz, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bw, ptr %i.ca, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.cb, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.q:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 274, ptr %i.cc, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.cd, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bw, ptr %i.ce, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.r:                                             ; preds = %.thread209.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 5 uses
  %.not184 = icmp eq ptr %i.cg, %i.j
  br i1 %.not184, label %bb.m, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !19
  switch i8 %i.ch, label %bb.m [
    i8 45, label %bb.t
    i8 61, label %bb.u
    i8 62, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 273, ptr %i.ci, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.cj, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cg, ptr %i.ck, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.cl, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.u:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 275, ptr %i.cm, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.cn, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cg, ptr %i.co, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.cp, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.v:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 282, ptr %i.cq, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.cr, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cg, ptr %i.cs, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.ct, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.w:                                             ; preds = %.thread209.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  %.not183 = icmp eq ptr %i.cu, %i.j
  br i1 %.not183, label %bb.m, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  switch i8 %i.cv, label %bb.m [
    i8 38, label %bb.y
    i8 61, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 268, ptr %i.cw, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.cx, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cu, ptr %i.cy, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.cz, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.z:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 279, ptr %i.da, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.db, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cu, ptr %i.dc, align 8, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.dd, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.aa:                                            ; preds = %.thread209.thread
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  %.not182 = icmp eq ptr %i.de, %i.j
  br i1 %.not182, label %bb.m, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  switch i8 %i.df, label %bb.m [
    i8 124, label %bb.ac
    i8 61, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 269, ptr %i.dg, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.dh, align 8, !tbaa !22
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.de, ptr %i.di, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 280, ptr %i.dk, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.dl, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.de, ptr %i.dm, align 8, !tbaa !23
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.dn, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.ae:                                            ; preds = %.thread209.thread
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %.not181 = icmp eq ptr %i.do, %i.j
  br i1 %.not181, label %bb.m, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19
  %i.dq = icmp eq i8 %i.dp, 61
  br i1 %i.dq, label %bb.ag, label %bb.m

bb.ag:                                            ; preds = %bb.af
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 264, ptr %i.dr, align 8, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ds, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.do, ptr %i.dt, align 8, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.du, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

end_hunk_0
begin_hunk_1_@stb_c_lexer_get_token:bb.a
  switch i8 %i.ff, label %bb.m [
    i8 61, label %bb.ay
    i8 60, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 266, ptr %i.fg, align 8, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.fh, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.fe, ptr %i.fi, align 8, !tbaa !23
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.fj, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.az:                                            ; preds = %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 4 uses
  %.not175 = icmp eq ptr %i.fk, %i.j
  br i1 %.not175, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !19
  %i.fm = icmp eq i8 %i.fl, 61
  br i1 %i.fm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 284, ptr %i.fn, align 8, !tbaa !21
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.fo, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.fk, ptr %i.fp, align 8, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  store ptr %i.fq, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 270, ptr %i.fr, align 8, !tbaa !21
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.fs, align 8, !tbaa !22
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.fe, ptr %i.ft, align 8, !tbaa !23
  store ptr %i.fk, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bd:                                            ; preds = %.thread209.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  %.not172 = icmp eq ptr %i.fu, %i.j
  br i1 %.not172, label %bb.m, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !19
  switch i8 %i.fv, label %bb.m [
    i8 61, label %bb.bf
    i8 62, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 267, ptr %i.fw, align 8, !tbaa !21
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.fx, align 8, !tbaa !22
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.fu, ptr %i.fy, align 8, !tbaa !23
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.fz, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bg:                                            ; preds = %bb.be
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 4 uses
  %.not173 = icmp eq ptr %i.ga, %i.j
  br i1 %.not173, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !19
  %i.gc = icmp eq i8 %i.gb, 61
  br i1 %i.gc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 285, ptr %i.gd, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ge, align 8, !tbaa !22
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ga, ptr %i.gf, align 8, !tbaa !23
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  store ptr %i.gg, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 271, ptr %i.gh, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.gi, align 8, !tbaa !22
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.fu, ptr %i.gj, align 8, !tbaa !23
  store ptr %i.ga, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bk:                                            ; preds = %.thread209.thread
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !17 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !18
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %i.gm, i64 %i.gp
  %i.gr = load i8, ptr %i.gk, align 1, !tbaa !19  ; 2 uses
  %.not49.i = icmp eq i8 %i.gr, 34
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %bb.bq
  %i.gs = phi i8 [ %i.hj, %bb.bq ], [ %i.gr, %bb.bk ] ; 2 uses
  %.03451.i = phi ptr [ %i.hd, %bb.bq ], [ %i.gm, %bb.bk ] ; 2 uses
  %.03850.i = phi ptr [ %.240.i, %bb.bq ], [ %i.gk, %bb.bk ] ; 2 uses
  %i.gt = icmp eq i8 %i.gs, 92
  br i1 %i.gt, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.gu = call i32 @stb__clex_parse_char(ptr noundef nonnull %.03850.i, ptr noundef nonnull %i.a) ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, -1
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  br i1 %i.gv, label %.thread.i, label %bb.bm

.thread.i:                                        ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gx = trunc nuw i32 %i.gu to i8
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.gy, align 8, !tbaa !21
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.gz, align 8, !tbaa !22
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.gw, ptr %i.ha, align 8, !tbaa !23
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.hb, ptr %i.g, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %stb__clex_parse_string.exit

bb.bn:                                            ; preds = %.lr.ph.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.03850.i, i64 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.thread.i
  %.240.i = phi ptr [ %i.gw, %.thread.i ], [ %i.hc, %bb.bn ] ; 5 uses
  %.033.i = phi i8 [ %i.gx, %.thread.i ], [ %i.gs, %bb.bn ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.03451.i, i64 1 ; 3 uses
  %i.he = icmp ugt ptr %i.hd, %i.gq
  br i1 %i.he, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.hf, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.hg, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.240.i, ptr %i.hh, align 8, !tbaa !23
  %i.hi = getelementptr inbounds nuw i8, ptr %.240.i, i64 1
  store ptr %i.hi, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bq:                                            ; preds = %bb.bo
  store i8 %.033.i, ptr %.03451.i, align 1, !tbaa !19
  %i.hj = load i8, ptr %.240.i, align 1, !tbaa !19 ; 2 uses
  %.not.i = icmp eq i8 %i.hj, 34
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.bq, %bb.bk
  %.038.lcssa.i = phi ptr [ %i.gk, %bb.bk ], [ %.240.i, %bb.bq ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %i.gm, %bb.bk ], [ %i.hd, %bb.bq ] ; 2 uses
  store i8 0, ptr %.034.lcssa.i, align 1, !tbaa !19
  %i.hk = load ptr, ptr %i.gl, align 8, !tbaa !17 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !25
  %i.hm = ptrtoint ptr %.034.lcssa.i to i64
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.hp, ptr %i.hq, align 8, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 261, ptr %i.hr, align 8, !tbaa !21
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.hs, align 8, !tbaa !22
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.038.lcssa.i, ptr %i.ht, align 8, !tbaa !23
  %i.hu = getelementptr inbounds nuw i8, ptr %.038.lcssa.i, i64 1
  store ptr %i.hu, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.br:                                            ; preds = %.thread209.thread
  %i.hv = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.hw = call i32 @stb__clex_parse_char(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.b) ; 2 uses
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !37
  %i.hz = icmp slt i32 %i.hw, 0
  br i1 %i.hz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.ia, align 8, !tbaa !21
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ib, align 8, !tbaa !22
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.ic, align 8, !tbaa !23
  store ptr %i.hv, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bt:                                            ; preds = %bb.br
  %i.id = load ptr, ptr %i.b, align 8, !tbaa !24  ; 6 uses
  %i.ie = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ig = load i8, ptr %i.id, align 1, !tbaa !19
  %.not171 = icmp eq i8 %i.ig, 39
  br i1 %.not171, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 257, ptr %i.ih, align 8, !tbaa !21
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ii, align 8, !tbaa !22
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.id, ptr %i.ij, align 8, !tbaa !23
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store ptr %i.ik, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bw:                                            ; preds = %bb.bu
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 263, ptr %i.im, align 8, !tbaa !21
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.in, align 8, !tbaa !22
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.il, ptr %i.io, align 8, !tbaa !23
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  store ptr %i.ip, ptr %i.g, align 8, !tbaa !16
  br label %stb__clex_parse_string.exit

bb.bx:                                            ; preds = %.thread209.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not168 = icmp eq ptr %i.iq, %i.j
  br i1 %.not168, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !19
  switch i8 %i.ir, label %bb.ca [
    i8 120, label %bb.bz
    i8 88, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.is = call i64 @strtol(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, i32 noundef 16) #9
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.is, ptr %i.it, align 8, !tbaa !37
  %i.iu = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.iw = icmp eq ptr %i.iu, %i.iv                ; 3 uses
  %.sink335 = select i1 %i.iw, i64 257, i64 258
  %.lcssa311.lcssa.sink.idx = select i1 %i.iw, i64 -2, i64 0
  %.lcssa311.lcssa.sink = getelementptr inbounds i8, ptr %i.m, i64 %.lcssa311.lcssa.sink.idx
  %.pn = select i1 %i.iw, ptr %i.m, ptr %i.iu     ; 2 uses
  %.sink = getelementptr inbounds i8, ptr %.pn, i64 -1
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink335, ptr %i.ix, align 8, !tbaa !21
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.lcssa311.lcssa.sink, ptr %i.iy, align 8, !tbaa !22
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink, ptr %i.iz, align 8, !tbaa !23
  store ptr %.pn, ptr %i.g, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %stb__clex_parse_string.exit

bb.ca:                                            ; preds = %bb.by, %bb.bx, %.thread209.thread, %.thread209.thread, %.thread209.thread, %.thread209.thread, %.thread209.thread, %.thread209.thread, %.thread209.thread, %.thread209.thread, %.thread209.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr %i.m, ptr %i.d, align 8, !tbaa !24
  %.not169287 = icmp eq ptr %i.m, %i.j
  br i1 %.not169287, label %.critedge13.thread, label %.lr.ph290

.lr.ph290:                                        ; preds = %bb.ca, %bb.cb
  %storemerge288 = phi ptr [ %i.jc, %bb.cb ], [ %i.m, %bb.ca ] ; 2 uses
  %i.ja = load i8, ptr %storemerge288, align 1, !tbaa !19 ; 2 uses
  %i.jb = add i8 %i.ja, -48
  %or.cond205 = icmp ult i8 %i.jb, 10
  br i1 %or.cond205, label %bb.cb, label %.critedge13

bb.cb:                                            ; preds = %.lr.ph290
  %i.jc = getelementptr inbounds nuw i8, ptr %storemerge288, i64 1 ; 3 uses
  store ptr %i.jc, ptr %i.d, align 8, !tbaa !24
  %.not169 = icmp eq ptr %i.jc, %i.j
  br i1 %.not169, label %.critedge13.thread, label %.lr.ph290, !llvm.loop !36

.critedge13:                                      ; preds = %.lr.ph290
  switch i8 %i.ja, label %.critedge13.thread [
    i8 46, label %.critedge207
    i8 101, label %.critedge207
    i8 69, label %.critedge207
  ]

.critedge207:                                     ; preds = %.critedge13, %.critedge13, %.critedge13
  %i.jd = call double @strtod(ptr noundef %i.m, ptr noundef nonnull %i.d) #9
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.jd, ptr %i.je, align 8, !tbaa !38
  %i.jf = load ptr, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -1
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 259, ptr %i.jh, align 8, !tbaa !21
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ji, align 8, !tbaa !22
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !23
  store ptr %i.jf, ptr %i.g, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %stb__clex_parse_string.exit

.critedge13.thread:                               ; preds = %bb.cb, %bb.ca, %.critedge13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.jk = icmp eq i8 %i.ai, 48
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.jk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.critedge13.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store ptr %i.m, ptr %i.e, align 8, !tbaa !24
  %i.jp = call i64 @strtol(ptr noundef %i.m, ptr noundef nonnull %i.e, i32 noundef 8) #9
  store i64 %i.jp, ptr %i.jl, align 8, !tbaa !37
  %i.jq = load ptr, ptr %i.e, align 8, !tbaa !24  ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -1
  store i64 258, ptr %i.jm, align 8, !tbaa !21
  store ptr %i.m, ptr %i.jn, align 8, !tbaa !22
  store ptr %i.jr, ptr %i.jo, align 8, !tbaa !23
  store ptr %i.jq, ptr %i.g, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %stb__clex_parse_string.exit

bb.cd:                                            ; preds = %.critedge13.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr %i.m, ptr %i.f, align 8, !tbaa !24
  %i.js = call i64 @strtol(ptr noundef %i.m, ptr noundef nonnull %i.f, i32 noundef 10) #9
  store i64 %i.js, ptr %i.jl, align 8, !tbaa !37
  %i.jt = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -1
  store i64 258, ptr %i.jm, align 8, !tbaa !21
  store ptr %i.m, ptr %i.jn, align 8, !tbaa !22
  store ptr %i.ju, ptr %i.jo, align 8, !tbaa !23
  store ptr %i.jt, ptr %i.g, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %stb__clex_parse_string.exit

stb__clex_parse_string.exit:                      ; preds = %._crit_edge.i, %bb.bp, %bb.bm, %.thread210, %.critedge207, %bb.bs, %bb.bv, %bb.bw, %._crit_edge296, %bb.l, %bb.cd, %bb.cc, %bb.bz, %bb.bj, %bb.bi, %bb.bf, %bb.bc, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %._crit_edge
  %.6 = phi i32 [ 1, %.thread210 ], [ 0, %._crit_edge ], [ 1, %.critedge207 ], [ 1, %bb.m ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ag ], [ 1, %bb.aj ], [ 1, %bb.am ], [ 1, %bb.ap ], [ 1, %bb.as ], [ 1, %bb.av ], [ 1, %bb.ay ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.bf ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bs ], [ 1, %._crit_edge296 ], [ 1, %bb.bz ], [ 1, %bb.cc ], [ 1, %bb.cd ], [ 1, %bb.l ], [ 1, %bb.bw ], [ 1, %bb.bv ], [ 1, %bb.bm ], [ 1, %bb.bp ], [ 1, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !12, i64 64, !11, i64 72, !10, i64 80, !6, i64 88}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !10, i64 8}
!16 = !{!13, !10, i64 16}
!17 = !{!13, !10, i64 24}
!18 = !{!13, !6, i64 32}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!13, !11, i64 56}
!22 = !{!13, !10, i64 40}
!23 = !{!13, !10, i64 48}
!24 = !{!10, !10, i64 0}
!25 = !{!13, !10, i64 80}
!26 = !{!13, !6, i64 88}
!27 = distinct !{!27, !20}
!28 = !{!"", !6, i64 0, !6, i64 4}
!29 = !{!28, !6, i64 0}
!30 = !{!28, !6, i64 4}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = !{!13, !11, i64 72}
!38 = !{!13, !12, i64 64}
end_hunk_1
