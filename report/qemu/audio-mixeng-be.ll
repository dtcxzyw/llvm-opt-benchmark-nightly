Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/audio-mixeng-be?download=true
inline.NumInlined: 226
inline.NumDeleted: 92
begin_hunk_0_@audio_run:bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %.1174.i, i64 80
  %i.jk = load i8, ptr %i.jj, align 8, !range !10, !noundef !11
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph176.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.1174.i, i64 81
  %i.jn = load i8, ptr %i.jm, align 1, !range !10, !noundef !11
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph176.i
  %i.jp = load i64, ptr %i.h, align 8             ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.1174.i, i64 72 ; 4 uses
  %i.jr = load i64, ptr %i.jq, align 8            ; 4 uses
  %i.js = icmp ugt i64 %i.jp, %i.jr
  br i1 %i.js, label %.thread224.i, label %bb.bg

.thread224.i:                                     ; preds = %bb.bf
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.audio_run_out, i64 noundef %i.jp, i64 noundef %i.jr) #15
  %i.jt = load i64, ptr %i.jq, align 8
  store i64 %i.jt, ptr %i.h, align 8
  store i64 0, ptr %i.jq, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ju = sub nuw i64 %i.jr, %i.jp
  store i64 %i.ju, ptr %i.jq, align 8
  %.not119.i = icmp eq i64 %i.jr, %i.jp
  br i1 %.not119.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.thread224.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.1174.i, i64 81
  store i8 1, ptr %i.jv, align 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %i.jw = getelementptr inbounds nuw i8, ptr %.1174.i, i64 144
  %.1.i = load ptr, ptr %i.jw, align 8            ; 2 uses
  %.not118.i = icmp eq ptr %.1.i, null
  br i1 %.not118.i, label %.loopexit.i, label %.lr.ph176.i, !llvm.loop !29

.loopexit.sink.split.i:                           ; preds = %bb.al, %bb.l
  %.sink.i = phi ptr [ %i.eq, %bb.al ], [ %i.bb, %bb.l ]
  call void %.sink.i(ptr noundef nonnull %i.p) #15, !inline_history !19
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bi, %audio_recalc_and_notify_capture.exit.i, %.loopexit.sink.split.i, %bb.bd, %.thread161.i, %bb.ae, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %.backedge

audio_run_out.exit:                               ; preds = %bb.b
  %i.jx = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 8
  %switch.i.i7 = icmp ult i32 %i.jz, 8
  br i1 %switch.i.i7, label %audio_get_pdo_in.exit.i, label %bb.bj

bb.bj:                                            ; preds = %audio_run_out.exit
  call void @abort() #14
  unreachable

audio_get_pdo_in.exit.i:                          ; preds = %audio_run_out.exit
  %.0.in.i.i8 = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %.0.i.i9 = load ptr, ptr %.0.in.i.i8, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !range !10, !noundef !11
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.kc, label %.preheader.i, label %.preheader82.i

.preheader82.i:                                   ; preds = %audio_get_pdo_in.exit.i, %.preheader82.i.backedge
  %.0.i64.i = phi ptr [ %i.kf, %.preheader82.i.backedge ], [ null, %audio_get_pdo_in.exit.i ] ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %.0.i64.i, null
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i64.i, i64 128
  %.in.i.i.i12 = select i1 %.not.i.i.i11, ptr %i.kd, ptr %i.ke
  %i.kf = load ptr, ptr %.in.i.i.i12, align 8     ; 4 uses
  %.not.i.i13 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i13, label %audio_run_in.exit, label %bb.bk

bb.bk:                                            ; preds = %.preheader82.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i8, ptr %i.kg, align 8, !range !10, !noundef !11
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %audio_pcm_hw_find_any_enabled_in.exit.i, label %.preheader82.i.backedge

.preheader82.i.backedge:                          ; preds = %bb.bk, %bb.bl, %audio_pcm_hw_find_any_enabled_in.exit.i
  br label %.preheader82.i, !llvm.loop !30

audio_pcm_hw_find_any_enabled_in.exit.i:          ; preds = %bb.bk
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 120
  %i.kk = load ptr, ptr %i.kj, align 8            ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i8, ptr %i.kl, align 8, !range !10, !noundef !11
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.bl, label %.preheader82.i.backedge

bb.bl:                                            ; preds = %audio_pcm_hw_find_any_enabled_in.exit.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 128
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 136
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = load ptr, ptr %i.ko, align 8
  call void %i.kq(ptr noundef %i.kr, i32 noundef 2147483647) #15, !inline_history !31
  br label %.preheader82.i.backedge

.preheader.i:                                     ; preds = %audio_get_pdo_in.exit.i, %.preheader.i.backedge
  %.0.i65.i = phi ptr [ %i.kt, %.preheader.i.backedge ], [ null, %audio_get_pdo_in.exit.i ] ; 2 uses
  %.not.i.i66.i = icmp eq ptr %.0.i65.i, null
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i65.i, i64 128
  %.in.i.i67.i = select i1 %.not.i.i66.i, ptr %i.kd, ptr %i.ks
  %i.kt = load ptr, ptr %.in.i.i67.i, align 8     ; 19 uses
  %.not.i68.i = icmp eq ptr %i.kt, null
  br i1 %.not.i68.i, label %audio_run_in.exit, label %bb.bm

bb.bm:                                            ; preds = %.preheader.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i8, ptr %i.ku, align 8, !range !10, !noundef !11
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %audio_pcm_hw_find_any_enabled_in.exit69.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.bm, %._crit_edge99.i
  br label %.preheader.i, !llvm.loop !32

audio_pcm_hw_find_any_enabled_in.exit69.i:        ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8
  %i.kx = load i32, ptr @replay_mode, align 4
  %.not58.i = icmp eq i32 %i.kx, 2
  br i1 %.not58.i, label %bb.bx, label %bb.bn

bb.bn:                                            ; preds = %audio_pcm_hw_find_any_enabled_in.exit69.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 64 ; 3 uses
  %i.kz = load i64, ptr %i.ky, align 8            ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.lb = load i64, ptr %i.la, align 8            ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 120
  %.013.i.i.i = load ptr, ptr %i.lc, align 8      ; 2 uses
  %.not14.i.i.i = icmp eq ptr %.013.i.i.i, null
  br i1 %.not14.i.i.i, label %audio_pcm_hw_find_min_in.exit.i.i, label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.bn, %bb.bp
  %.016.i.i.i = phi ptr [ %.0.i.i.i17, %bb.bp ], [ %.013.i.i.i, %bb.bn ] ; 3 uses
  %.01215.i.i.i = phi i64 [ %.1.i.i.i16, %bb.bp ], [ %i.lb, %bb.bn ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.le = load i8, ptr %i.ld, align 8, !range !10, !noundef !11
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i.i15
  %i.lg = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = call i64 @llvm.umin.i64(i64 %.01215.i.i.i, i64 %i.lh)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i.i.i15
  %.1.i.i.i16 = phi i64 [ %i.li, %bb.bo ], [ %.01215.i.i.i, %.lr.ph.i.i.i15 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 144
  %.0.i.i.i17 = load ptr, ptr %i.lj, align 8      ; 2 uses
  %.not.i.i70.i = icmp eq ptr %.0.i.i.i17, null
  br i1 %.not.i.i70.i, label %audio_pcm_hw_find_min_in.exit.i.i, label %.lr.ph.i.i.i15, !llvm.loop !33

audio_pcm_hw_find_min_in.exit.i.i:                ; preds = %bb.bp, %bb.bn
  %.012.lcssa.i.i.i = phi i64 [ %i.lb, %bb.bn ], [ %.1.i.i.i16, %bb.bp ]
  %i.lk = sub i64 %i.lb, %.012.lcssa.i.i.i        ; 3 uses
  %i.ll = icmp ugt i64 %i.lk, %i.kz
  br i1 %i.ll, label %bb.bq, label %audio_pcm_hw_get_live_in.exit.i

bb.bq:                                            ; preds = %audio_pcm_hw_find_min_in.exit.i.i
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.audio_pcm_hw_get_live_in, i64 noundef %i.lk, i64 noundef %i.kz) #15
  br label %audio_pcm_hw_get_live_in.exit.i

audio_pcm_hw_get_live_in.exit.i:                  ; preds = %bb.bq, %audio_pcm_hw_find_min_in.exit.i.i
  %.0.i71.i = phi i64 [ 0, %bb.bq ], [ %i.lk, %audio_pcm_hw_find_min_in.exit.i.i ]
  %i.lm = sub i64 %i.kz, %.0.i71.i                ; 2 uses
  %i.ln = load ptr, ptr %i.kt, align 8
  %i.lo = call ptr @object_get_class(ptr noundef %i.ln) #15
  %i.lp = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.lo, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 283, ptr noundef nonnull @__func__.AUDIO_MIXENG_BACKEND_GET_CLASS) #15 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 360
  %i.lr = load ptr, ptr %i.lq, align 8            ; 2 uses
  %.not.i72.i = icmp eq ptr %i.lr, null
  br i1 %.not.i72.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %audio_pcm_hw_get_live_in.exit.i
  call void %i.lr(ptr noundef nonnull %i.kt) #15, !inline_history !34
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %audio_pcm_hw_get_live_in.exit.i
  %.not2836.i.i = icmp eq i64 %i.lm, 0
  br i1 %.not2836.i.i, label %audio_pcm_hw_run_in.exit.i, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.bs
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kt, i64 28 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 368
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kt, i64 56 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kt, i64 72
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 376
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i.i21, %.lr.ph.i.i18
  %.02338.i.i = phi i64 [ 0, %.lr.ph.i.i18 ], [ %3, %.loopexit.i.i21 ] ; 2 uses
  %.02437.i.i = phi i64 [ %i.lm, %.lr.ph.i.i18 ], [ %2, %.loopexit.i.i21 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ly = load i32, ptr %i.ls, align 4
  %i.lz = sext i32 %i.ly to i64
  %i.ma = mul i64 %.02437.i.i, %i.lz
  store i64 %i.ma, ptr %i.a, align 8
  %i.mb = load ptr, ptr %i.lt, align 8
  %i.mc = call ptr %i.mb(ptr noundef nonnull %i.kt, ptr noundef nonnull %i.a) #15, !inline_history !34 ; 2 uses
  %i.md = load i64, ptr %i.a, align 8             ; 3 uses
  %i.me = load i32, ptr %i.ls, align 4
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = urem i64 %i.md, %i.mf
  %i.mh = udiv exact i64 %i.md, %i.mf
  %i.mi = icmp eq i64 %i.mg, 0
  br i1 %i.mi, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef 1048, ptr noundef nonnull @__PRETTY_FUNCTION__.audio_pcm_hw_run_in) #14
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.mj = icmp eq i64 %i.md, 0
  br i1 %i.mj, label %.thread.i.i27, label %.lr.ph.i.i73.i

.thread.i.i27:                                    ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %audio_pcm_hw_run_in.exit.i

.lr.ph.i.i73.i:                                   ; preds = %bb.bv
  %.pre.i.i.i19 = load i64, ptr %i.ky, align 8
  %.pre30.i.i.i = load i64, ptr %i.lu, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i.i73.i
  %i.mk = phi i64 [ %.pre30.i.i.i, %.lr.ph.i.i73.i ], [ %i.mz, %bb.bw ] ; 2 uses
  %i.ml = phi i64 [ %.pre.i.i.i19, %.lr.ph.i.i73.i ], [ %i.my, %bb.bw ]
  %.029.i.i.i = phi i64 [ %i.mh, %.lr.ph.i.i73.i ], [ %i.na, %bb.bw ] ; 2 uses
  %.02628.i.i.i = phi i64 [ 0, %.lr.ph.i.i73.i ], [ %i.nb, %bb.bw ] ; 2 uses
  %i.mm = load i32, ptr %i.ls, align 4
  %i.mn = sext i32 %i.mm to i64
  %i.mo = mul i64 %.02628.i.i.i, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mo
  %i.mq = sub i64 %i.ml, %i.mk
  %i.mr = call i64 @llvm.umin.i64(i64 %.029.i.i.i, i64 %i.mq) ; 4 uses
  %i.ms = load ptr, ptr %i.lv, align 8
  %i.mt = load ptr, ptr %i.lw, align 8
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.mk
  %i.mv = trunc i64 %i.mr to i32
  call void %i.ms(ptr noundef %i.mu, ptr noundef %i.mp, i32 noundef %i.mv) #15, !inline_history !35
  %i.mw = load i64, ptr %i.lu, align 8
  %i.mx = add i64 %i.mw, %i.mr
  %i.my = load i64, ptr %i.ky, align 8            ; 2 uses
  %i.mz = urem i64 %i.mx, %i.my                   ; 2 uses
  store i64 %i.mz, ptr %i.lu, align 8
  %i.na = sub nuw i64 %.029.i.i.i, %i.mr          ; 2 uses
  %i.nb = add i64 %i.mr, %.02628.i.i.i            ; 4 uses
  %.not.i.i74.i = icmp eq i64 %i.na, 0
  br i1 %.not.i.i74.i, label %.loopexit.i.i21, label %bb.bw, !llvm.loop !36

.loopexit.i.i21:                                  ; preds = %bb.bw
  %2 = sub i64 %.02437.i.i, %i.nb                 ; 2 uses
  %3 = add i64 %i.nb, %.02338.i.i                 ; 2 uses
  %4 = load ptr, ptr %i.lx, align 8
  %5 = load i32, ptr %i.ls, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %i.nb, %6
  call void %4(ptr noundef nonnull %i.kt, ptr noundef %i.mc, i64 noundef %7) #15, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not28.i.i = icmp eq i64 %2, 0
  br i1 %.not28.i.i, label %audio_pcm_hw_run_in.exit.i, label %bb.bt

audio_pcm_hw_run_in.exit.i:                       ; preds = %.loopexit.i.i21, %.thread.i.i27, %bb.bs
  %.02335.i.i = phi i64 [ %.02338.i.i, %.thread.i.i27 ], [ 0, %bb.bs ], [ %3, %.loopexit.i.i21 ]
  store i64 %.02335.i.i, ptr %i.b, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %audio_pcm_hw_run_in.exit.i, %audio_pcm_hw_find_any_enabled_in.exit69.i
  call void @replay_audio_in_start(ptr noundef nonnull %i.b) #15
  %i.nc = load i64, ptr %i.b, align 8             ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kt, i64 56 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kt, i64 64 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8            ; 4 uses
  %.not59.i = icmp ugt i64 %i.nc, %i.nf
  br i1 %.not59.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 1089, ptr noundef nonnull @__PRETTY_FUNCTION__.audio_run_in) #14
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.ng = load i32, ptr @replay_mode, align 4     ; 2 uses
  %i.nh = icmp eq i32 %i.ng, 2
  %.pre.i = load i64, ptr %i.nd, align 8          ; 2 uses
  br i1 %i.nh, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ni = add i64 %.pre.i, %i.nc
  %i.nj = urem i64 %i.ni, %i.nf                   ; 2 uses
  store i64 %i.nj, ptr %i.nd, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.nk = phi i64 [ %i.nj, %bb.ca ], [ %.pre.i, %bb.bz ] ; 2 uses
  %i.nl = sub i64 %i.nf, %i.nc
  %i.nm = add i64 %i.nl, %i.nk
  %i.nn = urem i64 %i.nm, %i.nf                   ; 2 uses
  %sext90.i = shl i64 %i.nn, 32                   ; 2 uses
  %i.no = ashr exact i64 %sext90.i, 32
  %.not6091.i = icmp eq i64 %i.no, %i.nk
  br i1 %.not6091.i, label %._crit_edge.i24, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.cb
  %i.np = getelementptr inbounds nuw i8, ptr %i.kt, i64 72 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cg, %.lr.ph.i23
  %i.nq = phi i32 [ %i.ng, %.lr.ph.i23 ], [ %i.ny, %bb.cg ]
  %sext93.i = phi i64 [ %sext90.i, %.lr.ph.i23 ], [ %sext.i, %bb.cg ]
  %.05092.in.i = phi i64 [ %i.nn, %.lr.ph.i23 ], [ %i.ob, %bb.cg ]
  %.05092.i = trunc i64 %.05092.in.i to i32       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 0, ptr %i.c, align 8, !annotation !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 0, ptr %i.d, align 8, !annotation !44
  %i.nr = icmp eq i32 %i.nq, 1
  br i1 %i.nr, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ns = load ptr, ptr %i.np, align 8
  call void @audio_sample_to_uint64(ptr noundef %i.ns, i32 noundef %.05092.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #15
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  call void @replay_audio_in_sample_lr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #15
  %i.nt = load i32, ptr @replay_mode, align 4     ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 2
  br i1 %i.nu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nv = load ptr, ptr %i.np, align 8
  %i.nw = load i64, ptr %i.c, align 8
  %i.nx = load i64, ptr %i.d, align 8
  call void @audio_sample_from_uint64(ptr noundef %i.nv, i32 noundef %.05092.i, i64 noundef %i.nw, i64 noundef %i.nx) #15
  %.pre107.i = load i32, ptr @replay_mode, align 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ny = phi i32 [ %.pre107.i, %bb.cf ], [ %i.nt, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %sext63.i = add i64 %sext93.i, 4294967296
  %i.nz = ashr exact i64 %sext63.i, 32
  %i.oa = load i64, ptr %i.ne, align 8
  %i.ob = urem i64 %i.nz, %i.oa                   ; 2 uses
  %sext.i = shl i64 %i.ob, 32                     ; 2 uses
  %i.oc = ashr exact i64 %sext.i, 32
  %i.od = load i64, ptr %i.nd, align 8
  %.not60.i = icmp eq i64 %i.oc, %i.od
  br i1 %.not60.i, label %._crit_edge.i24, label %bb.cc, !llvm.loop !37

._crit_edge.i24:                                  ; preds = %bb.cg, %bb.cb
  call void @replay_audio_in_finish() #15
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kt, i64 48 ; 3 uses
  %i.of = load i64, ptr %i.oe, align 8            ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.kt, i64 120
  %.013.i.i = load ptr, ptr %i.og, align 8        ; 3 uses
  %.not14.i.i = icmp eq ptr %.013.i.i, null
  br i1 %.not14.i.i, label %audio_pcm_hw_find_min_in.exit.thread.i, label %.lr.ph.i75.i

audio_pcm_hw_find_min_in.exit.thread.i:           ; preds = %._crit_edge.i24
  %i.oh = load i64, ptr %i.b, align 8
  store i64 %i.oh, ptr %i.oe, align 8
  br label %._crit_edge99.i

.lr.ph.i75.i:                                     ; preds = %._crit_edge.i24, %bb.ci
  %.016.i.i = phi ptr [ %.0.i76.i, %bb.ci ], [ %.013.i.i, %._crit_edge.i24 ] ; 3 uses
  %.01215.i.i = phi i64 [ %.1.i.i, %bb.ci ], [ %i.of, %._crit_edge.i24 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %i.oj = load i8, ptr %i.oi, align 8, !range !10, !noundef !11
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i75.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.om = load i64, ptr %i.ol, align 8
  %i.on = call i64 @llvm.umin.i64(i64 %.01215.i.i, i64 %i.om)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.lr.ph.i75.i
  %.1.i.i = phi i64 [ %i.on, %bb.ch ], [ %.01215.i.i, %.lr.ph.i75.i ] ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 144
  %.0.i76.i = load ptr, ptr %i.oo, align 8        ; 2 uses
  %.not.i77.i = icmp eq ptr %.0.i76.i, null
  br i1 %.not.i77.i, label %audio_pcm_hw_find_min_in.exit.i, label %.lr.ph.i75.i, !llvm.loop !33

audio_pcm_hw_find_min_in.exit.i:                  ; preds = %bb.ci
  %i.op = load i64, ptr %i.b, align 8
  %i.oq = sub i64 %i.of, %.1.i.i
  %i.or = add i64 %i.oq, %i.op
  store i64 %i.or, ptr %i.oe, align 8
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.cq, %audio_pcm_hw_find_min_in.exit.i
  %.05196.i = phi ptr [ %.051.i, %bb.cq ], [ %.013.i.i, %audio_pcm_hw_find_min_in.exit.i ] ; 11 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.05196.i, i64 48 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8
  %i.ou = sub i64 %i.ot, %.1.i.i                  ; 2 uses
  store i64 %i.ou, ptr %i.os, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %.05196.i, i64 8
  %i.ow = load i8, ptr %i.ov, align 8, !range !10, !noundef !11
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %.lr.ph98.i
  %i.oy = getelementptr inbounds nuw i8, ptr %.05196.i, i64 88
  %i.oz = load ptr, ptr %i.oy, align 8            ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  %i.pb = load i64, ptr %i.pa, align 8
  %i.pc = sub i64 %i.pb, %i.ou                    ; 8 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %i.pe = load i64, ptr %i.pd, align 8            ; 2 uses
  %i.pf = icmp ugt i64 %i.pc, %i.pe
  br i1 %i.pf, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.audio_get_avail, i64 noundef %i.pc, i64 noundef %i.pe) #15
  br label %audio_get_avail.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.pg = getelementptr inbounds nuw i8, ptr %.05196.i, i64 96
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %.not.i78.i = icmp eq ptr %i.ph, null
  %spec.select.i.i25 = select i1 %.not.i78.i, ptr @.str.9, ptr %i.ph
  %i.pi = getelementptr inbounds nuw i8, ptr %.05196.i, i64 40
  %i.pj = load ptr, ptr %i.pi, align 8
  %i.pk = trunc i64 %i.pc to i32
  %i.pl = call i32 @st_rate_frames_out(ptr noundef %i.pj, i32 noundef %i.pk) #15
  %i.pm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i79.i = icmp eq i32 %i.pm, 0
  br i1 %.not.i.i79.i, label %audio_get_avail.exit.i, label %bb.cm, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.pn = load i16, ptr @_TRACE_AUDIO_GET_AVAIL_DSTATE, align 2
  %.not2.i.i.i = icmp eq i16 %i.pn, 0
  br i1 %.not2.i.i.i, label %audio_get_avail.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.po = load i32, ptr @qemu_loglevel, align 4
  %i.pp = and i32 %i.po, 32768
  %.not3.i.i.i26 = icmp eq i32 %i.pp, 0
  br i1 %.not3.i.i.i26, label %audio_get_avail.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, ptr noundef nonnull %spec.select.i.i25, i64 noundef %i.pc, i32 noundef %i.pl) #15
  br label %audio_get_avail.exit.i

audio_get_avail.exit.i:                           ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %.0.i80.i = phi i64 [ 0, %bb.ck ], [ %i.pc, %bb.cl ], [ %i.pc, %bb.cm ], [ %i.pc, %bb.cn ], [ %i.pc, %bb.co ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.05196.i, i64 40
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = trunc i64 %.0.i80.i to i32
  %i.pt = call i32 @st_rate_frames_out(ptr noundef %i.pr, i32 noundef %i.ps) #15 ; 2 uses
  %.not62.i = icmp eq i32 %i.pt, 0
  br i1 %.not62.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %audio_get_avail.exit.i
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %.05196.i, i64 64
  %i.pw = load i64, ptr %i.pv, align 8
  %i.px = call i64 @llvm.umin.i64(i64 %i.pw, i64 %i.pu)
  %i.py = getelementptr inbounds nuw i8, ptr %.05196.i, i64 128
  %i.pz = getelementptr inbounds nuw i8, ptr %.05196.i, i64 136
  %i.qa = load ptr, ptr %i.pz, align 8
end_hunk_0
