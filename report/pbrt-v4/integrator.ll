Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrator?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1526
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4pbrt23WavefrontPathIntegratorC2EPN4pstd3pmr15memory_resourceERNS_10BasicSceneE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0317.0353, i64 216
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0317.0353, i64 248
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !83
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  store i8 1, ptr %i.al, align 2, !tbaa !77
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0317.0353, i64 272 ; 2 uses
  %.not340 = icmp eq ptr %i.bh, %i.ap
  br i1 %.not340, label %._crit_edge, label %.lr.ph

._crit_edge358:                                   ; preds = %bb.q, %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !552 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  %.not342369 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not342369, label %._crit_edge373, label %.lr.ph372

.lr.ph357:                                        ; preds = %._crit_edge, %bb.q
  %.sroa.0313.0355 = phi ptr [ %i.br, %bb.q ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0313.0355, i64 904
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph357
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0313.0355, i64 936
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !83
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph357
  store i8 1, ptr %i.al, align 2, !tbaa !77
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0313.0355, i64 960 ; 2 uses
  %.not341 = icmp eq ptr %i.br, %i.at
  br i1 %.not341, label %._crit_edge358, label %.lr.ph357

._crit_edge373:                                   ; preds = %._crit_edge368, %._crit_edge358
  %i.bs = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %bb.x, label %bb.y

.lr.ph372:                                        ; preds = %._crit_edge358, %._crit_edge368
  %.sroa.0309.0370 = phi ptr [ %i.cl, %._crit_edge368 ], [ %i.bj, %._crit_edge358 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0309.0370, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !555 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !550 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !550 ; 2 uses
  %.not349359 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not349359, label %._crit_edge363, label %.lr.ph362

._crit_edge363:                                   ; preds = %bb.t, %.lr.ph372
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !551 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !551 ; 2 uses
  %.not350364 = icmp eq ptr %i.cb, %i.cd
  br i1 %.not350364, label %._crit_edge368, label %.lr.ph367

.lr.ph362:                                        ; preds = %.lr.ph372, %bb.t
  %.sroa.0305.0360 = phi ptr [ %i.ck, %bb.t ], [ %i.bx, %.lr.ph372 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0305.0360, i64 216
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !83
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph362
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0305.0360, i64 248
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !83
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph362
  store i8 1, ptr %i.al, align 2, !tbaa !77
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0305.0360, i64 272 ; 2 uses
  %.not349 = icmp eq ptr %i.ck, %i.bz
  br i1 %.not349, label %._crit_edge363, label %.lr.ph362

._crit_edge368:                                   ; preds = %bb.w, %._crit_edge363
  %i.cl = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0309.0370) #31 ; 2 uses
  %.not342 = icmp eq ptr %i.cl, %i.bk
  br i1 %.not342, label %._crit_edge373, label %.lr.ph372

.lr.ph367:                                        ; preds = %._crit_edge363, %bb.w
  %.sroa.0301.0365 = phi ptr [ %i.cs, %bb.w ], [ %i.cb, %._crit_edge363 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0301.0365, i64 904
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !83
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph367
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0301.0365, i64 936
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !83
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph367
  store i8 1, ptr %i.al, align 2, !tbaa !77
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0301.0365, i64 960 ; 2 uses
  %.not350 = icmp eq ptr %i.cs, %i.cd
  br i1 %.not350, label %._crit_edge368, label %.lr.ph367

bb.x:                                             ; preds = %._crit_edge373
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.6)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %bb.x, %._crit_edge373
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN4pbrt10BasicScene14CreateTexturesEv(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::NamedTextures") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1520) %2)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.ct = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.cu = icmp slt i32 %i.ct, 1
  br i1 %i.cu, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @.str.7)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %.pr = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.cv = icmp slt i32 %.pr, 1
  br i1 %i.cv, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @.str.8)
          to label %.thread unwind label %bb.ai

.thread:                                          ; preds = %bb.z, %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.cw = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #29 ; 5 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  store i64 %i.cx, ptr %11, align 8, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.cz, align 8, !tbaa !556
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr null, ptr %i.da, align 8, !tbaa !92
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !552
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !557
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.dd, align 8, !tbaa !558
  %i.de = load ptr, ptr %i.ak, align 8, !tbaa !94
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef 32, i64 noundef 8)
          to label %bb.ad unwind label %bb.aj, !inline_history !502 ; 3 uses

bb.ad:                                            ; preds = %.thread
  store i64 %i.aj, ptr %i.dh, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, i8 0, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.117") align 8 %13, ptr noundef nonnull align 8 dereferenceable(1520) %2, ptr noundef nonnull align 8 dereferenceable(192) %10, ptr noundef nonnull %12)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.dk = load ptr, ptr %13, align 8, !tbaa !97   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !97 ; 2 uses
  %.not343374 = icmp eq ptr %i.dk, %i.dm
  br i1 %.not343374, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  br label %bb.al

._crit_edge378.loopexit:                          ; preds = %bb.aw
  %.pre = load ptr, ptr %13, align 8, !tbaa !560
  br label %._crit_edge378

._crit_edge378:                                   ; preds = %._crit_edge378.loopexit, %bb.ae
  %i.dp = phi i64 [ %i.jr, %._crit_edge378.loopexit ], [ 0, %bb.ae ] ; 5 uses
  %i.dq = phi ptr [ %i.jn, %._crit_edge378.loopexit ], [ null, %bb.ae ] ; 3 uses
  %i.dr = phi ptr [ %.pre, %._crit_edge378.loopexit ], [ %i.dk, %bb.ae ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge378
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !561
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #32
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit:      ; preds = %._crit_edge378, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.dx = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.dy = icmp slt i32 %i.dx, 1
  br i1 %i.dy, label %bb.ax, label %.thread337

bb.ag:                                            ; preds = %bb.x
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ah:                                            ; preds = %bb.y
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ai:                                            ; preds = %bb.ac, %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.aj:                                            ; preds = %.thread, %bb.az, %bb.ax
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ak:                                            ; preds = %bb.ad
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.al:                                            ; preds = %.lr.ph377, %bb.aw
  %i.ee = phi ptr [ null, %.lr.ph377 ], [ %i.jn, %bb.aw ] ; 3 uses
  %i.ef = phi i64 [ 0, %.lr.ph377 ], [ %i.jr, %bb.aw ] ; 8 uses
  %i.eg = phi i64 [ 0, %.lr.ph377 ], [ %i.jo, %bb.aw ] ; 2 uses
  %.sroa.0296.0375 = phi ptr [ %i.dk, %.lr.ph377 ], [ %i.js, %bb.aw ] ; 2 uses
  %i.eh = load i64, ptr %.sroa.0296.0375, align 8, !tbaa !99 ; 3 uses
  %.mask.i = and i64 %i.eh, -144115188075855872
  switch i64 %.mask.i, label %bb.as [
    i64 1008806316530991104, label %bb.am
    i64 1152921504606846976, label %bb.am
    i64 1297036692682702848, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al
  %i.ei = load ptr, ptr %i.dj, align 8, !tbaa !95 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !102 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 4 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !103 ; 2 uses
  %i.en = icmp eq i64 %i.ek, %i.em
  br i1 %i.en, label %bb.an, label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEE9push_backERKS2_.exit

bb.an:                                            ; preds = %bb.am
  %i.eo = icmp eq i64 %i.ek, 0
  %i.ep = shl i64 %i.ek, 1
  %spec.select.i = select i1 %i.eo, i64 4, i64 %i.ep ; 3 uses
  %.not.i.i = icmp ult i64 %i.ek, %spec.select.i
  br i1 %.not.i.i, label %bb.ao, label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEE9push_backERKS2_.exit

bb.ao:                                            ; preds = %bb.an
  %i.eq = shl i64 %spec.select.i, 3               ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE15allocate_objectIS3_EEPT_m.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = load ptr, ptr %i.ei, align 8, !tbaa !104 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !94
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.es, i64 noundef %i.eq, i64 noundef 8)
          to label %.noexc unwind label %bb.aq, !inline_history !503

.noexc:                                           ; preds = %bb.ap
  %.pre.i = load i64, ptr %i.el, align 8, !tbaa !103
  br label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE15allocate_objectIS3_EEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE15allocate_objectIS3_EEPT_m.exit.i.i: ; preds = %.noexc, %bb.ao
  %.pre24.i = phi i64 [ %.pre.i, %.noexc ], [ %i.ek, %bb.ao ] ; 12 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ew, %.noexc ], [ null, %bb.ao ] ; 14 uses
  %.not13.i.i = icmp eq i64 %.pre24.i, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !105 ; 15 uses
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check519

iter.check519:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE15allocate_objectIS3_EEPT_m.exit.i.i
  %min.iters.check504 = icmp ult i64 %.pre24.i, 4
  br i1 %min.iters.check504, label %.lr.ph.i.i.preheader, label %vector.memcheck498

vector.memcheck498:                               ; preds = %iter.check519
  %i.ex = shl i64 %.pre24.i, 3                    ; 2 uses
  %scevgep499 = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.ex
  %scevgep500 = getelementptr i8, ptr %.pre.i.i, i64 %i.ex
  %bound0501 = icmp ult ptr %.0.i.i.i.i.i, %scevgep500
  %bound1502 = icmp ult ptr %.pre.i.i, %scevgep499
  %found.conflict503 = and i1 %bound0501, %bound1502
  br i1 %found.conflict503, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check505

vector.main.loop.iter.check505:                   ; preds = %vector.memcheck498
  %min.iters.check506 = icmp ult i64 %.pre24.i, 16
  br i1 %min.iters.check506, label %vec.epilog.ph523, label %vector.ph507

vector.ph507:                                     ; preds = %vector.main.loop.iter.check505
  %i.ey = and i64 %.pre24.i, 12
  %n.vec508 = and i64 %.pre24.i, -16              ; 4 uses
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body509, %vector.ph507
  %index510 = phi i64 [ 0, %vector.ph507 ], [ %index.next515, %vector.body509 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %index510 ; 5 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index510 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 64 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.ez, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  store <4 x i64> zeroinitializer, ptr %i.fb, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  store <4 x i64> zeroinitializer, ptr %i.fc, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  store <4 x i64> zeroinitializer, ptr %i.fd, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %wide.load511 = load <4 x i64>, ptr %i.fa, align 8, !tbaa !99, !alias.scope !563
  %wide.load512 = load <4 x i64>, ptr %i.fe, align 8, !tbaa !99, !alias.scope !563
  %wide.load513 = load <4 x i64>, ptr %i.ff, align 8, !tbaa !99, !alias.scope !563
  %wide.load514 = load <4 x i64>, ptr %i.fg, align 8, !tbaa !99, !alias.scope !563
  store <4 x i64> %wide.load511, ptr %i.ez, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  store <4 x i64> %wide.load512, ptr %i.fb, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  store <4 x i64> %wide.load513, ptr %i.fc, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  store <4 x i64> %wide.load514, ptr %i.fd, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  %index.next515 = add nuw i64 %index510, 16      ; 2 uses
  %i.fh = icmp eq i64 %index.next515, %n.vec508
  br i1 %i.fh, label %middle.block516, label %vector.body509, !llvm.loop !507

middle.block516:                                  ; preds = %vector.body509
  %cmp.n517 = icmp eq i64 %.pre24.i, %n.vec508
  br i1 %cmp.n517, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check521

vec.epilog.iter.check521:                         ; preds = %middle.block516
  %min.epilog.iters.check522 = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check522, label %.lr.ph.i.i.preheader, label %vec.epilog.ph523, !prof !566

vec.epilog.ph523:                                 ; preds = %vector.main.loop.iter.check505, %vec.epilog.iter.check521
  %vec.epilog.resume.val518 = phi i64 [ %n.vec508, %vec.epilog.iter.check521 ], [ 0, %vector.main.loop.iter.check505 ]
  %n.vec524 = and i64 %.pre24.i, -4               ; 3 uses
  br label %vec.epilog.vector.body525

vec.epilog.vector.body525:                        ; preds = %vec.epilog.vector.body525, %vec.epilog.ph523
  %index526 = phi i64 [ %vec.epilog.resume.val518, %vec.epilog.ph523 ], [ %index.next528, %vec.epilog.vector.body525 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %index526 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index526
  store <4 x i64> zeroinitializer, ptr %i.fi, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  %wide.load527 = load <4 x i64>, ptr %i.fj, align 8, !tbaa !99, !alias.scope !563
  store <4 x i64> %wide.load527, ptr %i.fi, align 8, !tbaa !99, !alias.scope !562, !noalias !563
  %index.next528 = add nuw i64 %index526, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next528, %n.vec524
  br i1 %i.fk, label %vec.epilog.middle.block529, label %vec.epilog.vector.body525, !llvm.loop !508

vec.epilog.middle.block529:                       ; preds = %vec.epilog.vector.body525
  %cmp.n530 = icmp eq i64 %.pre24.i, %n.vec524
  br i1 %cmp.n530, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck498, %iter.check519, %vec.epilog.iter.check521, %vec.epilog.middle.block529
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check519 ], [ 0, %vector.memcheck498 ], [ %n.vec508, %vec.epilog.iter.check521 ], [ %n.vec524, %vec.epilog.middle.block529 ] ; 4 uses
  %i.fl = sub i64 %.pre24.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.fl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  store i64 0, ptr %i.fm, align 8, !tbaa !99
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !99
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !99
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !509

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.fp = sub i64 %indvars.iv.i.i.ph, %.pre24.i
  %i.fq = icmp ugt i64 %i.fp, -8
  br i1 %i.fq, label %._crit_edge.thread.i.i, label %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZN4pbrt23WavefrontPathIntegratorC2EPN4pstd3pmr15memory_resourceERNS_10BasicSceneE:bb.a
  %indvars.iv.next.i.i131.3 = add nuw nsw i64 %indvars.iv.i.i130, 4 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i125, i64 %indvars.iv.next.i.i131.3 ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i128, i64 %indvars.iv.next.i.i131.3
  store i64 0, ptr %i.jb, align 8, !tbaa !99
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !99
  store i64 %i.jd, ptr %i.jb, align 8, !tbaa !99
  %indvars.iv.next.i.i131.4 = add nuw nsw i64 %indvars.iv.i.i130, 5 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i125, i64 %indvars.iv.next.i.i131.4 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i128, i64 %indvars.iv.next.i.i131.4
  store i64 0, ptr %i.je, align 8, !tbaa !99
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !99
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !99
  %indvars.iv.next.i.i131.5 = add nuw nsw i64 %indvars.iv.i.i130, 6 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i125, i64 %indvars.iv.next.i.i131.5 ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i128, i64 %indvars.iv.next.i.i131.5
  store i64 0, ptr %i.jh, align 8, !tbaa !99
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !99
  store i64 %i.jj, ptr %i.jh, align 8, !tbaa !99
  %indvars.iv.next.i.i131.6 = add nuw nsw i64 %indvars.iv.i.i130, 7 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i125, i64 %indvars.iv.next.i.i131.6 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i128, i64 %indvars.iv.next.i.i131.6
  store i64 0, ptr %i.jk, align 8, !tbaa !99
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !99
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !99
  %indvars.iv.next.i.i131.7 = add nuw nsw i64 %indvars.iv.i.i130, 8 ; 2 uses
  %exitcond.not.i.i132.7 = icmp eq i64 %indvars.iv.next.i.i131.7, %.pre24.i124
  br i1 %exitcond.not.i.i132.7, label %._crit_edge.thread.i.i133, label %.lr.ph.i.i129, !llvm.loop !517

bb.aw:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE17deallocate_objectIS3_EEvPT_m.exit.i.i135, %bb.at, %bb.as
  %i.jn = phi ptr [ %.0.i.i.i.i.i125, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE17deallocate_objectIS3_EEvPT_m.exit.i.i135 ], [ %i.ee, %bb.at ], [ %i.ee, %bb.as ] ; 3 uses
  %i.jo = phi i64 [ %spec.select.i120, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE17deallocate_objectIS3_EEvPT_m.exit.i.i135 ], [ %i.ef, %bb.at ], [ %i.eg, %bb.as ]
  %i.jp = phi i64 [ %.pre2.i136, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5LightEE17deallocate_objectIS3_EEvPT_m.exit.i.i135 ], [ %i.ef, %bb.at ], [ %i.ef, %bb.as ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jp
  store i64 %i.eh, ptr %i.jq, align 8, !tbaa !99
  %i.jr = add i64 %i.jp, 1                        ; 3 uses
  store i64 %i.jr, ptr %i.do, align 8, !tbaa !103
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0296.0375, i64 8 ; 2 uses
  %.not343 = icmp eq ptr %i.js, %i.dm
  br i1 %.not343, label %._crit_edge378.loopexit, label %bb.al

bb.ax:                                            ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 131, ptr noundef nonnull @.str.9)
          to label %bb.ay unwind label %bb.aj

bb.ay:                                            ; preds = %bb.ax
  %.pr336 = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.jt = icmp slt i32 %.pr336, 1
  br i1 %i.jt, label %bb.az, label %.thread337

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.10)
          to label %.thread337 unwind label %bb.aj

.thread337:                                       ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit, %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store i32 0, ptr %i.ju, align 8, !tbaa !556
  %i.jv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr null, ptr %i.jv, align 8, !tbaa !92
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr %i.ju, ptr %i.jw, align 8, !tbaa !552
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.ju, ptr %i.jx, align 8, !tbaa !557
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.jy, align 8, !tbaa !558
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN4pbrt10BasicScene15CreateMaterialsERKNS_13NamedTexturesEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8MaterialESt4lessISA_ESaISt4pairIKSA_SB_EEEPSt6vectorISB_SaISB_EE(ptr noundef nonnull align 8 dereferenceable(1520) %2, ptr noundef nonnull align 8 dereferenceable(192) %10, ptr noundef nonnull %14, ptr noundef nonnull %15)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.thread337
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  store i8 0, ptr %i.kb, align 1, !tbaa !570
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.kc = load ptr, ptr %15, align 8, !tbaa !571  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !571 ; 2 uses
  %.not344379 = icmp eq ptr %i.kc, %i.ke
  br i1 %.not344379, label %._crit_edge383, label %.lr.ph382

._crit_edge383:                                   ; preds = %bb.bc, %bb.ba
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !552 ; 2 uses
  %.not345384 = icmp eq ptr %i.kf, %i.ju
  br i1 %.not345384, label %._crit_edge388, label %.lr.ph387

bb.bb:                                            ; preds = %bb.bo, %bb.bk, %bb.bg, %.thread337
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.lr.ph382:                                        ; preds = %bb.ba, %bb.bc
  %.sroa.0275.0380 = phi ptr [ %i.ki, %bb.bc ], [ %i.kc, %bb.ba ] ; 2 uses
  %i.kh = load i64, ptr %.sroa.0275.0380, align 8, !tbaa !109
  store i64 %i.kh, ptr %16, align 8, !tbaa !109
  invoke fastcc void @_ZN4pbrtL19updateMaterialNeedsENS_8MaterialEPN4pstd5arrayIbLi12EEES4_PbS5_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %16, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.kb, ptr noundef %i.al)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.lr.ph382
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0275.0380, i64 8 ; 2 uses
  %.not344 = icmp eq ptr %i.ki, %i.ke
  br i1 %.not344, label %._crit_edge383, label %.lr.ph382

bb.bd:                                            ; preds = %.lr.ph382
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

._crit_edge388:                                   ; preds = %bb.be, %._crit_edge383
  %i.kk = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.kl = icmp slt i32 %i.kk, 1
  br i1 %i.kl, label %bb.bg, label %bb.bh

.lr.ph387:                                        ; preds = %._crit_edge383, %bb.be
  %.sroa.0270.0385 = phi ptr [ %i.ko, %bb.be ], [ %i.kf, %._crit_edge383 ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0270.0385, i64 64
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !109
  store i64 %i.kn, ptr %17, align 8, !tbaa !109
  invoke fastcc void @_ZN4pbrtL19updateMaterialNeedsENS_8MaterialEPN4pstd5arrayIbLi12EEES4_PbS5_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %17, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.kb, ptr noundef %i.al)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.lr.ph387
  %i.ko = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0270.0385) #31 ; 2 uses
  %.not345 = icmp eq ptr %i.ko, %i.ju
  br i1 %.not345, label %._crit_edge388, label %.lr.ph387

bb.bf:                                            ; preds = %.lr.ph387
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.bg:                                            ; preds = %._crit_edge388
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.11)
          to label %bb.bh unwind label %bb.bb

bb.bh:                                            ; preds = %bb.bg, %._crit_edge388
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  invoke void @_ZN4pbrt10BasicScene9GetCameraEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Camera") align 8 %18, ptr noundef nonnull align 8 dereferenceable(1520) %2)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.kq = load i64, ptr %18, align 8, !tbaa !110  ; 2 uses
  store i64 %i.kq, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.kr = and i64 %i.kq, 144115188075855871
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 832
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !111, !noalias !572 ; 2 uses
  store i64 %i.ku, ptr %i.f, align 8, !tbaa !111
  %i.kv = and i64 %i.ku, 144115188075855871
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !573, !noalias !574
  store i64 %i.ky, ptr %i.e, align 8, !tbaa !573
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  invoke void @_ZN4pbrt10BasicScene10GetSamplerEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Sampler") align 8 %19, ptr noundef nonnull align 8 dereferenceable(1520) %2)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.kz = load i64, ptr %19, align 8, !tbaa !112
  store i64 %i.kz, ptr %i.g, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.la = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !114
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 10
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !117, !range !118, !noundef !119
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 165, ptr noundef nonnull @.str.12) #33
          to label %bb.bl unwind label %bb.bb

bb.bl:                                            ; preds = %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bh
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ew

bb.bn:                                            ; preds = %bb.bi
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.ew

bb.bo:                                            ; preds = %bb.bj
  %i.lg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.bp unwind label %bb.bb     ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN4pbrt12CPUAggregateC1ERNS_10BasicSceneERNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS6_3pmr21polymorphic_allocatorIS8_EEEESt4lessIiESaISt4pairIKiSD_EEERKS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESE_ISS_ESaISG_IKSS_ST_EEERKS5_ISS_NS_8MaterialESU_SaISG_ISV_S11_EEERKSt6vectorIS11_SaIS11_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(1520) %2, ptr noundef nonnull align 8 dereferenceable(192) %10, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.lg, ptr %i.o, align 8, !tbaa !120
  %.idx = shl nuw nsw i64 %i.dp, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx
  %.not389 = icmp eq i64 %i.dp, 0
  br i1 %.not389, label %._crit_edge393, label %.lr.ph392

bb.br:                                            ; preds = %bb.bp
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 16) #32
  br label %bb.ew

.lr.ph392:                                        ; preds = %bb.bq, %bb.bt
  %.084390 = phi ptr [ %i.lo, %bb.bt ], [ %i.dq, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  store i64 0, ptr %20, align 8, !tbaa !99
  %i.lj = load i64, ptr %.084390, align 8, !tbaa !99
  store i64 %i.lj, ptr %20, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.lk = load ptr, ptr %i.o, align 8, !tbaa !120 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !94
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8
  invoke void %i.ln(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.lk)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %.lr.ph392
  invoke void @_ZN4pbrt5Light10PreprocessERKNS_7Bounds3IfEE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(24) %21)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.lo = getelementptr inbounds nuw i8, ptr %.084390, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.lo, %i.lh
  br i1 %.not, label %._crit_edge393, label %.lr.ph392

bb.bu:                                            ; preds = %bb.bs, %.lr.ph392
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.ew

._crit_edge393:                                   ; preds = %bb.bt, %bb.bq
  %29 = icmp ne i64 %i.dp, 0                      ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !552 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not346394 = icmp eq ptr %i.lr, %i.ls
  br i1 %.not346394, label %._crit_edge399, label %.lr.ph398

._crit_edge399:                                   ; preds = %bb.bw, %._crit_edge393
  %.083.in.lcssa = phi i1 [ %29, %._crit_edge393 ], [ %i.lw, %bb.bw ]
  br i1 %.083.in.lcssa, label %bb.ca, label %bb.by

bb.bv:                                            ; preds = %bb.cb, %bb.by
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.lr.ph398:                                        ; preds = %._crit_edge393, %bb.bw
  %.083.in396 = phi i1 [ %i.lw, %bb.bw ], [ %29, %._crit_edge393 ]
  %.sroa.0264.0395 = phi ptr [ %i.lx, %bb.bw ], [ %i.lr, %._crit_edge393 ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0264.0395, i64 64
  %i.lv = invoke noundef zeroext i1 @_ZNK4pbrt6Medium10IsEmissiveEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lu)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %.lr.ph398
  %i.lw = or i1 %.083.in396, %i.lv                ; 2 uses
  %i.lx = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0264.0395) #31 ; 2 uses
  %.not346 = icmp eq ptr %i.lx, %i.ls
  br i1 %.not346, label %._crit_edge399, label %.lr.ph398

bb.bx:                                            ; preds = %.lr.ph398
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.by:                                            ; preds = %._crit_edge399
  invoke void @_ZN4pbrt9ErrorExitIJEEEvPKcDpOT_(ptr noundef nonnull @.str.13) #33
          to label %bb.bz unwind label %bb.bv

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %._crit_edge399
  %i.lz = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.ma = icmp slt i32 %i.lz, 1
  br i1 %i.ma, label %bb.cb, label %._crit_edge.i.i142

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.14)
          to label %._crit_edge.i.i142 unwind label %bb.bv

._crit_edge.i.i142:                               ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.mc = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.mc, ptr %23, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mc, ptr noundef nonnull align 1 dereferenceable(12) @.str.15, i64 12, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 12, ptr %i.md, align 8, !tbaa !83
  %i.me = getelementptr inbounds nuw i8, ptr %23, i64 28
  store i8 0, ptr %i.me, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.mf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.mf, ptr %24, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.mf, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 3, ptr %i.mg, align 8, !tbaa !83
  %i.mh = getelementptr inbounds nuw i8, ptr %24, i64 19
  store i8 0, ptr %i.mh, align 1, !tbaa !122
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(108) %i.mb, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %._crit_edge.i.i142
  %i.mi = load ptr, ptr %24, align 8, !tbaa !123  ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.mf
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cc
  %i.mk = load i64, ptr %i.mf, align 8, !tbaa !122
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.mm = load ptr, ptr %23, align 8, !tbaa !123  ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.mc
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.mo = load i64, ptr %i.mc, align 8, !tbaa !122
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  %i.mq = icmp eq i64 %i.dp, 1
  br i1 %i.mq, label %bb.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.mr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !83
  %i.mt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef %i.ms, ptr noundef nonnull @.str.17, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.cf ; 0 uses

bb.ce:                                            ; preds = %._crit_edge.i.i142
  %i.mu = landingpad { ptr, i32 }
          cleanup
  %i.mv = load ptr, ptr %24, align 8, !tbaa !123  ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.mf
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.ce
  %i.mx = load i64, ptr %i.mf, align 8, !tbaa !122
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.mz = load ptr, ptr %23, align 8, !tbaa !123  ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.mc
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.nb = load i64, ptr %i.mc, align 8, !tbaa !122
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.cf:                                            ; preds = %.invoke, %bb.cd, %bb.ch
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  invoke void @_ZN4pbrt12LightSampler6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd4spanIKNS_5LightEEENS9_3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::LightSampler") align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr %i.dq, i64 %i.dp, ptr %i.ak)
          to label %bb.cg unwind label %bb.cm

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ne = load i64, ptr %25, align 8, !tbaa !71
  store i64 %i.ne, ptr %i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  %i.nf = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !89
  %i.ng = icmp slt i32 %i.nf, 1
  br i1 %i.ng, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 187, ptr noundef nonnull @.str.18)
          to label %bb.ci unwind label %bb.cf

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.nh = load ptr, ptr %2, align 8, !tbaa !124   ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !83
  switch i64 %i.nj, label %_ZNK4pbrt14InternedStringneEPKc.exit159.thread [
    i64 4, label %_ZNK4pbrt14InternedStringneEPKc.exit
    i64 7, label %_ZNK4pbrt14InternedStringneEPKc.exit159
  ]

_ZNK4pbrt14InternedStringneEPKc.exit:             ; preds = %bb.ci
  %i.nk = load ptr, ptr %i.nh, align 8, !tbaa !123
  %i.nl = load i32, ptr %i.nk, align 1
  %i.nm = icmp ne i32 %i.nl, 1752457584
  %i.nn = zext i1 %i.nm to i32
  %.not347 = icmp eq i32 %i.nn, 0
  br i1 %.not347, label %_ZNK4pbrt14InternedStringneEPKc.exit.thread338, label %_ZNK4pbrt14InternedStringneEPKc.exit159.thread

_ZNK4pbrt14InternedStringneEPKc.exit159:          ; preds = %bb.ci
  %i.no = load ptr, ptr %i.nh, align 8, !tbaa !123 ; 2 uses
  %i.np = load i32, ptr %i.no, align 1
  %i.nq = xor i32 %i.np, 1886154614
  %i.nr = getelementptr i8, ptr %i.no, i64 3
  %i.ns = load i32, ptr %i.nr, align 1
  %i.nt = xor i32 %i.ns, 1752457584
  %i.nu = or i32 %i.nq, %i.nt
  %i.nv = icmp ne i32 %i.nu, 0
  %i.nw = zext i1 %i.nv to i32
  %.not348 = icmp eq i32 %i.nw, 0
  br i1 %.not348, label %_ZNK4pbrt14InternedStringneEPKc.exit.thread338, label %_ZNK4pbrt14InternedStringneEPKc.exit159.thread

_ZNK4pbrt14InternedStringneEPKc.exit159.thread:   ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit, %bb.ci, %_ZNK4pbrt14InternedStringneEPKc.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.nx, ptr %6, align 8, !tbaa !121, !alias.scope !575
  %i.ny = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ny, align 8, !tbaa !83, !alias.scope !575
  store i8 0, ptr %i.nx, align 8, !tbaa !122, !alias.scope !575
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_14InternedStringEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN4pbrt12StringPrintfIJRNS_14InternedStringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.cj

bb.cj:                                            ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit159.thread
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oa = load ptr, ptr %6, align 8, !tbaa !123, !alias.scope !575 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.nx
  br i1 %i.ob, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cj
  %i.oc = load i64, ptr %i.nx, align 8, !tbaa !122, !alias.scope !575
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #32
  br label %.body

_ZN4pbrt12StringPrintfIJRNS_14InternedStringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit159.thread
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.of = load ptr, ptr %6, align 8, !tbaa !123
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %i.oe, ptr noundef %i.of)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_14InternedStringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.og = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
end_hunk_1
