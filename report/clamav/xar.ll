Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/xar?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@cli_scanxar:bb.a
  br i1 %.not.i383, label %xar_hash_update.exit384, label %bb.av

bb.av:                                            ; preds = %bb.au
  switch i32 %i.cw, label %bb.aw [
    i32 0, label %xar_hash_update.exit384
    i32 3, label %xar_hash_update.exit384
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fc = call i32 @cl_update_hash(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.do, i64 noundef %i.fb) #9 ; 0 uses
  br label %xar_hash_update.exit384

xar_hash_update.exit384:                          ; preds = %bb.aw, %bb.av, %bb.av, %bb.au, %.loopexit.thread
  %i.fd = load i64, ptr %i.x, align 8, !tbaa !54  ; 2 uses
  %i.fe = icmp ult i64 %i.dq, %i.fd
  %i.ff = icmp ult i64 %i.dq, %i.dd
  %or.cond556 = and i1 %i.fe, %i.ff
  br i1 %or.cond556, label %bb.ak, label %.critedge

.critedge:                                        ; preds = %xar_hash_update.exit384, %.loopexit, %.preheader
  %.5249 = phi i32 [ 0, %.preheader ], [ 26, %.loopexit ], [ 0, %xar_hash_update.exit384 ]
  %.5231 = phi i32 [ %.0226682, %.preheader ], [ %i.ey, %.loopexit ], [ %.0226682, %xar_hash_update.exit384 ]
  %i.fg = call i32 @inflateEnd(ptr noundef nonnull %2) #9 ; 0 uses
  br label %bb.cd

bb.ax:                                            ; preds = %xar_hash_init.exit381
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.fh = load i64, ptr %i.x, align 8, !tbaa !54
  %i.fi = sub i64 %i.fh, %i.cq                    ; 2 uses
  %.374 = call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.fi) ; 3 uses
  %i.fj = call ptr @__lzma_wrap_alloc(ptr noundef null, i64 noundef 1048576) #9 ; 9 uses
  %i.fk = icmp ult i64 %i.fi, %i.cv
  br i1 %i.fk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i64 %.374, ptr %i.b, align 8, !tbaa !48
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fl = phi i64 [ %.374, %bb.ay ], [ %i.cv, %bb.ax ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %3, i8 0, i64 200, i1 false)
  %i.fm = icmp eq ptr %i.fj, null
  br i1 %i.fm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #9
  br label %.thread478

bb.bb:                                            ; preds = %bb.az
  %i.fn = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.fo = call ptr %i.fn(ptr noundef nonnull %i.v, i64 noundef %i.cq, i64 noundef 13, i32 noundef 0) #9, !inline_history !51 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  %i.fq = tail call ptr @__errno_location() #10
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !8
  %i.fs = call ptr @cli_strerror(i32 noundef %i.fr, ptr noundef nonnull %i.r, i64 noundef 128) #9 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25, i32 noundef 13, i64 noundef %i.cq, ptr noundef nonnull %i.r) #9
  call void @__lzma_wrap_free(ptr noundef null, ptr noundef nonnull %i.fj) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #9
  br label %.thread478

bb.bd:                                            ; preds = %bb.bb
  store ptr %i.fo, ptr %i.cc, align 8, !tbaa !78
  store i64 13, ptr %i.cd, align 8, !tbaa !79
  %.not346 = icmp eq ptr %.0.i, null              ; 2 uses
  br i1 %.not346, label %xar_hash_update.exit385, label %bb.be

bb.be:                                            ; preds = %bb.bd
  switch i32 %i.cw, label %bb.bf [
    i32 0, label %xar_hash_update.exit385
    i32 3, label %xar_hash_update.exit385
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ft = call i32 @cl_update_hash(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.fo, i64 noundef 13) #9 ; 0 uses
  br label %xar_hash_update.exit385

xar_hash_update.exit385:                          ; preds = %bb.bf, %bb.be, %bb.be, %bb.bd
  %i.fu = call i32 @cli_LzmaInit(ptr noundef nonnull %3, i64 noundef 0) #9 ; 2 uses
  %.not347 = icmp eq i32 %i.fu, 0
  br i1 %.not347, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %xar_hash_update.exit385
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %i.fu) #9
  call void @__lzma_wrap_free(ptr noundef null, ptr noundef nonnull %i.fj) #9
  %i.fv = add i32 %.0226682, 1
  br label %bb.bw

bb.bh:                                            ; preds = %xar_hash_update.exit385
  %i.fw = add i64 %i.cq, 13
  %i.fx = add i64 %.374, -13
  %i.fy = add i64 %i.fl, %i.cq
  %.not348 = icmp eq ptr %.0.i380, null
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bv, %bb.bh
  %.2224 = phi i64 [ %i.fw, %bb.bh ], [ %i.gq, %bb.bv ] ; 5 uses
  %.0209 = phi i64 [ %i.fx, %bb.bh ], [ %i.gp, %bb.bv ] ; 2 uses
  %.0208 = phi i64 [ 0, %bb.bh ], [ %i.gz, %bb.bv ]
  %i.fz = load i64, ptr %i.x, align 8, !tbaa !54
  %i.ga = icmp ult i64 %.2224, %i.fz
  %i.gb = icmp ult i64 %.2224, %i.fy
  %or.cond687 = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond687, label %bb.bj, label %.critedge9

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.fj, ptr %i.ce, align 8, !tbaa !80
  store i64 1048576, ptr %i.cf, align 8, !tbaa !81
  %i.gc = call i64 @llvm.umin.i64(i64 %.0209, i64 262144) ; 5 uses
  store i64 %i.gc, ptr %i.cd, align 8, !tbaa !79
  %i.gd = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ge = call ptr %i.gd(ptr noundef nonnull %i.v, i64 noundef %.2224, i64 noundef %i.gc, i32 noundef 0) #9, !inline_history !51 ; 3 uses
  store ptr %i.ge, ptr %i.cc, align 8, !tbaa !78
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  %i.gg = tail call ptr @__errno_location() #10
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !8
  %i.gi = call ptr @cli_strerror(i32 noundef %i.gh, ptr noundef nonnull %i.s, i64 noundef 128) #9 ; 0 uses
  %i.gj = load i64, ptr %i.cd, align 8, !tbaa !79
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i64 noundef %i.gj, i64 noundef %.2224, ptr noundef nonnull %i.s) #9
  call void @__lzma_wrap_free(ptr noundef null, ptr noundef nonnull %i.fj) #9
  call void @cli_LzmaShutdown(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #9
  br label %.thread478

bb.bl:                                            ; preds = %bb.bj
  %i.gk = call i32 @cli_LzmaDecode(ptr noundef nonnull %3) #9 ; 3 uses
  %i.gl = and i32 %i.gk, -3
  %or.cond11.not = icmp eq i32 %i.gl, 0
  br i1 %or.cond11.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, i32 noundef %i.gk) #9
  %i.gm = add i32 %.0226682, 1
  br label %.critedge9

bb.bn:                                            ; preds = %bb.bl
  %i.gn = load i64, ptr %i.cd, align 8, !tbaa !79 ; 2 uses
  %i.go = sub i64 %i.gc, %i.gn                    ; 3 uses
  %i.gp = sub i64 %.0209, %i.go
  %i.gq = add i64 %i.go, %.2224
  %i.gr = load i64, ptr %i.cf, align 8, !tbaa !81 ; 2 uses
  %i.gs = sub i64 1048576, %i.gr                  ; 4 uses
  %i.gt = icmp eq i64 %i.gr, 1048576              ; 2 uses
  br i1 %i.gt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, i64 noundef %i.gc, i64 noundef 0) #9
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.not.i386 = icmp eq i64 %i.gc, %i.gn
  %or.cond558 = select i1 %.not346, i1 true, i1 %.not.i386
  br i1 %or.cond558, label %xar_hash_update.exit387, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  switch i32 %i.cw, label %bb.br [
    i32 0, label %xar_hash_update.exit387
    i32 3, label %xar_hash_update.exit387
  ]

bb.br:                                            ; preds = %bb.bq
  %i.gu = call i32 @cl_update_hash(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ge, i64 noundef %i.go) #9 ; 0 uses
  br label %xar_hash_update.exit387

xar_hash_update.exit387:                          ; preds = %bb.br, %bb.bq, %bb.bq, %bb.bp
  %or.cond559 = or i1 %.not348, %i.gt
  br i1 %or.cond559, label %xar_hash_update.exit389, label %bb.bs

bb.bs:                                            ; preds = %xar_hash_update.exit387
  switch i32 %i.cy, label %bb.bt [
    i32 0, label %xar_hash_update.exit389
    i32 3, label %xar_hash_update.exit389
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.gv = call i32 @cl_update_hash(ptr noundef nonnull %.0.i380, ptr noundef nonnull %i.fj, i64 noundef %i.gs) #9 ; 0 uses
  br label %xar_hash_update.exit389

xar_hash_update.exit389:                          ; preds = %bb.bt, %bb.bs, %bb.bs, %xar_hash_update.exit387
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gx = call i64 @cli_writen(i32 noundef %i.gw, ptr noundef nonnull %i.fj, i64 noundef %i.gs) #9
  %i.gy = icmp eq i64 %i.gx, -1
  br i1 %i.gy, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %xar_hash_update.exit389
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30, i64 noundef %i.gs) #9
  call void @__lzma_wrap_free(ptr noundef null, ptr noundef nonnull %i.fj) #9
  call void @cli_LzmaShutdown(ptr noundef nonnull %3) #9
  br label %.thread478

bb.bv:                                            ; preds = %xar_hash_update.exit389
  %i.gz = add i64 %i.gs, %.0208                   ; 2 uses
  %i.ha = call i32 @cli_checklimits(ptr noundef nonnull @.str.23, ptr noundef nonnull %0, i64 noundef %i.gz, i64 noundef 0, i64 noundef 0) #9
  %4 = or i32 %i.ha, %i.gk
  %i.hb = icmp eq i32 %4, 0
  br i1 %i.hb, label %bb.bi, label %.critedge9

.critedge9:                                       ; preds = %bb.bv, %bb.bi, %bb.bm
  %.8252 = phi i32 [ 26, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.bv ]
  %.8 = phi i32 [ %i.gm, %bb.bm ], [ %.0226682, %bb.bi ], [ %.0226682, %bb.bv ]
  call void @cli_LzmaShutdown(ptr noundef nonnull %3) #9
  call void @__lzma_wrap_free(ptr noundef null, ptr noundef nonnull %i.fj) #9
  br label %bb.bw

.thread478:                                       ; preds = %bb.ba, %bb.bc, %bb.bk, %bb.bu
  %.9253.ph = phi i32 [ 20, %bb.ba ], [ 12, %bb.bc ], [ 14, %bb.bu ], [ 12, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.thread531

bb.bw:                                            ; preds = %.critedge9, %bb.bg
  %.9253 = phi i32 [ 26, %bb.bg ], [ %.8252, %.critedge9 ]
  %.9 = phi i32 [ %i.fv, %bb.bg ], [ %.8, %.critedge9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.cd

bb.bx:                                            ; preds = %xar_hash_init.exit381
  %i.hc = load i64, ptr %i.x, align 8, !tbaa !54
  %i.hd = sub i64 %i.hc, %i.cq
  %.376 = call i64 @llvm.umin.i64(i64 %i.hd, i64 %i.cv) ; 2 uses
  %i.he = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !82 ; 2 uses
  %.not357 = icmp eq i64 %i.hg, 0
  %..376 = call i64 @llvm.umin.i64(i64 %i.hg, i64 %.376)
  %.0 = select i1 %.not357, i64 %.376, i64 %..376 ; 6 uses
  %i.hh = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.hi = call ptr %i.hh(ptr noundef nonnull %i.v, i64 noundef %i.cq, i64 noundef %.0, i32 noundef 0) #9, !inline_history !51 ; 3 uses
  %.not358 = icmp eq ptr %i.hi, null
  br i1 %.not358, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #9
  %i.hj = tail call ptr @__errno_location() #10
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !8
  %i.hl = call ptr @cli_strerror(i32 noundef %i.hk, ptr noundef nonnull %i.t, i64 noundef 128) #9 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31, i64 noundef %.0, i64 noundef %i.cq, ptr noundef nonnull %i.t) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #9
  br label %.thread531

bb.bz:                                            ; preds = %bb.bx
  %.not359 = icmp eq ptr %.0.i, null
  %.not.i390 = icmp eq i64 %.0, 0
  %or.cond561 = or i1 %.not359, %.not.i390
  br i1 %or.cond561, label %xar_hash_update.exit391, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  switch i32 %i.cw, label %bb.cb [
    i32 0, label %xar_hash_update.exit391
    i32 3, label %xar_hash_update.exit391
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.hm = call i32 @cl_update_hash(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.hi, i64 noundef %.0) #9 ; 0 uses
  br label %xar_hash_update.exit391

xar_hash_update.exit391:                          ; preds = %bb.cb, %bb.ca, %bb.ca, %bb.bz
  %i.hn = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ho = call i64 @cli_writen(i32 noundef %i.hn, ptr noundef nonnull %i.hi, i64 noundef %.0) #9
  %i.hp = icmp eq i64 %i.ho, -1
  br i1 %i.hp, label %bb.cc, label %.thread863

bb.cc:                                            ; preds = %xar_hash_update.exit391
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i64 noundef %.0, i64 noundef %i.cq) #9
  br label %.thread531

bb.cd:                                            ; preds = %bb.bw, %.critedge
  %.11255 = phi i32 [ %.9253, %bb.bw ], [ %.5249, %.critedge ] ; 3 uses
  %.10 = phi i32 [ %.9, %bb.bw ], [ %.5231, %.critedge ] ; 3 uses
  %.not360 = icmp eq ptr %.0.i, null
  br i1 %.not360, label %bb.cg, label %._crit_edge

.thread863:                                       ; preds = %xar_hash_update.exit391
  %.not360866 = icmp eq ptr %.0.i, null
  br i1 %.not360866, label %xar_hash_final.exit.thread875, label %._crit_edge

._crit_edge:                                      ; preds = %.thread863, %bb.cd
  %i.hq = phi i1 [ false, %.thread863 ], [ true, %bb.cd ]
  %.10869 = phi i32 [ %.0226682, %.thread863 ], [ %.10, %bb.cd ]
  %.11255867 = phi i32 [ 0, %.thread863 ], [ %.11255, %bb.cd ]
  %.pre = load i32, ptr %i.g, align 4, !tbaa !8
  br label %bb.ce

.thread487:                                       ; preds = %bb.aj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18, i32 noundef %i.dc) #9
  %i.hr = add i32 %.0226682, 1                    ; 3 uses
  %.not360490 = icmp eq ptr %.0.i, null
  br i1 %.not360490, label %xar_hash_final.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge, %.thread487
  %i.hs = phi i32 [ %i.cw, %.thread487 ], [ %.pre, %._crit_edge ]
  %i.ht = phi i1 [ true, %.thread487 ], [ %i.hq, %._crit_edge ] ; 3 uses
  %.10495.a = phi i32 [ %i.hr, %.thread487 ], [ %.10869, %._crit_edge ] ; 3 uses
  %.11255492.a = phi i32 [ 26, %.thread487 ], [ %.11255867, %._crit_edge ] ; 3 uses
  switch i32 %i.hs, label %bb.cf [
    i32 3, label %xar_hash_final.exit
    i32 0, label %xar_hash_final.exit
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.hu = call i32 @cl_finish_hash(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.l) #9 ; 0 uses
  br label %xar_hash_final.exit

bb.cg:                                            ; preds = %bb.cd
  %i.hv = icmp eq i32 %.11255, 0
  br i1 %i.hv, label %xar_hash_final.exit.thread875, label %xar_hash_final.exit

xar_hash_final.exit:                              ; preds = %bb.cf, %bb.ce, %bb.ce, %bb.cg
  %i.hw = phi i1 [ true, %bb.cg ], [ %i.ht, %bb.cf ], [ %i.ht, %bb.ce ], [ %i.ht, %bb.ce ] ; 2 uses
  %.10494 = phi i32 [ %.10, %bb.cg ], [ %.10495.a, %bb.cf ], [ %.10495.a, %bb.ce ], [ %.10495.a, %bb.ce ] ; 3 uses
  %.11255491 = phi i32 [ %.11255, %bb.cg ], [ %.11255492.a, %bb.cf ], [ %.11255492.a, %bb.ce ], [ %.11255492.a, %bb.ce ] ; 2 uses
  %.not361 = icmp eq ptr %.0.i380, null
  br i1 %.not361, label %bb.cj, label %xar_hash_final.exit._crit_edge

xar_hash_final.exit.thread875:                    ; preds = %bb.cg, %.thread863
  %.10870874 = phi i32 [ %.10, %bb.cg ], [ %.0226682, %.thread863 ] ; 2 uses
  %i.hx = phi i1 [ true, %bb.cg ], [ false, %.thread863 ] ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #9
  %i.hy = add i32 %.0232677, 1                    ; 2 uses
  %.not361879 = icmp eq ptr %.0.i380, null
  br i1 %.not361879, label %xar_hash_final.exit392.thread520, label %xar_hash_final.exit._crit_edge

xar_hash_final.exit._crit_edge:                   ; preds = %xar_hash_final.exit.thread875, %xar_hash_final.exit
  %.1233884 = phi i32 [ %i.hy, %xar_hash_final.exit.thread875 ], [ %.0232677, %xar_hash_final.exit ]
  %.11255491883 = phi i32 [ 0, %xar_hash_final.exit.thread875 ], [ %.11255491, %xar_hash_final.exit ]
  %.10494880 = phi i32 [ %.10870874, %xar_hash_final.exit.thread875 ], [ %.10494, %xar_hash_final.exit ]
  %i.hz = phi i1 [ %i.hx, %xar_hash_final.exit.thread875 ], [ %i.hw, %xar_hash_final.exit ]
  %.pre811 = load i32, ptr %i.h, align 4, !tbaa !8
  %i.ia = icmp eq i32 %.11255491883, 0
  br label %bb.ch

xar_hash_final.exit.thread:                       ; preds = %.thread487
  %.not361503 = icmp eq ptr %.0.i380, null
  br i1 %.not361503, label %xar_hash_final.exit392.thread, label %bb.ch

bb.ch:                                            ; preds = %xar_hash_final.exit._crit_edge, %xar_hash_final.exit.thread
  %i.ib = phi i32 [ %i.cy, %xar_hash_final.exit.thread ], [ %.pre811, %xar_hash_final.exit._crit_edge ]
  %.1233511 = phi i32 [ %.0232677, %xar_hash_final.exit.thread ], [ %.1233884, %xar_hash_final.exit._crit_edge ] ; 2 uses
  %.11255491508 = phi i1 [ false, %xar_hash_final.exit.thread ], [ %i.ia, %xar_hash_final.exit._crit_edge ]
  %.10494505 = phi i32 [ %i.hr, %xar_hash_final.exit.thread ], [ %.10494880, %xar_hash_final.exit._crit_edge ] ; 2 uses
  %i.ic = phi i1 [ true, %xar_hash_final.exit.thread ], [ %i.hz, %xar_hash_final.exit._crit_edge ]
  switch i32 %i.ib, label %bb.ci [
    i32 3, label %xar_hash_final.exit392
    i32 0, label %xar_hash_final.exit392
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.id = call i32 @cl_finish_hash(ptr noundef nonnull %.0.i380, ptr noundef nonnull %i.k) #9 ; 0 uses
  br label %xar_hash_final.exit392

bb.cj:                                            ; preds = %xar_hash_final.exit
  %i.ie = icmp eq i32 %.11255491, 0
  br i1 %i.ie, label %xar_hash_final.exit392.thread520, label %xar_hash_final.exit392.thread

xar_hash_final.exit392.thread520:                 ; preds = %xar_hash_final.exit.thread875, %bb.cj
  %i.if = phi i1 [ %i.hw, %bb.cj ], [ %i.hx, %xar_hash_final.exit.thread875 ]
  %.10494881891 = phi i32 [ %.10494, %bb.cj ], [ %.10870874, %xar_hash_final.exit.thread875 ]
  %.1233885890 = phi i32 [ %.0232677, %bb.cj ], [ %i.hy, %xar_hash_final.exit.thread875 ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #9
  %i.ig = add i32 %.1233885890, 1
  br label %bb.ck

xar_hash_final.exit392:                           ; preds = %bb.ci, %bb.ch, %bb.ch
  br i1 %.11255491508, label %bb.ck, label %xar_hash_final.exit392.thread

bb.ck:                                            ; preds = %xar_hash_final.exit392.thread520, %xar_hash_final.exit392
  %.2234525 = phi i32 [ %i.ig, %xar_hash_final.exit392.thread520 ], [ %.1233511, %xar_hash_final.exit392 ] ; 3 uses
  %i.ih = phi i1 [ %i.if, %xar_hash_final.exit392.thread520 ], [ %i.ic, %xar_hash_final.exit392 ]
  %.10494504524 = phi i32 [ %.10494881891, %xar_hash_final.exit392.thread520 ], [ %.10494505, %xar_hash_final.exit392 ] ; 2 uses
  %i.ii = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %.not362 = icmp eq ptr %i.ii, null
  br i1 %.not362, label %bb.cq, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ij = call ptr @cli_hex2str(ptr noundef nonnull %i.ii) #9 ; 3 uses
  %.not.i393 = icmp eq ptr %i.ij, null
  br i1 %.not.i393, label %xar_hash_check.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ik = load i32, ptr %i.g, align 4, !tbaa !8
  switch i32 %i.ik, label %xar_hash_check.exit.thread [
    i32 1, label %xar_hash_check.exit
    i32 2, label %bb.cn
  ]

bb.cn:                                            ; preds = %bb.cm
  br label %xar_hash_check.exit

xar_hash_check.exit:                              ; preds = %bb.cm, %bb.cn
  %.0.i394 = phi i64 [ 16, %bb.cn ], [ 20, %bb.cm ]
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.ij, i64 %.0.i394)
  %.not363 = icmp eq i32 %bcmp, 0
  br i1 %.not363, label %bb.co, label %xar_hash_check.exit.thread

xar_hash_check.exit.thread:                       ; preds = %bb.cm, %bb.cl, %xar_hash_check.exit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #9
  %i.il = add i32 %.2234525, 1
end_hunk_0
