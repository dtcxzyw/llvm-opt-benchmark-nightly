Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/async?download=true
inline.NumInlined: 103
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@redisProcessCallbacks:bb.a
  %i.dc = load i32, ptr %i.k, align 8, !tbaa !66  ; 2 uses
  store i32 %i.dc, ptr %i.l, align 8, !tbaa !67
  store ptr %i.m, ptr %i.n, align 8, !tbaa !68
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.v, label %bb.z

bb.v:                                             ; preds = %__redisAsyncCopyError.exit.i42
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !83  ; 4 uses
  %.not.i12.i46 = icmp eq ptr %i.de, null
  br i1 %.not.i12.i46, label %__redisShiftCallback.exit.thread.i43, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !84
  store ptr %i.df, ptr %i.d, align 8, !tbaa !83
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.dh = icmp eq ptr %i.de, %i.dg
  br i1 %i.dh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.e, align 8, !tbaa !86
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.di(ptr noundef nonnull %i.de) #16, !inline_history !127
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisAsyncDisconnect) #17
  unreachable

bb.z:                                             ; preds = %__redisAsyncCopyError.exit.i42
  %i.dj = load i32, ptr %i.c, align 8, !tbaa !47
  %i.dk = or i32 %i.dj, 4
  store i32 %i.dk, ptr %i.c, align 8, !tbaa !47
  br label %__redisShiftCallback.exit.thread.i43

__redisShiftCallback.exit.thread.i43:             ; preds = %bb.z, %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !96 ; 2 uses
  %.not.i44 = icmp eq ptr %i.dm, null
  br i1 %.not.i44, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %__redisShiftCallback.exit.thread.i43
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77
  call void %i.dm(ptr noundef %i.do) #16, !inline_history !101
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %__redisShiftCallback.exit.thread.i43
  store ptr null, ptr %i.dl, align 8, !tbaa !96
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !47
  %i.dq = and i32 %i.dp, 512
  %.not11.i45 = icmp eq i32 %i.dq, 0
  br i1 %.not11.i45, label %__redisAsyncDisconnect.exit.sink.split, label %__redisAsyncDisconnect.exit

bb.ac:                                            ; preds = %__redisShiftCallback.exit
  %i.dr = load i32, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.ds = and i32 %i.dr, 32
  %.not29 = icmp eq i32 %i.ds, 0
  br i1 %.not29, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 629, ptr noundef nonnull @__PRETTY_FUNCTION__.redisProcessCallbacks) #17
  unreachable

bb.ae:                                            ; preds = %bb.ac
  switch i32 %i.ay, label %.thread.i [
    i32 2, label %bb.af
    i32 12, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dt = and i32 %i.dr, 256
  %.not.i53 = icmp eq i32 %i.dt, 0
  br i1 %.not.i53, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !111
  %i.dw = icmp ugt i64 %i.dv, 2
  br i1 %i.dw, label %bb.ah, label %.thread.i

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !112 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !113 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !106
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 484, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisGetSubscribeCallback) #17
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !118 ; 2 uses
  %i.ee = tail call ptr @__ctype_tolower_loc() #18
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !116
  %i.eg = load i8, ptr %i.ed, align 1, !tbaa !14
  %i.eh = sext i8 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !6
  %i.ek = icmp eq i32 %i.ej, 112                  ; 2 uses
  %.048.in.i = select i1 %i.ek, ptr %i.f, ptr %i.g
  %.048.i = load ptr, ptr %.048.in.i, align 8, !tbaa !128 ; 12 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !113 ; 3 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !106
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.ak, label %dictFind.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !118
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !115
  %i.et = call ptr @hi_sdsnewlen(ptr noundef %i.eq, i64 noundef %i.es) #16 ; 10 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ca, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !32
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %dictFind.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %.048.i, i64 8 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !28
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !129
  %i.fb = call i32 %i.fa(ptr noundef nonnull %i.et) #16, !inline_history !130
  %i.fc = getelementptr inbounds nuw i8, ptr %.048.i, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !131
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = and i32 %i.fb, %i.fe
  %i.fg = load ptr, ptr %.048.i, align 8, !tbaa !22
  %i.fh = zext i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %.048.i, i64 40
  %.020.i.i = load ptr, ptr %i.fi, align 8, !tbaa !34 ; 3 uses
  %.not21.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not21.i.i, label %dictFind.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am
  %i.fk = load ptr, ptr %i.ey, align 8, !tbaa !28
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !132
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.an
  %.022.us.i.i = phi ptr [ %.0.us.i.i, %bb.an ], [ %.020.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.fo = load ptr, ptr %.022.us.i.i, align 8, !tbaa !40
  %i.fp = icmp eq ptr %i.et, %i.fo
  br i1 %i.fp, label %dictFind.exit.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.022.us.i.i, i64 16
  %.0.us.i.i = load ptr, ptr %i.fq, align 8, !tbaa !34 ; 2 uses
  %.not.us.i.i = icmp eq ptr %.0.us.i.i, null
  br i1 %.not.us.i.i, label %dictFind.exit.thread.i, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.aq
  %.022.i.i = phi ptr [ %.0.i.i, %bb.aq ], [ %.020.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.fr = load ptr, ptr %i.ey, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !132 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ft, null
  br i1 %.not18.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.split.i.i
  %i.fu = load ptr, ptr %i.fj, align 8, !tbaa !29
  %i.fv = load ptr, ptr %.022.i.i, align 8, !tbaa !40
  %i.fw = call i32 %i.ft(ptr noundef %i.fu, ptr noundef nonnull %i.et, ptr noundef %i.fv) #16, !inline_history !130
  %.not19.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not19.i.i, label %bb.aq, label %dictFind.exit.i

bb.ap:                                            ; preds = %.lr.ph.split.i.i
  %i.fx = load ptr, ptr %.022.i.i, align 8, !tbaa !40
  %i.fy = icmp eq ptr %i.et, %i.fx
  br i1 %i.fy, label %dictFind.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.fz, align 8, !tbaa !34 ; 2 uses
  %.not.i.i52 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i52, label %dictFind.exit.thread.i, label %.lr.ph.split.i.i, !llvm.loop !133

dictFind.exit.i:                                  ; preds = %bb.ap, %bb.ao, %.lr.ph.split.us.i.i
  %.016.i.i = phi ptr [ %.022.us.i.i, %.lr.ph.split.us.i.i ], [ %.022.i.i, %bb.ao ], [ %.022.i.i, %bb.ap ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !43 ; 4 uses
  %.sroa.8.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.8.0.copyload70 = load ptr, ptr %.sroa.8.0..sroa_idx69, align 8
  %.sroa.10.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gc = load i64, ptr %.sroa.10.0..sroa_idx76, align 8
  %.sroa.1079.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %.sroa.1079.0.copyload81 = load ptr, ptr %.sroa.1079.0..sroa_idx80, align 8
  br label %dictFind.exit.thread.i

dictFind.exit.thread.i:                           ; preds = %bb.aq, %bb.an, %dictFind.exit.i, %bb.am, %bb.al, %bb.aj
  %.sroa.10.sroa.0.0 = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %i.gc, %dictFind.exit.i ], [ 0, %bb.aj ], [ 0, %bb.an ], [ 0, %bb.aq ]
  %.sroa.8.2 = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ %.sroa.8.0.copyload70, %dictFind.exit.i ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.aq ]
  %.sroa.1079.2 = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ %.sroa.1079.0.copyload81, %dictFind.exit.i ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.aq ]
  %.047.i = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ %i.gb, %dictFind.exit.i ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.aq ] ; 4 uses
  %.046.i = phi ptr [ %i.et, %bb.al ], [ %i.et, %bb.am ], [ %i.et, %dictFind.exit.i ], [ null, %bb.aj ], [ %i.et, %bb.an ], [ %i.et, %bb.aq ] ; 6 uses
  %i.gd = zext i1 %i.ek to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.gd ; 2 uses
  %i.gf = call i32 @strcasecmp(ptr noundef nonnull %i.ge, ptr noundef nonnull @.str.7) #19
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %dictFind.exit.thread.i
  %.not52.i = icmp eq ptr %.047.i, null
  br i1 %.not52.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 506, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisGetSubscribeCallback) #17
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %.047.i, i64 16 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !135
  %i.gj = add nsw i32 %i.gi, -1
  store i32 %i.gj, ptr %i.gh, align 8, !tbaa !135
  br label %bb.bw

bb.au:                                            ; preds = %dictFind.exit.thread.i
  %i.gk = call i32 @strcasecmp(ptr noundef nonnull %i.ge, ptr noundef nonnull @.str.9) #19
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.av, label %bb.bw

bb.av:                                            ; preds = %bb.au
  %i.gm = icmp eq ptr %.047.i, null
  br i1 %i.gm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gn = load i32, ptr %i.h, align 8, !tbaa !63
  %i.go = add nsw i32 %i.gn, -1
  store i32 %i.go, ptr %i.h, align 8, !tbaa !63
  br label %dictDelete.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.gp = getelementptr inbounds nuw i8, ptr %.047.i, i64 16
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !135
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.ay, label %dictDelete.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.gs = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !32
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %dictDelete.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gv = getelementptr inbounds nuw i8, ptr %.048.i, i64 8 ; 5 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !129
  %i.gy = call i32 %i.gx(ptr noundef %.046.i) #16, !inline_history !136
  %i.gz = getelementptr inbounds nuw i8, ptr %.048.i, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !131
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = and i32 %i.gy, %i.hb
  %i.hd = load ptr, ptr %.048.i, align 8, !tbaa !22 ; 2 uses
  %i.he = zext i32 %i.hc to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he
  %.03244.i.i = load ptr, ptr %i.hf, align 8, !tbaa !34 ; 5 uses
  %.not45.i.i = icmp eq ptr %.03244.i.i, null
  br i1 %.not45.i.i, label %dictDelete.exit.i, label %.lr.ph.i53.i

.lr.ph.i53.i:                                     ; preds = %bb.az
  %i.hg = getelementptr inbounds nuw i8, ptr %.048.i, i64 40 ; 3 uses
  %i.hh = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !132
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %.lr.ph.split.us.i56.i, label %.lr.ph.split.i54.i

.lr.ph.split.us.i56.i:                            ; preds = %.lr.ph.i53.i
  %i.hl = load ptr, ptr %.03244.i.i, align 8, !tbaa !40
  %i.hm = icmp eq ptr %.046.i, %i.hl
  br i1 %i.hm, label %.split.us.thread.i.i, label %.lr.ph50.i.i

bb.ba:                                            ; preds = %.lr.ph50.i.i
  %i.hn = load ptr, ptr %.032.us.i.i, align 8, !tbaa !40
  %i.ho = icmp eq ptr %.046.i, %i.hn
  br i1 %i.ho, label %.split.us.thread66.i.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph.split.us.i56.i, %bb.ba
  %.03247.us49.i.i = phi ptr [ %.032.us.i.i, %bb.ba ], [ %.03244.i.i, %.lr.ph.split.us.i56.i ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.03247.us49.i.i, i64 16
  %.032.us.i.i = load ptr, ptr %i.hp, align 8, !tbaa !34 ; 4 uses
  %.not.us.i57.i = icmp eq ptr %.032.us.i.i, null
  br i1 %.not.us.i57.i, label %dictDelete.exit.i, label %bb.ba

.lr.ph.split.i54.i:                               ; preds = %.lr.ph.i53.i, %bb.bi
  %.03247.i.i = phi ptr [ %.032.i.i, %bb.bi ], [ %.03244.i.i, %.lr.ph.i53.i ] ; 6 uses
  %.046.i.i = phi ptr [ %.03247.i.i, %bb.bi ], [ null, %.lr.ph.i53.i ] ; 2 uses
  %i.hq = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !132 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.hs, null
  br i1 %.not37.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.split.i54.i
  %i.ht = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.hu = load ptr, ptr %.03247.i.i, align 8, !tbaa !40
  %i.hv = call i32 %i.hs(ptr noundef %i.ht, ptr noundef %.046.i, ptr noundef %i.hu) #16, !inline_history !136
  %.not38.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not38.i.i, label %bb.bi, label %.split.us.i.i

bb.bc:                                            ; preds = %.lr.ph.split.i54.i
  %i.hw = load ptr, ptr %.03247.i.i, align 8, !tbaa !40
  %i.hx = icmp eq ptr %.046.i, %i.hw
  br i1 %i.hx, label %.split.us.i.i, label %bb.bi

.split.us.i.i:                                    ; preds = %bb.bc, %bb.bb
  %.not39.i.i = icmp eq ptr %.046.i.i, null
  br i1 %.not39.i.i, label %.split.us.i..split.us.thread.i_crit_edge.i, label %.split.us.thread66.i.i

.split.us.i..split.us.thread.i_crit_edge.i:       ; preds = %.split.us.i.i
  %.pre.i51 = load ptr, ptr %.048.i, align 8, !tbaa !22
  br label %.split.us.thread.i.i

.split.us.thread66.i.i:                           ; preds = %bb.ba, %.split.us.i.i
  %.us-phi4871.i.i = phi ptr [ %.03247.i.i, %.split.us.i.i ], [ %.032.us.i.i, %bb.ba ] ; 2 uses
  %.us-phi70.i.i = phi ptr [ %.046.i.i, %.split.us.i.i ], [ %.03247.us49.i.i, %bb.ba ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.us-phi4871.i.i, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !36
  %i.ia = getelementptr inbounds nuw i8, ptr %.us-phi70.i.i, i64 16
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !36
  br label %bb.bd

.split.us.thread.i.i:                             ; preds = %.split.us.i..split.us.thread.i_crit_edge.i, %.lr.ph.split.us.i56.i
  %i.ib = phi ptr [ %.pre.i51, %.split.us.i..split.us.thread.i_crit_edge.i ], [ %i.hd, %.lr.ph.split.us.i56.i ]
  %.us-phi4865.i.i = phi ptr [ %.03247.i.i, %.split.us.i..split.us.thread.i_crit_edge.i ], [ %.03244.i.i, %.lr.ph.split.us.i56.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.us-phi4865.i.i, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !36
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.he
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !34
  br label %bb.bd

bb.bd:                                            ; preds = %.split.us.thread.i.i, %.split.us.thread66.i.i
  %.us-phi4864.i.i = phi ptr [ %.us-phi4865.i.i, %.split.us.thread.i.i ], [ %.us-phi4871.i.i, %.split.us.thread66.i.i ] ; 3 uses
  %i.if = load ptr, ptr %i.gv, align 8, !tbaa !28 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !38 ; 2 uses
  %.not40.i.i = icmp eq ptr %i.ih, null
  br i1 %.not40.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ii = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.ij = load ptr, ptr %.us-phi4864.i.i, align 8, !tbaa !40
  call void %i.ih(ptr noundef %i.ii, ptr noundef %i.ij) #16, !inline_history !136
  %.pre.i.i = load ptr, ptr %i.gv, align 8, !tbaa !28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ik = phi ptr [ %.pre.i.i, %bb.be ], [ %i.if, %bb.bd ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !42 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.im, null
  br i1 %.not41.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.in = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %.us-phi4864.i.i, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !43
  call void %i.im(ptr noundef %i.in, ptr noundef %i.ip) #16, !inline_history !136
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.iq(ptr noundef nonnull %.us-phi4864.i.i) #16, !inline_history !137
  %i.ir = getelementptr inbounds nuw i8, ptr %.048.i, i64 32 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !33
  %i.it = add i64 %i.is, -1
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !33
  br label %dictDelete.exit.i

bb.bi:                                            ; preds = %bb.bc, %bb.bb
  %i.iu = getelementptr inbounds nuw i8, ptr %.03247.i.i, i64 16
  %.032.i.i = load ptr, ptr %i.iu, align 8, !tbaa !34 ; 2 uses
  %.not.i55.i = icmp eq ptr %.032.i.i, null
  br i1 %.not.i55.i, label %dictDelete.exit.i, label %.lr.ph.split.i54.i, !llvm.loop !138

dictDelete.exit.i:                                ; preds = %bb.bi, %.lr.ph50.i.i, %bb.bh, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.iv = load ptr, ptr %i.dx, align 8, !tbaa !112
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !113 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !106
  %i.iz = icmp eq i32 %i.iy, 3
  br i1 %i.iz, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %dictDelete.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisGetSubscribeCallback) #17
  unreachable

bb.bk:                                            ; preds = %dictDelete.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !139
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %bb.bl, label %bb.bw

bb.bl:                                            ; preds = %bb.bk
  %i.jd = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !33
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %bb.bm, label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !33
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.jl = load i32, ptr %i.h, align 8, !tbaa !63
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.jn = load i32, ptr %i.c, align 8, !tbaa !47
  %i.jo = and i32 %i.jn, -33
  store i32 %i.jo, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.jp = load ptr, ptr %i.i, align 8, !tbaa !83  ; 2 uses
  %.not.i5878.i = icmp eq ptr %i.jp, null
  br i1 %.not.i5878.i, label %__redisShiftCallback.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bo, %__redisPushCallback.exit.i
  %i.jq = phi ptr [ %i.kb, %__redisPushCallback.exit.i ], [ %i.jp, %bb.bo ] ; 4 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !84
  store ptr %i.jr, ptr %i.i, align 8, !tbaa !83
  %i.js = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.jt = icmp eq ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i
  store ptr null, ptr %i.j, align 8, !tbaa !86
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.jq, i64 32, i1 false)
  %i.ju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.ju(ptr noundef nonnull %i.jq) #16, !inline_history !140
  %i.jv = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !19
  %i.jw = call ptr %i.jv(i64 noundef 32) #16, !inline_history !141 ; 6 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %__redisPushCallback.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  store ptr null, ptr %i.jw, align 8, !tbaa !84
  %i.jy = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr %i.jw, ptr %i.d, align 8, !tbaa !83
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ka = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %.not.i60.i = icmp eq ptr %i.ka, null
  br i1 %.not.i60.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.jw, ptr %i.ka, align 8, !tbaa !84
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  store ptr %i.jw, ptr %i.e, align 8, !tbaa !86
  br label %__redisPushCallback.exit.i

__redisPushCallback.exit.i:                       ; preds = %bb.bv, %bb.bq
  %i.kb = load ptr, ptr %i.i, align 8, !tbaa !83  ; 2 uses
  %.not.i58.i = icmp eq ptr %i.kb, null
  br i1 %.not.i58.i, label %__redisShiftCallback.exit.i, label %.lr.ph.i

__redisShiftCallback.exit.i:                      ; preds = %__redisPushCallback.exit.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.bw

bb.bw:                                            ; preds = %__redisShiftCallback.exit.i, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.au, %bb.at
  call void @hi_sdsfree(ptr noundef %.046.i) #16
  br label %__redisGetSubscribeCallback.exit

.thread.i:                                        ; preds = %bb.ag, %bb.af, %bb.ae
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !83  ; 7 uses
  %.not.i62.i = icmp eq ptr %i.kc, null
  br i1 %.not.i62.i, label %__redisGetSubscribeCallback.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %.thread.i
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !84
  store ptr %i.kd, ptr %i.i, align 8, !tbaa !83
  %i.ke = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.kf = icmp eq ptr %i.kc, %i.ke
  br i1 %i.kf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr null, ptr %i.j, align 8, !tbaa !86
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.sroa.8.0.copyload72 = load ptr, ptr %.sroa.8.0..sroa_idx71, align 8
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load i64, ptr %.sroa.10.0..sroa_idx77, align 8
  %.sroa.1079.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %.sroa.1079.0.copyload83 = load ptr, ptr %.sroa.1079.0..sroa_idx82, align 8
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.kh(ptr noundef nonnull %i.kc) #16, !inline_history !140
  br label %__redisGetSubscribeCallback.exit

bb.ca:                                            ; preds = %bb.ak
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.6) #16
  %i.ki = load i32, ptr %i.k, align 8, !tbaa !66
  store i32 %i.ki, ptr %i.l, align 8, !tbaa !67
  store ptr %i.m, ptr %i.n, align 8, !tbaa !68
  %.pre143 = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %__redisGetSubscribeCallback.exit.thread

__redisGetSubscribeCallback.exit:                 ; preds = %bb.bz, %bb.bw, %__redisShiftCallback.exit.thread
  %.sroa.10.sroa.0.1 = phi i64 [ %i.kg, %bb.bz ], [ %.sroa.10.sroa.0.0, %bb.bw ], [ %i.cq, %__redisShiftCallback.exit.thread ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload72, %bb.bz ], [ %.sroa.8.2, %bb.bw ], [ %.sroa.8.0.copyload, %__redisShiftCallback.exit.thread ] ; 3 uses
  %.sroa.1079.0 = phi ptr [ %.sroa.1079.0.copyload83, %bb.bz ], [ %.sroa.1079.2, %bb.bw ], [ %.sroa.1079.0.copyload, %__redisShiftCallback.exit.thread ] ; 3 uses
  %.not30 = icmp eq ptr %.sroa.8.0, null
  %.pre144 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  br i1 %.not30, label %__redisGetSubscribeCallback.exit.thread, label %__redisRunCallback.exit

__redisRunCallback.exit:                          ; preds = %__redisGetSubscribeCallback.exit
  %i.kj = load i32, ptr %i.c, align 8, !tbaa !47
  %i.kk = or i32 %i.kj, 16
  store i32 %i.kk, ptr %i.c, align 8, !tbaa !47
  call void %.sroa.8.0(ptr noundef %0, ptr noundef %.pre144, ptr noundef %.sroa.1079.0) #16, !inline_history !88
  %i.kl = load i32, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.km = and i32 %i.kl, -17                      ; 2 uses
  store i32 %i.km, ptr %i.c, align 8, !tbaa !47
  %i.kn = and i32 %i.kl, 1024
  %.not31 = icmp eq i32 %i.kn, 0
  br i1 %.not31, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %__redisRunCallback.exit
  %i.ko = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 200
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !121
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !125
  %i.kt = load ptr, ptr %i.a, align 8, !tbaa !15
  call void %i.ks(ptr noundef %i.kt) #16
  %.pre = load i32, ptr %i.c, align 8, !tbaa !47
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %__redisRunCallback.exit
  %i.ku = phi i32 [ %.pre, %bb.cb ], [ %i.km, %__redisRunCallback.exit ] ; 2 uses
  %i.kv = and i32 %i.ku, 8
  %.not32 = icmp eq i32 %i.kv, 0
  br i1 %.not32, label %bb.cd, label %__redisAsyncDisconnect.exit.sink.split

__redisGetSubscribeCallback.exit.thread:          ; preds = %bb.ca, %.thread.i, %__redisGetSubscribeCallback.exit
  %i.kw = phi ptr [ %i.q, %.thread.i ], [ %.pre144, %__redisGetSubscribeCallback.exit ], [ %.pre143, %bb.ca ]
  %.sroa.10.sroa.0.2 = phi i64 [ 0, %.thread.i ], [ %.sroa.10.sroa.0.1, %__redisGetSubscribeCallback.exit ], [ 0, %bb.ca ]
  %.sroa.1079.0107 = phi ptr [ null, %.thread.i ], [ %.sroa.1079.0, %__redisGetSubscribeCallback.exit ], [ null, %bb.ca ]
  %i.kx = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 200
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !121
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !125
  call void %i.lb(ptr noundef %i.kw) #16
  %.pre145 = load i32, ptr %i.c, align 8, !tbaa !47
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %__redisGetSubscribeCallback.exit.thread
  %i.lc = phi i32 [ %.pre145, %__redisGetSubscribeCallback.exit.thread ], [ %i.ku, %bb.cc ]
  %.sroa.10.sroa.0.3 = phi i64 [ %.sroa.10.sroa.0.2, %__redisGetSubscribeCallback.exit.thread ], [ %.sroa.10.sroa.0.1, %bb.cc ]
  %.sroa.1079.0106 = phi ptr [ %.sroa.1079.0107, %__redisGetSubscribeCallback.exit.thread ], [ %.sroa.1079.0, %bb.cc ]
  %.sroa.8.0104 = phi ptr [ null, %__redisGetSubscribeCallback.exit.thread ], [ %.sroa.8.0, %bb.cc ]
  %i.ld = and i32 %i.lc, 64
  %.not33 = icmp eq i32 %i.ld, 0
  br i1 %.not33, label %.backedge, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.le = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !19
  %i.lf = call ptr %i.le(i64 noundef 32) #16, !inline_history !142 ; 8 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %.backedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.sroa.8.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %.sroa.8.0104, ptr %.sroa.8.0..sroa_idx73, align 8
  %.sroa.10.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store i64 %.sroa.10.sroa.0.3, ptr %.sroa.10.0..sroa_idx78, align 8
  %.sroa.1079.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  store ptr %.sroa.1079.0106, ptr %.sroa.1079.0..sroa_idx84, align 8
  store ptr null, ptr %i.lf, align 8, !tbaa !84
  %i.lh = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.lf, ptr %i.d, align 8, !tbaa !83
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.lj = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %.not.i55 = icmp eq ptr %i.lj, null
  br i1 %.not.i55, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.lf, ptr %i.lj, align 8, !tbaa !84
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store ptr %i.lf, ptr %i.e, align 8, !tbaa !86
  br label %.backedge

._crit_edge:                                      ; preds = %bb.a
  %.not.i.i57 = icmp eq ptr %0, null
  br i1 %.not.i.i57, label %.__redisAsyncCopyError.exit_crit_edge.i63, label %._crit_edge.thread

.__redisAsyncCopyError.exit_crit_edge.i63:        ; preds = %._crit_edge
  %.pre.i64 = load i32, ptr inttoptr (i64 272 to ptr), align 16, !tbaa !67
  br label %__redisAsyncCopyError.exit.i58

._crit_edge.thread:                               ; preds = %.backedge, %._crit_edge
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !66 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !67
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !68
  br label %__redisAsyncCopyError.exit.i58

__redisAsyncCopyError.exit.i58:                   ; preds = %._crit_edge.thread, %.__redisAsyncCopyError.exit_crit_edge.i63
  %i.lp = phi i32 [ %.pre.i64, %.__redisAsyncCopyError.exit_crit_edge.i63 ], [ %i.ll, %._crit_edge.thread ]
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %__redisAsyncCopyError.exit.i58
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !83 ; 4 uses
  %.not.i12.i62 = icmp eq ptr %i.ls, null
  br i1 %.not.i12.i62, label %__redisShiftCallback.exit.thread.i59, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !84
  store ptr %i.lt, ptr %i.lr, align 8, !tbaa !83
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !86
  %i.lw = icmp eq ptr %i.ls, %i.lv
  br i1 %i.lw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store ptr null, ptr %i.lu, align 8, !tbaa !86
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  call void %i.lx(ptr noundef nonnull %i.ls) #16, !inline_history !127
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisAsyncDisconnect) #17
  unreachable

bb.co:                                            ; preds = %__redisAsyncCopyError.exit.i58
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !47
  %i.ma = or i32 %i.lz, 4
  store i32 %i.ma, ptr %i.ly, align 8, !tbaa !47
  br label %__redisShiftCallback.exit.thread.i59

__redisShiftCallback.exit.thread.i59:             ; preds = %bb.co, %bb.ck
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !96 ; 2 uses
  %.not.i60 = icmp eq ptr %i.mc, null
  br i1 %.not.i60, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %__redisShiftCallback.exit.thread.i59
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !77
  call void %i.mc(ptr noundef %i.me) #16, !inline_history !101
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %__redisShiftCallback.exit.thread.i59
  store ptr null, ptr %i.mb, align 8, !tbaa !96
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !47
  %i.mh = and i32 %i.mg, 512
  %.not11.i61 = icmp eq i32 %i.mh, 0
  br i1 %.not11.i61, label %__redisAsyncDisconnect.exit.sink.split, label %__redisAsyncDisconnect.exit

__redisAsyncDisconnect.exit.sink.split:           ; preds = %bb.cc, %bb.cq, %bb.ab, %bb.l
  call fastcc void @__redisAsyncFree(ptr noundef nonnull %0)
  br label %__redisAsyncDisconnect.exit

__redisAsyncDisconnect.exit:                      ; preds = %__redisAsyncDisconnect.exit.sink.split, %bb.ab, %bb.cq, %hi_sdslen.exit.thread, %hi_sdslen.exit, %bb.c, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @redisGetReply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @redisAsyncRead(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @redisBufferRead(ptr noundef %0) #16
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %.__redisAsyncCopyError.exit_crit_edge.i, label %bb.c

.__redisAsyncCopyError.exit_crit_edge.i:          ; preds = %bb.b
  %.pre.i = load i32, ptr inttoptr (i64 272 to ptr), align 16, !tbaa !67
  br label %__redisAsyncCopyError.exit.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.d, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.f, ptr %i.g, align 8, !tbaa !68
  br label %__redisAsyncCopyError.exit.i

__redisAsyncCopyError.exit.i:                     ; preds = %bb.c, %.__redisAsyncCopyError.exit_crit_edge.i
  %i.h = phi i32 [ %.pre.i, %.__redisAsyncCopyError.exit_crit_edge.i ], [ %i.d, %bb.c ]
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %__redisAsyncCopyError.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 4 uses
  %.not.i12.i = icmp eq ptr %i.k, null
  br i1 %.not.i12.i, label %__redisShiftCallback.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  store ptr %i.l, ptr %i.j, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.o = icmp eq ptr %i.k, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.m, align 8, !tbaa !86
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !44
  tail call void %i.p(ptr noundef nonnull %i.k) #16, !inline_history !127
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.__redisAsyncDisconnect) #17
  unreachable

bb.h:                                             ; preds = %__redisAsyncCopyError.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !47
  %i.s = or i32 %i.r, 4
  store i32 %i.s, ptr %i.q, align 8, !tbaa !47
  br label %__redisShiftCallback.exit.thread.i

__redisShiftCallback.exit.thread.i:               ; preds = %bb.h, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %__redisShiftCallback.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77
  tail call void %i.u(ptr noundef %i.w) #16, !inline_history !101
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %__redisShiftCallback.exit.thread.i
  store ptr null, ptr %i.t, align 8, !tbaa !96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47
  %i.z = and i32 %i.y, 512
  %.not11.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i, label %bb.k, label %__redisAsyncDisconnect.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @__redisAsyncFree(ptr noundef nonnull %0)
  br label %__redisAsyncDisconnect.exit

bb.l:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !72
  %i.ac = and i32 %i.ab, 2
  %.not.i8 = icmp eq i32 %i.ac, 0
end_hunk_0
