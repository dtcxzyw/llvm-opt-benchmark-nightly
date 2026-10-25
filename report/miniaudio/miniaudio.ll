Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_device_init_by_type__alsa:bb.a

.lr.ph.i376:                                      ; preds = %bb.ab, %bb.ad
  %i.fs = phi i32 [ %i.fx, %bb.ad ], [ %i.fr, %bb.ab ]
  %indvars.iv.i377 = phi i64 [ %indvars.iv.next.i380, %bb.ad ], [ 0, %bb.ab ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i377 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !140 ; 2 uses
  %.not.i378 = icmp eq ptr %i.fu, null
  br i1 %.not.i378, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i376
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !141
  tail call void %i.fu(ptr noundef %i.fw, i32 noundef 1, ptr noundef nonnull @.str.402) #55, !inline_history !142
  %.pre.i379 = load i32, ptr %i.fq, align 8, !tbaa !138
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i376
  %i.fx = phi i32 [ %i.fs, %.lr.ph.i376 ], [ %.pre.i379, %bb.ac ] ; 2 uses
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i377, 1 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp samesign ult i64 %indvars.iv.next.i380, %i.fy
  br i1 %i.fz, label %.lr.ph.i376, label %._crit_edge.i381, !llvm.loop !0

._crit_edge.i381:                                 ; preds = %bb.ad, %bb.ab
  %i.ga = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fo) #55 ; 0 uses
  br label %ma_log_post.exit

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.u
  %.1301 = phi i32 [ %i.l, %bb.u ], [ 2, %bb.v ], [ 14, %bb.w ], [ 10, %bb.x ], [ 32, %bb.y ], [ 1, %bb.z ] ; 2 uses
  %i.gb = load ptr, ptr %0, align 8, !tbaa !219
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 464
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !119
  %i.ge = tail call i32 %i.gd(ptr noundef %i.bj, ptr noundef nonnull %i.ai, i32 noundef %.1301) #55 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %.critedge
  %i.gg = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 312
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !132 ; 2 uses
  %.not9.i385 = icmp eq ptr %i.gi, null
  br i1 %.not9.i385, label %ma_device_get_context.exit.i387, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 288
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !126
  tail call void %i.gi(ptr noundef nonnull %i.ai, ptr noundef %i.gk) #55, !inline_history !133
  %.pre608.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i387

ma_device_get_context.exit.i387:                  ; preds = %bb.af, %bb.ae
  %i.gl = phi ptr [ %.pre608.a, %bb.af ], [ %i.gg, %bb.ae ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 440
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !119
  %i.go = tail call i32 %i.gn(ptr noundef %i.bj) #55 ; 0 uses
  %i.gp = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %ma_log_post.exit398, label %ma_device_get_log.exit389

ma_device_get_log.exit389:                        ; preds = %ma_device_get_context.exit.i387
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !275 ; 4 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %ma_log_post.exit398, label %bb.ag

bb.ag:                                            ; preds = %ma_device_get_log.exit389
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 104 ; 2 uses
  %i.gv = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gu) #55 ; 0 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 64 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !138 ; 2 uses
  %.not21.i390 = icmp eq i32 %i.gx, 0
  br i1 %.not21.i390, label %._crit_edge.i396, label %.lr.ph.i391

.lr.ph.i391:                                      ; preds = %bb.ag, %bb.ai
  %i.gy = phi i32 [ %i.hd, %bb.ai ], [ %i.gx, %bb.ag ]
  %indvars.iv.i392 = phi i64 [ %indvars.iv.next.i395, %bb.ai ], [ 0, %bb.ag ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %indvars.iv.i392 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !140 ; 2 uses
  %.not.i393 = icmp eq ptr %i.ha, null
  br i1 %.not.i393, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i391
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !141
  tail call void %i.ha(ptr noundef %i.hc, i32 noundef 1, ptr noundef nonnull @.str.403) #55, !inline_history !142
  %.pre.i394 = load i32, ptr %i.gw, align 8, !tbaa !138
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i391
  %i.hd = phi i32 [ %i.gy, %.lr.ph.i391 ], [ %.pre.i394, %bb.ah ] ; 2 uses
  %indvars.iv.next.i395 = add nuw nsw i64 %indvars.iv.i392, 1 ; 2 uses
  %i.he = zext i32 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next.i395, %i.he
  br i1 %i.hf, label %.lr.ph.i391, label %._crit_edge.i396, !llvm.loop !0

._crit_edge.i396:                                 ; preds = %bb.ai, %bb.ag
  %i.hg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gu) #55 ; 0 uses
  br label %ma_log_post.exit398

ma_log_post.exit398:                              ; preds = %ma_device_get_context.exit.i387, %ma_device_get_log.exit389, %._crit_edge.i396
  %i.hh = sub nsw i32 0, %i.ge
  %i.hi = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.hh)
  br label %ma_log_post.exit

bb.aj:                                            ; preds = %.critedge
  %switch.tableidx = add i32 %.1301, -1           ; 3 uses
  %i.hj = icmp ult i32 %switch.tableidx, 32
  %switch.shifted = lshr i32 -2147474941, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.hj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hk = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 312
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !132 ; 2 uses
  %.not9.i400 = icmp eq ptr %i.hm, null
  br i1 %.not9.i400, label %ma_device_get_context.exit.i402, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 288
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !126
  tail call void %i.hm(ptr noundef nonnull %i.ai, ptr noundef %i.ho) #55, !inline_history !133
  %.pre607.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i402

ma_device_get_context.exit.i402:                  ; preds = %bb.al, %bb.ak
  %i.hp = phi ptr [ %.pre607.a, %bb.al ], [ %i.hk, %bb.ak ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 440
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !119
  %i.hs = tail call i32 %i.hr(ptr noundef %i.bj) #55 ; 0 uses
  %i.ht = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %ma_device_get_log.exit404, label %bb.am

bb.am:                                            ; preds = %ma_device_get_context.exit.i402
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 112
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !275
  br label %ma_device_get_log.exit404

ma_device_get_log.exit404:                        ; preds = %ma_device_get_context.exit.i402, %bb.am
  %.0.i1.i403 = phi ptr [ %i.hw, %bb.am ], [ null, %ma_device_get_context.exit.i402 ]
  %i.hx = tail call i32 @ma_log_post(ptr noundef %.0.i1.i403, i32 noundef 1, ptr noundef nonnull @.str.404) ; 0 uses
  br label %ma_log_post.exit

switch.lookup:                                    ; preds = %bb.aj
  %i.hy = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_device_init_by_type__alsa, i64 %i.hy
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !190 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  %spec.store.select = select i1 %i.ib, i32 2, i32 %i.ia
  store i32 %spec.store.select, ptr %i.d, align 4, !tbaa !118
  %i.ic = load ptr, ptr %0, align 8, !tbaa !219
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 496
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !119
  %i.if = call i32 %i.ie(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.d) #55 ; 2 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %switch.lookup
  %i.ih = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 312
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !132 ; 2 uses
  %.not9.i406 = icmp eq ptr %i.ij, null
  br i1 %.not9.i406, label %ma_device_get_context.exit.i408, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 288
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !126
  call void %i.ij(ptr noundef nonnull %i.ai, ptr noundef %i.il) #55, !inline_history !133
  %.pre590 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i408

ma_device_get_context.exit.i408:                  ; preds = %bb.ao, %bb.an
  %i.im = phi ptr [ %.pre590, %bb.ao ], [ %i.ih, %bb.an ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 440
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !119
  %i.ip = call i32 %i.io(ptr noundef %i.bj) #55   ; 0 uses
  %i.iq = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %ma_device_get_context.exit.i408
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 112
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !275
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %ma_device_get_context.exit.i408
  %.0.i1.i409 = phi ptr [ %i.it, %bb.ap ], [ null, %ma_device_get_context.exit.i408 ]
  %i.iu = call i32 @ma_log_post(ptr noundef %.0.i1.i409, i32 noundef 1, ptr noundef nonnull @.str.405) ; 0 uses
  %i.iv = sub nsw i32 0, %i.if
  %i.iw = call fastcc i32 @ma_result_from_errno(i32 noundef %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %ma_log_post.exit

bb.ar:                                            ; preds = %switch.lookup
  %i.ix = load i32, ptr %i.d, align 4, !tbaa !118 ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  %i.iy = load ptr, ptr %0, align 8, !tbaa !219
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 512
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !119
  %i.jb = call i32 %i.ja(ptr noundef %i.bj, ptr noundef nonnull %i.ai, i32 noundef 0) #55 ; 0 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !191 ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  %spec.store.select5 = select i1 %i.je, i32 48000, i32 %i.jd
  store i32 %spec.store.select5, ptr %i.e, align 4, !tbaa !118
  %i.jf = load ptr, ptr %0, align 8, !tbaa !219
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 528
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !119
  %i.ji = call i32 %i.jh(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.e, ptr noundef null) #55 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jk = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 312
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !132 ; 2 uses
  %.not9.i412 = icmp eq ptr %i.jm, null
  br i1 %.not9.i412, label %ma_device_get_context.exit.i414, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 288
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !126
  call void %i.jm(ptr noundef nonnull %i.ai, ptr noundef %i.jo) #55, !inline_history !133
  %.pre591 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i414

ma_device_get_context.exit.i414:                  ; preds = %bb.at, %bb.as
  %i.jp = phi ptr [ %.pre591, %bb.at ], [ %i.jk, %bb.as ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 440
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !119
  %i.js = call i32 %i.jr(ptr noundef %i.bj) #55   ; 0 uses
  %i.jt = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.av, label %bb.au

bb.au:                                            ; preds = %ma_device_get_context.exit.i414
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 112
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !275
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %ma_device_get_context.exit.i414
  %.0.i1.i415 = phi ptr [ %i.jw, %bb.au ], [ null, %ma_device_get_context.exit.i414 ]
  %i.jx = call i32 @ma_log_post(ptr noundef %.0.i1.i415, i32 noundef 1, ptr noundef nonnull @.str.406) ; 0 uses
  %i.jy = sub nsw i32 0, %i.ji
  %i.jz = call fastcc i32 @ma_result_from_errno(i32 noundef %i.jy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %ma_log_post.exit

bb.aw:                                            ; preds = %bb.ar
  %i.ka = load i32, ptr %i.e, align 4, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !211
  store i32 %i.kc, ptr %i.f, align 4, !tbaa !118
  %i.kd = load ptr, ptr %0, align 8, !tbaa !219
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 552
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !119
  %i.kg = call i32 %i.kf(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.f, ptr noundef null) #55 ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, -1
  br i1 %i.kh, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ki = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 312
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !132 ; 2 uses
  %.not9.i418 = icmp eq ptr %i.kk, null
  br i1 %.not9.i418, label %ma_device_get_context.exit.i420, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 288
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !126
  call void %i.kk(ptr noundef nonnull %i.ai, ptr noundef %i.km) #55, !inline_history !133
  %.pre592 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i420

ma_device_get_context.exit.i420:                  ; preds = %bb.ay, %bb.ax
  %i.kn = phi ptr [ %.pre592, %bb.ay ], [ %i.ki, %bb.ax ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 440
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !119
  %i.kq = call i32 %i.kp(ptr noundef %i.bj) #55   ; 0 uses
  %i.kr = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %ma_device_get_context.exit.i420
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 112
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !275
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %ma_device_get_context.exit.i420
  %.0.i1.i421 = phi ptr [ %i.ku, %bb.az ], [ null, %ma_device_get_context.exit.i420 ]
  %i.kv = call i32 @ma_log_post(ptr noundef %.0.i1.i421, i32 noundef 1, ptr noundef nonnull @.str.407) ; 0 uses
  %i.kw = sub nsw i32 0, %i.kg
  %i.kx = call fastcc i32 @ma_result_from_errno(i32 noundef %i.kw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  br label %ma_log_post.exit

bb.bb:                                            ; preds = %bb.aw
  %i.ky = load i32, ptr %i.f, align 4, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !1151
  %i.lb = call i32 @ma_calculate_buffer_size_in_frames_from_descriptor(ptr noundef nonnull %2, i32 noundef %i.ka, i32 noundef %i.la)
  %i.lc = mul i32 %i.lb, %i.ky
  %i.ld = zext i32 %i.lc to i64
  store i64 %i.ld, ptr %i.g, align 8, !tbaa !154
  %i.le = load ptr, ptr %0, align 8, !tbaa !219
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 544
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !119
  %i.lh = call i32 %i.lg(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.g) #55 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  br i1 %i.li, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lj = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 312
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !132 ; 2 uses
  %.not9.i424 = icmp eq ptr %i.ll, null
  br i1 %.not9.i424, label %ma_device_get_context.exit.i426, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 288
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !126
  call void %i.ll(ptr noundef nonnull %i.ai, ptr noundef %i.ln) #55, !inline_history !133
  %.pre593 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i426

ma_device_get_context.exit.i426:                  ; preds = %bb.bd, %bb.bc
  %i.lo = phi ptr [ %.pre593, %bb.bd ], [ %i.lj, %bb.bc ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 440
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !119
  %i.lr = call i32 %i.lq(ptr noundef %i.bj) #55   ; 0 uses
  %i.ls = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %ma_device_get_context.exit.i426
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !275
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %ma_device_get_context.exit.i426
  %.0.i1.i427 = phi ptr [ %i.lv, %bb.be ], [ null, %ma_device_get_context.exit.i426 ]
  %i.lw = call i32 @ma_log_post(ptr noundef %.0.i1.i427, i32 noundef 1, ptr noundef nonnull @.str.408) ; 0 uses
  %i.lx = sub nsw i32 0, %i.lh
  %i.ly = call fastcc i32 @ma_result_from_errno(i32 noundef %i.lx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  br label %ma_log_post.exit

bb.bg:                                            ; preds = %bb.bb
  %i.lz = load i64, ptr %i.g, align 8, !tbaa !154
  %i.ma = zext i32 %i.ky to i64
  %i.mb = udiv i64 %i.lz, %i.ma                   ; 2 uses
  %i.mc = trunc i64 %i.mb to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  %i.md = load ptr, ptr %0, align 8, !tbaa !219
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 672
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !119
  %i.mg = call i32 %i.mf(ptr noundef %i.bj, ptr noundef nonnull %i.ai) #55 ; 2 uses
  %i.mh = icmp slt i32 %i.mg, 0
  %i.mi = load ptr, ptr %0, align 8, !tbaa !219   ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 312
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !132 ; 3 uses
  %.not9.i430 = icmp eq ptr %i.mk, null           ; 2 uses
  br i1 %i.mh, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not9.i430, label %ma_device_get_context.exit.i432, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 288
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !126
  call void %i.mk(ptr noundef nonnull %i.ai, ptr noundef %i.mm) #55, !inline_history !133
  %.pre606.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i432

ma_device_get_context.exit.i432:                  ; preds = %bb.bi, %bb.bh
  %i.mn = phi ptr [ %.pre606.a, %bb.bi ], [ %i.mi, %bb.bh ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 440
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !119
  %i.mq = call i32 %i.mp(ptr noundef %i.bj) #55   ; 0 uses
  %i.mr = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %ma_device_get_log.exit434, label %bb.bj

bb.bj:                                            ; preds = %ma_device_get_context.exit.i432
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 112
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !275
  br label %ma_device_get_log.exit434

ma_device_get_log.exit434:                        ; preds = %ma_device_get_context.exit.i432, %bb.bj
  %.0.i1.i433 = phi ptr [ %i.mu, %bb.bj ], [ null, %ma_device_get_context.exit.i432 ]
end_hunk_0
begin_hunk_1_@ma_device_init_by_type__alsa:bb.a
ma_device_get_context.exit.i455:                  ; preds = %bb.bv, %bb.bu
  %i.pl = phi ptr [ %.pre603.a, %bb.bv ], [ %i.pg, %bb.bu ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 440
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !119
  %i.po = call i32 %i.pn(ptr noundef %i.bj) #55   ; 0 uses
  %i.pp = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %ma_device_get_log.exit457, label %bb.bw

bb.bw:                                            ; preds = %ma_device_get_context.exit.i455
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 112
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !275
  br label %ma_device_get_log.exit457

ma_device_get_log.exit457:                        ; preds = %ma_device_get_context.exit.i455, %bb.bw
  %.0.i1.i456 = phi ptr [ %i.ps, %bb.bw ], [ null, %ma_device_get_context.exit.i455 ]
  %i.pt = call i32 @ma_log_post(ptr noundef %.0.i1.i456, i32 noundef 1, ptr noundef nonnull @.str.412) ; 0 uses
  %i.pu = sub nsw i32 0, %i.pe
  %i.pv = call fastcc i32 @ma_result_from_errno(i32 noundef %i.pu)
  br label %ma_log_post.exit

bb.bx:                                            ; preds = %bb.bt
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pg, i64 696
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !119
  %i.py = call i32 %i.px(ptr noundef nonnull %i.nj, ptr noundef nonnull %i.c) #55
  %i.pz = icmp slt i32 %i.py, 0
  br i1 %i.pz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qa = mul i32 %i.ky, %i.mc
  %i.qb = zext i32 %i.qa to i64
  store i64 %i.qb, ptr %i.c, align 8, !tbaa !154
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.not336 = icmp eq i32 %3, 1
  br i1 %.not336, label %bb.ca, label %bb.ci

bb.ca:                                            ; preds = %bb.bz
  %i.qc = load ptr, ptr %0, align 8, !tbaa !219
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 712
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !119
  %i.qf = shl i64 %i.mb, 1
  %i.qg = and i64 %i.qf, 4294967294
  %i.qh = call i32 %i.qe(ptr noundef %i.bj, ptr noundef nonnull %i.nj, i64 noundef %i.qg) #55 ; 2 uses
  %i.qi = icmp slt i32 %i.qh, 0
  %i.qj = load ptr, ptr %0, align 8, !tbaa !219   ; 4 uses
  br i1 %i.qi, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 312
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !132 ; 2 uses
  %.not9.i459 = icmp eq ptr %i.ql, null
  br i1 %.not9.i459, label %ma_device_get_context.exit.i461, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 288
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !126
  call void %i.ql(ptr noundef nonnull %i.nj, ptr noundef %i.qn) #55, !inline_history !133
  %.pre602.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i461

ma_device_get_context.exit.i461:                  ; preds = %bb.cc, %bb.cb
  %i.qo = phi ptr [ %.pre602.a, %bb.cc ], [ %i.qj, %bb.cb ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 440
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !119
  %i.qr = call i32 %i.qq(ptr noundef %i.bj) #55   ; 0 uses
  %i.qs = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, null
  br i1 %i.qt, label %ma_device_get_log.exit463, label %bb.cd

bb.cd:                                            ; preds = %ma_device_get_context.exit.i461
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 112
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !275
  br label %ma_device_get_log.exit463

ma_device_get_log.exit463:                        ; preds = %ma_device_get_context.exit.i461, %bb.cd
  %.0.i1.i462 = phi ptr [ %i.qv, %bb.cd ], [ null, %ma_device_get_context.exit.i461 ]
  %i.qw = call i32 @ma_log_post(ptr noundef %.0.i1.i462, i32 noundef 1, ptr noundef nonnull @.str.413) ; 0 uses
  %i.qx = sub nsw i32 0, %i.qh
  %i.qy = call fastcc i32 @ma_result_from_errno(i32 noundef %i.qx)
  br label %ma_log_post.exit

bb.ce:                                            ; preds = %bb.ca
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qj, i64 720
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !119
  %i.rb = load i64, ptr %i.c, align 8, !tbaa !154
  %i.rc = call i32 %i.ra(ptr noundef %i.bj, ptr noundef nonnull %i.nj, i64 noundef %i.rb) #55 ; 2 uses
  %i.rd = icmp slt i32 %i.rc, 0
  br i1 %i.rd, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.re = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 312
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !132 ; 2 uses
  %.not9.i465 = icmp eq ptr %i.rg, null
  br i1 %.not9.i465, label %ma_device_get_context.exit.i467, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 288
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !126
  call void %i.rg(ptr noundef nonnull %i.nj, ptr noundef %i.ri) #55, !inline_history !133
  %.pre601.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i467

ma_device_get_context.exit.i467:                  ; preds = %bb.cg, %bb.cf
  %i.rj = phi ptr [ %.pre601.a, %bb.cg ], [ %i.re, %bb.cf ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 440
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !119
  %i.rm = call i32 %i.rl(ptr noundef %i.bj) #55   ; 0 uses
  %i.rn = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %ma_device_get_log.exit469, label %bb.ch

bb.ch:                                            ; preds = %ma_device_get_context.exit.i467
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 112
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !275
  br label %ma_device_get_log.exit469

ma_device_get_log.exit469:                        ; preds = %ma_device_get_context.exit.i467, %bb.ch
  %.0.i1.i468 = phi ptr [ %i.rq, %bb.ch ], [ null, %ma_device_get_context.exit.i467 ]
  %i.rr = call i32 @ma_log_post(ptr noundef %.0.i1.i468, i32 noundef 1, ptr noundef nonnull @.str.414) ; 0 uses
  %i.rs = sub nsw i32 0, %i.rc
  %i.rt = call fastcc i32 @ma_result_from_errno(i32 noundef %i.rs)
  br label %ma_log_post.exit

bb.ci:                                            ; preds = %bb.ce, %bb.bz
  %i.ru = load ptr, ptr %0, align 8, !tbaa !219
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 728
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !119
  %i.rx = call i32 %i.rw(ptr noundef %i.bj, ptr noundef nonnull %i.nj) #55 ; 2 uses
  %i.ry = icmp slt i32 %i.rx, 0
  %i.rz = load ptr, ptr %0, align 8, !tbaa !219   ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 312
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !132 ; 3 uses
  %.not9.i471 = icmp eq ptr %i.sb, null           ; 2 uses
  br i1 %i.ry, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  br i1 %.not9.i471, label %ma_device_get_context.exit.i473, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 288
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !126
  call void %i.sb(ptr noundef nonnull %i.nj, ptr noundef %i.sd) #55, !inline_history !133
  %.pre600.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i473

ma_device_get_context.exit.i473:                  ; preds = %bb.ck, %bb.cj
  %i.se = phi ptr [ %.pre600.a, %bb.ck ], [ %i.rz, %bb.cj ]
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 440
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !119
  %i.sh = call i32 %i.sg(ptr noundef %i.bj) #55   ; 0 uses
  %i.si = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %ma_device_get_log.exit475, label %bb.cl

bb.cl:                                            ; preds = %ma_device_get_context.exit.i473
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 112
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !275
  br label %ma_device_get_log.exit475

ma_device_get_log.exit475:                        ; preds = %ma_device_get_context.exit.i473, %bb.cl
  %.0.i1.i474 = phi ptr [ %i.sl, %bb.cl ], [ null, %ma_device_get_context.exit.i473 ]
  %i.sm = call i32 @ma_log_post(ptr noundef %.0.i1.i474, i32 noundef 1, ptr noundef nonnull @.str.415) ; 0 uses
  %i.sn = sub nsw i32 0, %i.rx
  %i.so = call fastcc i32 @ma_result_from_errno(i32 noundef %i.sn)
  br label %ma_log_post.exit

bb.cm:                                            ; preds = %bb.ci
  br i1 %.not9.i471, label %ma_free.exit478, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rz, i64 288
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !126
  call void %i.sb(ptr noundef nonnull %i.nj, ptr noundef %i.sq) #55, !inline_history !133
  %.pre595 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_free.exit478

ma_free.exit478:                                  ; preds = %bb.cm, %bb.cn
  %i.sr = phi ptr [ %i.rz, %bb.cm ], [ %.pre595, %bb.cn ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 752
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !119 ; 2 uses
  %.not337 = icmp eq ptr %i.st, null
  br i1 %.not337, label %.thread549, label %bb.co

bb.co:                                            ; preds = %ma_free.exit478
  %i.su = call ptr %i.st(ptr noundef %i.bj) #55   ; 5 uses
  %.not338 = icmp eq ptr %i.su, null
  br i1 %.not338, label %.thread549, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !3130 ; 3 uses
  %.not339 = icmp ult i32 %i.sv, %i.ix
  br i1 %.not339, label %.preheader.i.preheader, label %.preheader554

.preheader.i.preheader:                           ; preds = %bb.cp
  %i.sw = add i32 %i.ix, -1
  %i.sx = call i32 @llvm.umin.i32(i32 %i.sw, i32 253)
  %umin = zext nneg i32 %i.sx to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %umin ; 2 uses
  br label %.preheader.i

.preheader554:                                    ; preds = %bb.cp
  %.not566 = icmp eq i32 %i.ix, 0
  br i1 %.not566, label %ma_channel_map_init_standard.exit484, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader554
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %wide.trip.count = zext i32 %i.ix to i64
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph, %bb.cq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cq ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !118
  %i.tb = call fastcc zeroext i8 @ma_convert_alsa_channel_position_to_ma_channel(i32 noundef %i.ta)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ma_channel_map_init_standard.exit484, label %bb.cq, !llvm.loop !3122

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.024.i = phi i32 [ %i.tf, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.01723.i = phi ptr [ %i.te, %.preheader.i ], [ %i.b, %.preheader.i.preheader ] ; 3 uses
  %i.td = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 1, i32 noundef %i.ix, i32 noundef %.024.i)
  store i8 %i.td, ptr %.01723.i, align 1, !tbaa !119
  %i.te = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.tf = add nuw nsw i32 %.024.i, 1
  %exitcond572 = icmp eq ptr %.01723.i, %scevgep
  br i1 %exitcond572, label %ma_channel_map_init_standard.exit.preheader, label %.preheader.i, !llvm.loop !5

ma_channel_map_init_standard.exit.preheader:      ; preds = %.preheader.i
  %.not567 = icmp eq i32 %i.sv, 0
  br i1 %.not567, label %.preheader, label %.lr.ph560

.lr.ph560:                                        ; preds = %ma_channel_map_init_standard.exit.preheader
  %i.tg = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %wide.trip.count576 = zext i32 %i.sv to i64
  br label %ma_channel_map_init_standard.exit

.preheader:                                       ; preds = %ma_channel_map_init_standard.exit, %ma_channel_map_init_standard.exit.preheader
  %i.th = zext i32 %i.ix to i64
  %i.ti = icmp ugt i32 %i.ix, 1
  br i1 %i.ti, label %.lr.ph562, label %ma_channel_map_init_standard.exit484

ma_channel_map_init_standard.exit:                ; preds = %.lr.ph560, %ma_channel_map_init_standard.exit
  %indvars.iv573 = phi i64 [ 0, %.lr.ph560 ], [ %indvars.iv.next574, %ma_channel_map_init_standard.exit ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv573
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !118
  %i.tl = call fastcc zeroext i8 @ma_convert_alsa_channel_position_to_ma_channel(i32 noundef %i.tk)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv573
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !119
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %.preheader, label %ma_channel_map_init_standard.exit, !llvm.loop !3123

.lr.ph562:                                        ; preds = %.preheader, %._crit_edge
  %indvars.iv.next585709 = phi i64 [ %indvars.iv.next585, %._crit_edge ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv578708 = phi i64 [ %indvars.iv.next579, %._crit_edge ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv584707 = phi i64 [ %indvars.iv.next585709, %._crit_edge ], [ 0, %.preheader ]
  %i.tn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv584707
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !119
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cs
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next581 to i32
  %exitcond583.not = icmp eq i32 %i.ix, %lftr.wideiv
  br i1 %exitcond583.not, label %._crit_edge, label %bb.cs, !llvm.loop !3124

bb.cs:                                            ; preds = %.lr.ph562, %bb.cr
  %indvars.iv580 = phi i64 [ %indvars.iv578708, %.lr.ph562 ], [ %indvars.iv.next581, %bb.cr ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv580
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !119
  %.not704 = icmp eq i8 %i.to, %i.tq
  br i1 %.not704, label %.preheader.i479, label %bb.cr

._crit_edge:                                      ; preds = %bb.cr
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578708, 1
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv.next585709, 1 ; 2 uses
  %i.tr = icmp samesign ult i64 %indvars.iv.next585, %i.th
  br i1 %i.tr, label %.lr.ph562, label %ma_channel_map_init_standard.exit484, !llvm.loop !3125

.preheader.i479:                                  ; preds = %bb.cs, %.preheader.i479
  %.024.i480 = phi i32 [ %i.tu, %.preheader.i479 ], [ 0, %bb.cs ] ; 2 uses
  %.01723.i481 = phi ptr [ %i.tt, %.preheader.i479 ], [ %i.b, %bb.cs ] ; 3 uses
  %i.ts = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 1, i32 noundef %i.ix, i32 noundef %.024.i480)
  store i8 %i.ts, ptr %.01723.i481, align 1, !tbaa !119
  %i.tt = getelementptr inbounds nuw i8, ptr %.01723.i481, i64 1
  %i.tu = add nuw nsw i32 %.024.i480, 1
  %i.tv = icmp eq ptr %.01723.i481, %scevgep
  br i1 %i.tv, label %ma_channel_map_init_standard.exit484, label %.preheader.i479, !llvm.loop !5

ma_channel_map_init_standard.exit484:             ; preds = %bb.cq, %._crit_edge, %.preheader.i479, %.preheader, %.preheader554
  call void @free(ptr noundef %i.su) #55
  br label %ma_channel_map_init_standard.exit490

.thread549:                                       ; preds = %ma_free.exit478, %bb.co
  %i.tw = icmp eq i32 %i.ix, 0
  br i1 %i.tw, label %ma_channel_map_init_standard.exit490, label %.preheader.i485.preheader

.preheader.i485.preheader:                        ; preds = %.thread549
  %i.tx = add i32 %i.ix, -1
  %i.ty = call i32 @llvm.umin.i32(i32 %i.tx, i32 253)
  %umin587 = zext nneg i32 %i.ty to i64
  %scevgep588 = getelementptr i8, ptr %i.b, i64 %umin587
  br label %.preheader.i485

.preheader.i485:                                  ; preds = %.preheader.i485.preheader, %.preheader.i485
  %.024.i486 = phi i32 [ %i.ub, %.preheader.i485 ], [ 0, %.preheader.i485.preheader ] ; 2 uses
  %.01723.i487 = phi ptr [ %i.ua, %.preheader.i485 ], [ %i.b, %.preheader.i485.preheader ] ; 3 uses
  %i.tz = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 1, i32 noundef %i.ix, i32 noundef %.024.i486)
  store i8 %i.tz, ptr %.01723.i487, align 1, !tbaa !119
  %i.ua = getelementptr inbounds nuw i8, ptr %.01723.i487, i64 1
  %i.ub = add nuw nsw i32 %.024.i486, 1
  %exitcond589 = icmp eq ptr %.01723.i487, %scevgep588
  br i1 %exitcond589, label %ma_channel_map_init_standard.exit490, label %.preheader.i485, !llvm.loop !5

ma_channel_map_init_standard.exit490:             ; preds = %.preheader.i485, %.thread549, %ma_channel_map_init_standard.exit484
  %i.uc = load ptr, ptr %0, align 8, !tbaa !219
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 944
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !119
  %i.uf = call i32 %i.ue(ptr noundef %i.bj) #55   ; 3 uses
  %i.ug = icmp slt i32 %i.uf, 1
  %i.uh = load ptr, ptr %0, align 8, !tbaa !219   ; 4 uses
  br i1 %i.ug, label %ma_device_get_context.exit.i491, label %bb.cu

ma_device_get_context.exit.i491:                  ; preds = %ma_channel_map_init_standard.exit490
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 440
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !119
  %i.uk = call i32 %i.uj(ptr noundef %i.bj) #55   ; 0 uses
  %i.ul = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.um = icmp eq ptr %i.ul, null
  br i1 %i.um, label %ma_device_get_log.exit493, label %bb.ct

bb.ct:                                            ; preds = %ma_device_get_context.exit.i491
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 112
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !275
  br label %ma_device_get_log.exit493

ma_device_get_log.exit493:                        ; preds = %ma_device_get_context.exit.i491, %bb.ct
  %.0.i1.i492 = phi ptr [ %i.uo, %bb.ct ], [ null, %ma_device_get_context.exit.i491 ]
  %i.up = call i32 @ma_log_post(ptr noundef %.0.i1.i492, i32 noundef 1, ptr noundef nonnull @.str.416) ; 0 uses
  br label %ma_log_post.exit

bb.cu:                                            ; preds = %ma_channel_map_init_standard.exit490
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uh, i64 296
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !125 ; 2 uses
  %.not8.i495 = icmp eq ptr %i.ur, null
  br i1 %.not8.i495, label %ma_device_get_context.exit.i497, label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.cu
  %i.us = getelementptr inbounds nuw i8, ptr %i.uh, i64 288
  %i.ut = add nuw nsw i32 %i.uf, 1
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = shl nuw nsw i64 %i.uu, 3
  %i.uw = load ptr, ptr %i.us, align 8, !tbaa !126
  %i.ux = call ptr %i.ur(i64 noundef %i.uv, ptr noundef %i.uw) #55, !inline_history !127 ; 10 uses
  %i.uy = icmp eq ptr %i.ux, null
  br i1 %i.uy, label %ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge, label %bb.cw

ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge: ; preds = %ma_malloc.exit
  %.pre599.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i497

ma_device_get_context.exit.i497:                  ; preds = %ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge, %bb.cu
  %i.uz = phi ptr [ %.pre599.a, %ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge ], [ %i.uh, %bb.cu ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 440
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !119
  %i.vc = call i32 %i.vb(ptr noundef %i.bj) #55   ; 0 uses
  %i.vd = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ve = icmp eq ptr %i.vd, null
  br i1 %i.ve, label %ma_device_get_log.exit499, label %bb.cv

bb.cv:                                            ; preds = %ma_device_get_context.exit.i497
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 112
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !275
  br label %ma_device_get_log.exit499

ma_device_get_log.exit499:                        ; preds = %ma_device_get_context.exit.i497, %bb.cv
  %.0.i1.i498 = phi ptr [ %i.vg, %bb.cv ], [ null, %ma_device_get_context.exit.i497 ]
  %i.vh = call i32 @ma_log_post(ptr noundef %.0.i1.i498, i32 noundef 1, ptr noundef nonnull @.str.417) ; 0 uses
  br label %ma_log_post.exit

bb.cw:                                            ; preds = %ma_malloc.exit
  %i.vi = call i32 @eventfd(i32 noundef 0, i32 noundef 0) #55 ; 6 uses
  %i.vj = icmp slt i32 %i.vi, 0
  br i1 %i.vj, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vk = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 312
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !132 ; 2 uses
  %.not9.i501 = icmp eq ptr %i.vm, null
  br i1 %.not9.i501, label %ma_device_get_context.exit.i503, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 288
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !126
  call void %i.vm(ptr noundef nonnull %i.ux, ptr noundef %i.vo) #55, !inline_history !133
  %.pre598.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i503

ma_device_get_context.exit.i503:                  ; preds = %bb.cy, %bb.cx
  %i.vp = phi ptr [ %.pre598.a, %bb.cy ], [ %i.vk, %bb.cx ]
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 440
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !119
  %i.vs = call i32 %i.vr(ptr noundef %i.bj) #55   ; 0 uses
  %i.vt = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %ma_device_get_log.exit505, label %bb.cz

bb.cz:                                            ; preds = %ma_device_get_context.exit.i503
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 112
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !275
  br label %ma_device_get_log.exit505

ma_device_get_log.exit505:                        ; preds = %ma_device_get_context.exit.i503, %bb.cz
  %.0.i1.i504 = phi ptr [ %i.vw, %bb.cz ], [ null, %ma_device_get_context.exit.i503 ]
  %i.vx = call i32 @ma_log_post(ptr noundef %.0.i1.i504, i32 noundef 1, ptr noundef nonnull @.str.418) ; 0 uses
  %i.vy = tail call ptr @__errno_location() #68
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !118
  %i.wa = call fastcc i32 @ma_result_from_errno(i32 noundef %i.vz)
  br label %ma_log_post.exit

bb.da:                                            ; preds = %bb.cw
  store i32 %i.vi, ptr %i.ux, align 4, !tbaa !1168
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  store i16 1, ptr %i.wb, align 4, !tbaa !3131
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ux, i64 6
  store i16 0, ptr %i.wc, align 2, !tbaa !1169
  %i.wd = load ptr, ptr %0, align 8, !tbaa !219
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 936
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !119
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.wh = call i32 %i.wf(ptr noundef %i.bj, ptr noundef nonnull %i.wg, i32 noundef %i.uf) #55 ; 3 uses
  %i.wi = icmp slt i32 %i.wh, 1
  br i1 %i.wi, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.wj = call i32 @close(i32 noundef %i.vi) #55  ; 0 uses
  %i.wk = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 312
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !132 ; 2 uses
  %.not9.i507 = icmp eq ptr %i.wm, null
  br i1 %.not9.i507, label %ma_device_get_context.exit.i509, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 288
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !126
  call void %i.wm(ptr noundef nonnull %i.ux, ptr noundef %i.wo) #55, !inline_history !133
  %.pre597.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i509

ma_device_get_context.exit.i509:                  ; preds = %bb.dc, %bb.db
  %i.wp = phi ptr [ %.pre597.a, %bb.dc ], [ %i.wk, %bb.db ]
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 440
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !119
  %i.ws = call i32 %i.wr(ptr noundef %i.bj) #55   ; 0 uses
  %i.wt = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.wu = icmp eq ptr %i.wt, null
  br i1 %i.wu, label %ma_device_get_log.exit511, label %bb.dd

bb.dd:                                            ; preds = %ma_device_get_context.exit.i509
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 112
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !275
  br label %ma_device_get_log.exit511

ma_device_get_log.exit511:                        ; preds = %ma_device_get_context.exit.i509, %bb.dd
  %.0.i1.i510 = phi ptr [ %i.ww, %bb.dd ], [ null, %ma_device_get_context.exit.i509 ]
  %i.wx = call i32 @ma_log_post(ptr noundef %.0.i1.i510, i32 noundef 1, ptr noundef nonnull @.str.419) ; 0 uses
  br label %ma_log_post.exit

bb.de:                                            ; preds = %bb.da
  %i.wy = icmp eq i32 %3, 2                       ; 2 uses
  br i1 %i.wy, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 3460
  store i32 %i.wh, ptr %i.wz, align 4, !tbaa !119
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store ptr %i.ux, ptr %i.xa, align 8, !tbaa !119
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 3468
  store i32 %i.vi, ptr %i.xb, align 4, !tbaa !119
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.wh, ptr %i.xc, align 8, !tbaa !119
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 3440
  store ptr %i.ux, ptr %i.xd, align 8, !tbaa !119
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 3464
end_hunk_1
