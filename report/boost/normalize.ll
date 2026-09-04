Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/normalize?download=true
inline.NumInlined: 400
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5boost4urls6detail18segments_iter_impl9decrementEv:bb.a
  br label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit

_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit: ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i.i = phi i64 [ 2, %bb.g ], [ 1, %bb.k ], [ 3, %bb.j ], [ 0, %bb.m ], [ 2, %bb.l ], [ %..i.i, %bb.e ], [ %.sink1.i, %_ZNK5boost4urls6detail8path_ref6bufferEv.exit ], [ 1, %bb.f ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.0.i.i, ptr %i.ap, align 8, !tbaa !39
  store i64 %.0.i.i, ptr %i.e, align 8, !tbaa !40
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !32  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !33
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  br label %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i

bb.o:                                             ; preds = %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  br label %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i

_ZNK5boost4urls6detail8path_ref4dataEv.exit.i:    ; preds = %bb.o, %bb.n
  %.0.i22.i = phi ptr [ %i.au, %bb.n ], [ %i.bd, %bb.o ] ; 4 uses
  %.0.i17.i = phi ptr [ %i.ay, %bb.n ], [ %i.ba, %bb.o ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i17.i, i64 %.0.i.i ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !41
  %.not24.i = icmp eq ptr %i.be, %.0.i22.i
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i, %.backedge.i
  %i.bf = phi i64 [ %i.bi, %.backedge.i ], [ 0, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i ] ; 3 uses
  %.025.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %i.be, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i ] ; 4 uses
  %i.bg = load i8, ptr %.025.i, align 1, !tbaa !17
  switch i8 %i.bg, label %bb.p [
    i8 47, label %._crit_edge.i
    i8 37, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.025.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.q, %bb.p
  %i.bi = phi i64 [ %i.bf, %bb.p ], [ %i.bk, %bb.q ] ; 2 uses
  %.0.be.i = phi ptr [ %i.bh, %bb.p ], [ %i.bj, %bb.q ] ; 2 uses
  %.not.i12 = icmp eq ptr %.0.be.i, %.0.i22.i
  br i1 %.not.i12, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

bb.q:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.025.i, i64 3
  %i.bk = add i64 %i.bf, 2                        ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !41
  br label %.backedge.i

._crit_edge.i:                                    ; preds = %.backedge.i, %.lr.ph.i, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i
  %i.bl = phi i64 [ 0, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i ], [ %i.bi, %.backedge.i ], [ %i.bf, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %.0.i22.i, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i ], [ %.0.i22.i, %.backedge.i ], [ %.025.i, %.lr.ph.i ]
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !33
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  br label %_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit

bb.s:                                             ; preds = %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !34
  br label %_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit

_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit: ; preds = %bb.r, %bb.s
  %.0.i19.i = phi ptr [ %i.bq, %bb.r ], [ %i.bs, %bb.s ]
  %i.bt = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.bu = ptrtoint ptr %.0.i19.i to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !42
  %i.bx = ptrtoint ptr %i.be to i64
  %i.by = sub i64 %i.bt, %i.bx                    ; 2 uses
  %i.bz = sub i64 %i.by, %i.bl                    ; 2 uses
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.be, ptr %i.ca, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.by, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.bz, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %bb.ao

bb.t:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !33
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !33, !noalias !139
  %i.ci = zext i32 %i.ch to i64
  %i.cj = sub nsw i64 %i.ci, %i.ce
  br label %_ZNK5boost4urls6detail8path_ref6bufferEv.exit18

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !35, !noalias !139
  br label %_ZNK5boost4urls6detail8path_ref6bufferEv.exit18

_ZNK5boost4urls6detail8path_ref6bufferEv.exit18:  ; preds = %bb.u, %bb.v
  %.0.i53 = phi ptr [ %i.cl, %bb.v ], [ %i.cf, %bb.u ] ; 9 uses
  %.sink1.i16 = phi i64 [ %i.cn, %bb.v ], [ %i.cj, %bb.u ] ; 2 uses
  %.0.i5358 = ptrtoaddr ptr %.0.i53 to i64
  switch i64 %.sink1.i16, label %bb.z [
    i64 0, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26
    i64 1, label %bb.w
    i64 2, label %bb.x
  ]

bb.w:                                             ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit18
  %i.co = load i8, ptr %.0.i53, align 1, !tbaa !17
  %i.cp = icmp eq i8 %i.co, 47
  %..i.i25 = zext i1 %i.cp to i64
  br label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26

bb.x:                                             ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit18
  %i.cq = load i8, ptr %.0.i53, align 1, !tbaa !17
  switch i8 %i.cq, label %bb.ae [
    i8 47, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26
    i8 46, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i53, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  %i.ct = icmp eq i8 %i.cs, 47
  br i1 %i.ct, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26, label %bb.ae

bb.z:                                             ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit18
  %i.cu = load i8, ptr %.0.i53, align 1, !tbaa !17
  switch i8 %i.cu, label %bb.ae [
    i8 47, label %bb.aa
    i8 46, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i53, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = icmp eq i8 %i.cw, 46
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i53, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !17
  %i.da = icmp eq i8 %i.cz, 47
  br i1 %i.da, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26

bb.ad:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i53, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17
  %i.dd = icmp eq i8 %i.dc, 47
  br i1 %i.dd, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z, %bb.y, %bb.x
  br label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26

_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26: ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit18, %bb.w, %bb.x, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i.i24 = phi i64 [ 2, %bb.y ], [ 1, %bb.ac ], [ 3, %bb.ab ], [ 0, %bb.ae ], [ 2, %bb.ad ], [ %..i.i25, %bb.w ], [ %.sink1.i16, %_ZNK5boost4urls6detail8path_ref6bufferEv.exit18 ], [ 1, %bb.x ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %.0.i.i24 ; 2 uses
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !33
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.di
  br label %_ZNK5boost4urls6detail8path_ref4dataEv.exit29

bb.ag:                                            ; preds = %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit26
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !34
  br label %_ZNK5boost4urls6detail8path_ref4dataEv.exit29

_ZNK5boost4urls6detail8path_ref4dataEv.exit29:    ; preds = %bb.af, %bb.ag
  %.0.i28 = phi ptr [ %i.dj, %bb.af ], [ %i.dl, %bb.ag ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i28, i64 %i.dn ; 2 uses
  %i.dp = add i64 %.0.i.i24, %.0.i5358            ; 2 uses
  %.not1169 = icmp eq ptr %i.do, %i.de
  br i1 %.not1169, label %._crit_edge71, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %.not11 = icmp eq ptr %i.dq, %i.de
  br i1 %.not11, label %._crit_edge71, label %.lr.ph, !llvm.loop !137

.lr.ph:                                           ; preds = %_ZNK5boost4urls6detail8path_ref4dataEv.exit29, %bb.ah
  %.070 = phi ptr [ %i.dq, %bb.ah ], [ %i.do, %_ZNK5boost4urls6detail8path_ref4dataEv.exit29 ]
  %i.dq = getelementptr inbounds i8, ptr %.070, i64 -1 ; 4 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !17
  %i.ds = icmp eq i8 %i.dr, 47
  br i1 %i.ds, label %._crit_edge, label %bb.ah, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph
  %1 = ptrtoint ptr %i.dq to i64
  br label %._crit_edge71, !llvm.loop !137

._crit_edge71:                                    ; preds = %bb.ah, %._crit_edge, %_ZNK5boost4urls6detail8path_ref4dataEv.exit29
  %.1 = phi i64 [ %1, %._crit_edge ], [ %i.dp, %_ZNK5boost4urls6detail8path_ref4dataEv.exit29 ], [ %i.dp, %bb.ah ]
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge71
  %i.dt = load ptr, ptr %i.l, align 8, !tbaa !32  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !33
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !33
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ea
  br label %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34

bb.aj:                                            ; preds = %._crit_edge71
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !34 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ef
  br label %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34

_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34:  ; preds = %bb.aj, %bb.ai
  %.0.i22.i35 = phi ptr [ %i.eg, %bb.aj ], [ %i.eb, %bb.ai ] ; 4 uses
  %.0.i17.i36 = phi ptr [ %i.ed, %bb.aj ], [ %i.dx, %bb.ai ] ; 2 uses
  %.pn = ptrtoint ptr %.0.i17.i36 to i64
  %.sink.in = sub i64 %.1, %.pn                   ; 2 uses
  %.sink = add nsw i64 %.sink.in, 1               ; 2 uses
  store i64 %.sink, ptr %i.dm, align 8, !tbaa !39
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i17.i36, i64 %.sink ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !41
  %.not24.i37 = icmp eq ptr %i.eh, %.0.i22.i35
  br i1 %.not24.i37, label %._crit_edge.i43, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34, %.backedge.i40
  %i.ei = phi i64 [ %i.el, %.backedge.i40 ], [ 0, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34 ] ; 3 uses
  %.025.i39 = phi ptr [ %.0.be.i41, %.backedge.i40 ], [ %i.eh, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34 ] ; 4 uses
  %i.ej = load i8, ptr %.025.i39, align 1, !tbaa !17
  switch i8 %i.ej, label %bb.ak [
    i8 47, label %._crit_edge.i43
    i8 37, label %bb.al
  ]

bb.ak:                                            ; preds = %.lr.ph.i38
  %i.ek = getelementptr inbounds nuw i8, ptr %.025.i39, i64 1
  br label %.backedge.i40

.backedge.i40:                                    ; preds = %bb.al, %bb.ak
  %i.el = phi i64 [ %i.ei, %bb.ak ], [ %i.en, %bb.al ] ; 2 uses
  %.0.be.i41 = phi ptr [ %i.ek, %bb.ak ], [ %i.em, %bb.al ] ; 2 uses
  %.not.i42 = icmp eq ptr %.0.be.i41, %.0.i22.i35
  br i1 %.not.i42, label %._crit_edge.i43, label %.lr.ph.i38, !llvm.loop !2

bb.al:                                            ; preds = %.lr.ph.i38
  %i.em = getelementptr inbounds nuw i8, ptr %.025.i39, i64 3
  %i.en = add i64 %i.ei, 2                        ; 2 uses
  store i64 %i.en, ptr %i.a, align 8, !tbaa !41
  br label %.backedge.i40

._crit_edge.i43:                                  ; preds = %.backedge.i40, %.lr.ph.i38, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34
  %i.eo = phi i64 [ 0, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34 ], [ %i.el, %.backedge.i40 ], [ %i.ei, %.lr.ph.i38 ]
  %.0.lcssa.i44 = phi ptr [ %.0.i22.i35, %_ZNK5boost4urls6detail8path_ref4dataEv.exit.i34 ], [ %.0.i22.i35, %.backedge.i40 ], [ %.025.i39, %.lr.ph.i38 ]
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i43
  %i.ep = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !33
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  br label %_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit48

bb.an:                                            ; preds = %._crit_edge.i43
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !34
  br label %_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit48

_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit48: ; preds = %bb.am, %bb.an
  %.0.i19.i45 = phi ptr [ %i.et, %bb.am ], [ %i.ev, %bb.an ]
  %i.ew = ptrtoint ptr %.0.lcssa.i44 to i64       ; 2 uses
  %i.ex = ptrtoint ptr %.0.i19.i45 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !42
  %i.fa = ptrtoint ptr %i.eh to i64
  %i.fb = sub i64 %i.ew, %i.fa                    ; 2 uses
  %i.fc = sub i64 %i.fb, %i.eo                    ; 2 uses
  store i64 %i.fc, ptr %i.a, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.eh, ptr %i.fd, align 8
  %.sroa.4.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.fb, ptr %.sroa.4.0..sroa_idx.i46, align 8
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.fc, ptr %.sroa.5.0..sroa_idx.i47, align 8
  store i64 %.sink.in, ptr %i.dm, align 8, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit48, %_ZN5boost4urls6detail18segments_iter_impl6updateEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

attributes #0 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"_ZTSN5boost4core17basic_string_viewIcEE", !13, i64 0, !14, i64 8}
!16 = !{!15, !13, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !14, i64 8}
!19 = !{!14, !14, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"_ZTSN5boost4urls6detail6fnv_1aE", !14, i64 0}
!22 = !{!21, !14, i64 0}
!23 = !{!13, !13, i64 0}
!24 = !{!"p1 _ZTSN5boost4urls6detail8url_implE", !12, i64 0}
!25 = !{!"_ZTSN5boost4urls6detail8path_refE", !24, i64 0, !13, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!26 = !{!25, !24, i64 0}
!27 = !{!"short", !8, i64 0}
!28 = !{!"_ZTSN5boost4urls9host_typeE", !8, i64 0}
!29 = !{!"_ZTSN5boost4urls6schemeE", !8, i64 0}
!30 = !{!"_ZTSN5boost4urls6detail10parts_base4fromE", !8, i64 0}
!31 = !{!"_ZTSN5boost4urls6detail8url_implE", !13, i64 0, !8, i64 8, !8, i64 40, !9, i64 68, !9, i64 72, !8, i64 76, !27, i64 92, !28, i64 96, !29, i64 100, !30, i64 102}
!32 = !{!31, !13, i64 0}
!33 = !{!9, !9, i64 0}
!34 = !{!25, !13, i64 8}
!35 = !{!25, !14, i64 16}
!36 = !{!"_ZTSN5boost4urls7grammar16string_view_baseE", !15, i64 0}
!37 = !{!"_ZTSN5boost4urls15pct_string_viewE", !36, i64 0, !14, i64 16}
!38 = !{!"_ZTSN5boost4urls6detail18segments_iter_implE", !25, i64 8, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !37, i64 88}
!39 = !{!38, !14, i64 48}
!40 = !{!38, !14, i64 80}
!41 = !{!38, !14, i64 72}
!42 = !{!38, !14, i64 56}
!43 = !{!31, !9, i64 68}
!44 = !{!25, !14, i64 24}
!45 = !{!25, !14, i64 32}
!46 = !{!38, !14, i64 64}
!47 = !{!"bool", !8, i64 0}
!48 = !{!"_ZTSN5boost4urls11decode_viewE", !13, i64 0, !14, i64 8, !14, i64 16, !47, i64 24}
!49 = !{!47, !47, i64 0}
!50 = !{!"_ZTSN5boost4urls11decode_view8iteratorE", !13, i64 0, !13, i64 8, !47, i64 16}
!51 = !{!50, !13, i64 0}
!52 = !{!50, !13, i64 8}
!53 = !{!"vtable pointer", !7, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !12, i64 0}
!56 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !55, i64 0}
!57 = !{!56, !55, i64 0}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = !{!"_ZTSN5boost15source_locationE", !13, i64 0, !13, i64 8, !9, i64 16, !9, i64 20}
!69 = !{!68, !13, i64 0}
!70 = !{!68, !13, i64 8}
!71 = !{!68, !9, i64 16}
!72 = !{!68, !9, i64 20}
!73 = !{i64 0, i64 8, !23, i64 8, i64 8, !19}
!74 = distinct !{!74, !20}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !"_ZNK5boost4urls6detail8path_ref6bufferEv"}
!77 = distinct !{!77, !76, !"_ZNK5boost4urls6detail8path_ref6bufferEv: argument 0"}
!78 = distinct !{!78, !"_ZNK5boost4urls21segments_encoded_base3endEv"}
!79 = distinct !{!79, !78, !"_ZNK5boost4urls21segments_encoded_base3endEv: argument 0"}
!80 = distinct !{!80, !"_ZNK5boost4urls11decode_view3endEv"}
!81 = distinct !{!81, !80, !"_ZNK5boost4urls11decode_view3endEv: argument 0"}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !"_ZNK5boost4urls6detail8path_ref6bufferEv"}
!84 = distinct !{!84, !83, !"_ZNK5boost4urls6detail8path_ref6bufferEv: argument 0"}
!85 = distinct !{!85, !"_ZNK5boost4urls21segments_encoded_base3endEv"}
end_hunk_0
