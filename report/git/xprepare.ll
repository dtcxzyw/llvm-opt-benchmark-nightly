Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xprepare?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
begin_hunk_0_@xdl_prepare_env:bb.a
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !32
  br label %xdl_init_classifier.exit.thread.sink.split.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.al = call fastcc i32 @xdl_prepare_ctx(i32 noundef 2, ptr noundef %1, i64 noundef %i.h, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull %i.ak)
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  call void @free(ptr noundef %i.ao) #8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -1
  call void @free(ptr noundef nonnull %i.ar) #8
  %i.as = load ptr, ptr %3, align 8, !tbaa !20
  call void @free(ptr noundef %i.as) #8
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void @free(ptr noundef %i.at) #8
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !32
  br label %xdl_init_classifier.exit.thread.sink.split.sink.split

bb.i:                                             ; preds = %bb.g
  %i.av = load i64, ptr %2, align 8, !tbaa !25
  %i.aw = trunc i64 %i.av to i16
  %trunc = and i16 %i.aw, -16383
  switch i16 %trunc, label %bb.j [
    i16 16384, label %bb.ao
    i16 -32768, label %bb.ao
  ]

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !36 ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bc) ; 4 uses
  %i.bd = icmp sgt i64 %..i.i, 0
  br i1 %i.bd, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.044.i.i = phi ptr [ %i.bk, %bb.k ], [ %i.ay, %bb.j ] ; 2 uses
  %.03443.i.i = phi ptr [ %i.bj, %bb.k ], [ %i.ax, %bb.j ] ; 2 uses
  %.03642.i.i = phi i64 [ %i.bi, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03443.i.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !39
  %.not.i.i = icmp eq i64 %i.bf, %i.bh
  br i1 %.not.i.i, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bi = add nuw nsw i64 %.03642.i.i, 1          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.03443.i.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %exitcond.not.i.i = icmp eq i64 %i.bi, %..i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !49

._crit_edge.i.i:                                  ; preds = %bb.k, %.lr.ph.i.i, %bb.j
  %.036.lcssa.i.i = phi i64 [ 0, %bb.j ], [ %.03642.i.i, %.lr.ph.i.i ], [ %..i.i, %bb.k ] ; 11 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %.036.lcssa.i.i, ptr %i.bl, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.036.lcssa.i.i, ptr %i.bm, align 8, !tbaa !41
  %i.bn = sub nsw i64 %..i.i, %.036.lcssa.i.i     ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph55.preheader.i.i, label %xdl_trim_ends.exit.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.bc
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ba
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %bb.l, %.lr.ph55.preheader.i.i
  %.pn4151.i.i = phi ptr [ %.152.i.i, %bb.l ], [ %i.bp, %.lr.ph55.preheader.i.i ] ; 2 uses
  %.pn50.i.i = phi ptr [ %.13553.i.i, %bb.l ], [ %i.bq, %.lr.ph55.preheader.i.i ] ; 2 uses
  %.13749.i.i = phi i64 [ %i.bv, %bb.l ], [ 0, %.lr.ph55.preheader.i.i ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.pn50.i.i, i64 -8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = getelementptr inbounds i8, ptr %.pn4151.i.i, i64 -8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !39
  %.not40.i.i = icmp eq i64 %i.bs, %i.bu
  br i1 %.not40.i.i, label %bb.l, label %._crit_edge56.loopexit.i.i

bb.l:                                             ; preds = %.lr.ph55.i.i
  %.152.i.i = getelementptr inbounds i8, ptr %.pn4151.i.i, i64 -24
  %.13553.i.i = getelementptr inbounds i8, ptr %.pn50.i.i, i64 -24
  %i.bv = add nuw nsw i64 %.13749.i.i, 1          ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.bv, %i.bn
  br i1 %exitcond60.not.i.i, label %._crit_edge56.loopexit.i.i, label %.lr.ph55.i.i, !llvm.loop !50

._crit_edge56.loopexit.i.i:                       ; preds = %bb.l, %.lr.ph55.i.i
  %.137.lcssa.ph.i.i = phi i64 [ %i.bn, %bb.l ], [ %.13749.i.i, %.lr.ph55.i.i ]
  %i.bw = xor i64 %.137.lcssa.ph.i.i, -1
  br label %xdl_trim_ends.exit.i

xdl_trim_ends.exit.i:                             ; preds = %._crit_edge56.loopexit.i.i, %._crit_edge.i.i
  %.137.lcssa.i.i = phi i64 [ -1, %._crit_edge.i.i ], [ %i.bw, %._crit_edge56.loopexit.i.i ] ; 2 uses
  %i.bx = add i64 %.137.lcssa.i.i, %i.ba          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !42
  %i.bz = add i64 %.137.lcssa.i.i, %i.bc          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !42
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !30
  %i.cc = and i64 %i.cb, 1
  %.not.i5.i = icmp eq i64 %i.cc, 0               ; 2 uses
  %i.cd = sub i64 %i.bx, %.036.lcssa.i.i          ; 4 uses
  %i.ce = add nsw i64 %i.cd, 1                    ; 4 uses
  %i.cf = sub i64 %i.bz, %.036.lcssa.i.i          ; 4 uses
  %i.cg = add nsw i64 %i.cf, 1                    ; 4 uses
  %i.ch = call ptr @xcalloc(i64 noundef %i.ce, i64 noundef 1) #8 ; 7 uses
  %.not119.i.i = icmp eq ptr %i.ch, null
  br i1 %.not119.i.i, label %xdl_optimize_ctxs.exit, label %bb.m

bb.m:                                             ; preds = %xdl_trim_ends.exit.i
  %i.ci = call ptr @xcalloc(i64 noundef %i.cg, i64 noundef 1) #8 ; 9 uses
  %.not120.i.i = icmp eq ptr %i.ci, null
  br i1 %.not120.i.i, label %xdl_optimize_ctxs.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp ult i64 %i.ce, 2305843009213693952
  br i1 %i.cj, label %bb.o, label %.loopexit.sink.split.i.i

bb.o:                                             ; preds = %bb.n
  %i.ck = shl nuw i64 %i.ce, 3
  %i.cl = call ptr @xmalloc(i64 noundef %i.ck) #8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !18
  %.not121.i.i = icmp eq ptr %i.cl, null
  br i1 %.not121.i.i, label %xdl_optimize_ctxs.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = icmp ult i64 %i.cg, 2305843009213693952
  br i1 %i.cn, label %bb.q, label %.loopexit.sink.split.i.i

bb.q:                                             ; preds = %bb.p
  %i.co = shl nuw i64 %i.cg, 3
  %i.cp = call ptr @xmalloc(i64 noundef %i.co) #8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !18
  %.not122.i.i = icmp eq ptr %i.cp, null
  br i1 %.not122.i.i, label %xdl_optimize_ctxs.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i5.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = load i64, ptr %i.az, align 8, !tbaa !36
  %i.cs = call i64 @xdl_bogosqrt(i64 noundef %i.cr) #8
  %spec.store.select.i.i = call i64 @llvm.smin.i64(i64 %i.cs, i64 1024)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0103.i.i = phi i64 [ %spec.store.select.i.i, %bb.s ], [ 9223372036854775807, %bb.r ]
  %.not123144.i.i = icmp slt i64 %i.cd, 0         ; 2 uses
  br i1 %.not123144.i.i, label %._crit_edge.i8.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.t, %bb.y
  %.0104145.i.i = phi i64 [ %i.dh, %bb.y ], [ 0, %bb.t ] ; 5 uses
  %i.ct = load ptr, ptr %3, align 8, !tbaa !20
  %i.cu = getelementptr [24 x i8], ptr %i.ct, i64 %.0104145.i.i
  %i.cv = getelementptr [24 x i8], ptr %i.cu, i64 %.036.lcssa.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !39
  %i.cy = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !44 ; 2 uses
  %.not128.i.i = icmp eq ptr %i.da, null
  br i1 %.not128.i.i, label %.thread133.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i6.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !56 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.thread133.i.i, label %bb.v

.thread133.i.i:                                   ; preds = %bb.u, %.lr.ph.i6.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.0104145.i.i
  store i8 0, ptr %i.de, align 1, !tbaa !46
  br label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.df = icmp slt i64 %i.dc, %.0103.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.0104145.i.i ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.dg, align 1, !tbaa !46
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i8 2, ptr %i.dg, align 1, !tbaa !46
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.thread133.i.i
  %i.dh = add nuw i64 %.0104145.i.i, 1
  %exitcond.not.i7.i = icmp eq i64 %.0104145.i.i, %i.cd
  br i1 %exitcond.not.i7.i, label %._crit_edge.i8.i, label %.lr.ph.i6.i, !llvm.loop !51

._crit_edge.i8.i:                                 ; preds = %bb.y, %bb.t
  br i1 %.not.i5.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i8.i
  %i.di = load i64, ptr %i.bb, align 8, !tbaa !36
  %i.dj = call i64 @xdl_bogosqrt(i64 noundef %i.di) #8
  %spec.store.select1.i.i = call i64 @llvm.smin.i64(i64 %i.dj, i64 1024)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i8.i
  %.0102.i.i = phi i64 [ %spec.store.select1.i.i, %bb.z ], [ 9223372036854775807, %._crit_edge.i8.i ]
  %.not124146.i.i = icmp slt i64 %i.cf, 0         ; 2 uses
  br i1 %.not124146.i.i, label %._crit_edge150.i.i, label %.lr.ph149.i.i

.lr.ph149.i.i:                                    ; preds = %bb.aa, %bb.af
  %.1105147.i.i = phi i64 [ %i.dy, %bb.af ], [ 0, %bb.aa ] ; 5 uses
  %i.dk = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.dl = getelementptr [24 x i8], ptr %i.dk, i64 %.1105147.i.i
  %i.dm = getelementptr [24 x i8], ptr %i.dl, i64 %.036.lcssa.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !39
  %i.dp = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !44 ; 2 uses
  %.not127.i.i = icmp eq ptr %i.dr, null
  br i1 %.not127.i.i, label %.thread134.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph149.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !57 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.thread134.i.i, label %bb.ac

.thread134.i.i:                                   ; preds = %bb.ab, %.lr.ph149.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.1105147.i.i
  store i8 0, ptr %i.dv, align 1, !tbaa !46
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dw = icmp slt i64 %i.dt, %.0102.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.1105147.i.i ; 2 uses
  br i1 %i.dw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.dx, align 1, !tbaa !46
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  store i8 2, ptr %i.dx, align 1, !tbaa !46
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.thread134.i.i
  %i.dy = add nuw i64 %.1105147.i.i, 1
  %exitcond160.not.i.i = icmp eq i64 %.1105147.i.i, %i.cf
  br i1 %exitcond160.not.i.i, label %._crit_edge150.i.i, label %.lr.ph149.i.i, !llvm.loop !52

._crit_edge150.i.i:                               ; preds = %bb.af, %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !47
  br i1 %.not123144.i.i, label %._crit_edge155.i.i, label %.lr.ph154.i.i

.lr.ph154.i.i:                                    ; preds = %._crit_edge150.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %.lr.ph154.i.i
  %.2152.i.i = phi i64 [ 0, %.lr.ph154.i.i ], [ %i.em, %bb.aj ] ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.2152.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !46
  switch i8 %i.ec, label %bb.ai [
    i8 2, label %bb.ah
    i8 1, label %.thread135.i.i
    i8 0, label %.thread137.i.i
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ed = call fastcc zeroext i1 @xdl_clean_mmatch(ptr noundef %i.ch, i64 noundef %.2152.i.i, i64 noundef %i.ce)
  br i1 %i.ed, label %.thread137.i.i, label %.thread135.i.i

.thread135.i.i:                                   ; preds = %bb.ah, %bb.ag
  %i.ee = add nsw i64 %.2152.i.i, %.036.lcssa.i.i
  %i.ef = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.eg = load i64, ptr %i.dz, align 8, !tbaa !47 ; 2 uses
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.dz, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg
  store i64 %i.ee, ptr %i.ei, align 8, !tbaa !48
  br label %bb.aj

.thread137.i.i:                                   ; preds = %bb.ah, %bb.ag
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !19
  %i.ek = getelementptr i8, ptr %i.ej, i64 %.2152.i.i
  %i.el = getelementptr i8, ptr %i.ek, i64 %.036.lcssa.i.i
  store i8 1, ptr %i.el, align 1, !tbaa !59
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @.str.1) #9
  unreachable

bb.aj:                                            ; preds = %.thread137.i.i, %.thread135.i.i
  %i.em = add nuw i64 %.2152.i.i, 1
  %exitcond161.not.i.i = icmp eq i64 %.2152.i.i, %i.cd
  br i1 %exitcond161.not.i.i, label %._crit_edge155.i.i, label %bb.ag, !llvm.loop !53

._crit_edge155.i.i:                               ; preds = %bb.aj, %._crit_edge150.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  store i64 0, ptr %i.en, align 8, !tbaa !47
  br i1 %.not124146.i.i, label %.critedge, label %.lr.ph159.i.i

.lr.ph159.i.i:                                    ; preds = %._crit_edge155.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 88
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %.lr.ph159.i.i
  %.3157.i.i = phi i64 [ 0, %.lr.ph159.i.i ], [ %i.fa, %bb.an ] ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.3157.i.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !46
  switch i8 %i.eq, label %bb.am [
    i8 2, label %bb.al
    i8 1, label %.thread140.i.i
    i8 0, label %.thread142.i.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.er = call fastcc zeroext i1 @xdl_clean_mmatch(ptr noundef %i.ci, i64 noundef %.3157.i.i, i64 noundef %i.cg)
  br i1 %i.er, label %.thread142.i.i, label %.thread140.i.i

.thread140.i.i:                                   ; preds = %bb.al, %bb.ak
  %i.es = add nsw i64 %.3157.i.i, %.036.lcssa.i.i
  %i.et = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.eu = load i64, ptr %i.en, align 8, !tbaa !47 ; 2 uses
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.en, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eu
  store i64 %i.es, ptr %i.ew, align 8, !tbaa !48
  br label %bb.an

.thread142.i.i:                                   ; preds = %bb.al, %bb.ak
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !19
  %i.ey = getelementptr i8, ptr %i.ex, i64 %.3157.i.i
  %i.ez = getelementptr i8, ptr %i.ey, i64 %.036.lcssa.i.i
  store i8 1, ptr %i.ez, align 1, !tbaa !59
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #9
  unreachable

bb.an:                                            ; preds = %.thread142.i.i, %.thread140.i.i
  %i.fa = add nuw i64 %.3157.i.i, 1
  %exitcond162.not.i.i = icmp eq i64 %.3157.i.i, %i.cf
  br i1 %exitcond162.not.i.i, label %.critedge, label %bb.ak, !llvm.loop !54

.loopexit.sink.split.i.i:                         ; preds = %bb.p, %bb.n
  %.sink174.i.i = phi ptr [ %3, %bb.n ], [ %i.ak, %bb.p ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink174.i.i, i64 40
  store ptr null, ptr %i.fb, align 8, !tbaa !18
  br label %xdl_optimize_ctxs.exit

xdl_optimize_ctxs.exit:                           ; preds = %xdl_trim_ends.exit.i, %bb.m, %bb.o, %bb.q, %.loopexit.sink.split.i.i
  %.1.i.i = phi ptr [ %i.ci, %.loopexit.sink.split.i.i ], [ %i.ci, %bb.q ], [ %i.ci, %bb.o ], [ null, %bb.m ], [ null, %xdl_trim_ends.exit.i ]
  call void @free(ptr noundef %i.ch) #8
  call void @free(ptr noundef %.1.i.i) #8
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !18
  call void @free(ptr noundef %i.fd) #8
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !19
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -1
  call void @free(ptr noundef nonnull %i.fg) #8
  %i.fh = load ptr, ptr %i.ak, align 8, !tbaa !20
  call void @free(ptr noundef %i.fh) #8
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !18
  call void @free(ptr noundef %i.fj) #8
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !19
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -1
  call void @free(ptr noundef nonnull %i.fm) #8
  %i.fn = load ptr, ptr %3, align 8, !tbaa !20
  call void @free(ptr noundef %i.fn) #8
  %i.fo = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void @free(ptr noundef %i.fo) #8
  %i.fp = load ptr, ptr %i.y, align 8, !tbaa !32
  br label %xdl_init_classifier.exit.thread.sink.split.sink.split

.critedge:                                        ; preds = %bb.an, %._crit_edge155.i.i
  call void @free(ptr noundef %i.ch) #8
  call void @free(ptr noundef %i.ci) #8
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge, %bb.i, %bb.i
  %i.fq = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void @free(ptr noundef %i.fq) #8
  %i.fr = load ptr, ptr %i.y, align 8, !tbaa !32
  br label %xdl_init_classifier.exit.thread.sink.split.sink.split

xdl_init_classifier.exit.thread.sink.split.sink.split: ; preds = %.thread.i, %._crit_edge.i, %bb.ao, %xdl_optimize_ctxs.exit, %bb.h, %bb.f
  %.sink = phi ptr [ %i.aj, %bb.f ], [ %i.au, %bb.h ], [ %i.fp, %xdl_optimize_ctxs.exit ], [ %i.fr, %bb.ao ], [ %.pre.i, %._crit_edge.i ], [ %i.x, %.thread.i ]
  %.0.ph.ph = phi i32 [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %xdl_optimize_ctxs.exit ], [ 0, %bb.ao ], [ -1, %._crit_edge.i ], [ -1, %.thread.i ]
  call void @free(ptr noundef %.sink) #8
  br label %xdl_init_classifier.exit.thread.sink.split

xdl_init_classifier.exit.thread.sink.split:       ; preds = %xdl_init_classifier.exit.thread.sink.split.sink.split, %bb.b
  %.0.ph = phi i32 [ -1, %bb.b ], [ %.0.ph.ph, %xdl_init_classifier.exit.thread.sink.split.sink.split ]
  call void @xdl_cha_free(ptr noundef nonnull %i.r) #8
  br label %xdl_init_classifier.exit.thread

xdl_init_classifier.exit.thread:                  ; preds = %xdl_init_classifier.exit.thread.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %.0.ph, %xdl_init_classifier.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i64 @xdl_guess_lines(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @xdl_prepare_ctx(i32 noundef range(i32 1, 3) %0, ptr noundef %1, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef nonnull %4, ptr nofree noundef captures(none) initializes((0, 8), (32, 48)) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store ptr null, ptr %5, align 8, !tbaa !20
  %i.f = icmp ult i64 %2, 768614336404564651
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br i1 %i.f, label %bb.b, label %xdl_classify_record.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = mul nuw i64 %2, 24
  %i.h = tail call ptr @xmalloc(i64 noundef %i.g) #8 ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !20
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %xdl_classify_record.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !36
  %i.j = call ptr @xdl_mmfile_first(ptr noundef %1, ptr noundef nonnull %i.b) #8 ; 4 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !62
  %.not38 = icmp eq ptr %i.j, null
  br i1 %.not38, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 3 uses
  %i.m = icmp sgt i64 %i.k, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.s = icmp eq i32 %0, 1
  %..i = select i1 %i.s, i64 40, i64 48
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %xdl_classify_record.exit
  %i.t = phi ptr [ %i.j, %.lr.ph ], [ %i.cb, %xdl_classify_record.exit ] ; 2 uses
  %i.u = load i64, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.v = and i64 %i.u, 30
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call i64 @xdl_hash_record_with_whitespace(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, i64 noundef %i.u) #8
  br label %xdl_hash_record.exit

bb.g:                                             ; preds = %bb.e
  %i.x = call i64 @xdl_hash_record_verbatim(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l) #8
  br label %xdl_hash_record.exit

xdl_hash_record.exit:                             ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 4 uses
  %i.y = load i64, ptr %i.i, align 8, !tbaa !36   ; 3 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !48
  %.not40.not = icmp slt i64 %i.y, %i.z
  %.pre = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  br i1 %.not40.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %xdl_hash_record.exit
  %i.aa = add nsw i64 %i.y, 1
  %i.ab = call ptr @xdl_alloc_grow_helper(ptr noundef %.pre, i64 noundef %i.aa, ptr noundef nonnull %i.a, i64 noundef 24) #8 ; 3 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !20
  %.not47 = icmp eq ptr %i.ab, null
  br i1 %.not47, label %xdl_classify_record.exit.thread, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.pre50 = load i64, ptr %i.i, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %xdl_hash_record.exit
  %i.ac = phi i64 [ %i.y, %xdl_hash_record.exit ], [ %.pre50, %..critedge_crit_edge ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %xdl_hash_record.exit ], [ %i.ab, %..critedge_crit_edge ]
  %i.ae = add i64 %i.ac, 1
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac ; 5 uses
  store ptr %i.t, ptr %i.af, align 8, !tbaa !63
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.t to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !64
  %i.al = load i32, ptr %4, align 8, !tbaa !31
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %.0.i, %i.am
  %i.ao = add i64 %i.an, %.0.i
  %notmask.i = shl nsw i64 -1, %i.am
  %i.ap = xor i64 %notmask.i, -1
  %i.aq = and i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %.059.i = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %.not60.i = icmp eq ptr %.059.i, null
  br i1 %.not60.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.j
  %.061.i = phi ptr [ %.0.i43, %bb.j ], [ %.059.i, %.critedge ] ; 6 uses
  %i.at = load i64, ptr %.061.i, align 8, !tbaa !65
  %i.au = icmp eq i64 %i.at, %.0.i
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.061.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %.061.i, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !64
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !30
  %i.bc = call i32 @xdl_recmatch(ptr noundef %i.aw, i64 noundef %i.ay, ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %i.bb) #8
  %.not50.i = icmp eq i32 %i.bc, 0
  br i1 %.not50.i, label %bb.j, label %xdl_classify_record.exit.loopexit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.061.i, i64 8
end_hunk_0
