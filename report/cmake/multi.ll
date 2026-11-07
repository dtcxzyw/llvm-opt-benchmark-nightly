Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/multi?download=true
inline.NumInlined: 114
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@multi_runsingle:bb.a
  %or.cond.i98.i = select i1 %i.lf, i1 %i.lh, i1 false
  br i1 %or.cond.i98.i, label %bb.eg, label %bb.eh

bb.ef:                                            ; preds = %bb.ed
  %.old.i99.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i100.i = icmp sgt i32 %.old.i99.i, 0
  br i1 %.old1.i100.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.li = call ptr @Curl_trc_mstate_name(i32 noundef 8) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %i.li) #13
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ec
  store i32 8, ptr %i.at, align 8, !tbaa !93
  br label %mstate.exit101.i

bb.ei:                                            ; preds = %multi_do.exit.thread.i
  %i.lj = load ptr, ptr %i.au, align 8, !tbaa !104
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 728
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = and i64 %i.ll, 4096
  %.not85.i = icmp eq i64 %i.lm, 0
  %i.ln = load i32, ptr %i.at, align 8, !tbaa !93 ; 2 uses
  br i1 %.not85.i, label %bb.eq, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.lo = icmp eq i32 %i.ln, 9
  br i1 %i.lo, label %mstate.exit101.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lp = load i32, ptr %i.x, align 1
  %i.lq = and i32 %i.lp, 134217728
  %.not.i102.i = icmp eq i32 %i.lq, 0
  br i1 %.not.i102.i, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lr = load ptr, ptr %i.as, align 8, !tbaa !101 ; 2 uses
  %.not39.i103.i = icmp eq ptr %i.lr, null
  br i1 %.not39.i103.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !103
  %i.lu = icmp sgt i32 %i.lt, 0
  %i.lv = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.lw = icmp sgt i32 %i.lv, 0
  %or.cond.i104.i = select i1 %i.lu, i1 %i.lw, i1 false
  br i1 %or.cond.i104.i, label %bb.eo, label %bb.ep

bb.en:                                            ; preds = %bb.el
  %.old.i105.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i106.i = icmp sgt i32 %.old.i105.i, 0
  br i1 %.old1.i106.i, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.lx = call ptr @Curl_trc_mstate_name(i32 noundef 9) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %i.lx) #13
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.ek
  store i32 9, ptr %i.at, align 8, !tbaa !93
  br label %mstate.exit101.i

bb.eq:                                            ; preds = %bb.ei
  %i.ly = icmp eq i32 %i.ln, 10
  br i1 %i.ly, label %mstate.exit101.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.lz = load i32, ptr %i.x, align 1
  %i.ma = and i32 %i.lz, 134217728
  %.not.i108.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i108.i, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mb = load ptr, ptr %i.as, align 8, !tbaa !101 ; 2 uses
  %.not39.i109.i = icmp eq ptr %i.mb, null
  br i1 %.not39.i109.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !103
  %i.me = icmp sgt i32 %i.md, 0
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.mg = icmp sgt i32 %i.mf, 0
  %or.cond.i110.i = select i1 %i.me, i1 %i.mg, i1 false
  br i1 %or.cond.i110.i, label %bb.ev, label %bb.ew

bb.eu:                                            ; preds = %bb.es
  %.old.i111.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i112.i = icmp sgt i32 %.old.i111.i, 0
  br i1 %.old1.i112.i, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.mh = call ptr @Curl_trc_mstate_name(i32 noundef 10) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %i.mh) #13
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.er
  store i32 10, ptr %i.at, align 8, !tbaa !93
  %i.mi = load i32, ptr %i.ax, align 1
  %i.mj = and i32 %i.mi, -4097
  store i32 %i.mj, ptr %i.ax, align 1
  call void @Curl_pgrsTime(ptr noundef nonnull %1, i32 noundef 7) #13
  br label %mstate.exit101.i

bb.ex:                                            ; preds = %multi_do.exit.i
  %i.mk = load ptr, ptr %i.au, align 8, !tbaa !104 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 728
  %i.mm = load i64, ptr %i.ml, align 8
  %i.mn = and i64 %i.mm, 128
  %.not86.i = icmp eq i64 %i.mn, 0
  br i1 %.not86.i, label %.thread124.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 736
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !153
  %i.mq = call i32 @Curl_retry_request(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #13 ; 2 uses
  %.not88.i = icmp eq i32 %i.mq, 0
  br i1 %.not88.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store i8 1, ptr %i.j, align 1, !tbaa !156
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.265.i = phi i32 [ %i.mq, %bb.ez ], [ 55, %bb.ey ] ; 2 uses
  %i.mr = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %.265.i, i1 noundef zeroext false) ; 2 uses
  %i.ms = load ptr, ptr %i.c, align 8, !tbaa !153 ; 2 uses
  %.not89.i = icmp eq ptr %i.ms, null
  br i1 %.not89.i, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  switch i32 %i.mr, label %bb.ff [
    i32 55, label %bb.fc
    i32 0, label %bb.fc
  ]

bb.fc:                                            ; preds = %bb.fb, %bb.fb
  %.not.i114.i = icmp eq ptr %i.mp, null
  br i1 %.not.i114.i, label %multi_follow.exit.thread.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !131
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 128
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !240 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.mw, null
  br i1 %.not9.i.i, label %multi_follow.exit.thread.i, label %multi_follow.exit.i

multi_follow.exit.i:                              ; preds = %bb.fd
  %i.mx = call i32 %i.mw(ptr noundef nonnull %1, ptr noundef nonnull %i.ms, i32 noundef 2) #13, !inline_history !215 ; 2 uses
  %.not90.i = icmp eq i32 %i.mx, 0
  br i1 %.not90.i, label %multi_follow.exit.thread.i, label %bb.ff

multi_follow.exit.thread.i:                       ; preds = %multi_follow.exit.i, %bb.fd, %bb.fc
  call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef 2)
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fa
  store i8 1, ptr %i.j, align 1, !tbaa !156
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %multi_follow.exit.thread.i, %multi_follow.exit.i, %bb.fb
  %.167.i = phi i32 [ 0, %bb.fe ], [ -1, %multi_follow.exit.thread.i ], [ 0, %multi_follow.exit.i ], [ 0, %bb.fb ]
  %.3.i = phi i32 [ %.265.i, %bb.fe ], [ 0, %multi_follow.exit.thread.i ], [ %i.mx, %multi_follow.exit.i ], [ %i.mr, %bb.fb ]
  %i.my = load ptr, ptr @Curl_cfree, align 8, !tbaa !12
  %i.mz = load ptr, ptr %i.c, align 8, !tbaa !153
  call void %i.my(ptr noundef %i.mz) #13, !inline_history !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %mstate.exit101.i

bb.fg:                                            ; preds = %multi_do.exit.i
  %.pr.i = load ptr, ptr %i.au, align 8, !tbaa !104
  %.not87.i = icmp eq ptr %.pr.i, null
  br i1 %.not87.i, label %bb.fh, label %.thread124.i

.thread124.i:                                     ; preds = %bb.fg, %bb.ex
  %i.na = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.ko, i1 noundef zeroext false) ; 0 uses
  br label %bb.fh

bb.fh:                                            ; preds = %.thread124.i, %bb.fg
  store i8 1, ptr %i.j, align 1, !tbaa !156
  br label %mstate.exit101.i

mstate.exit101.i:                                 ; preds = %bb.fh, %bb.ff, %bb.ew, %bb.eq, %bb.ep, %bb.ej, %bb.eh, %.thread119.i, %bb.eb
  %.369.i = phi i32 [ -1, %bb.eb ], [ %.167.i, %bb.ff ], [ 0, %bb.fh ], [ -1, %bb.eh ], [ -1, %bb.ep ], [ -1, %.thread119.i ], [ -1, %bb.ej ], [ -1, %bb.eq ], [ -1, %bb.ew ]
  %.5.i = phi i32 [ 0, %bb.eb ], [ %.3.i, %bb.ff ], [ %i.ko, %bb.fh ], [ 0, %bb.eh ], [ 0, %bb.ep ], [ 0, %.thread119.i ], [ 0, %bb.ej ], [ 0, %bb.eq ], [ 0, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %state_do.exit

state_do.exit:                                    ; preds = %bb.dp, %bb.dq, %bb.dw, %bb.dx, %bb.dy, %mstate.exit101.i
  %.470.i = phi i32 [ 0, %bb.dp ], [ %.369.i, %mstate.exit101.i ], [ -1, %bb.dw ], [ -1, %bb.dx ], [ -1, %bb.dy ], [ -1, %bb.dq ]
  %.6.i = phi i32 [ 42, %bb.dp ], [ %.5.i, %mstate.exit101.i ], [ 0, %bb.dw ], [ 0, %bb.dx ], [ 0, %bb.dy ], [ 0, %bb.dq ]
  store i32 %.6.i, ptr %i.h, align 4, !tbaa !39
  br label %mstate.exit192thread-pre-split

bb.fi:                                            ; preds = %._crit_edge
  %i.nb = load ptr, ptr %i.au, align 8, !tbaa !104 ; 3 uses
  %.not.i229 = icmp eq ptr %i.nb, null
  br i1 %.not.i229, label %.thread414, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 736
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !128
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !131
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 48
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !241 ; 2 uses
  %.not9.i230 = icmp eq ptr %i.nh, null
  br i1 %.not9.i230, label %.thread414, label %protocol_doing.exit

.thread414:                                       ; preds = %bb.fj, %bb.fi
  store i8 1, ptr %i.g, align 1, !tbaa !156
  store i32 0, ptr %i.h, align 4, !tbaa !39
  br label %bb.fl

protocol_doing.exit:                              ; preds = %bb.fj
  store i8 0, ptr %i.g, align 1, !tbaa !156
  %i.ni = call i32 %i.nh(ptr noundef nonnull %1, ptr noundef nonnull %i.g) #13, !inline_history !216 ; 3 uses
  store i32 %i.ni, ptr %i.h, align 4, !tbaa !39
  %.not156 = icmp eq i32 %i.ni, 0
  br i1 %.not156, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %protocol_doing.exit
  %.pre330.a = load i8, ptr %i.g, align 1, !tbaa !156
  %i.nj = trunc nuw i8 %.pre330.a to i1
  br i1 %i.nj, label %._crit_edge332, label %mstate.exit192thread-pre-split

._crit_edge332:                                   ; preds = %bb.fk
  %.pre333 = load ptr, ptr %i.au, align 8, !tbaa !104
  br label %bb.fl

bb.fl:                                            ; preds = %._crit_edge332, %.thread414
  %4 = phi ptr [ %.pre333, %._crit_edge332 ], [ %i.nb, %.thread414 ]
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 728
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = and i64 %i.nl, 4096
  %.not157 = icmp eq i64 %i.nm, 0
  %i.nn = select i1 %.not157, i32 10, i32 9
  call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef %i.nn)
  br label %mstate.exit192thread-pre-split

bb.fm:                                            ; preds = %protocol_doing.exit
  %i.no = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.ni, i1 noundef zeroext false) ; 0 uses
  store i8 1, ptr %i.j, align 1, !tbaa !156
  br label %mstate.exit192thread-pre-split

bb.fn:                                            ; preds = %._crit_edge
  %i.np = load ptr, ptr %i.au, align 8, !tbaa !104
  store i32 0, ptr %i.i, align 4, !tbaa !39
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 736
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !128
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !131
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !242 ; 2 uses
  %.not.i232 = icmp eq ptr %i.nv, null
  br i1 %.not.i232, label %.thread415, label %multi_do_more.exit

.thread415:                                       ; preds = %bb.fn
  store i32 0, ptr %i.h, align 4, !tbaa !39
  br label %mstate.exit192thread-pre-split

multi_do_more.exit:                               ; preds = %bb.fn
  %i.nw = call i32 %i.nv(ptr noundef nonnull %1, ptr noundef nonnull %i.i) #13, !inline_history !217 ; 3 uses
  store i32 %i.nw, ptr %i.h, align 4, !tbaa !39
  %.not154 = icmp eq i32 %i.nw, 0
  br i1 %.not154, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %multi_do_more.exit
  %.pre329 = load i32, ptr %i.i, align 4, !tbaa !39 ; 2 uses
  %.not155 = icmp eq i32 %.pre329, 0
  br i1 %.not155, label %mstate.exit192thread-pre-split, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.nx = icmp eq i32 %.pre329, 1
  %i.ny = select i1 %i.nx, i32 10, i32 8
  call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef %i.ny)
  br label %mstate.exit192thread-pre-split

bb.fq:                                            ; preds = %multi_do_more.exit
  %i.nz = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.nw, i1 noundef zeroext false) ; 0 uses
  store i8 1, ptr %i.j, align 1, !tbaa !156
  br label %mstate.exit192thread-pre-split

bb.fr:                                            ; preds = %._crit_edge
  %i.oa = load ptr, ptr %i.au, align 8, !tbaa !104 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 728
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = and i64 %i.oc, 4194304
  %.not152 = icmp eq i64 %i.od, 0
  br i1 %.not152, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call fastcc void @process_pending_handles(ptr noundef nonnull %0)
  %.pre328 = load ptr, ptr %i.au, align 8, !tbaa !104
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.oe = phi ptr [ %.pre328, %bb.fs ], [ %i.oa, %bb.fr ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 456
  %i.og = load i32, ptr %i.of, align 8, !tbaa !138
  %or.cond175 = icmp ult i32 %i.og, 2
  br i1 %or.cond175, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 460
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !137
  %or.cond177 = icmp ult i32 %i.oi, 2
  br i1 %or.cond177, label %bb.fv, label %bb.ga

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.oj = load i32, ptr %i.at, align 8, !tbaa !93
  %i.ok = icmp eq i32 %i.oj, 11
  br i1 %i.ok, label %.thread296.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ol = load i32, ptr %i.x, align 1
  %i.om = and i32 %i.ol, 134217728
  %.not.i234 = icmp eq i32 %i.om, 0
  br i1 %.not.i234, label %.thread296.thread.sink.split, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.on = load ptr, ptr %i.as, align 8, !tbaa !101 ; 2 uses
  %.not39.i235 = icmp eq ptr %i.on, null
  br i1 %.not39.i235, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !103
  %i.oq = icmp sgt i32 %i.op, 0
  %i.or = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.os = icmp sgt i32 %i.or, 0
  %or.cond.i236 = select i1 %i.oq, i1 %i.os, i1 false
  br i1 %or.cond.i236, label %.thread296.thread.sink.split.sink.split, label %.thread296.thread.sink.split

bb.fz:                                            ; preds = %bb.fx
  %.old.i237 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i238 = icmp sgt i32 %.old.i237, 0
  br i1 %.old1.i238, label %.thread296.thread.sink.split.sink.split, label %.thread296.thread.sink.split

bb.ga:                                            ; preds = %bb.fu
  %i.ot = load i32, ptr %i.av, align 4
  %i.ou = and i32 %i.ot, 256
  %.not153 = icmp eq i32 %i.ou, 0
  br i1 %.not153, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oe, i64 736
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !128
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !154
  %i.oz = and i32 %i.oy, 4096
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.pb = load ptr, ptr %i.aw, align 8, !tbaa !236
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  store i8 7, ptr %i.pc, align 8, !tbaa !239
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.ga
  %i.pd = load i32, ptr %i.at, align 8, !tbaa !93
  %i.pe = icmp eq i32 %i.pd, 13
  br i1 %i.pe, label %.thread296.thread, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.pf = load i32, ptr %i.x, align 1
  %i.pg = and i32 %i.pf, 134217728
  %.not.i240 = icmp eq i32 %i.pg, 0
  br i1 %.not.i240, label %bb.gj, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ph = load ptr, ptr %i.as, align 8, !tbaa !101 ; 2 uses
  %.not39.i241 = icmp eq ptr %i.ph, null
  br i1 %.not39.i241, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !103
  %i.pk = icmp sgt i32 %i.pj, 0
  %i.pl = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.pm = icmp sgt i32 %i.pl, 0
  %or.cond.i242 = select i1 %i.pk, i1 %i.pm, i1 false
  br i1 %or.cond.i242, label %bb.gi, label %bb.gj

bb.gh:                                            ; preds = %bb.gf
  %.old.i243 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i244 = icmp sgt i32 %.old.i243, 0
  br i1 %.old1.i244, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.pn = call ptr @Curl_trc_mstate_name(i32 noundef 13) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %i.pn) #13
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.ge
  store i32 13, ptr %i.at, align 8, !tbaa !93
  %i.po = load ptr, ptr %i.bd, align 8, !tbaa !90 ; 2 uses
  %.not42.i = icmp eq ptr %i.po, null
  br i1 %.not42.i, label %.thread296.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 360
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !109
  %.not43.i = icmp eq ptr %i.pq, null
  br i1 %.not43.i, label %mstate.exit192thread-pre-split, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @Curl_mntfy_add(ptr noundef nonnull %1, i32 noundef 1) #13
  br label %mstate.exit192thread-pre-split

bb.gm:                                            ; preds = %._crit_edge
  %i.pr = call i32 @Curl_pgrsCheck(ptr noundef nonnull %1) #13 ; 4 uses
  %.not.i246 = icmp eq i32 %i.pr, 0
  br i1 %.not.i246, label %bb.gq, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ps = load ptr, ptr %i.au, align 8, !tbaa !104 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 736
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !128
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !154
  %i.px = and i32 %i.pw, 2
  %i.py = icmp eq i32 %i.px, 0
  %i.pz = icmp ne i32 %i.pr, 92
  %or.cond.i247 = and i1 %i.pz, %i.py
  br i1 %or.cond.i247, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  call void @Curl_conncontrol(ptr noundef nonnull %i.ps, i32 noundef 2) #13
  br label %bb.gp

end_hunk_0
