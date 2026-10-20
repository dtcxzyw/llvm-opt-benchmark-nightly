Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/RegularExpression?download=true
inline.NumInlined: 73
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5cmsys13RegExpCompile7regatomEPi:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !29     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  %i.d = load i8, ptr %i.b, align 1, !tbaa !18
  switch i8 %i.d, label %bb.au [
    i8 94, label %bb.b
    i8 36, label %bb.e
    i8 46, label %bb.h
    i8 91, label %bb.k
    i8 40, label %bb.al
    i8 0, label %bb.an
    i8 124, label %bb.an
    i8 41, label %bb.an
    i8 63, label %bb.ao
    i8 43, label %bb.ao
    i8 42, label %bb.ao
    i8 92, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 6 uses
  %i.g = icmp eq ptr %i.f, @_ZN5cmsysL8regdummyE
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.j = add nsw i64 %i.i, 3
  store i64 %i.j, ptr %i.h, align 8, !tbaa !32
  br label %.critedge59

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 1, ptr %i.f, align 1, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 0, ptr %i.k, align 1, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 0, ptr %i.l, align 1, !tbaa !18
  store ptr %i.m, ptr %i.e, align 8, !tbaa !31
  br label %.critedge59

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 6 uses
  %i.p = icmp eq ptr %i.o, @_ZN5cmsysL8regdummyE
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = add nsw i64 %i.r, 3
  store i64 %i.s, ptr %i.q, align 8, !tbaa !32
  br label %.critedge59

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 2, ptr %i.o, align 1, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.t, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 0, ptr %i.u, align 1, !tbaa !18
  store ptr %i.v, ptr %i.n, align 8, !tbaa !31
  br label %.critedge59

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 6 uses
  %i.y = icmp eq ptr %i.x, @_ZN5cmsysL8regdummyE
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ab = add nsw i64 %i.aa, 3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit62

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 3, ptr %i.x, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 0, ptr %i.ac, align 1, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !31
  %.pre109.a = load i32, ptr %1, align 4, !tbaa !34
  %i.af = or i32 %.pre109.a, 3
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit62

_ZN5cmsys13RegExpCompile7regnodeEc.exit62:        ; preds = %bb.i, %bb.j
  %i.ag = phi i32 [ 3, %bb.i ], [ %i.af, %bb.j ]
  store i32 %i.ag, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.k:                                             ; preds = %bb.a
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !18
  %i.ai = icmp eq i8 %i.ah, 94
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 11 uses
  %i.al = icmp eq ptr %i.ak, @_ZN5cmsysL8regdummyE ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = add nsw i64 %i.an, 3
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit63

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 5, ptr %i.ak, align 1, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  store i8 0, ptr %i.aq, align 1, !tbaa !18
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !31
  %.pre103.a = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit63

_ZN5cmsys13RegExpCompile7regnodeEc.exit63:        ; preds = %bb.m, %bb.n
  %i.as = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.m ], [ %i.ar, %bb.n ]
  %i.at = phi ptr [ %i.c, %bb.m ], [ %.pre103.a, %bb.n ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

bb.o:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = add nsw i64 %i.aw, 3
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 4, ptr %i.ak, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  store i8 0, ptr %i.az, align 1, !tbaa !18
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !31
  %.pre104 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

_ZN5cmsys13RegExpCompile7regnodeEc.exit64:        ; preds = %bb.q, %bb.p, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63
  %i.bb = phi ptr [ %i.as, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ @_ZN5cmsysL8regdummyE, %bb.p ], [ %i.ba, %bb.q ] ; 3 uses
  %i.bc = phi ptr [ %i.au, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ %i.c, %bb.p ], [ %.pre104, %bb.q ] ; 3 uses
  %.037 = phi ptr [ %i.ak, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ @_ZN5cmsysL8regdummyE, %bb.p ], [ %i.ak, %bb.q ]
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  switch i8 %i.bd, label %_ZN5cmsys13RegExpCompile4regcEc.exit [
    i8 93, label %bb.r
    i8 45, label %bb.r
  ]

bb.r:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.be, ptr %0, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.bb, @_ZN5cmsysL8regdummyE
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !31
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !32
  %i.bk = add nsw i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit

_ZN5cmsys13RegExpCompile4regcEc.exit:             ; preds = %bb.t, %bb.s, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66

_ZN5cmsys13RegExpCompile4regcEc.exit66:           ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge, %_ZN5cmsys13RegExpCompile4regcEc.exit
  %i.bn = load ptr, ptr %0, align 8, !tbaa !29    ; 6 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18
  switch i8 %i.bo, label %bb.ae [
    i8 0, label %.critedge
    i8 93, label %.critedge
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 4 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !29
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18  ; 3 uses
  switch i8 %i.bq, label %bb.y [
    i8 93, label %bb.v
    i8 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 3 uses
  %.not.i65 = icmp eq ptr %i.br, @_ZN5cmsysL8regdummyE
  br i1 %.not.i65, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !31
  store i8 45, ptr %i.br, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.x:                                             ; preds = %bb.v
  %i.bt = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.y:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !18  ; 2 uses
  %i.bx = zext i8 %i.bq to i32                    ; 5 uses
  %i.by = icmp ugt i8 %i.bw, %i.bq
  br i1 %i.by, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.y
  %2 = zext i8 %i.bw to i32                       ; 5 uses
  %.03691 = add nuw nsw i32 %2, 1                 ; 3 uses
  %.not5492 = icmp samesign ugt i32 %.03691, %i.bx
  br i1 %.not5492, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, @_ZN5cmsysL8regdummyE
  br i1 %i.ca, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cb = sub nsw i32 %i.bx, %2
  %xtraiter = and i32 %i.cb, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader
  %i.cc = trunc nuw i32 %.03691 to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !18
  %.pre105.prol = load ptr, ptr %i.bl, align 8, !tbaa !31
  %.036.prol = add nuw nsw i32 %2, 2
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.unr = phi ptr [ %i.bz, %.lr.ph.split.preheader ], [ %.pre105.prol, %.lr.ph.split.prol ]
  %.036.in92.unr = phi i32 [ %.03691, %.lr.ph.split.preheader ], [ %.036.prol, %.lr.ph.split.prol ]
  %i.ce = add nsw i32 %i.bx, -1
  %i.cf = icmp eq i32 %i.ce, %2
  br i1 %i.cf, label %._crit_edge.loopexit, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.cg = add i64 %.promoted, 1
  %i.ch = xor i32 %2, -1
  %i.ci = add nsw i32 %i.ch, %i.bx
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add i64 %i.cg, %i.cj
  store i64 %i.ck, ptr %i.bm, align 8, !tbaa !32
  br label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  br label %.critedge59

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %_ZN5cmsys13RegExpCompile4regcEc.exit68.1
  %i.cl = phi ptr [ %i.cv, %_ZN5cmsys13RegExpCompile4regcEc.exit68.1 ], [ %.unr, %.lr.ph.split.prol.loopexit ] ; 3 uses
  %.036.in92 = phi i32 [ %.036.1, %_ZN5cmsys13RegExpCompile4regcEc.exit68.1 ], [ %.036.in92.unr, %.lr.ph.split.prol.loopexit ] ; 3 uses
  %.not.i67 = icmp eq ptr %i.cl, @_ZN5cmsysL8regdummyE
  br i1 %.not.i67, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split
  %i.cm = trunc nuw i32 %.036.in92 to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cn, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !18
  %.pre105 = load ptr, ptr %i.bl, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68

bb.ab:                                            ; preds = %.lr.ph.split
  %i.co = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68

_ZN5cmsys13RegExpCompile4regcEc.exit68:           ; preds = %bb.aa, %bb.ab
  %i.cq = phi ptr [ %.pre105, %bb.aa ], [ @_ZN5cmsysL8regdummyE, %bb.ab ] ; 3 uses
  %.036.1.a = add nuw nsw i32 %.036.in92, 1       ; 2 uses
  %.not.i67.1 = icmp eq ptr %i.cq, @_ZN5cmsysL8regdummyE
  br i1 %.not.i67.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit68
  %i.cr = trunc nuw i32 %.036.1.a to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store ptr %i.cs, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !18
  %.pre105.1 = load ptr, ptr %i.bl, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68.1

bb.ad:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit68
  %i.ct = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.cu = add nsw i64 %i.ct, 1
  store i64 %i.cu, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68.1

_ZN5cmsys13RegExpCompile4regcEc.exit68.1:         ; preds = %bb.ad, %bb.ac
  %i.cv = phi ptr [ %.pre105.1, %bb.ac ], [ @_ZN5cmsysL8regdummyE, %bb.ad ]
  %.036.1 = add nuw nsw i32 %.036.in92, 2
  %exitcond.not.1 = icmp eq i32 %.036.1.a, %i.bx
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph.split, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit68.1, %.lr.ph.split.prol.loopexit
  %.pre107 = load ptr, ptr %0, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split.us, %.preheader
  %i.cw = phi ptr [ %.pre107, %._crit_edge.loopexit ], [ %i.bp, %.lr.ph.split.us ], [ %i.bp, %.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cx, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.ae:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.cy, ptr %0, align 8, !tbaa !29
  %i.cz = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 3 uses
  %.not.i69 = icmp eq ptr %i.cz, @_ZN5cmsysL8regdummyE
  br i1 %.not.i69, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.db, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.ag:                                            ; preds = %bb.ae
  %i.dc = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.dd = add nsw i64 %i.dc, 1
  store i64 %i.dd, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge:  ; preds = %bb.ag, %bb.af, %bb.x, %bb.w, %._crit_edge
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66, !llvm.loop !53

.critedge:                                        ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66, %_ZN5cmsys13RegExpCompile4regcEc.exit66
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 3 uses
  %.not.i71 = icmp eq ptr %i.de, @_ZN5cmsysL8regdummyE
  br i1 %.not.i71, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store ptr %i.df, ptr %i.bl, align 8, !tbaa !31
  store i8 0, ptr %i.de, align 1, !tbaa !18
  %.pre108 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit72

bb.ai:                                            ; preds = %.critedge
  %i.dg = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit72

_ZN5cmsys13RegExpCompile4regcEc.exit72:           ; preds = %bb.ah, %bb.ai
  %i.di = phi ptr [ %.pre108, %bb.ah ], [ %i.bn, %bb.ai ] ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !18
  %.not52 = icmp eq i8 %i.dj, 93
  br i1 %.not52, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit72
  %puts53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %.critedge59

bb.ak:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit72
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dk, ptr %0, align 8, !tbaa !29
  %i.dl = load i32, ptr %1, align 4, !tbaa !34
  %i.dm = or i32 %i.dl, 3
  store i32 %i.dm, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.al:                                            ; preds = %bb.a
  %i.dn = call noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq ptr %i.dn, null
  br i1 %.not, label %.critedge59, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = load i32, ptr %i.a, align 4, !tbaa !34
  %i.dp = and i32 %i.do, 5
  %i.dq = load i32, ptr %1, align 4, !tbaa !34
  %i.dr = or i32 %i.dq, %i.dp
  store i32 %i.dr, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.an:                                            ; preds = %bb.a, %bb.a, %bb.a
  %puts49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.critedge59

bb.ao:                                            ; preds = %bb.a, %bb.a, %bb.a
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %.critedge59

bb.ap:                                            ; preds = %bb.a
  %i.ds = load i8, ptr %i.c, align 1, !tbaa !18
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  br label %.critedge59

bb.ar:                                            ; preds = %bb.ap
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !31 ; 7 uses
  %i.dw = icmp eq ptr %i.dv, @_ZN5cmsysL8regdummyE
  br i1 %i.dw, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit73

_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread: ; preds = %bb.ar
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = add nsw i64 %i.dy, 3
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ea, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread

_ZN5cmsys13RegExpCompile7regnodeEc.exit73:        ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 8, ptr %i.dv, align 1, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 0, ptr %i.eb, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 3 ; 3 uses
  store i8 0, ptr %i.ec, align 1, !tbaa !18
  store ptr %i.ed, ptr %i.du, align 8, !tbaa !31
  %.pre = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  store ptr %i.ee, ptr %0, align 8, !tbaa !29
  %.not.i74 = icmp eq ptr %i.ed, @_ZN5cmsysL8regdummyE
  br i1 %.not.i74, label %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread, label %_ZN5cmsys13RegExpCompile4regcEc.exit75

_ZN5cmsys13RegExpCompile4regcEc.exit75.thread:    ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit73, %_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.eh = add nsw i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !32
  br label %bb.at

_ZN5cmsys13RegExpCompile4regcEc.exit75:           ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit73
  %i.ei = load i8, ptr %.pre, align 1, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store ptr %i.ej, ptr %i.du, align 8, !tbaa !31
  store i8 %i.ei, ptr %i.ed, align 1, !tbaa !18
  %.pre102 = load ptr, ptr %i.du, align 8, !tbaa !31 ; 3 uses
  %.not.i76 = icmp eq ptr %.pre102, @_ZN5cmsysL8regdummyE
  br i1 %.not.i76, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit75
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre102, i64 1
  store ptr %i.ek, ptr %i.du, align 8, !tbaa !31
  store i8 0, ptr %.pre102, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit77

bb.at:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread, %_ZN5cmsys13RegExpCompile4regcEc.exit75
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !32
  %i.en = add nsw i64 %i.em, 1
  store i64 %i.en, ptr %i.el, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit77

_ZN5cmsys13RegExpCompile4regcEc.exit77:           ; preds = %bb.as, %bb.at
  %i.eo = load i32, ptr %1, align 4, !tbaa !34
  %i.ep = or i32 %i.eo, 3
  store i32 %i.ep, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.au:                                            ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.eq = tail call i64 @strcspn(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13) #17
  %.fr = freeze i64 %i.eq                         ; 2 uses
  %i.er = trunc i64 %.fr to i32                   ; 4 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.critedge59

bb.aw:                                            ; preds = %bb.au
  %.not56 = icmp eq i32 %i.er, 1
  br i1 %.not56, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.et = and i64 %.fr, 2147483647
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !18
  switch i8 %i.ev, label %.thread [
    i8 63, label %bb.ay
    i8 43, label %bb.ay
    i8 42, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax
  %i.ew = add nsw i32 %i.er, -1                   ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 1
  %spec.select = select i1 %i.ex, i32 3, i32 1
  br label %.thread

.thread:                                          ; preds = %bb.ay, %bb.ax, %bb.aw
  %.085 = phi i32 [ 1, %bb.aw ], [ %i.ew, %bb.ay ], [ %i.er, %bb.ax ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5cmsys10RegExpFind8regmatchEPKc:bb.a
    i8 79, label %bb.x
    i8 80, label %bb.x
    i8 81, label %bb.x
    i8 82, label %bb.x
    i8 83, label %bb.x
    i8 84, label %bb.x
    i8 6, label %bb.aa
    i8 10, label %bb.ad
    i8 11, label %bb.ad
    i8 0, label %bb.aj
  ]

bb.g:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %.not74 = icmp eq ptr %i.c, %i.b
  br i1 %.not74, label %bb.al, label %.thread

bb.h:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.u = load i8, ptr %i.c, align 1, !tbaa !18
  %.not73 = icmp eq i8 %i.u, 0
  br i1 %.not73, label %bb.al, label %.thread

bb.i:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.v = load i8, ptr %i.c, align 1, !tbaa !18
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !39
  br label %bb.al

bb.k:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.051107, i64 3 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = load i8, ptr %i.c, align 1, !tbaa !18
  %.not71 = icmp eq i8 %i.z, %i.aa
  br i1 %.not71, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #17 ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c, i64 noundef %i.ab) #17
  %.not72 = icmp eq i32 %i.ad, 0
  br i1 %.not72, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !39
  br label %bb.al

bb.o:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.af = load i8, ptr %i.c, align 1, !tbaa !18   ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = sext i8 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %.051107, i64 3
  %i.aj = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ai, i32 noundef %i.ah) #17
  %.not70 = icmp eq ptr %i.aj, null
  br i1 %.not70, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !39
  br label %bb.al

bb.r:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.al = load i8, ptr %i.c, align 1, !tbaa !18   ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = sext i8 %i.al to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %.051107, i64 3
  %i.ap = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ao, i32 noundef %i.an) #17
  %.not69 = icmp eq ptr %i.ap, null
  br i1 %.not69, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !39
  br label %bb.al

bb.u:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit
  %i.ar = tail call noundef i32 @_ZN5cmsys10RegExpFind8regmatchEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %.0.i)
  %.not67 = icmp eq i32 %i.ar, 0
  br i1 %.not67, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = zext nneg i8 %i.t to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 -160   ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  %.not68 = icmp eq ptr %i.ax, null
  br i1 %.not68, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  store ptr %i.c, ptr %i.aw, align 8, !tbaa !21
  br label %.thread

bb.x:                                             ; preds = %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit
  %i.ay = tail call noundef i32 @_ZN5cmsys10RegExpFind8regmatchEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %.0.i)
  %.not65 = icmp eq i32 %i.ay, 0
  br i1 %.not65, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = zext nneg i8 %i.t to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.az
  %i.bd = getelementptr i8, ptr %i.bc, i64 -416   ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21
  %.not66 = icmp eq ptr %i.be, null
  br i1 %.not66, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  store ptr %i.c, ptr %i.bd, align 8, !tbaa !21
  br label %.thread

bb.aa:                                            ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.bf = load i8, ptr %.0.i, align 1, !tbaa !18
  %.not62.not = icmp eq i8 %i.bf, 6
  br i1 %.not62.not, label %.preheader, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %.051107, i64 3
  br label %bb.al

.preheader:                                       ; preds = %bb.aa, %_ZN5cmsysL7regnextEPKc.exit77
  %.152 = phi ptr [ %.0.i76, %_ZN5cmsysL7regnextEPKc.exit77 ], [ %.051107, %bb.aa ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.152, i64 3
  %i.bi = tail call noundef i32 @_ZN5cmsys10RegExpFind8regmatchEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.bh)
  %.not63 = icmp eq i32 %i.bi, 0
  br i1 %.not63, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %.preheader
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  %i.bj = icmp eq ptr %.152, @_ZN5cmsysL8regdummyE
  br i1 %i.bj, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %.152, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.152, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq            ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.thread, label %_ZN5cmsysL7regnextEPKc.exit77

_ZN5cmsysL7regnextEPKc.exit77:                    ; preds = %bb.ac
  %i.bt = load i8, ptr %.152, align 1, !tbaa !18
  %i.bu = icmp eq i8 %i.bt, 7
  %i.bv = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bw = sub nsw i64 0, %i.bv
  %.0.i76.v = select i1 %i.bu, i64 %i.bw, i64 %i.bv
  %.0.i76 = getelementptr inbounds i8, ptr %.152, i64 %.0.i76.v ; 2 uses
  %i.bx = load i8, ptr %.0.i76, align 1, !tbaa !18
  %i.by = icmp eq i8 %i.bx, 6
  br i1 %i.by, label %.preheader, label %.thread, !llvm.loop !60

bb.ad:                                            ; preds = %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit
  %i.bz = load i8, ptr %.0.i, align 1, !tbaa !18
  %i.ca = icmp eq i8 %i.bz, 8
  br i1 %i.ca, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.cd = sext i8 %i.cc to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.047 = phi i32 [ %i.cd, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.ce = icmp ne i8 %i.t, 10                     ; 2 uses
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %.051107, i64 3
  %i.ch = tail call noundef i32 @_ZN5cmsys10RegExpFind9regrepeatEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.cg) ; 2 uses
  %.not60108 = icmp slt i32 %i.ch, %i.cf
  br i1 %.not60108, label %.thread, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.af
  %i.ci = icmp eq i32 %.047, 0
  %i.cj = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.ck = zext i1 %i.ce to i64                    ; 2 uses
  br i1 %i.ci, label %.lr.ph111.split.us, label %.lr.ph111.split.preheader

.lr.ph111.split.preheader:                        ; preds = %.lr.ph111
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  br label %.lr.ph111.split

.lr.ph111.split.us:                               ; preds = %.lr.ph111, %bb.ag
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.ag ], [ %i.cj, %.lr.ph111 ]
  %i.cl = tail call noundef i32 @_ZN5cmsys10RegExpFind8regmatchEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.0.i)
  %.not61.us = icmp eq i32 %i.cl, 0
  br i1 %.not61.us, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.lr.ph111.split.us
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, -1 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next143
  store ptr %i.cm, ptr %0, align 8, !tbaa !39
  %.not60.us = icmp slt i64 %indvars.iv.next143, %i.ck
  br i1 %.not60.us, label %.thread, label %.lr.ph111.split.us, !llvm.loop !61

.lr.ph111.split:                                  ; preds = %.lr.ph111.split.preheader, %bb.ai
  %i.cn = phi ptr [ %.pre, %.lr.ph111.split.preheader ], [ %i.cs, %bb.ai ]
  %indvars.iv = phi i64 [ %i.cj, %.lr.ph111.split.preheader ], [ %indvars.iv.next, %bb.ai ]
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = sext i8 %i.co to i32
  %i.cq = icmp eq i32 %.047, %i.cp
  br i1 %i.cq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph111.split
  %i.cr = tail call noundef i32 @_ZN5cmsys10RegExpFind8regmatchEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.0.i)
  %.not61 = icmp eq i32 %i.cr, 0
  br i1 %.not61, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah, %.lr.ph111.split
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next ; 2 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !39
  %.not60 = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %.not60, label %.thread, label %.lr.ph111.split, !llvm.loop !61

bb.aj:                                            ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !38
  %i.cv = icmp ne ptr %i.c, %i.cu
  %. = zext i1 %i.cv to i32
  br label %.thread

bb.ak:                                            ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %puts75 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %.thread

bb.al:                                            ; preds = %.critedge.thread, %bb.n, %bb.h, %bb.g, %bb.t, %bb.q, %bb.j, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit
  %i.cw = phi ptr [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.x, %bb.j ], [ %i.ae, %bb.n ], [ %i.ak, %bb.q ], [ %i.aq, %bb.t ], [ %i.c, %_ZN5cmsysL7regnextEPKc.exit ], [ %i.c, %_ZN5cmsysL7regnextEPKc.exit ], [ %i.c, %.critedge.thread ]
  %.150 = phi ptr [ %.0.i, %bb.g ], [ %.0.i, %bb.h ], [ %.0.i, %bb.j ], [ %.0.i, %bb.n ], [ %.0.i, %bb.q ], [ %.0.i, %bb.t ], [ %.0.i, %_ZN5cmsysL7regnextEPKc.exit ], [ %.0.i, %_ZN5cmsysL7regnextEPKc.exit ], [ %i.bg, %.critedge.thread ] ; 2 uses
  %.not = icmp eq ptr %.150, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.al, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.k, %bb.r, %bb.s, %bb.o, %bb.p, %bb.i, %bb.h, %bb.g, %bb.ai, %bb.ah, %bb.ag, %.lr.ph111.split.us, %.preheader, %_ZN5cmsysL7regnextEPKc.exit77, %bb.ab, %bb.ac, %bb.af, %bb.aj, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %._crit_edge, %bb.ak
  %.7 = phi i32 [ 0, %bb.ak ], [ 0, %._crit_edge ], [ %., %bb.aj ], [ 1, %bb.ah ], [ 1, %bb.z ], [ 0, %bb.af ], [ 1, %bb.v ], [ 1, %bb.w ], [ 0, %bb.u ], [ 1, %bb.y ], [ 0, %bb.x ], [ 0, %_ZN5cmsysL7regnextEPKc.exit77 ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 1, %.preheader ], [ 1, %.lr.ph111.split.us ], [ 0, %bb.ai ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.k ], [ 0, %bb.m ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_ZN5cmsys10RegExpFind9regrepeatEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !18
  switch i8 %i.c, label %bb.e [
    i8 3, label %bb.b
    i8 8, label %.preheader
    i8 4, label %.preheader34
    i8 5, label %.preheader36
  ]

.preheader36:                                     ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !18    ; 2 uses
  %.not38 = icmp eq i8 %i.d, 0
  br i1 %.not38, label %.critedge, label %.lr.ph

.preheader34:                                     ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !18    ; 2 uses
  %.not3245 = icmp eq i8 %i.e, 0
  br i1 %.not3245, label %.critedge, label %.lr.ph48

.preheader:                                       ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !18    ; 2 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !18
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %.lr.ph56, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %sext = shl i64 %i.i, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %.critedge

.lr.ph56:                                         ; preds = %.preheader, %.lr.ph56
  %.055 = phi ptr [ %i.n, %.lr.ph56 ], [ %i.a, %.preheader ]
  %.02454 = phi i32 [ %i.m, %.lr.ph56 ], [ 0, %.preheader ]
  %i.m = add nuw nsw i32 %.02454, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.f, %i.o
  br i1 %i.p, label %.lr.ph56, label %.critedge, !llvm.loop !63

.lr.ph48:                                         ; preds = %.preheader34, %bb.c
  %i.q = phi i8 [ %i.v, %bb.c ], [ %i.e, %.preheader34 ]
  %.147 = phi ptr [ %i.u, %bb.c ], [ %i.a, %.preheader34 ] ; 2 uses
  %.12546 = phi i32 [ %i.t, %bb.c ], [ 0, %.preheader34 ] ; 2 uses
  %i.r = sext i8 %i.q to i32
  %i.s = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef %i.r) #17
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph48
  %i.t = add nuw nsw i32 %.12546, 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.147, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18    ; 2 uses
  %.not32 = icmp eq i8 %i.v, 0
  br i1 %.not32, label %.critedge, label %.lr.ph48, !llvm.loop !64

.lr.ph:                                           ; preds = %.preheader36, %bb.d
  %i.w = phi i8 [ %i.ab, %bb.d ], [ %i.d, %.preheader36 ]
  %.240 = phi ptr [ %i.aa, %bb.d ], [ %i.a, %.preheader36 ] ; 2 uses
  %.22639 = phi i32 [ %i.z, %bb.d ], [ 0, %.preheader36 ] ; 2 uses
  %i.x = sext i8 %i.w to i32
  %i.y = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef %i.x) #17
  %.not31 = icmp eq ptr %i.y, null
  br i1 %.not31, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.z = add nuw nsw i32 %.22639, 1               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.240, i64 1 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18  ; 2 uses
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !65

bb.e:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  br label %bb.f

.critedge:                                        ; preds = %bb.d, %.lr.ph, %bb.c, %.lr.ph48, %.lr.ph56, %.preheader36, %.preheader34, %.preheader, %bb.b
  %.327 = phi i32 [ %i.j, %bb.b ], [ 0, %.preheader36 ], [ %.12546, %.lr.ph48 ], [ 0, %.preheader ], [ 0, %.preheader34 ], [ %i.m, %.lr.ph56 ], [ %i.t, %bb.c ], [ %.22639, %.lr.ph ], [ %i.z, %bb.d ]
  %.3 = phi ptr [ %i.l, %bb.b ], [ %i.a, %.preheader36 ], [ %.147, %.lr.ph48 ], [ %i.a, %.preheader ], [ %i.a, %.preheader34 ], [ %i.n, %.lr.ph56 ], [ %i.u, %bb.c ], [ %.240, %.lr.ph ], [ %i.aa, %bb.d ]
  store ptr %.3, ptr %0, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.028 = phi i32 [ 0, %bb.e ], [ %.327, %.critedge ]
  ret i32 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSN5cmsys22RegularExpressionMatchE", !7, i64 0, !7, i64 256, !12, i64 512}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSN5cmsys17RegularExpressionE", !13, i64 0, !7, i64 520, !7, i64 521, !12, i64 528, !14, i64 536, !12, i64 544, !8, i64 552, !8, i64 556}
!16 = !{!15, !12, i64 544}
!17 = !{!15, !8, i64 552}
!18 = !{!7, !7, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!12, !12, i64 0}
!22 = !{i64 0, i64 256, !18, i64 256, i64 256, !18, i64 512, i64 8, !21}
!23 = !{!15, !12, i64 528}
!24 = !{!15, !7, i64 520}
!25 = !{!15, !7, i64 521}
!26 = !{!15, !14, i64 536}
!27 = !{!15, !8, i64 556}
!28 = !{!"_ZTSN5cmsys13RegExpCompileE", !12, i64 0, !8, i64 8, !12, i64 16, !14, i64 24}
!29 = !{!28, !12, i64 0}
!30 = !{!28, !8, i64 8}
!31 = !{!28, !12, i64 16}
!32 = !{!28, !14, i64 24}
!33 = !{!13, !12, i64 512}
!34 = !{!8, !8, i64 0}
!35 = !{!"any p2 pointer", !11, i64 0}
!36 = !{!"p2 omnipotent char", !35, i64 0}
!37 = !{!"_ZTSN5cmsys10RegExpFindE", !12, i64 0, !12, i64 8, !36, i64 16, !36, i64 24, !12, i64 32}
!38 = !{!37, !12, i64 32}
!39 = !{!37, !12, i64 0}
!40 = !{!37, !36, i64 16}
!41 = !{!37, !36, i64 24}
end_hunk_1
