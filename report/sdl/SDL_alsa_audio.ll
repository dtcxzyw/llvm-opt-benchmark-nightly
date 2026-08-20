inline.NumInlined: 88
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ALSA_pcm_cfg_hw_chans_n_scan:bb.a
  br i1 %i.ar, label %.thread92.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.174, ptr %i.g, align 4
  %i.as = load ptr, ptr @ALSA_snd_pcm_hw_params_set_channels_near, align 8
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.e, align 8
  %i.ay = tail call i32 %i.as(ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef nonnull %i.g) #8 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.thread92.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load ptr, ptr %0, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bc = load i32, ptr %i.bb, align 8
  store i32 %i.bc, ptr %i.h, align 4
  %i.bd = load ptr, ptr @ALSA_snd_pcm_hw_params_set_rate_near, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.e, align 8
  %i.bi = tail call i32 %i.bd(ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef nonnull %i.h, ptr noundef null) #8 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.thread92.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %0, align 8               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 132
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = sext i32 %i.bm to i64
  store i64 %i.bn, ptr %i.i, align 8
  %i.bo = load ptr, ptr @ALSA_snd_pcm_hw_params_set_period_size_near, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.e, align 8
  %i.bt = tail call i32 %i.bo(ptr noundef %i.br, ptr noundef %i.bs, ptr noundef nonnull %i.i, ptr noundef null) #8 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.thread92.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.j, align 8
  %i.bv = load ptr, ptr @ALSA_snd_pcm_hw_params_set_periods_min, align 8
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 200
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.e, align 8
  %i.cb = tail call i32 %i.bv(ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef nonnull %i.j, ptr noundef null) #8 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.thread92.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr @ALSA_snd_pcm_hw_params_set_periods_first, align 8
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = load ptr, ptr %i.e, align 8
  %i.cj = tail call i32 %i.cd(ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef nonnull %i.j, ptr noundef null) #8 ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %.thread92.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr @ALSA_snd_pcm_hw_params, align 8
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.e, align 8
  %i.cr = tail call i32 %i.cl(ptr noundef %i.cp, ptr noundef %i.cq) #8 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %.thread92.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = tail call fastcc i32 @alsa_chmap_cfg(ptr noundef %0) ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %.thread92, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %.thread92, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = load ptr, ptr @ALSA_snd_pcm_free_chmaps, align 8
  %i.cx = load ptr, ptr %i.k, align 8
  tail call void %i.cw(ptr noundef %i.cx) #8
  %i.cy = load ptr, ptr @ALSA_snd_pcm_hw_free, align 8
  %i.cz = load ptr, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 200
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call i32 %i.cy(ptr noundef %i.dc) #8 ; 0 uses
  %.2 = add i32 %.174, %.2.v
  br label %bb.b

.thread92.sink.split:                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.f, %bb.e, %.backedge
  %.lcssa224.sink = phi i32 [ %i.ab, %.backedge ], [ %i.cb, %bb.t ], [ %i.bt, %bb.s ], [ %i.bi, %bb.r ], [ %i.ay, %bb.q ], [ %i.ab, %bb.p ], [ %i.ab, %bb.f ], [ %i.t, %bb.e ], [ %i.cr, %bb.v ], [ %i.cj, %bb.u ]
  %.str.100.sink = phi ptr [ @.str.94, %.backedge ], [ @.str.98, %bb.t ], [ @.str.97, %bb.s ], [ @.str.96, %bb.r ], [ @.str.95, %bb.q ], [ @.str.94, %bb.p ], [ @.str.93, %bb.f ], [ @.str.92, %bb.e ], [ @.str.100, %bb.v ], [ @.str.99, %bb.u ]
  %i.de = load ptr, ptr @ALSA_snd_strerror, align 8
  %i.df = tail call ptr %i.de(i32 noundef %.lcssa224.sink) #8
  %i.dg = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.100.sink, ptr noundef %i.df) #8 ; 0 uses
  br label %.thread92

.thread92:                                        ; preds = %bb.x, %bb.w, %bb.d, %bb.c, %.thread92.sink.split
  %.378 = phi i32 [ -1, %.thread92.sink.split ], [ 1, %bb.c ], [ -1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.d ]
  ret i32 %.378
}

declare ptr @SDL_ClosestAudioFormats(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @alsa_chmap_cfg(ptr nofree noundef nonnull captures(none) initializes((48, 56)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %i.d = load ptr, ptr @ALSA_snd_pcm_query_chmaps, align 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr %i.d(ptr noundef %i.h) #8  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.101) #8
  br label %.thread45

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not59.i.i = icmp eq ptr %i.l, null
  br i1 %.not59.i.i, label %.thread45, label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 8 uses
  %i.n = getelementptr i8, ptr %0, i64 56         ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %.lr.ph62.i.i
  %i.o = phi ptr [ %i.l, %.lr.ph62.i.i ], [ %i.ay, %bb.l ] ; 2 uses
  %.03560.i.i = phi ptr [ %i.i, %.lr.ph62.i.i ], [ %i.ax, %bb.l ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = load i32, ptr %i.m, align 4
  %.not43.i.i = icmp eq i32 %i.q, %i.r
  br i1 %.not43.i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.o, align 4
  switch i32 %i.s, label %bb.l [
    i32 1, label %bb.f
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.t = load ptr, ptr @ALSA_snd_pcm_chmap_print, align 8
  %i.u = call i32 %i.t(ptr noundef nonnull %i.p, i64 noundef 128, ptr noundef nonnull %i.c) #8, !inline_history !19 ; 0 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.c) #8
  %i.v = load i32, ptr %i.m, align 4              ; 4 uses
  %.not63.i.i = icmp eq i32 %i.v, 0
  br i1 %.not63.i.i, label %.thread69.i.i, label %._crit_edge.i.i

.thread69.i.i:                                    ; preds = %bb.f
  %i.w = load ptr, ptr %.03560.i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %alsa_chmap_has_duplicate_position.exit.i.i

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.y = zext i32 %i.v to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr @sdl_channel_maps, i64 %i.y
  %i.aa = shl nuw nsw i64 %i.y, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 16 %i.z, i64 %i.aa, i1 false)
  %i.ab = load ptr, ptr %.03560.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  %i.ad = icmp eq i32 %i.v, 6
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call fastcc void @sdl_6chans_set_rear_or_side_channels_from_alsa_6chans(ptr noundef %i.n, ptr noundef nonnull %i.ac)
  %.pre.i.i = load i32, ptr %i.m, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ae = phi i32 [ %.pre.i.i, %bb.g ], [ %i.v, %._crit_edge.i.i ] ; 2 uses
  %i.af = icmp ult i32 %i.ae, 2
  br i1 %i.af, label %alsa_chmap_has_duplicate_position.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.h
  %zext.i.i = zext i32 %i.ae to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i.i, %.lr.ph.i.preheader.i.i
  %indvars.iv28.i.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i ], [ %indvars.iv.next29.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv28.i.i.i
  %i.ah = load i32, ptr %i.ag, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %indvars.iv28.i.i.i
  br i1 %.not17.i.i.i, label %._crit_edge.i.i.i, label %bb.j, !llvm.loop !20

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %i.ah
  br i1 %i.ak, label %alsa_chmap_has_duplicate_position.exit.thread.i.i, label %bb.i

alsa_chmap_has_duplicate_position.exit.thread.i.i: ; preds = %bb.j
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.109) #8
  br label %.thread.i.i

._crit_edge.i.i.i:                                ; preds = %bb.i
  %indvars.iv.next29.i.i.i = add nuw nsw i64 %indvars.iv28.i.i.i, 1 ; 2 uses
  %i.al = icmp eq i64 %indvars.iv.next29.i.i.i, %zext.i.i
  br i1 %i.al, label %alsa_chmap_has_duplicate_position.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !21

alsa_chmap_has_duplicate_position.exit.i.i:       ; preds = %._crit_edge.i.i.i, %bb.h, %.thread69.i.i
  %i.am = phi ptr [ %i.x, %.thread69.i.i ], [ %i.ac, %bb.h ], [ %i.ac, %._crit_edge.i.i.i ] ; 3 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.108) #8
  %i.an = load i32, ptr %i.n, align 8
  %i.ao = load i32, ptr %i.am, align 4
  %.not4656.i.i = icmp eq i32 %i.an, %i.ao
  br i1 %.not4656.i.i, label %.lr.ph58.i.i, label %.thread.i.i

.lr.ph58.i.i:                                     ; preds = %alsa_chmap_has_duplicate_position.exit.i.i
  %i.ap = load i32, ptr %i.m, align 4             ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  br i1 %i.ar, label %alsa_chmap_cfg_ordered_fixed_or_paired.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph58.i.i, %bb.k
  %indvars.iv.i.i76 = phi i64 [ %indvars.iv.next.i.i, %bb.k ], [ 0, %.lr.ph58.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i76, 1 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next.i.i
  %i.av = load i32, ptr %i.au, align 4
  %.not46.i.i = icmp eq i32 %i.at, %i.av
  br i1 %.not46.i.i, label %bb.k, label %.thread.i.i, !llvm.loop !22

bb.k:                                             ; preds = %.lr.ph
  %i.aw = icmp eq i64 %indvars.iv.next.i.i, %i.aq
  br i1 %i.aw, label %alsa_chmap_cfg_ordered_fixed_or_paired.exit.i, label %.lr.ph, !llvm.loop !22

.thread.i.i:                                      ; preds = %.lr.ph, %alsa_chmap_has_duplicate_position.exit.i.i, %alsa_chmap_has_duplicate_position.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.i, %bb.e, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.03560.i.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %.loopexit.i, label %bb.d, !llvm.loop !23

alsa_chmap_cfg_ordered_fixed_or_paired.exit.i:    ; preds = %.lr.ph58.i.i, %bb.k
  %i.az = call fastcc i32 @alsa_chmap_install(ptr noundef nonnull %0, ptr noundef nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %alsa_chmap_cfg_ordered.exit

.loopexit.i:                                      ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %.pre21.i = load ptr, ptr %.pre.i, align 8      ; 2 uses
  %.not75.i.i = icmp eq ptr %.pre21.i, null
  br i1 %.not75.i.i, label %.thread45, label %.lr.ph78.i.i

.lr.ph78.i.i:                                     ; preds = %.loopexit.i, %bb.ab
  %i.ba = phi ptr [ %i.cx, %bb.ab ], [ %.pre21.i, %.loopexit.i ] ; 2 uses
  %.04276.i.i = phi ptr [ %i.cw, %bb.ab ], [ %.pre.i, %.loopexit.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = load i32, ptr %i.m, align 4
  %.not50.i.i = icmp eq i32 %i.bc, %i.bd
  br i1 %.not50.i.i, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %.lr.ph78.i.i
  %i.be = load i32, ptr %i.ba, align 4
  %.not51.i.i = icmp eq i32 %i.be, 2
  br i1 %.not51.i.i, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bf = load ptr, ptr @ALSA_snd_pcm_chmap_print, align 8
  %i.bg = call i32 %i.bf(ptr noundef nonnull %i.bb, i64 noundef 128, ptr noundef nonnull %i.b) #8, !inline_history !24 ; 0 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.112, ptr noundef nonnull %i.b) #8
  %i.bh = load i32, ptr %i.m, align 4             ; 4 uses
  %.not79.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not79.i.i, label %.thread90.i.i, label %._crit_edge.i4.i

.thread90.i.i:                                    ; preds = %bb.n
  %i.bi = load ptr, ptr %.04276.i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %alsa_chmap_has_duplicate_position.exit.i14.i

._crit_edge.i4.i:                                 ; preds = %bb.n
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr @sdl_channel_maps, i64 %i.bk
  %i.bm = shl nuw nsw i64 %i.bk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 16 %i.bl, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr %.04276.i.i, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 5 uses
  %i.bp = icmp eq i32 %i.bh, 6
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i4.i
  call fastcc void @sdl_6chans_set_rear_or_side_channels_from_alsa_6chans(ptr noundef %i.n, ptr noundef nonnull %i.bo)
  %.pre.i19.i = load i32, ptr %i.m, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i4.i
  %i.bq = phi i32 [ %.pre.i19.i, %bb.o ], [ %i.bh, %._crit_edge.i4.i ] ; 2 uses
  %i.br = icmp ult i32 %i.bq, 2
  br i1 %i.br, label %alsa_chmap_has_duplicate_position.exit.i14.i, label %.lr.ph.i.preheader.i5.i

.lr.ph.i.preheader.i5.i:                          ; preds = %bb.p
  %zext.i6.i = zext i32 %i.bq to i64
  br label %.lr.ph.i.i7.i

.lr.ph.i.i7.i:                                    ; preds = %._crit_edge.i.i12.i, %.lr.ph.i.preheader.i5.i
  %indvars.iv28.i.i8.i = phi i64 [ 1, %.lr.ph.i.preheader.i5.i ], [ %indvars.iv.next29.i.i13.i, %._crit_edge.i.i12.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv28.i.i8.i
  %i.bt = load i32, ptr %i.bs, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i.i10.i = add nuw nsw i64 %indvars.iv.i.i9.i, 1 ; 2 uses
  %.not17.i.i11.i = icmp eq i64 %indvars.iv.next.i.i10.i, %indvars.iv28.i.i8.i
  br i1 %.not17.i.i11.i, label %._crit_edge.i.i12.i, label %bb.r, !llvm.loop !20

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i7.i
  %indvars.iv.i.i9.i = phi i64 [ 0, %.lr.ph.i.i7.i ], [ %indvars.iv.next.i.i10.i, %bb.q ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i9.i
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp eq i32 %i.bv, %i.bt
  br i1 %i.bw, label %alsa_chmap_has_duplicate_position.exit.thread.i18.i, label %bb.q

alsa_chmap_has_duplicate_position.exit.thread.i18.i: ; preds = %bb.r
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.109) #8
  br label %.thread.i17.i

._crit_edge.i.i12.i:                              ; preds = %bb.q
  %indvars.iv.next29.i.i13.i = add nuw nsw i64 %indvars.iv28.i.i8.i, 1 ; 2 uses
  %i.bx = icmp eq i64 %indvars.iv.next29.i.i13.i, %zext.i6.i
  br i1 %i.bx, label %alsa_chmap_has_duplicate_position.exit.i14.i, label %.lr.ph.i.i7.i, !llvm.loop !21

alsa_chmap_has_duplicate_position.exit.i14.i:     ; preds = %._crit_edge.i.i12.i, %bb.p, %.thread90.i.i
  %i.by = phi ptr [ %i.bj, %.thread90.i.i ], [ %i.bo, %bb.p ], [ %i.bo, %._crit_edge.i.i12.i ] ; 3 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.108) #8
  %i.bz = load i32, ptr %i.m, align 4             ; 5 uses
  %.not5267.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not5267.i.i, label %._crit_edge71.split.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %alsa_chmap_has_duplicate_position.exit.i14.i
  %i.ca = zext i32 %i.bz to i64                   ; 5 uses
  %xtraiter = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.bz, 1
  br i1 %i.cb, label %.preheader.i.i.epil.preheader, label %.preheader.preheader.i.i.new

.preheader.preheader.i.i.new:                     ; preds = %.preheader.preheader.i.i
  %unroll_iter = and i64 %i.ca, 4294967294
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %..loopexit_crit_edge.i.i.1, %.preheader.preheader.i.i.new
  %indvars.iv82.i.i = phi i64 [ 0, %.preheader.preheader.i.i.new ], [ %indvars.iv.next83.i.i.1, %..loopexit_crit_edge.i.i.1 ] ; 3 uses
  %.03868.i.i = phi i32 [ 0, %.preheader.preheader.i.i.new ], [ %.1.i.i.1, %..loopexit_crit_edge.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.i.new ], [ %niter.next.1, %..loopexit_crit_edge.i.i.1 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv82.i.i
  %i.cd = load i32, ptr %i.cc, align 4
  br label %bb.w

._crit_edge71.split.i.i.unr-lcssa:                ; preds = %..loopexit_crit_edge.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge71.split.i.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %._crit_edge71.split.i.i.unr-lcssa, %.preheader.preheader.i.i
  %indvars.iv82.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next83.i.i.1, %._crit_edge71.split.i.i.unr-lcssa ]
  %.03868.i.i.epil.init = phi i32 [ 0, %.preheader.preheader.i.i ], [ %.1.i.i.1, %._crit_edge71.split.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i32 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod83)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv82.i.i.epil.init
  %i.cf = load i32, ptr %i.ce, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.preheader.i.i.epil.preheader
  %indvars.iv.i15.i.epil = phi i64 [ 0, %.preheader.i.i.epil.preheader ], [ %indvars.iv.next.i16.i.epil, %bb.t ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i15.i.epil
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i16.i.epil = add nuw nsw i64 %indvars.iv.i15.i.epil, 1 ; 2 uses
  %.not53.i.i.epil = icmp eq i64 %indvars.iv.next.i16.i.epil, %i.ca
  br i1 %.not53.i.i.epil, label %._crit_edge71.split.i.i, label %bb.s, !llvm.loop !25

bb.u:                                             ; preds = %bb.s
  %i.cj = add i32 %.03868.i.i.epil.init, 1
  br label %._crit_edge71.split.i.i

._crit_edge71.split.i.i:                          ; preds = %bb.u, %bb.t, %._crit_edge71.split.i.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %._crit_edge71.split.i.i.unr-lcssa ], [ %i.cj, %bb.u ], [ %.03868.i.i.epil.init, %bb.t ]
  %i.ck = icmp eq i32 %.1.i.i.lcssa, %i.bz
  br i1 %i.ck, label %._crit_edge71.split.thread.i.i, label %.thread.i17.i

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i15.i, 1 ; 2 uses
  %.not53.i.i = icmp eq i64 %indvars.iv.next.i16.i, %i.ca
  br i1 %.not53.i.i, label %..loopexit_crit_edge.i.i, label %bb.w, !llvm.loop !25

bb.w:                                             ; preds = %bb.v, %.preheader.i.i
  %indvars.iv.i15.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i16.i, %bb.v ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i15.i
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp eq i32 %i.cd, %i.cm
  br i1 %i.cn, label %bb.x, label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.co = add i32 %.03868.i.i, 1
  br label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i:                         ; preds = %bb.v, %bb.x
  %.1.i.i = phi i32 [ %i.co, %bb.x ], [ %.03868.i.i, %bb.v ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv82.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %..loopexit_crit_edge.i.i
  %indvars.iv.i15.i.1 = phi i64 [ 0, %..loopexit_crit_edge.i.i ], [ %indvars.iv.next.i16.i.1, %bb.z ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i15.i.1
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp eq i32 %i.cr, %i.ct
  br i1 %i.cu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next.i16.i.1 = add nuw nsw i64 %indvars.iv.i15.i.1, 1 ; 2 uses
  %.not53.i.i.1 = icmp eq i64 %indvars.iv.next.i16.i.1, %i.ca
  br i1 %.not53.i.i.1, label %..loopexit_crit_edge.i.i.1, label %bb.y, !llvm.loop !25

bb.aa:                                            ; preds = %bb.y
  %i.cv = add i32 %.1.i.i, 1
  br label %..loopexit_crit_edge.i.i.1

..loopexit_crit_edge.i.i.1:                       ; preds = %bb.z, %bb.aa
  %.1.i.i.1 = phi i32 [ %i.cv, %bb.aa ], [ %.1.i.i, %bb.z ] ; 3 uses
  %indvars.iv.next83.i.i.1 = add nuw nsw i64 %indvars.iv82.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge71.split.i.i.unr-lcssa, label %.preheader.i.i, !llvm.loop !26

.thread.i17.i:                                    ; preds = %._crit_edge71.split.i.i, %alsa_chmap_has_duplicate_position.exit.thread.i18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.ab

bb.ab:                                            ; preds = %.thread.i17.i, %bb.m, %.lr.ph78.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.04276.i.i, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not.i3.i = icmp eq ptr %i.cx, null
  br i1 %.not.i3.i, label %alsa_chmap_cfg_ordered.exit.thread, label %.lr.ph78.i.i, !llvm.loop !27

._crit_edge71.split.thread.i.i:                   ; preds = %._crit_edge71.split.i.i, %alsa_chmap_has_duplicate_position.exit.i14.i
  %i.cy = call fastcc i32 @alsa_chmap_install(ptr noundef nonnull %0, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %alsa_chmap_cfg_ordered.exit

alsa_chmap_cfg_ordered.exit:                      ; preds = %alsa_chmap_cfg_ordered_fixed_or_paired.exit.i, %._crit_edge71.split.thread.i.i
  %i.cz = phi i32 [ %i.az, %alsa_chmap_cfg_ordered_fixed_or_paired.exit.i ], [ %i.cy, %._crit_edge71.split.thread.i.i ]
  %cond = icmp eq i32 %i.cz, 0
  br i1 %cond, label %bb.ac, label %.thread45

bb.ac:                                            ; preds = %alsa_chmap_cfg_ordered.exit
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.102) #8
  br label %.thread45

alsa_chmap_cfg_ordered.exit.thread:               ; preds = %bb.ab
  %.pre = load ptr, ptr %i.j, align 8             ; 2 uses
  %.pre51 = load ptr, ptr %.pre, align 8          ; 2 uses
  %.not79.i = icmp eq ptr %.pre51, null
  br i1 %.not79.i, label %.thread45, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %alsa_chmap_cfg_ordered.exit.thread
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.db = getelementptr i8, ptr %0, i64 56        ; 6 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.at, %.lr.ph82.i
  %i.dc = phi ptr [ %.pre51, %.lr.ph82.i ], [ %i.ez, %bb.at ] ; 2 uses
  %.04380.i = phi ptr [ %.pre, %.lr.ph82.i ], [ %i.ey, %bb.at ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = load i32, ptr %i.da, align 4
  %.not52.i = icmp eq i32 %i.de, %i.df
  br i1 %.not52.i, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load i32, ptr %i.dc, align 4
  switch i32 %i.dg, label %bb.at [
    i32 1, label %bb.af
    i32 3, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.dh = load ptr, ptr @ALSA_snd_pcm_chmap_print, align 8
  %i.di = call i32 %i.dh(ptr noundef nonnull %i.dd, i64 noundef 128, ptr noundef nonnull %i.a) #8, !inline_history !28 ; 0 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.113, ptr noundef nonnull %i.a) #8
  %i.dj = load i32, ptr %i.da, align 4            ; 4 uses
  %.not83.i = icmp eq i32 %i.dj, 0
  br i1 %.not83.i, label %.thread94.i, label %._crit_edge.i

.thread94.i:                                      ; preds = %bb.af
  %i.dk = load ptr, ptr %.04380.i, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  br label %alsa_chmap_has_duplicate_position.exit.i

._crit_edge.i:                                    ; preds = %bb.af
  %i.dm = zext i32 %i.dj to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr @sdl_channel_maps, i64 %i.dm
  %i.do = shl nuw nsw i64 %i.dm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.db, ptr nonnull align 16 %i.dn, i64 %i.do, i1 false)
  %i.dp = load ptr, ptr %.04380.i, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 5 uses
  %i.dr = icmp eq i32 %i.dj, 6
  br i1 %i.dr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i
  call fastcc void @sdl_6chans_set_rear_or_side_channels_from_alsa_6chans(ptr noundef %i.db, ptr noundef nonnull %i.dq)
  %.pre.i38 = load i32, ptr %i.da, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i
  %i.ds = phi i32 [ %.pre.i38, %bb.ag ], [ %i.dj, %._crit_edge.i ] ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 2
  br i1 %i.dt, label %alsa_chmap_has_duplicate_position.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.ah
  %zext.i = zext i32 %i.ds to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i37, %.lr.ph.i.preheader.i
  %indvars.iv28.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next29.i.i, %._crit_edge.i.i37 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv28.i.i
  %i.dv = load i32, ptr %i.du, align 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next.i.i36 = add nuw nsw i64 %indvars.iv.i.i35, 1 ; 2 uses
  %.not17.i.i = icmp eq i64 %indvars.iv.next.i.i36, %indvars.iv28.i.i
  br i1 %.not17.i.i, label %._crit_edge.i.i37, label %bb.aj, !llvm.loop !20

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i
  %indvars.iv.i.i35 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i36, %bb.ai ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i.i35
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = icmp eq i32 %i.dx, %i.dv
  br i1 %i.dy, label %alsa_chmap_has_duplicate_position.exit.thread.i, label %bb.ai

alsa_chmap_has_duplicate_position.exit.thread.i:  ; preds = %bb.aj
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.109) #8
  br label %.thread.i

._crit_edge.i.i37:                                ; preds = %bb.ai
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  %i.dz = icmp eq i64 %indvars.iv.next29.i.i, %zext.i
  br i1 %i.dz, label %alsa_chmap_has_duplicate_position.exit.i, label %.lr.ph.i.i, !llvm.loop !21

alsa_chmap_has_duplicate_position.exit.i:         ; preds = %._crit_edge.i.i37, %bb.ah, %.thread94.i
  %i.ea = phi ptr [ %i.dl, %.thread94.i ], [ %i.dq, %bb.ah ], [ %i.dq, %._crit_edge.i.i37 ] ; 4 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.108) #8
  %i.eb = load i32, ptr %i.da, align 4            ; 5 uses
  %.not5571.i = icmp eq i32 %i.eb, 0
  br i1 %.not5571.i, label %alsa_chmap_cfg_unordered.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %alsa_chmap_has_duplicate_position.exit.i
  %i.ec = zext i32 %i.eb to i64                   ; 5 uses
  %xtraiter84 = and i64 %i.ec, 1
  %i.ed = icmp eq i32 %i.eb, 1
  br i1 %i.ed, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter88 = and i64 %i.ec, 4294967294
  br label %.preheader.i

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i.1, %.preheader.preheader.i.new
  %indvars.iv86.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next87.i.1, %..loopexit_crit_edge.i.1 ] ; 3 uses
  %.03972.i = phi i32 [ 0, %.preheader.preheader.i.new ], [ %.1.i.1, %..loopexit_crit_edge.i.1 ] ; 2 uses
  %niter89 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter89.next.1, %..loopexit_crit_edge.i.1 ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv86.i
  %i.ef = load i32, ptr %i.ee, align 4
  br label %bb.ao

._crit_edge75.split.i.unr-lcssa:                  ; preds = %..loopexit_crit_edge.i.1
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %._crit_edge75.split.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge75.split.i.unr-lcssa, %.preheader.preheader.i
  %indvars.iv86.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next87.i.1, %._crit_edge75.split.i.unr-lcssa ]
  %.03972.i.epil.init = phi i32 [ 0, %.preheader.preheader.i ], [ %.1.i.1, %._crit_edge75.split.i.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i32 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv86.i.epil.init
  %i.eh = load i32, ptr %i.eg, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.al ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.epil
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = icmp eq i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %.not56.i.epil = icmp eq i64 %indvars.iv.next.i.epil, %i.ec
  br i1 %.not56.i.epil, label %._crit_edge75.split.i, label %bb.ak, !llvm.loop !29

bb.am:                                            ; preds = %bb.ak
  %i.el = add i32 %.03972.i.epil.init, 1
  br label %._crit_edge75.split.i

._crit_edge75.split.i:                            ; preds = %bb.am, %bb.al, %._crit_edge75.split.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge75.split.i.unr-lcssa ], [ %i.el, %bb.am ], [ %.03972.i.epil.init, %bb.al ]
  %i.em = icmp eq i32 %.1.i.lcssa, %i.eb
  br i1 %i.em, label %alsa_chmap_cfg_unordered.exit, label %.thread.i

bb.an:                                            ; preds = %bb.ao
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not56.i = icmp eq i64 %indvars.iv.next.i, %i.ec
  br i1 %.not56.i, label %..loopexit_crit_edge.i, label %bb.ao, !llvm.loop !29

bb.ao:                                            ; preds = %bb.an, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.an ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = icmp eq i32 %i.ef, %i.eo
  br i1 %i.ep, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %bb.ao
  %i.eq = add i32 %.03972.i, 1
  br label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %bb.an, %bb.ap
  %.1.i = phi i32 [ %i.eq, %bb.ap ], [ %.03972.i, %bb.an ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv86.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %..loopexit_crit_edge.i
  %indvars.iv.i.1 = phi i64 [ 0, %..loopexit_crit_edge.i ], [ %indvars.iv.next.i.1, %bb.ar ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.1
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %.not56.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ec
  br i1 %.not56.i.1, label %..loopexit_crit_edge.i.1, label %bb.aq, !llvm.loop !29

bb.as:                                            ; preds = %bb.aq
  %i.ex = add i32 %.1.i, 1
  br label %..loopexit_crit_edge.i.1

..loopexit_crit_edge.i.1:                         ; preds = %bb.ar, %bb.as
  %.1.i.1 = phi i32 [ %i.ex, %bb.as ], [ %.1.i, %bb.ar ] ; 3 uses
  %indvars.iv.next87.i.1 = add nuw nsw i64 %indvars.iv86.i, 2 ; 2 uses
  %niter89.next.1 = add nuw i64 %niter89, 2       ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %._crit_edge75.split.i.unr-lcssa, label %.preheader.i, !llvm.loop !30

.thread.i:                                        ; preds = %._crit_edge75.split.i, %alsa_chmap_has_duplicate_position.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.at

bb.at:                                            ; preds = %.thread.i, %bb.ae, %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %.04380.i, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ez, null
  br i1 %.not.i, label %.thread45, label %bb.ad, !llvm.loop !31

alsa_chmap_cfg_unordered.exit:                    ; preds = %alsa_chmap_has_duplicate_position.exit.i, %._crit_edge75.split.i
  %i.fa = call fastcc i32 @alsa_chmap_install(ptr noundef nonnull %0, ptr noundef nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.au, label %.thread45

bb.au:                                            ; preds = %alsa_chmap_cfg_unordered.exit
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.103) #8
  %i.fc = load i32, ptr %i.da, align 4            ; 3 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  %i.ff = icmp ult i32 %i.fc, 32                  ; 2 uses
  br i1 %i.ff, label %.thread, label %bb.av

.thread:                                          ; preds = %bb.au
  %i.fg = alloca i8, i64 %i.fe, align 16
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fh = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.fe) #8 ; 2 uses
  %.not33 = icmp eq ptr %i.fh, null
  br i1 %.not33, label %.thread45, label %._crit_edge

._crit_edge:                                      ; preds = %bb.av
  %.pre52 = load i32, ptr %i.da, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge, %.thread
  %i.fi = phi i32 [ %i.fc, %.thread ], [ %.pre52, %._crit_edge ]
  %i.fj = phi ptr [ %i.fg, %.thread ], [ %i.fh, %._crit_edge ] ; 3 uses
  %.not11.i = icmp eq i32 %i.fi, 0
  br i1 %.not11.i, label %swizzle_map_compute.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.ax

bb.ax:                                            ; preds = %swizzle_map_compute_alsa_subscan.exit.i, %.lr.ph.i
  %.041 = phi i1 [ false, %.lr.ph.i ], [ %spec.select48, %swizzle_map_compute_alsa_subscan.exit.i ]
  %.012.i = phi i32 [ 0, %.lr.ph.i ], [ %i.fu, %swizzle_map_compute_alsa_subscan.exit.i ] ; 4 uses
  %i.fl = zext i32 %.012.i to i64                 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fl ; 2 uses
  store i32 -1, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.fl
  %i.fo = load i32, ptr %i.fn, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.0.i.i = phi i32 [ 0, %bb.ax ], [ %i.ft, %bb.ay ] ; 5 uses
  %i.fp = zext i32 %.0.i.i to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = icmp eq i32 %i.fr, %i.fo
  %i.ft = add i32 %.0.i.i, 1
  br i1 %i.fs, label %swizzle_map_compute_alsa_subscan.exit.i, label %bb.ay

swizzle_map_compute_alsa_subscan.exit.i:          ; preds = %bb.ay
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 4, ptr noundef nonnull @.str.114, i32 noundef %.012.i, i32 noundef %.0.i.i) #8
  store i32 %.0.i.i, ptr %i.fm, align 4
  %.not10.i = icmp ne i32 %.0.i.i, %.012.i
  %spec.select48 = select i1 %.not10.i, i1 true, i1 %.041 ; 2 uses
  %i.fu = add i32 %.012.i, 1                      ; 3 uses
  %i.fv = load i32, ptr %i.da, align 4
  %.not.i39 = icmp eq i32 %i.fu, %i.fv
  br i1 %.not.i39, label %swizzle_map_compute.exit, label %bb.ax, !llvm.loop !32

swizzle_map_compute.exit:                         ; preds = %swizzle_map_compute_alsa_subscan.exit.i
  br i1 %spec.select48, label %bb.az, label %swizzle_map_compute.exit.thread

bb.az:                                            ; preds = %swizzle_map_compute.exit
  %i.fw = call ptr @SDL_ChannelMapDup(ptr noundef nonnull %i.fj, i32 noundef %i.fu) #8
  %i.fx = load ptr, ptr %0, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 112
  store ptr %i.fw, ptr %i.fy, align 8
  %i.fz = load ptr, ptr %0, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %i.gb = load ptr, ptr %i.ga, align 8
  %.not34 = icmp eq ptr %i.gb, null
  %spec.select = sext i1 %.not34 to i32
  br label %swizzle_map_compute.exit.thread

swizzle_map_compute.exit.thread:                  ; preds = %bb.aw, %bb.az, %swizzle_map_compute.exit
  %.0 = phi i32 [ %spec.select, %bb.az ], [ 0, %swizzle_map_compute.exit ], [ 0, %bb.aw ] ; 2 uses
  br i1 %i.ff, label %.thread45, label %bb.ba

bb.ba:                                            ; preds = %swizzle_map_compute.exit.thread
  call void @SDL_free_REAL(ptr noundef nonnull %i.fj) #8
  br label %.thread45

.thread45:                                        ; preds = %bb.at, %.loopexit.i, %bb.c, %alsa_chmap_cfg_ordered.exit, %bb.ba, %swizzle_map_compute.exit.thread, %bb.av, %alsa_chmap_cfg_unordered.exit, %alsa_chmap_cfg_ordered.exit.thread, %bb.ac, %bb.b
  %.025 = phi i32 [ 0, %bb.b ], [ 0, %bb.ac ], [ -1, %alsa_chmap_cfg_ordered.exit ], [ 1, %alsa_chmap_cfg_ordered.exit.thread ], [ -1, %alsa_chmap_cfg_unordered.exit ], [ %.0, %bb.ba ], [ %.0, %swizzle_map_compute.exit.thread ], [ -1, %bb.av ], [ 1, %.loopexit.i ], [ 1, %bb.c ], [ 1, %bb.at ]
  ret i32 %.025
}

declare ptr @SDL_ChannelMapDup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sdl_6chans_set_rear_or_side_channels_from_alsa_6chans(ptr nofree noundef nonnull writeonly captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 5 uses
  %i.b = icmp eq i32 %i.a, 3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 5 uses
  br i1 %i.b, label %has_pos.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %.pre, 3
  br i1 %i.c, label %has_pos.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %has_pos.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %has_pos.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %has_pos.exit.thread, label %has_pos.exit

has_pos.exit:                                     ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %has_pos.exit.thread, label %.thread

has_pos.exit.thread:                              ; preds = %bb.e, %bb.c, %bb.b, %bb.d, %has_pos.exit
  %i.p = icmp eq i32 %i.a, 4
  br i1 %i.p, label %has_pos.exit33.thread.thread, label %has_pos.exit.thread.thread

has_pos.exit.thread.thread:                       ; preds = %bb.a, %has_pos.exit.thread
  %i.q = icmp eq i32 %.pre, 4
  br i1 %i.q, label %has_pos.exit33.thread, label %bb.f

bb.f:                                             ; preds = %has_pos.exit.thread.thread
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %has_pos.exit33.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %has_pos.exit33.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %has_pos.exit33.thread, label %has_pos.exit33

has_pos.exit33:                                   ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %has_pos.exit33.thread, label %.thread

has_pos.exit33.thread:                            ; preds = %bb.h, %bb.f, %has_pos.exit.thread.thread, %bb.g, %has_pos.exit33
  %i.ad = icmp eq i32 %i.a, 7
  br i1 %i.ad, label %has_pos.exit35.thread.thread, label %has_pos.exit33.thread.thread

has_pos.exit33.thread.thread:                     ; preds = %has_pos.exit.thread, %has_pos.exit33.thread
  %i.ae = icmp eq i32 %.pre, 7
  br i1 %i.ae, label %has_pos.exit35.thread, label %bb.i

bb.i:                                             ; preds = %has_pos.exit33.thread.thread
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 7
  br i1 %i.ah, label %has_pos.exit35.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, 7
  br i1 %i.ak, label %has_pos.exit35.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
