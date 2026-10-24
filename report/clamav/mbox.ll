Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/mbox?download=true
inline.NumInlined: 49
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@parseEmailBody:bb.a
  br i1 %i.lv, label %bb.fz, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph917
  br i1 %.0499916, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.lw = tail call ptr @lineGetData(ptr noundef nonnull %i.lu) #20
  %i.lx = tail call fastcc zeroext i1 @isBounceStart(ptr noundef %2, ptr noundef %i.lw)
  br i1 %i.lx, label %bb.fc, label %bb.fz

bb.fc:                                            ; preds = %bb.fa, %bb.fb
  %i.ly = getelementptr inbounds nuw i8, ptr %.0501915, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !57 ; 3 uses
  %.not691 = icmp eq ptr %i.lz, null
  br i1 %.not691, label %.loopexit820, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !52
  %i.mb = tail call ptr @lineGetData(ptr noundef %i.ma) #20
  %i.mc = tail call fastcc zeroext i1 @isBounceStart(ptr noundef %2, ptr noundef %i.mb)
  br i1 %i.mc, label %bb.fz, label %.preheader

.preheader:                                       ; preds = %bb.fd, %bb.fi
  %.0497907 = phi ptr [ %i.ml, %bb.fi ], [ %i.lz, %bb.fd ] ; 5 uses
  %i.md = load ptr, ptr %.0497907, align 8, !tbaa !52 ; 2 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %.thread795, label %bb.fe

bb.fe:                                            ; preds = %.preheader
  %i.mf = tail call ptr @lineGetData(ptr noundef nonnull %i.md) #20 ; 3 uses
  %i.mg = tail call i32 @strncasecmp(ptr noundef %i.mf, ptr noundef nonnull @.str.145, i64 noundef 13) #22
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.mi = tail call ptr @strcasestr(ptr noundef %i.mf, ptr noundef nonnull @.str.146) #22
  %.not693 = icmp eq ptr %i.mi, null
  br i1 %.not693, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.q, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.mj = tail call ptr @strcasestr(ptr noundef %i.mf, ptr noundef nonnull @.str.147) #22
  %.not694 = icmp eq ptr %i.mj, null
  br i1 %.not694, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fe, %bb.fh, %bb.ff
  %i.mk = getelementptr inbounds nuw i8, ptr %.0497907, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !57 ; 2 uses
  %.not692 = icmp eq ptr %i.ml, null
  br i1 %.not692, label %.critedge713._crit_edge, label %.preheader

bb.fj:                                            ; preds = %bb.fh, %bb.fg
  %.pr = load ptr, ptr %.0497907, align 8, !tbaa !52
  %i.mm = icmp eq ptr %.pr, null
  br i1 %i.mm, label %.thread795, label %.lr.ph910

.thread795:                                       ; preds = %.preheader, %bb.fj
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.148) #20
  br label %bb.fz

.lr.ph910:                                        ; preds = %bb.fj, %bb.fo
  %.1498909 = phi ptr [ %i.my, %bb.fo ], [ %.0497907, %bb.fj ] ; 2 uses
  %i.mn = load ptr, ptr %.1498909, align 8, !tbaa !52 ; 2 uses
  %.not696 = icmp eq ptr %i.mn, null
  br i1 %.not696, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph910
  %i.mo = tail call ptr @lineGetData(ptr noundef nonnull %i.mn) #20 ; 4 uses
  %i.mp = tail call i32 @strncasecmp(ptr noundef %i.mo, ptr noundef nonnull @.str.145, i64 noundef 13) #22
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  %i.mr = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.mo, ptr noundef nonnull dereferenceable(1) @.str.149) #22
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.mt = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.mo, ptr noundef nonnull dereferenceable(1) @.str.150) #22
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.mv = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.mo, ptr noundef nonnull dereferenceable(1) @.str.146) #22
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph910, %bb.fn, %bb.fm, %bb.fl, %bb.fk
  %i.mx = getelementptr inbounds nuw i8, ptr %.1498909, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !57 ; 2 uses
  %cond727 = icmp eq ptr %i.my, null
  br i1 %cond727, label %.critedge713._crit_edge, label %.lr.ph910

.critedge713._crit_edge:                          ; preds = %bb.fi, %bb.fo
  store i32 %i.lt, ptr %i.b, align 4
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.151) #20
  br label %bb.ga

bb.fp:                                            ; preds = %bb.fn
  %i.mz = tail call ptr @fileblobCreate() #20     ; 8 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %.loopexit820, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152) #20
  %i.nb = load ptr, ptr %2, align 8, !tbaa !28
  tail call void @fileblobSetFilename(ptr noundef nonnull %i.mz, ptr noundef %i.nb, ptr noundef nonnull @.str.153) #20
  %i.nc = tail call i32 @fileblobAddData(ptr noundef nonnull %i.mz, ptr noundef nonnull @.str.154, i64 noundef 28) #20 ; 0 uses
  %i.nd = load ptr, ptr %i.e, align 8, !tbaa !31
  tail call void @fileblobSetCTX(ptr noundef nonnull %i.mz, ptr noundef %i.nd) #20
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fy, %bb.fq
  %.1502 = phi ptr [ %.0501915, %bb.fq ], [ %i.nm, %bb.fy ] ; 4 uses
  %.0495 = phi ptr [ null, %bb.fq ], [ %.1496, %bb.fy ] ; 2 uses
  %.0494 = phi i8 [ 1, %bb.fq ], [ %.1, %bb.fy ]  ; 2 uses
  %i.ne = load ptr, ptr %.1502, align 8, !tbaa !52 ; 2 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.ng = trunc nuw i8 %.0494 to i1
  %spec.select715 = select i1 %i.ng, ptr %.1502, ptr %.0495
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.nh = tail call ptr @lineGetData(ptr noundef nonnull %i.ne) #20 ; 2 uses
  %i.ni = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nh) #22
  %i.nj = tail call i32 @fileblobAddData(ptr noundef nonnull %i.mz, ptr noundef nonnull %i.nh, i64 noundef %i.ni) #20 ; 0 uses
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fs, %bb.ft
  %.1496 = phi ptr [ %.0495, %bb.ft ], [ %spec.select715, %bb.fs ] ; 3 uses
  %.1 = phi i8 [ %.0494, %bb.ft ], [ 0, %bb.fs ]  ; 2 uses
  %i.nk = tail call i32 @fileblobAddData(ptr noundef nonnull %i.mz, ptr noundef nonnull @.str.155, i64 noundef 1) #20 ; 0 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.1502, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !57 ; 5 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %.loopexit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !52 ; 2 uses
  %i.np = trunc nuw i8 %.1 to i1
  %i.nq = icmp eq ptr %i.no, null
  %or.cond19.not = select i1 %i.np, i1 true, i1 %i.nq
  br i1 %or.cond19.not, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.nr = tail call ptr @lineGetData(ptr noundef nonnull %i.no) #20 ; 2 uses
  %i.ns = tail call fastcc zeroext i1 @isBounceStart(ptr noundef %2, ptr noundef %i.nr)
  br i1 %i.ns, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156, ptr noundef %i.nr) #20
  br label %.loopexit

bb.fy:                                            ; preds = %bb.fv, %bb.fw
  %i.nt = tail call i32 @fileblobInfected(ptr noundef nonnull %i.mz) #20
  %.not = icmp eq i32 %i.nt, 0
  br i1 %.not, label %bb.fr, label %.loopexit

.loopexit:                                        ; preds = %bb.fu, %bb.fy, %bb.fx
  %.2503 = phi ptr [ %i.nm, %bb.fx ], [ %i.nm, %bb.fy ], [ %.1502, %bb.fu ]
  %.2 = phi i1 [ true, %bb.fx ], [ false, %bb.fy ], [ false, %bb.fu ]
  %i.nu = tail call i32 @fileblobScanAndDestroy(ptr noundef nonnull %i.mz) #20
  %i.nv = icmp eq i32 %i.nu, 1
  %spec.select923 = select i1 %i.nv, i32 3, i32 %i.lt
  %i.nw = load i32, ptr %i.t, align 8, !tbaa !32
  %i.nx = add i32 %i.nw, 1
  store i32 %i.nx, ptr %i.t, align 8, !tbaa !32
  %.not698 = icmp eq ptr %.1496, null
  %spec.select717 = select i1 %.not698, ptr %.2503, ptr %.1496
  br label %bb.fz

bb.fz:                                            ; preds = %.lr.ph917, %bb.fb, %.thread795, %.loopexit, %bb.fd
  %i.ny = phi i32 [ %i.lt, %bb.fd ], [ %spec.select923, %.loopexit ], [ %i.lt, %.thread795 ], [ %i.lt, %bb.fb ], [ %i.lt, %.lr.ph917 ] ; 3 uses
  %.4.ph = phi ptr [ %.0501915, %bb.fd ], [ %spec.select717, %.loopexit ], [ %.0497907, %.thread795 ], [ %.0501915, %bb.fb ], [ %.0501915, %.lr.ph917 ]
  %.3.ph = phi i1 [ true, %bb.fd ], [ %.2, %.loopexit ], [ false, %.thread795 ], [ false, %bb.fb ], [ %.0499916, %.lr.ph917 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.4.ph, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !57 ; 2 uses
  %i.ob = icmp ne ptr %i.oa, null
  %i.oc = icmp ne i32 %i.ny, 3
  %i.od = select i1 %i.ob, i1 %i.oc, i1 false
  br i1 %i.od, label %.lr.ph917, label %.loopexit820

.loopexit820:                                     ; preds = %bb.fc, %bb.fp, %bb.fz, %.preheader819
  %.lcssa912 = phi i32 [ 3, %.preheader819 ], [ %i.lt, %bb.fp ], [ %i.lt, %bb.fc ], [ %i.ny, %bb.fz ] ; 2 uses
  store i32 %.lcssa912, ptr %i.b, align 4
  br label %bb.ga

bb.ga:                                            ; preds = %.loopexit820, %.critedge713._crit_edge
  %i.oe = phi i32 [ %.lcssa912, %.loopexit820 ], [ %i.lt, %.critedge713._crit_edge ]
  tail call void @textDestroy(ptr noundef nonnull %i.lq) #20
  store ptr null, ptr %i.c, align 8, !tbaa !58
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.thread790
  %i.of = phi i32 [ %i.oe, %bb.ga ], [ %.promoted, %.thread790 ] ; 8 uses
  %i.og = icmp ne ptr %.12, null                  ; 3 uses
  %i.oh = icmp ne i32 %i.of, 3
  %or.cond21 = select i1 %i.og, i1 %i.oh, i1 false
  br i1 %or.cond21, label %bb.gc, label %.critedge719

bb.gc:                                            ; preds = %bb.gb
  %i.oi = getelementptr inbounds nuw i8, ptr %.12, i64 40
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !98
  %.not699 = icmp eq ptr %i.oj, null
  br i1 %.not699, label %bb.gs, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ok = tail call ptr @encodingLine(ptr noundef nonnull %.12) #20
  %.not700 = icmp eq ptr %i.ok, null
  br i1 %.not700, label %bb.gs, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ol = tail call ptr @bounceBegin(ptr noundef nonnull %.12) #20 ; 3 uses
  %.not701 = icmp eq ptr %i.ol, null
  br i1 %.not701, label %bb.gs, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.gg

bb.gg:                                            ; preds = %bb.go, %bb.gf
  %.02359.i = phi ptr [ %i.ol, %bb.gf ], [ %i.pe, %bb.go ] ; 4 uses
  %.02658.i = phi ptr [ %i.ol, %bb.gf ], [ %.228.ph.i, %bb.go ] ; 6 uses
  %i.on = load ptr, ptr %.02359.i, align 8, !tbaa !52
  %i.oo = call ptr @lineGetData(ptr noundef %i.on) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.go, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.oq = call ptr @cli_strtokbuf(ptr noundef nonnull %i.oo, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.a) #20
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.go, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.os = load ptr, ptr %i.om, align 8, !tbaa !29
  %i.ot = call i32 @tableFind(ptr noundef %i.os, ptr noundef nonnull %i.a) #20
  switch i32 %i.ot, label %bb.gm [
    i32 2, label %bb.gj
    i32 3, label %select.unfold.i
    i32 1, label %bb.gl
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.ou = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.oo, ptr noundef nonnull dereferenceable(1) @.str.302) #22
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.gk, label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.ow = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.oo, ptr noundef nonnull dereferenceable(1) @.str.303) #22
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %select.unfold.i, label %bb.go

bb.gl:                                            ; preds = %bb.gi
  %i.oy = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.oo, ptr noundef nonnull dereferenceable(1) @.str.146) #22
  %.not32.i = icmp eq ptr %i.oy, null
  br i1 %.not32.i, label %select.unfold.i, label %bb.gp

bb.gm:                                            ; preds = %bb.gi
  %i.oz = call i32 @strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.52) #22
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.pb = call i32 @strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.53) #22
  %i.pc = icmp eq i32 %i.pb, 0
  %spec.select35.i = select i1 %i.pc, ptr %.02359.i, ptr %.02658.i
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm, %bb.gk, %bb.gj, %bb.gh, %bb.gg
  %.228.ph.i = phi ptr [ %.02359.i, %bb.gm ], [ %spec.select35.i, %bb.gn ], [ %.02658.i, %bb.gk ], [ %.02658.i, %bb.gj ], [ %.02658.i, %bb.gg ], [ %.02658.i, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.pd = getelementptr inbounds nuw i8, ptr %.02359.i, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !57 ; 2 uses
  %.not.i738 = icmp eq ptr %i.pe, null
  br i1 %.not.i738, label %exportBounceMessage.exit.thread, label %bb.gg

bb.gp:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %exportBounceMessage.exit.thread

select.unfold.i:                                  ; preds = %bb.gk, %bb.gi, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.pf = call ptr @fileblobCreate() #20          ; 6 uses
  %.not34.i = icmp eq ptr %i.pf, null
  br i1 %.not34.i, label %exportBounceMessage.exit.thread, label %bb.gq

bb.gq:                                            ; preds = %select.unfold.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304) #20
  %i.pg = load ptr, ptr %2, align 8, !tbaa !28
  call void @fileblobSetFilename(ptr noundef nonnull %i.pf, ptr noundef %i.pg, ptr noundef nonnull @.str.153) #20
  %i.ph = load ptr, ptr %i.e, align 8, !tbaa !31
  call void @fileblobSetCTX(ptr noundef nonnull %i.pf, ptr noundef %i.ph) #20
  %i.pi = call ptr @textToFileblob(ptr noundef %.02658.i, ptr noundef nonnull %i.pf, i32 noundef 1) #20
  %i.pj = icmp eq ptr %i.pi, null
  br i1 %i.pj, label %exportBounceMessage.exit.thread805, label %exportBounceMessage.exit

exportBounceMessage.exit.thread805:               ; preds = %bb.gq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.305) #20
  call void @fileblobDestroy(ptr noundef nonnull %i.pf) #20
  %i.pk = load i32, ptr %i.t, align 8, !tbaa !32
  %i.pl = add i32 %i.pk, 1
  store i32 %i.pl, ptr %i.t, align 8, !tbaa !32
  br label %bb.gr

exportBounceMessage.exit.thread:                  ; preds = %bb.go, %bb.gp, %select.unfold.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.306) #20
  br label %bb.gr

exportBounceMessage.exit:                         ; preds = %bb.gq
  %i.pm = call i32 @fileblobScanAndDestroy(ptr noundef nonnull %i.pf) #20
  %i.pn = load i32, ptr %i.t, align 8, !tbaa !32
  %i.po = add i32 %i.pn, 1
  store i32 %i.po, ptr %i.t, align 8, !tbaa !32
  %.fr = freeze i32 %i.pm
  %i.pp = icmp eq i32 %.fr, 1
  %spec.select816 = select i1 %i.pp, i32 3, i32 1
  br label %bb.gr

bb.gr:                                            ; preds = %exportBounceMessage.exit, %exportBounceMessage.exit.thread805, %exportBounceMessage.exit.thread
  %i.pq = phi i32 [ 1, %exportBounceMessage.exit.thread805 ], [ %spec.select816, %exportBounceMessage.exit ], [ 1, %exportBounceMessage.exit.thread ] ; 2 uses
  store i32 %i.pq, ptr %i.b, align 4, !tbaa !82
  br label %.critedge719

bb.gs:                                            ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.pr = tail call i32 @messageGetMimeType(ptr noundef nonnull %.12) #20
  %i.ps = icmp eq i32 %i.pr, 4
  br i1 %i.ps, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.pt = tail call ptr @encodingLine(ptr noundef nonnull %.12) #20
  %.not818 = icmp eq ptr %i.pt, null
  br i1 %.not818, label %.critedge719, label %.critedge721

bb.gu:                                            ; preds = %bb.gs
  %i.pu = getelementptr inbounds nuw i8, ptr %.12, i64 48
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !99
  %.not702 = icmp eq ptr %i.pv, null
  br i1 %.not702, label %.critedge721, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.pw = tail call ptr @encodingLine(ptr noundef nonnull %.12) #20 ; 3 uses
  %.not703 = icmp eq ptr %i.pw, null
  br i1 %.not703, label %.critedge721, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.px = tail call ptr @fileblobCreate() #20     ; 5 uses
  %.not704 = icmp eq ptr %i.px, null
  br i1 %.not704, label %.critedge719, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.py = load ptr, ptr %i.pw, align 8, !tbaa !52
  %i.pz = tail call ptr @lineGetData(ptr noundef %i.py) #20
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.157, ptr noundef %i.pz) #20
  %i.qa = load ptr, ptr %2, align 8, !tbaa !28
  tail call void @fileblobSetFilename(ptr noundef nonnull %i.px, ptr noundef %i.qa, ptr noundef nonnull @.str.153) #20
  %i.qb = tail call i32 @fileblobAddData(ptr noundef nonnull %i.px, ptr noundef nonnull @.str.154, i64 noundef 28) #20 ; 0 uses
  %i.qc = load ptr, ptr %i.e, align 8, !tbaa !31
  tail call void @fileblobSetCTX(ptr noundef nonnull %i.px, ptr noundef %i.qc) #20
  %i.qd = tail call ptr @textToFileblob(ptr noundef nonnull %i.pw, ptr noundef nonnull %i.px, i32 noundef 1) #20
  %i.qe = tail call i32 @fileblobScanAndDestroy(ptr noundef %i.qd) #20
  %i.qf = icmp eq i32 %i.qe, 1
  br i1 %i.qf, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  store i32 3, ptr %i.b, align 4, !tbaa !82
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.qg = phi i32 [ 3, %bb.gy ], [ %i.of, %bb.gx ]
  %i.qh = load i32, ptr %i.t, align 8, !tbaa !32
  %i.qi = add i32 %i.qh, 1
  store i32 %i.qi, ptr %i.t, align 8, !tbaa !32
  br label %.critedge719

.critedge721:                                     ; preds = %bb.gv, %bb.gu, %bb.gt
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.158, i32 noundef %i.of) #20
  tail call void @messageAddArgument(ptr noundef nonnull %.12, ptr noundef nonnull @.str.307) #20
  %i.qj = load ptr, ptr %2, align 8, !tbaa !28
  %i.qk = tail call ptr @messageToFileblob(ptr noundef nonnull %.12, ptr noundef %i.qj, i32 noundef 1) #20 ; 2 uses
  %.not.i739 = icmp eq ptr %i.qk, null
  br i1 %.not.i739, label %saveTextPart.exit.thread, label %saveTextPart.exit

saveTextPart.exit:                                ; preds = %.critedge721
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.308) #20
  %i.ql = load i32, ptr %i.t, align 8, !tbaa !32
  %i.qm = add i32 %i.ql, 1
  store i32 %i.qm, ptr %i.t, align 8, !tbaa !32
  %i.qn = tail call i32 @fileblobScanAndDestroy(ptr noundef nonnull %i.qk) #20
  %i.qo = icmp eq i32 %i.qn, 1
  br i1 %i.qo, label %bb.ha, label %saveTextPart.exit.thread

bb.ha:                                            ; preds = %saveTextPart.exit
  store i32 3, ptr %i.b, align 4, !tbaa !82
  br label %saveTextPart.exit.thread

saveTextPart.exit.thread:                         ; preds = %.critedge721, %bb.ha, %saveTextPart.exit
  %i.qp = phi i32 [ %i.of, %.critedge721 ], [ 3, %bb.ha ], [ %i.of, %saveTextPart.exit ] ; 2 uses
  %.not705 = icmp eq ptr %.12, %0
  br i1 %.not705, label %bb.hb, label %.critedge719.thread

.critedge719.thread:                              ; preds = %saveTextPart.exit.thread
  tail call void @messageDestroy(ptr noundef nonnull %.12) #20
  br label %.critedge719.thread1079

bb.hb:                                            ; preds = %saveTextPart.exit.thread
  tail call void @messageReset(ptr noundef nonnull %.12) #20
  br label %.critedge719

.critedge719:                                     ; preds = %bb.gr, %bb.gw, %bb.gz, %bb.hb, %bb.gt, %bb.gb
  %4 = phi i1 [ %i.og, %bb.gr ], [ true, %bb.gw ], [ true, %bb.gz ], [ true, %bb.hb ], [ true, %bb.gt ], [ %i.og, %bb.gb ]
  %i.qq = phi i32 [ %i.pq, %bb.gr ], [ %i.of, %bb.gw ], [ %i.qg, %bb.gz ], [ %i.qp, %bb.hb ], [ %i.of, %bb.gt ], [ %i.of, %bb.gb ]
  %.not707 = icmp ne ptr %.12, %0
  %or.cond722.not = and i1 %.not707, %4
  br i1 %or.cond722.not, label %bb.hc, label %.critedge719.thread1079

bb.hc:                                            ; preds = %.critedge719
  call void @messageDestroy(ptr noundef nonnull %.12) #20
  %.pre = load i32, ptr %i.b, align 4, !tbaa !82
  br label %.critedge719.thread1079

.critedge719.thread1079:                          ; preds = %bb.ek, %.critedge719.thread, %bb.hc, %.critedge719
  %.857310601076 = phi i8 [ %.8573, %.critedge719.thread ], [ %.8573, %bb.hc ], [ %.8573, %.critedge719 ], [ 0, %bb.ek ]
  %i.qr = phi i32 [ %i.qp, %.critedge719.thread ], [ %.pre, %bb.hc ], [ %i.qq, %.critedge719 ], [ 3, %bb.ek ] ; 2 uses
  %i.qs = icmp ne i32 %i.qr, 0
  %i.qt = trunc nuw i8 %.857310601076 to i1
  %or.cond23 = select i1 %i.qs, i1 %i.qt, i1 false
  %spec.store.select817 = select i1 %or.cond23, i32 3, i32 %i.qr ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !34
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.159, i32 noundef %spec.store.select817) #20
  br label %bb.hd

bb.hd:                                            ; preds = %bb.cz, %bb.ec, %bb.eu, %.critedge719.thread1079, %bb.g, %bb.d
  %.1514 = phi i32 [ 4, %bb.d ], [ 5, %bb.g ], [ %spec.store.select817, %.critedge719.thread1079 ], [ %i.jw, %bb.ec ], [ %switch.select815, %bb.cz ], [ %i.lj, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.1514
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @isuuencodebegin(ptr noundef) local_unnamed_addr #1

declare i32 @uudecodeFile(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @messageAddStr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cli_append_potentially_unwanted_if_heur_exceedsmax(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @tableCreate() local_unnamed_addr #1

declare i32 @tableInsert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @tableDestroy(ptr noundef) local_unnamed_addr #1

declare ptr @lineGetData(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare ptr @cli_strtokbuf(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rfc822comments(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.48) #20
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 40) #22
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = tail call ptr @__ctype_b_loc() #23
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %.045 = phi ptr [ %i.k, %bb.d ], [ %0, %.preheader ] ; 7 uses
  %i.f = load i8, ptr %.045, align 1, !tbaa !38
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !42
  %i.j = and i16 %i.i, 8192
  %.not = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.045, i64 1
  br i1 %.not, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.045) #22
  %i.n = add i64 %i.m, 1
  %i.o = tail call ptr @cli_max_malloc(i64 noundef %i.n) #20 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.045) #22
  %i.r = add i64 %i.q, 1
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.49, i64 noundef %i.r) #20
  br label %bb.w

bb.h:                                             ; preds = %bb.f, %bb.e
  %.044 = phi ptr [ %i.o, %bb.f ], [ %1, %bb.e ]  ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #20
  %i.s = load i8, ptr %.045, align 1, !tbaa !38   ; 2 uses
  %.not5157 = icmp eq i8 %i.s, 0
  br i1 %.not5157, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.u
  %i.t = phi i8 [ %i.ah, %bb.u ], [ %i.s, %bb.h ] ; 3 uses
  %.062 = phi i32 [ %.1, %bb.u ], [ 0, %bb.h ]    ; 11 uses
  %.03761 = phi i32 [ %.138, %bb.u ], [ 0, %bb.h ] ; 8 uses
  %.03960 = phi i32 [ %.140, %bb.u ], [ 0, %bb.h ]
  %.04159 = phi ptr [ %.2, %bb.u ], [ %.044, %bb.h ] ; 15 uses
  %.04358 = phi ptr [ %i.ag, %bb.u ], [ %.045, %bb.h ]
  %.not53 = icmp eq i32 %.03960, 0
  br i1 %.not53, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.u = icmp eq i32 %.062, 0
  br i1 %i.u, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.04159, i64 1
  store i8 %i.t, ptr %.04159, align 1, !tbaa !38
  br label %bb.u

bb.k:                                             ; preds = %.lr.ph
  switch i8 %i.t, label %bb.s [
    i8 92, label %bb.u
    i8 34, label %bb.l
    i8 40, label %bb.m
    i8 41, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.04159, i64 1
  store i8 34, ptr %.04159, align 1, !tbaa !38
  %.not56 = icmp eq i32 %.03761, 0
  %i.x = zext i1 %.not56 to i32
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %.not55 = icmp eq i32 %.03761, 0
  br i1 %.not55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.04159, i64 1
  store i8 40, ptr %.04159, align 1, !tbaa !38
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.z = add nsw i32 %.062, 1
  br label %bb.u

bb.p:                                             ; preds = %bb.k
  %.not54 = icmp eq i32 %.03761, 0
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %.04159, i64 1
  store i8 41, ptr %.04159, align 1, !tbaa !38
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ab = icmp sgt i32 %.062, 0
  %i.ac = sext i1 %i.ab to i32
  %spec.select = add nsw i32 %.062, %i.ac
  br label %bb.u

bb.s:                                             ; preds = %bb.k
  %i.ad = icmp eq i32 %.062, 0
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %.04159, i64 1
  store i8 %i.t, ptr %.04159, align 1, !tbaa !38
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.k, %bb.i, %bb.j, %bb.s, %bb.t, %bb.q, %bb.n, %bb.o, %bb.l
  %.2 = phi ptr [ %.04159, %bb.r ], [ %i.ae, %bb.t ], [ %.04159, %bb.s ], [ %.04159, %bb.i ], [ %i.w, %bb.l ], [ %i.y, %bb.n ], [ %.04159, %bb.o ], [ %i.aa, %bb.q ], [ %.04159, %bb.k ], [ %i.v, %bb.j ] ; 4 uses
  %i.af = phi i1 [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.q ], [ false, %bb.k ], [ true, %bb.j ]
  %.140 = phi i32 [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.q ], [ 1, %bb.k ], [ 0, %bb.j ]
  %.138 = phi i32 [ 0, %bb.r ], [ %.03761, %bb.t ], [ %.03761, %bb.s ], [ %.03761, %bb.i ], [ %i.x, %bb.l ], [ 1, %bb.n ], [ 0, %bb.o ], [ 1, %bb.q ], [ %.03761, %bb.k ], [ %.03761, %bb.j ]
  %.1 = phi i32 [ %spec.select, %bb.r ], [ 0, %bb.t ], [ %.062, %bb.s ], [ %.062, %bb.i ], [ %.062, %bb.l ], [ %.062, %bb.n ], [ %i.z, %bb.o ], [ %.062, %bb.q ], [ %.062, %bb.k ], [ 0, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.04358, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !38  ; 2 uses
  %.not51 = icmp eq i8 %i.ah, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u
  br i1 %i.af, label %._crit_edge.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 92, ptr %.2, align 1, !tbaa !38
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %bb.v, %._crit_edge
  %.3 = phi ptr [ %i.ai, %bb.v ], [ %.2, %._crit_edge ], [ %.044, %bb.h ]
end_hunk_0
