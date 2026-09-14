Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/read?download=true
inline.NumInlined: 46
inline.NumDeleted: 16
begin_hunk_0_@redisReaderGetReply:bb.a
  br i1 %or.cond.i41.i, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.kw, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %bb.eh
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ir, i64 5
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !35
  %.not55.i.i = icmp eq i8 %i.kz, 58
  br i1 %.not55.i.i, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eg
  %i.la = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i67.i.i, label %__redisReaderSetError.exit70.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lb = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %.not22.i68.i.i = icmp eq ptr %i.lb, null
  br i1 %.not22.i68.i.i, label %__redisReaderSetError.exit70.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !31 ; 2 uses
  %.not23.i69.i.i = icmp eq ptr %i.ld, null
  br i1 %.not23.i69.i.i, label %__redisReaderSetError.exit70.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void %i.ld(ptr noundef nonnull %i.la) #11, !inline_history !55
  store ptr null, ptr %i.ae, align 8, !tbaa !29
  %.pre109.i.i = load ptr, ptr %i.z, align 8, !tbaa !20
  br label %__redisReaderSetError.exit70.i.i

__redisReaderSetError.exit70.i.i:                 ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej
  %i.le = phi ptr [ %i.ij, %bb.ej ], [ %i.ij, %bb.ek ], [ %i.ij, %bb.el ], [ %.pre109.i.i, %bb.em ]
  call void @hi_sdsfree(ptr noundef %i.le) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !28
  store i32 4, ptr %0, align 8, !tbaa !33
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(75) %i.lf, ptr noundef nonnull align 1 dereferenceable(75) @.str.28, i64 75, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 79
  store i8 0, ptr %i.lg, align 1, !tbaa !35
  br label %processItem.exit.thread.thread

bb.en:                                            ; preds = %bb.ei, %bb.eh
  %i.lh = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %.not56.i.i = icmp eq ptr %i.lh, null
  br i1 %.not56.i.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !74 ; 2 uses
  %.not57.i.i = icmp eq ptr %i.li, null
  br i1 %.not57.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.lk = call ptr %i.li(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.lj, i64 noundef %storemerge.sink.i8082.i.i) #11, !inline_history !56
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo, %bb.en
  %i.ll = zext nneg i32 %i.ii to i64
  %i.lm = inttoptr i64 %i.ll to ptr
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.ef
  %.2.i.i = phi ptr [ %i.lm, %bb.eq ], [ %i.lk, %bb.ep ], [ %i.ks, %bb.ef ] ; 2 uses
  %.045.i.i = phi i64 [ %i.ku, %bb.eq ], [ %i.ku, %bb.ep ], [ %i.jc, %bb.ef ]
  %i.ln = icmp eq ptr %.2.i.i, null
  br i1 %i.ln, label %bb.es, label %..thread83_crit_edge.i.i

..thread83_crit_edge.i.i:                         ; preds = %bb.er
  %.pre107.i.i = load i64, ptr %i.y, align 8, !tbaa !39
  %.pre108.i.i = load i32, ptr %i.i, align 4, !tbaa !28
  br label %.thread83.i.i

bb.es:                                            ; preds = %bb.er
  %i.lo = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i43.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i43.i, label %__redisReaderSetErrorOOM.exit.i46.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.lp = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %.not22.i.i.i44.i = icmp eq ptr %i.lp, null
  br i1 %.not22.i.i.i44.i, label %__redisReaderSetErrorOOM.exit.i46.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !31 ; 2 uses
  %.not23.i.i.i45.i = icmp eq ptr %i.lr, null
  br i1 %.not23.i.i.i45.i, label %__redisReaderSetErrorOOM.exit.i46.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void %i.lr(ptr noundef nonnull %i.lo) #11, !inline_history !57
  store ptr null, ptr %i.ae, align 8, !tbaa !29
  br label %__redisReaderSetErrorOOM.exit.i46.i

__redisReaderSetErrorOOM.exit.i46.i:              ; preds = %bb.ev, %bb.eu, %bb.et, %bb.es
  %i.ls = load ptr, ptr %i.z, align 8, !tbaa !20
  call void @hi_sdsfree(ptr noundef %i.ls) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !28
  store i32 5, ptr %0, align 8, !tbaa !33
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.lt, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.lu, align 1, !tbaa !35
  br label %processItem.exit.thread.thread

.thread83.i.i:                                    ; preds = %..thread83_crit_edge.i.i, %bb.ee, %bb.ed
  %i.lv = phi i32 [ %.pre108.i.i, %..thread83_crit_edge.i.i ], [ %i.af, %bb.ed ], [ %i.af, %bb.ee ] ; 3 uses
  %i.lw = phi i64 [ %.pre107.i.i, %..thread83_crit_edge.i.i ], [ %i.ik, %bb.ed ], [ %i.ik, %bb.ee ]
  %.04587.i.i = phi i64 [ %.045.i.i, %..thread83_crit_edge.i.i ], [ %i.jc, %bb.ed ], [ %i.jc, %bb.ee ]
  %.286.i.i = phi ptr [ %.2.i.i, %..thread83_crit_edge.i.i ], [ inttoptr (i64 4 to ptr), %bb.ed ], [ inttoptr (i64 4 to ptr), %bb.ee ]
  %i.lx = add i64 %.04587.i.i, %i.lw
  store i64 %i.lx, ptr %i.y, align 8, !tbaa !39
  %i.ly = icmp eq i32 %i.lv, 0
  br i1 %i.ly, label %.lr.ph.i71.thread.i.i, label %bb.ew

.lr.ph.i71.thread.i.i:                            ; preds = %.thread83.i.i
  store ptr %.286.i.i, ptr %i.ae, align 8, !tbaa !29
  br label %._crit_edge.i42.i

bb.ew:                                            ; preds = %.thread83.i.i
  %i.lz = icmp sgt i32 %i.lv, -1
  br i1 %i.lz, label %.lr.ph.i.i, label %processItem.exit

.lr.ph.i.i:                                       ; preds = %bb.ew
  %i.ma = load ptr, ptr %i.x, align 8, !tbaa !21
  br label %bb.ex

._crit_edge.i42.i:                                ; preds = %bb.fa, %.lr.ph.i71.thread.i.i
  store i32 -1, ptr %i.i, align 4, !tbaa !28
  br label %processItem.exit.thread

bb.ex:                                            ; preds = %bb.fa, %.lr.ph.i.i
  %i.mb = phi i32 [ %i.lv, %.lr.ph.i.i ], [ %i.mp, %bb.fa ] ; 2 uses
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mc ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 -8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !24 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !41
  switch i32 %i.mg, label %bb.ey [
    i32 2, label %bb.ez
    i32 9, label %bb.ez
    i32 10, label %bb.ez
    i32 12, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 254, ptr noundef nonnull @__PRETTY_FUNCTION__.moveToNextTask) #14
  unreachable

bb.ez:                                            ; preds = %bb.ex, %bb.ex, %bb.ex, %bb.ex
  %i.mh = load ptr, ptr %i.md, align 8, !tbaa !24 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !43 ; 2 uses
  %i.mk = sext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !42 ; 2 uses
  %i.mn = add nsw i64 %i.mm, -1
  %i.mo = icmp eq i64 %i.mn, %i.mk
  br i1 %i.mo, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.mp = add nsw i32 %i.mb, -1                   ; 3 uses
  store i32 %i.mp, ptr %i.i, align 4, !tbaa !28
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %._crit_edge.i42.i, label %bb.ex

bb.fb:                                            ; preds = %bb.ez
  %i.mr = icmp sgt i64 %i.mm, %i.mk
  br i1 %i.mr, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 259, ptr noundef nonnull @__PRETTY_FUNCTION__.moveToNextTask) #14
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store i32 -1, ptr %i.mh, align 8, !tbaa !41
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i64 -1, ptr %i.mt, align 8, !tbaa !42
  %i.mu = add nsw i32 %i.mj, 1
  store i32 %i.mu, ptr %i.ms, align 8, !tbaa !43
  br label %processItem.exit

.thread109.sink.split.i:                          ; preds = %bb.r, %bb.o, %bb.n, %bb.i
  %.sink308.i = phi i32 [ 12, %bb.r ], [ 9, %bb.n ], [ 10, %bb.o ], [ 2, %bb.i ]
  store i32 %.sink308.i, ptr %i.aj, align 8, !tbaa !41
  br label %.thread109.i

.thread109.i:                                     ; preds = %.thread109.sink.split.i, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.mv = load i32, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.mw = add nsw i32 %i.mv, -1
  %i.mx = icmp eq i32 %i.af, %i.mw
  br i1 %i.mx, label %bb.fe, label %redisReaderGrow.exit.thread.i.i

bb.fe:                                            ; preds = %.thread109.i
  %i.my = add nuw nsw i32 %i.mv, 9                ; 3 uses
  %2 = zext nneg i32 %i.my to i64
  %i.mz = shl nuw nsw i64 %2, 3
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 16), align 8, !tbaa !75
  %i.nb = call ptr %i.na(ptr noundef nonnull %i.ag, i64 noundef range(i64 -17179869112, 17179869177) %i.mz) #11, !inline_history !58 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %.loopexit15.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store ptr %i.nb, ptr %i.x, align 8, !tbaa !21
  %i.nd = load i32, ptr %i.aa, align 8, !tbaa !22
  %i.ne = icmp slt i32 %i.nd, %i.my
  br i1 %i.ne, label %.lr.ph.i.i104.i, label %redisReaderGrow.exit.thread.i.i

.lr.ph.i.i104.i:                                  ; preds = %bb.ff, %bb.fg
  %i.nf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 8), align 8, !tbaa !12
  %i.ng = call ptr %i.nf(i64 noundef 1, i64 noundef 48) #11, !inline_history !59 ; 2 uses
  %i.nh = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.ni = load i32, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.nj
  store ptr %i.ng, ptr %i.nk, align 8, !tbaa !24
  %i.nl = icmp eq ptr %i.ng, null
  br i1 %i.nl, label %.loopexit15.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.i.i104.i
  %i.nm = add nsw i32 %i.ni, 1                    ; 2 uses
  store i32 %i.nm, ptr %i.aa, align 8, !tbaa !22
  %i.nn = icmp slt i32 %i.nm, %i.my
  br i1 %i.nn, label %.lr.ph.i.i104.i, label %redisReaderGrow.exit.thread.i.i

.loopexit15.i.i.i:                                ; preds = %bb.fe, %.lr.ph.i.i104.i
  %i.no = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i, label %redisReaderGrow.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %.loopexit15.i.i.i
  %i.np = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq ptr %i.np, null
  br i1 %.not22.i.i.i.i.i, label %redisReaderGrow.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 48
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !31 ; 2 uses
  %.not23.i.i.i.i.i = icmp eq ptr %i.nr, null
  br i1 %.not23.i.i.i.i.i, label %redisReaderGrow.exit.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void %i.nr(ptr noundef nonnull %i.no) #11, !inline_history !60
  store ptr null, ptr %i.ae, align 8, !tbaa !29
  br label %redisReaderGrow.exit.i.i

redisReaderGrow.exit.i.i:                         ; preds = %bb.fj, %bb.fi, %bb.fh, %.loopexit15.i.i.i
  %i.ns = load ptr, ptr %i.z, align 8, !tbaa !20
  call void @hi_sdsfree(ptr noundef %i.ns) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 4, !tbaa !28
  store i32 5, ptr %0, align 8, !tbaa !33
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.nt, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.nu, align 1, !tbaa !35
  br label %processItem.exit.thread.thread

redisReaderGrow.exit.thread.i.i:                  ; preds = %bb.fg, %bb.ff, %.thread109.i
  %i.nv = load ptr, ptr %i.z, align 8, !tbaa !20  ; 8 uses
  %i.nw = load i64, ptr %i.y, align 8, !tbaa !39  ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nw ; 6 uses
  %i.ny = load i64, ptr %i.f, align 8, !tbaa !34
  %i.nz = sub i64 %i.ny, %i.nw                    ; 2 uses
  %i.oa = icmp ult i64 %i.nz, 2
  br i1 %i.oa, label %processItem.exit.thread, label %bb.fk

bb.fk:                                            ; preds = %redisReaderGrow.exit.thread.i.i
  %i.ob = add i64 %i.nz, -1                       ; 2 uses
  %i.oc = call ptr @memchr(ptr noundef %i.nx, i32 noundef 13, i64 noundef %i.ob) #13 ; 2 uses
  %.not16.i.i.i62.i = icmp eq ptr %i.oc, null
  br i1 %.not16.i.i.i62.i, label %processItem.exit.thread, label %.lr.ph.i.i.i63.i

.lr.ph.i.i.i63.i:                                 ; preds = %bb.fk, %bb.fl
  %i.od = phi ptr [ %i.ok, %bb.fl ], [ %i.oc, %bb.fk ] ; 2 uses
  %.018.i.i.i64.i = phi i64 [ %i.oj, %bb.fl ], [ %i.ob, %bb.fk ]
  %.01117.i.i.i65.i = phi ptr [ %i.oe, %bb.fl ], [ %i.nx, %bb.fk ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1 ; 4 uses
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !35
  %i.og = icmp eq i8 %i.of, 10
  br i1 %i.og, label %readLine.exit.i68.i, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i.i63.i
  %i.oh = ptrtoint ptr %i.oe to i64
  %i.oi = ptrtoint ptr %.01117.i.i.i65.i to i64
  %.neg.i.i.i66.i = sub i64 %.018.i.i.i64.i, %i.oh
  %i.oj = add i64 %.neg.i.i.i66.i, %i.oi          ; 2 uses
  %i.ok = call ptr @memchr(ptr noundef nonnull %i.oe, i32 noundef 13, i64 noundef %i.oj) #13 ; 2 uses
  %.not.i.i.i67.i = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i67.i, label %processItem.exit.thread, label %.lr.ph.i.i.i63.i

readLine.exit.i68.i:                              ; preds = %.lr.ph.i.i.i63.i
  %i.ol = ptrtoint ptr %i.od to i64
  %i.om = ptrtoint ptr %i.nx to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = shl i64 %i.on, 32                       ; 4 uses
  %sext.i.i69.i = add i64 %i.oo, 8589934592
  %i.op = ashr exact i64 %sext.i.i69.i, 32
  %i.oq = add i64 %i.op, %i.nw
  store i64 %i.oq, ptr %i.y, align 8, !tbaa !39
  %.not.i70.i = icmp eq ptr %i.nv, null
  br i1 %.not.i70.i, label %processItem.exit.thread, label %bb.fm

bb.fm:                                            ; preds = %readLine.exit.i68.i
  %i.or = ashr exact i64 %i.oo, 32                ; 2 uses
  %i.os = icmp eq i64 %i.oo, 0
  br i1 %i.os, label %.loopexit.i76.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ot = icmp eq i64 %i.oo, 4294967296
  %i.ou = load i8, ptr %i.nx, align 1, !tbaa !35  ; 6 uses
  br i1 %i.ot, label %bb.fo, label %.thread.i.i71.i

bb.fo:                                            ; preds = %bb.fn
  switch i8 %i.ou, label %.thread72.i.i100.i [
    i8 48, label %string2ll.exit.thread83.i.i
    i8 45, label %.loopexit.i76.i
  ]

.thread.i.i71.i:                                  ; preds = %bb.fn
  %.not59.i.i72.i = icmp eq i8 %i.ou, 45          ; 2 uses
  br i1 %.not59.i.i72.i, label %.thread62.i.i98.i, label %bb.fp

.thread62.i.i98.i:                                ; preds = %.thread.i.i71.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nx, i64 1 ; 2 uses
  %.pre.i.i99.i = load i8, ptr %i.ov, align 1, !tbaa !35
  br label %bb.fp

bb.fp:                                            ; preds = %.thread62.i.i98.i, %.thread.i.i71.i
  %i.ow = phi i8 [ %.pre.i.i99.i, %.thread62.i.i98.i ], [ %i.ou, %.thread.i.i71.i ] ; 2 uses
  %.046.i.i73.i = phi ptr [ %i.ov, %.thread62.i.i98.i ], [ %i.nx, %.thread.i.i71.i ]
  %.045.i.i74.i = phi i64 [ 2, %.thread62.i.i98.i ], [ 1, %.thread.i.i71.i ] ; 2 uses
  %i.ox = add i8 %i.ow, -49
  %or.cond56.i.i75.i = icmp ult i8 %i.ox, 9
  br i1 %or.cond56.i.i75.i, label %bb.fq, label %.loopexit.i76.i

.thread72.i.i100.i:                               ; preds = %bb.fo
  %i.oy = add i8 %i.ou, -49
  %or.cond5676.i.i101.i = icmp ult i8 %i.oy, 9
  br i1 %or.cond5676.i.i101.i, label %.thread91.i.i102.i, label %bb.fr

.thread91.i.i102.i:                               ; preds = %.thread72.i.i100.i
  %narrow84.i.i103.i = add nsw i8 %i.ou, -48
  %i.oz = zext nneg i8 %narrow84.i.i103.i to i64
  br label %string2ll.exit.thread83.i.i

bb.fq:                                            ; preds = %bb.fp
  %narrow.i.i81.i = add nsw i8 %i.ow, -48
  %i.pa = zext nneg i8 %narrow.i.i81.i to i64     ; 2 uses
  %i.pb = icmp ult i64 %.045.i.i74.i, %i.or
  br i1 %i.pb, label %.lr.ph.i64.i.i, label %.critedge58.i.i82.i

bb.fr:                                            ; preds = %.thread72.i.i100.i
  %i.pc = icmp eq i8 %i.ou, 48
  br i1 %i.pc, label %string2ll.exit.thread83.i.i, label %.loopexit.i76.i

.lr.ph.i64.i.i:                                   ; preds = %bb.fq, %bb.ft
  %.14769.pn.i.i90.i = phi ptr [ %.14769.i.i93.i, %bb.ft ], [ %.046.i.i73.i, %bb.fq ]
  %.068.i.i91.i = phi i64 [ %i.pk, %bb.ft ], [ %i.pa, %bb.fq ] ; 2 uses
  %.167.i.i92.i = phi i64 [ %i.pl, %bb.ft ], [ %.045.i.i74.i, %bb.fq ]
  %.14769.i.i93.i = getelementptr inbounds nuw i8, ptr %.14769.pn.i.i90.i, i64 1 ; 2 uses
  %i.pd = load i8, ptr %.14769.i.i93.i, align 1, !tbaa !35 ; 2 uses
  %i.pe = add i8 %i.pd, -58
  %or.cond57.i.i94.i = icmp ult i8 %i.pe, -10
  %i.pf = icmp ugt i64 %.068.i.i91.i, 1844674407370955161
  %or.cond64.i.i95.i = select i1 %or.cond57.i.i94.i, i1 true, i1 %i.pf
  br i1 %or.cond64.i.i95.i, label %.loopexit.i76.i, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i64.i.i
  %i.pg = mul nuw i64 %.068.i.i91.i, 10           ; 2 uses
  %narrow55.i.i96.i = add nsw i8 %i.pd, -48
  %i.ph = zext nneg i8 %narrow55.i.i96.i to i64   ; 2 uses
  %i.pi = xor i64 %i.ph, -1
  %i.pj = icmp ugt i64 %i.pg, %i.pi
  br i1 %i.pj, label %.loopexit.i76.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.pk = add i64 %i.pg, %i.ph                    ; 2 uses
  %i.pl = add i64 %.167.i.i92.i, 1                ; 2 uses
  %exitcond.not.i.i97.i = icmp eq i64 %i.pl, %i.or
  br i1 %exitcond.not.i.i97.i, label %.critedge58.i.i82.i, label %.lr.ph.i64.i.i

.critedge58.i.i82.i:                              ; preds = %bb.ft, %bb.fq
  %.0.lcssa.i.i83.i = phi i64 [ %i.pa, %bb.fq ], [ %i.pk, %bb.ft ] ; 4 uses
  br i1 %.not59.i.i72.i, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %.critedge58.i.i82.i
  %i.pm = icmp ugt i64 %.0.lcssa.i.i83.i, -9223372036854775808
  br i1 %i.pm, label %.loopexit.i76.i, label %string2ll.exit.i89.i

bb.fv:                                            ; preds = %.critedge58.i.i82.i
  %i.pn = icmp slt i64 %.0.lcssa.i.i83.i, 0
  br i1 %i.pn, label %.loopexit.i76.i, label %string2ll.exit.thread83.i.i

.loopexit.i76.i:                                  ; preds = %bb.fv, %bb.fu, %bb.fr, %bb.fp, %bb.fo, %bb.fm, %bb.fs, %.lr.ph.i64.i.i
  %i.po = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
end_hunk_0
