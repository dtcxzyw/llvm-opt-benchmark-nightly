Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/t1?download=true
inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !28
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit.i
  %.0142.i = phi ptr [ %i.gm, %bb.ah ], [ null, %.loopexit.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !212
  %.not296.i = icmp eq i32 %i.go, 0
  br i1 %.not296.i, label %._crit_edge293.i, label %.lr.ph292.i

.lr.ph292.i:                                      ; preds = %bb.ai
  %i.gp = trunc i32 %i.bu to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %.0254, i64 232 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0254, i64 236 ; 9 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0254, i64 216 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0254, i64 224 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0254, i64 192 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0254, i64 4 ; 9 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0254, i64 8 ; 33 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0254, i64 40 ; 9 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0254, i64 16 ; 84 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0254, i64 12 ; 36 uses
  %i.ha = and i32 %i.bu, 8                        ; 2 uses
  %or.cond.not.i.i.i.i = icmp eq i32 %i.ha, 0
  %i.hb = and i32 %i.bu, 2
  %i.hc = icmp eq i32 %i.hb, 0
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge284.i, %.lr.ph292.i
  %indvars.iv369.i = phi i64 [ 0, %.lr.ph292.i ], [ %indvars.iv.next370.i, %._crit_edge284.i ] ; 2 uses
  %.0143290.i = phi i32 [ 0, %.lr.ph292.i ], [ %i.ho, %._crit_edge284.i ] ; 2 uses
  %.0148288.i = phi i32 [ 2, %.lr.ph292.i ], [ %.1149.lcssa.i, %._crit_edge284.i ] ; 3 uses
  %.0150287.i = phi i32 [ %i.cz, %.lr.ph292.i ], [ %.1151.lcssa.i, %._crit_edge284.i ] ; 4 uses
  %i.hd = load ptr, ptr %i.b, align 8, !tbaa !213
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %indvars.iv369.i ; 3 uses
  %i.hf = load i32, ptr %i.cx, align 4, !tbaa !204
  %i.hg = add nsw i32 %i.hf, -4
  %i.hh = icmp sle i32 %.0150287.i, %i.hg
  %i.hi = icmp ult i32 %.0148288.i, 2
  %or.cond.i = select i1 %i.hh, i1 %i.hi, i1 false
  %i.hj = and i1 %or.cond.i, %i.gp                ; 4 uses
  %i.hk = zext i32 %.0143290.i to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.1145.i, i64 %i.hk ; 2 uses
  %i.hm = load i32, ptr %i.he, align 4, !tbaa !215 ; 2 uses
  br i1 %i.hj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @opj_mqc_raw_init_dec(ptr noundef nonnull %.0254, ptr noundef %i.hl, i32 noundef %i.hm, i32 noundef 2) #12
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  tail call void @opj_mqc_init_dec(ptr noundef nonnull %.0254, ptr noundef %i.hl, i32 noundef %i.hm, i32 noundef 2) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hn = load i32, ptr %i.he, align 4, !tbaa !215
  %i.ho = add i32 %i.hn, %.0143290.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !216
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = icmp sgt i32 %.0150287.i, 0
  %i.ht = and i1 %i.hs, %i.hr
  br i1 %i.ht, label %.lr.ph283.i, label %._crit_edge284.i

.lr.ph283.i:                                      ; preds = %bb.am
  %or.cond4.not.i = or i1 %i.hc, %i.hj
  br label %bb.an

bb.an:                                            ; preds = %opj_t1_dec_sigpass_raw.exit.thread.i, %.lr.ph283.i
  %.0146281.i = phi i32 [ 0, %.lr.ph283.i ], [ %i.bbq, %opj_t1_dec_sigpass_raw.exit.thread.i ]
  %.1149280.i = phi i32 [ %.0148288.i, %.lr.ph283.i ], [ %spec.select178.i, %opj_t1_dec_sigpass_raw.exit.thread.i ] ; 2 uses
  %.1151279.i = phi i32 [ %.0150287.i, %.lr.ph283.i ], [ %spec.select.i, %opj_t1_dec_sigpass_raw.exit.thread.i ] ; 7 uses
  switch i32 %.1149280.i, label %default.unreachable.i [
    i32 0, label %bb.ao
    i32 1, label %bb.cd
    i32 2, label %bb.kc
  ]

bb.ao:                                            ; preds = %bb.an
  br i1 %i.hj, label %bb.ap, label %bb.cc

bb.ap:                                            ; preds = %bb.ao
  %i.hu = load ptr, ptr %i.gs, align 8, !tbaa !28 ; 2 uses
  %i.hv = load ptr, ptr %i.gt, align 8, !tbaa !29
  %i.hw = load i32, ptr %i.gq, align 8, !tbaa !91 ; 9 uses
  %i.hx = add i32 %i.hw, 3
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hy ; 2 uses
  %i.ia = shl nuw nsw i32 1, %.1151279.i          ; 2 uses
  %i.ib = lshr exact i32 %i.ia, 1
  %i.ic = or i32 %i.ib, %i.ia                     ; 7 uses
  %i.id = load i32, ptr %i.gr, align 4, !tbaa !92 ; 2 uses
  %.not.i.i = icmp ult i32 %i.id, 4
  br i1 %.not.i.i, label %._crit_edge137.i.i, label %.preheader126.lr.ph.i.i

.preheader126.lr.ph.i.i:                          ; preds = %bb.ap
  %.not150.i.i = icmp eq i32 %i.hw, 0
  %i.ie = sub nsw i32 0, %i.ic                    ; 4 uses
  %i.if = zext i32 %i.hw to i64
  %i.ig = shl i32 %i.hw, 1
  %i.ih = zext i32 %i.ig to i64
  %i.ii = mul i32 %i.hw, 3
  %i.ij = zext i32 %i.ii to i64                   ; 2 uses
  br i1 %.not150.i.i, label %opj_t1_dec_sigpass_raw.exit.thread.i, label %.preheader126.us.i.i

.preheader126.us.i.i:                             ; preds = %.preheader126.lr.ph.i.i, %._crit_edge.us.i.i
  %.0136.us.i.i = phi ptr [ %i.pq, %._crit_edge.us.i.i ], [ %i.hz, %.preheader126.lr.ph.i.i ]
  %.059135.us.i.i = phi ptr [ %i.pr, %._crit_edge.us.i.i ], [ %i.hu, %.preheader126.lr.ph.i.i ]
  %.062134.us.i.i = phi i32 [ %i.pp, %._crit_edge.us.i.i ], [ 0, %.preheader126.lr.ph.i.i ]
  br label %bb.aq

bb.aq:                                            ; preds = %opj_t1_dec_sigpass_step_raw.exit107.us.i.i, %.preheader126.us.i.i
  %.1132.us.i.i = phi ptr [ %.0136.us.i.i, %.preheader126.us.i.i ], [ %i.pn, %opj_t1_dec_sigpass_step_raw.exit107.us.i.i ] ; 27 uses
  %.160129.us.i.i = phi ptr [ %.059135.us.i.i, %.preheader126.us.i.i ], [ %i.po, %opj_t1_dec_sigpass_step_raw.exit107.us.i.i ] ; 5 uses
  %.064128.us.i.i = phi i32 [ 0, %.preheader126.us.i.i ], [ %i.pm, %opj_t1_dec_sigpass_step_raw.exit107.us.i.i ]
  %i.ik = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6 ; 4 uses
  %.not.us.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not.us.i.i, label %opj_t1_dec_sigpass_step_raw.exit107.us.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.il = and i32 %i.ik, 2097168
  %i.im = icmp ne i32 %i.il, 0
  %i.in = and i32 %i.ik, 495
  %.not.i.us.i.i = icmp eq i32 %i.in, 0
  %or.cond.us.i.i = or i1 %i.im, %.not.i.us.i.i
  br i1 %or.cond.us.i.i, label %opj_t1_dec_sigpass_step_raw.exit.us.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.io = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  %.pre.i.i.us.i.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.ip, label %bb.at, label %opj_mqc_raw_decode.exit.i.us.i.i

bb.at:                                            ; preds = %bb.as
  %i.iq = icmp eq i32 %.pre.i.i.us.i.i, 255
  %i.ir = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !56  ; 2 uses
  br i1 %i.iq, label %bb.au, label %.sink.split.i.i.us.i.i

bb.au:                                            ; preds = %bb.at
  %i.it = icmp ugt i8 %i.is, -113
  br i1 %i.it, label %opj_mqc_raw_decode.exit.i.us.i.i, label %.sink.split.i.i.us.i.i

.sink.split.i.i.us.i.i:                           ; preds = %bb.au, %bb.at
  %.ph17.i.i.us.i.i = phi i32 [ 7, %bb.au ], [ 8, %bb.at ]
  %i.iu = zext i8 %i.is to i32                    ; 2 uses
  store i32 %i.iu, ptr %.0254, align 8, !tbaa !94
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  store ptr %i.iv, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit.i.us.i.i

opj_mqc_raw_decode.exit.i.us.i.i:                 ; preds = %.sink.split.i.i.us.i.i, %bb.au, %bb.as
  %.pre.i20.i.us.i.i = phi i32 [ %.pre.i.i.us.i.i, %bb.as ], [ 255, %bb.au ], [ %i.iu, %.sink.split.i.i.us.i.i ] ; 3 uses
  %i.iw = phi i32 [ %i.io, %bb.as ], [ 8, %bb.au ], [ %.ph17.i.i.us.i.i, %.sink.split.i.i.us.i.i ]
  %i.ix = add i32 %i.iw, -1                       ; 4 uses
  store i32 %i.ix, ptr %i.gw, align 8, !tbaa !93
  %i.iy = shl nuw i32 1, %i.ix
  %i.iz = and i32 %i.iy, %.pre.i20.i.us.i.i
  %.not18.i.us.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not18.i.us.i.i, label %opj_t1_update_flags.exit.i.us.i.i, label %bb.av

bb.av:                                            ; preds = %opj_mqc_raw_decode.exit.i.us.i.i
  %i.ja = icmp eq i32 %i.ix, 0
  br i1 %i.ja, label %bb.aw, label %opj_mqc_raw_decode.exit23.i.us.i.i

bb.aw:                                            ; preds = %bb.av
  %i.jb = icmp eq i32 %.pre.i20.i.us.i.i, 255
  %i.jc = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !56  ; 2 uses
  br i1 %i.jb, label %bb.ax, label %.sink.split.i21.i.us.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.je = icmp ugt i8 %i.jd, -113
  br i1 %i.je, label %opj_mqc_raw_decode.exit23.i.us.i.i, label %.sink.split.i21.i.us.i.i

.sink.split.i21.i.us.i.i:                         ; preds = %bb.ax, %bb.aw
  %.ph17.i22.i.us.i.i = phi i32 [ 7, %bb.ax ], [ 8, %bb.aw ]
  %i.jf = zext i8 %i.jd to i32                    ; 2 uses
  store i32 %i.jf, ptr %.0254, align 8, !tbaa !94
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store ptr %i.jg, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit23.i.us.i.i

opj_mqc_raw_decode.exit23.i.us.i.i:               ; preds = %.sink.split.i21.i.us.i.i, %bb.ax, %bb.av
  %i.jh = phi i32 [ %.pre.i20.i.us.i.i, %bb.av ], [ 255, %bb.ax ], [ %i.jf, %.sink.split.i21.i.us.i.i ]
  %i.ji = phi i32 [ %i.ix, %bb.av ], [ 8, %bb.ax ], [ %.ph17.i22.i.us.i.i, %.sink.split.i21.i.us.i.i ]
  %i.jj = add i32 %i.ji, -1                       ; 2 uses
  store i32 %i.jj, ptr %i.gw, align 8, !tbaa !93
  %i.jk = lshr i32 %i.jh, %i.jj
  %i.jl = and i32 %i.jk, 1                        ; 3 uses
  %.not19.i.us.i.i = icmp eq i32 %i.jl, 0
  %i.jm = select i1 %.not19.i.us.i.i, i32 %i.ic, i32 %i.ie
  store i32 %i.jm, ptr %.160129.us.i.i, align 4, !tbaa !6
  %i.jn = load i32, ptr %i.gq, align 8, !tbaa !91
  %i.jo = getelementptr inbounds i8, ptr %.1132.us.i.i, i64 -4 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !6
  %i.jq = or i32 %i.jp, 32
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !6
  %i.jr = shl nuw nsw i32 %i.jl, 19
  %2 = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  %3 = or i32 %i.jr, %2
  %i.js = or i32 %3, 16
  store i32 %i.js, ptr %.1132.us.i.i, align 4, !tbaa !6
  %i.jt = getelementptr inbounds nuw i8, ptr %.1132.us.i.i, i64 4 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !6
  %i.jv = or i32 %i.ju, 8
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !6
  br i1 %or.cond.not.i.i.i.i, label %bb.ay, label %opj_t1_update_flags.exit.i.us.i.i

bb.ay:                                            ; preds = %opj_mqc_raw_decode.exit23.i.us.i.i
  %i.jw = add i32 %i.jn, 2
  %i.jx = zext i32 %i.jw to i64
  %i.jy = sub nsw i64 0, %i.jx
  %i.jz = getelementptr inbounds [4 x i8], ptr %.1132.us.i.i, i64 %i.jy ; 4 uses
  %i.ka = shl nuw i32 %i.jl, 31
  %4 = load i32, ptr %i.jz, align 4, !tbaa !6
  %5 = or i32 %i.ka, %4
  %i.kb = or i32 %5, 65536
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !6
  %i.kc = getelementptr inbounds i8, ptr %i.jz, i64 -4 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !6
  %i.ke = or i32 %i.kd, 131072
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !6
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 4 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !6
  %i.kh = or i32 %i.kg, 32768
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i.us.i.i

opj_t1_update_flags.exit.i.us.i.i:                ; preds = %bb.ay, %opj_mqc_raw_decode.exit23.i.us.i.i, %opj_mqc_raw_decode.exit.i.us.i.i
  %i.ki = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  %i.kj = or i32 %i.ki, 2097152                   ; 2 uses
  store i32 %i.kj, ptr %.1132.us.i.i, align 4, !tbaa !6
  br label %opj_t1_dec_sigpass_step_raw.exit.us.i.i

opj_t1_dec_sigpass_step_raw.exit.us.i.i:          ; preds = %opj_t1_update_flags.exit.i.us.i.i, %bb.ar
  %i.kk = phi i32 [ %i.kj, %opj_t1_update_flags.exit.i.us.i.i ], [ %i.ik, %bb.ar ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.160129.us.i.i, i64 %i.if
  %i.km = and i32 %i.kk, 16777344
  %i.kn = icmp ne i32 %i.km, 0
  %i.ko = and i32 %i.kk, 3960
  %.not.i69.us.i.i = icmp eq i32 %i.ko, 0
  %or.cond122.us.i.i = or i1 %i.kn, %.not.i69.us.i.i
  br i1 %or.cond122.us.i.i, label %opj_t1_dec_sigpass_step_raw.exit81.us.i.i, label %bb.az

bb.az:                                            ; preds = %opj_t1_dec_sigpass_step_raw.exit.us.i.i
  %i.kp = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.kq = icmp eq i32 %i.kp, 0
  %.pre.i.i70.us.i.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.kq, label %bb.ba, label %opj_mqc_raw_decode.exit.i71.us.i.i

bb.ba:                                            ; preds = %bb.az
  %i.kr = icmp eq i32 %.pre.i.i70.us.i.i, 255
  %i.ks = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !56  ; 2 uses
  br i1 %i.kr, label %bb.bb, label %.sink.split.i.i79.us.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ku = icmp ugt i8 %i.kt, -113
  br i1 %i.ku, label %opj_mqc_raw_decode.exit.i71.us.i.i, label %.sink.split.i.i79.us.i.i

.sink.split.i.i79.us.i.i:                         ; preds = %bb.bb, %bb.ba
  %.ph17.i.i80.us.i.i = phi i32 [ 7, %bb.bb ], [ 8, %bb.ba ]
  %i.kv = zext i8 %i.kt to i32                    ; 2 uses
  store i32 %i.kv, ptr %.0254, align 8, !tbaa !94
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store ptr %i.kw, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit.i71.us.i.i

opj_mqc_raw_decode.exit.i71.us.i.i:               ; preds = %.sink.split.i.i79.us.i.i, %bb.bb, %bb.az
  %.pre.i20.i72.us.i.i = phi i32 [ %.pre.i.i70.us.i.i, %bb.az ], [ 255, %bb.bb ], [ %i.kv, %.sink.split.i.i79.us.i.i ] ; 3 uses
  %i.kx = phi i32 [ %i.kp, %bb.az ], [ 8, %bb.bb ], [ %.ph17.i.i80.us.i.i, %.sink.split.i.i79.us.i.i ]
  %i.ky = add i32 %i.kx, -1                       ; 4 uses
  store i32 %i.ky, ptr %i.gw, align 8, !tbaa !93
  %i.kz = shl nuw i32 1, %i.ky
  %i.la = and i32 %i.kz, %.pre.i20.i72.us.i.i
  %.not18.i73.us.i.i = icmp eq i32 %i.la, 0
  br i1 %.not18.i73.us.i.i, label %opj_mqc_raw_decode.exit.i71.us.opj_t1_update_flags.exit.i76.us_crit_edge.i.i, label %bb.bc

opj_mqc_raw_decode.exit.i71.us.opj_t1_update_flags.exit.i76.us_crit_edge.i.i: ; preds = %opj_mqc_raw_decode.exit.i71.us.i.i
  %.pre.i.i = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i76.us.i.i

bb.bc:                                            ; preds = %opj_mqc_raw_decode.exit.i71.us.i.i
  %i.lb = icmp eq i32 %i.ky, 0
  br i1 %i.lb, label %bb.bd, label %opj_mqc_raw_decode.exit23.i74.us.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.lc = icmp eq i32 %.pre.i20.i72.us.i.i, 255
  %i.ld = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !56  ; 2 uses
  br i1 %i.lc, label %bb.be, label %.sink.split.i21.i77.us.i.i

bb.be:                                            ; preds = %bb.bd
  %i.lf = icmp ugt i8 %i.le, -113
  br i1 %i.lf, label %opj_mqc_raw_decode.exit23.i74.us.i.i, label %.sink.split.i21.i77.us.i.i

.sink.split.i21.i77.us.i.i:                       ; preds = %bb.be, %bb.bd
  %.ph17.i22.i78.us.i.i = phi i32 [ 7, %bb.be ], [ 8, %bb.bd ]
  %i.lg = zext i8 %i.le to i32                    ; 2 uses
  store i32 %i.lg, ptr %.0254, align 8, !tbaa !94
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  store ptr %i.lh, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit23.i74.us.i.i

opj_mqc_raw_decode.exit23.i74.us.i.i:             ; preds = %.sink.split.i21.i77.us.i.i, %bb.be, %bb.bc
  %i.li = phi i32 [ %.pre.i20.i72.us.i.i, %bb.bc ], [ 255, %bb.be ], [ %i.lg, %.sink.split.i21.i77.us.i.i ]
  %i.lj = phi i32 [ %i.ky, %bb.bc ], [ 8, %bb.be ], [ %.ph17.i22.i78.us.i.i, %.sink.split.i21.i77.us.i.i ]
  %i.lk = add i32 %i.lj, -1                       ; 2 uses
  store i32 %i.lk, ptr %i.gw, align 8, !tbaa !93
  %i.ll = lshr i32 %i.li, %i.lk
  %i.lm = and i32 %i.ll, 1                        ; 2 uses
  %.not19.i75.us.i.i = icmp eq i32 %i.lm, 0
  %i.ln = select i1 %.not19.i75.us.i.i, i32 %i.ic, i32 %i.ie
  store i32 %i.ln, ptr %i.kl, align 4, !tbaa !6
  %i.lo = getelementptr inbounds i8, ptr %.1132.us.i.i, i64 -4 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !6
  %i.lq = or i32 %i.lp, 256
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !6
  %i.lr = shl nuw nsw i32 %i.lm, 22
  %6 = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  %7 = or i32 %i.lr, %6
  %i.ls = or i32 %7, 128
  %i.lt = getelementptr inbounds nuw i8, ptr %.1132.us.i.i, i64 4 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !6
  %i.lv = or i32 %i.lu, 64
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i76.us.i.i

opj_t1_update_flags.exit.i76.us.i.i:              ; preds = %opj_mqc_raw_decode.exit23.i74.us.i.i, %opj_mqc_raw_decode.exit.i71.us.opj_t1_update_flags.exit.i76.us_crit_edge.i.i
  %i.lw = phi i32 [ %.pre.i.i, %opj_mqc_raw_decode.exit.i71.us.opj_t1_update_flags.exit.i76.us_crit_edge.i.i ], [ %i.ls, %opj_mqc_raw_decode.exit23.i74.us.i.i ]
  %i.lx = or i32 %i.lw, 16777216                  ; 2 uses
  store i32 %i.lx, ptr %.1132.us.i.i, align 4, !tbaa !6
  br label %opj_t1_dec_sigpass_step_raw.exit81.us.i.i

opj_t1_dec_sigpass_step_raw.exit81.us.i.i:        ; preds = %opj_t1_update_flags.exit.i76.us.i.i, %opj_t1_dec_sigpass_step_raw.exit.us.i.i
  %i.ly = phi i32 [ %i.lx, %opj_t1_update_flags.exit.i76.us.i.i ], [ %i.kk, %opj_t1_dec_sigpass_step_raw.exit.us.i.i ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.160129.us.i.i, i64 %i.ih
  %i.ma = and i32 %i.ly, 134218752
  %i.mb = icmp ne i32 %i.ma, 0
  %i.mc = and i32 %i.ly, 31680
  %.not.i82.us.i.i = icmp eq i32 %i.mc, 0
  %or.cond123.us.i.i = or i1 %i.mb, %.not.i82.us.i.i
  br i1 %or.cond123.us.i.i, label %opj_t1_dec_sigpass_step_raw.exit94.us.i.i, label %bb.bf

bb.bf:                                            ; preds = %opj_t1_dec_sigpass_step_raw.exit81.us.i.i
  %i.md = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.me = icmp eq i32 %i.md, 0
  %.pre.i.i83.us.i.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.me, label %bb.bg, label %opj_mqc_raw_decode.exit.i84.us.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.mf = icmp eq i32 %.pre.i.i83.us.i.i, 255
  %i.mg = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !56  ; 2 uses
  br i1 %i.mf, label %bb.bh, label %.sink.split.i.i92.us.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.mi = icmp ugt i8 %i.mh, -113
  br i1 %i.mi, label %opj_mqc_raw_decode.exit.i84.us.i.i, label %.sink.split.i.i92.us.i.i

.sink.split.i.i92.us.i.i:                         ; preds = %bb.bh, %bb.bg
  %.ph17.i.i93.us.i.i = phi i32 [ 7, %bb.bh ], [ 8, %bb.bg ]
  %i.mj = zext i8 %i.mh to i32                    ; 2 uses
  store i32 %i.mj, ptr %.0254, align 8, !tbaa !94
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  store ptr %i.mk, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit.i84.us.i.i

opj_mqc_raw_decode.exit.i84.us.i.i:               ; preds = %.sink.split.i.i92.us.i.i, %bb.bh, %bb.bf
  %.pre.i20.i85.us.i.i = phi i32 [ %.pre.i.i83.us.i.i, %bb.bf ], [ 255, %bb.bh ], [ %i.mj, %.sink.split.i.i92.us.i.i ] ; 3 uses
  %i.ml = phi i32 [ %i.md, %bb.bf ], [ 8, %bb.bh ], [ %.ph17.i.i93.us.i.i, %.sink.split.i.i92.us.i.i ]
  %i.mm = add i32 %i.ml, -1                       ; 4 uses
  store i32 %i.mm, ptr %i.gw, align 8, !tbaa !93
  %i.mn = shl nuw i32 1, %i.mm
  %i.mo = and i32 %i.mn, %.pre.i20.i85.us.i.i
  %.not18.i86.us.i.i = icmp eq i32 %i.mo, 0
  br i1 %.not18.i86.us.i.i, label %opj_mqc_raw_decode.exit.i84.us.opj_t1_update_flags.exit.i89.us_crit_edge.i.i, label %bb.bi

opj_mqc_raw_decode.exit.i84.us.opj_t1_update_flags.exit.i89.us_crit_edge.i.i: ; preds = %opj_mqc_raw_decode.exit.i84.us.i.i
  %.pre164.i.i = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i89.us.i.i

bb.bi:                                            ; preds = %opj_mqc_raw_decode.exit.i84.us.i.i
  %i.mp = icmp eq i32 %i.mm, 0
  br i1 %i.mp, label %bb.bj, label %opj_mqc_raw_decode.exit23.i87.us.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.mq = icmp eq i32 %.pre.i20.i85.us.i.i, 255
  %i.mr = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !56  ; 2 uses
  br i1 %i.mq, label %bb.bk, label %.sink.split.i21.i90.us.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.mt = icmp ugt i8 %i.ms, -113
  br i1 %i.mt, label %opj_mqc_raw_decode.exit23.i87.us.i.i, label %.sink.split.i21.i90.us.i.i

.sink.split.i21.i90.us.i.i:                       ; preds = %bb.bk, %bb.bj
  %.ph17.i22.i91.us.i.i = phi i32 [ 7, %bb.bk ], [ 8, %bb.bj ]
  %i.mu = zext i8 %i.ms to i32                    ; 2 uses
  store i32 %i.mu, ptr %.0254, align 8, !tbaa !94
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  store ptr %i.mv, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit23.i87.us.i.i

opj_mqc_raw_decode.exit23.i87.us.i.i:             ; preds = %.sink.split.i21.i90.us.i.i, %bb.bk, %bb.bi
  %i.mw = phi i32 [ %.pre.i20.i85.us.i.i, %bb.bi ], [ 255, %bb.bk ], [ %i.mu, %.sink.split.i21.i90.us.i.i ]
  %i.mx = phi i32 [ %i.mm, %bb.bi ], [ 8, %bb.bk ], [ %.ph17.i22.i91.us.i.i, %.sink.split.i21.i90.us.i.i ]
  %i.my = add i32 %i.mx, -1                       ; 2 uses
  store i32 %i.my, ptr %i.gw, align 8, !tbaa !93
  %i.mz = lshr i32 %i.mw, %i.my
  %i.na = and i32 %i.mz, 1                        ; 2 uses
  %.not19.i88.us.i.i = icmp eq i32 %i.na, 0
  %i.nb = select i1 %.not19.i88.us.i.i, i32 %i.ic, i32 %i.ie
  store i32 %i.nb, ptr %i.lz, align 4, !tbaa !6
  %i.nc = getelementptr inbounds i8, ptr %.1132.us.i.i, i64 -4 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !6
  %i.ne = or i32 %i.nd, 2048
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !6
  %i.nf = shl nuw nsw i32 %i.na, 25
  %8 = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  %9 = or i32 %i.nf, %8
  %i.ng = or i32 %9, 1024
  %i.nh = getelementptr inbounds nuw i8, ptr %.1132.us.i.i, i64 4 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !6
  %i.nj = or i32 %i.ni, 512
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i89.us.i.i

opj_t1_update_flags.exit.i89.us.i.i:              ; preds = %opj_mqc_raw_decode.exit23.i87.us.i.i, %opj_mqc_raw_decode.exit.i84.us.opj_t1_update_flags.exit.i89.us_crit_edge.i.i
  %i.nk = phi i32 [ %.pre164.i.i, %opj_mqc_raw_decode.exit.i84.us.opj_t1_update_flags.exit.i89.us_crit_edge.i.i ], [ %i.ng, %opj_mqc_raw_decode.exit23.i87.us.i.i ]
  %i.nl = or i32 %i.nk, 134217728                 ; 2 uses
  store i32 %i.nl, ptr %.1132.us.i.i, align 4, !tbaa !6
  br label %opj_t1_dec_sigpass_step_raw.exit94.us.i.i

opj_t1_dec_sigpass_step_raw.exit94.us.i.i:        ; preds = %opj_t1_update_flags.exit.i89.us.i.i, %opj_t1_dec_sigpass_step_raw.exit81.us.i.i
  %i.nm = phi i32 [ %i.nl, %opj_t1_update_flags.exit.i89.us.i.i ], [ %i.ly, %opj_t1_dec_sigpass_step_raw.exit81.us.i.i ] ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.160129.us.i.i, i64 %i.ij
  %i.no = and i32 %i.nm, 1073750016
  %i.np = icmp ne i32 %i.no, 0
  %i.nq = and i32 %i.nm, 253440
  %.not.i95.us.i.i = icmp eq i32 %i.nq, 0
  %or.cond124.us.i.i = or i1 %i.np, %.not.i95.us.i.i
  br i1 %or.cond124.us.i.i, label %opj_t1_dec_sigpass_step_raw.exit107.us.i.i, label %bb.bl

bb.bl:                                            ; preds = %opj_t1_dec_sigpass_step_raw.exit94.us.i.i
  %i.nr = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.ns = icmp eq i32 %i.nr, 0
  %.pre.i.i96.us.i.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.ns, label %bb.bm, label %opj_mqc_raw_decode.exit.i97.us.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.nt = icmp eq i32 %.pre.i.i96.us.i.i, 255
  %i.nu = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !56  ; 2 uses
  br i1 %i.nt, label %bb.bn, label %.sink.split.i.i105.us.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.nw = icmp ugt i8 %i.nv, -113
  br i1 %i.nw, label %opj_mqc_raw_decode.exit.i97.us.i.i, label %.sink.split.i.i105.us.i.i

.sink.split.i.i105.us.i.i:                        ; preds = %bb.bn, %bb.bm
  %.ph17.i.i106.us.i.i = phi i32 [ 7, %bb.bn ], [ 8, %bb.bm ]
  %i.nx = zext i8 %i.nv to i32                    ; 2 uses
  store i32 %i.nx, ptr %.0254, align 8, !tbaa !94
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  store ptr %i.ny, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit.i97.us.i.i

opj_mqc_raw_decode.exit.i97.us.i.i:               ; preds = %.sink.split.i.i105.us.i.i, %bb.bn, %bb.bl
  %.pre.i20.i98.us.i.i = phi i32 [ %.pre.i.i96.us.i.i, %bb.bl ], [ 255, %bb.bn ], [ %i.nx, %.sink.split.i.i105.us.i.i ] ; 3 uses
  %i.nz = phi i32 [ %i.nr, %bb.bl ], [ 8, %bb.bn ], [ %.ph17.i.i106.us.i.i, %.sink.split.i.i105.us.i.i ]
  %i.oa = add i32 %i.nz, -1                       ; 4 uses
  store i32 %i.oa, ptr %i.gw, align 8, !tbaa !93
  %i.ob = shl nuw i32 1, %i.oa
  %i.oc = and i32 %i.ob, %.pre.i20.i98.us.i.i
  %.not18.i99.us.i.i = icmp eq i32 %i.oc, 0
  br i1 %.not18.i99.us.i.i, label %opj_t1_update_flags.exit.i102.us.i.i, label %bb.bo

bb.bo:                                            ; preds = %opj_mqc_raw_decode.exit.i97.us.i.i
  %i.od = icmp eq i32 %i.oa, 0
  br i1 %i.od, label %bb.bp, label %opj_mqc_raw_decode.exit23.i100.us.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.oe = icmp eq i32 %.pre.i20.i98.us.i.i, 255
  %i.of = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !56  ; 2 uses
  br i1 %i.oe, label %bb.bq, label %.sink.split.i21.i103.us.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.oh = icmp ugt i8 %i.og, -113
  br i1 %i.oh, label %opj_mqc_raw_decode.exit23.i100.us.i.i, label %.sink.split.i21.i103.us.i.i

.sink.split.i21.i103.us.i.i:                      ; preds = %bb.bq, %bb.bp
  %.ph17.i22.i104.us.i.i = phi i32 [ 7, %bb.bq ], [ 8, %bb.bp ]
  %i.oi = zext i8 %i.og to i32                    ; 2 uses
  store i32 %i.oi, ptr %.0254, align 8, !tbaa !94
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  store ptr %i.oj, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit23.i100.us.i.i

opj_mqc_raw_decode.exit23.i100.us.i.i:            ; preds = %.sink.split.i21.i103.us.i.i, %bb.bq, %bb.bo
  %i.ok = phi i32 [ %.pre.i20.i98.us.i.i, %bb.bo ], [ 255, %bb.bq ], [ %i.oi, %.sink.split.i21.i103.us.i.i ]
  %i.ol = phi i32 [ %i.oa, %bb.bo ], [ 8, %bb.bq ], [ %.ph17.i22.i104.us.i.i, %.sink.split.i21.i103.us.i.i ]
  %i.om = add i32 %i.ol, -1                       ; 2 uses
  store i32 %i.om, ptr %i.gw, align 8, !tbaa !93
  %i.on = lshr i32 %i.ok, %i.om
  %i.oo = and i32 %i.on, 1                        ; 3 uses
  %.not19.i101.us.i.i = icmp eq i32 %i.oo, 0
  %i.op = select i1 %.not19.i101.us.i.i, i32 %i.ic, i32 %i.ie
  store i32 %i.op, ptr %i.nn, align 4, !tbaa !6
  %i.oq = load i32, ptr %i.gq, align 8, !tbaa !91
  %i.or = add i32 %i.oq, 2
  %i.os = getelementptr inbounds i8, ptr %.1132.us.i.i, i64 -4 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !6
  %i.ou = or i32 %i.ot, 16384
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !6
  %i.ov = shl nuw nsw i32 %i.oo, 28
  %10 = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  %11 = or i32 %i.ov, %10
  %i.ow = or i32 %11, 8192
  store i32 %i.ow, ptr %.1132.us.i.i, align 4, !tbaa !6
  %i.ox = getelementptr inbounds nuw i8, ptr %.1132.us.i.i, i64 4 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !6
  %i.oz = or i32 %i.oy, 4096
  store i32 %i.oz, ptr %i.ox, align 4, !tbaa !6
  %i.pa = zext i32 %i.or to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.1132.us.i.i, i64 %i.pa ; 4 uses
  %i.pc = shl nuw nsw i32 %i.oo, 18
  %12 = load i32, ptr %i.pb, align 4, !tbaa !6
  %13 = or i32 %i.pc, %12
  %i.pd = or i32 %13, 2
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !6
  %i.pe = getelementptr inbounds i8, ptr %i.pb, i64 -4 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !6
  %i.pg = or i32 %i.pf, 4
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !6
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 4 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !6
  %i.pj = or i32 %i.pi, 1
  store i32 %i.pj, ptr %i.ph, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i102.us.i.i

opj_t1_update_flags.exit.i102.us.i.i:             ; preds = %opj_mqc_raw_decode.exit23.i100.us.i.i, %opj_mqc_raw_decode.exit.i97.us.i.i
  %i.pk = load i32, ptr %.1132.us.i.i, align 4, !tbaa !6
  %i.pl = or i32 %i.pk, 1073741824
  store i32 %i.pl, ptr %.1132.us.i.i, align 4, !tbaa !6
  br label %opj_t1_dec_sigpass_step_raw.exit107.us.i.i

opj_t1_dec_sigpass_step_raw.exit107.us.i.i:       ; preds = %opj_t1_update_flags.exit.i102.us.i.i, %opj_t1_dec_sigpass_step_raw.exit94.us.i.i, %bb.aq
  %i.pm = add nuw i32 %.064128.us.i.i, 1          ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.1132.us.i.i, i64 4
  %i.po = getelementptr inbounds nuw i8, ptr %.160129.us.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.pm, %i.hw
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.aq, !llvm.loop !149

._crit_edge.us.i.i:                               ; preds = %opj_t1_dec_sigpass_step_raw.exit107.us.i.i
  %i.pp = add nuw i32 %.062134.us.i.i, 4          ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.1132.us.i.i, i64 12 ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.ij ; 2 uses
  %i.ps = load i32, ptr %i.gr, align 4, !tbaa !92 ; 2 uses
  %i.pt = and i32 %i.ps, -4
  %i.pu = icmp ult i32 %i.pp, %i.pt
  br i1 %i.pu, label %.preheader126.us.i.i, label %._crit_edge137.i.i, !llvm.loop !150

._crit_edge137.i.i:                               ; preds = %._crit_edge.us.i.i, %bb.ap
  %.062.lcssa.i.i = phi i32 [ 0, %bb.ap ], [ %i.pp, %._crit_edge.us.i.i ] ; 4 uses
  %.059.lcssa.i.i = phi ptr [ %i.hu, %bb.ap ], [ %i.pr, %._crit_edge.us.i.i ]
  %.0.lcssa.i.i = phi ptr [ %i.hz, %bb.ap ], [ %i.pq, %._crit_edge.us.i.i ]
  %.lcssa.i.i = phi i32 [ %i.id, %bb.ap ], [ %i.ps, %._crit_edge.us.i.i ] ; 3 uses
  %i.pv = icmp ult i32 %.062.lcssa.i.i, %.lcssa.i.i
  %i.pw = icmp ne i32 %i.hw, 0
  %or.cond.i.i = select i1 %i.pv, i1 %i.pw, i1 false
  br i1 %or.cond.i.i, label %.preheader.lr.ph.i.i, label %opj_t1_dec_sigpass_raw.exit.i

.preheader.lr.ph.i.i:                             ; preds = %._crit_edge137.i.i
  %i.px = sub nsw i32 0, %i.ic
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i
  %i.py = phi i32 [ %.lcssa.i.i, %.preheader.lr.ph.i.i ], [ %i.tf, %._crit_edge.i.i ] ; 2 uses
  %i.pz = phi i32 [ %.lcssa.i.i, %.preheader.lr.ph.i.i ], [ %i.tg, %._crit_edge.i.i ]
  %.2149.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader.lr.ph.i.i ], [ %i.ti, %._crit_edge.i.i ] ; 10 uses
  %.261148.i.i = phi ptr [ %.059.lcssa.i.i, %.preheader.lr.ph.i.i ], [ %i.tj, %._crit_edge.i.i ] ; 2 uses
  %.165147.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.th, %._crit_edge.i.i ]
  %.not151.i.i = icmp eq i32 %i.pz, %.062.lcssa.i.i
  br i1 %.not151.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.qa = getelementptr inbounds i8, ptr %.2149.i.i, i64 -4 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.2149.i.i, i64 4 ; 2 uses
  %.pre165.i.i = load i32, ptr %.2149.i.i, align 4, !tbaa !6
  br label %bb.br

bb.br:                                            ; preds = %opj_t1_dec_sigpass_step_raw.exit121.i.i, %.lr.ph.i.i
  %i.qc = phi i32 [ %i.py, %.lr.ph.i.i ], [ %i.ta, %opj_t1_dec_sigpass_step_raw.exit121.i.i ] ; 2 uses
  %i.qd = phi i32 [ %.pre165.i.i, %.lr.ph.i.i ], [ %i.tb, %opj_t1_dec_sigpass_step_raw.exit121.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %opj_t1_dec_sigpass_step_raw.exit121.i.i ] ; 3 uses
  %i.qe = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  %i.qf = mul i32 %i.hw, %i.qe
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.261148.i.i, i64 %i.qg
  %i.qi = mul i32 %i.qe, 3                        ; 6 uses
  %i.qj = shl i32 2097168, %i.qi
  %i.qk = and i32 %i.qj, %i.qd
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.bs, label %opj_t1_dec_sigpass_step_raw.exit121.i.i

bb.bs:                                            ; preds = %bb.br
  %i.qm = shl i32 495, %i.qi
  %i.qn = and i32 %i.qm, %i.qd
  %.not.i108.i.i = icmp eq i32 %i.qn, 0
  br i1 %.not.i108.i.i, label %opj_t1_dec_sigpass_step_raw.exit121.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qo = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.qp = icmp eq i32 %i.qo, 0
  %.pre.i.i109.i.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.qp, label %bb.bu, label %opj_mqc_raw_decode.exit.i110.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.qq = icmp eq i32 %.pre.i.i109.i.i, 255
  %i.qr = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !56  ; 2 uses
  br i1 %i.qq, label %bb.bv, label %.sink.split.i.i119.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.qt = icmp ugt i8 %i.qs, -113
  br i1 %i.qt, label %opj_mqc_raw_decode.exit.i110.i.i, label %.sink.split.i.i119.i.i

.sink.split.i.i119.i.i:                           ; preds = %bb.bv, %bb.bu
  %.ph17.i.i120.i.i = phi i32 [ 7, %bb.bv ], [ 8, %bb.bu ]
  %i.qu = zext i8 %i.qs to i32                    ; 2 uses
  store i32 %i.qu, ptr %.0254, align 8, !tbaa !94
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 1
  store ptr %i.qv, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit.i110.i.i

opj_mqc_raw_decode.exit.i110.i.i:                 ; preds = %.sink.split.i.i119.i.i, %bb.bv, %bb.bt
  %.pre.i20.i111.i.i = phi i32 [ %.pre.i.i109.i.i, %bb.bt ], [ 255, %bb.bv ], [ %i.qu, %.sink.split.i.i119.i.i ] ; 3 uses
  %i.qw = phi i32 [ %i.qo, %bb.bt ], [ 8, %bb.bv ], [ %.ph17.i.i120.i.i, %.sink.split.i.i119.i.i ]
  %i.qx = add i32 %i.qw, -1                       ; 4 uses
  store i32 %i.qx, ptr %i.gw, align 8, !tbaa !93
  %i.qy = shl nuw i32 1, %i.qx
  %i.qz = and i32 %i.qy, %.pre.i20.i111.i.i
  %.not18.i112.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not18.i112.i.i, label %opj_t1_update_flags.exit.i116.i.i, label %bb.bw

bb.bw:                                            ; preds = %opj_mqc_raw_decode.exit.i110.i.i
  %i.ra = icmp eq i32 %i.qx, 0
  br i1 %i.ra, label %bb.bx, label %opj_mqc_raw_decode.exit23.i113.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.rb = icmp eq i32 %.pre.i20.i111.i.i, 255
  %i.rc = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !56  ; 2 uses
  br i1 %i.rb, label %bb.by, label %.sink.split.i21.i117.i.i

bb.by:                                            ; preds = %bb.bx
  %i.re = icmp ugt i8 %i.rd, -113
  br i1 %i.re, label %opj_mqc_raw_decode.exit23.i113.i.i, label %.sink.split.i21.i117.i.i

.sink.split.i21.i117.i.i:                         ; preds = %bb.by, %bb.bx
  %.ph17.i22.i118.i.i = phi i32 [ 7, %bb.by ], [ 8, %bb.bx ]
  %i.rf = zext i8 %i.rd to i32                    ; 2 uses
  store i32 %i.rf, ptr %.0254, align 8, !tbaa !94
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 1
  store ptr %i.rg, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit23.i113.i.i

opj_mqc_raw_decode.exit23.i113.i.i:               ; preds = %.sink.split.i21.i117.i.i, %bb.by, %bb.bw
  %i.rh = phi i32 [ %.pre.i20.i111.i.i, %bb.bw ], [ 255, %bb.by ], [ %i.rf, %.sink.split.i21.i117.i.i ]
  %i.ri = phi i32 [ %i.qx, %bb.bw ], [ 8, %bb.by ], [ %.ph17.i22.i118.i.i, %.sink.split.i21.i117.i.i ]
  %i.rj = add i32 %i.ri, -1                       ; 2 uses
  store i32 %i.rj, ptr %i.gw, align 8, !tbaa !93
  %i.rk = lshr i32 %i.rh, %i.rj
  %i.rl = and i32 %i.rk, 1                        ; 4 uses
  %.not19.i114.i.i = icmp eq i32 %i.rl, 0
  %i.rm = select i1 %.not19.i114.i.i, i32 %i.ic, i32 %i.px
  store i32 %i.rm, ptr %i.qh, align 4, !tbaa !6
  %i.rn = load i32, ptr %i.gq, align 8, !tbaa !91
  %i.ro = add i32 %i.rn, 2                        ; 2 uses
  %i.rp = shl i32 32, %i.qi
  %i.rq = load i32, ptr %i.qa, align 4, !tbaa !6
  %i.rr = or i32 %i.rq, %i.rp
  store i32 %i.rr, ptr %i.qa, align 4, !tbaa !6
  %i.rs = shl nuw nsw i32 %i.rl, 19
  %i.rt = or disjoint i32 %i.rs, 16
  %i.ru = shl i32 %i.rt, %i.qi
  %i.rv = load i32, ptr %.2149.i.i, align 4, !tbaa !6
  %i.rw = or i32 %i.rv, %i.ru
  store i32 %i.rw, ptr %.2149.i.i, align 4, !tbaa !6
  %i.rx = shl i32 8, %i.qi
  %i.ry = load i32, ptr %i.qb, align 4, !tbaa !6
  %i.rz = or i32 %i.ry, %i.rx
  store i32 %i.rz, ptr %i.qb, align 4, !tbaa !6
  %i.sa = or i32 %i.ha, %i.qe
  %or.cond.not.i.i115.i.i = icmp eq i32 %i.sa, 0
  br i1 %or.cond.not.i.i115.i.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %opj_mqc_raw_decode.exit23.i113.i.i
  %i.sb = zext i32 %i.ro to i64
  %i.sc = sub nsw i64 0, %i.sb
  %i.sd = getelementptr inbounds [4 x i8], ptr %.2149.i.i, i64 %i.sc ; 4 uses
  %i.se = shl nuw i32 %i.rl, 31
  %14 = load i32, ptr %i.sd, align 4, !tbaa !6
  %15 = or i32 %i.se, %14
  %i.sf = or i32 %15, 65536
  store i32 %i.sf, ptr %i.sd, align 4, !tbaa !6
  %i.sg = getelementptr inbounds i8, ptr %i.sd, i64 -4 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !6
  %i.si = or i32 %i.sh, 131072
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !6
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sd, i64 4 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !6
  %i.sl = or i32 %i.sk, 32768
  store i32 %i.sl, ptr %i.sj, align 4, !tbaa !6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %opj_mqc_raw_decode.exit23.i113.i.i
  %i.sm = icmp eq i64 %indvars.iv.i.i, 3
  br i1 %i.sm, label %bb.cb, label %opj_t1_update_flags.exit.i116.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.sn = zext i32 %i.ro to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.2149.i.i, i64 %i.sn ; 4 uses
  %i.sp = shl nuw nsw i32 %i.rl, 18
  %16 = load i32, ptr %i.so, align 4, !tbaa !6
  %17 = or i32 %i.sp, %16
  %i.sq = or i32 %17, 2
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !6
  %i.sr = getelementptr inbounds i8, ptr %i.so, i64 -4 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !6
  %i.st = or i32 %i.ss, 4
  store i32 %i.st, ptr %i.sr, align 4, !tbaa !6
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 4 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !6
  %i.sw = or i32 %i.sv, 1
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i116.i.i

opj_t1_update_flags.exit.i116.i.i:                ; preds = %bb.cb, %bb.ca, %opj_mqc_raw_decode.exit.i110.i.i
  %i.sx = shl i32 2097152, %i.qi
  %i.sy = load i32, ptr %.2149.i.i, align 4, !tbaa !6
  %i.sz = or i32 %i.sy, %i.sx                     ; 2 uses
  store i32 %i.sz, ptr %.2149.i.i, align 4, !tbaa !6
  %.pre166.i.i = load i32, ptr %i.gr, align 4, !tbaa !92
  br label %opj_t1_dec_sigpass_step_raw.exit121.i.i

opj_t1_dec_sigpass_step_raw.exit121.i.i:          ; preds = %opj_t1_update_flags.exit.i116.i.i, %bb.bs, %bb.br
  %i.ta = phi i32 [ %i.qc, %bb.br ], [ %i.qc, %bb.bs ], [ %.pre166.i.i, %opj_t1_update_flags.exit.i116.i.i ] ; 4 uses
  %i.tb = phi i32 [ %i.qd, %bb.br ], [ %i.qd, %bb.bs ], [ %i.sz, %opj_t1_update_flags.exit.i116.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.tc = sub i32 %i.ta, %.062.lcssa.i.i
  %i.td = zext i32 %i.tc to i64
  %i.te = icmp samesign ult i64 %indvars.iv.next.i.i, %i.td
  br i1 %i.te, label %bb.br, label %._crit_edge.i.i, !llvm.loop !151

._crit_edge.i.i:                                  ; preds = %opj_t1_dec_sigpass_step_raw.exit121.i.i, %.preheader.i.i
  %i.tf = phi i32 [ %i.py, %.preheader.i.i ], [ %i.ta, %opj_t1_dec_sigpass_step_raw.exit121.i.i ]
  %i.tg = phi i32 [ %.062.lcssa.i.i, %.preheader.i.i ], [ %i.ta, %opj_t1_dec_sigpass_step_raw.exit121.i.i ]
  %i.th = add nuw i32 %.165147.i.i, 1             ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.2149.i.i, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %.261148.i.i, i64 4
  %exitcond163.not.i.i = icmp eq i32 %i.th, %i.hw
  br i1 %exitcond163.not.i.i, label %opj_t1_dec_sigpass_raw.exit.i, label %.preheader.i.i, !llvm.loop !152

bb.cc:                                            ; preds = %bb.ao
  tail call fastcc void @opj_t1_dec_sigpass_mqc(ptr noundef nonnull %.0254, i32 noundef %.1151279.i, i32 noundef %i.bu)
  br label %opj_t1_dec_sigpass_raw.exit.i

bb.cd:                                            ; preds = %bb.an
  br i1 %i.hj, label %bb.ce, label %bb.cw

bb.ce:                                            ; preds = %bb.cd
  %i.tk = load ptr, ptr %i.gs, align 8, !tbaa !28 ; 2 uses
  %i.tl = load ptr, ptr %i.gt, align 8, !tbaa !29
  %i.tm = load i32, ptr %i.gq, align 8, !tbaa !91 ; 9 uses
  %i.tn = add i32 %i.tm, 3
  %i.to = zext i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.to ; 2 uses
  %i.tq = shl nuw nsw i32 1, %.1151279.i
  %i.tr = lshr exact i32 %i.tq, 1                 ; 7 uses
  %i.ts = load i32, ptr %i.gr, align 4, !tbaa !92 ; 2 uses
  %.not.i181.i = icmp ult i32 %i.ts, 4
  br i1 %.not.i181.i, label %._crit_edge104.i.i, label %.preheader94.lr.ph.i.i

.preheader94.lr.ph.i.i:                           ; preds = %bb.ce
  %.not116.i.i = icmp eq i32 %i.tm, 0
  %i.tt = sub nsw i32 0, %i.tr                    ; 4 uses
  %i.tu = zext i32 %i.tm to i64
  %i.tv = shl i32 %i.tm, 1
  %i.tw = zext i32 %i.tv to i64
  %i.tx = mul i32 %i.tm, 3
  %i.ty = zext i32 %i.tx to i64                   ; 2 uses
  br i1 %.not116.i.i, label %opj_t1_dec_sigpass_raw.exit.thread.i, label %.preheader94.us.i.i

.preheader94.us.i.i:                              ; preds = %.preheader94.lr.ph.i.i, %._crit_edge.us.i184.i
  %.0103.us.i.i = phi ptr [ %i.xm, %._crit_edge.us.i184.i ], [ %i.tp, %.preheader94.lr.ph.i.i ]
  %.055102.us.i.i = phi ptr [ %i.xn, %._crit_edge.us.i184.i ], [ %i.tk, %.preheader94.lr.ph.i.i ]
  %.058101.us.i.i = phi i32 [ %i.xl, %._crit_edge.us.i184.i ], [ 0, %.preheader94.lr.ph.i.i ]
  br label %bb.cf

bb.cf:                                            ; preds = %opj_t1_dec_refpass_step_raw.exit85.us.i.i, %.preheader94.us.i.i
  %.199.us.i.i = phi ptr [ %.0103.us.i.i, %.preheader94.us.i.i ], [ %i.xj, %opj_t1_dec_refpass_step_raw.exit85.us.i.i ] ; 11 uses
  %.15697.us.i.i = phi ptr [ %.055102.us.i.i, %.preheader94.us.i.i ], [ %i.xk, %opj_t1_dec_refpass_step_raw.exit85.us.i.i ] ; 6 uses
  %.06096.us.i.i = phi i32 [ 0, %.preheader94.us.i.i ], [ %i.xi, %opj_t1_dec_refpass_step_raw.exit85.us.i.i ]
  %i.tz = load i32, ptr %.199.us.i.i, align 4, !tbaa !6 ; 3 uses
  %.not.us.i182.i = icmp eq i32 %i.tz, 0
  br i1 %.not.us.i182.i, label %opj_t1_dec_refpass_step_raw.exit85.us.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ua = and i32 %i.tz, 2097168
  %i.ub = icmp eq i32 %i.ua, 16
  br i1 %i.ub, label %bb.ch, label %opj_t1_dec_refpass_step_raw.exit.us.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.uc = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.ud = icmp eq i32 %i.uc, 0
  %.pre.i.i.us.i196.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.ud, label %bb.ci, label %opj_mqc_raw_decode.exit.i.us.i197.i

bb.ci:                                            ; preds = %bb.ch
  %i.ue = icmp eq i32 %.pre.i.i.us.i196.i, 255
  %i.uf = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !56  ; 2 uses
  br i1 %i.ue, label %bb.cj, label %.sink.split.i.i.us.i199.i

bb.cj:                                            ; preds = %bb.ci
  %i.uh = icmp ugt i8 %i.ug, -113
  br i1 %i.uh, label %opj_mqc_raw_decode.exit.i.us.i197.i, label %.sink.split.i.i.us.i199.i

.sink.split.i.i.us.i199.i:                        ; preds = %bb.cj, %bb.ci
  %.ph17.i.i.us.i200.i = phi i32 [ 7, %bb.cj ], [ 8, %bb.ci ]
  %i.ui = zext i8 %i.ug to i32                    ; 2 uses
  store i32 %i.ui, ptr %.0254, align 8, !tbaa !94
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  store ptr %i.uj, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit.i.us.i197.i

opj_mqc_raw_decode.exit.i.us.i197.i:              ; preds = %.sink.split.i.i.us.i199.i, %bb.cj, %bb.ch
  %i.uk = phi i32 [ %.pre.i.i.us.i196.i, %bb.ch ], [ 255, %bb.cj ], [ %i.ui, %.sink.split.i.i.us.i199.i ]
  %i.ul = phi i32 [ %i.uc, %bb.ch ], [ 8, %bb.cj ], [ %.ph17.i.i.us.i200.i, %.sink.split.i.i.us.i199.i ]
  %i.um = add i32 %i.ul, -1                       ; 2 uses
  store i32 %i.um, ptr %i.gw, align 8, !tbaa !93
  %i.un = lshr i32 %i.uk, %i.um
  %i.uo = and i32 %i.un, 1
  %i.up = load i32, ptr %.15697.us.i.i, align 4, !tbaa !6 ; 2 uses
  %.lobit.i.us.i.i = lshr i32 %i.up, 31
  %.not.i.us.i198.i = icmp eq i32 %i.uo, %.lobit.i.us.i.i
  %i.uq = select i1 %.not.i.us.i198.i, i32 %i.tt, i32 %i.tr
  %i.ur = add nsw i32 %i.uq, %i.up
  store i32 %i.ur, ptr %.15697.us.i.i, align 4, !tbaa !6
  %i.us = load i32, ptr %.199.us.i.i, align 4, !tbaa !6
  %i.ut = or i32 %i.us, 1048576                   ; 2 uses
  store i32 %i.ut, ptr %.199.us.i.i, align 4, !tbaa !6
  br label %opj_t1_dec_refpass_step_raw.exit.us.i.i

opj_t1_dec_refpass_step_raw.exit.us.i.i:          ; preds = %opj_mqc_raw_decode.exit.i.us.i197.i, %bb.cg
  %i.uu = phi i32 [ %i.ut, %opj_mqc_raw_decode.exit.i.us.i197.i ], [ %i.tz, %bb.cg ] ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.15697.us.i.i, i64 %i.tu ; 2 uses
  %i.uw = and i32 %i.uu, 16777344
  %i.ux = icmp eq i32 %i.uw, 128
  br i1 %i.ux, label %bb.ck, label %opj_t1_dec_refpass_step_raw.exit71.us.i.i

bb.ck:                                            ; preds = %opj_t1_dec_refpass_step_raw.exit.us.i.i
  %i.uy = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.uz = icmp eq i32 %i.uy, 0
  %.pre.i.i65.us.i.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.uz, label %bb.cl, label %opj_mqc_raw_decode.exit.i66.us.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.va = icmp eq i32 %.pre.i.i65.us.i.i, 255
  %i.vb = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !56  ; 2 uses
  br i1 %i.va, label %bb.cm, label %.sink.split.i.i69.us.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.vd = icmp ugt i8 %i.vc, -113
  br i1 %i.vd, label %opj_mqc_raw_decode.exit.i66.us.i.i, label %.sink.split.i.i69.us.i.i

.sink.split.i.i69.us.i.i:                         ; preds = %bb.cm, %bb.cl
  %.ph17.i.i70.us.i.i = phi i32 [ 7, %bb.cm ], [ 8, %bb.cl ]
  %i.ve = zext i8 %i.vc to i32                    ; 2 uses
  store i32 %i.ve, ptr %.0254, align 8, !tbaa !94
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  store ptr %i.vf, ptr %i.gy, align 8, !tbaa !95
  br label %opj_mqc_raw_decode.exit.i66.us.i.i

opj_mqc_raw_decode.exit.i66.us.i.i:               ; preds = %.sink.split.i.i69.us.i.i, %bb.cm, %bb.ck
  %i.vg = phi i32 [ %.pre.i.i65.us.i.i, %bb.ck ], [ 255, %bb.cm ], [ %i.ve, %.sink.split.i.i69.us.i.i ]
  %i.vh = phi i32 [ %i.uy, %bb.ck ], [ 8, %bb.cm ], [ %.ph17.i.i70.us.i.i, %.sink.split.i.i69.us.i.i ]
  %i.vi = add i32 %i.vh, -1                       ; 2 uses
  store i32 %i.vi, ptr %i.gw, align 8, !tbaa !93
  %i.vj = lshr i32 %i.vg, %i.vi
  %i.vk = and i32 %i.vj, 1
  %i.vl = load i32, ptr %i.uv, align 4, !tbaa !6  ; 2 uses
  %.lobit.i67.us.i.i = lshr i32 %i.vl, 31
  %.not.i68.us.i.i = icmp eq i32 %i.vk, %.lobit.i67.us.i.i
  %i.vm = select i1 %.not.i68.us.i.i, i32 %i.tt, i32 %i.tr
  %i.vn = add nsw i32 %i.vm, %i.vl
  store i32 %i.vn, ptr %i.uv, align 4, !tbaa !6
  %i.vo = load i32, ptr %.199.us.i.i, align 4, !tbaa !6
  %i.vp = or i32 %i.vo, 8388608                   ; 2 uses
  store i32 %i.vp, ptr %.199.us.i.i, align 4, !tbaa !6
  br label %opj_t1_dec_refpass_step_raw.exit71.us.i.i

opj_t1_dec_refpass_step_raw.exit71.us.i.i:        ; preds = %opj_mqc_raw_decode.exit.i66.us.i.i, %opj_t1_dec_refpass_step_raw.exit.us.i.i
  %i.vq = phi i32 [ %i.vp, %opj_mqc_raw_decode.exit.i66.us.i.i ], [ %i.uu, %opj_t1_dec_refpass_step_raw.exit.us.i.i ] ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.15697.us.i.i, i64 %i.tw ; 2 uses
  %i.vs = and i32 %i.vq, 134218752
  %i.vt = icmp eq i32 %i.vs, 1024
  br i1 %i.vt, label %bb.cn, label %opj_t1_dec_refpass_step_raw.exit78.us.i.i

bb.cn:                                            ; preds = %opj_t1_dec_refpass_step_raw.exit71.us.i.i
  %i.vu = load i32, ptr %i.gw, align 8, !tbaa !93 ; 2 uses
  %i.vv = icmp eq i32 %i.vu, 0
  %.pre.i.i72.us.i.i = load i32, ptr %.0254, align 8, !tbaa !94 ; 2 uses
  br i1 %i.vv, label %bb.co, label %opj_mqc_raw_decode.exit.i73.us.i.i

bb.co:                                            ; preds = %bb.cn
  %i.vw = icmp eq i32 %.pre.i.i72.us.i.i, 255
  %i.vx = load ptr, ptr %i.gy, align 8, !tbaa !95 ; 2 uses
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !56  ; 2 uses
  br i1 %i.vw, label %bb.cp, label %.sink.split.i.i76.us.i.i

bb.cp:                                            ; preds = %bb.co
  %i.vz = icmp ugt i8 %i.vy, -113
  br i1 %i.vz, label %opj_mqc_raw_decode.exit.i73.us.i.i, label %.sink.split.i.i76.us.i.i

end_hunk_0
begin_hunk_1_@opj_t1_cblk_encode_processor:bb.a
bb.an:                                            ; preds = %bb.ag
  %i.pv = icmp ult i32 %i.pf, %i.pe
  %i.pw = select i1 %i.pv, i32 %i.pe, i32 0
  %.5829.i.i = add i32 %i.pw, %.18251124.i.i
  %.4756.i.i = tail call i32 @llvm.umin.i32(i32 %i.pf, i32 %i.pe)
  %i.px = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !321
  store ptr %i.py, ptr %i.on, align 8, !tbaa !99
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %.6830.i.i = phi i32 [ %.5829.i.i, %bb.an ], [ %.7831.i.i, %bb.aq ]
  %.5757.i.i = phi i32 [ %.4756.i.i, %bb.an ], [ %i.pz, %bb.aq ] ; 2 uses
  %.5.i.i = phi i32 [ %.17481126.i.i, %bb.an ], [ %.6.i.i, %bb.aq ]
  %i.pz = shl i32 %.5757.i.i, 1                   ; 2 uses
  %i.qa = shl i32 %.6830.i.i, 1                   ; 2 uses
  %i.qb = add i32 %.5.i.i, -1                     ; 2 uses
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.qa, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.qd = load i32, ptr %.0169, align 8, !tbaa !94
  %i.qe = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.7831.i.i = phi i32 [ %i.qd, %bb.ap ], [ %i.qa, %bb.ao ] ; 2 uses
  %.6.i.i = phi i32 [ %i.qe, %bb.ap ], [ %i.qb, %bb.ao ] ; 2 uses
  %i.qf = and i32 %.5757.i.i, 16384
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %bb.ao, label %.loopexit1097.i.i, !llvm.loop !247

.loopexit1097.i.i:                                ; preds = %bb.aq, %bb.al, %bb.am, %bb.af, %bb.ae
  %.8832.i.i = phi i32 [ 0, %bb.af ], [ %i.os, %bb.ae ], [ %.4828.i.i, %bb.al ], [ %i.pu, %bb.am ], [ %.7831.i.i, %bb.aq ] ; 5 uses
  %.6758.i.i = phi i32 [ %.17531125.i.i, %bb.af ], [ %.17531125.i.i, %bb.ae ], [ %i.pm, %bb.al ], [ %i.pf, %bb.am ], [ %i.pz, %bb.aq ] ; 4 uses
  %.7.i.i = phi i32 [ %spec.store.select.i.i, %bb.af ], [ %i.oq, %bb.ae ], [ %.4751.i.i, %bb.al ], [ %.17481126.i.i, %bb.am ], [ %.6.i.i, %bb.aq ] ; 6 uses
  %.pre1226.i.i = load i32, ptr %.19241121.i.i, align 4, !tbaa !6 ; 4 uses
  br i1 %.not1023.i.i, label %bb.ar, label %opj_t1_update_flags.exit.i.i

bb.ar:                                            ; preds = %.loopexit1097.i.i
  %i.qh = getelementptr inbounds i8, ptr %.19241121.i.i, i64 -4 ; 3 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !6
  %i.qj = getelementptr inbounds nuw i8, ptr %.19241121.i.i, i64 4 ; 3 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !6
  %.pn.in.i.i.i = lshr i32 %.pre1226.i.i, 14
  %i.ql = and i32 %.pre1226.i.i, 170
  %i.qm = lshr i32 %i.qi, 19
  %i.qn = and i32 %i.qm, 1
  %i.qo = lshr i32 %i.qk, 17
  %i.qp = and i32 %i.qo, 4
  %.pn.i.i.i = and i32 %.pn.in.i.i.i, 16
  %i.qq = lshr i32 %.pre1226.i.i, 16
  %i.qr = and i32 %i.qq, 64
  %i.qs = or disjoint i32 %i.qr, %i.ql
  %i.qt = or disjoint i32 %i.qs, %.pn.i.i.i
  %.0.i.i.i = or disjoint i32 %i.qt, %i.qn
  %i.qu = or disjoint i32 %.0.i.i.i, %i.qp
  %i.qv = zext nneg i32 %i.qu to i64              ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !56
  %i.qy = load i32, ptr %.11127.i.i, align 4, !tbaa !6 ; 4 uses
  %i.qz = lshr i32 %i.qy, 31                      ; 3 uses
  %i.ra = and i32 %i.qy, 2147483647
  %i.rb = lshr i32 %i.ra, %.0138393.i
  %i.rc = and i32 %i.rb, 127
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.rd
  %i.rf = and i32 %i.qy, 127
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.rg
  %.0.in.i.i.i = select i1 %.not.i.i.i, ptr %i.rh, ptr %i.re
  %.0.i1050.i.i = load i16, ptr %.0.in.i.i.i, align 2, !tbaa !323
  %i.ri = sext i16 %.0.i1050.i.i to i32
  %i.rj = add nsw i32 %.2277.i, %i.ri             ; 2 uses
  %i.rk = zext i8 %i.qx to i64
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.rk ; 5 uses
  br i1 %i.mz, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.rm = icmp eq i32 %.7.i.i, -559038737
  %i.rn = add i32 %.7.i.i, -1
  %i.ro = select i1 %i.rm, i32 7, i32 %i.rn       ; 3 uses
  %i.rp = shl nuw i32 %i.qz, %i.ro
  %i.rq = add i32 %i.rp, %.8832.i.i               ; 2 uses
  %i.rr = icmp eq i32 %i.ro, 0
  br i1 %i.rr, label %bb.at, label %.loopexit1095.i.i

bb.at:                                            ; preds = %bb.as
  %i.rs = trunc i32 %i.rq to i8
  %i.rt = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !56
  %i.ru = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !56
  %i.rw = icmp eq i8 %i.rv, -1
  %spec.store.select1.i.i = select i1 %i.rw, i32 7, i32 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store ptr %i.rx, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1095.i.i

bb.au:                                            ; preds = %bb.ar
  %i.ry = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.qv
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !56
  %i.sa = zext i8 %i.rz to i32
  %i.sb = load ptr, ptr %i.rl, align 8, !tbaa !99 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !102
  %i.se = xor i32 %i.qz, %i.sa
  %i.sf = icmp eq i32 %i.sd, %i.se
  %i.sg = load i32, ptr %i.sb, align 8, !tbaa !101 ; 8 uses
  %i.sh = sub i32 %.6758.i.i, %i.sg               ; 6 uses
  br i1 %i.sf, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.si = and i32 %i.sh, 32768
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.sk = icmp ult i32 %i.sh, %i.sg
  %i.sl = select i1 %i.sk, i32 0, i32 %i.sg
  %.9833.i.i = add i32 %i.sl, %.8832.i.i
  %.7759.i.i = tail call i32 @llvm.umax.i32(i32 %i.sh, i32 %i.sg)
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !320
  store ptr %i.sn, ptr %i.rl, align 8, !tbaa !99
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.10834.i.i = phi i32 [ %.9833.i.i, %bb.aw ], [ %.11835.i.i, %bb.az ]
  %.8760.i.i = phi i32 [ %.7759.i.i, %bb.aw ], [ %i.so, %bb.az ] ; 2 uses
  %.9.i.i = phi i32 [ %.7.i.i, %bb.aw ], [ %.10.i.i, %bb.az ]
  %i.so = shl i32 %.8760.i.i, 1                   ; 2 uses
  %i.sp = shl i32 %.10834.i.i, 1                  ; 2 uses
  %i.sq = add i32 %.9.i.i, -1                     ; 2 uses
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.sp, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.ss = load i32, ptr %.0169, align 8, !tbaa !94
  %i.st = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.11835.i.i = phi i32 [ %i.ss, %bb.ay ], [ %i.sp, %bb.ax ] ; 2 uses
  %.10.i.i = phi i32 [ %i.st, %bb.ay ], [ %i.sq, %bb.ax ] ; 2 uses
  %i.su = and i32 %.8760.i.i, 16384
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.ax, label %.loopexit1095.i.i, !llvm.loop !248

bb.ba:                                            ; preds = %bb.av
  %i.sw = add i32 %i.sg, %.8832.i.i
  br label %.loopexit1095.i.i

bb.bb:                                            ; preds = %bb.au
  %i.sx = icmp ult i32 %i.sh, %i.sg
  %i.sy = select i1 %i.sx, i32 %i.sg, i32 0
  %.12836.i.i = add i32 %i.sy, %.8832.i.i
  %.9761.i.i = tail call i32 @llvm.umin.i32(i32 %i.sh, i32 %i.sg)
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !321
  store ptr %i.ta, ptr %i.rl, align 8, !tbaa !99
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %.13837.i.i = phi i32 [ %.12836.i.i, %bb.bb ], [ %.14838.i.i, %bb.be ]
  %.10762.i.i = phi i32 [ %.9761.i.i, %bb.bb ], [ %i.tb, %bb.be ] ; 2 uses
  %.11.i.i = phi i32 [ %.7.i.i, %bb.bb ], [ %.12.i.i, %bb.be ]
  %i.tb = shl i32 %.10762.i.i, 1                  ; 2 uses
  %i.tc = shl i32 %.13837.i.i, 1                  ; 2 uses
  %i.td = add i32 %.11.i.i, -1                    ; 2 uses
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.tc, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.tf = load i32, ptr %.0169, align 8, !tbaa !94
  %i.tg = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.14838.i.i = phi i32 [ %i.tf, %bb.bd ], [ %i.tc, %bb.bc ] ; 2 uses
  %.12.i.i = phi i32 [ %i.tg, %bb.bd ], [ %i.td, %bb.bc ] ; 2 uses
  %i.th = and i32 %.10762.i.i, 16384
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %bb.bc, label %.loopexit1095.i.i, !llvm.loop !249

.loopexit1095.i.i:                                ; preds = %bb.be, %bb.az, %bb.ba, %bb.at, %bb.as
  %.16840.i.i = phi i32 [ 0, %bb.at ], [ %i.rq, %bb.as ], [ %.11835.i.i, %bb.az ], [ %i.sw, %bb.ba ], [ %.14838.i.i, %bb.be ] ; 2 uses
  %.12764.i.i = phi i32 [ %.6758.i.i, %bb.at ], [ %.6758.i.i, %bb.as ], [ %i.so, %bb.az ], [ %i.sh, %bb.ba ], [ %i.tb, %bb.be ] ; 2 uses
  %.14.i.i = phi i32 [ %spec.store.select1.i.i, %bb.at ], [ %i.ro, %bb.as ], [ %.10.i.i, %bb.az ], [ %.7.i.i, %bb.ba ], [ %.12.i.i, %bb.be ] ; 2 uses
  %i.tj = load i32, ptr %i.bo, align 8, !tbaa !91
  %i.tk = load i32, ptr %i.qh, align 4, !tbaa !6
  %i.tl = or i32 %i.tk, 32
  store i32 %i.tl, ptr %i.qh, align 4, !tbaa !6
  %i.tm = shl nuw nsw i32 %i.qz, 19
  %2 = load i32, ptr %.19241121.i.i, align 4, !tbaa !6
  %3 = or i32 %i.tm, %2
  %i.tn = or i32 %3, 16                           ; 2 uses
  store i32 %i.tn, ptr %.19241121.i.i, align 4, !tbaa !6
  %i.to = load i32, ptr %i.qj, align 4, !tbaa !6
  %i.tp = or i32 %i.to, 8
  store i32 %i.tp, ptr %i.qj, align 4, !tbaa !6
  br i1 %i.mb, label %opj_t1_update_flags.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %.loopexit1095.i.i
  %i.tq = add i32 %i.tj, 2
  %i.tr = zext i32 %i.tq to i64
  %i.ts = sub nsw i64 0, %i.tr
  %i.tt = getelementptr inbounds [4 x i8], ptr %.19241121.i.i, i64 %i.ts ; 4 uses
  %i.tu = and i32 %i.qy, -2147483648
  %i.tv = load i32, ptr %i.tt, align 4, !tbaa !6
  %i.tw = or i32 %i.tu, %i.tv
  %i.tx = or i32 %i.tw, 65536
  store i32 %i.tx, ptr %i.tt, align 4, !tbaa !6
  %i.ty = getelementptr inbounds i8, ptr %i.tt, i64 -4 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !6
  %i.ua = or i32 %i.tz, 131072
  store i32 %i.ua, ptr %i.ty, align 4, !tbaa !6
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tt, i64 4 ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !6
  %i.ud = or i32 %i.uc, 32768
  store i32 %i.ud, ptr %i.ub, align 4, !tbaa !6
  %.pre.i.i = load i32, ptr %.19241121.i.i, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i.i

opj_t1_update_flags.exit.i.i:                     ; preds = %bb.bf, %.loopexit1095.i.i, %.loopexit1097.i.i
  %.3.i = phi i32 [ %i.rj, %bb.bf ], [ %i.rj, %.loopexit1095.i.i ], [ %.2277.i, %.loopexit1097.i.i ]
  %i.ue = phi i32 [ %.pre.i.i, %bb.bf ], [ %i.tn, %.loopexit1095.i.i ], [ %.pre1226.i.i, %.loopexit1097.i.i ]
  %.2908.i.i = phi ptr [ %i.rl, %bb.bf ], [ %i.rl, %.loopexit1095.i.i ], [ %i.on, %.loopexit1097.i.i ]
  %.17841.i.i = phi i32 [ %.16840.i.i, %bb.bf ], [ %.16840.i.i, %.loopexit1095.i.i ], [ %.8832.i.i, %.loopexit1097.i.i ]
  %.13765.i.i = phi i32 [ %.12764.i.i, %bb.bf ], [ %.12764.i.i, %.loopexit1095.i.i ], [ %.6758.i.i, %.loopexit1097.i.i ]
  %.15.i.i = phi i32 [ %.14.i.i, %bb.bf ], [ %.14.i.i, %.loopexit1095.i.i ], [ %.7.i.i, %.loopexit1097.i.i ]
  %i.uf = or i32 %i.ue, 2097152                   ; 2 uses
  store i32 %i.uf, ptr %.19241121.i.i, align 4, !tbaa !6
  br label %bb.bg

bb.bg:                                            ; preds = %opj_t1_update_flags.exit.i.i, %bb.ac
  %.4.i = phi i32 [ %.2277.i, %bb.ac ], [ %.3.i, %opj_t1_update_flags.exit.i.i ] ; 3 uses
  %i.ug = phi i32 [ %i.ob, %bb.ac ], [ %i.uf, %opj_t1_update_flags.exit.i.i ] ; 4 uses
  %.3909.i.i = phi ptr [ %.19071123.i.i, %bb.ac ], [ %.2908.i.i, %opj_t1_update_flags.exit.i.i ]
  %.18842.i.i = phi i32 [ %.18251124.i.i, %bb.ac ], [ %.17841.i.i, %opj_t1_update_flags.exit.i.i ] ; 5 uses
  %.14766.i.i = phi i32 [ %.17531125.i.i, %bb.ac ], [ %.13765.i.i, %opj_t1_update_flags.exit.i.i ] ; 4 uses
  %.16.i.i = phi i32 [ %.17481126.i.i, %bb.ac ], [ %.15.i.i, %opj_t1_update_flags.exit.i.i ] ; 6 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.11127.i.i, i64 4 ; 2 uses
  %i.ui = and i32 %i.ug, 16777344
  %i.uj = icmp ne i32 %i.ui, 0
  %i.uk = and i32 %i.ug, 3960
  %.not1025.i.i = icmp eq i32 %i.uk, 0
  %or.cond1035.i.i = or i1 %i.uj, %.not1025.i.i
  br i1 %or.cond1035.i.i, label %bb.ck, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ul = lshr i32 %i.ug, 3
  %.val1048.i.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.um = and i32 %i.ul, 495
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %.val1048.i.i, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !56
  %i.uq = load i32, ptr %i.uh, align 4, !tbaa !6
  %i.ur = and i32 %i.uq, %i.ns
  %.not1026.i.i = icmp ne i32 %i.ur, 0            ; 2 uses
  %i.us = zext i1 %.not1026.i.i to i32            ; 2 uses
  %i.ut = zext i8 %i.up to i64
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ut ; 4 uses
  br i1 %i.mz, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.uv = icmp eq i32 %.16.i.i, -559038737
  %i.uw = add i32 %.16.i.i, -1
  %i.ux = select i1 %i.uv, i32 7, i32 %i.uw       ; 3 uses
  %i.uy = shl nuw i32 %i.us, %i.ux
  %i.uz = add i32 %i.uy, %.18842.i.i              ; 2 uses
  %i.va = icmp eq i32 %i.ux, 0
  br i1 %i.va, label %bb.bj, label %.loopexit1093.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.vb = trunc i32 %i.uz to i8
  %i.vc = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.vb, ptr %i.vc, align 1, !tbaa !56
  %i.vd = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !56
  %i.vf = icmp eq i8 %i.ve, -1
  %spec.store.select2.i.i = select i1 %i.vf, i32 7, i32 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 1
  store ptr %i.vg, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1093.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.vh = load ptr, ptr %i.uu, align 8, !tbaa !99 ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !102
  %i.vk = icmp eq i32 %i.vj, %i.us
  %i.vl = load i32, ptr %i.vh, align 8, !tbaa !101 ; 8 uses
  %i.vm = sub i32 %.14766.i.i, %i.vl              ; 6 uses
  br i1 %i.vk, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.vn = and i32 %i.vm, 32768
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.vp = icmp ult i32 %i.vm, %i.vl
  %i.vq = select i1 %i.vp, i32 0, i32 %i.vl
  %.19843.i.i = add i32 %i.vq, %.18842.i.i
  %.15767.i.i = tail call i32 @llvm.umax.i32(i32 %i.vm, i32 %i.vl)
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !320
  store ptr %i.vs, ptr %i.uu, align 8, !tbaa !99
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %bb.bm
  %.20844.i.i = phi i32 [ %.19843.i.i, %bb.bm ], [ %.21845.i.i, %bb.bp ]
  %.16768.i.i = phi i32 [ %.15767.i.i, %bb.bm ], [ %i.vt, %bb.bp ] ; 2 uses
  %.18.i.i = phi i32 [ %.16.i.i, %bb.bm ], [ %.19.i.i, %bb.bp ]
  %i.vt = shl i32 %.16768.i.i, 1                  ; 2 uses
  %i.vu = shl i32 %.20844.i.i, 1                  ; 2 uses
  %i.vv = add i32 %.18.i.i, -1                    ; 2 uses
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 %i.vu, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.vx = load i32, ptr %.0169, align 8, !tbaa !94
  %i.vy = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.21845.i.i = phi i32 [ %i.vx, %bb.bo ], [ %i.vu, %bb.bn ] ; 2 uses
  %.19.i.i = phi i32 [ %i.vy, %bb.bo ], [ %i.vv, %bb.bn ] ; 2 uses
  %i.vz = and i32 %.16768.i.i, 16384
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %bb.bn, label %.loopexit1093.i.i, !llvm.loop !250

bb.bq:                                            ; preds = %bb.bl
  %i.wb = add i32 %i.vl, %.18842.i.i
  br label %.loopexit1093.i.i

bb.br:                                            ; preds = %bb.bk
  %i.wc = icmp ult i32 %i.vm, %i.vl
  %i.wd = select i1 %i.wc, i32 %i.vl, i32 0
  %.22846.i.i = add i32 %i.wd, %.18842.i.i
  %.17769.i.i = tail call i32 @llvm.umin.i32(i32 %i.vm, i32 %i.vl)
  %i.we = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !321
  store ptr %i.wf, ptr %i.uu, align 8, !tbaa !99
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.23847.i.i = phi i32 [ %.22846.i.i, %bb.br ], [ %.24848.i.i, %bb.bu ]
  %.18770.i.i = phi i32 [ %.17769.i.i, %bb.br ], [ %i.wg, %bb.bu ] ; 2 uses
  %.20.i.i = phi i32 [ %.16.i.i, %bb.br ], [ %.21.i.i, %bb.bu ]
  %i.wg = shl i32 %.18770.i.i, 1                  ; 2 uses
  %i.wh = shl i32 %.23847.i.i, 1                  ; 2 uses
  %i.wi = add i32 %.20.i.i, -1                    ; 2 uses
  %i.wj = icmp eq i32 %i.wi, 0
  br i1 %i.wj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 %i.wh, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.wk = load i32, ptr %.0169, align 8, !tbaa !94
  %i.wl = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.24848.i.i = phi i32 [ %i.wk, %bb.bt ], [ %i.wh, %bb.bs ] ; 2 uses
  %.21.i.i = phi i32 [ %i.wl, %bb.bt ], [ %i.wi, %bb.bs ] ; 2 uses
  %i.wm = and i32 %.18770.i.i, 16384
  %i.wn = icmp eq i32 %i.wm, 0
  br i1 %i.wn, label %bb.bs, label %.loopexit1093.i.i, !llvm.loop !251

.loopexit1093.i.i:                                ; preds = %bb.bu, %bb.bp, %bb.bq, %bb.bj, %bb.bi
  %.25849.i.i = phi i32 [ 0, %bb.bj ], [ %i.uz, %bb.bi ], [ %.21845.i.i, %bb.bp ], [ %i.wb, %bb.bq ], [ %.24848.i.i, %bb.bu ] ; 5 uses
  %.19771.i.i = phi i32 [ %.14766.i.i, %bb.bj ], [ %.14766.i.i, %bb.bi ], [ %i.vt, %bb.bp ], [ %i.vm, %bb.bq ], [ %i.wg, %bb.bu ] ; 4 uses
  %.22.i.i = phi i32 [ %spec.store.select2.i.i, %bb.bj ], [ %i.ux, %bb.bi ], [ %.19.i.i, %bb.bp ], [ %.16.i.i, %bb.bq ], [ %.21.i.i, %bb.bu ] ; 6 uses
  %.pre1227.i.i = load i32, ptr %.19241121.i.i, align 4, !tbaa !6 ; 4 uses
  br i1 %.not1026.i.i, label %bb.bv, label %bb.cj

bb.bv:                                            ; preds = %.loopexit1093.i.i
  %i.wo = getelementptr inbounds i8, ptr %.19241121.i.i, i64 -4 ; 3 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !6
  %i.wq = getelementptr inbounds nuw i8, ptr %.19241121.i.i, i64 4 ; 3 uses
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !6
  %.pn.in.i1051.i.i = lshr i32 %.pre1227.i.i, 15
  %i.ws = lshr i32 %.pre1227.i.i, 3
  %i.wt = and i32 %i.ws, 170
  %i.wu = lshr i32 %i.wp, 22
  %i.wv = and i32 %i.wu, 1
  %i.ww = lshr i32 %i.wr, 20
  %i.wx = and i32 %i.ww, 4
  %.pn.i1052.i.i = and i32 %.pn.in.i1051.i.i, 16
  %i.wy = lshr i32 %.pre1227.i.i, 19
  %i.wz = and i32 %i.wy, 64
  %i.xa = or disjoint i32 %i.wz, %i.wt
  %i.xb = or disjoint i32 %i.xa, %.pn.i1052.i.i
  %.0.i1053.i.i = or disjoint i32 %i.xb, %i.wv
  %i.xc = or disjoint i32 %.0.i1053.i.i, %i.wx
  %i.xd = zext nneg i32 %i.xc to i64              ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !56
  %i.xg = load i32, ptr %i.uh, align 4, !tbaa !6  ; 3 uses
  %i.xh = lshr i32 %i.xg, 31                      ; 3 uses
  %i.xi = and i32 %i.xg, 2147483647
  %i.xj = lshr i32 %i.xi, %.0138393.i
  %i.xk = and i32 %i.xj, 127
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.xl
  %i.xn = and i32 %i.xg, 127
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.xo
  %.0.in.i1055.i.i = select i1 %.not.i.i.i, ptr %i.xp, ptr %i.xm
  %.0.i1056.i.i = load i16, ptr %.0.in.i1055.i.i, align 2, !tbaa !323
  %i.xq = sext i16 %.0.i1056.i.i to i32
  %i.xr = add nsw i32 %.4.i, %i.xq
  %i.xs = zext i8 %i.xf to i64
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.xs ; 4 uses
  br i1 %i.mz, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.xu = icmp eq i32 %.22.i.i, -559038737
  %i.xv = add i32 %.22.i.i, -1
  %i.xw = select i1 %i.xu, i32 7, i32 %i.xv       ; 3 uses
  %i.xx = shl nuw i32 %i.xh, %i.xw
  %i.xy = add i32 %i.xx, %.25849.i.i              ; 2 uses
  %i.xz = icmp eq i32 %i.xw, 0
  br i1 %i.xz, label %bb.bx, label %.loopexit1091.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ya = trunc i32 %i.xy to i8
  %i.yb = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.ya, ptr %i.yb, align 1, !tbaa !56
  %i.yc = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !56
  %i.ye = icmp eq i8 %i.yd, -1
  %spec.store.select3.i.i = select i1 %i.ye, i32 7, i32 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  store ptr %i.yf, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1091.i.i

bb.by:                                            ; preds = %bb.bv
  %i.yg = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.xd
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !56
  %i.yi = zext i8 %i.yh to i32
  %i.yj = load ptr, ptr %i.xt, align 8, !tbaa !99 ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !102
  %i.ym = xor i32 %i.xh, %i.yi
  %i.yn = icmp eq i32 %i.yl, %i.ym
  %i.yo = load i32, ptr %i.yj, align 8, !tbaa !101 ; 8 uses
  %i.yp = sub i32 %.19771.i.i, %i.yo              ; 6 uses
  br i1 %i.yn, label %bb.bz, label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %i.yq = and i32 %i.yp, 32768
  %i.yr = icmp eq i32 %i.yq, 0
  br i1 %i.yr, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.ys = icmp ult i32 %i.yp, %i.yo
  %i.yt = select i1 %i.ys, i32 0, i32 %i.yo
  %.26850.i.i = add i32 %i.yt, %.25849.i.i
  %.20772.i.i = tail call i32 @llvm.umax.i32(i32 %i.yp, i32 %i.yo)
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !320
  store ptr %i.yv, ptr %i.xt, align 8, !tbaa !99
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %bb.ca
  %.27851.i.i = phi i32 [ %.26850.i.i, %bb.ca ], [ %.28852.i.i, %bb.cd ]
  %.21773.i.i = phi i32 [ %.20772.i.i, %bb.ca ], [ %i.yw, %bb.cd ] ; 2 uses
  %.24.i.i = phi i32 [ %.22.i.i, %bb.ca ], [ %.25.i.i, %bb.cd ]
  %i.yw = shl i32 %.21773.i.i, 1                  ; 2 uses
  %i.yx = shl i32 %.27851.i.i, 1                  ; 2 uses
  %i.yy = add i32 %.24.i.i, -1                    ; 2 uses
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 %i.yx, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.za = load i32, ptr %.0169, align 8, !tbaa !94
  %i.zb = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.28852.i.i = phi i32 [ %i.za, %bb.cc ], [ %i.yx, %bb.cb ] ; 2 uses
  %.25.i.i = phi i32 [ %i.zb, %bb.cc ], [ %i.yy, %bb.cb ] ; 2 uses
  %i.zc = and i32 %.21773.i.i, 16384
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %bb.cb, label %.loopexit1091.i.i, !llvm.loop !252

bb.ce:                                            ; preds = %bb.bz
  %i.ze = add i32 %i.yo, %.25849.i.i
  br label %.loopexit1091.i.i

bb.cf:                                            ; preds = %bb.by
  %i.zf = icmp ult i32 %i.yp, %i.yo
  %i.zg = select i1 %i.zf, i32 %i.yo, i32 0
  %.29853.i.i = add i32 %i.zg, %.25849.i.i
  %.22774.i.i = tail call i32 @llvm.umin.i32(i32 %i.yp, i32 %i.yo)
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !321
  store ptr %i.zi, ptr %i.xt, align 8, !tbaa !99
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.30854.i.i = phi i32 [ %.29853.i.i, %bb.cf ], [ %.31855.i.i, %bb.ci ]
  %.23775.i.i = phi i32 [ %.22774.i.i, %bb.cf ], [ %i.zj, %bb.ci ] ; 2 uses
  %.26.i.i = phi i32 [ %.22.i.i, %bb.cf ], [ %.27.i.i, %bb.ci ]
  %i.zj = shl i32 %.23775.i.i, 1                  ; 2 uses
  %i.zk = shl i32 %.30854.i.i, 1                  ; 2 uses
  %i.zl = add i32 %.26.i.i, -1                    ; 2 uses
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 %i.zk, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.zn = load i32, ptr %.0169, align 8, !tbaa !94
  %i.zo = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.31855.i.i = phi i32 [ %i.zn, %bb.ch ], [ %i.zk, %bb.cg ] ; 2 uses
  %.27.i.i = phi i32 [ %i.zo, %bb.ch ], [ %i.zl, %bb.cg ] ; 2 uses
  %i.zp = and i32 %.23775.i.i, 16384
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %bb.cg, label %.loopexit1091.i.i, !llvm.loop !253

.loopexit1091.i.i:                                ; preds = %bb.ci, %bb.cd, %bb.ce, %bb.bx, %bb.bw
  %.33857.i.i = phi i32 [ 0, %bb.bx ], [ %i.xy, %bb.bw ], [ %.28852.i.i, %bb.cd ], [ %i.ze, %bb.ce ], [ %.31855.i.i, %bb.ci ]
  %.25777.i.i = phi i32 [ %.19771.i.i, %bb.bx ], [ %.19771.i.i, %bb.bw ], [ %i.yw, %bb.cd ], [ %i.yp, %bb.ce ], [ %i.zj, %bb.ci ]
  %.29.i.i = phi i32 [ %spec.store.select3.i.i, %bb.bx ], [ %i.xw, %bb.bw ], [ %.25.i.i, %bb.cd ], [ %.22.i.i, %bb.ce ], [ %.27.i.i, %bb.ci ]
  %i.zr = load i32, ptr %i.wo, align 4, !tbaa !6
  %i.zs = or i32 %i.zr, 256
  store i32 %i.zs, ptr %i.wo, align 4, !tbaa !6
  %i.zt = shl nuw nsw i32 %i.xh, 22
  %4 = load i32, ptr %.19241121.i.i, align 4, !tbaa !6
  %5 = or i32 %i.zt, %4
  %i.zu = or i32 %5, 128
  %i.zv = load i32, ptr %i.wq, align 4, !tbaa !6
  %i.zw = or i32 %i.zv, 64
  store i32 %i.zw, ptr %i.wq, align 4, !tbaa !6
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit1091.i.i, %.loopexit1093.i.i
  %.5.i = phi i32 [ %i.xr, %.loopexit1091.i.i ], [ %.4.i, %.loopexit1093.i.i ]
  %i.zx = phi i32 [ %i.zu, %.loopexit1091.i.i ], [ %.pre1227.i.i, %.loopexit1093.i.i ]
  %.4910.i.i = phi ptr [ %i.xt, %.loopexit1091.i.i ], [ %i.uu, %.loopexit1093.i.i ]
  %.34858.i.i = phi i32 [ %.33857.i.i, %.loopexit1091.i.i ], [ %.25849.i.i, %.loopexit1093.i.i ]
  %.26778.i.i = phi i32 [ %.25777.i.i, %.loopexit1091.i.i ], [ %.19771.i.i, %.loopexit1093.i.i ]
  %.30.i.i = phi i32 [ %.29.i.i, %.loopexit1091.i.i ], [ %.22.i.i, %.loopexit1093.i.i ]
  %i.zy = or i32 %i.zx, 16777216                  ; 2 uses
  store i32 %i.zy, ptr %.19241121.i.i, align 4, !tbaa !6
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bg
  %.6.i = phi i32 [ %.4.i, %bb.bg ], [ %.5.i, %bb.cj ] ; 3 uses
  %i.zz = phi i32 [ %i.ug, %bb.bg ], [ %i.zy, %bb.cj ] ; 4 uses
  %.5911.i.i = phi ptr [ %.3909.i.i, %bb.bg ], [ %.4910.i.i, %bb.cj ]
  %.35859.i.i = phi i32 [ %.18842.i.i, %bb.bg ], [ %.34858.i.i, %bb.cj ] ; 5 uses
  %.27779.i.i = phi i32 [ %.14766.i.i, %bb.bg ], [ %.26778.i.i, %bb.cj ] ; 4 uses
  %.31.i.i = phi i32 [ %.16.i.i, %bb.bg ], [ %.30.i.i, %bb.cj ] ; 6 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.11127.i.i, i64 8 ; 2 uses
  %i.aab = and i32 %i.zz, 134218752
  %i.aac = icmp ne i32 %i.aab, 0
  %i.aad = and i32 %i.zz, 31680
  %.not1028.i.i = icmp eq i32 %i.aad, 0
  %or.cond1038.i.i = or i1 %i.aac, %.not1028.i.i
  br i1 %or.cond1038.i.i, label %bb.do, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aae = lshr i32 %i.zz, 6
  %.val1047.i.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.aaf = and i32 %i.aae, 495
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr %.val1047.i.i, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !56
  %i.aaj = load i32, ptr %i.aaa, align 4, !tbaa !6
  %i.aak = and i32 %i.aaj, %i.ns
  %.not1029.i.i = icmp ne i32 %i.aak, 0           ; 2 uses
  %i.aal = zext i1 %.not1029.i.i to i32           ; 2 uses
  %i.aam = zext i8 %i.aai to i64
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.aam ; 4 uses
  br i1 %i.mz, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.aao = icmp eq i32 %.31.i.i, -559038737
  %i.aap = add i32 %.31.i.i, -1
  %i.aaq = select i1 %i.aao, i32 7, i32 %i.aap    ; 3 uses
  %i.aar = shl nuw i32 %i.aal, %i.aaq
  %i.aas = add i32 %i.aar, %.35859.i.i            ; 2 uses
  %i.aat = icmp eq i32 %i.aaq, 0
  br i1 %i.aat, label %bb.cn, label %.loopexit1089.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.aau = trunc i32 %i.aas to i8
  %i.aav = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.aau, ptr %i.aav, align 1, !tbaa !56
  %i.aaw = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !56
  %i.aay = icmp eq i8 %i.aax, -1
  %spec.store.select4.i.i = select i1 %i.aay, i32 7, i32 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  store ptr %i.aaz, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1089.i.i

bb.co:                                            ; preds = %bb.cl
  %i.aba = load ptr, ptr %i.aan, align 8, !tbaa !99 ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !102
  %i.abd = icmp eq i32 %i.abc, %i.aal
  %i.abe = load i32, ptr %i.aba, align 8, !tbaa !101 ; 8 uses
  %i.abf = sub i32 %.27779.i.i, %i.abe            ; 6 uses
  br i1 %i.abd, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %bb.co
  %i.abg = and i32 %i.abf, 32768
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.abi = icmp ult i32 %i.abf, %i.abe
  %i.abj = select i1 %i.abi, i32 0, i32 %i.abe
  %.36860.i.i = add i32 %i.abj, %.35859.i.i
  %.28780.i.i = tail call i32 @llvm.umax.i32(i32 %i.abf, i32 %i.abe)
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !320
  store ptr %i.abl, ptr %i.aan, align 8, !tbaa !99
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ct, %bb.cq
  %.37861.i.i = phi i32 [ %.36860.i.i, %bb.cq ], [ %.38862.i.i, %bb.ct ]
  %.29781.i.i = phi i32 [ %.28780.i.i, %bb.cq ], [ %i.abm, %bb.ct ] ; 2 uses
  %.33.i.i = phi i32 [ %.31.i.i, %bb.cq ], [ %.34.i.i, %bb.ct ]
  %i.abm = shl i32 %.29781.i.i, 1                 ; 2 uses
  %i.abn = shl i32 %.37861.i.i, 1                 ; 2 uses
  %i.abo = add i32 %.33.i.i, -1                   ; 2 uses
  %i.abp = icmp eq i32 %i.abo, 0
  br i1 %i.abp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.abn, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.abq = load i32, ptr %.0169, align 8, !tbaa !94
  %i.abr = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.38862.i.i = phi i32 [ %i.abq, %bb.cs ], [ %i.abn, %bb.cr ] ; 2 uses
  %.34.i.i = phi i32 [ %i.abr, %bb.cs ], [ %i.abo, %bb.cr ] ; 2 uses
  %i.abs = and i32 %.29781.i.i, 16384
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %bb.cr, label %.loopexit1089.i.i, !llvm.loop !254

bb.cu:                                            ; preds = %bb.cp
  %i.abu = add i32 %i.abe, %.35859.i.i
  br label %.loopexit1089.i.i

bb.cv:                                            ; preds = %bb.co
  %i.abv = icmp ult i32 %i.abf, %i.abe
  %i.abw = select i1 %i.abv, i32 %i.abe, i32 0
  %.39863.i.i = add i32 %i.abw, %.35859.i.i
  %.30782.i.i = tail call i32 @llvm.umin.i32(i32 %i.abf, i32 %i.abe)
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !321
  store ptr %i.aby, ptr %i.aan, align 8, !tbaa !99
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %bb.cv
  %.40864.i.i = phi i32 [ %.39863.i.i, %bb.cv ], [ %.41865.i.i, %bb.cy ]
  %.31783.i.i = phi i32 [ %.30782.i.i, %bb.cv ], [ %i.abz, %bb.cy ] ; 2 uses
  %.35.i.i = phi i32 [ %.31.i.i, %bb.cv ], [ %.36.i.i, %bb.cy ]
  %i.abz = shl i32 %.31783.i.i, 1                 ; 2 uses
  %i.aca = shl i32 %.40864.i.i, 1                 ; 2 uses
  %i.acb = add i32 %.35.i.i, -1                   ; 2 uses
  %i.acc = icmp eq i32 %i.acb, 0
  br i1 %i.acc, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 %i.aca, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.acd = load i32, ptr %.0169, align 8, !tbaa !94
  %i.ace = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.41865.i.i = phi i32 [ %i.acd, %bb.cx ], [ %i.aca, %bb.cw ] ; 2 uses
  %.36.i.i = phi i32 [ %i.ace, %bb.cx ], [ %i.acb, %bb.cw ] ; 2 uses
  %i.acf = and i32 %.31783.i.i, 16384
  %i.acg = icmp eq i32 %i.acf, 0
  br i1 %i.acg, label %bb.cw, label %.loopexit1089.i.i, !llvm.loop !255

.loopexit1089.i.i:                                ; preds = %bb.cy, %bb.ct, %bb.cu, %bb.cn, %bb.cm
  %.42866.i.i = phi i32 [ 0, %bb.cn ], [ %i.aas, %bb.cm ], [ %.38862.i.i, %bb.ct ], [ %i.abu, %bb.cu ], [ %.41865.i.i, %bb.cy ] ; 5 uses
  %.32784.i.i = phi i32 [ %.27779.i.i, %bb.cn ], [ %.27779.i.i, %bb.cm ], [ %i.abm, %bb.ct ], [ %i.abf, %bb.cu ], [ %i.abz, %bb.cy ] ; 4 uses
  %.37.i.i = phi i32 [ %spec.store.select4.i.i, %bb.cn ], [ %i.aaq, %bb.cm ], [ %.34.i.i, %bb.ct ], [ %.31.i.i, %bb.cu ], [ %.36.i.i, %bb.cy ] ; 6 uses
  %.pre1228.i.i = load i32, ptr %.19241121.i.i, align 4, !tbaa !6 ; 4 uses
  br i1 %.not1029.i.i, label %bb.cz, label %bb.dn

bb.cz:                                            ; preds = %.loopexit1089.i.i
  %i.ach = getelementptr inbounds i8, ptr %.19241121.i.i, i64 -4 ; 3 uses
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !6
  %i.acj = getelementptr inbounds nuw i8, ptr %.19241121.i.i, i64 4 ; 3 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !6
  %.pn.in.i1057.i.i = lshr i32 %.pre1228.i.i, 18
  %i.acl = lshr i32 %.pre1228.i.i, 6
  %i.acm = and i32 %i.acl, 170
  %i.acn = lshr i32 %i.aci, 25
  %i.aco = and i32 %i.acn, 1
  %i.acp = lshr i32 %i.ack, 23
  %i.acq = and i32 %i.acp, 4
  %.pn.i1058.i.i = and i32 %.pn.in.i1057.i.i, 16
  %i.acr = lshr i32 %.pre1228.i.i, 22
  %i.acs = and i32 %i.acr, 64
  %i.act = or disjoint i32 %i.acs, %i.acm
  %i.acu = or disjoint i32 %i.act, %.pn.i1058.i.i
  %.0.i1059.i.i = or disjoint i32 %i.acu, %i.aco
  %i.acv = or disjoint i32 %.0.i1059.i.i, %i.acq
  %i.acw = zext nneg i32 %i.acv to i64            ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !56
  %i.acz = load i32, ptr %i.aaa, align 4, !tbaa !6 ; 3 uses
  %i.ada = lshr i32 %i.acz, 31                    ; 3 uses
  %i.adb = and i32 %i.acz, 2147483647
  %i.adc = lshr i32 %i.adb, %.0138393.i
  %i.add = and i32 %i.adc, 127
  %i.ade = zext nneg i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.ade
  %i.adg = and i32 %i.acz, 127
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.adh
  %.0.in.i1061.i.i = select i1 %.not.i.i.i, ptr %i.adi, ptr %i.adf
  %.0.i1062.i.i = load i16, ptr %.0.in.i1061.i.i, align 2, !tbaa !323
  %i.adj = sext i16 %.0.i1062.i.i to i32
  %i.adk = add nsw i32 %.6.i, %i.adj
  %i.adl = zext i8 %i.acy to i64
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.adl ; 4 uses
  br i1 %i.mz, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.adn = icmp eq i32 %.37.i.i, -559038737
  %i.ado = add i32 %.37.i.i, -1
  %i.adp = select i1 %i.adn, i32 7, i32 %i.ado    ; 3 uses
  %i.adq = shl nuw i32 %i.ada, %i.adp
  %i.adr = add i32 %i.adq, %.42866.i.i            ; 2 uses
  %i.ads = icmp eq i32 %i.adp, 0
  br i1 %i.ads, label %bb.db, label %.loopexit1087.i.i

bb.db:                                            ; preds = %bb.da
  %i.adt = trunc i32 %i.adr to i8
  %i.adu = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.adt, ptr %i.adu, align 1, !tbaa !56
  %i.adv = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !56
  %i.adx = icmp eq i8 %i.adw, -1
  %spec.store.select5.i.i = select i1 %i.adx, i32 7, i32 8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 1
  store ptr %i.ady, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1087.i.i

bb.dc:                                            ; preds = %bb.cz
  %i.adz = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.acw
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !56
  %i.aeb = zext i8 %i.aea to i32
  %i.aec = load ptr, ptr %i.adm, align 8, !tbaa !99 ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !102
  %i.aef = xor i32 %i.ada, %i.aeb
  %i.aeg = icmp eq i32 %i.aee, %i.aef
  %i.aeh = load i32, ptr %i.aec, align 8, !tbaa !101 ; 8 uses
  %i.aei = sub i32 %.32784.i.i, %i.aeh            ; 6 uses
  br i1 %i.aeg, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %bb.dc
  %i.aej = and i32 %i.aei, 32768
  %i.aek = icmp eq i32 %i.aej, 0
  br i1 %i.aek, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.ael = icmp ult i32 %i.aei, %i.aeh
  %i.aem = select i1 %i.ael, i32 0, i32 %i.aeh
  %.43867.i.i = add i32 %i.aem, %.42866.i.i
  %.33785.i.i = tail call i32 @llvm.umax.i32(i32 %i.aei, i32 %i.aeh)
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !320
  store ptr %i.aeo, ptr %i.adm, align 8, !tbaa !99
  br label %bb.df

bb.df:                                            ; preds = %bb.dh, %bb.de
  %.44868.i.i = phi i32 [ %.43867.i.i, %bb.de ], [ %.45869.i.i, %bb.dh ]
  %.34786.i.i = phi i32 [ %.33785.i.i, %bb.de ], [ %i.aep, %bb.dh ] ; 2 uses
  %.39.i.i = phi i32 [ %.37.i.i, %bb.de ], [ %.40.i.i, %bb.dh ]
  %i.aep = shl i32 %.34786.i.i, 1                 ; 2 uses
  %i.aeq = shl i32 %.44868.i.i, 1                 ; 2 uses
  %i.aer = add i32 %.39.i.i, -1                   ; 2 uses
  %i.aes = icmp eq i32 %i.aer, 0
  br i1 %i.aes, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 %i.aeq, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.aet = load i32, ptr %.0169, align 8, !tbaa !94
  %i.aeu = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.45869.i.i = phi i32 [ %i.aet, %bb.dg ], [ %i.aeq, %bb.df ] ; 2 uses
  %.40.i.i = phi i32 [ %i.aeu, %bb.dg ], [ %i.aer, %bb.df ] ; 2 uses
  %i.aev = and i32 %.34786.i.i, 16384
  %i.aew = icmp eq i32 %i.aev, 0
  br i1 %i.aew, label %bb.df, label %.loopexit1087.i.i, !llvm.loop !256

bb.di:                                            ; preds = %bb.dd
  %i.aex = add i32 %i.aeh, %.42866.i.i
  br label %.loopexit1087.i.i

bb.dj:                                            ; preds = %bb.dc
  %i.aey = icmp ult i32 %i.aei, %i.aeh
  %i.aez = select i1 %i.aey, i32 %i.aeh, i32 0
  %.46870.i.i = add i32 %i.aez, %.42866.i.i
  %.35787.i.i = tail call i32 @llvm.umin.i32(i32 %i.aei, i32 %i.aeh)
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !321
  store ptr %i.afb, ptr %i.adm, align 8, !tbaa !99
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %bb.dj
  %.47871.i.i = phi i32 [ %.46870.i.i, %bb.dj ], [ %.48872.i.i, %bb.dm ]
  %.36788.i.i = phi i32 [ %.35787.i.i, %bb.dj ], [ %i.afc, %bb.dm ] ; 2 uses
  %.41.i.i = phi i32 [ %.37.i.i, %bb.dj ], [ %.42.i.i, %bb.dm ]
  %i.afc = shl i32 %.36788.i.i, 1                 ; 2 uses
  %i.afd = shl i32 %.47871.i.i, 1                 ; 2 uses
  %i.afe = add i32 %.41.i.i, -1                   ; 2 uses
  %i.aff = icmp eq i32 %i.afe, 0
  br i1 %i.aff, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 %i.afd, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.afg = load i32, ptr %.0169, align 8, !tbaa !94
  %i.afh = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.48872.i.i = phi i32 [ %i.afg, %bb.dl ], [ %i.afd, %bb.dk ] ; 2 uses
  %.42.i.i = phi i32 [ %i.afh, %bb.dl ], [ %i.afe, %bb.dk ] ; 2 uses
  %i.afi = and i32 %.36788.i.i, 16384
  %i.afj = icmp eq i32 %i.afi, 0
  br i1 %i.afj, label %bb.dk, label %.loopexit1087.i.i, !llvm.loop !257

.loopexit1087.i.i:                                ; preds = %bb.dm, %bb.dh, %bb.di, %bb.db, %bb.da
  %.50874.i.i = phi i32 [ 0, %bb.db ], [ %i.adr, %bb.da ], [ %.45869.i.i, %bb.dh ], [ %i.aex, %bb.di ], [ %.48872.i.i, %bb.dm ]
  %.38790.i.i = phi i32 [ %.32784.i.i, %bb.db ], [ %.32784.i.i, %bb.da ], [ %i.aep, %bb.dh ], [ %i.aei, %bb.di ], [ %i.afc, %bb.dm ]
  %.44.i.i = phi i32 [ %spec.store.select5.i.i, %bb.db ], [ %i.adp, %bb.da ], [ %.40.i.i, %bb.dh ], [ %.37.i.i, %bb.di ], [ %.42.i.i, %bb.dm ]
  %i.afk = load i32, ptr %i.ach, align 4, !tbaa !6
  %i.afl = or i32 %i.afk, 2048
  store i32 %i.afl, ptr %i.ach, align 4, !tbaa !6
  %i.afm = shl nuw nsw i32 %i.ada, 25
  %6 = load i32, ptr %.19241121.i.i, align 4, !tbaa !6
  %7 = or i32 %i.afm, %6
  %i.afn = or i32 %7, 1024
  %i.afo = load i32, ptr %i.acj, align 4, !tbaa !6
  %i.afp = or i32 %i.afo, 512
  store i32 %i.afp, ptr %i.acj, align 4, !tbaa !6
  br label %bb.dn

bb.dn:                                            ; preds = %.loopexit1087.i.i, %.loopexit1089.i.i
  %.7.i = phi i32 [ %i.adk, %.loopexit1087.i.i ], [ %.6.i, %.loopexit1089.i.i ]
  %i.afq = phi i32 [ %i.afn, %.loopexit1087.i.i ], [ %.pre1228.i.i, %.loopexit1089.i.i ]
  %.6912.i.i = phi ptr [ %i.adm, %.loopexit1087.i.i ], [ %i.aan, %.loopexit1089.i.i ]
  %.51875.i.i = phi i32 [ %.50874.i.i, %.loopexit1087.i.i ], [ %.42866.i.i, %.loopexit1089.i.i ]
  %.39791.i.i = phi i32 [ %.38790.i.i, %.loopexit1087.i.i ], [ %.32784.i.i, %.loopexit1089.i.i ]
  %.45.i.i = phi i32 [ %.44.i.i, %.loopexit1087.i.i ], [ %.37.i.i, %.loopexit1089.i.i ]
  %i.afr = or i32 %i.afq, 134217728               ; 2 uses
  store i32 %i.afr, ptr %.19241121.i.i, align 4, !tbaa !6
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.ck
  %.8.i = phi i32 [ %.6.i, %bb.ck ], [ %.7.i, %bb.dn ] ; 3 uses
  %i.afs = phi i32 [ %i.zz, %bb.ck ], [ %i.afr, %bb.dn ] ; 3 uses
  %.7913.i.i = phi ptr [ %.5911.i.i, %bb.ck ], [ %.6912.i.i, %bb.dn ]
  %.52876.i.i = phi i32 [ %.35859.i.i, %bb.ck ], [ %.51875.i.i, %bb.dn ] ; 5 uses
  %.40792.i.i = phi i32 [ %.27779.i.i, %bb.ck ], [ %.39791.i.i, %bb.dn ] ; 4 uses
  %.46.i.i = phi i32 [ %.31.i.i, %bb.ck ], [ %.45.i.i, %bb.dn ] ; 6 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.11127.i.i, i64 12 ; 2 uses
  %i.afu = and i32 %i.afs, 1073750016
  %i.afv = icmp ne i32 %i.afu, 0
  %i.afw = and i32 %i.afs, 253440
  %.not1031.i.i = icmp eq i32 %i.afw, 0
  %or.cond1041.i.i = or i1 %i.afv, %.not1031.i.i
  br i1 %or.cond1041.i.i, label %bb.es, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.afx = lshr i32 %i.afs, 9
  %.val1046.i.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.afy = and i32 %i.afx, 495
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw i8, ptr %.val1046.i.i, i64 %i.afz
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !56
  %i.agc = load i32, ptr %i.aft, align 4, !tbaa !6
  %i.agd = and i32 %i.agc, %i.ns
  %.not1032.i.i = icmp ne i32 %i.agd, 0           ; 2 uses
  %i.age = zext i1 %.not1032.i.i to i32           ; 2 uses
  %i.agf = zext i8 %i.agb to i64
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.agf ; 4 uses
  br i1 %i.mz, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.agh = icmp eq i32 %.46.i.i, -559038737
  %i.agi = add i32 %.46.i.i, -1
  %i.agj = select i1 %i.agh, i32 7, i32 %i.agi    ; 3 uses
  %i.agk = shl nuw i32 %i.age, %i.agj
  %i.agl = add i32 %i.agk, %.52876.i.i            ; 2 uses
  %i.agm = icmp eq i32 %i.agj, 0
  br i1 %i.agm, label %bb.dr, label %.loopexit1085.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.agn = trunc i32 %i.agl to i8
  %i.ago = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.agn, ptr %i.ago, align 1, !tbaa !56
  %i.agp = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !56
  %i.agr = icmp eq i8 %i.agq, -1
  %spec.store.select6.i.i = select i1 %i.agr, i32 7, i32 8
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agp, i64 1
  store ptr %i.ags, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1085.i.i

bb.ds:                                            ; preds = %bb.dp
  %i.agt = load ptr, ptr %i.agg, align 8, !tbaa !99 ; 4 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 4
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !102
  %i.agw = icmp eq i32 %i.agv, %i.age
  %i.agx = load i32, ptr %i.agt, align 8, !tbaa !101 ; 8 uses
  %i.agy = sub i32 %.40792.i.i, %i.agx            ; 6 uses
  br i1 %i.agw, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  %i.agz = and i32 %i.agy, 32768
  %i.aha = icmp eq i32 %i.agz, 0
  br i1 %i.aha, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.ahb = icmp ult i32 %i.agy, %i.agx
  %i.ahc = select i1 %i.ahb, i32 0, i32 %i.agx
  %.53877.i.i = add i32 %i.ahc, %.52876.i.i
  %.41793.i.i = tail call i32 @llvm.umax.i32(i32 %i.agy, i32 %i.agx)
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !320
  store ptr %i.ahe, ptr %i.agg, align 8, !tbaa !99
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dx, %bb.du
  %.54878.i.i = phi i32 [ %.53877.i.i, %bb.du ], [ %.55879.i.i, %bb.dx ]
  %.42794.i.i = phi i32 [ %.41793.i.i, %bb.du ], [ %i.ahf, %bb.dx ] ; 2 uses
  %.48.i.i = phi i32 [ %.46.i.i, %bb.du ], [ %.49.i.i, %bb.dx ]
  %i.ahf = shl i32 %.42794.i.i, 1                 ; 2 uses
  %i.ahg = shl i32 %.54878.i.i, 1                 ; 2 uses
  %i.ahh = add i32 %.48.i.i, -1                   ; 2 uses
  %i.ahi = icmp eq i32 %i.ahh, 0
  br i1 %i.ahi, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 %i.ahg, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.ahj = load i32, ptr %.0169, align 8, !tbaa !94
  %i.ahk = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.55879.i.i = phi i32 [ %i.ahj, %bb.dw ], [ %i.ahg, %bb.dv ] ; 2 uses
  %.49.i.i = phi i32 [ %i.ahk, %bb.dw ], [ %i.ahh, %bb.dv ] ; 2 uses
  %i.ahl = and i32 %.42794.i.i, 16384
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %bb.dv, label %.loopexit1085.i.i, !llvm.loop !258

bb.dy:                                            ; preds = %bb.dt
  %i.ahn = add i32 %i.agx, %.52876.i.i
  br label %.loopexit1085.i.i

bb.dz:                                            ; preds = %bb.ds
  %i.aho = icmp ult i32 %i.agy, %i.agx
  %i.ahp = select i1 %i.aho, i32 %i.agx, i32 0
  %.56880.i.i = add i32 %i.ahp, %.52876.i.i
  %.43795.i.i = tail call i32 @llvm.umin.i32(i32 %i.agy, i32 %i.agx)
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !321
  store ptr %i.ahr, ptr %i.agg, align 8, !tbaa !99
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ec, %bb.dz
  %.57881.i.i = phi i32 [ %.56880.i.i, %bb.dz ], [ %.58882.i.i, %bb.ec ]
  %.44796.i.i = phi i32 [ %.43795.i.i, %bb.dz ], [ %i.ahs, %bb.ec ] ; 2 uses
  %.50.i.i = phi i32 [ %.46.i.i, %bb.dz ], [ %.51.i.i, %bb.ec ]
  %i.ahs = shl i32 %.44796.i.i, 1                 ; 2 uses
  %i.aht = shl i32 %.57881.i.i, 1                 ; 2 uses
  %i.ahu = add i32 %.50.i.i, -1                   ; 2 uses
  %i.ahv = icmp eq i32 %i.ahu, 0
  br i1 %i.ahv, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 %i.aht, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.ahw = load i32, ptr %.0169, align 8, !tbaa !94
  %i.ahx = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.58882.i.i = phi i32 [ %i.ahw, %bb.eb ], [ %i.aht, %bb.ea ] ; 2 uses
  %.51.i.i = phi i32 [ %i.ahx, %bb.eb ], [ %i.ahu, %bb.ea ] ; 2 uses
  %i.ahy = and i32 %.44796.i.i, 16384
  %i.ahz = icmp eq i32 %i.ahy, 0
  br i1 %i.ahz, label %bb.ea, label %.loopexit1085.i.i, !llvm.loop !259

.loopexit1085.i.i:                                ; preds = %bb.ec, %bb.dx, %bb.dy, %bb.dr, %bb.dq
  %.59883.i.i = phi i32 [ 0, %bb.dr ], [ %i.agl, %bb.dq ], [ %.55879.i.i, %bb.dx ], [ %i.ahn, %bb.dy ], [ %.58882.i.i, %bb.ec ] ; 5 uses
  %.45797.i.i = phi i32 [ %.40792.i.i, %bb.dr ], [ %.40792.i.i, %bb.dq ], [ %i.ahf, %bb.dx ], [ %i.agy, %bb.dy ], [ %i.ahs, %bb.ec ] ; 4 uses
  %.52.i.i = phi i32 [ %spec.store.select6.i.i, %bb.dr ], [ %i.agj, %bb.dq ], [ %.49.i.i, %bb.dx ], [ %.46.i.i, %bb.dy ], [ %.51.i.i, %bb.ec ] ; 6 uses
  %.pre1230.i.i = load i32, ptr %.19241121.i.i, align 4, !tbaa !6 ; 4 uses
  br i1 %.not1032.i.i, label %bb.ed, label %bb.er

bb.ed:                                            ; preds = %.loopexit1085.i.i
  %i.aia = getelementptr inbounds i8, ptr %.19241121.i.i, i64 -4 ; 3 uses
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !6
  %i.aic = getelementptr inbounds nuw i8, ptr %.19241121.i.i, i64 4 ; 3 uses
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !6
  %.pn.in.i1063.i.i = lshr i32 %.pre1230.i.i, 21
  %i.aie = lshr i32 %.pre1230.i.i, 9
  %i.aif = and i32 %i.aie, 170
  %i.aig = lshr i32 %i.aib, 28
  %i.aih = and i32 %i.aig, 1
  %i.aii = lshr i32 %i.aid, 26
  %i.aij = and i32 %i.aii, 4
  %.pn.i1064.i.i = and i32 %.pn.in.i1063.i.i, 16
  %i.aik = lshr i32 %.pre1230.i.i, 25
  %i.ail = and i32 %i.aik, 64
  %i.aim = or disjoint i32 %i.ail, %i.aif
  %i.ain = or disjoint i32 %i.aim, %.pn.i1064.i.i
  %.0.i1065.i.i = or disjoint i32 %i.ain, %i.aih
  %i.aio = or disjoint i32 %.0.i1065.i.i, %i.aij
  %i.aip = zext nneg i32 %i.aio to i64            ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !56
  %i.ais = load i32, ptr %i.aft, align 4, !tbaa !6 ; 3 uses
  %i.ait = lshr i32 %i.ais, 31                    ; 4 uses
  %i.aiu = and i32 %i.ais, 2147483647
  %i.aiv = lshr i32 %i.aiu, %.0138393.i
  %i.aiw = and i32 %i.aiv, 127
  %i.aix = zext nneg i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.aix
  %i.aiz = and i32 %i.ais, 127
  %i.aja = zext nneg i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.aja
  %.0.in.i1067.i.i = select i1 %.not.i.i.i, ptr %i.ajb, ptr %i.aiy
  %.0.i1068.i.i = load i16, ptr %.0.in.i1067.i.i, align 2, !tbaa !323
  %i.ajc = sext i16 %.0.i1068.i.i to i32
  %i.ajd = add nsw i32 %.8.i, %i.ajc
  %i.aje = zext i8 %i.air to i64
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.aje ; 4 uses
  br i1 %i.mz, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.ajg = icmp eq i32 %.52.i.i, -559038737
  %i.ajh = add i32 %.52.i.i, -1
  %i.aji = select i1 %i.ajg, i32 7, i32 %i.ajh    ; 3 uses
  %i.ajj = shl nuw i32 %i.ait, %i.aji
  %i.ajk = add i32 %i.ajj, %.59883.i.i            ; 2 uses
  %i.ajl = icmp eq i32 %i.aji, 0
  br i1 %i.ajl, label %bb.ef, label %.loopexit1083.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.ajm = trunc i32 %i.ajk to i8
  %i.ajn = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.ajm, ptr %i.ajn, align 1, !tbaa !56
  %i.ajo = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !56
  %i.ajq = icmp eq i8 %i.ajp, -1
  %spec.store.select7.i.i = select i1 %i.ajq, i32 7, i32 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 1
  store ptr %i.ajr, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1083.i.i

bb.eg:                                            ; preds = %bb.ed
  %i.ajs = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.aip
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !56
  %i.aju = zext i8 %i.ajt to i32
  %i.ajv = load ptr, ptr %i.ajf, align 8, !tbaa !99 ; 4 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 4
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !102
  %i.ajy = xor i32 %i.ait, %i.aju
  %i.ajz = icmp eq i32 %i.ajx, %i.ajy
  %i.aka = load i32, ptr %i.ajv, align 8, !tbaa !101 ; 8 uses
  %i.akb = sub i32 %.45797.i.i, %i.aka            ; 6 uses
  br i1 %i.ajz, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %bb.eg
  %i.akc = and i32 %i.akb, 32768
  %i.akd = icmp eq i32 %i.akc, 0
  br i1 %i.akd, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %i.ake = icmp ult i32 %i.akb, %i.aka
  %i.akf = select i1 %i.ake, i32 0, i32 %i.aka
  %.60884.i.i = add i32 %i.akf, %.59883.i.i
  %.46798.i.i = tail call i32 @llvm.umax.i32(i32 %i.akb, i32 %i.aka)
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !320
  store ptr %i.akh, ptr %i.ajf, align 8, !tbaa !99
  br label %bb.ej

bb.ej:                                            ; preds = %bb.el, %bb.ei
  %.61885.i.i = phi i32 [ %.60884.i.i, %bb.ei ], [ %.62886.i.i, %bb.el ]
  %.47799.i.i = phi i32 [ %.46798.i.i, %bb.ei ], [ %i.aki, %bb.el ] ; 2 uses
  %.54.i.i = phi i32 [ %.52.i.i, %bb.ei ], [ %.55.i.i, %bb.el ]
  %i.aki = shl i32 %.47799.i.i, 1                 ; 2 uses
  %i.akj = shl i32 %.61885.i.i, 1                 ; 2 uses
  %i.akk = add i32 %.54.i.i, -1                   ; 2 uses
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  store i32 %i.akj, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.akm = load i32, ptr %.0169, align 8, !tbaa !94
  %i.akn = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.62886.i.i = phi i32 [ %i.akm, %bb.ek ], [ %i.akj, %bb.ej ] ; 2 uses
  %.55.i.i = phi i32 [ %i.akn, %bb.ek ], [ %i.akk, %bb.ej ] ; 2 uses
  %i.ako = and i32 %.47799.i.i, 16384
  %i.akp = icmp eq i32 %i.ako, 0
  br i1 %i.akp, label %bb.ej, label %.loopexit1083.i.i, !llvm.loop !260

bb.em:                                            ; preds = %bb.eh
  %i.akq = add i32 %i.aka, %.59883.i.i
  br label %.loopexit1083.i.i

bb.en:                                            ; preds = %bb.eg
  %i.akr = icmp ult i32 %i.akb, %i.aka
  %i.aks = select i1 %i.akr, i32 %i.aka, i32 0
  %.63887.i.i = add i32 %i.aks, %.59883.i.i
  %.48800.i.i = tail call i32 @llvm.umin.i32(i32 %i.akb, i32 %i.aka)
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ajv, i64 16
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !321
  store ptr %i.aku, ptr %i.ajf, align 8, !tbaa !99
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eq, %bb.en
  %.64888.i.i = phi i32 [ %.63887.i.i, %bb.en ], [ %.65889.i.i, %bb.eq ]
  %.49801.i.i = phi i32 [ %.48800.i.i, %bb.en ], [ %i.akv, %bb.eq ] ; 2 uses
  %.56.i.i = phi i32 [ %.52.i.i, %bb.en ], [ %.57.i.i, %bb.eq ]
  %i.akv = shl i32 %.49801.i.i, 1                 ; 2 uses
  %i.akw = shl i32 %.64888.i.i, 1                 ; 2 uses
  %i.akx = add i32 %.56.i.i, -1                   ; 2 uses
  %i.aky = icmp eq i32 %i.akx, 0
  br i1 %i.aky, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 %i.akw, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.akz = load i32, ptr %.0169, align 8, !tbaa !94
  %i.ala = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.65889.i.i = phi i32 [ %i.akz, %bb.ep ], [ %i.akw, %bb.eo ] ; 2 uses
  %.57.i.i = phi i32 [ %i.ala, %bb.ep ], [ %i.akx, %bb.eo ] ; 2 uses
  %i.alb = and i32 %.49801.i.i, 16384
  %i.alc = icmp eq i32 %i.alb, 0
  br i1 %i.alc, label %bb.eo, label %.loopexit1083.i.i, !llvm.loop !261

.loopexit1083.i.i:                                ; preds = %bb.eq, %bb.el, %bb.em, %bb.ef, %bb.ee
  %.67891.i.i = phi i32 [ 0, %bb.ef ], [ %i.ajk, %bb.ee ], [ %.62886.i.i, %bb.el ], [ %i.akq, %bb.em ], [ %.65889.i.i, %bb.eq ]
  %.51803.i.i = phi i32 [ %.45797.i.i, %bb.ef ], [ %.45797.i.i, %bb.ee ], [ %i.aki, %bb.el ], [ %i.akb, %bb.em ], [ %i.akv, %bb.eq ]
  %.59.i.i = phi i32 [ %spec.store.select7.i.i, %bb.ef ], [ %i.aji, %bb.ee ], [ %.55.i.i, %bb.el ], [ %.52.i.i, %bb.em ], [ %.57.i.i, %bb.eq ]
  %i.ald = load i32, ptr %i.bo, align 8, !tbaa !91
  %i.ale = add i32 %i.ald, 2
  %i.alf = load i32, ptr %i.aia, align 4, !tbaa !6
  %i.alg = or i32 %i.alf, 16384
  store i32 %i.alg, ptr %i.aia, align 4, !tbaa !6
  %i.alh = shl nuw nsw i32 %i.ait, 28
  %8 = load i32, ptr %.19241121.i.i, align 4, !tbaa !6
  %9 = or i32 %i.alh, %8
  %i.ali = or i32 %9, 8192
  store i32 %i.ali, ptr %.19241121.i.i, align 4, !tbaa !6
  %i.alj = load i32, ptr %i.aic, align 4, !tbaa !6
  %i.alk = or i32 %i.alj, 4096
  store i32 %i.alk, ptr %i.aic, align 4, !tbaa !6
  %i.all = zext i32 %i.ale to i64
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %.19241121.i.i, i64 %i.all ; 4 uses
  %i.aln = shl nuw nsw i32 %i.ait, 18
  %10 = load i32, ptr %i.alm, align 4, !tbaa !6
  %11 = or i32 %i.aln, %10
  %i.alo = or i32 %11, 2
  store i32 %i.alo, ptr %i.alm, align 4, !tbaa !6
  %i.alp = getelementptr inbounds i8, ptr %i.alm, i64 -4 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !6
  %i.alr = or i32 %i.alq, 4
  store i32 %i.alr, ptr %i.alp, align 4, !tbaa !6
  %i.als = getelementptr inbounds nuw i8, ptr %i.alm, i64 4 ; 2 uses
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !6
  %i.alu = or i32 %i.alt, 1
  store i32 %i.alu, ptr %i.als, align 4, !tbaa !6
  %.pre1229.i.i = load i32, ptr %.19241121.i.i, align 4, !tbaa !6
  br label %bb.er

bb.er:                                            ; preds = %.loopexit1083.i.i, %.loopexit1085.i.i
  %.9.i = phi i32 [ %i.ajd, %.loopexit1083.i.i ], [ %.8.i, %.loopexit1085.i.i ]
  %i.alv = phi i32 [ %.pre1229.i.i, %.loopexit1083.i.i ], [ %.pre1230.i.i, %.loopexit1085.i.i ]
  %.8914.i.i = phi ptr [ %i.ajf, %.loopexit1083.i.i ], [ %i.agg, %.loopexit1085.i.i ]
  %.68892.i.i = phi i32 [ %.67891.i.i, %.loopexit1083.i.i ], [ %.59883.i.i, %.loopexit1085.i.i ]
  %.52804.i.i = phi i32 [ %.51803.i.i, %.loopexit1083.i.i ], [ %.45797.i.i, %.loopexit1085.i.i ]
  %.60.i.i = phi i32 [ %.59.i.i, %.loopexit1083.i.i ], [ %.52.i.i, %.loopexit1085.i.i ]
  %i.alw = or i32 %i.alv, 1073741824
  store i32 %i.alw, ptr %.19241121.i.i, align 4, !tbaa !6
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.do, %.lr.ph.i158.i
  %.10.i = phi i32 [ %.2277.i, %.lr.ph.i158.i ], [ %.8.i, %bb.do ], [ %.9.i, %bb.er ] ; 2 uses
  %.10916.i.i = phi ptr [ %.19071123.i.i, %.lr.ph.i158.i ], [ %.7913.i.i, %bb.do ], [ %.8914.i.i, %bb.er ] ; 2 uses
  %.70894.i.i = phi i32 [ %.18251124.i.i, %.lr.ph.i158.i ], [ %.52876.i.i, %bb.do ], [ %.68892.i.i, %bb.er ] ; 2 uses
  %.54806.i.i = phi i32 [ %.17531125.i.i, %.lr.ph.i158.i ], [ %.40792.i.i, %bb.do ], [ %.52804.i.i, %bb.er ] ; 2 uses
  %.62.i.i = phi i32 [ %.17481126.i.i, %.lr.ph.i158.i ], [ %.46.i.i, %bb.do ], [ %.60.i.i, %bb.er ] ; 2 uses
  %i.alx = add nuw i32 %.09271120.i.i, 1          ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.19241121.i.i, i64 4 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.11127.i.i, i64 16 ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.alx, %i.oa
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i158.i, !llvm.loop !262

._crit_edge.loopexit.i.i:                         ; preds = %bb.es
  %.pre1231.i.i = load i32, ptr %i.bq, align 4, !tbaa !92
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.lr.ph1141.split.i.i
  %.11.i = phi i32 [ %.1276.i, %.lr.ph1141.split.i.i ], [ %.10.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ama = phi i32 [ %i.nz, %.lr.ph1141.split.i.i ], [ %.pre1231.i.i, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.1924.lcssa.i.i = phi ptr [ %.09231134.i.i, %.lr.ph1141.split.i.i ], [ %i.aly, %._crit_edge.loopexit.i.i ]
  %.1907.lcssa.i.i = phi ptr [ %.09061135.i.i, %.lr.ph1141.split.i.i ], [ %.10916.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.1825.lcssa.i.i = phi i32 [ %.08241136.i.i, %.lr.ph1141.split.i.i ], [ %.70894.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.1753.lcssa.i.i = phi i32 [ %.07521137.i.i, %.lr.ph1141.split.i.i ], [ %.54806.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.1748.lcssa.i.i = phi i32 [ %.07471138.i.i, %.lr.ph1141.split.i.i ], [ %.62.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.07461139.i.i, %.lr.ph1141.split.i.i ], [ %i.alz, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.amb = add nuw i32 %.09261133.i.i, 4          ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.1924.lcssa.i.i, i64 8 ; 2 uses
  %i.amd = and i32 %i.ama, -4
  %i.ame = icmp ult i32 %i.amb, %i.amd
  br i1 %i.ame, label %.lr.ph1141.split.i.i, label %._crit_edge1142.i.i, !llvm.loop !263

._crit_edge1142.i.i:                              ; preds = %._crit_edge.i.i, %.lr.ph1141.split.us.i.i, %bb.ab
  %.12.i = phi i32 [ 0, %bb.ab ], [ 0, %.lr.ph1141.split.us.i.i ], [ %.11.i, %._crit_edge.i.i ] ; 3 uses
  %.0926.lcssa.i.i = phi i32 [ 0, %bb.ab ], [ %i.nt, %.lr.ph1141.split.us.i.i ], [ %i.amb, %._crit_edge.i.i ] ; 6 uses
  %.0923.lcssa.i.i = phi ptr [ %i.nm, %bb.ab ], [ %scevgep.i.i, %.lr.ph1141.split.us.i.i ], [ %i.amc, %._crit_edge.i.i ]
  %.0906.lcssa.i.i = phi ptr [ %i.nn, %bb.ab ], [ %i.nn, %.lr.ph1141.split.us.i.i ], [ %.1907.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0824.lcssa.i.i = phi i32 [ %i.no, %bb.ab ], [ %i.no, %.lr.ph1141.split.us.i.i ], [ %.1825.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0752.lcssa.i.i = phi i32 [ %i.np, %bb.ab ], [ %i.np, %.lr.ph1141.split.us.i.i ], [ %.1753.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0747.lcssa.i.i = phi i32 [ %i.nq, %bb.ab ], [ %i.nq, %.lr.ph1141.split.us.i.i ], [ %.1748.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0746.lcssa.i.i = phi ptr [ %i.nr, %bb.ab ], [ %i.nr, %.lr.ph1141.split.us.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ]
  %.lcssa1118.i.i = phi i32 [ %i.nh, %bb.ab ], [ %i.nh, %.lr.ph1141.split.us.i.i ], [ %i.ama, %._crit_edge.i.i ] ; 4 uses
  %i.amf = icmp ult i32 %.0926.lcssa.i.i, %.lcssa1118.i.i
  br i1 %i.amf, label %.preheader1081.i.i, label %opj_t1_enc_sigpass.exit.i

.preheader1081.i.i:                               ; preds = %._crit_edge1142.i.i
  %i.amg = load i32, ptr %i.bo, align 8, !tbaa !91 ; 2 uses
  %.not1187.i.i = icmp eq i32 %i.amg, 0
  br i1 %.not1187.i.i, label %opj_t1_enc_sigpass.exit.i, label %.lr.ph1179.i.i

.lr.ph1179.i.i:                                   ; preds = %.preheader1081.i.i
  %i.amh = and i32 %i.ng, 2147483584
  %.not.i1072.i.i = icmp eq i32 %.0138393.i, 0
  br label %bb.et

bb.et:                                            ; preds = %.loopexit1080.i.i, %.lr.ph1179.i.i
  %.13.i = phi i32 [ %.12.i, %.lr.ph1179.i.i ], [ %.14.i, %.loopexit1080.i.i ] ; 3 uses
  %i.ami = phi i32 [ %i.amg, %.lr.ph1179.i.i ], [ %i.aul, %.loopexit1080.i.i ] ; 2 uses
  %i.amj = phi i32 [ %.lcssa1118.i.i, %.lr.ph1179.i.i ], [ %i.aum, %.loopexit1080.i.i ] ; 6 uses
  %i.amk = phi i32 [ %.lcssa1118.i.i, %.lr.ph1179.i.i ], [ %i.aun, %.loopexit1080.i.i ] ; 2 uses
  %i.aml = phi i32 [ %.lcssa1118.i.i, %.lr.ph1179.i.i ], [ %i.auo, %.loopexit1080.i.i ] ; 2 uses
  %.21178.i.i = phi ptr [ %.0746.lcssa.i.i, %.lr.ph1179.i.i ], [ %.4.i.i, %.loopexit1080.i.i ] ; 3 uses
  %.631177.i.i = phi i32 [ %.0747.lcssa.i.i, %.lr.ph1179.i.i ], [ %.80.i.i, %.loopexit1080.i.i ] ; 3 uses
  %.558071176.i.i = phi i32 [ %.0752.lcssa.i.i, %.lr.ph1179.i.i ], [ %.70822.i.i, %.loopexit1080.i.i ] ; 3 uses
  %.718951175.i.i = phi i32 [ %.0824.lcssa.i.i, %.lr.ph1179.i.i ], [ %.90.i.i, %.loopexit1080.i.i ] ; 3 uses
  %.119171174.i.i = phi ptr [ %.0906.lcssa.i.i, %.lr.ph1179.i.i ], [ %.15921.i.i, %.loopexit1080.i.i ] ; 3 uses
  %.29251172.i.i = phi ptr [ %.0923.lcssa.i.i, %.lr.ph1179.i.i ], [ %i.auq, %.loopexit1080.i.i ] ; 11 uses
  %.19281171.i.i = phi i32 [ 0, %.lr.ph1179.i.i ], [ %i.aup, %.loopexit1080.i.i ]
  %i.amm = load i32, ptr %.29251172.i.i, align 4, !tbaa !6 ; 2 uses
  %i.amn = icmp eq i32 %i.amm, 0
  br i1 %i.amn, label %bb.eu, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.et
  %i.amo = icmp ult i32 %.0926.lcssa.i.i, %i.aml
  br i1 %i.amo, label %.lr.ph1165.i.i, label %.loopexit1080.i.i

.lr.ph1165.i.i:                                   ; preds = %.preheader.i.i
  %i.amp = getelementptr inbounds i8, ptr %.29251172.i.i, i64 -4 ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.29251172.i.i, i64 4 ; 3 uses
  br label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.amr = sub i32 %i.amj, %.0926.lcssa.i.i
  %i.ams = zext i32 %i.amr to i64
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %.21178.i.i, i64 %i.ams
  br label %.loopexit1080.i.i

bb.ev:                                            ; preds = %bb.gc, %.lr.ph1165.i.i
  %.15.i = phi i32 [ %.13.i, %.lr.ph1165.i.i ], [ %.16.i, %bb.gc ] ; 4 uses
  %i.amu = phi i32 [ %i.amj, %.lr.ph1165.i.i ], [ %i.auf, %bb.gc ] ; 2 uses
  %i.amv = phi i32 [ %i.amk, %.lr.ph1165.i.i ], [ %i.aug, %bb.gc ] ; 2 uses
  %i.amw = phi i32 [ %i.amm, %.lr.ph1165.i.i ], [ %i.auh, %bb.gc ] ; 5 uses
  %.01163.i.i = phi i32 [ %.0926.lcssa.i.i, %.lr.ph1165.i.i ], [ %i.aui, %bb.gc ] ; 3 uses
  %.31162.i.i = phi ptr [ %.21178.i.i, %.lr.ph1165.i.i ], [ %i.auj, %bb.gc ] ; 3 uses
  %.641161.i.i = phi i32 [ %.631177.i.i, %.lr.ph1165.i.i ], [ %.79.i.i, %bb.gc ] ; 7 uses
  %.568081160.i.i = phi i32 [ %.558071176.i.i, %.lr.ph1165.i.i ], [ %.69821.i.i, %bb.gc ] ; 5 uses
  %.728961159.i.i = phi i32 [ %.718951175.i.i, %.lr.ph1165.i.i ], [ %.89.i.i, %bb.gc ] ; 6 uses
  %.129181158.i.i = phi ptr [ %.119171174.i.i, %.lr.ph1165.i.i ], [ %.14920.i.i, %bb.gc ] ; 2 uses
  %i.amx = sub nuw i32 %.01163.i.i, %.0926.lcssa.i.i ; 3 uses
  %i.amy = icmp eq i32 %.01163.i.i, %.0926.lcssa.i.i ; 2 uses
  %i.amz = and i1 %i.mb, %i.amy
  %i.ana = zext i1 %i.amz to i32
  %i.anb = mul i32 %i.amx, 3                      ; 12 uses
  %i.anc = shl i32 2097168, %i.anb
  %i.and = and i32 %i.anc, %i.amw
  %i.ane = icmp eq i32 %i.and, 0
  br i1 %i.ane, label %bb.ew, label %bb.gc

bb.ew:                                            ; preds = %bb.ev
  %i.anf = shl i32 495, %i.anb
  %i.ang = and i32 %i.anf, %i.amw
  %.not.i.i = icmp eq i32 %i.ang, 0
  br i1 %.not.i.i, label %bb.gc, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.anh = lshr i32 %i.amw, %i.anb
  %.val.i.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.ani = and i32 %i.anh, 495
  %i.anj = zext nneg i32 %i.ani to i64
  %i.ank = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !56
  %i.anm = load i32, ptr %.31162.i.i, align 4, !tbaa !6
  %i.ann = and i32 %i.amh, %i.anm
  %.not1020.i.i = icmp ne i32 %i.ann, 0           ; 2 uses
  %i.ano = zext i1 %.not1020.i.i to i32           ; 2 uses
  %i.anp = zext i8 %i.anl to i64
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.anp ; 4 uses
  br i1 %i.mz, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.anr = icmp eq i32 %.641161.i.i, -559038737
  %i.ans = add i32 %.641161.i.i, -1
  %i.ant = select i1 %i.anr, i32 7, i32 %i.ans    ; 3 uses
  %i.anu = shl nuw i32 %i.ano, %i.ant
  %i.anv = add i32 %i.anu, %.728961159.i.i        ; 2 uses
  %i.anw = icmp eq i32 %i.ant, 0
  br i1 %i.anw, label %bb.ez, label %.loopexit1078.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.anx = trunc i32 %i.anv to i8
  %i.any = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.anx, ptr %i.any, align 1, !tbaa !56
  %i.anz = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !56
  %i.aob = icmp eq i8 %i.aoa, -1
  %spec.store.select8.i.i = select i1 %i.aob, i32 7, i32 8
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anz, i64 1
  store ptr %i.aoc, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit1078.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.aod = load ptr, ptr %i.anq, align 8, !tbaa !99 ; 4 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 4
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !102
  %i.aog = icmp eq i32 %i.aof, %i.ano
  %i.aoh = load i32, ptr %i.aod, align 8, !tbaa !101 ; 8 uses
  %i.aoi = sub i32 %.568081160.i.i, %i.aoh        ; 6 uses
  br i1 %i.aog, label %bb.fb, label %bb.fh

bb.fb:                                            ; preds = %bb.fa
  %i.aoj = and i32 %i.aoi, 32768
  %i.aok = icmp eq i32 %i.aoj, 0
  br i1 %i.aok, label %bb.fc, label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  %i.aol = icmp ult i32 %i.aoi, %i.aoh
  %i.aom = select i1 %i.aol, i32 0, i32 %i.aoh
  %.73897.i.i = add i32 %i.aom, %.728961159.i.i
  %.57809.i.i = tail call i32 @llvm.umax.i32(i32 %i.aoi, i32 %i.aoh)
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !320
  store ptr %i.aoo, ptr %i.anq, align 8, !tbaa !99
  br label %bb.fd

bb.fd:                                            ; preds = %bb.ff, %bb.fc
  %.74898.i.i = phi i32 [ %.73897.i.i, %bb.fc ], [ %.75899.i.i, %bb.ff ]
  %.58810.i.i = phi i32 [ %.57809.i.i, %bb.fc ], [ %i.aop, %bb.ff ] ; 2 uses
  %.66.i.i = phi i32 [ %.641161.i.i, %bb.fc ], [ %.67.i.i, %bb.ff ]
end_hunk_1
begin_hunk_2_@opj_t1_cblk_encode_processor:bb.a
  %.pn.in.i1069.i.i = lshr i32 %i.apk, %.pn.in.v.i.i.i
  %i.apo = lshr i32 %i.apk, %i.anb
  %i.app = and i32 %i.apo, 170
  %i.apq = add i32 %i.anb, 19
  %i.apr = lshr i32 %i.apl, %i.apq
  %i.aps = and i32 %i.apr, 1
  %i.apt = add i32 %i.anb, 17
  %i.apu = lshr i32 %i.apm, %i.apt
  %i.apv = and i32 %i.apu, 4
  %.pn.i1070.i.i = and i32 %.pn.in.i1069.i.i, 16
  %i.apw = add i32 %i.anb, 16
  %i.apx = lshr i32 %i.apk, %i.apw
  %i.apy = and i32 %i.apx, 64
  %i.apz = or disjoint i32 %i.apy, %i.app
  %i.aqa = or disjoint i32 %i.apz, %.pn.i1070.i.i
  %.0.i1071.i.i = or disjoint i32 %i.aqa, %i.aps
  %i.aqb = or disjoint i32 %.0.i1071.i.i, %i.apv
  %i.aqc = zext nneg i32 %i.aqb to i64            ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.aqc
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !56
  %i.aqf = load i32, ptr %.31162.i.i, align 4, !tbaa !6 ; 4 uses
  %i.aqg = lshr i32 %i.aqf, 31                    ; 4 uses
  %i.aqh = and i32 %i.aqf, 2147483647
  %i.aqi = lshr i32 %i.aqh, %.0138393.i
  %i.aqj = and i32 %i.aqi, 127
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.aqk
  %i.aqm = and i32 %i.aqf, 127
  %i.aqn = zext nneg i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.aqn
  %.0.in.i1073.i.i = select i1 %.not.i1072.i.i, ptr %i.aqo, ptr %i.aql
  %.0.i1074.i.i = load i16, ptr %.0.in.i1073.i.i, align 2, !tbaa !323
  %i.aqp = sext i16 %.0.i1074.i.i to i32
  %i.aqq = add nsw i32 %.15.i, %i.aqp             ; 2 uses
  %i.aqr = zext i8 %i.aqe to i64
  %i.aqs = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.aqr ; 5 uses
  br i1 %i.mz, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.aqt = icmp eq i32 %.70.i.i, -559038737
  %i.aqu = add i32 %.70.i.i, -1
  %i.aqv = select i1 %i.aqt, i32 7, i32 %i.aqu    ; 3 uses
  %i.aqw = shl nuw i32 %i.aqg, %i.aqv
  %i.aqx = add i32 %i.aqw, %.79903.i.i            ; 2 uses
  %i.aqy = icmp eq i32 %i.aqv, 0
  br i1 %i.aqy, label %bb.fn, label %.loopexit.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.aqz = trunc i32 %i.aqx to i8
  %i.ara = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.aqz, ptr %i.ara, align 1, !tbaa !56
  %i.arb = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !56
  %i.ard = icmp eq i8 %i.arc, -1
  %spec.store.select9.i.i = select i1 %i.ard, i32 7, i32 8
  %i.are = getelementptr inbounds nuw i8, ptr %i.arb, i64 1
  store ptr %i.are, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit.i.i

bb.fo:                                            ; preds = %bb.fl
  %i.arf = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.aqc
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !56
  %i.arh = zext i8 %i.arg to i32
  %i.ari = load ptr, ptr %i.aqs, align 8, !tbaa !99 ; 4 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 4
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !102
  %i.arl = xor i32 %i.aqg, %i.arh
  %i.arm = icmp eq i32 %i.ark, %i.arl
  %i.arn = load i32, ptr %i.ari, align 8, !tbaa !101 ; 8 uses
  %i.aro = sub i32 %.61813.i.i, %i.arn            ; 6 uses
  br i1 %i.arm, label %bb.fp, label %bb.fv

bb.fp:                                            ; preds = %bb.fo
  %i.arp = and i32 %i.aro, 32768
  %i.arq = icmp eq i32 %i.arp, 0
  br i1 %i.arq, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  %i.arr = icmp ult i32 %i.aro, %i.arn
  %i.ars = select i1 %i.arr, i32 0, i32 %i.arn
  %.80904.i.i = add i32 %i.ars, %.79903.i.i
  %.62814.i.i = tail call i32 @llvm.umax.i32(i32 %i.aro, i32 %i.arn)
  %i.art = getelementptr inbounds nuw i8, ptr %i.ari, i64 8
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !320
  store ptr %i.aru, ptr %i.aqs, align 8, !tbaa !99
  br label %bb.fr

bb.fr:                                            ; preds = %bb.ft, %bb.fq
  %.81905.i.i = phi i32 [ %.80904.i.i, %bb.fq ], [ %.82.i.i, %bb.ft ]
  %.63815.i.i = phi i32 [ %.62814.i.i, %bb.fq ], [ %i.arv, %bb.ft ] ; 2 uses
  %.72.i.i = phi i32 [ %.70.i.i, %bb.fq ], [ %.73.i.i, %bb.ft ]
  %i.arv = shl i32 %.63815.i.i, 1                 ; 2 uses
  %i.arw = shl i32 %.81905.i.i, 1                 ; 2 uses
  %i.arx = add i32 %.72.i.i, -1                   ; 2 uses
  %i.ary = icmp eq i32 %i.arx, 0
  br i1 %i.ary, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i32 %i.arw, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.arz = load i32, ptr %.0169, align 8, !tbaa !94
  %i.asa = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.82.i.i = phi i32 [ %i.arz, %bb.fs ], [ %i.arw, %bb.fr ] ; 2 uses
  %.73.i.i = phi i32 [ %i.asa, %bb.fs ], [ %i.arx, %bb.fr ] ; 2 uses
  %i.asb = and i32 %.63815.i.i, 16384
  %i.asc = icmp eq i32 %i.asb, 0
  br i1 %i.asc, label %bb.fr, label %.loopexit.i.i, !llvm.loop !266

bb.fu:                                            ; preds = %bb.fp
  %i.asd = add i32 %i.arn, %.79903.i.i
  br label %.loopexit.i.i

bb.fv:                                            ; preds = %bb.fo
  %i.ase = icmp ult i32 %i.aro, %i.arn
  %i.asf = select i1 %i.ase, i32 %i.arn, i32 0
  %.83.i.i = add i32 %i.asf, %.79903.i.i
  %.64816.i.i = tail call i32 @llvm.umin.i32(i32 %i.aro, i32 %i.arn)
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ari, i64 16
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !321
  store ptr %i.ash, ptr %i.aqs, align 8, !tbaa !99
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fy, %bb.fv
  %.84.i.i = phi i32 [ %.83.i.i, %bb.fv ], [ %.85.i.i, %bb.fy ]
  %.65817.i.i = phi i32 [ %.64816.i.i, %bb.fv ], [ %i.asi, %bb.fy ] ; 2 uses
  %.74.i.i = phi i32 [ %.70.i.i, %bb.fv ], [ %.75.i.i, %bb.fy ]
  %i.asi = shl i32 %.65817.i.i, 1                 ; 2 uses
  %i.asj = shl i32 %.84.i.i, 1                    ; 2 uses
  %i.ask = add i32 %.74.i.i, -1                   ; 2 uses
  %i.asl = icmp eq i32 %i.ask, 0
  br i1 %i.asl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 %i.asj, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.asm = load i32, ptr %.0169, align 8, !tbaa !94
  %i.asn = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.85.i.i = phi i32 [ %i.asm, %bb.fx ], [ %i.asj, %bb.fw ] ; 2 uses
  %.75.i.i = phi i32 [ %i.asn, %bb.fx ], [ %i.ask, %bb.fw ] ; 2 uses
  %i.aso = and i32 %.65817.i.i, 16384
  %i.asp = icmp eq i32 %i.aso, 0
  br i1 %i.asp, label %bb.fw, label %.loopexit.i.i, !llvm.loop !267

.loopexit.i.i:                                    ; preds = %bb.fy, %bb.ft, %bb.fu, %bb.fn, %bb.fm
  %.87.i.i = phi i32 [ 0, %bb.fn ], [ %i.aqx, %bb.fm ], [ %.82.i.i, %bb.ft ], [ %i.asd, %bb.fu ], [ %.85.i.i, %bb.fy ] ; 2 uses
  %.67819.i.i = phi i32 [ %.61813.i.i, %bb.fn ], [ %.61813.i.i, %bb.fm ], [ %i.arv, %bb.ft ], [ %i.aro, %bb.fu ], [ %i.asi, %bb.fy ] ; 2 uses
  %.77.i.i = phi i32 [ %spec.store.select9.i.i, %bb.fn ], [ %i.aqv, %bb.fm ], [ %.73.i.i, %bb.ft ], [ %.70.i.i, %bb.fu ], [ %.75.i.i, %bb.fy ] ; 2 uses
  %i.asq = load i32, ptr %i.bo, align 8, !tbaa !91
  %i.asr = add i32 %i.asq, 2                      ; 2 uses
  %i.ass = shl i32 32, %i.anb
  %i.ast = load i32, ptr %i.amp, align 4, !tbaa !6
  %i.asu = or i32 %i.ast, %i.ass
  store i32 %i.asu, ptr %i.amp, align 4, !tbaa !6
  %i.asv = shl nuw nsw i32 %i.aqg, 19
  %i.asw = or disjoint i32 %i.asv, 16
  %i.asx = shl i32 %i.asw, %i.anb
  %i.asy = load i32, ptr %.29251172.i.i, align 4, !tbaa !6
  %i.asz = or i32 %i.asy, %i.asx
  store i32 %i.asz, ptr %.29251172.i.i, align 4, !tbaa !6
  %i.ata = shl i32 8, %i.anb
  %i.atb = load i32, ptr %i.amq, align 4, !tbaa !6
  %i.atc = or i32 %i.atb, %i.ata
  store i32 %i.atc, ptr %i.amq, align 4, !tbaa !6
  %i.atd = or i32 %i.amx, %i.ana
  %or.cond.not.i1075.i.i = icmp eq i32 %i.atd, 0
  br i1 %or.cond.not.i1075.i.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %.loopexit.i.i
  %i.ate = zext i32 %i.asr to i64
  %i.atf = sub nsw i64 0, %i.ate
  %i.atg = getelementptr inbounds [4 x i8], ptr %.29251172.i.i, i64 %i.atf ; 4 uses
  %i.ath = and i32 %i.aqf, -2147483648
  %i.ati = load i32, ptr %i.atg, align 4, !tbaa !6
  %i.atj = or i32 %i.ath, %i.ati
  %i.atk = or i32 %i.atj, 65536
  store i32 %i.atk, ptr %i.atg, align 4, !tbaa !6
  %i.atl = getelementptr inbounds i8, ptr %i.atg, i64 -4 ; 2 uses
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !6
  %i.atn = or i32 %i.atm, 131072
  store i32 %i.atn, ptr %i.atl, align 4, !tbaa !6
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atg, i64 4 ; 2 uses
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !6
  %i.atq = or i32 %i.atp, 32768
  store i32 %i.atq, ptr %i.ato, align 4, !tbaa !6
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %.loopexit.i.i
  %i.atr = icmp eq i32 %i.amx, 3
  br i1 %i.atr, label %bb.gb, label %opj_t1_update_flags.exit1076.i.i

bb.gb:                                            ; preds = %bb.ga
  %i.ats = zext i32 %i.asr to i64
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %.29251172.i.i, i64 %i.ats ; 4 uses
  %i.atu = shl nuw nsw i32 %i.aqg, 18
  %12 = load i32, ptr %i.att, align 4, !tbaa !6
  %13 = or i32 %i.atu, %12
  %i.atv = or i32 %13, 2
  store i32 %i.atv, ptr %i.att, align 4, !tbaa !6
  %i.atw = getelementptr inbounds i8, ptr %i.att, i64 -4 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !6
  %i.aty = or i32 %i.atx, 4
  store i32 %i.aty, ptr %i.atw, align 4, !tbaa !6
  %i.atz = getelementptr inbounds nuw i8, ptr %i.att, i64 4 ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !6
  %i.aub = or i32 %i.aua, 1
  store i32 %i.aub, ptr %i.atz, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit1076.i.i

opj_t1_update_flags.exit1076.i.i:                 ; preds = %bb.gb, %bb.ga, %.loopexit1078.i.i
  %.17.i = phi i32 [ %i.aqq, %bb.gb ], [ %i.aqq, %bb.ga ], [ %.15.i, %.loopexit1078.i.i ]
  %.13919.i.i = phi ptr [ %i.aqs, %bb.gb ], [ %i.aqs, %bb.ga ], [ %i.anq, %.loopexit1078.i.i ]
  %.88.i.i = phi i32 [ %.87.i.i, %bb.gb ], [ %.87.i.i, %bb.ga ], [ %.79903.i.i, %.loopexit1078.i.i ]
  %.68820.i.i = phi i32 [ %.67819.i.i, %bb.gb ], [ %.67819.i.i, %bb.ga ], [ %.61813.i.i, %.loopexit1078.i.i ]
  %.78.i.i = phi i32 [ %.77.i.i, %bb.gb ], [ %.77.i.i, %bb.ga ], [ %.70.i.i, %.loopexit1078.i.i ]
  %i.auc = shl i32 2097152, %i.anb
  %i.aud = load i32, ptr %.29251172.i.i, align 4, !tbaa !6
  %i.aue = or i32 %i.aud, %i.auc                  ; 2 uses
  store i32 %i.aue, ptr %.29251172.i.i, align 4, !tbaa !6
  %.pre1232.i.i = load i32, ptr %i.bq, align 4, !tbaa !92 ; 2 uses
  br label %bb.gc

bb.gc:                                            ; preds = %opj_t1_update_flags.exit1076.i.i, %bb.ew, %bb.ev
  %.16.i = phi i32 [ %.15.i, %bb.ew ], [ %.17.i, %opj_t1_update_flags.exit1076.i.i ], [ %.15.i, %bb.ev ] ; 2 uses
  %i.auf = phi i32 [ %i.amu, %bb.ew ], [ %.pre1232.i.i, %opj_t1_update_flags.exit1076.i.i ], [ %i.amu, %bb.ev ] ; 2 uses
  %i.aug = phi i32 [ %i.amv, %bb.ew ], [ %.pre1232.i.i, %opj_t1_update_flags.exit1076.i.i ], [ %i.amv, %bb.ev ] ; 4 uses
  %i.auh = phi i32 [ %i.amw, %bb.ew ], [ %i.aue, %opj_t1_update_flags.exit1076.i.i ], [ %i.amw, %bb.ev ]
  %.14920.i.i = phi ptr [ %.129181158.i.i, %bb.ew ], [ %.13919.i.i, %opj_t1_update_flags.exit1076.i.i ], [ %.129181158.i.i, %bb.ev ] ; 2 uses
  %.89.i.i = phi i32 [ %.728961159.i.i, %bb.ew ], [ %.88.i.i, %opj_t1_update_flags.exit1076.i.i ], [ %.728961159.i.i, %bb.ev ] ; 2 uses
  %.69821.i.i = phi i32 [ %.568081160.i.i, %bb.ew ], [ %.68820.i.i, %opj_t1_update_flags.exit1076.i.i ], [ %.568081160.i.i, %bb.ev ] ; 2 uses
  %.79.i.i = phi i32 [ %.641161.i.i, %bb.ew ], [ %.78.i.i, %opj_t1_update_flags.exit1076.i.i ], [ %.641161.i.i, %bb.ev ] ; 2 uses
  %i.aui = add nuw i32 %.01163.i.i, 1             ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.31162.i.i, i64 4 ; 2 uses
  %i.auk = icmp ult i32 %i.aui, %i.aug
  br i1 %i.auk, label %bb.ev, label %.loopexit1080.loopexit.i.i, !llvm.loop !268

.loopexit1080.loopexit.i.i:                       ; preds = %bb.gc
  %.pre1233.i.i = load i32, ptr %i.bo, align 8, !tbaa !91
  br label %.loopexit1080.i.i

.loopexit1080.i.i:                                ; preds = %.loopexit1080.loopexit.i.i, %bb.eu, %.preheader.i.i
  %.14.i = phi i32 [ %.13.i, %bb.eu ], [ %.16.i, %.loopexit1080.loopexit.i.i ], [ %.13.i, %.preheader.i.i ] ; 2 uses
  %i.aul = phi i32 [ %i.ami, %bb.eu ], [ %.pre1233.i.i, %.loopexit1080.loopexit.i.i ], [ %i.ami, %.preheader.i.i ] ; 2 uses
  %i.aum = phi i32 [ %i.amj, %bb.eu ], [ %i.auf, %.loopexit1080.loopexit.i.i ], [ %i.amj, %.preheader.i.i ]
  %i.aun = phi i32 [ %i.amj, %bb.eu ], [ %i.aug, %.loopexit1080.loopexit.i.i ], [ %i.amk, %.preheader.i.i ]
  %i.auo = phi i32 [ %i.amj, %bb.eu ], [ %i.aug, %.loopexit1080.loopexit.i.i ], [ %i.aml, %.preheader.i.i ]
  %.15921.i.i = phi ptr [ %.119171174.i.i, %bb.eu ], [ %.14920.i.i, %.loopexit1080.loopexit.i.i ], [ %.119171174.i.i, %.preheader.i.i ] ; 2 uses
  %.90.i.i = phi i32 [ %.718951175.i.i, %bb.eu ], [ %.89.i.i, %.loopexit1080.loopexit.i.i ], [ %.718951175.i.i, %.preheader.i.i ] ; 2 uses
  %.70822.i.i = phi i32 [ %.558071176.i.i, %bb.eu ], [ %.69821.i.i, %.loopexit1080.loopexit.i.i ], [ %.558071176.i.i, %.preheader.i.i ] ; 2 uses
  %.80.i.i = phi i32 [ %.631177.i.i, %bb.eu ], [ %.79.i.i, %.loopexit1080.loopexit.i.i ], [ %.631177.i.i, %.preheader.i.i ] ; 2 uses
  %.4.i.i = phi ptr [ %i.amt, %bb.eu ], [ %i.auj, %.loopexit1080.loopexit.i.i ], [ %.21178.i.i, %.preheader.i.i ]
  %i.aup = add nuw i32 %.19281171.i.i, 1          ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.29251172.i.i, i64 4
  %i.aur = icmp ult i32 %i.aup, %i.aul
  br i1 %i.aur, label %bb.et, label %opj_t1_enc_sigpass.exit.i, !llvm.loop !269

opj_t1_enc_sigpass.exit.i:                        ; preds = %.loopexit1080.i.i, %.preheader1081.i.i, %._crit_edge1142.i.i
  %.18.i = phi i32 [ %.12.i, %.preheader1081.i.i ], [ %.12.i, %._crit_edge1142.i.i ], [ %.14.i, %.loopexit1080.i.i ]
  %.16922.i.i = phi ptr [ %.0906.lcssa.i.i, %.preheader1081.i.i ], [ %.0906.lcssa.i.i, %._crit_edge1142.i.i ], [ %.15921.i.i, %.loopexit1080.i.i ]
  %.91.i.i = phi i32 [ %.0824.lcssa.i.i, %.preheader1081.i.i ], [ %.0824.lcssa.i.i, %._crit_edge1142.i.i ], [ %.90.i.i, %.loopexit1080.i.i ]
  %.71823.i.i = phi i32 [ %.0752.lcssa.i.i, %.preheader1081.i.i ], [ %.0752.lcssa.i.i, %._crit_edge1142.i.i ], [ %.70822.i.i, %.loopexit1080.i.i ]
  %.81.i.i = phi i32 [ %.0747.lcssa.i.i, %.preheader1081.i.i ], [ %.0747.lcssa.i.i, %._crit_edge1142.i.i ], [ %.80.i.i, %.loopexit1080.i.i ]
  store ptr %.16922.i.i, ptr %i.lt, align 8, !tbaa !96
  store i32 %.91.i.i, ptr %.0169, align 8, !tbaa !94
  store i32 %.71823.i.i, ptr %i.lu, align 4, !tbaa !97
  store i32 %.81.i.i, ptr %i.lv, align 8, !tbaa !93
  br label %bb.nc

bb.gd:                                            ; preds = %bb.aa
  %i.aus = load ptr, ptr %i.lw, align 8, !tbaa !29
  %i.aut = load i32, ptr %i.bo, align 8, !tbaa !91 ; 4 uses
  %i.auu = add i32 %i.aut, 3
  %i.auv = zext i32 %i.auu to i64
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.aus, i64 %i.auv ; 2 uses
  %i.aux = load ptr, ptr %i.lt, align 8, !tbaa !96 ; 3 uses
  %i.auy = load i32, ptr %.0169, align 8, !tbaa !94 ; 3 uses
  %i.auz = load i32, ptr %i.lu, align 4, !tbaa !97 ; 3 uses
  %i.ava = load i32, ptr %i.lv, align 8, !tbaa !93 ; 3 uses
  %i.avb = load ptr, ptr %i.iu, align 8, !tbaa !28 ; 2 uses
  br i1 %.not1184.i.i, label %._crit_edge610.i.i, label %.preheader580.lr.ph.i.i

.preheader580.lr.ph.i.i:                          ; preds = %bb.gd
  %.not.i548.i.i = icmp eq i32 %.0138393.i, 0     ; 4 uses
  %.not687.i.i = icmp eq i32 %i.aut, 0
  br i1 %.not687.i.i, label %opj_t1_enc_refpass.exit.i, label %.preheader580.i.i

.preheader580.i.i:                                ; preds = %.preheader580.lr.ph.i.i, %._crit_edge.i168.i
  %.19.i = phi i32 [ %.26.i, %._crit_edge.i168.i ], [ 0, %.preheader580.lr.ph.i.i ] ; 2 uses
  %i.avc = phi i32 [ %i.bfx, %._crit_edge.i168.i ], [ %i.nh, %.preheader580.lr.ph.i.i ]
  %i.avd = phi i32 [ %i.bfy, %._crit_edge.i168.i ], [ %i.aut, %.preheader580.lr.ph.i.i ] ; 2 uses
  %i.ave = phi i32 [ %i.bfz, %._crit_edge.i168.i ], [ 1, %.preheader580.lr.ph.i.i ]
  %.0391609.i.i = phi ptr [ %.1392.lcssa.i.i, %._crit_edge.i168.i ], [ %i.avb, %.preheader580.lr.ph.i.i ] ; 2 uses
  %.0395608.i.i = phi i32 [ %.1396.lcssa.i.i, %._crit_edge.i168.i ], [ %i.ava, %.preheader580.lr.ph.i.i ] ; 2 uses
  %.0400607.i.i = phi i32 [ %.1401.lcssa.i.i, %._crit_edge.i168.i ], [ %i.auz, %.preheader580.lr.ph.i.i ] ; 2 uses
  %.0437606.i.i = phi i32 [ %.1438.lcssa.i.i, %._crit_edge.i168.i ], [ %i.auy, %.preheader580.lr.ph.i.i ] ; 2 uses
  %.0474605.i.i = phi ptr [ %.1475.lcssa.i.i, %._crit_edge.i168.i ], [ %i.aux, %.preheader580.lr.ph.i.i ] ; 2 uses
  %.0486604.i.i = phi ptr [ %i.bgb, %._crit_edge.i168.i ], [ %i.auw, %.preheader580.lr.ph.i.i ] ; 2 uses
  %.0489603.i.i = phi i32 [ %i.bga, %._crit_edge.i168.i ], [ 0, %.preheader580.lr.ph.i.i ]
  %.not688.i.i = icmp eq i32 %i.ave, 0
  br i1 %.not688.i.i, label %._crit_edge.i168.i, label %.lr.ph.i160.i

.lr.ph.i160.i:                                    ; preds = %.preheader580.i.i, %bb.in
  %.20.i = phi i32 [ %.25.i, %bb.in ], [ %.19.i, %.preheader580.i.i ] ; 3 uses
  %i.avf = phi i32 [ %i.bfs, %bb.in ], [ %i.avd, %.preheader580.i.i ]
  %.1392597.i.i = phi ptr [ %i.bfv, %bb.in ], [ %.0391609.i.i, %.preheader580.i.i ] ; 5 uses
  %.1396596.i.i = phi i32 [ %.26.i166.i, %bb.in ], [ %.0395608.i.i, %.preheader580.i.i ] ; 7 uses
  %.1401595.i.i = phi i32 [ %.26426.i.i, %bb.in ], [ %.0400607.i.i, %.preheader580.i.i ] ; 5 uses
  %.1438594.i.i = phi i32 [ %.34471.i.i, %bb.in ], [ %.0437606.i.i, %.preheader580.i.i ] ; 6 uses
  %.1475593.i.i = phi ptr [ %.6480.i.i, %bb.in ], [ %.0474605.i.i, %.preheader580.i.i ] ; 2 uses
  %.1487592.i.i = phi ptr [ %i.bfu, %bb.in ], [ %.0486604.i.i, %.preheader580.i.i ] ; 3 uses
  %.0490591.i.i = phi i32 [ %i.bft, %bb.in ], [ 0, %.preheader580.i.i ]
  %i.avg = load i32, ptr %.1487592.i.i, align 4, !tbaa !6 ; 16 uses
  %i.avh = and i32 %i.avg, 9360
  %i.avi = icmp eq i32 %i.avh, 0
  %i.avj = and i32 %i.avg, 1226833920
  %i.avk = icmp eq i32 %i.avj, 1226833920
  %or.cond.i161.i = or i1 %i.avi, %i.avk
  br i1 %or.cond.i161.i, label %bb.in, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph.i160.i
  %i.avl = and i32 %i.avg, 2097168
  %i.avm = icmp eq i32 %i.avl, 16
  br i1 %i.avm, label %bb.gf, label %bb.gt

bb.gf:                                            ; preds = %bb.ge
  %i.avn = and i32 %i.avg, 495
  %.not.i.i187.i = icmp eq i32 %i.avn, 0
  %i.avo = select i1 %.not.i.i187.i, i64 14, i64 15
  %i.avp = and i32 %i.avg, 1048576
  %.not4.i.i.i = icmp eq i32 %i.avp, 0
  %i.avq = select i1 %.not4.i.i.i, i64 %i.avo, i64 16
  %i.avr = load i32, ptr %.1392597.i.i, align 4, !tbaa !6 ; 2 uses
  %i.avs = and i32 %i.avr, 2147483647             ; 2 uses
  %i.avt = lshr i32 %i.avs, %.0138393.i
  %i.avu = and i32 %i.avt, 127
  %i.avv = zext nneg i32 %i.avu to i64
  %i.avw = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_ref, i64 %i.avv
  %i.avx = and i32 %i.avr, 127
  %i.avy = zext nneg i32 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_ref0, i64 %i.avy
  %.0.in.i.i188.i = select i1 %.not.i548.i.i, ptr %i.avz, ptr %i.avw
  %.0.i.i189.i = load i16, ptr %.0.in.i.i188.i, align 2, !tbaa !323
  %i.awa = sext i16 %.0.i.i189.i to i32
  %i.awb = add nsw i32 %.20.i, %i.awa
  %i.awc = and i32 %i.avs, %i.ng
  %.not539.i.i = icmp ne i32 %i.awc, 0
  %i.awd = zext i1 %.not539.i.i to i32            ; 2 uses
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.avq ; 4 uses
  br i1 %i.mz, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.awf = icmp eq i32 %.1396596.i.i, -559038737
  %i.awg = add i32 %.1396596.i.i, -1
  %i.awh = select i1 %i.awf, i32 7, i32 %i.awg    ; 3 uses
  %i.awi = shl nuw i32 %i.awd, %i.awh
  %i.awj = add i32 %i.awi, %.1438594.i.i          ; 2 uses
  %i.awk = icmp eq i32 %i.awh, 0
  br i1 %i.awk, label %bb.gh, label %.loopexit578.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.awl = trunc i32 %i.awj to i8
  %i.awm = load ptr, ptr %i.md, align 8, !tbaa !95
  store i8 %i.awl, ptr %i.awm, align 1, !tbaa !56
  %i.awn = load ptr, ptr %i.md, align 8, !tbaa !95 ; 2 uses
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !56
  %i.awp = icmp eq i8 %i.awo, -1
  %spec.store.select1.i191.i = select i1 %i.awp, i32 7, i32 8
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awn, i64 1
  store ptr %i.awq, ptr %i.md, align 8, !tbaa !95
  br label %.loopexit578.i.i

bb.gi:                                            ; preds = %bb.gf
  %i.awr = load ptr, ptr %i.awe, align 8, !tbaa !99 ; 4 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 4
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !102
  %i.awu = icmp eq i32 %i.awt, %i.awd
  %i.awv = load i32, ptr %i.awr, align 8, !tbaa !101 ; 8 uses
  %i.aww = sub i32 %.1401595.i.i, %i.awv          ; 6 uses
  br i1 %i.awu, label %bb.gj, label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  %i.awx = and i32 %i.aww, 32768
  %i.awy = icmp eq i32 %i.awx, 0
  br i1 %i.awy, label %bb.gk, label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.awz = icmp ult i32 %i.aww, %i.awv
  %i.axa = select i1 %i.awz, i32 0, i32 %i.awv
  %.2439.i.i = add i32 %i.axa, %.1438594.i.i
  %.2402.i.i = tail call i32 @llvm.umax.i32(i32 %i.aww, i32 %i.awv)
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !320
  store ptr %i.axc, ptr %i.awe, align 8, !tbaa !99
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gn, %bb.gk
  %.3440.i.i = phi i32 [ %.2439.i.i, %bb.gk ], [ %.4441.i.i, %bb.gn ]
  %.3403.i.i = phi i32 [ %.2402.i.i, %bb.gk ], [ %i.axd, %bb.gn ] ; 2 uses
end_hunk_2
begin_hunk_3_@opj_t1_cblk_encode_processor:bb.a
  br i1 %i.btq, label %bb.li, label %.loopexit674.i.i, !llvm.loop !291

.loopexit674.i.i:                                 ; preds = %bb.lk, %bb.lf, %bb.lg
  %.30537.i.i = phi i32 [ %.26533.i.i, %bb.lf ], [ %i.bte, %bb.lg ], [ %.29536.i.i, %bb.lk ] ; 2 uses
  %.22481.i.i = phi i32 [ %i.bsw, %bb.lf ], [ %i.bsp, %bb.lg ], [ %i.btj, %bb.lk ] ; 2 uses
  %.22.i231.i = phi i32 [ %.19.i244.i, %bb.lf ], [ %.17706.i.i, %bb.lg ], [ %.21.i230.i, %bb.lk ] ; 2 uses
  br i1 %.not633.i.i, label %.loopexit674..thread651_crit_edge.i.i, label %opj_t1_update_flags.exit.i197.i

.loopexit674..thread651_crit_edge.i.i:            ; preds = %.loopexit674.i.i
  %.pre.i232.i = load i32, ptr %.1449718.i.i, align 4, !tbaa !6
  br label %.thread651.i.i

.thread651.i.i:                                   ; preds = %.loopexit674..thread651_crit_edge.i.i, %bb.ky
  %i.btr = phi i32 [ %.pre.i232.i, %.loopexit674..thread651_crit_edge.i.i ], [ %i.brw, %bb.ky ] ; 3 uses
  %.23659.i.i = phi i32 [ %.22.i231.i, %.loopexit674..thread651_crit_edge.i.i ], [ %.17706.i.i, %bb.ky ] ; 3 uses
  %.23482658.i.i = phi i32 [ %.22481.i.i, %.loopexit674..thread651_crit_edge.i.i ], [ %.17476705.i.i, %bb.ky ]
  %.31538657.i.i = phi i32 [ %.30537.i.i, %.loopexit674..thread651_crit_edge.i.i ], [ %.23530704.i.i, %bb.ky ] ; 3 uses
  %i.bts = load i32, ptr %i.brp, align 4, !tbaa !6
  %i.btt = load i32, ptr %i.brq, align 4, !tbaa !6
  %i.btu = icmp eq i32 %.0445707.i.i, 0           ; 2 uses
  %i.btv = add nuw nsw i32 %.pre812.i.i, 12
  %.pn.in.v.i.i233.i = select i1 %i.btu, i32 14, i32 %i.btv
  %.pn.in.i.i234.i = lshr i32 %i.btr, %.pn.in.v.i.i233.i
  %i.btw = lshr i32 %i.btr, %.pre812.i.i
  %i.btx = and i32 %i.btw, 170
  %i.bty = add nuw nsw i32 %.pre812.i.i, 19
  %i.btz = lshr i32 %i.bts, %i.bty
  %i.bua = and i32 %i.btz, 1
  %i.bub = add nuw nsw i32 %.pre812.i.i, 17
  %i.buc = lshr i32 %i.btt, %i.bub
  %i.bud = and i32 %i.buc, 4
  %.pn.i.i235.i = and i32 %.pn.in.i.i234.i, 16
  %i.bue = or disjoint i32 %.pre812.i.i, 16
  %i.buf = lshr i32 %i.btr, %i.bue
  %i.bug = and i32 %i.buf, 64
  %i.buh = or disjoint i32 %i.bug, %i.btx
  %i.bui = or disjoint i32 %i.buh, %.pn.i.i235.i
  %.0.i.i236.i = or disjoint i32 %i.bui, %i.bua
  %i.buj = or disjoint i32 %.0.i.i236.i, %i.bud
  %i.buk = load i32, ptr %.0444708.i.i, align 4, !tbaa !6 ; 4 uses
  %i.bul = and i32 %i.buk, 2147483647
  %i.bum = lshr i32 %i.bul, %.0138393.i
  %i.bun = and i32 %i.bum, 127
  %i.buo = zext nneg i32 %i.bun to i64
  %i.bup = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.buo
  %i.buq = and i32 %i.buk, 127
  %i.bur = zext nneg i32 %i.buq to i64
  %i.bus = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.bur
  %.0.in.i.i237.i = select i1 %.not.i.i194.i, ptr %i.bus, ptr %i.bup
  %.0.i636.i.i = load i16, ptr %.0.in.i.i237.i, align 2, !tbaa !323
  %i.but = sext i16 %.0.i636.i.i to i32
  %i.buu = add nsw i32 %.39.i, %i.but             ; 2 uses
  %i.buv = zext nneg i32 %i.buj to i64            ; 2 uses
  %i.buw = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.buv
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !56
  %i.buy = zext i8 %i.bux to i64
  %i.buz = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.buy ; 5 uses
  %i.bva = lshr i32 %i.buk, 31                    ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.buv
  %i.bvc = load i8, ptr %i.bvb, align 1, !tbaa !56
  %i.bvd = zext i8 %i.bvc to i32
  %i.bve = load ptr, ptr %i.buz, align 8, !tbaa !99 ; 4 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 4
  %i.bvg = load i32, ptr %i.bvf, align 4, !tbaa !102
  %i.bvh = xor i32 %i.bva, %i.bvd
  %i.bvi = icmp eq i32 %i.bvg, %i.bvh
  %i.bvj = load i32, ptr %i.bve, align 8, !tbaa !101 ; 8 uses
  %i.bvk = sub i32 %.23482658.i.i, %i.bvj         ; 6 uses
  br i1 %i.bvi, label %bb.ll, label %bb.lr

bb.ll:                                            ; preds = %.thread651.i.i
  %i.bvl = and i32 %i.bvk, 32768
  %i.bvm = icmp eq i32 %i.bvl, 0
  br i1 %i.bvm, label %bb.lm, label %bb.lq

bb.lm:                                            ; preds = %bb.ll
  %i.bvn = icmp ult i32 %i.bvk, %i.bvj
  %i.bvo = select i1 %i.bvn, i32 0, i32 %i.bvj
  %.32539.i.i = add i32 %i.bvo, %.31538657.i.i
  %.24483.i.i = tail call i32 @llvm.umax.i32(i32 %i.bvk, i32 %i.bvj)
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bve, i64 8
  %i.bvq = load ptr, ptr %i.bvp, align 8, !tbaa !320
  store ptr %i.bvq, ptr %i.buz, align 8, !tbaa !99
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lp, %bb.lm
  %.33540.i.i = phi i32 [ %.32539.i.i, %bb.lm ], [ %.34541.i.i, %bb.lp ]
  %.25484.i.i = phi i32 [ %.24483.i.i, %bb.lm ], [ %i.bvr, %bb.lp ] ; 2 uses
  %.24.i241.i = phi i32 [ %.23659.i.i, %bb.lm ], [ %.25.i242.i, %bb.lp ]
  %i.bvr = shl i32 %.25484.i.i, 1                 ; 2 uses
  %i.bvs = shl i32 %.33540.i.i, 1                 ; 2 uses
  %i.bvt = add i32 %.24.i241.i, -1                ; 2 uses
  %i.bvu = icmp eq i32 %i.bvt, 0
  br i1 %i.bvu, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  store i32 %i.bvs, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.bvv = load i32, ptr %.0169, align 8, !tbaa !94
  %i.bvw = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.34541.i.i = phi i32 [ %i.bvv, %bb.lo ], [ %i.bvs, %bb.ln ] ; 2 uses
  %.25.i242.i = phi i32 [ %i.bvw, %bb.lo ], [ %i.bvt, %bb.ln ] ; 2 uses
  %i.bvx = and i32 %.25484.i.i, 16384
  %i.bvy = icmp eq i32 %i.bvx, 0
  br i1 %i.bvy, label %bb.ln, label %.loopexit672.i.i, !llvm.loop !292

bb.lq:                                            ; preds = %bb.ll
  %i.bvz = add i32 %i.bvj, %.31538657.i.i
  br label %.loopexit672.i.i

bb.lr:                                            ; preds = %.thread651.i.i
  %i.bwa = icmp ult i32 %i.bvk, %i.bvj
  %i.bwb = select i1 %i.bwa, i32 %i.bvj, i32 0
  %.35542.i.i = add i32 %i.bwb, %.31538657.i.i
  %.26485.i.i = tail call i32 @llvm.umin.i32(i32 %i.bvk, i32 %i.bvj)
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bve, i64 16
  %i.bwd = load ptr, ptr %i.bwc, align 8, !tbaa !321
  store ptr %i.bwd, ptr %i.buz, align 8, !tbaa !99
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lu, %bb.lr
  %.36543.i.i = phi i32 [ %.35542.i.i, %bb.lr ], [ %.37544.i.i, %bb.lu ]
  %.27486.i.i = phi i32 [ %.26485.i.i, %bb.lr ], [ %i.bwe, %bb.lu ] ; 2 uses
  %.26.i238.i = phi i32 [ %.23659.i.i, %bb.lr ], [ %.27.i239.i, %bb.lu ]
  %i.bwe = shl i32 %.27486.i.i, 1                 ; 2 uses
  %i.bwf = shl i32 %.36543.i.i, 1                 ; 2 uses
  %i.bwg = add i32 %.26.i238.i, -1                ; 2 uses
  %i.bwh = icmp eq i32 %i.bwg, 0
  br i1 %i.bwh, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  store i32 %i.bwf, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef %.0169) #12
  %i.bwi = load i32, ptr %.0169, align 8, !tbaa !94
  %i.bwj = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.37544.i.i = phi i32 [ %i.bwi, %bb.lt ], [ %i.bwf, %bb.ls ] ; 2 uses
  %.27.i239.i = phi i32 [ %i.bwj, %bb.lt ], [ %i.bwg, %bb.ls ] ; 2 uses
  %i.bwk = and i32 %.27486.i.i, 16384
  %i.bwl = icmp eq i32 %i.bwk, 0
  br i1 %i.bwl, label %bb.ls, label %.loopexit672.i.i, !llvm.loop !293

.loopexit672.i.i:                                 ; preds = %bb.lu, %bb.lp, %bb.lq
  %.38545.i.i = phi i32 [ %.34541.i.i, %bb.lp ], [ %i.bvz, %bb.lq ], [ %.37544.i.i, %bb.lu ] ; 2 uses
  %.28487.i.i = phi i32 [ %i.bvr, %bb.lp ], [ %i.bvk, %bb.lq ], [ %i.bwe, %bb.lu ] ; 2 uses
  %.28.i.i = phi i32 [ %.25.i242.i, %bb.lp ], [ %.23659.i.i, %bb.lq ], [ %.27.i239.i, %bb.lu ] ; 2 uses
  %i.bwm = and i1 %i.mb, %i.btu
  %i.bwn = zext i1 %i.bwm to i32
  %i.bwo = load i32, ptr %i.bo, align 8, !tbaa !91
  %i.bwp = add i32 %i.bwo, 2                      ; 2 uses
  %i.bwq = shl nuw nsw i32 32, %.pre812.i.i
  %i.bwr = load i32, ptr %i.brp, align 4, !tbaa !6
  %i.bws = or i32 %i.bwr, %i.bwq
  store i32 %i.bws, ptr %i.brp, align 4, !tbaa !6
  %i.bwt = shl nuw nsw i32 %i.bva, 19
  %i.bwu = or disjoint i32 %i.bwt, 16
  %i.bwv = shl nuw nsw i32 %i.bwu, %.pre812.i.i
  %i.bww = load i32, ptr %.1449718.i.i, align 4, !tbaa !6
  %i.bwx = or i32 %i.bww, %i.bwv
  store i32 %i.bwx, ptr %.1449718.i.i, align 4, !tbaa !6
  %i.bwy = shl nuw nsw i32 8, %.pre812.i.i
  %i.bwz = load i32, ptr %i.brq, align 4, !tbaa !6
  %i.bxa = or i32 %i.bwz, %i.bwy
  store i32 %i.bxa, ptr %i.brq, align 4, !tbaa !6
  %i.bxb = or i32 %.0445707.i.i, %i.bwn
  %or.cond.not.i.i240.i = icmp eq i32 %i.bxb, 0
  br i1 %or.cond.not.i.i240.i, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %.loopexit672.i.i
  %i.bxc = zext i32 %i.bwp to i64
  %i.bxd = sub nsw i64 0, %i.bxc
  %i.bxe = getelementptr inbounds [4 x i8], ptr %.1449718.i.i, i64 %i.bxd ; 4 uses
  %i.bxf = and i32 %i.buk, -2147483648
  %i.bxg = load i32, ptr %i.bxe, align 4, !tbaa !6
  %i.bxh = or i32 %i.bxf, %i.bxg
  %i.bxi = or i32 %i.bxh, 65536
  store i32 %i.bxi, ptr %i.bxe, align 4, !tbaa !6
  %i.bxj = getelementptr inbounds i8, ptr %i.bxe, i64 -4 ; 2 uses
  %i.bxk = load i32, ptr %i.bxj, align 4, !tbaa !6
  %i.bxl = or i32 %i.bxk, 131072
  store i32 %i.bxl, ptr %i.bxj, align 4, !tbaa !6
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxe, i64 4 ; 2 uses
  %i.bxn = load i32, ptr %i.bxm, align 4, !tbaa !6
  %i.bxo = or i32 %i.bxn, 32768
  store i32 %i.bxo, ptr %i.bxm, align 4, !tbaa !6
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %.loopexit672.i.i
  %i.bxp = icmp eq i32 %.0445707.i.i, 3
  br i1 %i.bxp, label %bb.lx, label %opj_t1_update_flags.exit.i197.i

bb.lx:                                            ; preds = %bb.lw
  %i.bxq = zext i32 %i.bwp to i64
  %i.bxr = getelementptr inbounds nuw [4 x i8], ptr %.1449718.i.i, i64 %i.bxq ; 4 uses
  %i.bxs = shl nuw nsw i32 %i.bva, 18
  %14 = load i32, ptr %i.bxr, align 4, !tbaa !6
  %15 = or i32 %i.bxs, %14
  %i.bxt = or i32 %15, 2
  store i32 %i.bxt, ptr %i.bxr, align 4, !tbaa !6
  %i.bxu = getelementptr inbounds i8, ptr %i.bxr, i64 -4 ; 2 uses
  %i.bxv = load i32, ptr %i.bxu, align 4, !tbaa !6
  %i.bxw = or i32 %i.bxv, 4
  store i32 %i.bxw, ptr %i.bxu, align 4, !tbaa !6
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxr, i64 4 ; 2 uses
  %i.bxy = load i32, ptr %i.bxx, align 4, !tbaa !6
  %i.bxz = or i32 %i.bxy, 1
  store i32 %i.bxz, ptr %i.bxx, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit.i197.i

opj_t1_update_flags.exit.i197.i:                  ; preds = %bb.lx, %bb.lw, %.loopexit674.i.i, %bb.kz
  %.40.i = phi i32 [ %i.buu, %bb.lx ], [ %i.buu, %bb.lw ], [ %.39.i, %.loopexit674.i.i ], [ %.39.i, %bb.kz ] ; 2 uses
  %.5560.i.i = phi ptr [ %i.buz, %bb.lx ], [ %i.buz, %bb.lw ], [ %i.bsg, %.loopexit674.i.i ], [ %.3558703.i.i, %bb.kz ] ; 2 uses
  %.39546.i.i = phi i32 [ %.38545.i.i, %bb.lx ], [ %.38545.i.i, %bb.lw ], [ %.30537.i.i, %.loopexit674.i.i ], [ %.23530704.i.i, %bb.kz ] ; 2 uses
  %.29488.i.i = phi i32 [ %.28487.i.i, %bb.lx ], [ %.28487.i.i, %bb.lw ], [ %.22481.i.i, %.loopexit674.i.i ], [ %.17476705.i.i, %bb.kz ] ; 2 uses
  %.29.i198.i = phi i32 [ %.28.i.i, %bb.lx ], [ %.28.i.i, %bb.lw ], [ %.22.i231.i, %.loopexit674.i.i ], [ %.17706.i.i, %bb.kz ] ; 2 uses
  %i.bya = shl nuw nsw i32 2097152, %.pre812.i.i
  %i.byb = xor i32 %i.bya, -1
  %i.byc = load i32, ptr %.1449718.i.i, align 4, !tbaa !6
  %i.byd = and i32 %i.byc, %i.byb                 ; 2 uses
  store i32 %i.byd, ptr %.1449718.i.i, align 4, !tbaa !6
  %i.bye = getelementptr inbounds nuw i8, ptr %.0444708.i.i, i64 4
  %i.byf = add nuw nsw i32 %.0445707.i.i, 1       ; 2 uses
  %exitcond.not.i199.i = icmp eq i32 %i.byf, 4
  br i1 %exitcond.not.i199.i, label %.loopexit677.i.i, label %bb.ky, !llvm.loop !294

.loopexit677.sink.split.i.i:                      ; preds = %bb.kx, %bb.kw, %bb.kv, %bb.ku
  %.sink.i.i = phi i32 [ %i.brs, %bb.ku ], [ %i.bru, %bb.kw ], [ %i.brv, %bb.kx ], [ %i.brt, %bb.kv ]
  %.1447848.ph.i.i = phi i32 [ 0, %bb.ku ], [ 2, %bb.kw ], [ 3, %bb.kx ], [ 1, %bb.kv ]
  %.3845.ph.i.i = phi ptr [ %.3846.i.i, %bb.ku ], [ %.2452.lcssa.i.i, %bb.kw ], [ %.2452.lcssa.i.i, %bb.kx ], [ %.2452.lcssa.i.i, %bb.kv ]
  %.6561.ph.i.i = phi ptr [ %.2557837.i.i, %bb.ku ], [ %i.ly, %bb.kw ], [ %i.ly, %bb.kx ], [ %i.ly, %bb.kv ]
  %.40547.ph.i.i = phi i32 [ %.22529839.i.i, %bb.ku ], [ %.22529.i.i, %bb.kw ], [ %.22529.i.i, %bb.kx ], [ %.22529.i.i, %bb.kv ]
  %.30489.ph.i.i = phi i32 [ %.16475841.i.i, %bb.ku ], [ %.16475.i.i, %bb.kw ], [ %.16475.i.i, %bb.kx ], [ %.16475.i.i, %bb.kv ]
  %.30.ph.i.i = phi i32 [ %.16843.i.i, %bb.ku ], [ %.16.i252.i, %bb.kw ], [ %.16.i252.i, %bb.kx ], [ %.16.i252.i, %bb.kv ]
  store i32 %.sink.i.i, ptr %.1449718.i.i, align 4, !tbaa !6
  br label %.loopexit677.i.i

.loopexit677.i.i:                                 ; preds = %opj_t1_update_flags.exit.i197.i, %.loopexit677.sink.split.i.i, %bb.kt
  %.41.i = phi i32 [ %.38.i, %bb.kt ], [ %.38.i, %.loopexit677.sink.split.i.i ], [ %.40.i, %opj_t1_update_flags.exit.i197.i ]
  %.1447848.i.i = phi i32 [ %.0446.lcssa.i.i, %bb.kt ], [ %.1447848.ph.i.i, %.loopexit677.sink.split.i.i ], [ %.1447847856.i.i, %opj_t1_update_flags.exit.i197.i ]
  %.3845.i.i = phi ptr [ %.2452.lcssa.i.i, %bb.kt ], [ %.3845.ph.i.i, %.loopexit677.sink.split.i.i ], [ %.3844857.i.i, %opj_t1_update_flags.exit.i197.i ]
  %.6561.i.i = phi ptr [ %i.ly, %bb.kt ], [ %.6561.ph.i.i, %.loopexit677.sink.split.i.i ], [ %.5560.i.i, %opj_t1_update_flags.exit.i197.i ]
  %.40547.i.i = phi i32 [ %.22529.i.i, %bb.kt ], [ %.40547.ph.i.i, %.loopexit677.sink.split.i.i ], [ %.39546.i.i, %opj_t1_update_flags.exit.i197.i ]
  %.30489.i.i = phi i32 [ %.16475.i.i, %bb.kt ], [ %.30489.ph.i.i, %.loopexit677.sink.split.i.i ], [ %.29488.i.i, %opj_t1_update_flags.exit.i197.i ]
  %.30.i200.i = phi i32 [ %.16.i252.i, %bb.kt ], [ %.30.ph.i.i, %.loopexit677.sink.split.i.i ], [ %.29.i198.i, %opj_t1_update_flags.exit.i197.i ]
  %i.byg = sub nuw nsw i32 4, %.1447848.i.i
  %i.byh = zext nneg i32 %i.byg to i64
  %i.byi = getelementptr inbounds nuw [4 x i8], ptr %.3845.i.i, i64 %i.byh
  br label %bb.ly

bb.ly:                                            ; preds = %.loopexit677.i.i, %.loopexit682.i.i
  %.42.i = phi i32 [ %.41.i, %.loopexit677.i.i ], [ %.38.i, %.loopexit682.i.i ] ; 2 uses
  %.7562.i.i = phi ptr [ %.6561.i.i, %.loopexit677.i.i ], [ %i.lx, %.loopexit682.i.i ] ; 2 uses
  %.41548.i.i = phi i32 [ %.40547.i.i, %.loopexit677.i.i ], [ %.8515.i.i, %.loopexit682.i.i ] ; 2 uses
  %.31490.i.i = phi i32 [ %.30489.i.i, %.loopexit677.i.i ], [ %.6465.i.i, %.loopexit682.i.i ] ; 2 uses
  %.31.i201.i = phi i32 [ %.30.i200.i, %.loopexit677.i.i ], [ %.6.i246.i, %.loopexit682.i.i ] ; 2 uses
  %.4.i202.i = phi ptr [ %i.byi, %.loopexit677.i.i ], [ %.2452.lcssa.i.i, %.loopexit682.i.i ] ; 2 uses
  %i.byj = add nuw i32 %.0570712.i.i, 1           ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %.1449718.i.i, i64 4 ; 2 uses
  %i.byl = load i32, ptr %i.bo, align 8, !tbaa !91 ; 3 uses
  %i.bym = icmp ult i32 %i.byj, %i.byl
  br i1 %i.bym, label %.lr.ph721.i.i, label %._crit_edge.loopexit.i203.i, !llvm.loop !295

._crit_edge.loopexit.i203.i:                      ; preds = %bb.ly
  %.pre810.i.i = load i32, ptr %i.bq, align 4, !tbaa !92
  br label %._crit_edge.i204.i

._crit_edge.i204.i:                               ; preds = %._crit_edge.loopexit.i203.i, %.preheader685.i.i
  %i.byn = phi i32 [ %i.bmv, %.preheader685.i.i ], [ %i.byl, %._crit_edge.loopexit.i203.i ] ; 2 uses
  %.43.i = phi i32 [ %.37.i, %.preheader685.i.i ], [ %.42.i, %._crit_edge.loopexit.i203.i ] ; 2 uses
  %i.byo = phi i32 [ %i.bmw, %.preheader685.i.i ], [ %.pre810.i.i, %._crit_edge.loopexit.i203.i ] ; 3 uses
  %i.byp = phi i32 [ 0, %.preheader685.i.i ], [ %i.byl, %._crit_edge.loopexit.i203.i ]
  %.1556.lcssa.i.i = phi ptr [ %.0555729.i.i, %.preheader685.i.i ], [ %.7562.i.i, %._crit_edge.loopexit.i203.i ] ; 2 uses
  %.1508.lcssa.i.i = phi i32 [ %.0507730.i.i, %.preheader685.i.i ], [ %.41548.i.i, %._crit_edge.loopexit.i203.i ] ; 2 uses
  %.1460.lcssa.i.i = phi i32 [ %.0459731.i.i, %.preheader685.i.i ], [ %.31490.i.i, %._crit_edge.loopexit.i203.i ] ; 2 uses
  %.1454.lcssa.i.i = phi i32 [ %.0453732.i.i, %.preheader685.i.i ], [ %.31.i201.i, %._crit_edge.loopexit.i203.i ] ; 2 uses
  %.1451.lcssa.i.i = phi ptr [ %.0450733.i.i, %.preheader685.i.i ], [ %.4.i202.i, %._crit_edge.loopexit.i203.i ] ; 2 uses
  %.1449.lcssa.i.i = phi ptr [ %.0448734.i.i, %.preheader685.i.i ], [ %i.byk, %._crit_edge.loopexit.i203.i ]
  %i.byq = add nuw i32 %.0569728.i.i, 4           ; 3 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %.1449.lcssa.i.i, i64 8 ; 2 uses
  %i.bys = and i32 %i.byo, -4
  %i.byt = icmp ult i32 %i.byq, %i.bys
  br i1 %i.byt, label %.preheader685.i.i, label %._crit_edge735.i.i, !llvm.loop !296

._crit_edge735.i.i:                               ; preds = %._crit_edge.i204.i, %bb.jl
  %i.byu = phi i32 [ %i.bmq, %bb.jl ], [ %i.byn, %._crit_edge.i204.i ]
  %.44.i = phi i32 [ 0, %bb.jl ], [ %.43.i, %._crit_edge.i204.i ] ; 2 uses
  %.0569.lcssa.i.i = phi i32 [ 0, %bb.jl ], [ %i.byq, %._crit_edge.i204.i ] ; 5 uses
  %.0555.lcssa.i.i = phi ptr [ %i.bmk, %bb.jl ], [ %.1556.lcssa.i.i, %._crit_edge.i204.i ] ; 2 uses
  %.0507.lcssa.i.i = phi i32 [ %i.bml, %bb.jl ], [ %.1508.lcssa.i.i, %._crit_edge.i204.i ] ; 2 uses
  %.0459.lcssa.i.i = phi i32 [ %i.bmm, %bb.jl ], [ %.1460.lcssa.i.i, %._crit_edge.i204.i ] ; 2 uses
  %.0453.lcssa.i.i = phi i32 [ %i.bmn, %bb.jl ], [ %.1454.lcssa.i.i, %._crit_edge.i204.i ] ; 2 uses
  %.0450.lcssa.i.i = phi ptr [ %i.bmo, %bb.jl ], [ %.1451.lcssa.i.i, %._crit_edge.i204.i ]
  %.0448.lcssa.i.i = phi ptr [ %i.bmt, %bb.jl ], [ %i.byr, %._crit_edge.i204.i ]
  %.lcssa699.i.i = phi i32 [ %i.nh, %bb.jl ], [ %i.byo, %._crit_edge.i204.i ] ; 2 uses
  %i.byv = icmp uge i32 %.0569.lcssa.i.i, %.lcssa699.i.i
  %.not779.i.i = icmp eq i32 %i.byu, 0
  %or.cond792.i = select i1 %i.byv, i1 true, i1 %.not779.i.i
  br i1 %or.cond792.i, label %opj_t1_enc_clnpass.exit.i, label %.lr.ph771.i.i

.lr.ph771.i.i:                                    ; preds = %._crit_edge735.i.i
  %i.byw = and i32 %i.ng, 2147483584
  %.not.i641.i.i = icmp eq i32 %.0138393.i, 0
  br label %bb.lz

bb.lz:                                            ; preds = %.loopexit669.i.i, %.lr.ph771.i.i
  %.45.i = phi i32 [ %.44.i, %.lr.ph771.i.i ], [ %.48.i, %.loopexit669.i.i ] ; 3 uses
  %i.byx = phi i32 [ %.lcssa699.i.i, %.lr.ph771.i.i ], [ %i.cfr, %.loopexit669.i.i ]
  %.2769.i.i = phi ptr [ %.0448.lcssa.i.i, %.lr.ph771.i.i ], [ %i.cfw, %.loopexit669.i.i ] ; 12 uses
  %.5767.i.i = phi ptr [ %.0450.lcssa.i.i, %.lr.ph771.i.i ], [ %i.cfu, %.loopexit669.i.i ] ; 2 uses
  %.32766.i.i = phi i32 [ %.0453.lcssa.i.i, %.lr.ph771.i.i ], [ %.46.i210.i, %.loopexit669.i.i ] ; 3 uses
  %.32491765.i.i = phi i32 [ %.0459.lcssa.i.i, %.lr.ph771.i.i ], [ %.46505.i.i, %.loopexit669.i.i ] ; 3 uses
  %.42549764.i.i = phi i32 [ %.0507.lcssa.i.i, %.lr.ph771.i.i ], [ %.60.i209.i, %.loopexit669.i.i ] ; 3 uses
  %.8563763.i.i = phi ptr [ %.0555.lcssa.i.i, %.lr.ph771.i.i ], [ %.12567.i.i, %.loopexit669.i.i ] ; 3 uses
  %.1571762.i.i = phi i32 [ 0, %.lr.ph771.i.i ], [ %i.cfv, %.loopexit669.i.i ]
  %i.byy = load i32, ptr %.2769.i.i, align 4, !tbaa !6 ; 3 uses
  %i.byz = and i32 %i.byy, 1226843280
  %i.bza = icmp eq i32 %i.byz, 1226843280
  br i1 %i.bza, label %bb.ma, label %.preheader.i205.i

.preheader.i205.i:                                ; preds = %bb.lz
  %.not780.i.i = icmp eq i32 %i.byx, %.0569.lcssa.i.i
  br i1 %.not780.i.i, label %.loopexit669.i.i, label %.lr.ph757.i.i

.lr.ph757.i.i:                                    ; preds = %.preheader.i205.i
  %i.bzb = getelementptr inbounds i8, ptr %.2769.i.i, i64 -4 ; 3 uses
  %i.bzc = getelementptr inbounds nuw i8, ptr %.2769.i.i, i64 4 ; 3 uses
  br label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.bzd = and i32 %i.byy, -1226833921
  store i32 %i.bzd, ptr %.2769.i.i, align 4, !tbaa !6
  %.pre811.i.i = load i32, ptr %i.bq, align 4, !tbaa !92
  br label %.loopexit669.i.i

bb.mb:                                            ; preds = %opj_t1_update_flags.exit645.i.i, %.lr.ph757.i.i
  %.46.i = phi i32 [ %.45.i, %.lr.ph757.i.i ], [ %.47.i, %opj_t1_update_flags.exit645.i.i ] ; 3 uses
  %i.bze = phi i32 [ %i.byy, %.lr.ph757.i.i ], [ %i.cfl, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.0440756.i.i = phi ptr [ %.5767.i.i, %.lr.ph757.i.i ], [ %i.cfm, %opj_t1_update_flags.exit645.i.i ] ; 3 uses
  %.0441755.i.i = phi i32 [ 0, %.lr.ph757.i.i ], [ %i.cfn, %opj_t1_update_flags.exit645.i.i ] ; 5 uses
  %.33754.i.i = phi i32 [ %.32766.i.i, %.lr.ph757.i.i ], [ %.45.i208.i, %opj_t1_update_flags.exit645.i.i ] ; 4 uses
  %.33492753.i.i = phi i32 [ %.32491765.i.i, %.lr.ph757.i.i ], [ %.45504.i.i, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.43550752.i.i = phi i32 [ %.42549764.i.i, %.lr.ph757.i.i ], [ %.59.i207.i, %opj_t1_update_flags.exit645.i.i ] ; 4 uses
  %.9564751.i.i = phi ptr [ %.8563763.i.i, %.lr.ph757.i.i ], [ %.11566.i.i, %opj_t1_update_flags.exit645.i.i ]
  %i.bzf = mul i32 %.0441755.i.i, 3               ; 11 uses
  %i.bzg = shl i32 2097168, %i.bzf
  %i.bzh = and i32 %i.bzg, %i.bze
  %.not.i206.i = icmp eq i32 %i.bzh, 0
  br i1 %.not.i206.i, label %bb.mc, label %opj_t1_update_flags.exit645.i.i

bb.mc:                                            ; preds = %bb.mb
  %i.bzi = lshr i32 %i.bze, %i.bzf
  %.val.i211.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.bzj = and i32 %i.bzi, 495
  %i.bzk = zext nneg i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds nuw i8, ptr %.val.i211.i, i64 %i.bzk
  %i.bzm = load i8, ptr %i.bzl, align 1, !tbaa !56
  %i.bzn = zext i8 %i.bzm to i64
  %i.bzo = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.bzn ; 4 uses
  %i.bzp = load i32, ptr %.0440756.i.i, align 4, !tbaa !6
  %i.bzq = and i32 %i.byw, %i.bzp
  %.not628.i.i = icmp ne i32 %i.bzq, 0            ; 2 uses
  %i.bzr = zext i1 %.not628.i.i to i32
  %i.bzs = load ptr, ptr %i.bzo, align 8, !tbaa !99 ; 4 uses
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzs, i64 4
  %i.bzu = load i32, ptr %i.bzt, align 4, !tbaa !102
  %i.bzv = icmp eq i32 %i.bzu, %i.bzr
  %i.bzw = load i32, ptr %i.bzs, align 8, !tbaa !101 ; 8 uses
  %i.bzx = sub i32 %.33492753.i.i, %i.bzw         ; 6 uses
  br i1 %i.bzv, label %bb.md, label %bb.mj

bb.md:                                            ; preds = %bb.mc
  %i.bzy = and i32 %i.bzx, 32768
  %i.bzz = icmp eq i32 %i.bzy, 0
  br i1 %i.bzz, label %bb.me, label %bb.mi

bb.me:                                            ; preds = %bb.md
  %i.caa = icmp ult i32 %i.bzx, %i.bzw
  %i.cab = select i1 %i.caa, i32 0, i32 %i.bzw
  %.44551.i.i = add i32 %i.cab, %.43550752.i.i
  %.34493.i.i = tail call i32 @llvm.umax.i32(i32 %i.bzx, i32 %i.bzw)
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzs, i64 8
  %i.cad = load ptr, ptr %i.cac, align 8, !tbaa !320
  store ptr %i.cad, ptr %i.bzo, align 8, !tbaa !99
  br label %bb.mf

bb.mf:                                            ; preds = %bb.mh, %bb.me
  %.45552.i.i = phi i32 [ %.44551.i.i, %bb.me ], [ %.46553.i.i, %bb.mh ]
  %.35494.i.i = phi i32 [ %.34493.i.i, %bb.me ], [ %i.cae, %bb.mh ] ; 2 uses
  %.34.i227.i = phi i32 [ %.33754.i.i, %bb.me ], [ %.35.i228.i, %bb.mh ]
  %i.cae = shl i32 %.35494.i.i, 1                 ; 2 uses
  %i.caf = shl i32 %.45552.i.i, 1                 ; 2 uses
  %i.cag = add i32 %.34.i227.i, -1                ; 2 uses
  %i.cah = icmp eq i32 %i.cag, 0
  br i1 %i.cah, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  store i32 %i.caf, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
end_hunk_3
begin_hunk_4_@opj_t1_cblk_encode_processor:bb.a
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %.49.i214.i = phi i32 [ %i.cav, %bb.ml ], [ %i.cas, %bb.mk ] ; 2 uses
  %.37.i215.i = phi i32 [ %i.caw, %bb.ml ], [ %i.cat, %bb.mk ] ; 2 uses
  %i.cax = and i32 %.37496.i.i, 16384
  %i.cay = icmp eq i32 %i.cax, 0
  br i1 %i.cay, label %bb.mk, label %.loopexit667.i.i, !llvm.loop !298

.loopexit667.i.i:                                 ; preds = %bb.mm, %bb.mh, %bb.mi
  %.50.i216.i = phi i32 [ %.46553.i.i, %bb.mh ], [ %i.cam, %bb.mi ], [ %.49.i214.i, %bb.mm ] ; 4 uses
  %.38497.i.i = phi i32 [ %i.cae, %bb.mh ], [ %i.bzx, %bb.mi ], [ %i.car, %bb.mm ] ; 2 uses
  %.38.i.i = phi i32 [ %.35.i228.i, %bb.mh ], [ %.33754.i.i, %bb.mi ], [ %.37.i215.i, %bb.mm ] ; 4 uses
  br i1 %.not628.i.i, label %bb.mn, label %opj_t1_update_flags.exit645.i.i

bb.mn:                                            ; preds = %.loopexit667.i.i
  %i.caz = load i32, ptr %.2769.i.i, align 4, !tbaa !6 ; 3 uses
  %i.cba = load i32, ptr %i.bzb, align 4, !tbaa !6
  %i.cbb = load i32, ptr %i.bzc, align 4, !tbaa !6
  %i.cbc = icmp eq i32 %.0441755.i.i, 0           ; 2 uses
  %i.cbd = add i32 %i.bzf, 12
  %.pn.in.v.i637.i.i = select i1 %i.cbc, i32 14, i32 %i.cbd
  %.pn.in.i638.i.i = lshr i32 %i.caz, %.pn.in.v.i637.i.i
  %i.cbe = lshr i32 %i.caz, %i.bzf
  %i.cbf = and i32 %i.cbe, 170
  %i.cbg = add i32 %i.bzf, 19
  %i.cbh = lshr i32 %i.cba, %i.cbg
  %i.cbi = and i32 %i.cbh, 1
  %i.cbj = add i32 %i.bzf, 17
  %i.cbk = lshr i32 %i.cbb, %i.cbj
  %i.cbl = and i32 %i.cbk, 4
  %.pn.i639.i.i = and i32 %.pn.in.i638.i.i, 16
  %i.cbm = add i32 %i.bzf, 16
  %i.cbn = lshr i32 %i.caz, %i.cbm
  %i.cbo = and i32 %i.cbn, 64
  %i.cbp = or disjoint i32 %i.cbo, %i.cbf
  %i.cbq = or disjoint i32 %i.cbp, %.pn.i639.i.i
  %.0.i640.i.i = or disjoint i32 %i.cbq, %i.cbi
  %i.cbr = or disjoint i32 %.0.i640.i.i, %i.cbl
  %i.cbs = load i32, ptr %.0440756.i.i, align 4, !tbaa !6 ; 4 uses
  %i.cbt = and i32 %i.cbs, 2147483647
  %i.cbu = lshr i32 %i.cbt, %.0138393.i
  %i.cbv = and i32 %i.cbu, 127
  %i.cbw = zext nneg i32 %i.cbv to i64
  %i.cbx = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.cbw
  %i.cby = and i32 %i.cbs, 127
  %i.cbz = zext nneg i32 %i.cby to i64
  %i.cca = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.cbz
  %.0.in.i642.i.i = select i1 %.not.i641.i.i, ptr %i.cca, ptr %i.cbx
  %.0.i643.i.i = load i16, ptr %.0.in.i642.i.i, align 2, !tbaa !323
  %i.ccb = sext i16 %.0.i643.i.i to i32
  %i.ccc = add nsw i32 %.46.i, %i.ccb             ; 2 uses
  %i.ccd = zext nneg i32 %i.cbr to i64            ; 2 uses
  %i.cce = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.ccd
  %i.ccf = load i8, ptr %i.cce, align 1, !tbaa !56
  %i.ccg = zext i8 %i.ccf to i64
  %i.cch = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ccg ; 5 uses
  %i.cci = lshr i32 %i.cbs, 31                    ; 3 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.ccd
  %i.cck = load i8, ptr %i.ccj, align 1, !tbaa !56
  %i.ccl = zext i8 %i.cck to i32
  %i.ccm = load ptr, ptr %i.cch, align 8, !tbaa !99 ; 4 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 4
  %i.cco = load i32, ptr %i.ccn, align 4, !tbaa !102
  %i.ccp = xor i32 %i.cci, %i.ccl
  %i.ccq = icmp eq i32 %i.cco, %i.ccp
  %i.ccr = load i32, ptr %i.ccm, align 8, !tbaa !101 ; 8 uses
  %i.ccs = sub i32 %.38497.i.i, %i.ccr            ; 6 uses
  br i1 %i.ccq, label %bb.mo, label %bb.mu

bb.mo:                                            ; preds = %bb.mn
  %i.cct = and i32 %i.ccs, 32768
  %i.ccu = icmp eq i32 %i.cct, 0
  br i1 %i.ccu, label %bb.mp, label %bb.mt

bb.mp:                                            ; preds = %bb.mo
  %i.ccv = icmp ult i32 %i.ccs, %i.ccr
  %i.ccw = select i1 %i.ccv, i32 0, i32 %i.ccr
  %.52.i223.i = add i32 %i.ccw, %.50.i216.i
  %.40499.i.i = tail call i32 @llvm.umax.i32(i32 %i.ccs, i32 %i.ccr)
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccm, i64 8
  %i.ccy = load ptr, ptr %i.ccx, align 8, !tbaa !320
  store ptr %i.ccy, ptr %i.cch, align 8, !tbaa !99
  br label %bb.mq

bb.mq:                                            ; preds = %bb.ms, %bb.mp
  %.53.i.i = phi i32 [ %.52.i223.i, %bb.mp ], [ %.54.i225.i, %bb.ms ]
  %.41500.i.i = phi i32 [ %.40499.i.i, %bb.mp ], [ %i.ccz, %bb.ms ] ; 2 uses
  %.40.i224.i = phi i32 [ %.38.i.i, %bb.mp ], [ %.41.i226.i, %bb.ms ]
  %i.ccz = shl i32 %.41500.i.i, 1                 ; 2 uses
  %i.cda = shl i32 %.53.i.i, 1                    ; 2 uses
  %i.cdb = add i32 %.40.i224.i, -1                ; 2 uses
  %i.cdc = icmp eq i32 %i.cdb, 0
  br i1 %i.cdc, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  store i32 %i.cda, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.cdd = load i32, ptr %.0169, align 8, !tbaa !94
  %i.cde = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  %.54.i225.i = phi i32 [ %i.cdd, %bb.mr ], [ %i.cda, %bb.mq ] ; 2 uses
  %.41.i226.i = phi i32 [ %i.cde, %bb.mr ], [ %i.cdb, %bb.mq ] ; 2 uses
  %i.cdf = and i32 %.41500.i.i, 16384
  %i.cdg = icmp eq i32 %i.cdf, 0
  br i1 %i.cdg, label %bb.mq, label %.loopexit.i221.i, !llvm.loop !299

bb.mt:                                            ; preds = %bb.mo
  %i.cdh = add i32 %i.ccr, %.50.i216.i
  br label %.loopexit.i221.i

bb.mu:                                            ; preds = %bb.mn
  %i.cdi = icmp ult i32 %i.ccs, %i.ccr
  %i.cdj = select i1 %i.cdi, i32 %i.ccr, i32 0
  %.55.i217.i = add i32 %i.cdj, %.50.i216.i
  %.42501.i.i = tail call i32 @llvm.umin.i32(i32 %i.ccs, i32 %i.ccr)
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.ccm, i64 16
  %i.cdl = load ptr, ptr %i.cdk, align 8, !tbaa !321
  store ptr %i.cdl, ptr %i.cch, align 8, !tbaa !99
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mx, %bb.mu
  %.56.i218.i = phi i32 [ %.55.i217.i, %bb.mu ], [ %.57.i220.i, %bb.mx ]
  %.43502.i.i = phi i32 [ %.42501.i.i, %bb.mu ], [ %i.cdm, %bb.mx ] ; 2 uses
  %.42.i219.i = phi i32 [ %.38.i.i, %bb.mu ], [ %.43.i.i, %bb.mx ]
  %i.cdm = shl i32 %.43502.i.i, 1                 ; 2 uses
  %i.cdn = shl i32 %.56.i218.i, 1                 ; 2 uses
  %i.cdo = add i32 %.42.i219.i, -1                ; 2 uses
  %i.cdp = icmp eq i32 %i.cdo, 0
  br i1 %i.cdp, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  store i32 %i.cdn, ptr %.0169, align 8, !tbaa !94
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0169) #12
  %i.cdq = load i32, ptr %.0169, align 8, !tbaa !94
  %i.cdr = load i32, ptr %i.lv, align 8, !tbaa !93
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %.57.i220.i = phi i32 [ %i.cdq, %bb.mw ], [ %i.cdn, %bb.mv ] ; 2 uses
  %.43.i.i = phi i32 [ %i.cdr, %bb.mw ], [ %i.cdo, %bb.mv ] ; 2 uses
  %i.cds = and i32 %.43502.i.i, 16384
  %i.cdt = icmp eq i32 %i.cds, 0
  br i1 %i.cdt, label %bb.mv, label %.loopexit.i221.i, !llvm.loop !300

.loopexit.i221.i:                                 ; preds = %bb.mx, %bb.ms, %bb.mt
  %.58.i.i = phi i32 [ %.54.i225.i, %bb.ms ], [ %i.cdh, %bb.mt ], [ %.57.i220.i, %bb.mx ] ; 2 uses
  %.44503.i.i = phi i32 [ %i.ccz, %bb.ms ], [ %i.ccs, %bb.mt ], [ %i.cdm, %bb.mx ] ; 2 uses
  %.44.i222.i = phi i32 [ %.41.i226.i, %bb.ms ], [ %.38.i.i, %bb.mt ], [ %.43.i.i, %bb.mx ] ; 2 uses
  %i.cdu = and i1 %i.mb, %i.cbc
  %i.cdv = zext i1 %i.cdu to i32
  %i.cdw = load i32, ptr %i.bo, align 8, !tbaa !91
  %i.cdx = add i32 %i.cdw, 2                      ; 2 uses
  %i.cdy = shl i32 32, %i.bzf
  %i.cdz = load i32, ptr %i.bzb, align 4, !tbaa !6
  %i.cea = or i32 %i.cdz, %i.cdy
  store i32 %i.cea, ptr %i.bzb, align 4, !tbaa !6
  %i.ceb = shl nuw nsw i32 %i.cci, 19
  %i.cec = or disjoint i32 %i.ceb, 16
  %i.ced = shl i32 %i.cec, %i.bzf
  %i.cee = load i32, ptr %.2769.i.i, align 4, !tbaa !6
  %i.cef = or i32 %i.cee, %i.ced
  store i32 %i.cef, ptr %.2769.i.i, align 4, !tbaa !6
  %i.ceg = shl i32 8, %i.bzf
  %i.ceh = load i32, ptr %i.bzc, align 4, !tbaa !6
  %i.cei = or i32 %i.ceh, %i.ceg
  store i32 %i.cei, ptr %i.bzc, align 4, !tbaa !6
  %i.cej = or i32 %.0441755.i.i, %i.cdv
  %or.cond.not.i644.i.i = icmp eq i32 %i.cej, 0
  br i1 %or.cond.not.i644.i.i, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %.loopexit.i221.i
  %i.cek = zext i32 %i.cdx to i64
  %i.cel = sub nsw i64 0, %i.cek
  %i.cem = getelementptr inbounds [4 x i8], ptr %.2769.i.i, i64 %i.cel ; 4 uses
  %i.cen = and i32 %i.cbs, -2147483648
  %i.ceo = load i32, ptr %i.cem, align 4, !tbaa !6
  %i.cep = or i32 %i.cen, %i.ceo
  %i.ceq = or i32 %i.cep, 65536
  store i32 %i.ceq, ptr %i.cem, align 4, !tbaa !6
  %i.cer = getelementptr inbounds i8, ptr %i.cem, i64 -4 ; 2 uses
  %i.ces = load i32, ptr %i.cer, align 4, !tbaa !6
  %i.cet = or i32 %i.ces, 131072
  store i32 %i.cet, ptr %i.cer, align 4, !tbaa !6
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cem, i64 4 ; 2 uses
  %i.cev = load i32, ptr %i.ceu, align 4, !tbaa !6
  %i.cew = or i32 %i.cev, 32768
  store i32 %i.cew, ptr %i.ceu, align 4, !tbaa !6
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %.loopexit.i221.i
  %i.cex = icmp eq i32 %.0441755.i.i, 3
  br i1 %i.cex, label %bb.na, label %opj_t1_update_flags.exit645.i.i

bb.na:                                            ; preds = %bb.mz
  %i.cey = zext i32 %i.cdx to i64
  %i.cez = getelementptr inbounds nuw [4 x i8], ptr %.2769.i.i, i64 %i.cey ; 4 uses
  %i.cfa = shl nuw nsw i32 %i.cci, 18
  %16 = load i32, ptr %i.cez, align 4, !tbaa !6
  %17 = or i32 %i.cfa, %16
  %i.cfb = or i32 %17, 2
  store i32 %i.cfb, ptr %i.cez, align 4, !tbaa !6
  %i.cfc = getelementptr inbounds i8, ptr %i.cez, i64 -4 ; 2 uses
  %i.cfd = load i32, ptr %i.cfc, align 4, !tbaa !6
  %i.cfe = or i32 %i.cfd, 4
  store i32 %i.cfe, ptr %i.cfc, align 4, !tbaa !6
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cez, i64 4 ; 2 uses
  %i.cfg = load i32, ptr %i.cff, align 4, !tbaa !6
  %i.cfh = or i32 %i.cfg, 1
  store i32 %i.cfh, ptr %i.cff, align 4, !tbaa !6
  br label %opj_t1_update_flags.exit645.i.i

opj_t1_update_flags.exit645.i.i:                  ; preds = %bb.na, %bb.mz, %.loopexit667.i.i, %bb.mb
  %.47.i = phi i32 [ %i.ccc, %bb.na ], [ %i.ccc, %bb.mz ], [ %.46.i, %.loopexit667.i.i ], [ %.46.i, %bb.mb ] ; 2 uses
  %.11566.i.i = phi ptr [ %i.cch, %bb.na ], [ %i.cch, %bb.mz ], [ %i.bzo, %.loopexit667.i.i ], [ %.9564751.i.i, %bb.mb ] ; 2 uses
  %.59.i207.i = phi i32 [ %.58.i.i, %bb.na ], [ %.58.i.i, %bb.mz ], [ %.50.i216.i, %.loopexit667.i.i ], [ %.43550752.i.i, %bb.mb ] ; 2 uses
  %.45504.i.i = phi i32 [ %.44503.i.i, %bb.na ], [ %.44503.i.i, %bb.mz ], [ %.38497.i.i, %.loopexit667.i.i ], [ %.33492753.i.i, %bb.mb ] ; 2 uses
  %.45.i208.i = phi i32 [ %.44.i222.i, %bb.na ], [ %.44.i222.i, %bb.mz ], [ %.38.i.i, %.loopexit667.i.i ], [ %.33754.i.i, %bb.mb ] ; 2 uses
  %i.cfi = shl i32 2097152, %i.bzf
  %i.cfj = xor i32 %i.cfi, -1
  %i.cfk = load i32, ptr %.2769.i.i, align 4, !tbaa !6
  %i.cfl = and i32 %i.cfk, %i.cfj                 ; 2 uses
  store i32 %i.cfl, ptr %.2769.i.i, align 4, !tbaa !6
  %i.cfm = getelementptr inbounds nuw i8, ptr %.0440756.i.i, i64 4
  %i.cfn = add nuw i32 %.0441755.i.i, 1           ; 2 uses
  %i.cfo = load i32, ptr %i.bq, align 4, !tbaa !92 ; 2 uses
  %i.cfp = sub i32 %i.cfo, %.0569.lcssa.i.i
  %i.cfq = icmp ult i32 %i.cfn, %i.cfp
  br i1 %i.cfq, label %bb.mb, label %.loopexit669.i.i, !llvm.loop !301

.loopexit669.i.i:                                 ; preds = %opj_t1_update_flags.exit645.i.i, %bb.ma, %.preheader.i205.i
  %.48.i = phi i32 [ %.45.i, %bb.ma ], [ %.45.i, %.preheader.i205.i ], [ %.47.i, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %i.cfr = phi i32 [ %.pre811.i.i, %bb.ma ], [ %.0569.lcssa.i.i, %.preheader.i205.i ], [ %i.cfo, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.12567.i.i = phi ptr [ %.8563763.i.i, %bb.ma ], [ %.8563763.i.i, %.preheader.i205.i ], [ %.11566.i.i, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.60.i209.i = phi i32 [ %.42549764.i.i, %bb.ma ], [ %.42549764.i.i, %.preheader.i205.i ], [ %.59.i207.i, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.46505.i.i = phi i32 [ %.32491765.i.i, %bb.ma ], [ %.32491765.i.i, %.preheader.i205.i ], [ %.45504.i.i, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.46.i210.i = phi i32 [ %.32766.i.i, %bb.ma ], [ %.32766.i.i, %.preheader.i205.i ], [ %.45.i208.i, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %i.cfs = sub i32 %i.cfr, %.0569.lcssa.i.i
  %i.cft = zext i32 %i.cfs to i64
  %i.cfu = getelementptr inbounds nuw [4 x i8], ptr %.5767.i.i, i64 %i.cft
  %i.cfv = add nuw i32 %.1571762.i.i, 1           ; 2 uses
  %i.cfw = getelementptr inbounds nuw i8, ptr %.2769.i.i, i64 4
  %i.cfx = load i32, ptr %i.bo, align 8, !tbaa !91
  %i.cfy = icmp ult i32 %i.cfv, %i.cfx
  br i1 %i.cfy, label %bb.lz, label %opj_t1_enc_clnpass.exit.i, !llvm.loop !302

opj_t1_enc_clnpass.exit.i:                        ; preds = %.loopexit669.i.i, %._crit_edge735.i.i, %.preheader685.lr.ph.i.i
  %.49.i = phi i32 [ 0, %.preheader685.lr.ph.i.i ], [ %.44.i, %._crit_edge735.i.i ], [ %.48.i, %.loopexit669.i.i ] ; 2 uses
  %.13568.i.i = phi ptr [ %i.bmk, %.preheader685.lr.ph.i.i ], [ %.0555.lcssa.i.i, %._crit_edge735.i.i ], [ %.12567.i.i, %.loopexit669.i.i ]
  %.61.i.i = phi i32 [ %i.bml, %.preheader685.lr.ph.i.i ], [ %.0507.lcssa.i.i, %._crit_edge735.i.i ], [ %.60.i209.i, %.loopexit669.i.i ]
  %.47506.i.i = phi i32 [ %i.bmm, %.preheader685.lr.ph.i.i ], [ %.0459.lcssa.i.i, %._crit_edge735.i.i ], [ %.46505.i.i, %.loopexit669.i.i ]
  %.47.i.i = phi i32 [ %i.bmn, %.preheader685.lr.ph.i.i ], [ %.0453.lcssa.i.i, %._crit_edge735.i.i ], [ %.46.i210.i, %.loopexit669.i.i ]
  store ptr %.13568.i.i, ptr %i.lt, align 8, !tbaa !96
  store i32 %.61.i.i, ptr %.0169, align 8, !tbaa !94
  store i32 %.47506.i.i, ptr %i.lu, align 4, !tbaa !97
  store i32 %.47.i.i, ptr %i.lv, align 8, !tbaa !93
  br i1 %.not153.i, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %opj_t1_enc_clnpass.exit.i
  tail call void @opj_mqc_segmark_enc(ptr noundef nonnull %.0169) #12
  br label %bb.nc

default.unreachable.i:                            ; preds = %bb.aa
  unreachable

bb.nc:                                            ; preds = %bb.nb, %opj_t1_enc_clnpass.exit.i, %opj_t1_enc_refpass.exit.i, %opj_t1_enc_sigpass.exit.i
  %.0275.i = phi i32 [ %.18.i, %opj_t1_enc_sigpass.exit.i ], [ %.36.i, %opj_t1_enc_refpass.exit.i ], [ %.49.i, %opj_t1_enc_clnpass.exit.i ], [ %.49.i, %bb.nb ]
  br i1 %or.cond.i258.i, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  %i.cfz = load double, ptr %i.mg, align 8, !tbaa !324
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  %.022.i.i = phi double [ %i.cfz, %bb.nd ], [ 1.000000e+00, %bb.nc ]
  br i1 %i.mh, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  %i.cga = tail call double @opj_dwt_getnorm(i32 noundef %i.ie, i32 noundef %i.hz) #12
  br label %opj_t1_getwmsedec.exit.i

bb.ng:                                            ; preds = %bb.ne
  %i.cgb = tail call double @opj_dwt_getnorm_real(i32 noundef %i.ie, i32 noundef %i.hz) #12
  br label %opj_t1_getwmsedec.exit.i

opj_t1_getwmsedec.exit.i:                         ; preds = %bb.ng, %bb.nf
  %.021.i.i = phi double [ %i.cga, %bb.nf ], [ %i.cgb, %bb.ng ]
  %.0.i.i = phi double [ %i.ii, %bb.nf ], [ %i.mn, %bb.ng ]
  %i.cgc = fmul double %.022.i.i, %.021.i.i
  %i.cgd = fmul double %i.cgc, %.0.i.i
  %i.cge = shl nuw i32 1, %.0138393.i
  %i.cgf = sitofp i32 %i.cge to double
  %i.cgg = fmul double %i.cgd, %i.cgf             ; 2 uses
  %i.cgh = sitofp i32 %.0275.i to double
  %i.cgi = fmul double %i.cgg, %i.cgh
  %i.cgj = fmul double %i.cgi, f0x3F20000000000000
  %i.cgk = fmul double %i.cgg, %i.cgj
  %i.cgl = fadd double %.0143391.i, %i.cgk        ; 7 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store double %i.cgl, ptr %i.cgm, align 8, !tbaa !326
  %i.cgn = icmp eq i32 %.0136394.i, 2             ; 2 uses
  %i.cgo = icmp eq i32 %.0138393.i, 0
  %or.cond.i259.i = and i1 %i.cgn, %i.cgo
  %or.cond16.not.i.i = or i1 %.not.i260.i, %or.cond.i259.i
  br i1 %or.cond16.not.i.i, label %bb.nk, label %bb.nh

bb.nh:                                            ; preds = %opj_t1_getwmsedec.exit.i
  br i1 %.not15.i.i, label %opj_t1_enc_is_term_pass.exit.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.cgp = load i32, ptr %i.lm, align 8, !tbaa !317
  %i.cgq = add nsw i32 %i.cgp, -4                 ; 2 uses
  %i.cgr = icmp eq i32 %.0138393.i, %i.cgq
  %or.cond3.i.i = and i1 %i.cgn, %i.cgr
  br i1 %or.cond3.i.i, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.cgs = icmp slt i32 %.0138393.i, %i.cgq
  %i.cgt = icmp ne i32 %.0136394.i, 0
  %or.cond5.i.i = and i1 %i.cgt, %i.cgs
  br i1 %or.cond5.i.i, label %bb.nk, label %opj_t1_enc_is_term_pass.exit.i

bb.nk:                                            ; preds = %bb.nj, %bb.ni, %opj_t1_getwmsedec.exit.i
  br i1 %i.mz, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  tail call void @opj_mqc_bypass_flush_enc(ptr noundef nonnull %.0169, i32 noundef %i.mq) #12
  br label %bb.np

bb.nm:                                            ; preds = %bb.nk
  br i1 %.not155.i, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call void @opj_mqc_erterm_enc(ptr noundef nonnull %.0169) #12
  br label %bb.np

bb.no:                                            ; preds = %bb.nm
  tail call void @opj_mqc_flush(ptr noundef nonnull %.0169) #12
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nn, %bb.nl
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.mu, i64 20 ; 2 uses
  %i.cgv = load i8, ptr %i.cgu, align 4
  %i.cgw = or i8 %i.cgv, 1
  store i8 %i.cgw, ptr %i.cgu, align 4
  %i.cgx = tail call i32 @opj_mqc_numbytes(ptr noundef nonnull %.0169) #12
  br label %bb.ns

opj_t1_enc_is_term_pass.exit.i:                   ; preds = %bb.nj, %bb.nh
  br i1 %i.mz, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %opj_t1_enc_is_term_pass.exit.i
  %i.cgy = tail call i32 @opj_mqc_bypass_get_extra_bytes(ptr noundef nonnull %.0169, i32 noundef %i.mq) #12
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %opj_t1_enc_is_term_pass.exit.i
  %.0128.i = phi i32 [ %i.cgy, %bb.nq ], [ 3, %opj_t1_enc_is_term_pass.exit.i ]
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.mu, i64 20 ; 2 uses
  %i.cha = load i8, ptr %i.cgz, align 4
  %i.chb = and i8 %i.cha, -2
  store i8 %i.chb, ptr %i.cgz, align 4
  %i.chc = tail call i32 @opj_mqc_numbytes(ptr noundef nonnull %.0169) #12
  %i.chd = add i32 %i.chc, %.0128.i
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.np
  %storemerge.i = phi i32 [ %i.chd, %bb.nr ], [ %i.cgx, %bb.np ]
  store i32 %storemerge.i, ptr %i.mu, align 8, !tbaa !327
  %i.che = add i32 %.0136394.i, 1                 ; 2 uses
  %i.chf = icmp eq i32 %i.che, 3                  ; 2 uses
  %i.chg = sext i1 %i.chf to i32
  %spec.select.i = add nsw i32 %.0138393.i, %i.chg ; 2 uses
  %spec.select157.i = select i1 %i.chf, i32 0, i32 %i.che
  br i1 %.not156.i, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  tail call void @opj_mqc_reset_enc(ptr noundef nonnull %.0169) #12
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.chh = add i32 %.0140392.i, 1                 ; 3 uses
  %i.chi = icmp sgt i32 %spec.select.i, -1
  br i1 %i.chi, label %bb.v, label %._crit_edge398.i, !llvm.loop !303

._crit_edge398.i:                                 ; preds = %bb.nu
  %i.chj = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  store i32 %i.chh, ptr %i.chj, align 4, !tbaa !328
  %.not149.i = icmp eq i32 %i.chh, 0
  br i1 %.not149.i, label %opj_t1_encode_cblk.exit, label %bb.nv

bb.nv:                                            ; preds = %._crit_edge398.i
  %i.chk = tail call i32 @opj_mqc_numbytes(ptr noundef nonnull %.0169) #12 ; 4 uses
  %i.chl = load i32, ptr %i.chj, align 4, !tbaa !328 ; 4 uses
  %.not150401.i = icmp eq i32 %i.chl, 0
  br i1 %.not150401.i, label %opj_t1_encode_cblk.exit, label %.lr.ph405.i

.lr.ph405.i:                                      ; preds = %bb.nv
  %i.chm = load ptr, ptr %i.lr, align 8, !tbaa !319 ; 9 uses
  %i.chn = zext i32 %i.chl to i64                 ; 4 uses
  %i.cho = add nsw i64 %i.chn, -1                 ; 4 uses
  %xtraiter910 = and i64 %i.chn, 1
end_hunk_4
begin_hunk_5_@opj_t1_dec_sigpass_mqc:bb.a
  %.35680.i = phi i32 [ %i.ta, %bb.en ], [ %i.tw, %.loopexit900.i.loopexit ], [ %i.ux, %.loopexit900.i.loopexit483 ] ; 2 uses
  %.56.i = phi i32 [ %.49.i, %bb.en ], [ %i.ty, %.loopexit900.i.loopexit ], [ %i.uz, %.loopexit900.i.loopexit483 ] ; 4 uses
  %.20.i = phi i32 [ %i.vc, %bb.en ], [ %.18.i, %.loopexit900.i.loopexit ], [ %.19.i, %.loopexit900.i.loopexit483 ]
  %.not878.i = icmp eq i32 %.20.i, 0
  br i1 %.not878.i, label %bb.fh, label %bb.eo

bb.eo:                                            ; preds = %.loopexit900.i
  %i.vf = getelementptr inbounds i8, ptr %.1767963.i, i64 -4 ; 3 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !6
  %i.vh = getelementptr inbounds nuw i8, ptr %.1767963.i, i64 4 ; 3 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !6
  %.pn.in.i896.i = lshr i32 %.5.i, 21
  %i.vj = and i32 %i.sr, 170
  %i.vk = lshr i32 %i.vg, 28
  %i.vl = and i32 %i.vk, 1
  %i.vm = lshr i32 %i.vi, 26
  %i.vn = and i32 %i.vm, 4
  %.pn.i897.i = and i32 %.pn.in.i896.i, 16
  %i.vo = lshr i32 %.5.i, 25
  %i.vp = and i32 %i.vo, 64
  %i.vq = or disjoint i32 %i.vp, %i.vj
  %i.vr = or disjoint i32 %i.vq, %.pn.i897.i
  %.0.i898.i = or disjoint i32 %i.vr, %i.vl
  %i.vs = or disjoint i32 %.0.i898.i, %i.vn
  %i.vt = zext nneg i32 %i.vs to i64              ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !56
  %i.vw = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.vt
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !56
  %i.vy = zext i8 %i.vx to i32                    ; 2 uses
  %i.vz = zext i8 %i.vv to i64
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.vz ; 4 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !99 ; 6 uses
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !101 ; 6 uses
  %i.wd = sub i32 %.35680.i, %i.wc                ; 5 uses
  %i.we = lshr i32 %.56744.i, 16
  %i.wf = icmp ult i32 %i.we, %i.wc
  br i1 %i.wf, label %bb.ep, label %bb.ex

bb.ep:                                            ; preds = %bb.eo
  %i.wg = icmp ult i32 %i.wd, %i.wc               ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !102 ; 2 uses
  %.sink1149.i = select i1 %i.wg, i64 8, i64 16
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 %.sink1149.i
  %storemerge882.i = load ptr, ptr %i.wj, align 8, !tbaa !99
  store ptr %storemerge882.i, ptr %i.wa, align 8, !tbaa !99
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ew, %bb.ep
  %.57745.i = phi i32 [ %.56744.i, %bb.ep ], [ %i.xa, %bb.ew ] ; 4 uses
  %.37682.i = phi i32 [ %i.wc, %bb.ep ], [ %i.wz, %bb.ew ]
  %.57.i = phi i32 [ %.56.i, %bb.ep ], [ %i.xb, %bb.ew ] ; 2 uses
  %i.wk = icmp eq i32 %.57.i, 0
  br i1 %i.wk, label %bb.er, label %bb.ew

bb.er:                                            ; preds = %bb.eq
  %i.wl = load ptr, ptr %i.y, align 8, !tbaa !95  ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 1 ; 3 uses
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !56  ; 2 uses
  %i.wo = zext i8 %i.wn to i32                    ; 2 uses
  %i.wp = load i8, ptr %i.wl, align 1, !tbaa !56
  %i.wq = icmp eq i8 %i.wp, -1
  br i1 %i.wq, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.wr = icmp ugt i8 %i.wn, -113
  br i1 %i.wr, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ws = add i32 %.57745.i, 65280
  %i.wt = load i32, ptr %i.z, align 4, !tbaa !103
  %i.wu = add i32 %i.wt, 1
  store i32 %i.wu, ptr %i.z, align 4, !tbaa !103
  br label %bb.ew

bb.eu:                                            ; preds = %bb.es
  store ptr %i.wm, ptr %i.y, align 8, !tbaa !95
  %i.wv = shl nuw nsw i32 %i.wo, 9
  %i.ww = add i32 %i.wv, %.57745.i
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er
  store ptr %i.wm, ptr %i.y, align 8, !tbaa !95
  %i.wx = shl nuw nsw i32 %i.wo, 8
  %i.wy = add i32 %i.wx, %.57745.i
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.eq
  %.59747.i = phi i32 [ %.57745.i, %bb.eq ], [ %i.ws, %bb.et ], [ %i.ww, %bb.eu ], [ %i.wy, %bb.ev ]
  %.59.i = phi i32 [ %.57.i, %bb.eq ], [ 8, %bb.et ], [ 7, %bb.eu ], [ 8, %bb.ev ]
  %i.wz = shl i32 %.37682.i, 1                    ; 3 uses
  %i.xa = shl i32 %.59747.i, 1                    ; 2 uses
  %i.xb = add i32 %.59.i, -1                      ; 2 uses
  %i.xc = icmp ult i32 %i.wz, 32768
  br i1 %i.xc, label %bb.eq, label %.loopexit.i.loopexit, !llvm.loop !355

bb.ex:                                            ; preds = %bb.eo
  %i.xd = shl nuw i32 %i.wc, 16
  %i.xe = sub i32 %.56744.i, %i.xd                ; 2 uses
  %i.xf = and i32 %i.wd, 32768
  %i.xg = icmp eq i32 %i.xf, 0
  br i1 %i.xg, label %bb.ey, label %bb.fg

bb.ey:                                            ; preds = %bb.ex
  %i.xh = icmp ult i32 %i.wd, %i.wc               ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !102 ; 2 uses
  %.sink1150.i = select i1 %i.xh, i64 16, i64 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wb, i64 %.sink1150.i
  %storemerge879.i = load ptr, ptr %i.xk, align 8, !tbaa !99
  store ptr %storemerge879.i, ptr %i.wa, align 8, !tbaa !99
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ff, %bb.ey
  %.60748.i = phi i32 [ %i.xe, %bb.ey ], [ %i.yb, %bb.ff ] ; 4 uses
  %.38683.i = phi i32 [ %i.wd, %bb.ey ], [ %i.ya, %bb.ff ]
  %.60.i = phi i32 [ %.56.i, %bb.ey ], [ %i.yc, %bb.ff ] ; 2 uses
  %i.xl = icmp eq i32 %.60.i, 0
  br i1 %i.xl, label %bb.fa, label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  %i.xm = load ptr, ptr %i.y, align 8, !tbaa !95  ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 1 ; 3 uses
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !56  ; 2 uses
  %i.xp = zext i8 %i.xo to i32                    ; 2 uses
  %i.xq = load i8, ptr %i.xm, align 1, !tbaa !56
  %i.xr = icmp eq i8 %i.xq, -1
  br i1 %i.xr, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.xs = icmp ugt i8 %i.xo, -113
  br i1 %i.xs, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.xt = add i32 %.60748.i, 65280
  %i.xu = load i32, ptr %i.z, align 4, !tbaa !103
  %i.xv = add i32 %i.xu, 1
  store i32 %i.xv, ptr %i.z, align 4, !tbaa !103
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fb
  store ptr %i.xn, ptr %i.y, align 8, !tbaa !95
  %i.xw = shl nuw nsw i32 %i.xp, 9
  %i.xx = add i32 %i.xw, %.60748.i
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fa
  store ptr %i.xn, ptr %i.y, align 8, !tbaa !95
  %i.xy = shl nuw nsw i32 %i.xp, 8
  %i.xz = add i32 %i.xy, %.60748.i
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.ez
  %.62750.i = phi i32 [ %.60748.i, %bb.ez ], [ %i.xt, %bb.fc ], [ %i.xx, %bb.fd ], [ %i.xz, %bb.fe ]
  %.62.i = phi i32 [ %.60.i, %bb.ez ], [ 8, %bb.fc ], [ 7, %bb.fd ], [ 8, %bb.fe ]
  %i.ya = shl i32 %.38683.i, 1                    ; 3 uses
  %i.yb = shl i32 %.62750.i, 1                    ; 2 uses
  %i.yc = add i32 %.62.i, -1                      ; 2 uses
  %i.yd = icmp ult i32 %i.ya, 32768
  br i1 %i.yd, label %bb.ez, label %.loopexit.i.loopexit482, !llvm.loop !356

bb.fg:                                            ; preds = %bb.ex
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !102
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %bb.ew
  %.not881.i = icmp eq i32 %i.wi, 0
  %i.yg = zext i1 %.not881.i to i32
  %.21.i = select i1 %i.wg, i32 %i.wi, i32 %i.yg
  br label %.loopexit.i

.loopexit.i.loopexit482:                          ; preds = %bb.ff
  %.not880.i = icmp eq i32 %i.xj, 0
  %i.yh = zext i1 %.not880.i to i32
  %.22.i = select i1 %i.xh, i32 %i.yh, i32 %i.xj
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit482, %.loopexit.i.loopexit, %bb.fg
  %.63751.i = phi i32 [ %i.xe, %bb.fg ], [ %i.xa, %.loopexit.i.loopexit ], [ %i.yb, %.loopexit.i.loopexit482 ]
  %.39684.i = phi i32 [ %i.wd, %bb.fg ], [ %i.wz, %.loopexit.i.loopexit ], [ %i.ya, %.loopexit.i.loopexit482 ]
  %.63.i = phi i32 [ %.56.i, %bb.fg ], [ %i.xb, %.loopexit.i.loopexit ], [ %i.yc, %.loopexit.i.loopexit482 ]
  %.23.i = phi i32 [ %i.yf, %bb.fg ], [ %.21.i, %.loopexit.i.loopexit ], [ %.22.i, %.loopexit.i.loopexit482 ] ; 2 uses
  %i.yi = xor i32 %.23.i, %i.vy                   ; 2 uses
  %.not883.i = icmp eq i32 %.23.i, %i.vy
  %i.yj = select i1 %.not883.i, i32 %i.v, i32 %i.aa
  %i.yk = getelementptr inbounds nuw i8, ptr %.1770962.i, i64 768
  store i32 %i.yj, ptr %i.yk, align 4, !tbaa !6
  %i.yl = load i32, ptr %i.vf, align 4, !tbaa !6
  %i.ym = or i32 %i.yl, 16384
  store i32 %i.ym, ptr %i.vf, align 4, !tbaa !6
  %i.yn = shl i32 %i.yi, 28
  %i.yo = or i32 %.5.i, %i.yn
  %i.yp = or disjoint i32 %i.yo, 8192
  %i.yq = load i32, ptr %i.vh, align 4, !tbaa !6
  %i.yr = or i32 %i.yq, 4096
  store i32 %i.yr, ptr %i.vh, align 4, !tbaa !6
  %i.ys = getelementptr inbounds nuw i8, ptr %.1767963.i, i64 264 ; 2 uses
  %i.yt = shl i32 %i.yi, 18
  %3 = load i32, ptr %i.ys, align 4, !tbaa !6
  %4 = or i32 %i.yt, %3
  %i.yu = or i32 %4, 2
  store i32 %i.yu, ptr %i.ys, align 4, !tbaa !6
  %i.yv = getelementptr inbounds nuw i8, ptr %.1767963.i, i64 260 ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !6
  %i.yx = or i32 %i.yw, 4
  store i32 %i.yx, ptr %i.yv, align 4, !tbaa !6
  %i.yy = getelementptr inbounds nuw i8, ptr %.1767963.i, i64 268 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !6
  %i.za = or i32 %i.yz, 1
  store i32 %i.za, ptr %i.yy, align 4, !tbaa !6
  br label %bb.fh

bb.fh:                                            ; preds = %.loopexit.i, %.loopexit900.i
  %.8763.i = phi ptr [ %i.wa, %.loopexit.i ], [ %i.sx, %.loopexit900.i ]
  %.64752.i = phi i32 [ %.63751.i, %.loopexit.i ], [ %.56744.i, %.loopexit900.i ]
  %.40685.i = phi i32 [ %.39684.i, %.loopexit.i ], [ %.35680.i, %.loopexit900.i ]
  %.64.i = phi i32 [ %.63.i, %.loopexit.i ], [ %.56.i, %.loopexit900.i ]
  %.6.i = phi i32 [ %i.yp, %.loopexit.i ], [ %.5.i, %.loopexit900.i ]
  %i.zb = or i32 %.6.i, 1073741824
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.du
  %.9764.i = phi ptr [ %.8763.i, %bb.fh ], [ %.7762.i, %bb.du ]
  %.65753.i = phi i32 [ %.64752.i, %bb.fh ], [ %.49737.i, %bb.du ]
  %.41686.i = phi i32 [ %.40685.i, %bb.fh ], [ %.31676.i, %bb.du ]
  %.65.i = phi i32 [ %.64.i, %bb.fh ], [ %.49.i, %bb.du ]
  %.7.i = phi i32 [ %i.zb, %bb.fh ], [ %.5.i, %bb.du ]
  store i32 %.7.i, ptr %.1767963.i, align 4, !tbaa !6
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.d
  %.10765.i = phi ptr [ %.9764.i, %bb.fi ], [ %.1756964.i, %bb.d ] ; 3 uses
  %.66754.i = phi i32 [ %.65753.i, %bb.fi ], [ %.1689965.i, %bb.d ] ; 3 uses
  %.42687.i = phi i32 [ %.41686.i, %bb.fi ], [ %.1646966.i, %bb.d ] ; 3 uses
  %.66.i = phi i32 [ %.65.i, %bb.fi ], [ %.1622967.i, %bb.d ] ; 3 uses
  %i.zc = add nuw nsw i32 %.0774961.i, 1          ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.1770962.i, i64 4
  %i.ze = getelementptr inbounds nuw i8, ptr %.1767963.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.zc, 64
  br i1 %exitcond.not.i, label %bb.fk, label %bb.d, !llvm.loop !357

bb.fk:                                            ; preds = %bb.fj
  %i.zf = add nuw nsw i32 %.0772968.i, 4
  %i.zg = getelementptr inbounds nuw i8, ptr %.1770962.i, i64 772
  %i.zh = getelementptr inbounds nuw i8, ptr %.1767963.i, i64 12
  %i.zi = icmp samesign ult i32 %.0772968.i, 60
  br i1 %i.zi, label %.preheader.i, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit.sink.split, !llvm.loop !358

.preheader.i12:                                   ; preds = %bb.c, %bb.ls
  %.0626979.i = phi i32 [ %.66.i53, %bb.ls ], [ %i.s, %bb.c ]
  %.0650978.i = phi i32 [ %.42692.i, %bb.ls ], [ %i.q, %bb.c ]
  %.0693977.i = phi i32 [ %.66759.i, %bb.ls ], [ %i.o, %bb.c ]
  %.0760976.i = phi ptr [ %.10770.i, %bb.ls ], [ %i.n, %bb.c ]
  %.0771975.i = phi ptr [ %i.ayy, %bb.ls ], [ %i.l, %bb.c ]
  %.0774974.i = phi ptr [ %i.ayx, %bb.ls ], [ %i.i, %bb.c ]
  %.0777973.i = phi i32 [ %i.ayw, %bb.ls ], [ 0, %bb.c ] ; 2 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.lr, %.preheader.i12
  %.1627972.i = phi i32 [ %.0626979.i, %.preheader.i12 ], [ %.66.i53, %bb.lr ] ; 5 uses
  %.1651971.i = phi i32 [ %.0650978.i, %.preheader.i12 ], [ %.42692.i, %bb.lr ] ; 3 uses
  %.1694970.i = phi i32 [ %.0693977.i, %.preheader.i12 ], [ %.66759.i, %bb.lr ] ; 5 uses
  %.1761969.i = phi ptr [ %.0760976.i, %.preheader.i12 ], [ %.10770.i, %bb.lr ] ; 2 uses
  %.1772968.i = phi ptr [ %.0771975.i, %.preheader.i12 ], [ %i.ayv, %bb.lr ] ; 18 uses
  %.1775967.i = phi ptr [ %.0774974.i, %.preheader.i12 ], [ %i.ayu, %bb.lr ] ; 6 uses
  %.0779966.i = phi i32 [ 0, %.preheader.i12 ], [ %i.ayt, %bb.lr ]
  %i.zj = load i32, ptr %.1772968.i, align 4, !tbaa !6 ; 9 uses
  %.not.i13 = icmp eq i32 %i.zj, 0
  br i1 %.not.i13, label %bb.lr, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.zk = and i32 %i.zj, 2097168
  %i.zl = icmp ne i32 %i.zk, 0
  %i.zm = and i32 %i.zj, 495                      ; 2 uses
  %.not846.i = icmp eq i32 %i.zm, 0
  %or.cond.i14 = or i1 %i.zl, %.not846.i
  br i1 %or.cond.i14, label %bb.ha, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.val894.i = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %.val894.i, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !56
  %i.zq = zext i8 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.zq ; 4 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !99 ; 6 uses
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !101 ; 6 uses
  %i.zu = sub i32 %.1651971.i, %i.zt              ; 5 uses
  %i.zv = lshr i32 %.1694970.i, 16
  %i.zw = icmp ult i32 %i.zv, %i.zt
  br i1 %i.zw, label %bb.fo, label %bb.fw

bb.fo:                                            ; preds = %bb.fn
  %i.zx = icmp ult i32 %i.zu, %i.zt               ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !102 ; 2 uses
  %.sink.i113 = select i1 %i.zx, i64 8, i64 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.sink.i113
  %storemerge849.i114 = load ptr, ptr %i.aaa, align 8, !tbaa !99
  store ptr %storemerge849.i114, ptr %i.zr, align 8, !tbaa !99
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fv, %bb.fo
  %.2695.i = phi i32 [ %.1694970.i, %bb.fo ], [ %i.aar, %bb.fv ] ; 4 uses
  %.3653.i = phi i32 [ %i.zt, %bb.fo ], [ %i.aaq, %bb.fv ]
  %.2628.i = phi i32 [ %.1627972.i, %bb.fo ], [ %i.aas, %bb.fv ] ; 2 uses
  %i.aab = icmp eq i32 %.2628.i, 0
  br i1 %i.aab, label %bb.fq, label %bb.fv

bb.fq:                                            ; preds = %bb.fp
  %i.aac = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 1 ; 3 uses
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !56 ; 2 uses
  %i.aaf = zext i8 %i.aae to i32                  ; 2 uses
  %i.aag = load i8, ptr %i.aac, align 1, !tbaa !56
  %i.aah = icmp eq i8 %i.aag, -1
  br i1 %i.aah, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.aai = icmp ugt i8 %i.aae, -113
  br i1 %i.aai, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aaj = add i32 %.2695.i, 65280
  %i.aak = load i32, ptr %i.z, align 4, !tbaa !103
  %i.aal = add i32 %i.aak, 1
  store i32 %i.aal, ptr %i.z, align 4, !tbaa !103
  br label %bb.fv

bb.ft:                                            ; preds = %bb.fr
  store ptr %i.aad, ptr %i.y, align 8, !tbaa !95
  %i.aam = shl nuw nsw i32 %i.aaf, 9
  %i.aan = add i32 %i.aam, %.2695.i
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fq
  store ptr %i.aad, ptr %i.y, align 8, !tbaa !95
  %i.aao = shl nuw nsw i32 %i.aaf, 8
  %i.aap = add i32 %i.aao, %.2695.i
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fp
  %.4697.i = phi i32 [ %.2695.i, %bb.fp ], [ %i.aaj, %bb.fs ], [ %i.aan, %bb.ft ], [ %i.aap, %bb.fu ]
  %.4630.i = phi i32 [ %.2628.i, %bb.fp ], [ 8, %bb.fs ], [ 7, %bb.ft ], [ 8, %bb.fu ]
  %i.aaq = shl i32 %.3653.i, 1                    ; 3 uses
  %i.aar = shl i32 %.4697.i, 1                    ; 2 uses
  %i.aas = add i32 %.4630.i, -1                   ; 2 uses
  %i.aat = icmp ult i32 %i.aaq, 32768
  br i1 %i.aat, label %bb.fp, label %.loopexit917.i.loopexit, !llvm.loop !359

bb.fw:                                            ; preds = %bb.fn
  %i.aau = shl nuw i32 %i.zt, 16
  %i.aav = sub i32 %.1694970.i, %i.aau            ; 2 uses
  %i.aaw = and i32 %i.zu, 32768
  %i.aax = icmp eq i32 %i.aaw, 0
  br i1 %i.aax, label %bb.fx, label %bb.gf

bb.fx:                                            ; preds = %bb.fw
  %i.aay = icmp ult i32 %i.zu, %i.zt              ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !102 ; 2 uses
  %.sink1141.i110 = select i1 %i.aay, i64 16, i64 8
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.sink1141.i110
  %storemerge.i111 = load ptr, ptr %i.abb, align 8, !tbaa !99
  store ptr %storemerge.i111, ptr %i.zr, align 8, !tbaa !99
  br label %bb.fy

bb.fy:                                            ; preds = %bb.ge, %bb.fx
  %.5698.i = phi i32 [ %i.aav, %bb.fx ], [ %i.abs, %bb.ge ] ; 4 uses
  %.4654.i = phi i32 [ %i.zu, %bb.fx ], [ %i.abr, %bb.ge ]
  %.5631.i = phi i32 [ %.1627972.i, %bb.fx ], [ %i.abt, %bb.ge ] ; 2 uses
  %i.abc = icmp eq i32 %.5631.i, 0
  br i1 %i.abc, label %bb.fz, label %bb.ge

bb.fz:                                            ; preds = %bb.fy
  %i.abd = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 1 ; 3 uses
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !56 ; 2 uses
  %i.abg = zext i8 %i.abf to i32                  ; 2 uses
  %i.abh = load i8, ptr %i.abd, align 1, !tbaa !56
  %i.abi = icmp eq i8 %i.abh, -1
  br i1 %i.abi, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  %i.abj = icmp ugt i8 %i.abf, -113
  br i1 %i.abj, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.abk = add i32 %.5698.i, 65280
  %i.abl = load i32, ptr %i.z, align 4, !tbaa !103
  %i.abm = add i32 %i.abl, 1
  store i32 %i.abm, ptr %i.z, align 4, !tbaa !103
  br label %bb.ge

bb.gc:                                            ; preds = %bb.ga
  store ptr %i.abe, ptr %i.y, align 8, !tbaa !95
  %i.abn = shl nuw nsw i32 %i.abg, 9
  %i.abo = add i32 %i.abn, %.5698.i
  br label %bb.ge

bb.gd:                                            ; preds = %bb.fz
end_hunk_5
begin_hunk_6_@opj_t1_dec_sigpass_mqc:bb.a
  %.8701.i = phi i32 [ %i.aav, %bb.gf ], [ %i.aar, %.loopexit917.i.loopexit ], [ %i.abs, %.loopexit917.i.loopexit481 ] ; 4 uses
  %.5655.i = phi i32 [ %i.zu, %bb.gf ], [ %i.aaq, %.loopexit917.i.loopexit ], [ %i.abr, %.loopexit917.i.loopexit481 ] ; 2 uses
  %.8634.i = phi i32 [ %.1627972.i, %bb.gf ], [ %i.aas, %.loopexit917.i.loopexit ], [ %i.abt, %.loopexit917.i.loopexit481 ] ; 4 uses
  %.2620.i = phi i32 [ %i.abw, %bb.gf ], [ %.0618.i, %.loopexit917.i.loopexit ], [ %.1619.i, %.loopexit917.i.loopexit481 ]
  %.not850.i15 = icmp eq i32 %.2620.i, 0
  br i1 %.not850.i15, label %bb.gz, label %bb.gg

bb.gg:                                            ; preds = %.loopexit917.i
  %i.abz = getelementptr inbounds i8, ptr %.1772968.i, i64 -4 ; 3 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !6
  %i.acb = getelementptr inbounds nuw i8, ptr %.1772968.i, i64 4 ; 3 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !6
  %.pn.in.i.i16 = lshr i32 %i.zj, 14
  %i.acd = and i32 %i.zj, 170
  %i.ace = lshr i32 %i.aca, 19
  %i.acf = and i32 %i.ace, 1
  %i.acg = lshr i32 %i.acc, 17
  %i.ach = and i32 %i.acg, 4
  %.pn.i.i17 = and i32 %.pn.in.i.i16, 16
  %i.aci = lshr i32 %i.zj, 16
  %i.acj = and i32 %i.aci, 64
  %i.ack = or disjoint i32 %i.acj, %i.acd
  %i.acl = or disjoint i32 %i.ack, %.pn.i.i17
  %.0.i.i18 = or disjoint i32 %i.acl, %i.acf
  %i.acm = or disjoint i32 %.0.i.i18, %i.ach
  %i.acn = zext nneg i32 %i.acm to i64            ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.acn
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !56
  %i.acq = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.acn
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !56
  %i.acs = zext i8 %i.acr to i32                  ; 2 uses
  %i.act = zext i8 %i.acp to i64
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.act ; 4 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !99 ; 6 uses
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !101 ; 6 uses
  %i.acx = sub i32 %.5655.i, %i.acw               ; 5 uses
  %i.acy = lshr i32 %.8701.i, 16
  %i.acz = icmp ult i32 %i.acy, %i.acw
  br i1 %i.acz, label %bb.gh, label %bb.gp

bb.gh:                                            ; preds = %bb.gg
  %i.ada = icmp ult i32 %i.acx, %i.acw            ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !102 ; 2 uses
  %.sink1142.i108 = select i1 %i.ada, i64 8, i64 16
  %i.add = getelementptr inbounds nuw i8, ptr %i.acv, i64 %.sink1142.i108
  %storemerge854.i = load ptr, ptr %i.add, align 8, !tbaa !99
  store ptr %storemerge854.i, ptr %i.acu, align 8, !tbaa !99
  br label %bb.gi

bb.gi:                                            ; preds = %bb.go, %bb.gh
  %.9702.i = phi i32 [ %.8701.i, %bb.gh ], [ %i.adu, %bb.go ] ; 4 uses
  %.7657.i = phi i32 [ %i.acw, %bb.gh ], [ %i.adt, %bb.go ]
  %.9635.i = phi i32 [ %.8634.i, %bb.gh ], [ %i.adv, %bb.go ] ; 2 uses
  %i.ade = icmp eq i32 %.9635.i, 0
  br i1 %i.ade, label %bb.gj, label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %i.adf = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 1 ; 3 uses
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !56 ; 2 uses
  %i.adi = zext i8 %i.adh to i32                  ; 2 uses
  %i.adj = load i8, ptr %i.adf, align 1, !tbaa !56
  %i.adk = icmp eq i8 %i.adj, -1
  br i1 %i.adk, label %bb.gk, label %bb.gn

bb.gk:                                            ; preds = %bb.gj
  %i.adl = icmp ugt i8 %i.adh, -113
  br i1 %i.adl, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.adm = add i32 %.9702.i, 65280
  %i.adn = load i32, ptr %i.z, align 4, !tbaa !103
  %i.ado = add i32 %i.adn, 1
  store i32 %i.ado, ptr %i.z, align 4, !tbaa !103
  br label %bb.go

bb.gm:                                            ; preds = %bb.gk
  store ptr %i.adg, ptr %i.y, align 8, !tbaa !95
  %i.adp = shl nuw nsw i32 %i.adi, 9
  %i.adq = add i32 %i.adp, %.9702.i
  br label %bb.go

bb.gn:                                            ; preds = %bb.gj
  store ptr %i.adg, ptr %i.y, align 8, !tbaa !95
  %i.adr = shl nuw nsw i32 %i.adi, 8
  %i.ads = add i32 %i.adr, %.9702.i
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gi
  %.11704.i = phi i32 [ %.9702.i, %bb.gi ], [ %i.adm, %bb.gl ], [ %i.adq, %bb.gm ], [ %i.ads, %bb.gn ]
  %.11637.i = phi i32 [ %.9635.i, %bb.gi ], [ 8, %bb.gl ], [ 7, %bb.gm ], [ 8, %bb.gn ]
  %i.adt = shl i32 %.7657.i, 1                    ; 3 uses
  %i.adu = shl i32 %.11704.i, 1                   ; 2 uses
  %i.adv = add i32 %.11637.i, -1                  ; 2 uses
  %i.adw = icmp ult i32 %i.adt, 32768
  br i1 %i.adw, label %bb.gi, label %.loopexit915.i.loopexit, !llvm.loop !361

bb.gp:                                            ; preds = %bb.gg
  %i.adx = shl nuw i32 %i.acw, 16
  %i.ady = sub i32 %.8701.i, %i.adx               ; 2 uses
  %i.adz = and i32 %i.acx, 32768
  %i.aea = icmp eq i32 %i.adz, 0
  br i1 %i.aea, label %bb.gq, label %bb.gy

bb.gq:                                            ; preds = %bb.gp
  %i.aeb = icmp ult i32 %i.acx, %i.acw            ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !102 ; 2 uses
  %.sink1143.i106 = select i1 %i.aeb, i64 16, i64 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acv, i64 %.sink1143.i106
  %storemerge851.i = load ptr, ptr %i.aee, align 8, !tbaa !99
  store ptr %storemerge851.i, ptr %i.acu, align 8, !tbaa !99
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gx, %bb.gq
  %.12705.i = phi i32 [ %i.ady, %bb.gq ], [ %i.aev, %bb.gx ] ; 4 uses
  %.8658.i = phi i32 [ %i.acx, %bb.gq ], [ %i.aeu, %bb.gx ]
  %.12638.i = phi i32 [ %.8634.i, %bb.gq ], [ %i.aew, %bb.gx ] ; 2 uses
  %i.aef = icmp eq i32 %.12638.i, 0
  br i1 %i.aef, label %bb.gs, label %bb.gx

bb.gs:                                            ; preds = %bb.gr
  %i.aeg = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 1 ; 3 uses
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !56 ; 2 uses
  %i.aej = zext i8 %i.aei to i32                  ; 2 uses
  %i.aek = load i8, ptr %i.aeg, align 1, !tbaa !56
  %i.ael = icmp eq i8 %i.aek, -1
  br i1 %i.ael, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.aem = icmp ugt i8 %i.aei, -113
  br i1 %i.aem, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.aen = add i32 %.12705.i, 65280
  %i.aeo = load i32, ptr %i.z, align 4, !tbaa !103
  %i.aep = add i32 %i.aeo, 1
  store i32 %i.aep, ptr %i.z, align 4, !tbaa !103
  br label %bb.gx

bb.gv:                                            ; preds = %bb.gt
  store ptr %i.aeh, ptr %i.y, align 8, !tbaa !95
  %i.aeq = shl nuw nsw i32 %i.aej, 9
  %i.aer = add i32 %i.aeq, %.12705.i
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gs
  store ptr %i.aeh, ptr %i.y, align 8, !tbaa !95
  %i.aes = shl nuw nsw i32 %i.aej, 8
  %i.aet = add i32 %i.aes, %.12705.i
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %bb.gu, %bb.gr
  %.14707.i = phi i32 [ %.12705.i, %bb.gr ], [ %i.aen, %bb.gu ], [ %i.aer, %bb.gv ], [ %i.aet, %bb.gw ]
  %.14640.i = phi i32 [ %.12638.i, %bb.gr ], [ 8, %bb.gu ], [ 7, %bb.gv ], [ 8, %bb.gw ]
  %i.aeu = shl i32 %.8658.i, 1                    ; 3 uses
  %i.aev = shl i32 %.14707.i, 1                   ; 2 uses
  %i.aew = add i32 %.14640.i, -1                  ; 2 uses
  %i.aex = icmp ult i32 %i.aeu, 32768
  br i1 %i.aex, label %bb.gr, label %.loopexit915.i.loopexit480, !llvm.loop !362

bb.gy:                                            ; preds = %bb.gp
  %i.aey = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !102
  br label %.loopexit915.i

.loopexit915.i.loopexit:                          ; preds = %bb.go
  %.not853.i107 = icmp eq i32 %i.adc, 0
  %i.afa = zext i1 %.not853.i107 to i32
  %.3621.i = select i1 %i.ada, i32 %i.adc, i32 %i.afa
  br label %.loopexit915.i

.loopexit915.i.loopexit480:                       ; preds = %bb.gx
  %.not852.i = icmp eq i32 %i.aed, 0
  %i.afb = zext i1 %.not852.i to i32
  %.4622.i = select i1 %i.aeb, i32 %i.afb, i32 %i.aed
  br label %.loopexit915.i

.loopexit915.i:                                   ; preds = %.loopexit915.i.loopexit480, %.loopexit915.i.loopexit, %bb.gy
  %.15708.i = phi i32 [ %i.ady, %bb.gy ], [ %i.adu, %.loopexit915.i.loopexit ], [ %i.aev, %.loopexit915.i.loopexit480 ]
  %.9659.i = phi i32 [ %i.acx, %bb.gy ], [ %i.adt, %.loopexit915.i.loopexit ], [ %i.aeu, %.loopexit915.i.loopexit480 ]
  %.15641.i = phi i32 [ %.8634.i, %bb.gy ], [ %i.adv, %.loopexit915.i.loopexit ], [ %i.aew, %.loopexit915.i.loopexit480 ]
  %.5623.i = phi i32 [ %i.aez, %bb.gy ], [ %.3621.i, %.loopexit915.i.loopexit ], [ %.4622.i, %.loopexit915.i.loopexit480 ] ; 2 uses
  %i.afc = xor i32 %.5623.i, %i.acs               ; 2 uses
  %.not855.i = icmp eq i32 %.5623.i, %i.acs
  %i.afd = select i1 %.not855.i, i32 %i.v, i32 %i.aa
  store i32 %i.afd, ptr %.1775967.i, align 4, !tbaa !6
  %i.afe = load i32, ptr %i.abz, align 4, !tbaa !6
  %i.aff = or i32 %i.afe, 32
  store i32 %i.aff, ptr %i.abz, align 4, !tbaa !6
  %i.afg = shl i32 %i.afc, 19
  %i.afh = or i32 %i.zj, %i.afg
  %i.afi = or disjoint i32 %i.afh, 16
  %i.afj = load i32, ptr %i.acb, align 4, !tbaa !6
  %i.afk = or i32 %i.afj, 8
  store i32 %i.afk, ptr %i.acb, align 4, !tbaa !6
  %i.afl = getelementptr inbounds i8, ptr %.1772968.i, i64 -264 ; 2 uses
  %i.afm = shl i32 %i.afc, 31
  %5 = load i32, ptr %i.afl, align 4, !tbaa !6
  %6 = or i32 %i.afm, %5
  %i.afn = or i32 %6, 65536
  store i32 %i.afn, ptr %i.afl, align 4, !tbaa !6
  %i.afo = getelementptr inbounds i8, ptr %.1772968.i, i64 -268 ; 2 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !6
  %i.afq = or i32 %i.afp, 131072
  store i32 %i.afq, ptr %i.afo, align 4, !tbaa !6
  %i.afr = getelementptr inbounds i8, ptr %.1772968.i, i64 -260 ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !6
  %i.aft = or i32 %i.afs, 32768
  store i32 %i.aft, ptr %i.afr, align 4, !tbaa !6
  br label %bb.gz

bb.gz:                                            ; preds = %.loopexit915.i, %.loopexit917.i
  %.2762.i = phi ptr [ %i.acu, %.loopexit915.i ], [ %i.zr, %.loopexit917.i ]
  %.16709.i = phi i32 [ %.15708.i, %.loopexit915.i ], [ %.8701.i, %.loopexit917.i ]
  %.10660.i = phi i32 [ %.9659.i, %.loopexit915.i ], [ %.5655.i, %.loopexit917.i ]
  %.16642.i = phi i32 [ %.15641.i, %.loopexit915.i ], [ %.8634.i, %.loopexit917.i ]
  %.0.i19 = phi i32 [ %i.afi, %.loopexit915.i ], [ %i.zj, %.loopexit917.i ]
  %i.afu = or i32 %.0.i19, 2097152
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.fm
  %.3763.i = phi ptr [ %.2762.i, %bb.gz ], [ %.1761969.i, %bb.fm ]
  %.17710.i = phi i32 [ %.16709.i, %bb.gz ], [ %.1694970.i, %bb.fm ] ; 4 uses
  %.11661.i = phi i32 [ %.10660.i, %bb.gz ], [ %.1651971.i, %bb.fm ] ; 2 uses
  %.17643.i = phi i32 [ %.16642.i, %bb.gz ], [ %.1627972.i, %bb.fm ] ; 4 uses
  %.1.i20 = phi i32 [ %i.afu, %bb.gz ], [ %i.zj, %bb.fm ] ; 8 uses
  %i.afv = and i32 %.1.i20, 16777344
  %i.afw = icmp ne i32 %i.afv, 0
  %i.afx = and i32 %.1.i20, 3960
  %.not856.i21 = icmp eq i32 %i.afx, 0
  %or.cond889.i = or i1 %i.afw, %.not856.i21
  br i1 %or.cond889.i, label %bb.io, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.afy = lshr i32 %.1.i20, 3                    ; 2 uses
  %.val893.i = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.afz = and i32 %i.afy, 495
  %i.aga = zext nneg i32 %i.afz to i64
  %i.agb = getelementptr inbounds nuw i8, ptr %.val893.i, i64 %i.aga
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !56
  %i.agd = zext i8 %i.agc to i64
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.agd ; 4 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !99 ; 6 uses
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !101 ; 6 uses
  %i.agh = sub i32 %.11661.i, %i.agg              ; 5 uses
  %i.agi = lshr i32 %.17710.i, 16
  %i.agj = icmp ult i32 %i.agi, %i.agg
  br i1 %i.agj, label %bb.hc, label %bb.hk

bb.hc:                                            ; preds = %bb.hb
  %i.agk = icmp ult i32 %i.agh, %i.agg            ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !102 ; 2 uses
  %.sink1144.i104 = select i1 %i.agk, i64 8, i64 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agf, i64 %.sink1144.i104
  %storemerge860.i105 = load ptr, ptr %i.agn, align 8, !tbaa !99
  store ptr %storemerge860.i105, ptr %i.age, align 8, !tbaa !99
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hj, %bb.hc
  %.18711.i = phi i32 [ %.17710.i, %bb.hc ], [ %i.ahe, %bb.hj ] ; 4 uses
  %.13663.i = phi i32 [ %i.agg, %bb.hc ], [ %i.ahd, %bb.hj ]
  %.18644.i = phi i32 [ %.17643.i, %bb.hc ], [ %i.ahf, %bb.hj ] ; 2 uses
  %i.ago = icmp eq i32 %.18644.i, 0
  br i1 %i.ago, label %bb.he, label %bb.hj

bb.he:                                            ; preds = %bb.hd
  %i.agp = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 1 ; 3 uses
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !56 ; 2 uses
  %i.ags = zext i8 %i.agr to i32                  ; 2 uses
  %i.agt = load i8, ptr %i.agp, align 1, !tbaa !56
  %i.agu = icmp eq i8 %i.agt, -1
  br i1 %i.agu, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %bb.he
  %i.agv = icmp ugt i8 %i.agr, -113
  br i1 %i.agv, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.agw = add i32 %.18711.i, 65280
  %i.agx = load i32, ptr %i.z, align 4, !tbaa !103
  %i.agy = add i32 %i.agx, 1
  store i32 %i.agy, ptr %i.z, align 4, !tbaa !103
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  store ptr %i.agq, ptr %i.y, align 8, !tbaa !95
  %i.agz = shl nuw nsw i32 %i.ags, 9
  %i.aha = add i32 %i.agz, %.18711.i
  br label %bb.hj

bb.hi:                                            ; preds = %bb.he
  store ptr %i.agq, ptr %i.y, align 8, !tbaa !95
  %i.ahb = shl nuw nsw i32 %i.ags, 8
  %i.ahc = add i32 %i.ahb, %.18711.i
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.hd
  %.20713.i = phi i32 [ %.18711.i, %bb.hd ], [ %i.agw, %bb.hg ], [ %i.aha, %bb.hh ], [ %i.ahc, %bb.hi ]
  %.20646.i = phi i32 [ %.18644.i, %bb.hd ], [ 8, %bb.hg ], [ 7, %bb.hh ], [ 8, %bb.hi ]
  %i.ahd = shl i32 %.13663.i, 1                   ; 3 uses
  %i.ahe = shl i32 %.20713.i, 1                   ; 2 uses
  %i.ahf = add i32 %.20646.i, -1                  ; 2 uses
  %i.ahg = icmp ult i32 %i.ahd, 32768
  br i1 %i.ahg, label %bb.hd, label %.loopexit913.i.loopexit, !llvm.loop !363

bb.hk:                                            ; preds = %bb.hb
  %i.ahh = shl nuw i32 %i.agg, 16
  %i.ahi = sub i32 %.17710.i, %i.ahh              ; 2 uses
  %i.ahj = and i32 %i.agh, 32768
  %i.ahk = icmp eq i32 %i.ahj, 0
  br i1 %i.ahk, label %bb.hl, label %bb.ht

bb.hl:                                            ; preds = %bb.hk
  %i.ahl = icmp ult i32 %i.agh, %i.agg            ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !102 ; 2 uses
  %.sink1145.i101 = select i1 %i.ahl, i64 16, i64 8
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agf, i64 %.sink1145.i101
  %storemerge857.i102 = load ptr, ptr %i.aho, align 8, !tbaa !99
  store ptr %storemerge857.i102, ptr %i.age, align 8, !tbaa !99
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hs, %bb.hl
  %.21714.i = phi i32 [ %i.ahi, %bb.hl ], [ %i.aif, %bb.hs ] ; 4 uses
  %.14664.i = phi i32 [ %i.agh, %bb.hl ], [ %i.aie, %bb.hs ]
  %.21647.i = phi i32 [ %.17643.i, %bb.hl ], [ %i.aig, %bb.hs ] ; 2 uses
  %i.ahp = icmp eq i32 %.21647.i, 0
  br i1 %i.ahp, label %bb.hn, label %bb.hs

bb.hn:                                            ; preds = %bb.hm
  %i.ahq = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1 ; 3 uses
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !56 ; 2 uses
  %i.aht = zext i8 %i.ahs to i32                  ; 2 uses
  %i.ahu = load i8, ptr %i.ahq, align 1, !tbaa !56
  %i.ahv = icmp eq i8 %i.ahu, -1
  br i1 %i.ahv, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  %i.ahw = icmp ugt i8 %i.ahs, -113
  br i1 %i.ahw, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.ahx = add i32 %.21714.i, 65280
  %i.ahy = load i32, ptr %i.z, align 4, !tbaa !103
  %i.ahz = add i32 %i.ahy, 1
  store i32 %i.ahz, ptr %i.z, align 4, !tbaa !103
  br label %bb.hs

bb.hq:                                            ; preds = %bb.ho
  store ptr %i.ahr, ptr %i.y, align 8, !tbaa !95
  %i.aia = shl nuw nsw i32 %i.aht, 9
  %i.aib = add i32 %i.aia, %.21714.i
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hn
  store ptr %i.ahr, ptr %i.y, align 8, !tbaa !95
  %i.aic = shl nuw nsw i32 %i.aht, 8
  %i.aid = add i32 %i.aic, %.21714.i
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq, %bb.hp, %bb.hm
  %.23716.i = phi i32 [ %.21714.i, %bb.hm ], [ %i.ahx, %bb.hp ], [ %i.aib, %bb.hq ], [ %i.aid, %bb.hr ]
  %.23649.i = phi i32 [ %.21647.i, %bb.hm ], [ 8, %bb.hp ], [ 7, %bb.hq ], [ 8, %bb.hr ]
  %i.aie = shl i32 %.14664.i, 1                   ; 3 uses
  %i.aif = shl i32 %.23716.i, 1                   ; 2 uses
  %i.aig = add i32 %.23649.i, -1                  ; 2 uses
  %i.aih = icmp ult i32 %i.aie, 32768
  br i1 %i.aih, label %bb.hm, label %.loopexit913.i.loopexit479, !llvm.loop !364

bb.ht:                                            ; preds = %bb.hk
  %i.aii = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !102
  br label %.loopexit913.i

.loopexit913.i.loopexit:                          ; preds = %bb.hj
  %.not859.i103 = icmp eq i32 %i.agm, 0
  %i.aik = zext i1 %.not859.i103 to i32
  %.6624.i = select i1 %i.agk, i32 %i.agm, i32 %i.aik
  br label %.loopexit913.i

.loopexit913.i.loopexit479:                       ; preds = %bb.hs
  %.not858.i100 = icmp eq i32 %i.ahn, 0
  %i.ail = zext i1 %.not858.i100 to i32
  %.7625.i = select i1 %i.ahl, i32 %i.ail, i32 %i.ahn
  br label %.loopexit913.i

.loopexit913.i:                                   ; preds = %.loopexit913.i.loopexit479, %.loopexit913.i.loopexit, %bb.ht
  %.24717.i = phi i32 [ %i.ahi, %bb.ht ], [ %i.ahe, %.loopexit913.i.loopexit ], [ %i.aif, %.loopexit913.i.loopexit479 ] ; 4 uses
  %.15665.i = phi i32 [ %i.agh, %bb.ht ], [ %i.ahd, %.loopexit913.i.loopexit ], [ %i.aie, %.loopexit913.i.loopexit479 ] ; 2 uses
  %.24.i22 = phi i32 [ %.17643.i, %bb.ht ], [ %i.ahf, %.loopexit913.i.loopexit ], [ %i.aig, %.loopexit913.i.loopexit479 ] ; 4 uses
  %.8.i23 = phi i32 [ %i.aij, %bb.ht ], [ %.6624.i, %.loopexit913.i.loopexit ], [ %.7625.i, %.loopexit913.i.loopexit479 ]
  %.not861.i24 = icmp eq i32 %.8.i23, 0
  br i1 %.not861.i24, label %bb.in, label %bb.hu

bb.hu:                                            ; preds = %.loopexit913.i
  %i.aim = getelementptr inbounds i8, ptr %.1772968.i, i64 -4 ; 3 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !6
end_hunk_6
begin_hunk_7_@opj_t1_dec_sigpass_mqc:bb.a
  %.35685.i = phi i32 [ %i.asr, %bb.kv ], [ %i.atn, %.loopexit905.i.loopexit ], [ %i.auo, %.loopexit905.i.loopexit475 ] ; 2 uses
  %.56.i43 = phi i32 [ %.49.i39, %bb.kv ], [ %i.atp, %.loopexit905.i.loopexit ], [ %i.auq, %.loopexit905.i.loopexit475 ] ; 4 uses
  %.20.i44 = phi i32 [ %i.aut, %bb.kv ], [ %.18.i67, %.loopexit905.i.loopexit ], [ %.19.i62, %.loopexit905.i.loopexit475 ]
  %.not883.i45 = icmp eq i32 %.20.i44, 0
  br i1 %.not883.i45, label %bb.lp, label %bb.kw

bb.kw:                                            ; preds = %.loopexit905.i
  %i.auw = getelementptr inbounds i8, ptr %.1772968.i, i64 -4 ; 3 uses
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !6
  %i.auy = getelementptr inbounds nuw i8, ptr %.1772968.i, i64 4 ; 3 uses
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !6
  %.pn.in.i901.i = lshr i32 %.5.i40, 21
  %i.ava = and i32 %i.asi, 170
  %i.avb = lshr i32 %i.aux, 28
  %i.avc = and i32 %i.avb, 1
  %i.avd = lshr i32 %i.auz, 26
  %i.ave = and i32 %i.avd, 4
  %.pn.i902.i = and i32 %.pn.in.i901.i, 16
  %i.avf = lshr i32 %.5.i40, 25
  %i.avg = and i32 %i.avf, 64
  %i.avh = or disjoint i32 %i.avg, %i.ava
  %i.avi = or disjoint i32 %i.avh, %.pn.i902.i
  %.0.i903.i = or disjoint i32 %i.avi, %i.avc
  %i.avj = or disjoint i32 %.0.i903.i, %i.ave
  %i.avk = zext nneg i32 %i.avj to i64            ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.avk
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !56
  %i.avn = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.avk
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !56
  %i.avp = zext i8 %i.avo to i32                  ; 2 uses
  %i.avq = zext i8 %i.avm to i64
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.avq ; 4 uses
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !99 ; 6 uses
  %i.avt = load i32, ptr %i.avs, align 8, !tbaa !101 ; 6 uses
  %i.avu = sub i32 %.35685.i, %i.avt              ; 5 uses
  %i.avv = lshr i32 %.56749.i, 16
  %i.avw = icmp ult i32 %i.avv, %i.avt
  br i1 %i.avw, label %bb.kx, label %bb.lf

bb.kx:                                            ; preds = %bb.kw
  %i.avx = icmp ult i32 %i.avu, %i.avt            ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avs, i64 4
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !102 ; 2 uses
  %.sink1154.i = select i1 %i.avx, i64 8, i64 16
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avs, i64 %.sink1154.i
  %storemerge887.i = load ptr, ptr %i.awa, align 8, !tbaa !99
  store ptr %storemerge887.i, ptr %i.avr, align 8, !tbaa !99
  br label %bb.ky

bb.ky:                                            ; preds = %bb.le, %bb.kx
  %.57750.i = phi i32 [ %.56749.i, %bb.kx ], [ %i.awr, %bb.le ] ; 4 uses
  %.37687.i = phi i32 [ %i.avt, %bb.kx ], [ %i.awq, %bb.le ]
  %.57.i59 = phi i32 [ %.56.i43, %bb.kx ], [ %i.aws, %bb.le ] ; 2 uses
  %i.awb = icmp eq i32 %.57.i59, 0
  br i1 %i.awb, label %bb.kz, label %bb.le

bb.kz:                                            ; preds = %bb.ky
  %i.awc = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 1 ; 3 uses
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !56 ; 2 uses
  %i.awf = zext i8 %i.awe to i32                  ; 2 uses
  %i.awg = load i8, ptr %i.awc, align 1, !tbaa !56
  %i.awh = icmp eq i8 %i.awg, -1
  br i1 %i.awh, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  %i.awi = icmp ugt i8 %i.awe, -113
  br i1 %i.awi, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.awj = add i32 %.57750.i, 65280
  %i.awk = load i32, ptr %i.z, align 4, !tbaa !103
  %i.awl = add i32 %i.awk, 1
  store i32 %i.awl, ptr %i.z, align 4, !tbaa !103
  br label %bb.le

bb.lc:                                            ; preds = %bb.la
  store ptr %i.awd, ptr %i.y, align 8, !tbaa !95
  %i.awm = shl nuw nsw i32 %i.awf, 9
  %i.awn = add i32 %i.awm, %.57750.i
  br label %bb.le

bb.ld:                                            ; preds = %bb.kz
  store ptr %i.awd, ptr %i.y, align 8, !tbaa !95
  %i.awo = shl nuw nsw i32 %i.awf, 8
  %i.awp = add i32 %i.awo, %.57750.i
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc, %bb.lb, %bb.ky
  %.59752.i = phi i32 [ %.57750.i, %bb.ky ], [ %i.awj, %bb.lb ], [ %i.awn, %bb.lc ], [ %i.awp, %bb.ld ]
  %.59.i60 = phi i32 [ %.57.i59, %bb.ky ], [ 8, %bb.lb ], [ 7, %bb.lc ], [ 8, %bb.ld ]
  %i.awq = shl i32 %.37687.i, 1                   ; 3 uses
  %i.awr = shl i32 %.59752.i, 1                   ; 2 uses
  %i.aws = add i32 %.59.i60, -1                   ; 2 uses
  %i.awt = icmp ult i32 %i.awq, 32768
  br i1 %i.awt, label %bb.ky, label %.loopexit.i46.loopexit, !llvm.loop !373

bb.lf:                                            ; preds = %bb.kw
  %i.awu = shl nuw i32 %i.avt, 16
  %i.awv = sub i32 %.56749.i, %i.awu              ; 2 uses
  %i.aww = and i32 %i.avu, 32768
  %i.awx = icmp eq i32 %i.aww, 0
  br i1 %i.awx, label %bb.lg, label %bb.lo

bb.lg:                                            ; preds = %bb.lf
  %i.awy = icmp ult i32 %i.avu, %i.avt            ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.avs, i64 4
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !102 ; 2 uses
  %.sink1155.i = select i1 %i.awy, i64 16, i64 8
  %i.axb = getelementptr inbounds nuw i8, ptr %i.avs, i64 %.sink1155.i
  %storemerge884.i = load ptr, ptr %i.axb, align 8, !tbaa !99
  store ptr %storemerge884.i, ptr %i.avr, align 8, !tbaa !99
  br label %bb.lh

bb.lh:                                            ; preds = %bb.ln, %bb.lg
  %.60753.i = phi i32 [ %i.awv, %bb.lg ], [ %i.axs, %bb.ln ] ; 4 uses
  %.38688.i = phi i32 [ %i.avu, %bb.lg ], [ %i.axr, %bb.ln ]
  %.60.i56 = phi i32 [ %.56.i43, %bb.lg ], [ %i.axt, %bb.ln ] ; 2 uses
  %i.axc = icmp eq i32 %.60.i56, 0
  br i1 %i.axc, label %bb.li, label %bb.ln

bb.li:                                            ; preds = %bb.lh
  %i.axd = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 1 ; 3 uses
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !56 ; 2 uses
  %i.axg = zext i8 %i.axf to i32                  ; 2 uses
  %i.axh = load i8, ptr %i.axd, align 1, !tbaa !56
  %i.axi = icmp eq i8 %i.axh, -1
  br i1 %i.axi, label %bb.lj, label %bb.lm

bb.lj:                                            ; preds = %bb.li
  %i.axj = icmp ugt i8 %i.axf, -113
  br i1 %i.axj, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.axk = add i32 %.60753.i, 65280
  %i.axl = load i32, ptr %i.z, align 4, !tbaa !103
  %i.axm = add i32 %i.axl, 1
  store i32 %i.axm, ptr %i.z, align 4, !tbaa !103
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj
  store ptr %i.axe, ptr %i.y, align 8, !tbaa !95
  %i.axn = shl nuw nsw i32 %i.axg, 9
  %i.axo = add i32 %i.axn, %.60753.i
  br label %bb.ln

bb.lm:                                            ; preds = %bb.li
  store ptr %i.axe, ptr %i.y, align 8, !tbaa !95
  %i.axp = shl nuw nsw i32 %i.axg, 8
  %i.axq = add i32 %i.axp, %.60753.i
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll, %bb.lk, %bb.lh
  %.62755.i = phi i32 [ %.60753.i, %bb.lh ], [ %i.axk, %bb.lk ], [ %i.axo, %bb.ll ], [ %i.axq, %bb.lm ]
  %.62.i57 = phi i32 [ %.60.i56, %bb.lh ], [ 8, %bb.lk ], [ 7, %bb.ll ], [ 8, %bb.lm ]
  %i.axr = shl i32 %.38688.i, 1                   ; 3 uses
  %i.axs = shl i32 %.62755.i, 1                   ; 2 uses
  %i.axt = add i32 %.62.i57, -1                   ; 2 uses
  %i.axu = icmp ult i32 %i.axr, 32768
  br i1 %i.axu, label %bb.lh, label %.loopexit.i46.loopexit474, !llvm.loop !374

bb.lo:                                            ; preds = %bb.lf
  %i.axv = getelementptr inbounds nuw i8, ptr %i.avs, i64 4
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !102
  br label %.loopexit.i46

.loopexit.i46.loopexit:                           ; preds = %bb.le
  %.not886.i = icmp eq i32 %i.avz, 0
  %i.axx = zext i1 %.not886.i to i32
  %.21.i58 = select i1 %i.avx, i32 %i.avz, i32 %i.axx
  br label %.loopexit.i46

.loopexit.i46.loopexit474:                        ; preds = %bb.ln
  %.not885.i = icmp eq i32 %i.axa, 0
  %i.axy = zext i1 %.not885.i to i32
  %.22.i55 = select i1 %i.awy, i32 %i.axy, i32 %i.axa
  br label %.loopexit.i46

.loopexit.i46:                                    ; preds = %.loopexit.i46.loopexit474, %.loopexit.i46.loopexit, %bb.lo
  %.63756.i = phi i32 [ %i.awv, %bb.lo ], [ %i.awr, %.loopexit.i46.loopexit ], [ %i.axs, %.loopexit.i46.loopexit474 ]
  %.39689.i = phi i32 [ %i.avu, %bb.lo ], [ %i.awq, %.loopexit.i46.loopexit ], [ %i.axr, %.loopexit.i46.loopexit474 ]
  %.63.i47 = phi i32 [ %.56.i43, %bb.lo ], [ %i.aws, %.loopexit.i46.loopexit ], [ %i.axt, %.loopexit.i46.loopexit474 ]
  %.23.i48 = phi i32 [ %i.axw, %bb.lo ], [ %.21.i58, %.loopexit.i46.loopexit ], [ %.22.i55, %.loopexit.i46.loopexit474 ] ; 2 uses
  %i.axz = xor i32 %.23.i48, %i.avp               ; 2 uses
  %.not888.i = icmp eq i32 %.23.i48, %i.avp
  %i.aya = select i1 %.not888.i, i32 %i.v, i32 %i.aa
  %i.ayb = getelementptr inbounds nuw i8, ptr %.1775967.i, i64 768
  store i32 %i.aya, ptr %i.ayb, align 4, !tbaa !6
  %i.ayc = load i32, ptr %i.auw, align 4, !tbaa !6
  %i.ayd = or i32 %i.ayc, 16384
  store i32 %i.ayd, ptr %i.auw, align 4, !tbaa !6
  %i.aye = shl i32 %i.axz, 28
  %i.ayf = or i32 %.5.i40, %i.aye
  %i.ayg = or disjoint i32 %i.ayf, 8192
  %i.ayh = load i32, ptr %i.auy, align 4, !tbaa !6
  %i.ayi = or i32 %i.ayh, 4096
  store i32 %i.ayi, ptr %i.auy, align 4, !tbaa !6
  %i.ayj = getelementptr inbounds nuw i8, ptr %.1772968.i, i64 264 ; 2 uses
  %i.ayk = shl i32 %i.axz, 18
  %7 = load i32, ptr %i.ayj, align 4, !tbaa !6
  %8 = or i32 %i.ayk, %7
  %i.ayl = or i32 %8, 2
  store i32 %i.ayl, ptr %i.ayj, align 4, !tbaa !6
  %i.aym = getelementptr inbounds nuw i8, ptr %.1772968.i, i64 260 ; 2 uses
  %i.ayn = load i32, ptr %i.aym, align 4, !tbaa !6
  %i.ayo = or i32 %i.ayn, 4
  store i32 %i.ayo, ptr %i.aym, align 4, !tbaa !6
  %i.ayp = getelementptr inbounds nuw i8, ptr %.1772968.i, i64 268 ; 2 uses
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !6
  %i.ayr = or i32 %i.ayq, 1
  store i32 %i.ayr, ptr %i.ayp, align 4, !tbaa !6
  br label %bb.lp

bb.lp:                                            ; preds = %.loopexit.i46, %.loopexit905.i
  %.8768.i = phi ptr [ %i.avr, %.loopexit.i46 ], [ %i.aso, %.loopexit905.i ]
  %.64757.i = phi i32 [ %.63756.i, %.loopexit.i46 ], [ %.56749.i, %.loopexit905.i ]
  %.40690.i = phi i32 [ %.39689.i, %.loopexit.i46 ], [ %.35685.i, %.loopexit905.i ]
  %.64.i49 = phi i32 [ %.63.i47, %.loopexit.i46 ], [ %.56.i43, %.loopexit905.i ]
  %.6.i50 = phi i32 [ %i.ayg, %.loopexit.i46 ], [ %.5.i40, %.loopexit905.i ]
  %i.ays = or i32 %.6.i50, 1073741824
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.kc
  %.9769.i = phi ptr [ %.8768.i, %bb.lp ], [ %.7767.i, %bb.kc ]
  %.65758.i = phi i32 [ %.64757.i, %bb.lp ], [ %.49742.i, %bb.kc ]
  %.41691.i = phi i32 [ %.40690.i, %bb.lp ], [ %.31681.i, %bb.kc ]
  %.65.i51 = phi i32 [ %.64.i49, %bb.lp ], [ %.49.i39, %bb.kc ]
  %.7.i52 = phi i32 [ %i.ays, %bb.lp ], [ %.5.i40, %bb.kc ]
  store i32 %.7.i52, ptr %.1772968.i, align 4, !tbaa !6
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.fl
  %.10770.i = phi ptr [ %.9769.i, %bb.lq ], [ %.1761969.i, %bb.fl ] ; 3 uses
  %.66759.i = phi i32 [ %.65758.i, %bb.lq ], [ %.1694970.i, %bb.fl ] ; 3 uses
  %.42692.i = phi i32 [ %.41691.i, %bb.lq ], [ %.1651971.i, %bb.fl ] ; 3 uses
  %.66.i53 = phi i32 [ %.65.i51, %bb.lq ], [ %.1627972.i, %bb.fl ] ; 3 uses
  %i.ayt = add nuw nsw i32 %.0779966.i, 1         ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %.1775967.i, i64 4
  %i.ayv = getelementptr inbounds nuw i8, ptr %.1772968.i, i64 4
  %exitcond.not.i54 = icmp eq i32 %i.ayt, 64
  br i1 %exitcond.not.i54, label %bb.ls, label %bb.fl, !llvm.loop !375

bb.ls:                                            ; preds = %bb.lr
  %i.ayw = add nuw nsw i32 %.0777973.i, 4
  %i.ayx = getelementptr inbounds nuw i8, ptr %.1775967.i, i64 772
  %i.ayy = getelementptr inbounds nuw i8, ptr %.1772968.i, i64 12
  %i.ayz = icmp samesign ult i32 %.0777973.i, 60
  br i1 %i.ayz, label %.preheader.i12, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit.sink.split, !llvm.loop !376

bb.lt:                                            ; preds = %bb.b, %bb.a
  %i.aza = and i32 %2, 8
  %.not = icmp eq i32 %i.aza, 0
  %i.azb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !28 ; 6 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !29 ; 3 uses
  %i.azf = add i32 %i.b, 3
  %i.azg = zext i32 %i.azf to i64
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %i.aze, i64 %i.azg ; 4 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !96 ; 6 uses
  %i.azk = load i32, ptr %0, align 8, !tbaa !94   ; 6 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !97 ; 6 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.azo = load i32, ptr %i.azn, align 8, !tbaa !93 ; 6 uses
  %i.azp = shl nuw nsw i32 1, %1                  ; 2 uses
  %i.azq = lshr exact i32 %i.azp, 1
  %i.azr = or i32 %i.azq, %i.azp                  ; 12 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !92 ; 9 uses
  %.not.i121 = icmp ult i32 %i.azt, 4             ; 2 uses
  br i1 %.not, label %bb.sc, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  br i1 %.not.i121, label %._crit_edge1003.i, label %.preheader934.lr.ph.i

.preheader934.lr.ph.i:                            ; preds = %bb.lu
  %.not1023.i = icmp eq i32 %i.b, 0
  %i.azu = getelementptr i8, ptr %0, i64 200      ; 4 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 48 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 32 uses
  %i.azy = sub nsw i32 0, %i.azr                  ; 4 uses
  %i.azz = zext i32 %i.b to i64
  %i.baa = shl i32 %i.b, 1
  %i.bab = zext i32 %i.baa to i64
  %i.bac = mul i32 %i.b, 3
  %i.bad = zext i32 %i.bac to i64                 ; 3 uses
  br i1 %.not1023.i, label %.preheader934.lr.ph.split.i, label %.preheader934.us.i

.preheader934.us.i:                               ; preds = %.preheader934.lr.ph.i, %._crit_edge.us.i
  %.06361002.us.i = phi i32 [ %.66.us.i, %._crit_edge.us.i ], [ %i.azo, %.preheader934.lr.ph.i ]
  %.06601001.us.i = phi i32 [ %.42702.us.i, %._crit_edge.us.i ], [ %i.azm, %.preheader934.lr.ph.i ]
  %.07031000.us.i = phi i32 [ %.66769.us.i, %._crit_edge.us.i ], [ %i.azk, %.preheader934.lr.ph.i ]
  %.0770999.us.i = phi ptr [ %.10780.us.i, %._crit_edge.us.i ], [ %i.azj, %.preheader934.lr.ph.i ]
  %.0781998.us.i = phi ptr [ %i.bzn, %._crit_edge.us.i ], [ %i.azh, %.preheader934.lr.ph.i ]
  %.0784997.us.i = phi ptr [ %i.bzm, %._crit_edge.us.i ], [ %i.azc, %.preheader934.lr.ph.i ]
  %.0787996.us.i = phi i32 [ %i.bzl, %._crit_edge.us.i ], [ 0, %.preheader934.lr.ph.i ]
  br label %bb.lv

bb.lv:                                            ; preds = %bb.sb, %.preheader934.us.i
  %.1637990.us.i = phi i32 [ %.06361002.us.i, %.preheader934.us.i ], [ %.66.us.i, %bb.sb ] ; 5 uses
  %.1661989.us.i = phi i32 [ %.06601001.us.i, %.preheader934.us.i ], [ %.42702.us.i, %bb.sb ] ; 3 uses
  %.1704988.us.i = phi i32 [ %.07031000.us.i, %.preheader934.us.i ], [ %.66769.us.i, %bb.sb ] ; 5 uses
  %.1771987.us.i = phi ptr [ %.0770999.us.i, %.preheader934.us.i ], [ %.10780.us.i, %bb.sb ] ; 2 uses
  %.1782986.us.i = phi ptr [ %.0781998.us.i, %.preheader934.us.i ], [ %i.bzk, %bb.sb ] ; 13 uses
  %.1785985.us.i = phi ptr [ %.0784997.us.i, %.preheader934.us.i ], [ %i.bzj, %bb.sb ] ; 5 uses
  %.0789984.us.i = phi i32 [ 0, %.preheader934.us.i ], [ %i.bzi, %bb.sb ]
  %i.bae = load i32, ptr %.1782986.us.i, align 4, !tbaa !6 ; 9 uses
  %.not.us.i = icmp eq i32 %i.bae, 0
  br i1 %.not.us.i, label %bb.sb, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.baf = and i32 %i.bae, 2097168
  %i.bag = icmp ne i32 %i.baf, 0
  %i.bah = and i32 %i.bae, 495                    ; 2 uses
  %.not859.us.i = icmp eq i32 %i.bah, 0
  %or.cond.us.i = or i1 %i.bag, %.not859.us.i
  br i1 %or.cond.us.i, label %bb.nk, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %.val907.us.i = load ptr, ptr %i.azu, align 8, !tbaa !88
  %i.bai = zext nneg i32 %i.bah to i64
  %i.baj = getelementptr inbounds nuw i8, ptr %.val907.us.i, i64 %i.bai
  %i.bak = load i8, ptr %i.baj, align 1, !tbaa !56
  %i.bal = zext i8 %i.bak to i64
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %i.azv, i64 %i.bal ; 4 uses
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !99 ; 6 uses
  %i.bao = load i32, ptr %i.ban, align 8, !tbaa !101 ; 6 uses
  %i.bap = sub i32 %.1661989.us.i, %i.bao         ; 5 uses
  %i.baq = lshr i32 %.1704988.us.i, 16
  %i.bar = icmp ult i32 %i.baq, %i.bao
  br i1 %i.bar, label %bb.mi, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.bas = shl nuw i32 %i.bao, 16
  %i.bat = sub i32 %.1704988.us.i, %i.bas         ; 2 uses
  %i.bau = and i32 %i.bap, 32768
  %i.bav = icmp eq i32 %i.bau, 0
  br i1 %i.bav, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.baw = getelementptr inbounds nuw i8, ptr %i.ban, i64 4
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !102
  br label %.loopexit932.us.i

bb.ma:                                            ; preds = %bb.ly
  %i.bay = icmp ult i32 %i.bap, %i.bao            ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.ban, i64 4
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !102 ; 2 uses
  %.sink.i120 = select i1 %i.bay, i64 16, i64 8
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.ban, i64 %.sink.i120
  %storemerge.us.i = load ptr, ptr %i.bbb, align 8, !tbaa !99
  store ptr %storemerge.us.i, ptr %i.bam, align 8, !tbaa !99
  br label %bb.mb

bb.mb:                                            ; preds = %bb.mh, %bb.ma
  %.5708.us.i = phi i32 [ %i.bat, %bb.ma ], [ %i.bbs, %bb.mh ] ; 4 uses
  %.4664.us.i = phi i32 [ %i.bap, %bb.ma ], [ %i.bbr, %bb.mh ]
  %.5641.us.i = phi i32 [ %.1637990.us.i, %bb.ma ], [ %i.bbt, %bb.mh ] ; 2 uses
  %i.bbc = icmp eq i32 %.5641.us.i, 0
  br i1 %i.bbc, label %bb.mc, label %bb.mh

bb.mc:                                            ; preds = %bb.mb
  %i.bbd = load ptr, ptr %i.azw, align 8, !tbaa !95 ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 1 ; 3 uses
  %i.bbf = load i8, ptr %i.bbe, align 1, !tbaa !56 ; 2 uses
  %i.bbg = zext i8 %i.bbf to i32                  ; 2 uses
  %i.bbh = load i8, ptr %i.bbd, align 1, !tbaa !56
  %i.bbi = icmp eq i8 %i.bbh, -1
  br i1 %i.bbi, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  store ptr %i.bbe, ptr %i.azw, align 8, !tbaa !95
  %i.bbj = shl nuw nsw i32 %i.bbg, 8
  %i.bbk = add i32 %i.bbj, %.5708.us.i
  br label %bb.mh

bb.me:                                            ; preds = %bb.mc
  %i.bbl = icmp ugt i8 %i.bbf, -113
  br i1 %i.bbl, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  store ptr %i.bbe, ptr %i.azw, align 8, !tbaa !95
  %i.bbm = shl nuw nsw i32 %i.bbg, 9
  %i.bbn = add i32 %i.bbm, %.5708.us.i
  br label %bb.mh

bb.mg:                                            ; preds = %bb.me
  %i.bbo = add i32 %.5708.us.i, 65280
  %i.bbp = load i32, ptr %i.azx, align 4, !tbaa !103
  %i.bbq = add i32 %i.bbp, 1
  store i32 %i.bbq, ptr %i.azx, align 4, !tbaa !103
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf, %bb.md, %bb.mb
  %.7710.us.i = phi i32 [ %.5708.us.i, %bb.mb ], [ %i.bbo, %bb.mg ], [ %i.bbn, %bb.mf ], [ %i.bbk, %bb.md ]
  %.7643.us.i = phi i32 [ %.5641.us.i, %bb.mb ], [ 8, %bb.mg ], [ 7, %bb.mf ], [ 8, %bb.md ]
  %i.bbr = shl i32 %.4664.us.i, 1                 ; 3 uses
  %i.bbs = shl i32 %.7710.us.i, 1                 ; 2 uses
  %i.bbt = add i32 %.7643.us.i, -1                ; 2 uses
end_hunk_7
begin_hunk_8_@opj_t1_dec_sigpass_mqc:bb.a
  %.not896.us.i = icmp eq i32 %.20.us.i, 0
  br i1 %.not896.us.i, label %bb.rz, label %bb.rg

bb.rg:                                            ; preds = %.loopexit920.us.i
  %i.bvi = getelementptr inbounds i8, ptr %.1782986.us.i, i64 -4 ; 3 uses
  %i.bvj = load i32, ptr %i.bvi, align 4, !tbaa !6
  %i.bvk = getelementptr inbounds nuw i8, ptr %.1782986.us.i, i64 4 ; 3 uses
  %i.bvl = load i32, ptr %i.bvk, align 4, !tbaa !6
  %.pn.in.i914.us.i = lshr i32 %.5.us.i, 21
  %i.bvm = and i32 %i.bsu, 170
  %i.bvn = lshr i32 %i.bvj, 28
  %i.bvo = and i32 %i.bvn, 1
  %i.bvp = lshr i32 %i.bvl, 26
  %i.bvq = and i32 %i.bvp, 4
  %.pn.i915.us.i = and i32 %.pn.in.i914.us.i, 16
  %i.bvr = lshr i32 %.5.us.i, 25
  %i.bvs = and i32 %i.bvr, 64
  %i.bvt = or disjoint i32 %i.bvs, %i.bvm
  %i.bvu = or disjoint i32 %i.bvt, %.pn.i915.us.i
  %.0.i916.us.i = or disjoint i32 %i.bvu, %i.bvo
  %i.bvv = or disjoint i32 %.0.i916.us.i, %i.bvq
  %i.bvw = zext nneg i32 %i.bvv to i64            ; 2 uses
  %i.bvx = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.bvw
  %i.bvy = load i8, ptr %i.bvx, align 1, !tbaa !56
  %i.bvz = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.bvw
  %i.bwa = load i8, ptr %i.bvz, align 1, !tbaa !56
  %i.bwb = zext i8 %i.bwa to i32                  ; 2 uses
  %i.bwc = zext i8 %i.bvy to i64
  %i.bwd = getelementptr inbounds nuw [8 x i8], ptr %i.azv, i64 %i.bwc ; 4 uses
  %i.bwe = load ptr, ptr %i.bwd, align 8, !tbaa !99 ; 6 uses
  %i.bwf = load i32, ptr %i.bwe, align 8, !tbaa !101 ; 6 uses
  %i.bwg = sub i32 %.35695.us.i, %i.bwf           ; 5 uses
  %i.bwh = lshr i32 %.56759.us.i, 16
  %i.bwi = icmp ult i32 %i.bwh, %i.bwf
  br i1 %i.bwi, label %bb.rr, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bwj = shl nuw i32 %i.bwf, 16
  %i.bwk = sub i32 %.56759.us.i, %i.bwj           ; 2 uses
  %i.bwl = and i32 %i.bwg, 32768
  %i.bwm = icmp eq i32 %i.bwl, 0
  br i1 %i.bwm, label %bb.rj, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwe, i64 4
  %i.bwo = load i32, ptr %i.bwn, align 4, !tbaa !102
  br label %.loopexit918.us.i

bb.rj:                                            ; preds = %bb.rh
  %i.bwp = icmp ult i32 %i.bwg, %i.bwf            ; 2 uses
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwe, i64 4
  %i.bwr = load i32, ptr %i.bwq, align 4, !tbaa !102 ; 2 uses
  %.sink1222.i = select i1 %i.bwp, i64 16, i64 8
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwe, i64 %.sink1222.i
  %storemerge897.us.i = load ptr, ptr %i.bws, align 8, !tbaa !99
  store ptr %storemerge897.us.i, ptr %i.bwd, align 8, !tbaa !99
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rq, %bb.rj
  %.60763.us.i = phi i32 [ %i.bwk, %bb.rj ], [ %i.bxj, %bb.rq ] ; 4 uses
  %.38698.us.i = phi i32 [ %i.bwg, %bb.rj ], [ %i.bxi, %bb.rq ]
  %.60.us.i = phi i32 [ %.56.us.i, %bb.rj ], [ %i.bxk, %bb.rq ] ; 2 uses
  %i.bwt = icmp eq i32 %.60.us.i, 0
  br i1 %i.bwt, label %bb.rl, label %bb.rq

bb.rl:                                            ; preds = %bb.rk
  %i.bwu = load ptr, ptr %i.azw, align 8, !tbaa !95 ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwu, i64 1 ; 3 uses
  %i.bww = load i8, ptr %i.bwv, align 1, !tbaa !56 ; 2 uses
  %i.bwx = zext i8 %i.bww to i32                  ; 2 uses
  %i.bwy = load i8, ptr %i.bwu, align 1, !tbaa !56
  %i.bwz = icmp eq i8 %i.bwy, -1
  br i1 %i.bwz, label %bb.rn, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  store ptr %i.bwv, ptr %i.azw, align 8, !tbaa !95
  %i.bxa = shl nuw nsw i32 %i.bwx, 8
  %i.bxb = add i32 %i.bxa, %.60763.us.i
  br label %bb.rq

bb.rn:                                            ; preds = %bb.rl
  %i.bxc = icmp ugt i8 %i.bww, -113
  br i1 %i.bxc, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  store ptr %i.bwv, ptr %i.azw, align 8, !tbaa !95
  %i.bxd = shl nuw nsw i32 %i.bwx, 9
  %i.bxe = add i32 %i.bxd, %.60763.us.i
  br label %bb.rq

bb.rp:                                            ; preds = %bb.rn
  %i.bxf = add i32 %.60763.us.i, 65280
  %i.bxg = load i32, ptr %i.azx, align 4, !tbaa !103
  %i.bxh = add i32 %i.bxg, 1
  store i32 %i.bxh, ptr %i.azx, align 4, !tbaa !103
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro, %bb.rm, %bb.rk
  %.62765.us.i = phi i32 [ %.60763.us.i, %bb.rk ], [ %i.bxf, %bb.rp ], [ %i.bxe, %bb.ro ], [ %i.bxb, %bb.rm ]
  %.62.us.i = phi i32 [ %.60.us.i, %bb.rk ], [ 8, %bb.rp ], [ 7, %bb.ro ], [ 8, %bb.rm ]
  %i.bxi = shl i32 %.38698.us.i, 1                ; 3 uses
  %i.bxj = shl i32 %.62765.us.i, 1                ; 2 uses
  %i.bxk = add i32 %.62.us.i, -1                  ; 2 uses
  %i.bxl = icmp ult i32 %i.bxi, 32768
  br i1 %i.bxl, label %bb.rk, label %.loopexit918.us.i.loopexit499, !llvm.loop !391

bb.rr:                                            ; preds = %bb.rg
  %i.bxm = icmp ult i32 %i.bwg, %i.bwf            ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bwe, i64 4
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !102 ; 2 uses
  %.sink1223.i = select i1 %i.bxm, i64 8, i64 16
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bwe, i64 %.sink1223.i
  %storemerge900.us.i = load ptr, ptr %i.bxp, align 8, !tbaa !99
  store ptr %storemerge900.us.i, ptr %i.bwd, align 8, !tbaa !99
  br label %bb.rs

bb.rs:                                            ; preds = %bb.ry, %bb.rr
  %.57760.us.i = phi i32 [ %.56759.us.i, %bb.rr ], [ %i.byg, %bb.ry ] ; 4 uses
  %.37697.us.i = phi i32 [ %i.bwf, %bb.rr ], [ %i.byf, %bb.ry ]
  %.57.us.i = phi i32 [ %.56.us.i, %bb.rr ], [ %i.byh, %bb.ry ] ; 2 uses
  %i.bxq = icmp eq i32 %.57.us.i, 0
  br i1 %i.bxq, label %bb.rt, label %bb.ry

bb.rt:                                            ; preds = %bb.rs
  %i.bxr = load ptr, ptr %i.azw, align 8, !tbaa !95 ; 2 uses
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxr, i64 1 ; 3 uses
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !56 ; 2 uses
  %i.bxu = zext i8 %i.bxt to i32                  ; 2 uses
  %i.bxv = load i8, ptr %i.bxr, align 1, !tbaa !56
  %i.bxw = icmp eq i8 %i.bxv, -1
  br i1 %i.bxw, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  store ptr %i.bxs, ptr %i.azw, align 8, !tbaa !95
  %i.bxx = shl nuw nsw i32 %i.bxu, 8
  %i.bxy = add i32 %i.bxx, %.57760.us.i
  br label %bb.ry

bb.rv:                                            ; preds = %bb.rt
  %i.bxz = icmp ugt i8 %i.bxt, -113
  br i1 %i.bxz, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  store ptr %i.bxs, ptr %i.azw, align 8, !tbaa !95
  %i.bya = shl nuw nsw i32 %i.bxu, 9
  %i.byb = add i32 %i.bya, %.57760.us.i
  br label %bb.ry

bb.rx:                                            ; preds = %bb.rv
  %i.byc = add i32 %.57760.us.i, 65280
  %i.byd = load i32, ptr %i.azx, align 4, !tbaa !103
  %i.bye = add i32 %i.byd, 1
  store i32 %i.bye, ptr %i.azx, align 4, !tbaa !103
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw, %bb.ru, %bb.rs
  %.59762.us.i = phi i32 [ %.57760.us.i, %bb.rs ], [ %i.byc, %bb.rx ], [ %i.byb, %bb.rw ], [ %i.bxy, %bb.ru ]
  %.59.us.i = phi i32 [ %.57.us.i, %bb.rs ], [ 8, %bb.rx ], [ 7, %bb.rw ], [ 8, %bb.ru ]
  %i.byf = shl i32 %.37697.us.i, 1                ; 3 uses
  %i.byg = shl i32 %.59762.us.i, 1                ; 2 uses
  %i.byh = add i32 %.59.us.i, -1                  ; 2 uses
  %i.byi = icmp ult i32 %i.byf, 32768
  br i1 %i.byi, label %bb.rs, label %.loopexit918.us.i.loopexit, !llvm.loop !392

.loopexit918.us.i.loopexit:                       ; preds = %bb.ry
  %.not899.us.i = icmp eq i32 %i.bxo, 0
  %i.byj = zext i1 %.not899.us.i to i32
  %.21.us.i = select i1 %i.bxm, i32 %i.bxo, i32 %i.byj
  br label %.loopexit918.us.i

.loopexit918.us.i.loopexit499:                    ; preds = %bb.rq
  %.not898.us.i = icmp eq i32 %i.bwr, 0
  %i.byk = zext i1 %.not898.us.i to i32
  %.22.us.i = select i1 %i.bwp, i32 %i.byk, i32 %i.bwr
  br label %.loopexit918.us.i

.loopexit918.us.i:                                ; preds = %.loopexit918.us.i.loopexit499, %.loopexit918.us.i.loopexit, %bb.ri
  %.63766.us.i = phi i32 [ %i.bwk, %bb.ri ], [ %i.byg, %.loopexit918.us.i.loopexit ], [ %i.bxj, %.loopexit918.us.i.loopexit499 ]
  %.39699.us.i = phi i32 [ %i.bwg, %bb.ri ], [ %i.byf, %.loopexit918.us.i.loopexit ], [ %i.bxi, %.loopexit918.us.i.loopexit499 ]
  %.63.us.i = phi i32 [ %.56.us.i, %bb.ri ], [ %i.byh, %.loopexit918.us.i.loopexit ], [ %i.bxk, %.loopexit918.us.i.loopexit499 ]
  %.23.us.i = phi i32 [ %i.bwo, %bb.ri ], [ %.21.us.i, %.loopexit918.us.i.loopexit ], [ %.22.us.i, %.loopexit918.us.i.loopexit499 ] ; 2 uses
  %i.byl = xor i32 %.23.us.i, %i.bwb              ; 2 uses
  %.not901.us.i = icmp eq i32 %.23.us.i, %i.bwb
  %i.bym = select i1 %.not901.us.i, i32 %i.azr, i32 %i.azy
  %i.byn = getelementptr inbounds nuw [4 x i8], ptr %.1785985.us.i, i64 %i.bad
  store i32 %i.bym, ptr %i.byn, align 4, !tbaa !6
  %i.byo = load i32, ptr %i.bvi, align 4, !tbaa !6
  %i.byp = or i32 %i.byo, 16384
  store i32 %i.byp, ptr %i.bvi, align 4, !tbaa !6
  %i.byq = shl i32 %i.byl, 28
  %i.byr = or i32 %.5.us.i, %i.byq
  %i.bys = or disjoint i32 %i.byr, 8192
  %i.byt = load i32, ptr %i.bvk, align 4, !tbaa !6
  %i.byu = or i32 %i.byt, 4096
  store i32 %i.byu, ptr %i.bvk, align 4, !tbaa !6
  %i.byv = load i32, ptr %i.a, align 8, !tbaa !91
  %i.byw = add i32 %i.byv, 2
  %i.byx = zext i32 %i.byw to i64
  %i.byy = getelementptr inbounds nuw [4 x i8], ptr %.1782986.us.i, i64 %i.byx ; 4 uses
  %i.byz = shl i32 %i.byl, 18
  %9 = load i32, ptr %i.byy, align 4, !tbaa !6
  %10 = or i32 %i.byz, %9
  %i.bza = or i32 %10, 2
  store i32 %i.bza, ptr %i.byy, align 4, !tbaa !6
  %i.bzb = getelementptr inbounds i8, ptr %i.byy, i64 -4 ; 2 uses
  %i.bzc = load i32, ptr %i.bzb, align 4, !tbaa !6
  %i.bzd = or i32 %i.bzc, 4
  store i32 %i.bzd, ptr %i.bzb, align 4, !tbaa !6
  %i.bze = getelementptr inbounds nuw i8, ptr %i.byy, i64 4 ; 2 uses
  %i.bzf = load i32, ptr %i.bze, align 4, !tbaa !6
  %i.bzg = or i32 %i.bzf, 1
  store i32 %i.bzg, ptr %i.bze, align 4, !tbaa !6
  br label %bb.rz

bb.rz:                                            ; preds = %.loopexit918.us.i, %.loopexit920.us.i
  %.8778.us.i = phi ptr [ %i.bwd, %.loopexit918.us.i ], [ %i.bta, %.loopexit920.us.i ]
  %.64767.us.i = phi i32 [ %.63766.us.i, %.loopexit918.us.i ], [ %.56759.us.i, %.loopexit920.us.i ]
  %.40700.us.i = phi i32 [ %.39699.us.i, %.loopexit918.us.i ], [ %.35695.us.i, %.loopexit920.us.i ]
  %.64.us.i = phi i32 [ %.63.us.i, %.loopexit918.us.i ], [ %.56.us.i, %.loopexit920.us.i ]
  %.6.us.i = phi i32 [ %i.bys, %.loopexit918.us.i ], [ %.5.us.i, %.loopexit920.us.i ]
  %i.bzh = or i32 %.6.us.i, 1073741824
  br label %bb.sa

bb.sa:                                            ; preds = %bb.rz, %bb.qm
  %.9779.us.i = phi ptr [ %.8778.us.i, %bb.rz ], [ %.7777.us.i, %bb.qm ]
  %.65768.us.i = phi i32 [ %.64767.us.i, %bb.rz ], [ %.49752.us.i, %bb.qm ]
  %.41701.us.i = phi i32 [ %.40700.us.i, %bb.rz ], [ %.31691.us.i, %bb.qm ]
  %.65.us.i = phi i32 [ %.64.us.i, %bb.rz ], [ %.49.us.i, %bb.qm ]
  %.7.us.i = phi i32 [ %i.bzh, %bb.rz ], [ %.5.us.i, %bb.qm ]
  store i32 %.7.us.i, ptr %.1782986.us.i, align 4, !tbaa !6
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.lv
  %.10780.us.i = phi ptr [ %.9779.us.i, %bb.sa ], [ %.1771987.us.i, %bb.lv ] ; 3 uses
  %.66769.us.i = phi i32 [ %.65768.us.i, %bb.sa ], [ %.1704988.us.i, %bb.lv ] ; 3 uses
  %.42702.us.i = phi i32 [ %.41701.us.i, %bb.sa ], [ %.1661989.us.i, %bb.lv ] ; 3 uses
  %.66.us.i = phi i32 [ %.65.us.i, %bb.sa ], [ %.1637990.us.i, %bb.lv ] ; 3 uses
  %i.bzi = add nuw i32 %.0789984.us.i, 1          ; 2 uses
  %i.bzj = getelementptr inbounds nuw i8, ptr %.1785985.us.i, i64 4 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %.1782986.us.i, i64 4
  %exitcond.not.i116 = icmp eq i32 %i.bzi, %i.b
  br i1 %exitcond.not.i116, label %._crit_edge.us.i, label %bb.lv, !llvm.loop !393

._crit_edge.us.i:                                 ; preds = %bb.sb
  %i.bzl = add nuw i32 %.0787996.us.i, 4          ; 3 uses
  %i.bzm = getelementptr inbounds nuw [4 x i8], ptr %i.bzj, i64 %i.bad ; 2 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %.1782986.us.i, i64 12 ; 2 uses
  %i.bzo = load i32, ptr %i.azs, align 4, !tbaa !92 ; 2 uses
  %i.bzp = and i32 %i.bzo, -4
  %i.bzq = icmp ult i32 %i.bzl, %i.bzp
  br i1 %i.bzq, label %.preheader934.us.i, label %._crit_edge1003.i, !llvm.loop !394

.preheader934.lr.ph.split.i:                      ; preds = %.preheader934.lr.ph.i
  %i.bzr = and i32 %i.azt, -4
  %i.bzs = add i32 %i.azt, -4
  %i.bzt = zext i32 %i.bzs to i64                 ; 2 uses
  %i.bzu = and i64 %i.bzt, 4294967292
  %i.bzv = add nuw nsw i64 %i.bzu, 4
  %i.bzw = mul nuw nsw i64 %i.bzv, %i.bad
  %scevgep.i = getelementptr i8, ptr %i.azc, i64 %i.bzw
  %i.bzx = shl nuw nsw i64 %i.bzt, 1
  %i.bzy = and i64 %i.bzx, 8589934584
  %i.bzz = getelementptr i8, ptr %i.aze, i64 %i.bzy
  %scevgep1089.i = getelementptr i8, ptr %i.bzz, i64 20
  br label %._crit_edge1003.i

._crit_edge1003.i:                                ; preds = %._crit_edge.us.i, %.preheader934.lr.ph.split.i, %bb.lu
  %.0787.lcssa.i = phi i32 [ 0, %bb.lu ], [ %i.bzr, %.preheader934.lr.ph.split.i ], [ %i.bzl, %._crit_edge.us.i ] ; 4 uses
  %.0784.lcssa.i = phi ptr [ %i.azc, %bb.lu ], [ %scevgep.i, %.preheader934.lr.ph.split.i ], [ %i.bzm, %._crit_edge.us.i ]
  %.0781.lcssa.i = phi ptr [ %i.azh, %bb.lu ], [ %scevgep1089.i, %.preheader934.lr.ph.split.i ], [ %i.bzn, %._crit_edge.us.i ]
  %.0770.lcssa.i = phi ptr [ %i.azj, %bb.lu ], [ %i.azj, %.preheader934.lr.ph.split.i ], [ %.10780.us.i, %._crit_edge.us.i ]
  %.0703.lcssa.i = phi i32 [ %i.azk, %bb.lu ], [ %i.azk, %.preheader934.lr.ph.split.i ], [ %.66769.us.i, %._crit_edge.us.i ]
  %.0660.lcssa.i = phi i32 [ %i.azm, %bb.lu ], [ %i.azm, %.preheader934.lr.ph.split.i ], [ %.42702.us.i, %._crit_edge.us.i ]
  %.0636.lcssa.i = phi i32 [ %i.azo, %bb.lu ], [ %i.azo, %.preheader934.lr.ph.split.i ], [ %.66.us.i, %._crit_edge.us.i ]
  %.lcssa982.i = phi i32 [ %i.azt, %bb.lu ], [ %i.azt, %.preheader934.lr.ph.split.i ], [ %i.bzo, %._crit_edge.us.i ] ; 2 uses
  store ptr %.0770.lcssa.i, ptr %i.azi, align 8, !tbaa !96
  store i32 %.0703.lcssa.i, ptr %0, align 8, !tbaa !94
  store i32 %.0660.lcssa.i, ptr %i.azl, align 4, !tbaa !97
  store i32 %.0636.lcssa.i, ptr %i.azn, align 8, !tbaa !93
  %i.caa = icmp ult i32 %.0787.lcssa.i, %.lcssa982.i
  %i.cab = icmp ne i32 %i.b, 0
  %or.cond.i117 = and i1 %i.cab, %i.caa
  br i1 %or.cond.i117, label %.preheader.i119, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

.preheader.i119:                                  ; preds = %._crit_edge1003.i, %._crit_edge.i
  %i.cac = phi i32 [ %i.can, %._crit_edge.i ], [ %.lcssa982.i, %._crit_edge1003.i ]
  %.27831022.i = phi ptr [ %i.caq, %._crit_edge.i ], [ %.0781.lcssa.i, %._crit_edge1003.i ] ; 2 uses
  %.27861021.i = phi ptr [ %i.cap, %._crit_edge.i ], [ %.0784.lcssa.i, %._crit_edge1003.i ] ; 2 uses
  %.17901020.i = phi i32 [ %i.cao, %._crit_edge.i ], [ 0, %._crit_edge1003.i ]
  %.not1024.i = icmp eq i32 %i.cac, %.0787.lcssa.i
  br i1 %.not1024.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i119, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i119 ] ; 2 uses
  %i.cad = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.cae = mul i32 %i.b, %i.cad
  %i.caf = zext i32 %i.cae to i64
  %i.cag = getelementptr inbounds nuw [4 x i8], ptr %.27861021.i, i64 %i.caf
  %i.cah = load i32, ptr %i.a, align 8, !tbaa !91
  %i.cai = add i32 %i.cah, 2
  tail call fastcc void @opj_t1_dec_sigpass_step_mqc(ptr noundef nonnull %0, ptr noundef %.27831022.i, ptr noundef %i.cag, i32 noundef %i.azr, i32 noundef %i.cad, i32 noundef %i.cai, i32 noundef 1)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.caj = load i32, ptr %i.azs, align 4, !tbaa !92 ; 2 uses
  %i.cak = sub i32 %i.caj, %.0787.lcssa.i
  %i.cal = zext i32 %i.cak to i64
  %i.cam = icmp samesign ult i64 %indvars.iv.next.i, %i.cal
  br i1 %i.cam, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !395

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i119
  %i.can = phi i32 [ %.0787.lcssa.i, %.preheader.i119 ], [ %i.caj, %.lr.ph.i ]
  %i.cao = add nuw i32 %.17901020.i, 1            ; 2 uses
  %i.cap = getelementptr inbounds nuw i8, ptr %.27861021.i, i64 4
  %i.caq = getelementptr inbounds nuw i8, ptr %.27831022.i, i64 4
  %exitcond1091.not.i = icmp eq i32 %i.cao, %i.b
  br i1 %exitcond1091.not.i, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit, label %.preheader.i119, !llvm.loop !396

bb.sc:                                            ; preds = %bb.lt
  br i1 %.not.i121, label %._crit_edge1009.i, label %.preheader940.lr.ph.i

.preheader940.lr.ph.i:                            ; preds = %bb.sc
  %.not1029.i = icmp eq i32 %i.b, 0
  %i.car = getelementptr i8, ptr %0, i64 200      ; 4 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 48 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 32 uses
  %i.cav = sub nsw i32 0, %i.azr                  ; 4 uses
  %i.caw = zext i32 %i.b to i64
  %i.cax = shl i32 %i.b, 1
  %i.cay = zext i32 %i.cax to i64
  %i.caz = mul i32 %i.b, 3
  %i.cba = zext i32 %i.caz to i64                 ; 3 uses
  br i1 %.not1029.i, label %.preheader940.lr.ph.split.i, label %.preheader940.us.i

.preheader940.us.i:                               ; preds = %.preheader940.lr.ph.i, %._crit_edge.us.i171
  %.06421008.us.i = phi i32 [ %.66.us.i169, %._crit_edge.us.i171 ], [ %i.azo, %.preheader940.lr.ph.i ]
  %.06661007.us.i = phi i32 [ %.42708.us.i, %._crit_edge.us.i171 ], [ %i.azm, %.preheader940.lr.ph.i ]
  %.07091006.us.i = phi i32 [ %.66775.us.i, %._crit_edge.us.i171 ], [ %i.azk, %.preheader940.lr.ph.i ]
  %.07761005.us.i = phi ptr [ %.10786.us.i, %._crit_edge.us.i171 ], [ %i.azj, %.preheader940.lr.ph.i ]
  %.07871004.us.i = phi ptr [ %i.dax, %._crit_edge.us.i171 ], [ %i.azh, %.preheader940.lr.ph.i ]
  %.07901003.us.i = phi ptr [ %i.daw, %._crit_edge.us.i171 ], [ %i.azc, %.preheader940.lr.ph.i ]
  %.07931002.us.i = phi i32 [ %i.dav, %._crit_edge.us.i171 ], [ 0, %.preheader940.lr.ph.i ]
  br label %bb.sd

bb.sd:                                            ; preds = %bb.yj, %.preheader940.us.i
  %.1643996.us.i = phi i32 [ %.06421008.us.i, %.preheader940.us.i ], [ %.66.us.i169, %bb.yj ] ; 5 uses
  %.1667995.us.i = phi i32 [ %.06661007.us.i, %.preheader940.us.i ], [ %.42708.us.i, %bb.yj ] ; 3 uses
  %.1710994.us.i = phi i32 [ %.07091006.us.i, %.preheader940.us.i ], [ %.66775.us.i, %bb.yj ] ; 5 uses
  %.1777993.us.i = phi ptr [ %.07761005.us.i, %.preheader940.us.i ], [ %.10786.us.i, %bb.yj ] ; 2 uses
  %.1788992.us.i = phi ptr [ %.07871004.us.i, %.preheader940.us.i ], [ %i.dau, %bb.yj ] ; 14 uses
  %.1791991.us.i = phi ptr [ %.07901003.us.i, %.preheader940.us.i ], [ %i.dat, %bb.yj ] ; 5 uses
  %.0795990.us.i = phi i32 [ 0, %.preheader940.us.i ], [ %i.das, %bb.yj ]
  %i.cbb = load i32, ptr %.1788992.us.i, align 4, !tbaa !6 ; 9 uses
  %.not.us.i122 = icmp eq i32 %i.cbb, 0
  br i1 %.not.us.i122, label %bb.yj, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.cbc = and i32 %i.cbb, 2097168
  %i.cbd = icmp ne i32 %i.cbc, 0
  %i.cbe = and i32 %i.cbb, 495                    ; 2 uses
  %.not865.us.i123 = icmp eq i32 %i.cbe, 0
  %or.cond.us.i124 = or i1 %i.cbd, %.not865.us.i123
  br i1 %or.cond.us.i124, label %bb.ts, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %.val913.us.i = load ptr, ptr %i.car, align 8, !tbaa !88
  %i.cbf = zext nneg i32 %i.cbe to i64
  %i.cbg = getelementptr inbounds nuw i8, ptr %.val913.us.i, i64 %i.cbf
  %i.cbh = load i8, ptr %i.cbg, align 1, !tbaa !56
  %i.cbi = zext i8 %i.cbh to i64
  %i.cbj = getelementptr inbounds nuw [8 x i8], ptr %i.cas, i64 %i.cbi ; 4 uses
  %i.cbk = load ptr, ptr %i.cbj, align 8, !tbaa !99 ; 6 uses
  %i.cbl = load i32, ptr %i.cbk, align 8, !tbaa !101 ; 6 uses
  %i.cbm = sub i32 %.1667995.us.i, %i.cbl         ; 5 uses
  %i.cbn = lshr i32 %.1710994.us.i, 16
  %i.cbo = icmp ult i32 %i.cbn, %i.cbl
  br i1 %i.cbo, label %bb.sq, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.cbp = shl nuw i32 %i.cbl, 16
  %i.cbq = sub i32 %.1710994.us.i, %i.cbp         ; 2 uses
  %i.cbr = and i32 %i.cbm, 32768
  %i.cbs = icmp eq i32 %i.cbr, 0
  br i1 %i.cbs, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbk, i64 4
  %i.cbu = load i32, ptr %i.cbt, align 4, !tbaa !102
  br label %.loopexit938.us.i

bb.si:                                            ; preds = %bb.sg
  %i.cbv = icmp ult i32 %i.cbm, %i.cbl            ; 2 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbk, i64 4
  %i.cbx = load i32, ptr %i.cbw, align 4, !tbaa !102 ; 2 uses
  %.sink.i234 = select i1 %i.cbv, i64 16, i64 8
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbk, i64 %.sink.i234
  %storemerge.us.i235 = load ptr, ptr %i.cby, align 8, !tbaa !99
  store ptr %storemerge.us.i235, ptr %i.cbj, align 8, !tbaa !99
  br label %bb.sj

bb.sj:                                            ; preds = %bb.sp, %bb.si
  %.5714.us.i = phi i32 [ %i.cbq, %bb.si ], [ %i.ccp, %bb.sp ] ; 4 uses
  %.4670.us.i = phi i32 [ %i.cbm, %bb.si ], [ %i.cco, %bb.sp ]
  %.5647.us.i = phi i32 [ %.1643996.us.i, %bb.si ], [ %i.ccq, %bb.sp ] ; 2 uses
end_hunk_8
begin_hunk_9_@opj_t1_dec_sigpass_mqc:bb.a
  %.not869.us.i125 = icmp eq i32 %.2636.us.i, 0
  br i1 %.not869.us.i125, label %bb.tr, label %bb.sy

bb.sy:                                            ; preds = %.loopexit938.us.i
  %i.cdr = getelementptr inbounds i8, ptr %.1788992.us.i, i64 -4 ; 3 uses
  %i.cds = load i32, ptr %i.cdr, align 4, !tbaa !6
  %i.cdt = getelementptr inbounds nuw i8, ptr %.1788992.us.i, i64 4 ; 3 uses
  %i.cdu = load i32, ptr %i.cdt, align 4, !tbaa !6
  %.pn.in.i.us.i126 = lshr i32 %i.cbb, 14
  %i.cdv = and i32 %i.cbb, 170
  %i.cdw = lshr i32 %i.cds, 19
  %i.cdx = and i32 %i.cdw, 1
  %i.cdy = lshr i32 %i.cdu, 17
  %i.cdz = and i32 %i.cdy, 4
  %.pn.i.us.i127 = and i32 %.pn.in.i.us.i126, 16
  %i.cea = lshr i32 %i.cbb, 16
  %i.ceb = and i32 %i.cea, 64
  %i.cec = or disjoint i32 %i.ceb, %i.cdv
  %i.ced = or disjoint i32 %i.cec, %.pn.i.us.i127
  %.0.i.us.i128 = or disjoint i32 %i.ced, %i.cdx
  %i.cee = or disjoint i32 %.0.i.us.i128, %i.cdz
  %i.cef = zext nneg i32 %i.cee to i64            ; 2 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.cef
  %i.ceh = load i8, ptr %i.ceg, align 1, !tbaa !56
  %i.cei = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.cef
  %i.cej = load i8, ptr %i.cei, align 1, !tbaa !56
  %i.cek = zext i8 %i.cej to i32                  ; 2 uses
  %i.cel = zext i8 %i.ceh to i64
  %i.cem = getelementptr inbounds nuw [8 x i8], ptr %i.cas, i64 %i.cel ; 4 uses
  %i.cen = load ptr, ptr %i.cem, align 8, !tbaa !99 ; 6 uses
  %i.ceo = load i32, ptr %i.cen, align 8, !tbaa !101 ; 6 uses
  %i.cep = sub i32 %.5671.us.i, %i.ceo            ; 5 uses
  %i.ceq = lshr i32 %.8717.us.i, 16
  %i.cer = icmp ult i32 %i.ceq, %i.ceo
  br i1 %i.cer, label %bb.tj, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.ces = shl nuw i32 %i.ceo, 16
  %i.cet = sub i32 %.8717.us.i, %i.ces            ; 2 uses
  %i.ceu = and i32 %i.cep, 32768
  %i.cev = icmp eq i32 %i.ceu, 0
  br i1 %i.cev, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cen, i64 4
  %i.cex = load i32, ptr %i.cew, align 4, !tbaa !102
  br label %.loopexit936.us.i

bb.tb:                                            ; preds = %bb.sz
  %i.cey = icmp ult i32 %i.cep, %i.ceo            ; 2 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cen, i64 4
  %i.cfa = load i32, ptr %i.cez, align 4, !tbaa !102 ; 2 uses
  %.sink1216.i228 = select i1 %i.cey, i64 16, i64 8
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cen, i64 %.sink1216.i228
  %storemerge870.us.i229 = load ptr, ptr %i.cfb, align 8, !tbaa !99
  store ptr %storemerge870.us.i229, ptr %i.cem, align 8, !tbaa !99
  br label %bb.tc

bb.tc:                                            ; preds = %bb.ti, %bb.tb
  %.12721.us.i = phi i32 [ %i.cet, %bb.tb ], [ %i.cfs, %bb.ti ] ; 4 uses
  %.8674.us.i = phi i32 [ %i.cep, %bb.tb ], [ %i.cfr, %bb.ti ]
  %.12654.us.i = phi i32 [ %.8650.us.i, %bb.tb ], [ %i.cft, %bb.ti ] ; 2 uses
  %i.cfc = icmp eq i32 %.12654.us.i, 0
  br i1 %i.cfc, label %bb.td, label %bb.ti

bb.td:                                            ; preds = %bb.tc
  %i.cfd = load ptr, ptr %i.cat, align 8, !tbaa !95 ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfd, i64 1 ; 3 uses
  %i.cff = load i8, ptr %i.cfe, align 1, !tbaa !56 ; 2 uses
  %i.cfg = zext i8 %i.cff to i32                  ; 2 uses
  %i.cfh = load i8, ptr %i.cfd, align 1, !tbaa !56
  %i.cfi = icmp eq i8 %i.cfh, -1
  br i1 %i.cfi, label %bb.tf, label %bb.te

bb.te:                                            ; preds = %bb.td
  store ptr %i.cfe, ptr %i.cat, align 8, !tbaa !95
  %i.cfj = shl nuw nsw i32 %i.cfg, 8
  %i.cfk = add i32 %i.cfj, %.12721.us.i
  br label %bb.ti

bb.tf:                                            ; preds = %bb.td
  %i.cfl = icmp ugt i8 %i.cff, -113
  br i1 %i.cfl, label %bb.th, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  store ptr %i.cfe, ptr %i.cat, align 8, !tbaa !95
  %i.cfm = shl nuw nsw i32 %i.cfg, 9
  %i.cfn = add i32 %i.cfm, %.12721.us.i
  br label %bb.ti

bb.th:                                            ; preds = %bb.tf
  %i.cfo = add i32 %.12721.us.i, 65280
  %i.cfp = load i32, ptr %i.cau, align 4, !tbaa !103
  %i.cfq = add i32 %i.cfp, 1
  store i32 %i.cfq, ptr %i.cau, align 4, !tbaa !103
  br label %bb.ti

bb.ti:                                            ; preds = %bb.th, %bb.tg, %bb.te, %bb.tc
  %.14723.us.i = phi i32 [ %.12721.us.i, %bb.tc ], [ %i.cfo, %bb.th ], [ %i.cfn, %bb.tg ], [ %i.cfk, %bb.te ]
  %.14656.us.i = phi i32 [ %.12654.us.i, %bb.tc ], [ 8, %bb.th ], [ 7, %bb.tg ], [ 8, %bb.te ]
  %i.cfr = shl i32 %.8674.us.i, 1                 ; 3 uses
  %i.cfs = shl i32 %.14723.us.i, 1                ; 2 uses
  %i.cft = add i32 %.14656.us.i, -1               ; 2 uses
  %i.cfu = icmp ult i32 %i.cfr, 32768
  br i1 %i.cfu, label %bb.tc, label %.loopexit936.us.i.loopexit496, !llvm.loop !399

bb.tj:                                            ; preds = %bb.sy
  %i.cfv = icmp ult i32 %i.cep, %i.ceo            ; 2 uses
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cen, i64 4
  %i.cfx = load i32, ptr %i.cfw, align 4, !tbaa !102 ; 2 uses
  %.sink1217.i231 = select i1 %i.cfv, i64 8, i64 16
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cen, i64 %.sink1217.i231
  %storemerge873.us.i232 = load ptr, ptr %i.cfy, align 8, !tbaa !99
  store ptr %storemerge873.us.i232, ptr %i.cem, align 8, !tbaa !99
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tq, %bb.tj
  %.9718.us.i = phi i32 [ %.8717.us.i, %bb.tj ], [ %i.cgp, %bb.tq ] ; 4 uses
  %.7673.us.i = phi i32 [ %i.ceo, %bb.tj ], [ %i.cgo, %bb.tq ]
  %.9651.us.i = phi i32 [ %.8650.us.i, %bb.tj ], [ %i.cgq, %bb.tq ] ; 2 uses
  %i.cfz = icmp eq i32 %.9651.us.i, 0
  br i1 %i.cfz, label %bb.tl, label %bb.tq

bb.tl:                                            ; preds = %bb.tk
  %i.cga = load ptr, ptr %i.cat, align 8, !tbaa !95 ; 2 uses
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cga, i64 1 ; 3 uses
  %i.cgc = load i8, ptr %i.cgb, align 1, !tbaa !56 ; 2 uses
  %i.cgd = zext i8 %i.cgc to i32                  ; 2 uses
  %i.cge = load i8, ptr %i.cga, align 1, !tbaa !56
  %i.cgf = icmp eq i8 %i.cge, -1
  br i1 %i.cgf, label %bb.tn, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  store ptr %i.cgb, ptr %i.cat, align 8, !tbaa !95
  %i.cgg = shl nuw nsw i32 %i.cgd, 8
  %i.cgh = add i32 %i.cgg, %.9718.us.i
  br label %bb.tq

bb.tn:                                            ; preds = %bb.tl
  %i.cgi = icmp ugt i8 %i.cgc, -113
  br i1 %i.cgi, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  store ptr %i.cgb, ptr %i.cat, align 8, !tbaa !95
  %i.cgj = shl nuw nsw i32 %i.cgd, 9
  %i.cgk = add i32 %i.cgj, %.9718.us.i
  br label %bb.tq

bb.tp:                                            ; preds = %bb.tn
  %i.cgl = add i32 %.9718.us.i, 65280
  %i.cgm = load i32, ptr %i.cau, align 4, !tbaa !103
  %i.cgn = add i32 %i.cgm, 1
  store i32 %i.cgn, ptr %i.cau, align 4, !tbaa !103
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %bb.to, %bb.tm, %bb.tk
  %.11720.us.i = phi i32 [ %.9718.us.i, %bb.tk ], [ %i.cgl, %bb.tp ], [ %i.cgk, %bb.to ], [ %i.cgh, %bb.tm ]
  %.11653.us.i = phi i32 [ %.9651.us.i, %bb.tk ], [ 8, %bb.tp ], [ 7, %bb.to ], [ 8, %bb.tm ]
  %i.cgo = shl i32 %.7673.us.i, 1                 ; 3 uses
  %i.cgp = shl i32 %.11720.us.i, 1                ; 2 uses
  %i.cgq = add i32 %.11653.us.i, -1               ; 2 uses
  %i.cgr = icmp ult i32 %i.cgo, 32768
  br i1 %i.cgr, label %bb.tk, label %.loopexit936.us.i.loopexit, !llvm.loop !400

.loopexit936.us.i.loopexit:                       ; preds = %bb.tq
  %.not872.us.i230 = icmp eq i32 %i.cfx, 0
  %i.cgs = zext i1 %.not872.us.i230 to i32
  %.3637.us.i = select i1 %i.cfv, i32 %i.cfx, i32 %i.cgs
  br label %.loopexit936.us.i

.loopexit936.us.i.loopexit496:                    ; preds = %bb.ti
  %.not871.us.i227 = icmp eq i32 %i.cfa, 0
  %i.cgt = zext i1 %.not871.us.i227 to i32
  %.4638.us.i = select i1 %i.cey, i32 %i.cgt, i32 %i.cfa
  br label %.loopexit936.us.i

.loopexit936.us.i:                                ; preds = %.loopexit936.us.i.loopexit496, %.loopexit936.us.i.loopexit, %bb.ta
  %.15724.us.i = phi i32 [ %i.cet, %bb.ta ], [ %i.cgp, %.loopexit936.us.i.loopexit ], [ %i.cfs, %.loopexit936.us.i.loopexit496 ]
  %.9675.us.i = phi i32 [ %i.cep, %bb.ta ], [ %i.cgo, %.loopexit936.us.i.loopexit ], [ %i.cfr, %.loopexit936.us.i.loopexit496 ]
  %.15657.us.i = phi i32 [ %.8650.us.i, %bb.ta ], [ %i.cgq, %.loopexit936.us.i.loopexit ], [ %i.cft, %.loopexit936.us.i.loopexit496 ]
  %.5639.us.i = phi i32 [ %i.cex, %bb.ta ], [ %.3637.us.i, %.loopexit936.us.i.loopexit ], [ %.4638.us.i, %.loopexit936.us.i.loopexit496 ] ; 2 uses
  %i.cgu = xor i32 %.5639.us.i, %i.cek            ; 2 uses
  %.not874.us.i129 = icmp eq i32 %.5639.us.i, %i.cek
  %i.cgv = select i1 %.not874.us.i129, i32 %i.azr, i32 %i.cav
  store i32 %i.cgv, ptr %.1791991.us.i, align 4, !tbaa !6
  %i.cgw = load i32, ptr %i.cdr, align 4, !tbaa !6
  %i.cgx = or i32 %i.cgw, 32
  store i32 %i.cgx, ptr %i.cdr, align 4, !tbaa !6
  %i.cgy = shl i32 %i.cgu, 19
  %i.cgz = or i32 %i.cbb, %i.cgy
  %i.cha = or disjoint i32 %i.cgz, 16
  %i.chb = load i32, ptr %i.cdt, align 4, !tbaa !6
  %i.chc = or i32 %i.chb, 8
  store i32 %i.chc, ptr %i.cdt, align 4, !tbaa !6
  %i.chd = load i32, ptr %i.a, align 8, !tbaa !91
  %i.che = add i32 %i.chd, 2
  %i.chf = zext i32 %i.che to i64
  %i.chg = sub nsw i64 0, %i.chf
  %i.chh = getelementptr inbounds [4 x i8], ptr %.1788992.us.i, i64 %i.chg ; 4 uses
  %i.chi = shl i32 %i.cgu, 31
  %11 = load i32, ptr %i.chh, align 4, !tbaa !6
  %12 = or i32 %i.chi, %11
  %i.chj = or i32 %12, 65536
  store i32 %i.chj, ptr %i.chh, align 4, !tbaa !6
  %i.chk = getelementptr inbounds i8, ptr %i.chh, i64 -4 ; 2 uses
  %i.chl = load i32, ptr %i.chk, align 4, !tbaa !6
  %i.chm = or i32 %i.chl, 131072
  store i32 %i.chm, ptr %i.chk, align 4, !tbaa !6
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chh, i64 4 ; 2 uses
  %i.cho = load i32, ptr %i.chn, align 4, !tbaa !6
  %i.chp = or i32 %i.cho, 32768
  store i32 %i.chp, ptr %i.chn, align 4, !tbaa !6
  br label %bb.tr

bb.tr:                                            ; preds = %.loopexit936.us.i, %.loopexit938.us.i
  %.2778.us.i = phi ptr [ %i.cem, %.loopexit936.us.i ], [ %i.cbj, %.loopexit938.us.i ]
  %.16725.us.i = phi i32 [ %.15724.us.i, %.loopexit936.us.i ], [ %.8717.us.i, %.loopexit938.us.i ]
  %.10676.us.i = phi i32 [ %.9675.us.i, %.loopexit936.us.i ], [ %.5671.us.i, %.loopexit938.us.i ]
  %.16658.us.i = phi i32 [ %.15657.us.i, %.loopexit936.us.i ], [ %.8650.us.i, %.loopexit938.us.i ]
  %.0.us.i130 = phi i32 [ %i.cha, %.loopexit936.us.i ], [ %i.cbb, %.loopexit938.us.i ]
  %i.chq = or i32 %.0.us.i130, 2097152
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tr, %bb.se
  %.3779.us.i = phi ptr [ %.2778.us.i, %bb.tr ], [ %.1777993.us.i, %bb.se ]
  %.17726.us.i = phi i32 [ %.16725.us.i, %bb.tr ], [ %.1710994.us.i, %bb.se ] ; 4 uses
  %.11677.us.i = phi i32 [ %.10676.us.i, %bb.tr ], [ %.1667995.us.i, %bb.se ] ; 2 uses
  %.17659.us.i = phi i32 [ %.16658.us.i, %bb.tr ], [ %.1643996.us.i, %bb.se ] ; 4 uses
  %.1.us.i131 = phi i32 [ %i.chq, %bb.tr ], [ %i.cbb, %bb.se ] ; 8 uses
  %i.chr = and i32 %.1.us.i131, 16777344
  %i.chs = icmp ne i32 %i.chr, 0
  %i.cht = and i32 %.1.us.i131, 3960
  %.not875.us.i = icmp eq i32 %i.cht, 0
  %or.cond908.us.i = or i1 %i.chs, %.not875.us.i
  br i1 %or.cond908.us.i, label %bb.vg, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.chu = lshr i32 %.1.us.i131, 3                ; 2 uses
  %.val912.us.i = load ptr, ptr %i.car, align 8, !tbaa !88
  %i.chv = and i32 %i.chu, 495
  %i.chw = zext nneg i32 %i.chv to i64
  %i.chx = getelementptr inbounds nuw i8, ptr %.val912.us.i, i64 %i.chw
  %i.chy = load i8, ptr %i.chx, align 1, !tbaa !56
  %i.chz = zext i8 %i.chy to i64
  %i.cia = getelementptr inbounds nuw [8 x i8], ptr %i.cas, i64 %i.chz ; 4 uses
  %i.cib = load ptr, ptr %i.cia, align 8, !tbaa !99 ; 6 uses
  %i.cic = load i32, ptr %i.cib, align 8, !tbaa !101 ; 6 uses
  %i.cid = sub i32 %.11677.us.i, %i.cic           ; 5 uses
  %i.cie = lshr i32 %.17726.us.i, 16
  %i.cif = icmp ult i32 %i.cie, %i.cic
  br i1 %i.cif, label %bb.ue, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.cig = shl nuw i32 %i.cic, 16
  %i.cih = sub i32 %.17726.us.i, %i.cig           ; 2 uses
  %i.cii = and i32 %i.cid, 32768
  %i.cij = icmp eq i32 %i.cii, 0
  br i1 %i.cij, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cib, i64 4
  %i.cil = load i32, ptr %i.cik, align 4, !tbaa !102
  br label %.loopexit934.us.i

bb.tw:                                            ; preds = %bb.tu
  %i.cim = icmp ult i32 %i.cid, %i.cic            ; 2 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cib, i64 4
  %i.cio = load i32, ptr %i.cin, align 4, !tbaa !102 ; 2 uses
  %.sink1218.i225 = select i1 %i.cim, i64 16, i64 8
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cib, i64 %.sink1218.i225
  %storemerge876.us.i = load ptr, ptr %i.cip, align 8, !tbaa !99
  store ptr %storemerge876.us.i, ptr %i.cia, align 8, !tbaa !99
  br label %bb.tx

bb.tx:                                            ; preds = %bb.ud, %bb.tw
  %.21730.us.i = phi i32 [ %i.cih, %bb.tw ], [ %i.cjg, %bb.ud ] ; 4 uses
  %.14680.us.i = phi i32 [ %i.cid, %bb.tw ], [ %i.cjf, %bb.ud ]
  %.21663.us.i = phi i32 [ %.17659.us.i, %bb.tw ], [ %i.cjh, %bb.ud ] ; 2 uses
  %i.ciq = icmp eq i32 %.21663.us.i, 0
  br i1 %i.ciq, label %bb.ty, label %bb.ud

bb.ty:                                            ; preds = %bb.tx
  %i.cir = load ptr, ptr %i.cat, align 8, !tbaa !95 ; 2 uses
  %i.cis = getelementptr inbounds nuw i8, ptr %i.cir, i64 1 ; 3 uses
  %i.cit = load i8, ptr %i.cis, align 1, !tbaa !56 ; 2 uses
  %i.ciu = zext i8 %i.cit to i32                  ; 2 uses
  %i.civ = load i8, ptr %i.cir, align 1, !tbaa !56
  %i.ciw = icmp eq i8 %i.civ, -1
  br i1 %i.ciw, label %bb.ua, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  store ptr %i.cis, ptr %i.cat, align 8, !tbaa !95
  %i.cix = shl nuw nsw i32 %i.ciu, 8
  %i.ciy = add i32 %i.cix, %.21730.us.i
  br label %bb.ud

bb.ua:                                            ; preds = %bb.ty
  %i.ciz = icmp ugt i8 %i.cit, -113
  br i1 %i.ciz, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  store ptr %i.cis, ptr %i.cat, align 8, !tbaa !95
  %i.cja = shl nuw nsw i32 %i.ciu, 9
  %i.cjb = add i32 %i.cja, %.21730.us.i
  br label %bb.ud

bb.uc:                                            ; preds = %bb.ua
  %i.cjc = add i32 %.21730.us.i, 65280
  %i.cjd = load i32, ptr %i.cau, align 4, !tbaa !103
  %i.cje = add i32 %i.cjd, 1
  store i32 %i.cje, ptr %i.cau, align 4, !tbaa !103
  br label %bb.ud

bb.ud:                                            ; preds = %bb.uc, %bb.ub, %bb.tz, %bb.tx
  %.23732.us.i = phi i32 [ %.21730.us.i, %bb.tx ], [ %i.cjc, %bb.uc ], [ %i.cjb, %bb.ub ], [ %i.ciy, %bb.tz ]
  %.23665.us.i = phi i32 [ %.21663.us.i, %bb.tx ], [ 8, %bb.uc ], [ 7, %bb.ub ], [ 8, %bb.tz ]
  %i.cjf = shl i32 %.14680.us.i, 1                ; 3 uses
  %i.cjg = shl i32 %.23732.us.i, 1                ; 2 uses
  %i.cjh = add i32 %.23665.us.i, -1               ; 2 uses
  %i.cji = icmp ult i32 %i.cjf, 32768
  br i1 %i.cji, label %bb.tx, label %.loopexit934.us.i.loopexit495, !llvm.loop !401

bb.ue:                                            ; preds = %bb.tt
  %i.cjj = icmp ult i32 %i.cid, %i.cic            ; 2 uses
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cib, i64 4
  %i.cjl = load i32, ptr %i.cjk, align 4, !tbaa !102 ; 2 uses
  %.sink1219.i226 = select i1 %i.cjj, i64 8, i64 16
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cib, i64 %.sink1219.i226
  %storemerge879.us.i = load ptr, ptr %i.cjm, align 8, !tbaa !99
  store ptr %storemerge879.us.i, ptr %i.cia, align 8, !tbaa !99
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ul, %bb.ue
  %.18727.us.i = phi i32 [ %.17726.us.i, %bb.ue ], [ %i.ckd, %bb.ul ] ; 4 uses
  %.13679.us.i = phi i32 [ %i.cic, %bb.ue ], [ %i.ckc, %bb.ul ]
  %.18660.us.i = phi i32 [ %.17659.us.i, %bb.ue ], [ %i.cke, %bb.ul ] ; 2 uses
  %i.cjn = icmp eq i32 %.18660.us.i, 0
  br i1 %i.cjn, label %bb.ug, label %bb.ul

bb.ug:                                            ; preds = %bb.uf
  %i.cjo = load ptr, ptr %i.cat, align 8, !tbaa !95 ; 2 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 1 ; 3 uses
  %i.cjq = load i8, ptr %i.cjp, align 1, !tbaa !56 ; 2 uses
  %i.cjr = zext i8 %i.cjq to i32                  ; 2 uses
  %i.cjs = load i8, ptr %i.cjo, align 1, !tbaa !56
  %i.cjt = icmp eq i8 %i.cjs, -1
  br i1 %i.cjt, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  store ptr %i.cjp, ptr %i.cat, align 8, !tbaa !95
  %i.cju = shl nuw nsw i32 %i.cjr, 8
  %i.cjv = add i32 %i.cju, %.18727.us.i
  br label %bb.ul

bb.ui:                                            ; preds = %bb.ug
  %i.cjw = icmp ugt i8 %i.cjq, -113
  br i1 %i.cjw, label %bb.uk, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  store ptr %i.cjp, ptr %i.cat, align 8, !tbaa !95
  %i.cjx = shl nuw nsw i32 %i.cjr, 9
  %i.cjy = add i32 %i.cjx, %.18727.us.i
  br label %bb.ul

bb.uk:                                            ; preds = %bb.ui
  %i.cjz = add i32 %.18727.us.i, 65280
  %i.cka = load i32, ptr %i.cau, align 4, !tbaa !103
  %i.ckb = add i32 %i.cka, 1
  store i32 %i.ckb, ptr %i.cau, align 4, !tbaa !103
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uk, %bb.uj, %bb.uh, %bb.uf
  %.20729.us.i = phi i32 [ %.18727.us.i, %bb.uf ], [ %i.cjz, %bb.uk ], [ %i.cjy, %bb.uj ], [ %i.cjv, %bb.uh ]
  %.20662.us.i = phi i32 [ %.18660.us.i, %bb.uf ], [ 8, %bb.uk ], [ 7, %bb.uj ], [ 8, %bb.uh ]
  %i.ckc = shl i32 %.13679.us.i, 1                ; 3 uses
  %i.ckd = shl i32 %.20729.us.i, 1                ; 2 uses
  %i.cke = add i32 %.20662.us.i, -1               ; 2 uses
  %i.ckf = icmp ult i32 %i.ckc, 32768
  br i1 %i.ckf, label %bb.uf, label %.loopexit934.us.i.loopexit, !llvm.loop !402

.loopexit934.us.i.loopexit:                       ; preds = %bb.ul
  %.not878.us.i = icmp eq i32 %i.cjl, 0
  %i.ckg = zext i1 %.not878.us.i to i32
  %.6640.us.i = select i1 %i.cjj, i32 %i.cjl, i32 %i.ckg
  br label %.loopexit934.us.i

.loopexit934.us.i.loopexit495:                    ; preds = %bb.ud
  %.not877.us.i224 = icmp eq i32 %i.cio, 0
  %i.ckh = zext i1 %.not877.us.i224 to i32
  %.7641.us.i = select i1 %i.cim, i32 %i.ckh, i32 %i.cio
  br label %.loopexit934.us.i

.loopexit934.us.i:                                ; preds = %.loopexit934.us.i.loopexit495, %.loopexit934.us.i.loopexit, %bb.tv
  %.24733.us.i = phi i32 [ %i.cih, %bb.tv ], [ %i.ckd, %.loopexit934.us.i.loopexit ], [ %i.cjg, %.loopexit934.us.i.loopexit495 ] ; 4 uses
  %.15681.us.i = phi i32 [ %i.cid, %bb.tv ], [ %i.ckc, %.loopexit934.us.i.loopexit ], [ %i.cjf, %.loopexit934.us.i.loopexit495 ] ; 2 uses
  %.24.us.i132 = phi i32 [ %.17659.us.i, %bb.tv ], [ %i.cke, %.loopexit934.us.i.loopexit ], [ %i.cjh, %.loopexit934.us.i.loopexit495 ] ; 4 uses
  %.8.us.i133 = phi i32 [ %i.cil, %bb.tv ], [ %.6640.us.i, %.loopexit934.us.i.loopexit ], [ %.7641.us.i, %.loopexit934.us.i.loopexit495 ]
  %.not880.us.i134 = icmp eq i32 %.8.us.i133, 0
  br i1 %.not880.us.i134, label %bb.vf, label %bb.um

bb.um:                                            ; preds = %.loopexit934.us.i
  %i.cki = getelementptr inbounds i8, ptr %.1788992.us.i, i64 -4 ; 3 uses
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !6
end_hunk_9
begin_hunk_10_@opj_t1_dec_sigpass_mqc:bb.a
  %.not902.us.i = icmp eq i32 %.20.us.i161, 0
  br i1 %.not902.us.i, label %bb.yh, label %bb.xo

bb.xo:                                            ; preds = %.loopexit926.us.i159
  %i.cws = getelementptr inbounds i8, ptr %.1788992.us.i, i64 -4 ; 3 uses
  %i.cwt = load i32, ptr %i.cws, align 4, !tbaa !6
  %i.cwu = getelementptr inbounds nuw i8, ptr %.1788992.us.i, i64 4 ; 3 uses
  %i.cwv = load i32, ptr %i.cwu, align 4, !tbaa !6
  %.pn.in.i920.us.i = lshr i32 %.5.us.i157, 21
  %i.cww = and i32 %i.cue, 170
  %i.cwx = lshr i32 %i.cwt, 28
  %i.cwy = and i32 %i.cwx, 1
  %i.cwz = lshr i32 %i.cwv, 26
  %i.cxa = and i32 %i.cwz, 4
  %.pn.i921.us.i = and i32 %.pn.in.i920.us.i, 16
  %i.cxb = lshr i32 %.5.us.i157, 25
  %i.cxc = and i32 %i.cxb, 64
  %i.cxd = or disjoint i32 %i.cxc, %i.cww
  %i.cxe = or disjoint i32 %i.cxd, %.pn.i921.us.i
  %.0.i922.us.i = or disjoint i32 %i.cxe, %i.cwy
  %i.cxf = or disjoint i32 %.0.i922.us.i, %i.cxa
  %i.cxg = zext nneg i32 %i.cxf to i64            ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.cxg
  %i.cxi = load i8, ptr %i.cxh, align 1, !tbaa !56
  %i.cxj = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.cxg
  %i.cxk = load i8, ptr %i.cxj, align 1, !tbaa !56
  %i.cxl = zext i8 %i.cxk to i32                  ; 2 uses
  %i.cxm = zext i8 %i.cxi to i64
  %i.cxn = getelementptr inbounds nuw [8 x i8], ptr %i.cas, i64 %i.cxm ; 4 uses
  %i.cxo = load ptr, ptr %i.cxn, align 8, !tbaa !99 ; 6 uses
  %i.cxp = load i32, ptr %i.cxo, align 8, !tbaa !101 ; 6 uses
  %i.cxq = sub i32 %.35701.us.i, %i.cxp           ; 5 uses
  %i.cxr = lshr i32 %.56765.us.i, 16
  %i.cxs = icmp ult i32 %i.cxr, %i.cxp
  br i1 %i.cxs, label %bb.xz, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cxt = shl nuw i32 %i.cxp, 16
  %i.cxu = sub i32 %.56765.us.i, %i.cxt           ; 2 uses
  %i.cxv = and i32 %i.cxq, 32768
  %i.cxw = icmp eq i32 %i.cxv, 0
  br i1 %i.cxw, label %bb.xr, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxo, i64 4
  %i.cxy = load i32, ptr %i.cxx, align 4, !tbaa !102
  br label %.loopexit924.us.i162

bb.xr:                                            ; preds = %bb.xp
  %i.cxz = icmp ult i32 %i.cxq, %i.cxp            ; 2 uses
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxo, i64 4
  %i.cyb = load i32, ptr %i.cya, align 4, !tbaa !102 ; 2 uses
  %.sink1228.i = select i1 %i.cxz, i64 16, i64 8
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cxo, i64 %.sink1228.i
  %storemerge903.us.i = load ptr, ptr %i.cyc, align 8, !tbaa !99
  store ptr %storemerge903.us.i, ptr %i.cxn, align 8, !tbaa !99
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xy, %bb.xr
  %.60769.us.i = phi i32 [ %i.cxu, %bb.xr ], [ %i.cyt, %bb.xy ] ; 4 uses
  %.38704.us.i = phi i32 [ %i.cxq, %bb.xr ], [ %i.cys, %bb.xy ]
  %.60.us.i181 = phi i32 [ %.56.us.i160, %bb.xr ], [ %i.cyu, %bb.xy ] ; 2 uses
  %i.cyd = icmp eq i32 %.60.us.i181, 0
  br i1 %i.cyd, label %bb.xt, label %bb.xy

bb.xt:                                            ; preds = %bb.xs
  %i.cye = load ptr, ptr %i.cat, align 8, !tbaa !95 ; 2 uses
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cye, i64 1 ; 3 uses
  %i.cyg = load i8, ptr %i.cyf, align 1, !tbaa !56 ; 2 uses
  %i.cyh = zext i8 %i.cyg to i32                  ; 2 uses
  %i.cyi = load i8, ptr %i.cye, align 1, !tbaa !56
  %i.cyj = icmp eq i8 %i.cyi, -1
  br i1 %i.cyj, label %bb.xv, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  store ptr %i.cyf, ptr %i.cat, align 8, !tbaa !95
  %i.cyk = shl nuw nsw i32 %i.cyh, 8
  %i.cyl = add i32 %i.cyk, %.60769.us.i
  br label %bb.xy

bb.xv:                                            ; preds = %bb.xt
  %i.cym = icmp ugt i8 %i.cyg, -113
  br i1 %i.cym, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  store ptr %i.cyf, ptr %i.cat, align 8, !tbaa !95
  %i.cyn = shl nuw nsw i32 %i.cyh, 9
  %i.cyo = add i32 %i.cyn, %.60769.us.i
  br label %bb.xy

bb.xx:                                            ; preds = %bb.xv
  %i.cyp = add i32 %.60769.us.i, 65280
  %i.cyq = load i32, ptr %i.cau, align 4, !tbaa !103
  %i.cyr = add i32 %i.cyq, 1
  store i32 %i.cyr, ptr %i.cau, align 4, !tbaa !103
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xw, %bb.xu, %bb.xs
  %.62771.us.i = phi i32 [ %.60769.us.i, %bb.xs ], [ %i.cyp, %bb.xx ], [ %i.cyo, %bb.xw ], [ %i.cyl, %bb.xu ]
  %.62.us.i182 = phi i32 [ %.60.us.i181, %bb.xs ], [ 8, %bb.xx ], [ 7, %bb.xw ], [ 8, %bb.xu ]
  %i.cys = shl i32 %.38704.us.i, 1                ; 3 uses
  %i.cyt = shl i32 %.62771.us.i, 1                ; 2 uses
  %i.cyu = add i32 %.62.us.i182, -1               ; 2 uses
  %i.cyv = icmp ult i32 %i.cys, 32768
  br i1 %i.cyv, label %bb.xs, label %.loopexit924.us.i162.loopexit490, !llvm.loop !411

bb.xz:                                            ; preds = %bb.xo
  %i.cyw = icmp ult i32 %i.cxq, %i.cxp            ; 2 uses
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cxo, i64 4
  %i.cyy = load i32, ptr %i.cyx, align 4, !tbaa !102 ; 2 uses
  %.sink1229.i = select i1 %i.cyw, i64 8, i64 16
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cxo, i64 %.sink1229.i
  %storemerge906.us.i = load ptr, ptr %i.cyz, align 8, !tbaa !99
  store ptr %storemerge906.us.i, ptr %i.cxn, align 8, !tbaa !99
  br label %bb.ya

bb.ya:                                            ; preds = %bb.yg, %bb.xz
  %.57766.us.i = phi i32 [ %.56765.us.i, %bb.xz ], [ %i.czq, %bb.yg ] ; 4 uses
  %.37703.us.i = phi i32 [ %i.cxp, %bb.xz ], [ %i.czp, %bb.yg ]
  %.57.us.i184 = phi i32 [ %.56.us.i160, %bb.xz ], [ %i.czr, %bb.yg ] ; 2 uses
  %i.cza = icmp eq i32 %.57.us.i184, 0
  br i1 %i.cza, label %bb.yb, label %bb.yg

bb.yb:                                            ; preds = %bb.ya
  %i.czb = load ptr, ptr %i.cat, align 8, !tbaa !95 ; 2 uses
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 1 ; 3 uses
  %i.czd = load i8, ptr %i.czc, align 1, !tbaa !56 ; 2 uses
  %i.cze = zext i8 %i.czd to i32                  ; 2 uses
  %i.czf = load i8, ptr %i.czb, align 1, !tbaa !56
  %i.czg = icmp eq i8 %i.czf, -1
  br i1 %i.czg, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  store ptr %i.czc, ptr %i.cat, align 8, !tbaa !95
  %i.czh = shl nuw nsw i32 %i.cze, 8
  %i.czi = add i32 %i.czh, %.57766.us.i
  br label %bb.yg

bb.yd:                                            ; preds = %bb.yb
  %i.czj = icmp ugt i8 %i.czd, -113
  br i1 %i.czj, label %bb.yf, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  store ptr %i.czc, ptr %i.cat, align 8, !tbaa !95
  %i.czk = shl nuw nsw i32 %i.cze, 9
  %i.czl = add i32 %i.czk, %.57766.us.i
  br label %bb.yg

bb.yf:                                            ; preds = %bb.yd
  %i.czm = add i32 %.57766.us.i, 65280
  %i.czn = load i32, ptr %i.cau, align 4, !tbaa !103
  %i.czo = add i32 %i.czn, 1
  store i32 %i.czo, ptr %i.cau, align 4, !tbaa !103
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye, %bb.yc, %bb.ya
  %.59768.us.i = phi i32 [ %.57766.us.i, %bb.ya ], [ %i.czm, %bb.yf ], [ %i.czl, %bb.ye ], [ %i.czi, %bb.yc ]
  %.59.us.i185 = phi i32 [ %.57.us.i184, %bb.ya ], [ 8, %bb.yf ], [ 7, %bb.ye ], [ 8, %bb.yc ]
  %i.czp = shl i32 %.37703.us.i, 1                ; 3 uses
  %i.czq = shl i32 %.59768.us.i, 1                ; 2 uses
  %i.czr = add i32 %.59.us.i185, -1               ; 2 uses
  %i.czs = icmp ult i32 %i.czp, 32768
  br i1 %i.czs, label %bb.ya, label %.loopexit924.us.i162.loopexit, !llvm.loop !412

.loopexit924.us.i162.loopexit:                    ; preds = %bb.yg
  %.not905.us.i = icmp eq i32 %i.cyy, 0
  %i.czt = zext i1 %.not905.us.i to i32
  %.21.us.i183 = select i1 %i.cyw, i32 %i.cyy, i32 %i.czt
  br label %.loopexit924.us.i162

.loopexit924.us.i162.loopexit490:                 ; preds = %bb.xy
  %.not904.us.i = icmp eq i32 %i.cyb, 0
  %i.czu = zext i1 %.not904.us.i to i32
  %.22.us.i180 = select i1 %i.cxz, i32 %i.czu, i32 %i.cyb
  br label %.loopexit924.us.i162

.loopexit924.us.i162:                             ; preds = %.loopexit924.us.i162.loopexit490, %.loopexit924.us.i162.loopexit, %bb.xq
  %.63772.us.i = phi i32 [ %i.cxu, %bb.xq ], [ %i.czq, %.loopexit924.us.i162.loopexit ], [ %i.cyt, %.loopexit924.us.i162.loopexit490 ]
  %.39705.us.i = phi i32 [ %i.cxq, %bb.xq ], [ %i.czp, %.loopexit924.us.i162.loopexit ], [ %i.cys, %.loopexit924.us.i162.loopexit490 ]
  %.63.us.i163 = phi i32 [ %.56.us.i160, %bb.xq ], [ %i.czr, %.loopexit924.us.i162.loopexit ], [ %i.cyu, %.loopexit924.us.i162.loopexit490 ]
  %.23.us.i164 = phi i32 [ %i.cxy, %bb.xq ], [ %.21.us.i183, %.loopexit924.us.i162.loopexit ], [ %.22.us.i180, %.loopexit924.us.i162.loopexit490 ] ; 2 uses
  %i.czv = xor i32 %.23.us.i164, %i.cxl           ; 2 uses
  %.not907.us.i = icmp eq i32 %.23.us.i164, %i.cxl
  %i.czw = select i1 %.not907.us.i, i32 %i.azr, i32 %i.cav
  %i.czx = getelementptr inbounds nuw [4 x i8], ptr %.1791991.us.i, i64 %i.cba
  store i32 %i.czw, ptr %i.czx, align 4, !tbaa !6
  %i.czy = load i32, ptr %i.cws, align 4, !tbaa !6
  %i.czz = or i32 %i.czy, 16384
  store i32 %i.czz, ptr %i.cws, align 4, !tbaa !6
  %i.daa = shl i32 %i.czv, 28
  %i.dab = or i32 %.5.us.i157, %i.daa
  %i.dac = or disjoint i32 %i.dab, 8192
  %i.dad = load i32, ptr %i.cwu, align 4, !tbaa !6
  %i.dae = or i32 %i.dad, 4096
  store i32 %i.dae, ptr %i.cwu, align 4, !tbaa !6
  %i.daf = load i32, ptr %i.a, align 8, !tbaa !91
  %i.dag = add i32 %i.daf, 2
  %i.dah = zext i32 %i.dag to i64
  %i.dai = getelementptr inbounds nuw [4 x i8], ptr %.1788992.us.i, i64 %i.dah ; 4 uses
  %i.daj = shl i32 %i.czv, 18
  %13 = load i32, ptr %i.dai, align 4, !tbaa !6
  %14 = or i32 %i.daj, %13
  %i.dak = or i32 %14, 2
  store i32 %i.dak, ptr %i.dai, align 4, !tbaa !6
  %i.dal = getelementptr inbounds i8, ptr %i.dai, i64 -4 ; 2 uses
  %i.dam = load i32, ptr %i.dal, align 4, !tbaa !6
  %i.dan = or i32 %i.dam, 4
  store i32 %i.dan, ptr %i.dal, align 4, !tbaa !6
  %i.dao = getelementptr inbounds nuw i8, ptr %i.dai, i64 4 ; 2 uses
  %i.dap = load i32, ptr %i.dao, align 4, !tbaa !6
  %i.daq = or i32 %i.dap, 1
  store i32 %i.daq, ptr %i.dao, align 4, !tbaa !6
  br label %bb.yh

bb.yh:                                            ; preds = %.loopexit924.us.i162, %.loopexit926.us.i159
  %.8784.us.i = phi ptr [ %i.cxn, %.loopexit924.us.i162 ], [ %i.cuk, %.loopexit926.us.i159 ]
  %.64773.us.i = phi i32 [ %.63772.us.i, %.loopexit924.us.i162 ], [ %.56765.us.i, %.loopexit926.us.i159 ]
  %.40706.us.i = phi i32 [ %.39705.us.i, %.loopexit924.us.i162 ], [ %.35701.us.i, %.loopexit926.us.i159 ]
  %.64.us.i165 = phi i32 [ %.63.us.i163, %.loopexit924.us.i162 ], [ %.56.us.i160, %.loopexit926.us.i159 ]
  %.6.us.i166 = phi i32 [ %i.dac, %.loopexit924.us.i162 ], [ %.5.us.i157, %.loopexit926.us.i159 ]
  %i.dar = or i32 %.6.us.i166, 1073741824
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.wu
  %.9785.us.i = phi ptr [ %.8784.us.i, %bb.yh ], [ %.7783.us.i, %bb.wu ]
  %.65774.us.i = phi i32 [ %.64773.us.i, %bb.yh ], [ %.49758.us.i, %bb.wu ]
  %.41707.us.i = phi i32 [ %.40706.us.i, %bb.yh ], [ %.31697.us.i, %bb.wu ]
  %.65.us.i167 = phi i32 [ %.64.us.i165, %bb.yh ], [ %.49.us.i156, %bb.wu ]
  %.7.us.i168 = phi i32 [ %i.dar, %bb.yh ], [ %.5.us.i157, %bb.wu ]
  store i32 %.7.us.i168, ptr %.1788992.us.i, align 4, !tbaa !6
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.sd
  %.10786.us.i = phi ptr [ %.9785.us.i, %bb.yi ], [ %.1777993.us.i, %bb.sd ] ; 3 uses
  %.66775.us.i = phi i32 [ %.65774.us.i, %bb.yi ], [ %.1710994.us.i, %bb.sd ] ; 3 uses
  %.42708.us.i = phi i32 [ %.41707.us.i, %bb.yi ], [ %.1667995.us.i, %bb.sd ] ; 3 uses
  %.66.us.i169 = phi i32 [ %.65.us.i167, %bb.yi ], [ %.1643996.us.i, %bb.sd ] ; 3 uses
  %i.das = add nuw i32 %.0795990.us.i, 1          ; 2 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %.1791991.us.i, i64 4 ; 2 uses
  %i.dau = getelementptr inbounds nuw i8, ptr %.1788992.us.i, i64 4
  %exitcond.not.i170 = icmp eq i32 %i.das, %i.b
  br i1 %exitcond.not.i170, label %._crit_edge.us.i171, label %bb.sd, !llvm.loop !413

._crit_edge.us.i171:                              ; preds = %bb.yj
  %i.dav = add nuw i32 %.07931002.us.i, 4         ; 3 uses
  %i.daw = getelementptr inbounds nuw [4 x i8], ptr %i.dat, i64 %i.cba ; 2 uses
  %i.dax = getelementptr inbounds nuw i8, ptr %.1788992.us.i, i64 12 ; 2 uses
  %i.day = load i32, ptr %i.azs, align 4, !tbaa !92 ; 2 uses
  %i.daz = and i32 %i.day, -4
  %i.dba = icmp ult i32 %i.dav, %i.daz
  br i1 %i.dba, label %.preheader940.us.i, label %._crit_edge1009.i, !llvm.loop !414

.preheader940.lr.ph.split.i:                      ; preds = %.preheader940.lr.ph.i
  %i.dbb = and i32 %i.azt, -4
  %i.dbc = add i32 %i.azt, -4
  %i.dbd = zext i32 %i.dbc to i64                 ; 2 uses
  %i.dbe = and i64 %i.dbd, 4294967292
  %i.dbf = add nuw nsw i64 %i.dbe, 4
  %i.dbg = mul nuw nsw i64 %i.dbf, %i.cba
  %scevgep.i237 = getelementptr i8, ptr %i.azc, i64 %i.dbg
  %i.dbh = shl nuw nsw i64 %i.dbd, 1
  %i.dbi = and i64 %i.dbh, 8589934584
  %i.dbj = getelementptr i8, ptr %i.aze, i64 %i.dbi
  %scevgep1095.i = getelementptr i8, ptr %i.dbj, i64 20
  br label %._crit_edge1009.i

._crit_edge1009.i:                                ; preds = %._crit_edge.us.i171, %.preheader940.lr.ph.split.i, %bb.sc
  %.0793.lcssa.i = phi i32 [ 0, %bb.sc ], [ %i.dbb, %.preheader940.lr.ph.split.i ], [ %i.dav, %._crit_edge.us.i171 ] ; 4 uses
  %.0790.lcssa.i = phi ptr [ %i.azc, %bb.sc ], [ %scevgep.i237, %.preheader940.lr.ph.split.i ], [ %i.daw, %._crit_edge.us.i171 ]
  %.0787.lcssa.i172 = phi ptr [ %i.azh, %bb.sc ], [ %scevgep1095.i, %.preheader940.lr.ph.split.i ], [ %i.dax, %._crit_edge.us.i171 ]
  %.0776.lcssa.i = phi ptr [ %i.azj, %bb.sc ], [ %i.azj, %.preheader940.lr.ph.split.i ], [ %.10786.us.i, %._crit_edge.us.i171 ]
  %.0709.lcssa.i = phi i32 [ %i.azk, %bb.sc ], [ %i.azk, %.preheader940.lr.ph.split.i ], [ %.66775.us.i, %._crit_edge.us.i171 ]
  %.0666.lcssa.i = phi i32 [ %i.azm, %bb.sc ], [ %i.azm, %.preheader940.lr.ph.split.i ], [ %.42708.us.i, %._crit_edge.us.i171 ]
  %.0642.lcssa.i = phi i32 [ %i.azo, %bb.sc ], [ %i.azo, %.preheader940.lr.ph.split.i ], [ %.66.us.i169, %._crit_edge.us.i171 ]
  %.lcssa988.i = phi i32 [ %i.azt, %bb.sc ], [ %i.azt, %.preheader940.lr.ph.split.i ], [ %i.day, %._crit_edge.us.i171 ] ; 2 uses
  store ptr %.0776.lcssa.i, ptr %i.azi, align 8, !tbaa !96
  store i32 %.0709.lcssa.i, ptr %0, align 8, !tbaa !94
  store i32 %.0666.lcssa.i, ptr %i.azl, align 4, !tbaa !97
  store i32 %.0642.lcssa.i, ptr %i.azn, align 8, !tbaa !93
  %i.dbk = icmp ult i32 %.0793.lcssa.i, %.lcssa988.i
  %i.dbl = icmp ne i32 %i.b, 0
  %or.cond.i173 = and i1 %i.dbl, %i.dbk
  br i1 %or.cond.i173, label %.preheader.i175, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

.preheader.i175:                                  ; preds = %._crit_edge1009.i, %._crit_edge.i179
  %i.dbm = phi i32 [ %i.dbx, %._crit_edge.i179 ], [ %.lcssa988.i, %._crit_edge1009.i ]
  %.27891028.i = phi ptr [ %i.dca, %._crit_edge.i179 ], [ %.0787.lcssa.i172, %._crit_edge1009.i ] ; 2 uses
  %.27921027.i = phi ptr [ %i.dbz, %._crit_edge.i179 ], [ %.0790.lcssa.i, %._crit_edge1009.i ] ; 2 uses
  %.17961026.i = phi i32 [ %i.dby, %._crit_edge.i179 ], [ 0, %._crit_edge1009.i ]
  %.not1030.i = icmp eq i32 %i.dbm, %.0793.lcssa.i
  br i1 %.not1030.i, label %._crit_edge.i179, label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %.preheader.i175, %.lr.ph.i176
  %indvars.iv.i177 = phi i64 [ %indvars.iv.next.i178, %.lr.ph.i176 ], [ 0, %.preheader.i175 ] ; 2 uses
  %i.dbn = trunc nuw i64 %indvars.iv.i177 to i32  ; 2 uses
  %i.dbo = mul i32 %i.b, %i.dbn
  %i.dbp = zext i32 %i.dbo to i64
  %i.dbq = getelementptr inbounds nuw [4 x i8], ptr %.27921027.i, i64 %i.dbp
  %i.dbr = load i32, ptr %i.a, align 8, !tbaa !91
  %i.dbs = add i32 %i.dbr, 2
  tail call fastcc void @opj_t1_dec_sigpass_step_mqc(ptr noundef nonnull %0, ptr noundef %.27891028.i, ptr noundef %i.dbq, i32 noundef %i.azr, i32 noundef %i.dbn, i32 noundef %i.dbs, i32 noundef 0)
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %i.dbt = load i32, ptr %i.azs, align 4, !tbaa !92 ; 2 uses
  %i.dbu = sub i32 %i.dbt, %.0793.lcssa.i
  %i.dbv = zext i32 %i.dbu to i64
  %i.dbw = icmp samesign ult i64 %indvars.iv.next.i178, %i.dbv
  br i1 %i.dbw, label %.lr.ph.i176, label %._crit_edge.i179, !llvm.loop !415

._crit_edge.i179:                                 ; preds = %.lr.ph.i176, %.preheader.i175
  %i.dbx = phi i32 [ %.0793.lcssa.i, %.preheader.i175 ], [ %i.dbt, %.lr.ph.i176 ]
  %i.dby = add nuw i32 %.17961026.i, 1            ; 2 uses
  %i.dbz = getelementptr inbounds nuw i8, ptr %.27921027.i, i64 4
  %i.dca = getelementptr inbounds nuw i8, ptr %.27891028.i, i64 4
  %exitcond1097.not.i = icmp eq i32 %i.dby, %i.b
  br i1 %exitcond1097.not.i, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit, label %.preheader.i175, !llvm.loop !416

opj_t1_dec_sigpass_mqc_generic_vsc.exit.sink.split: ; preds = %bb.fk, %bb.ls
  %.10765.i.lcssa.lcssa.sink = phi ptr [ %.10770.i, %bb.ls ], [ %.10765.i, %bb.fk ]
  %.66754.i.lcssa.lcssa.sink = phi i32 [ %.66759.i, %bb.ls ], [ %.66754.i, %bb.fk ]
  %.42687.i.lcssa.lcssa.sink = phi i32 [ %.42692.i, %bb.ls ], [ %.42687.i, %bb.fk ]
  %.66.i.lcssa.lcssa.sink = phi i32 [ %.66.i53, %bb.ls ], [ %.66.i, %bb.fk ]
  store ptr %.10765.i.lcssa.lcssa.sink, ptr %i.m, align 8, !tbaa !96
  store i32 %.66754.i.lcssa.lcssa.sink, ptr %0, align 8, !tbaa !94
  store i32 %.42687.i.lcssa.lcssa.sink, ptr %i.p, align 4, !tbaa !97
  store i32 %.66.i.lcssa.lcssa.sink, ptr %i.r, align 8, !tbaa !93
  br label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

opj_t1_dec_sigpass_mqc_generic_vsc.exit:          ; preds = %._crit_edge.i, %._crit_edge.i179, %opj_t1_dec_sigpass_mqc_generic_vsc.exit.sink.split, %._crit_edge1009.i, %._crit_edge1003.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_t1_dec_clnpass(ptr noundef nonnull %0, i32 noundef range(i32 1, 31) %1, i32 noundef %2) unnamed_addr #6 !guid !582 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 18 uses
  %i.c = icmp eq i32 %i.b, 64
  br i1 %i.c, label %bb.b, label %bb.zp

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.e = load i32, ptr %i.d, align 4, !tbaa !92
  %i.f = icmp eq i32 %i.e, 64
  br i1 %i.f, label %bb.c, label %bb.zp

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %2, 8
  %.not13 = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 268 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !97   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %i.t = shl nuw nsw i32 1, %1                    ; 2 uses
  %i.u = lshr exact i32 %i.t, 1
  %i.v = or i32 %i.u, %i.t                        ; 17 uses
  %i.w = getelementptr i8, ptr %0, i64 200        ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 216 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 144 uses
  %i.aa = sub nsw i32 0, %i.v                     ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 12 uses
  br i1 %.not13, label %.preheader.i14, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.mi
  %.012972061.i = phi i32 [ %.142.i, %bb.mi ], [ %i.s, %bb.c ]
  %.013482060.i = phi i32 [ %.881436.i, %bb.mi ], [ %i.q, %bb.c ]
  %.014372059.i = phi i32 [ %.1421579.i, %bb.mi ], [ %i.o, %bb.c ]
  %.015802058.i = phi ptr [ %.81588.i, %bb.mi ], [ %i.n, %bb.c ]
  %.015892057.i = phi ptr [ %i.bbe, %bb.mi ], [ %i.l, %bb.c ]
  %.015922056.i = phi ptr [ %i.bbd, %bb.mi ], [ %i.i, %bb.c ]
  %.015952055.i = phi i32 [ %i.bbc, %bb.mi ], [ 0, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread1900.i, %.preheader.i
  %.112982054.i = phi i32 [ %.012972061.i, %.preheader.i ], [ %.142.i, %.thread1900.i ] ; 7 uses
  %.113492053.i = phi i32 [ %.013482060.i, %.preheader.i ], [ %.881436.i, %.thread1900.i ] ; 3 uses
  %.114382052.i = phi i32 [ %.014372059.i, %.preheader.i ], [ %.1421579.i, %.thread1900.i ] ; 7 uses
  %.115812051.i = phi ptr [ %.015802058.i, %.preheader.i ], [ %.81588.i, %.thread1900.i ]
  %.115902050.i = phi ptr [ %.015892057.i, %.preheader.i ], [ %i.bbb, %.thread1900.i ] ; 23 uses
  %.115932049.i = phi ptr [ %.015922056.i, %.preheader.i ], [ %i.bba, %.thread1900.i ] ; 10 uses
  %.015972048.i = phi i32 [ 0, %.preheader.i ], [ %i.baz, %.thread1900.i ]
  %i.ad = load i32, ptr %.115902050.i, align 4, !tbaa !6 ; 9 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.gh

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 6 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !101 ; 6 uses
  %i.ah = sub i32 %.113492053.i, %i.ag            ; 5 uses
  %i.ai = lshr i32 %.114382052.i, 16
  %i.aj = icmp ult i32 %i.ai, %i.ag
  br i1 %i.aj, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
end_hunk_10
begin_hunk_11_@opj_t1_dec_clnpass:bb.a
  %i.axf = getelementptr inbounds nuw i8, ptr %.115902050.i, i64 4 ; 3 uses
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !6
  %.pn.in.i1868.i = lshr i32 %.9.i, 21
  %i.axh = and i32 %i.aup, 170
  %i.axi = lshr i32 %i.axe, 28
  %i.axj = and i32 %i.axi, 1
  %i.axk = lshr i32 %i.axg, 26
  %i.axl = and i32 %i.axk, 4
  %.pn.i1869.i = and i32 %.pn.in.i1868.i, 16
  %i.axm = lshr i32 %.9.i, 25
  %i.axn = and i32 %i.axm, 64
  %i.axo = or disjoint i32 %i.axn, %i.axh
  %i.axp = or disjoint i32 %i.axo, %.pn.i1869.i
  %.0.i1870.i = or disjoint i32 %i.axp, %i.axj
  %i.axq = or disjoint i32 %.0.i1870.i, %i.axl
  %i.axr = zext nneg i32 %i.axq to i64            ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.axr
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !56
  %i.axu = zext i8 %i.axt to i64
  %i.axv = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.axu ; 4 uses
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !99 ; 6 uses
  %i.axx = load i32, ptr %i.axw, align 8, !tbaa !101 ; 6 uses
  %i.axy = sub i32 %.821430.i, %i.axx             ; 5 uses
  %i.axz = lshr i32 %.1331570.i, 16
  %i.aya = icmp ult i32 %i.axz, %i.axx
  br i1 %i.aya, label %bb.lp, label %bb.lx

bb.lp:                                            ; preds = %bb.lo
  %i.ayb = icmp ult i32 %i.axy, %i.axx            ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axw, i64 4
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !102 ; 2 uses
  %.sink2456.i = select i1 %i.ayb, i64 8, i64 16
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axw, i64 %.sink2456.i
  %storemerge1788.i = load ptr, ptr %i.aye, align 8, !tbaa !99
  store ptr %storemerge1788.i, ptr %i.axv, align 8, !tbaa !99
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lw, %bb.lp
  %.1341571.i = phi i32 [ %.1331570.i, %bb.lp ], [ %i.ayv, %bb.lw ] ; 4 uses
  %.841432.i = phi i32 [ %i.axx, %bb.lp ], [ %i.ayu, %bb.lw ]
  %.134.i = phi i32 [ %.133.i, %bb.lp ], [ %i.ayw, %bb.lw ] ; 2 uses
  %i.ayf = icmp eq i32 %.134.i, 0
  br i1 %i.ayf, label %bb.lr, label %bb.lw

bb.lr:                                            ; preds = %bb.lq
  %i.ayg = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 1 ; 3 uses
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !56 ; 2 uses
  %i.ayj = zext i8 %i.ayi to i32                  ; 2 uses
  %i.ayk = load i8, ptr %i.ayg, align 1, !tbaa !56
  %i.ayl = icmp eq i8 %i.ayk, -1
  br i1 %i.ayl, label %bb.ls, label %bb.lv

bb.ls:                                            ; preds = %bb.lr
  %i.aym = icmp ugt i8 %i.ayi, -113
  br i1 %i.aym, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.ayn = add i32 %.1341571.i, 65280
  %i.ayo = load i32, ptr %i.z, align 4, !tbaa !103
  %i.ayp = add i32 %i.ayo, 1
  store i32 %i.ayp, ptr %i.z, align 4, !tbaa !103
  br label %bb.lw

bb.lu:                                            ; preds = %bb.ls
  store ptr %i.ayh, ptr %i.y, align 8, !tbaa !95
  %i.ayq = shl nuw nsw i32 %i.ayj, 9
  %i.ayr = add i32 %i.ayq, %.1341571.i
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lr
  store ptr %i.ayh, ptr %i.y, align 8, !tbaa !95
  %i.ays = shl nuw nsw i32 %i.ayj, 8
  %i.ayt = add i32 %i.ays, %.1341571.i
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu, %bb.lt, %bb.lq
  %.1361573.i = phi i32 [ %.1341571.i, %bb.lq ], [ %i.ayn, %bb.lt ], [ %i.ayr, %bb.lu ], [ %i.ayt, %bb.lv ]
  %.136.i = phi i32 [ %.134.i, %bb.lq ], [ 8, %bb.lt ], [ 7, %bb.lu ], [ 8, %bb.lv ]
  %i.ayu = shl i32 %.841432.i, 1                  ; 3 uses
  %i.ayv = shl i32 %.1361573.i, 1                 ; 2 uses
  %i.ayw = add i32 %.136.i, -1                    ; 2 uses
  %i.ayx = icmp ult i32 %i.ayu, 32768
  br i1 %i.ayx, label %bb.lq, label %.loopexit1925.i.loopexit, !llvm.loop !452

bb.lx:                                            ; preds = %bb.lo
  %i.ayy = shl nuw i32 %i.axx, 16
  %i.ayz = sub i32 %.1331570.i, %i.ayy            ; 2 uses
  %i.aza = and i32 %i.axy, 32768
  %i.azb = icmp eq i32 %i.aza, 0
  br i1 %i.azb, label %bb.ly, label %bb.mg

bb.ly:                                            ; preds = %bb.lx
  %i.azc = icmp ult i32 %i.axy, %i.axx            ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axw, i64 4
  %i.aze = load i32, ptr %i.azd, align 4, !tbaa !102 ; 2 uses
  %.sink2457.i = select i1 %i.azc, i64 16, i64 8
  %i.azf = getelementptr inbounds nuw i8, ptr %i.axw, i64 %.sink2457.i
  %storemerge1785.i = load ptr, ptr %i.azf, align 8, !tbaa !99
  store ptr %storemerge1785.i, ptr %i.axv, align 8, !tbaa !99
  br label %bb.lz

bb.lz:                                            ; preds = %bb.mf, %bb.ly
  %.1371574.i = phi i32 [ %i.ayz, %bb.ly ], [ %i.azw, %bb.mf ] ; 4 uses
  %.851433.i = phi i32 [ %i.axy, %bb.ly ], [ %i.azv, %bb.mf ]
  %.137.i = phi i32 [ %.133.i, %bb.ly ], [ %i.azx, %bb.mf ] ; 2 uses
  %i.azg = icmp eq i32 %.137.i, 0
  br i1 %i.azg, label %bb.ma, label %bb.mf

bb.ma:                                            ; preds = %bb.lz
  %i.azh = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 1 ; 3 uses
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !56 ; 2 uses
  %i.azk = zext i8 %i.azj to i32                  ; 2 uses
  %i.azl = load i8, ptr %i.azh, align 1, !tbaa !56
  %i.azm = icmp eq i8 %i.azl, -1
  br i1 %i.azm, label %bb.mb, label %bb.me

bb.mb:                                            ; preds = %bb.ma
  %i.azn = icmp ugt i8 %i.azj, -113
  br i1 %i.azn, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.azo = add i32 %.1371574.i, 65280
  %i.azp = load i32, ptr %i.z, align 4, !tbaa !103
  %i.azq = add i32 %i.azp, 1
  store i32 %i.azq, ptr %i.z, align 4, !tbaa !103
  br label %bb.mf

bb.md:                                            ; preds = %bb.mb
  store ptr %i.azi, ptr %i.y, align 8, !tbaa !95
  %i.azr = shl nuw nsw i32 %i.azk, 9
  %i.azs = add i32 %i.azr, %.1371574.i
  br label %bb.mf

bb.me:                                            ; preds = %bb.ma
  store ptr %i.azi, ptr %i.y, align 8, !tbaa !95
  %i.azt = shl nuw nsw i32 %i.azk, 8
  %i.azu = add i32 %i.azt, %.1371574.i
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md, %bb.mc, %bb.lz
  %.1391576.i = phi i32 [ %.1371574.i, %bb.lz ], [ %i.azo, %bb.mc ], [ %i.azs, %bb.md ], [ %i.azu, %bb.me ]
  %.139.i = phi i32 [ %.137.i, %bb.lz ], [ 8, %bb.mc ], [ 7, %bb.md ], [ 8, %bb.me ]
  %i.azv = shl i32 %.851433.i, 1                  ; 3 uses
  %i.azw = shl i32 %.1391576.i, 1                 ; 2 uses
  %i.azx = add i32 %.139.i, -1                    ; 2 uses
  %i.azy = icmp ult i32 %i.azv, 32768
  br i1 %i.azy, label %bb.lz, label %.loopexit1925.i.loopexit968, !llvm.loop !453

bb.mg:                                            ; preds = %bb.lx
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axw, i64 4
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !102
  br label %.loopexit1925.i

.loopexit1925.i.loopexit:                         ; preds = %bb.lw
  %.not1787.i = icmp eq i32 %i.ayd, 0
  %i.bab = zext i1 %.not1787.i to i32
  %.48.i = select i1 %i.ayb, i32 %i.ayd, i32 %i.bab
  br label %.loopexit1925.i

.loopexit1925.i.loopexit968:                      ; preds = %bb.mf
  %.not1786.i = icmp eq i32 %i.aze, 0
  %i.bac = zext i1 %.not1786.i to i32
  %.49.i = select i1 %i.azc, i32 %i.bac, i32 %i.aze
  br label %.loopexit1925.i

.loopexit1925.i:                                  ; preds = %.loopexit1925.i.loopexit968, %.loopexit1925.i.loopexit, %bb.mg
  %.1401577.i = phi i32 [ %i.ayz, %bb.mg ], [ %i.ayv, %.loopexit1925.i.loopexit ], [ %i.azw, %.loopexit1925.i.loopexit968 ]
  %.861434.i = phi i32 [ %i.axy, %bb.mg ], [ %i.ayu, %.loopexit1925.i.loopexit ], [ %i.azv, %.loopexit1925.i.loopexit968 ]
  %.140.i = phi i32 [ %.133.i, %bb.mg ], [ %i.ayw, %.loopexit1925.i.loopexit ], [ %i.azx, %.loopexit1925.i.loopexit968 ]
  %.50.i = phi i32 [ %i.baa, %bb.mg ], [ %.48.i, %.loopexit1925.i.loopexit ], [ %.49.i, %.loopexit1925.i.loopexit968 ] ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.axr
  %i.bae = load i8, ptr %i.bad, align 1, !tbaa !56
  %i.baf = zext i8 %i.bae to i32                  ; 2 uses
  %i.bag = xor i32 %.50.i, %i.baf                 ; 2 uses
  %.not1789.i = icmp eq i32 %.50.i, %i.baf
  %i.bah = select i1 %.not1789.i, i32 %i.v, i32 %i.aa
  %i.bai = getelementptr inbounds nuw i8, ptr %.115932049.i, i64 768
  store i32 %i.bah, ptr %i.bai, align 4, !tbaa !6
  %i.baj = load i32, ptr %i.axd, align 4, !tbaa !6
  %i.bak = or i32 %i.baj, 16384
  store i32 %i.bak, ptr %i.axd, align 4, !tbaa !6
  %i.bal = shl i32 %i.bag, 28
  %i.bam = or i32 %i.bal, %.9.i
  %i.ban = load i32, ptr %i.axf, align 4, !tbaa !6
  %i.bao = or i32 %i.ban, 4096
  store i32 %i.bao, ptr %i.axf, align 4, !tbaa !6
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.loopexit1925.i, %.loopexit.i
  %.sink2472.i = phi i32 [ %i.acb, %.loopexit.i ], [ %i.bag, %.loopexit1925.i ]
  %.71587.ph.i = phi ptr [ %i.zq, %.loopexit.i ], [ %i.axv, %.loopexit1925.i ]
  %.1411578.ph.i = phi i32 [ %.791516.i, %.loopexit.i ], [ %.1401577.i, %.loopexit1925.i ]
  %.871435.ph.i = phi i32 [ %.491397.i, %.loopexit.i ], [ %.861434.i, %.loopexit1925.i ]
  %.141.ph.i = phi i32 [ %.79.i, %.loopexit.i ], [ %.140.i, %.loopexit1925.i ]
  %.10.ph.in.i = phi i32 [ %i.ach, %.loopexit.i ], [ %i.bam, %.loopexit1925.i ]
  %.10.ph.i = or i32 %.10.ph.in.i, 8192
  %i.bap = getelementptr inbounds nuw i8, ptr %.115902050.i, i64 264 ; 2 uses
  %i.baq = shl i32 %.sink2472.i, 18
  %3 = load i32, ptr %i.bap, align 4, !tbaa !6
  %4 = or i32 %i.baq, %3
  %i.bar = or i32 %4, 2
  store i32 %i.bar, ptr %i.bap, align 4, !tbaa !6
  %i.bas = getelementptr inbounds nuw i8, ptr %.115902050.i, i64 260 ; 2 uses
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !6
  %i.bau = or i32 %i.bat, 4
  store i32 %i.bau, ptr %i.bas, align 4, !tbaa !6
  %i.bav = getelementptr inbounds nuw i8, ptr %.115902050.i, i64 268 ; 2 uses
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !6
  %i.bax = or i32 %i.baw, 1
  store i32 %i.bax, ptr %i.bav, align 4, !tbaa !6
  br label %bb.mh

bb.mh:                                            ; preds = %.sink.split.i, %.loopexit1927.i, %bb.ku, %.loopexit1907.i, %.loopexit1919.i
  %.71587.i = phi ptr [ %i.auv, %.loopexit1927.i ], [ %.61586.i, %bb.ku ], [ %i.ac, %.loopexit1919.i ], [ %i.wp, %.loopexit1907.i ], [ %.71587.ph.i, %.sink.split.i ]
  %.1411578.i = phi i32 [ %.1331570.i, %.loopexit1927.i ], [ %.1261563.i, %bb.ku ], [ %.221459.i, %.loopexit1919.i ], [ %.711508.i, %.loopexit1907.i ], [ %.1411578.ph.i, %.sink.split.i ]
  %.871435.i = phi i32 [ %.821430.i, %.loopexit1927.i ], [ %.781426.i, %bb.ku ], [ %.131361.i, %.loopexit1919.i ], [ %.441392.i, %.loopexit1907.i ], [ %.871435.ph.i, %.sink.split.i ]
  %.141.i = phi i32 [ %.133.i, %.loopexit1927.i ], [ %.126.i, %bb.ku ], [ %.221319.i, %.loopexit1919.i ], [ %.71.i, %.loopexit1907.i ], [ %.141.ph.i, %.sink.split.i ]
  %.10.i = phi i32 [ %.9.i, %.loopexit1927.i ], [ %.9.i, %bb.ku ], [ 0, %.loopexit1919.i ], [ %.41282.ph.i, %.loopexit1907.i ], [ %.10.ph.i, %.sink.split.i ]
  %i.bay = and i32 %.10.i, -1226833921
  store i32 %i.bay, ptr %.115902050.i, align 4, !tbaa !6
  br label %.thread1900.i

.thread1900.i:                                    ; preds = %bb.mh, %.loopexit1923.i
  %.81588.i = phi ptr [ %.71587.i, %bb.mh ], [ %i.ab, %.loopexit1923.i ] ; 3 uses
  %.1421579.i = phi i32 [ %.1411578.i, %bb.mh ], [ %.81445.i, %.loopexit1923.i ] ; 3 uses
  %.881436.i = phi i32 [ %.871435.i, %bb.mh ], [ %.51353.i, %.loopexit1923.i ] ; 3 uses
  %.142.i = phi i32 [ %.141.i, %bb.mh ], [ %.81305.i, %.loopexit1923.i ] ; 3 uses
  %i.baz = add nuw nsw i32 %.015972048.i, 1       ; 2 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %.115932049.i, i64 4
  %i.bbb = getelementptr inbounds nuw i8, ptr %.115902050.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.baz, 64
  br i1 %exitcond.not.i, label %bb.mi, label %bb.d, !llvm.loop !454

bb.mi:                                            ; preds = %.thread1900.i
  %i.bbc = add nuw nsw i32 %.015952055.i, 4
  %i.bbd = getelementptr inbounds nuw i8, ptr %.115932049.i, i64 772
  %i.bbe = getelementptr inbounds nuw i8, ptr %.115902050.i, i64 12
  %i.bbf = icmp samesign ult i32 %.015952055.i, 60
  br i1 %i.bbf, label %.preheader.i, label %opj_t1_dec_clnpass_generic_vsc.exit.sink.split, !llvm.loop !455

.preheader.i14:                                   ; preds = %bb.c, %bb.zo
  %.013102071.i = phi i32 [ %.142.i26, %bb.zo ], [ %i.s, %bb.c ]
  %.013612070.i = phi i32 [ %.881449.i, %bb.zo ], [ %i.q, %bb.c ]
  %.014502069.i = phi i32 [ %.1421592.i, %bb.zo ], [ %i.o, %bb.c ]
  %.015932068.i = phi ptr [ %.81601.i, %bb.zo ], [ %i.n, %bb.c ]
  %.016022067.i = phi ptr [ %i.dcz, %bb.zo ], [ %i.l, %bb.c ]
  %.016052066.i = phi ptr [ %i.dcy, %bb.zo ], [ %i.i, %bb.c ]
  %.016082065.i = phi i32 [ %i.dcx, %bb.zo ], [ 0, %bb.c ] ; 2 uses
  br label %bb.mj

bb.mj:                                            ; preds = %.thread1910.i, %.preheader.i14
  %.113112064.i = phi i32 [ %.013102071.i, %.preheader.i14 ], [ %.142.i26, %.thread1910.i ] ; 7 uses
  %.113622063.i = phi i32 [ %.013612070.i, %.preheader.i14 ], [ %.881449.i, %.thread1910.i ] ; 3 uses
  %.114512062.i = phi i32 [ %.014502069.i, %.preheader.i14 ], [ %.1421592.i, %.thread1910.i ] ; 7 uses
  %.115942061.i = phi ptr [ %.015932068.i, %.preheader.i14 ], [ %.81601.i, %.thread1910.i ]
  %.116032060.i = phi ptr [ %.016022067.i, %.preheader.i14 ], [ %i.dcw, %.thread1910.i ] ; 29 uses
  %.116062059.i = phi ptr [ %.016052066.i, %.preheader.i14 ], [ %i.dcv, %.thread1910.i ] ; 10 uses
  %.016102058.i = phi i32 [ 0, %.preheader.i14 ], [ %i.dcu, %.thread1910.i ]
  %i.bbg = load i32, ptr %.116032060.i, align 4, !tbaa !6 ; 9 uses
  %i.bbh = icmp eq i32 %i.bbg, 0
  br i1 %i.bbh, label %bb.mk, label %bb.tn

bb.mk:                                            ; preds = %bb.mj
  %i.bbi = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 6 uses
  %i.bbj = load i32, ptr %i.bbi, align 8, !tbaa !101 ; 6 uses
  %i.bbk = sub i32 %.113622063.i, %i.bbj          ; 5 uses
  %i.bbl = lshr i32 %.114512062.i, 16
  %i.bbm = icmp ult i32 %i.bbl, %i.bbj
  br i1 %i.bbm, label %bb.ml, label %bb.mt

bb.ml:                                            ; preds = %bb.mk
  %i.bbn = icmp ult i32 %i.bbk, %i.bbj            ; 2 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbi, i64 4
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !102 ; 2 uses
  %.sink.i200 = select i1 %i.bbn, i64 8, i64 16
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbi, i64 %.sink.i200
  %storemerge1803.i201 = load ptr, ptr %i.bbq, align 8, !tbaa !99
  store ptr %storemerge1803.i201, ptr %i.ab, align 8, !tbaa !99
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ms, %bb.ml
  %.21452.i = phi i32 [ %.114512062.i, %bb.ml ], [ %i.bch, %bb.ms ] ; 4 uses
  %.31364.i = phi i32 [ %i.bbj, %bb.ml ], [ %i.bcg, %bb.ms ]
  %.21312.i = phi i32 [ %.113112064.i, %bb.ml ], [ %i.bci, %bb.ms ] ; 2 uses
  %i.bbr = icmp eq i32 %.21312.i, 0
  br i1 %i.bbr, label %bb.mn, label %bb.ms

bb.mn:                                            ; preds = %bb.mm
  %i.bbs = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 1 ; 3 uses
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !56 ; 2 uses
  %i.bbv = zext i8 %i.bbu to i32                  ; 2 uses
  %i.bbw = load i8, ptr %i.bbs, align 1, !tbaa !56
  %i.bbx = icmp eq i8 %i.bbw, -1
  br i1 %i.bbx, label %bb.mo, label %bb.mr

bb.mo:                                            ; preds = %bb.mn
  %i.bby = icmp ugt i8 %i.bbu, -113
  br i1 %i.bby, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo
  %i.bbz = add i32 %.21452.i, 65280
  %i.bca = load i32, ptr %i.z, align 4, !tbaa !103
  %i.bcb = add i32 %i.bca, 1
  store i32 %i.bcb, ptr %i.z, align 4, !tbaa !103
  br label %bb.ms

bb.mq:                                            ; preds = %bb.mo
  store ptr %i.bbt, ptr %i.y, align 8, !tbaa !95
  %i.bcc = shl nuw nsw i32 %i.bbv, 9
  %i.bcd = add i32 %i.bcc, %.21452.i
  br label %bb.ms

bb.mr:                                            ; preds = %bb.mn
  store ptr %i.bbt, ptr %i.y, align 8, !tbaa !95
  %i.bce = shl nuw nsw i32 %i.bbv, 8
  %i.bcf = add i32 %i.bce, %.21452.i
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq, %bb.mp, %bb.mm
  %.41454.i = phi i32 [ %.21452.i, %bb.mm ], [ %i.bbz, %bb.mp ], [ %i.bcd, %bb.mq ], [ %i.bcf, %bb.mr ]
  %.41314.i = phi i32 [ %.21312.i, %bb.mm ], [ 8, %bb.mp ], [ 7, %bb.mq ], [ 8, %bb.mr ]
  %i.bcg = shl i32 %.31364.i, 1                   ; 3 uses
  %i.bch = shl i32 %.41454.i, 1                   ; 2 uses
  %i.bci = add i32 %.41314.i, -1                  ; 2 uses
  %i.bcj = icmp ult i32 %i.bcg, 32768
  br i1 %i.bcj, label %bb.mm, label %.loopexit1933.i119.loopexit, !llvm.loop !456

bb.mt:                                            ; preds = %bb.mk
  %i.bck = shl nuw i32 %i.bbj, 16
  %i.bcl = sub i32 %.114512062.i, %i.bck          ; 2 uses
  %i.bcm = and i32 %i.bbk, 32768
  %i.bcn = icmp eq i32 %i.bcm, 0
  br i1 %i.bcn, label %bb.mu, label %bb.nc

bb.mu:                                            ; preds = %bb.mt
  %i.bco = icmp ult i32 %i.bbk, %i.bbj            ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bbi, i64 4
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !102 ; 2 uses
  %.sink2435.i199 = select i1 %i.bco, i64 16, i64 8
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bbi, i64 %.sink2435.i199
  %storemerge1800.i = load ptr, ptr %i.bcr, align 8, !tbaa !99
  store ptr %storemerge1800.i, ptr %i.ab, align 8, !tbaa !99
  br label %bb.mv

bb.mv:                                            ; preds = %bb.nb, %bb.mu
  %.51455.i = phi i32 [ %i.bcl, %bb.mu ], [ %i.bdi, %bb.nb ] ; 4 uses
  %.41365.i = phi i32 [ %i.bbk, %bb.mu ], [ %i.bdh, %bb.nb ]
  %.51315.i = phi i32 [ %.113112064.i, %bb.mu ], [ %i.bdj, %bb.nb ] ; 2 uses
  %i.bcs = icmp eq i32 %.51315.i, 0
  br i1 %i.bcs, label %bb.mw, label %bb.nb

bb.mw:                                            ; preds = %bb.mv
  %i.bct = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 1 ; 3 uses
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !56 ; 2 uses
  %i.bcw = zext i8 %i.bcv to i32                  ; 2 uses
  %i.bcx = load i8, ptr %i.bct, align 1, !tbaa !56
  %i.bcy = icmp eq i8 %i.bcx, -1
  br i1 %i.bcy, label %bb.mx, label %bb.na

bb.mx:                                            ; preds = %bb.mw
  %i.bcz = icmp ugt i8 %i.bcv, -113
  br i1 %i.bcz, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.bda = add i32 %.51455.i, 65280
  %i.bdb = load i32, ptr %i.z, align 4, !tbaa !103
  %i.bdc = add i32 %i.bdb, 1
  store i32 %i.bdc, ptr %i.z, align 4, !tbaa !103
  br label %bb.nb

bb.mz:                                            ; preds = %bb.mx
  store ptr %i.bcu, ptr %i.y, align 8, !tbaa !95
  %i.bdd = shl nuw nsw i32 %i.bcw, 9
  %i.bde = add i32 %i.bdd, %.51455.i
  br label %bb.nb

bb.na:                                            ; preds = %bb.mw
  store ptr %i.bcu, ptr %i.y, align 8, !tbaa !95
  %i.bdf = shl nuw nsw i32 %i.bcw, 8
  %i.bdg = add i32 %i.bdf, %.51455.i
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz, %bb.my, %bb.mv
  %.71457.i = phi i32 [ %.51455.i, %bb.mv ], [ %i.bda, %bb.my ], [ %i.bde, %bb.mz ], [ %i.bdg, %bb.na ]
  %.71317.i = phi i32 [ %.51315.i, %bb.mv ], [ 8, %bb.my ], [ 7, %bb.mz ], [ 8, %bb.na ]
  %i.bdh = shl i32 %.41365.i, 1                   ; 3 uses
  %i.bdi = shl i32 %.71457.i, 1                   ; 2 uses
  %i.bdj = add i32 %.71317.i, -1                  ; 2 uses
  %i.bdk = icmp ult i32 %i.bdh, 32768
  br i1 %i.bdk, label %bb.mv, label %.loopexit1933.i119.loopexit949, !llvm.loop !457

bb.nc:                                            ; preds = %bb.mt
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bbi, i64 4
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !102
  br label %.loopexit1933.i119

.loopexit1933.i119.loopexit:                      ; preds = %bb.ms
  %.not1802.i = icmp eq i32 %i.bbp, 0
  %i.bdn = zext i1 %.not1802.i to i32
end_hunk_11
begin_hunk_12_@opj_t1_dec_clnpass:bb.a
  br label %.loopexit1929.i121

.loopexit1929.i121:                               ; preds = %.loopexit1929.i121.loopexit947, %.loopexit1929.i121.loopexit, %bb.on
  %.221472.i = phi i32 [ %i.bgz, %bb.on ], [ %i.bgv, %.loopexit1929.i121.loopexit ], [ %i.bhw, %.loopexit1929.i121.loopexit947 ] ; 7 uses
  %.131374.i = phi i32 [ %i.bfy, %bb.on ], [ %i.bgu, %.loopexit1929.i121.loopexit ], [ %i.bhv, %.loopexit1929.i121.loopexit947 ] ; 5 uses
  %.221332.i = phi i32 [ %.151325.i, %bb.on ], [ %i.bgw, %.loopexit1929.i121.loopexit ], [ %i.bhx, %.loopexit1929.i121.loopexit947 ] ; 7 uses
  %.51304.i = phi i32 [ %i.bia, %bb.on ], [ %.31302.i, %.loopexit1929.i121.loopexit ], [ %.41303.i, %.loopexit1929.i121.loopexit947 ]
  %i.bid = shl i32 %.2.i, 1
  %i.bie = or i32 %.51304.i, %i.bid
  switch i32 %i.bie, label %bb.zn [
    i32 0, label %bb.oo
    i32 1, label %.thread.i159
    i32 2, label %.loopexit1929._crit_edge.i
    i32 3, label %.loopexit1929._crit_edge2199.i
  ]

bb.oo:                                            ; preds = %.loopexit1929.i121
  %i.bif = getelementptr inbounds i8, ptr %.116032060.i, i64 -4 ; 3 uses
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !6
  %i.bih = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 4 ; 3 uses
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !6
  %i.bij = lshr i32 %i.big, 19
  %i.bik = and i32 %i.bij, 1
  %i.bil = lshr i32 %i.bii, 17
  %i.bim = and i32 %i.bil, 4
  %i.bin = or disjoint i32 %i.bim, %i.bik
  %i.bio = zext nneg i32 %i.bin to i64            ; 2 uses
  %i.bip = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.bio
  %i.biq = load i8, ptr %i.bip, align 1, !tbaa !56
  %i.bir = zext i8 %i.biq to i64
  %i.bis = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bir ; 3 uses
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !99 ; 6 uses
  %i.biu = load i32, ptr %i.bit, align 8, !tbaa !101 ; 6 uses
  %i.biv = sub i32 %.131374.i, %i.biu             ; 5 uses
  %i.biw = lshr i32 %.221472.i, 16
  %i.bix = icmp ult i32 %i.biw, %i.biu
  br i1 %i.bix, label %bb.op, label %bb.ox

bb.op:                                            ; preds = %bb.oo
  %i.biy = icmp ult i32 %i.biv, %i.biu            ; 2 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bit, i64 4
  %i.bja = load i32, ptr %i.biz, align 4, !tbaa !102 ; 2 uses
  %.sink2440.i188 = select i1 %i.biy, i64 8, i64 16
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bit, i64 %.sink2440.i188
  %storemerge1816.i = load ptr, ptr %i.bjb, align 8, !tbaa !99
  store ptr %storemerge1816.i, ptr %i.bis, align 8, !tbaa !99
  br label %bb.oq

bb.oq:                                            ; preds = %bb.ow, %bb.op
  %.231473.i = phi i32 [ %.221472.i, %bb.op ], [ %i.bjs, %bb.ow ] ; 4 uses
  %.151376.i = phi i32 [ %i.biu, %bb.op ], [ %i.bjr, %bb.ow ]
  %.231333.i = phi i32 [ %.221332.i, %bb.op ], [ %i.bjt, %bb.ow ] ; 2 uses
  %i.bjc = icmp eq i32 %.231333.i, 0
  br i1 %i.bjc, label %bb.or, label %bb.ow

bb.or:                                            ; preds = %bb.oq
  %i.bjd = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 1 ; 3 uses
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !56 ; 2 uses
  %i.bjg = zext i8 %i.bjf to i32                  ; 2 uses
  %i.bjh = load i8, ptr %i.bjd, align 1, !tbaa !56
  %i.bji = icmp eq i8 %i.bjh, -1
  br i1 %i.bji, label %bb.os, label %bb.ov

bb.os:                                            ; preds = %bb.or
  %i.bjj = icmp ugt i8 %i.bjf, -113
  br i1 %i.bjj, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.bjk = add i32 %.231473.i, 65280
  %i.bjl = load i32, ptr %i.z, align 4, !tbaa !103
  %i.bjm = add i32 %i.bjl, 1
  store i32 %i.bjm, ptr %i.z, align 4, !tbaa !103
  br label %bb.ow

bb.ou:                                            ; preds = %bb.os
  store ptr %i.bje, ptr %i.y, align 8, !tbaa !95
  %i.bjn = shl nuw nsw i32 %i.bjg, 9
  %i.bjo = add i32 %i.bjn, %.231473.i
  br label %bb.ow

bb.ov:                                            ; preds = %bb.or
  store ptr %i.bje, ptr %i.y, align 8, !tbaa !95
  %i.bjp = shl nuw nsw i32 %i.bjg, 8
  %i.bjq = add i32 %i.bjp, %.231473.i
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou, %bb.ot, %bb.oq
  %.251475.i = phi i32 [ %.231473.i, %bb.oq ], [ %i.bjk, %bb.ot ], [ %i.bjo, %bb.ou ], [ %i.bjq, %bb.ov ]
  %.251335.i = phi i32 [ %.231333.i, %bb.oq ], [ 8, %bb.ot ], [ 7, %bb.ou ], [ 8, %bb.ov ]
  %i.bjr = shl i32 %.151376.i, 1                  ; 3 uses
  %i.bjs = shl i32 %.251475.i, 1                  ; 2 uses
  %i.bjt = add i32 %.251335.i, -1                 ; 2 uses
  %i.bju = icmp ult i32 %i.bjr, 32768
  br i1 %i.bju, label %bb.oq, label %.loopexit1927.i180.loopexit, !llvm.loop !462

bb.ox:                                            ; preds = %bb.oo
  %i.bjv = shl nuw i32 %i.biu, 16
  %i.bjw = sub i32 %.221472.i, %i.bjv             ; 2 uses
  %i.bjx = and i32 %i.biv, 32768
  %i.bjy = icmp eq i32 %i.bjx, 0
  br i1 %i.bjy, label %bb.oy, label %bb.pg

bb.oy:                                            ; preds = %bb.ox
  %i.bjz = icmp ult i32 %i.biv, %i.biu            ; 2 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bit, i64 4
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !102 ; 2 uses
  %.sink2441.i186 = select i1 %i.bjz, i64 16, i64 8
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bit, i64 %.sink2441.i186
  %storemerge1813.i = load ptr, ptr %i.bkc, align 8, !tbaa !99
  store ptr %storemerge1813.i, ptr %i.bis, align 8, !tbaa !99
  br label %bb.oz

bb.oz:                                            ; preds = %bb.pf, %bb.oy
  %.261476.i = phi i32 [ %i.bjw, %bb.oy ], [ %i.bkt, %bb.pf ] ; 4 uses
  %.161377.i = phi i32 [ %i.biv, %bb.oy ], [ %i.bks, %bb.pf ]
  %.261336.i = phi i32 [ %.221332.i, %bb.oy ], [ %i.bku, %bb.pf ] ; 2 uses
  %i.bkd = icmp eq i32 %.261336.i, 0
  br i1 %i.bkd, label %bb.pa, label %bb.pf

bb.pa:                                            ; preds = %bb.oz
  %i.bke = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 1 ; 3 uses
  %i.bkg = load i8, ptr %i.bkf, align 1, !tbaa !56 ; 2 uses
  %i.bkh = zext i8 %i.bkg to i32                  ; 2 uses
  %i.bki = load i8, ptr %i.bke, align 1, !tbaa !56
  %i.bkj = icmp eq i8 %i.bki, -1
  br i1 %i.bkj, label %bb.pb, label %bb.pe

bb.pb:                                            ; preds = %bb.pa
  %i.bkk = icmp ugt i8 %i.bkg, -113
  br i1 %i.bkk, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.bkl = add i32 %.261476.i, 65280
  %i.bkm = load i32, ptr %i.z, align 4, !tbaa !103
  %i.bkn = add i32 %i.bkm, 1
  store i32 %i.bkn, ptr %i.z, align 4, !tbaa !103
  br label %bb.pf

bb.pd:                                            ; preds = %bb.pb
  store ptr %i.bkf, ptr %i.y, align 8, !tbaa !95
  %i.bko = shl nuw nsw i32 %i.bkh, 9
  %i.bkp = add i32 %i.bko, %.261476.i
  br label %bb.pf

bb.pe:                                            ; preds = %bb.pa
  store ptr %i.bkf, ptr %i.y, align 8, !tbaa !95
  %i.bkq = shl nuw nsw i32 %i.bkh, 8
  %i.bkr = add i32 %i.bkq, %.261476.i
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %bb.pc, %bb.oz
  %.281478.i = phi i32 [ %.261476.i, %bb.oz ], [ %i.bkl, %bb.pc ], [ %i.bkp, %bb.pd ], [ %i.bkr, %bb.pe ]
  %.281338.i = phi i32 [ %.261336.i, %bb.oz ], [ 8, %bb.pc ], [ 7, %bb.pd ], [ 8, %bb.pe ]
  %i.bks = shl i32 %.161377.i, 1                  ; 3 uses
  %i.bkt = shl i32 %.281478.i, 1                  ; 2 uses
  %i.bku = add i32 %.281338.i, -1                 ; 2 uses
  %i.bkv = icmp ult i32 %i.bks, 32768
  br i1 %i.bkv, label %bb.oz, label %.loopexit1927.i180.loopexit946, !llvm.loop !463

bb.pg:                                            ; preds = %bb.ox
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bit, i64 4
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !102
  br label %.loopexit1927.i180

.loopexit1927.i180.loopexit:                      ; preds = %bb.ow
  %.not1815.i187 = icmp eq i32 %i.bja, 0
  %i.bky = zext i1 %.not1815.i187 to i32
  %.61305.i = select i1 %i.biy, i32 %i.bja, i32 %i.bky
  br label %.loopexit1927.i180

.loopexit1927.i180.loopexit946:                   ; preds = %bb.pf
  %.not1814.i = icmp eq i32 %i.bkb, 0
  %i.bkz = zext i1 %.not1814.i to i32
  %.71306.i = select i1 %i.bjz, i32 %i.bkz, i32 %i.bkb
  br label %.loopexit1927.i180

.loopexit1927.i180:                               ; preds = %.loopexit1927.i180.loopexit946, %.loopexit1927.i180.loopexit, %bb.pg
  %.291479.i = phi i32 [ %i.bjw, %bb.pg ], [ %i.bjs, %.loopexit1927.i180.loopexit ], [ %i.bkt, %.loopexit1927.i180.loopexit946 ] ; 3 uses
  %.171378.i = phi i32 [ %i.biv, %bb.pg ], [ %i.bjr, %.loopexit1927.i180.loopexit ], [ %i.bks, %.loopexit1927.i180.loopexit946 ]
  %.291339.i = phi i32 [ %.221332.i, %bb.pg ], [ %i.bjt, %.loopexit1927.i180.loopexit ], [ %i.bku, %.loopexit1927.i180.loopexit946 ] ; 3 uses
  %.81307.i = phi i32 [ %i.bkx, %bb.pg ], [ %.61305.i, %.loopexit1927.i180.loopexit ], [ %.71306.i, %.loopexit1927.i180.loopexit946 ] ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.bio
  %i.blb = load i8, ptr %i.bla, align 1, !tbaa !56
  %i.blc = zext i8 %i.blb to i32                  ; 2 uses
  %i.bld = xor i32 %.81307.i, %i.blc              ; 2 uses
  %.not1817.i = icmp eq i32 %.81307.i, %i.blc
  %i.ble = select i1 %.not1817.i, i32 %i.v, i32 %i.aa
  store i32 %i.ble, ptr %.116062059.i, align 4, !tbaa !6
  %i.blf = load i32, ptr %i.bif, align 4, !tbaa !6
  %i.blg = or i32 %i.blf, 32
  store i32 %i.blg, ptr %i.bif, align 4, !tbaa !6
  %i.blh = shl i32 %i.bld, 19
  %i.bli = or disjoint i32 %i.blh, 16             ; 2 uses
  %i.blj = load i32, ptr %i.bih, align 4, !tbaa !6
  %i.blk = or i32 %i.blj, 8
  store i32 %i.blk, ptr %i.bih, align 4, !tbaa !6
  %i.bll = getelementptr inbounds i8, ptr %.116032060.i, i64 -264 ; 2 uses
  %i.blm = shl i32 %i.bld, 31
  %5 = load i32, ptr %i.bll, align 4, !tbaa !6
  %6 = or i32 %i.blm, %5
  %i.bln = or i32 %6, 65536
  store i32 %i.bln, ptr %i.bll, align 4, !tbaa !6
  %i.blo = getelementptr inbounds i8, ptr %.116032060.i, i64 -268 ; 2 uses
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !6
  %i.blq = or i32 %i.blp, 131072
  store i32 %i.blq, ptr %i.blo, align 4, !tbaa !6
  %i.blr = getelementptr inbounds i8, ptr %.116032060.i, i64 -260 ; 2 uses
  %i.bls = load i32, ptr %i.blr, align 4, !tbaa !6
  %i.blt = or i32 %i.bls, 32768
  store i32 %i.blt, ptr %i.blr, align 4, !tbaa !6
  %.val1862.i = load ptr, ptr %i.w, align 8, !tbaa !88 ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %.val1862.i, i64 2
  %i.blv = load i8, ptr %i.blu, align 1, !tbaa !56
  %i.blw = zext i8 %i.blv to i64
  %i.blx = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.blw ; 3 uses
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !99 ; 6 uses
  %i.blz = load i32, ptr %i.bly, align 8, !tbaa !101 ; 6 uses
  %i.bma = sub i32 %.171378.i, %i.blz             ; 5 uses
  %i.bmb = lshr i32 %.291479.i, 16
  %i.bmc = icmp ult i32 %i.bmb, %i.blz
  br i1 %i.bmc, label %bb.ph, label %bb.pp

bb.ph:                                            ; preds = %.loopexit1927.i180
  %i.bmd = icmp ult i32 %i.bma, %i.blz            ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bly, i64 4
  %i.bmf = load i32, ptr %i.bme, align 4, !tbaa !102 ; 2 uses
  %.sink2442.i185 = select i1 %i.bmd, i64 8, i64 16
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bly, i64 %.sink2442.i185
  %storemerge1822.i = load ptr, ptr %i.bmg, align 8, !tbaa !99
  store ptr %storemerge1822.i, ptr %i.blx, align 8, !tbaa !99
  br label %bb.pi

bb.pi:                                            ; preds = %bb.po, %bb.ph
  %.311481.i = phi i32 [ %.291479.i, %bb.ph ], [ %i.bmx, %bb.po ] ; 4 uses
  %.201381.i = phi i32 [ %i.blz, %bb.ph ], [ %i.bmw, %bb.po ]
  %.311341.i = phi i32 [ %.291339.i, %bb.ph ], [ %i.bmy, %bb.po ] ; 2 uses
  %i.bmh = icmp eq i32 %.311341.i, 0
  br i1 %i.bmh, label %bb.pj, label %bb.po

bb.pj:                                            ; preds = %bb.pi
  %i.bmi = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 1 ; 3 uses
  %i.bmk = load i8, ptr %i.bmj, align 1, !tbaa !56 ; 2 uses
  %i.bml = zext i8 %i.bmk to i32                  ; 2 uses
  %i.bmm = load i8, ptr %i.bmi, align 1, !tbaa !56
  %i.bmn = icmp eq i8 %i.bmm, -1
  br i1 %i.bmn, label %bb.pk, label %bb.pn

bb.pk:                                            ; preds = %bb.pj
  %i.bmo = icmp ugt i8 %i.bmk, -113
  br i1 %i.bmo, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bmp = add i32 %.311481.i, 65280
  %i.bmq = load i32, ptr %i.z, align 4, !tbaa !103
  %i.bmr = add i32 %i.bmq, 1
  store i32 %i.bmr, ptr %i.z, align 4, !tbaa !103
  br label %bb.po

bb.pm:                                            ; preds = %bb.pk
  store ptr %i.bmj, ptr %i.y, align 8, !tbaa !95
  %i.bms = shl nuw nsw i32 %i.bml, 9
  %i.bmt = add i32 %i.bms, %.311481.i
  br label %bb.po

bb.pn:                                            ; preds = %bb.pj
  store ptr %i.bmj, ptr %i.y, align 8, !tbaa !95
  %i.bmu = shl nuw nsw i32 %i.bml, 8
  %i.bmv = add i32 %i.bmu, %.311481.i
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pm, %bb.pl, %bb.pi
  %.331483.i = phi i32 [ %.311481.i, %bb.pi ], [ %i.bmp, %bb.pl ], [ %i.bmt, %bb.pm ], [ %i.bmv, %bb.pn ]
  %.331343.i = phi i32 [ %.311341.i, %bb.pi ], [ 8, %bb.pl ], [ 7, %bb.pm ], [ 8, %bb.pn ]
  %i.bmw = shl i32 %.201381.i, 1                  ; 3 uses
  %i.bmx = shl i32 %.331483.i, 1                  ; 2 uses
  %i.bmy = add i32 %.331343.i, -1                 ; 2 uses
  %i.bmz = icmp ult i32 %i.bmw, 32768
  br i1 %i.bmz, label %bb.pi, label %.loopexit1925.i181.loopexit, !llvm.loop !464

bb.pp:                                            ; preds = %.loopexit1927.i180
  %i.bna = shl nuw i32 %i.blz, 16
  %i.bnb = sub i32 %.291479.i, %i.bna             ; 2 uses
  %i.bnc = and i32 %i.bma, 32768
  %i.bnd = icmp eq i32 %i.bnc, 0
  br i1 %i.bnd, label %bb.pq, label %bb.py

bb.pq:                                            ; preds = %bb.pp
  %i.bne = icmp ult i32 %i.bma, %i.blz            ; 2 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bly, i64 4
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !102 ; 2 uses
  %.sink2443.i183 = select i1 %i.bne, i64 16, i64 8
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bly, i64 %.sink2443.i183
  %storemerge1819.i = load ptr, ptr %i.bnh, align 8, !tbaa !99
  store ptr %storemerge1819.i, ptr %i.blx, align 8, !tbaa !99
  br label %bb.pr

bb.pr:                                            ; preds = %bb.px, %bb.pq
  %.341484.i = phi i32 [ %i.bnb, %bb.pq ], [ %i.bny, %bb.px ] ; 4 uses
  %.211382.i = phi i32 [ %i.bma, %bb.pq ], [ %i.bnx, %bb.px ]
  %.341344.i = phi i32 [ %.291339.i, %bb.pq ], [ %i.bnz, %bb.px ] ; 2 uses
  %i.bni = icmp eq i32 %.341344.i, 0
  br i1 %i.bni, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  %i.bnj = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 1 ; 3 uses
  %i.bnl = load i8, ptr %i.bnk, align 1, !tbaa !56 ; 2 uses
  %i.bnm = zext i8 %i.bnl to i32                  ; 2 uses
  %i.bnn = load i8, ptr %i.bnj, align 1, !tbaa !56
  %i.bno = icmp eq i8 %i.bnn, -1
  br i1 %i.bno, label %bb.pt, label %bb.pw

bb.pt:                                            ; preds = %bb.ps
  %i.bnp = icmp ugt i8 %i.bnl, -113
  br i1 %i.bnp, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  %i.bnq = add i32 %.341484.i, 65280
  %i.bnr = load i32, ptr %i.z, align 4, !tbaa !103
  %i.bns = add i32 %i.bnr, 1
  store i32 %i.bns, ptr %i.z, align 4, !tbaa !103
  br label %bb.px

bb.pv:                                            ; preds = %bb.pt
  store ptr %i.bnk, ptr %i.y, align 8, !tbaa !95
  %i.bnt = shl nuw nsw i32 %i.bnm, 9
  %i.bnu = add i32 %i.bnt, %.341484.i
  br label %bb.px

bb.pw:                                            ; preds = %bb.ps
  store ptr %i.bnk, ptr %i.y, align 8, !tbaa !95
  %i.bnv = shl nuw nsw i32 %i.bnm, 8
  %i.bnw = add i32 %i.bnv, %.341484.i
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv, %bb.pu, %bb.pr
  %.361486.i = phi i32 [ %.341484.i, %bb.pr ], [ %i.bnq, %bb.pu ], [ %i.bnu, %bb.pv ], [ %i.bnw, %bb.pw ]
  %.361346.i = phi i32 [ %.341344.i, %bb.pr ], [ 8, %bb.pu ], [ 7, %bb.pv ], [ 8, %bb.pw ]
  %i.bnx = shl i32 %.211382.i, 1                  ; 3 uses
  %i.bny = shl i32 %.361486.i, 1                  ; 2 uses
  %i.bnz = add i32 %.361346.i, -1                 ; 2 uses
  %i.boa = icmp ult i32 %i.bnx, 32768
  br i1 %i.boa, label %bb.pr, label %.loopexit1925.i181.loopexit945, !llvm.loop !465

bb.py:                                            ; preds = %bb.pp
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bly, i64 4
  %i.boc = load i32, ptr %i.bob, align 4, !tbaa !102
  br label %.loopexit1925.i181

.loopexit1925.i181.loopexit:                      ; preds = %bb.po
  %.not1821.i184 = icmp eq i32 %i.bmf, 0
  %i.bod = zext i1 %.not1821.i184 to i32
  %.91308.i = select i1 %i.bmd, i32 %i.bmf, i32 %i.bod
  br label %.loopexit1925.i181

.loopexit1925.i181.loopexit945:                   ; preds = %bb.px
  %.not1820.i = icmp eq i32 %i.bng, 0
  %i.boe = zext i1 %.not1820.i to i32
  %.101309.i = select i1 %i.bne, i32 %i.boe, i32 %i.bng
  br label %.loopexit1925.i181

.loopexit1925.i181:                               ; preds = %.loopexit1925.i181.loopexit945, %.loopexit1925.i181.loopexit, %bb.py
  %.371487.i = phi i32 [ %i.bnb, %bb.py ], [ %i.bmx, %.loopexit1925.i181.loopexit ], [ %i.bny, %.loopexit1925.i181.loopexit945 ] ; 2 uses
  %.221383.i = phi i32 [ %i.bma, %bb.py ], [ %i.bmw, %.loopexit1925.i181.loopexit ], [ %i.bnx, %.loopexit1925.i181.loopexit945 ] ; 2 uses
  %.371347.i = phi i32 [ %.291339.i, %bb.py ], [ %i.bmy, %.loopexit1925.i181.loopexit ], [ %i.bnz, %.loopexit1925.i181.loopexit945 ] ; 2 uses
  %.11.i182 = phi i32 [ %i.boc, %bb.py ], [ %.91308.i, %.loopexit1925.i181.loopexit ], [ %.101309.i, %.loopexit1925.i181.loopexit945 ]
  %.not1823.i = icmp eq i32 %.11.i182, 0
  br i1 %.not1823.i, label %bb.qr, label %.thread.i159

.thread.i159:                                     ; preds = %.loopexit1925.i181, %.loopexit1929.i121
  %.012911886.i = phi i32 [ 0, %.loopexit1929.i121 ], [ %i.bli, %.loopexit1925.i181 ] ; 4 uses
  %.381488.i = phi i32 [ %.221472.i, %.loopexit1929.i121 ], [ %.371487.i, %.loopexit1925.i181 ] ; 3 uses
  %.231384.i = phi i32 [ %.131374.i, %.loopexit1929.i121 ], [ %.221383.i, %.loopexit1925.i181 ]
  %.381348.i = phi i32 [ %.221332.i, %.loopexit1929.i121 ], [ %.371347.i, %.loopexit1925.i181 ] ; 3 uses
  %i.bof = getelementptr inbounds i8, ptr %.116032060.i, i64 -4 ; 3 uses
  %i.bog = load i32, ptr %i.bof, align 4, !tbaa !6
  %i.boh = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 4 ; 3 uses
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !6
  %.pn.in.i.i160 = lshr i32 %.012911886.i, 15
  %i.boj = lshr i32 %.012911886.i, 3
  %i.bok = and i32 %i.boj, 170
  %i.bol = lshr i32 %i.bog, 22
  %i.bom = and i32 %i.bol, 1
  %i.bon = lshr i32 %i.boi, 20
  %i.boo = and i32 %i.bon, 4
  %.pn.i.i161 = and i32 %.pn.in.i.i160, 16
  %i.bop = lshr i32 %.012911886.i, 19
  %i.boq = and i32 %i.bop, 64
  %i.bor = or disjoint i32 %i.boq, %i.bok
  %i.bos = or disjoint i32 %i.bor, %.pn.i.i161
  %.0.i.i162 = or disjoint i32 %i.bos, %i.bom
  %i.bot = or disjoint i32 %.0.i.i162, %i.boo
  %i.bou = zext nneg i32 %i.bot to i64            ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.bou
  %i.bow = load i8, ptr %i.bov, align 1, !tbaa !56
  %i.box = zext i8 %i.bow to i64
  %i.boy = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.box ; 3 uses
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !99 ; 6 uses
  %i.bpa = load i32, ptr %i.boz, align 8, !tbaa !101 ; 6 uses
  %i.bpb = sub i32 %.231384.i, %i.bpa             ; 5 uses
end_hunk_12
begin_hunk_13_@opj_t1_dec_clnpass:bb.a
  %.881538.i = phi i32 [ %i.cfg, %bb.ug ], [ %i.cfc, %.loopexit1949.i.loopexit ], [ %i.cgd, %.loopexit1949.i.loopexit957 ] ; 4 uses
  %.551416.i = phi i32 [ %i.cef, %bb.ug ], [ %i.cfb, %.loopexit1949.i.loopexit ], [ %i.cgc, %.loopexit1949.i.loopexit957 ] ; 2 uses
  %.88.i96 = phi i32 [ %.113112064.i, %bb.ug ], [ %i.cfd, %.loopexit1949.i.loopexit ], [ %i.cge, %.loopexit1949.i.loopexit957 ] ; 4 uses
  %.29.i97 = phi i32 [ %i.cgh, %bb.ug ], [ %.27.i116, %.loopexit1949.i.loopexit ], [ %.28.i110, %.loopexit1949.i.loopexit957 ]
  %.not1761.i = icmp eq i32 %.29.i97, 0
  br i1 %.not1761.i, label %bb.va, label %bb.uh

bb.uh:                                            ; preds = %.loopexit1949.i
  %i.cgk = getelementptr inbounds i8, ptr %.116032060.i, i64 -4 ; 3 uses
  %i.cgl = load i32, ptr %i.cgk, align 4, !tbaa !6
  %i.cgm = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 4 ; 3 uses
  %i.cgn = load i32, ptr %i.cgm, align 4, !tbaa !6
  %.pn.in.i1869.i = lshr i32 %i.bbg, 14
  %i.cgo = and i32 %i.bbg, 170
  %i.cgp = lshr i32 %i.cgl, 19
  %i.cgq = and i32 %i.cgp, 1
  %i.cgr = lshr i32 %i.cgn, 17
  %i.cgs = and i32 %i.cgr, 4
  %.pn.i1870.i = and i32 %.pn.in.i1869.i, 16
  %i.cgt = lshr i32 %i.bbg, 16
  %i.cgu = and i32 %i.cgt, 64
  %i.cgv = or disjoint i32 %i.cgu, %i.cgo
  %i.cgw = or disjoint i32 %i.cgv, %.pn.i1870.i
  %.0.i1871.i = or disjoint i32 %i.cgw, %i.cgq
  %i.cgx = or disjoint i32 %.0.i1871.i, %i.cgs
  %i.cgy = zext nneg i32 %i.cgx to i64            ; 2 uses
  %i.cgz = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.cgy
  %i.cha = load i8, ptr %i.cgz, align 1, !tbaa !56
  %i.chb = zext i8 %i.cha to i64
  %i.chc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.chb ; 4 uses
  %i.chd = load ptr, ptr %i.chc, align 8, !tbaa !99 ; 6 uses
  %i.che = load i32, ptr %i.chd, align 8, !tbaa !101 ; 6 uses
  %i.chf = sub i32 %.551416.i, %i.che             ; 5 uses
  %i.chg = lshr i32 %.881538.i, 16
  %i.chh = icmp ult i32 %i.chg, %i.che
  br i1 %i.chh, label %bb.ui, label %bb.uq

bb.ui:                                            ; preds = %bb.uh
  %i.chi = icmp ult i32 %i.chf, %i.che            ; 2 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chd, i64 4
  %i.chk = load i32, ptr %i.chj, align 4, !tbaa !102 ; 2 uses
  %.sink2456.i105 = select i1 %i.chi, i64 8, i64 16
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chd, i64 %.sink2456.i105
  %storemerge1765.i = load ptr, ptr %i.chl, align 8, !tbaa !99
  store ptr %storemerge1765.i, ptr %i.chc, align 8, !tbaa !99
  br label %bb.uj

bb.uj:                                            ; preds = %bb.up, %bb.ui
  %.891539.i = phi i32 [ %.881538.i, %bb.ui ], [ %i.cic, %bb.up ] ; 4 uses
  %.571418.i = phi i32 [ %i.che, %bb.ui ], [ %i.cib, %bb.up ]
  %.89.i107 = phi i32 [ %.88.i96, %bb.ui ], [ %i.cid, %bb.up ] ; 2 uses
  %i.chm = icmp eq i32 %.89.i107, 0
  br i1 %i.chm, label %bb.uk, label %bb.up

bb.uk:                                            ; preds = %bb.uj
  %i.chn = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chn, i64 1 ; 3 uses
  %i.chp = load i8, ptr %i.cho, align 1, !tbaa !56 ; 2 uses
  %i.chq = zext i8 %i.chp to i32                  ; 2 uses
  %i.chr = load i8, ptr %i.chn, align 1, !tbaa !56
  %i.chs = icmp eq i8 %i.chr, -1
  br i1 %i.chs, label %bb.ul, label %bb.uo

bb.ul:                                            ; preds = %bb.uk
  %i.cht = icmp ugt i8 %i.chp, -113
  br i1 %i.cht, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  %i.chu = add i32 %.891539.i, 65280
  %i.chv = load i32, ptr %i.z, align 4, !tbaa !103
  %i.chw = add i32 %i.chv, 1
  store i32 %i.chw, ptr %i.z, align 4, !tbaa !103
  br label %bb.up

bb.un:                                            ; preds = %bb.ul
  store ptr %i.cho, ptr %i.y, align 8, !tbaa !95
  %i.chx = shl nuw nsw i32 %i.chq, 9
  %i.chy = add i32 %i.chx, %.891539.i
  br label %bb.up

bb.uo:                                            ; preds = %bb.uk
  store ptr %i.cho, ptr %i.y, align 8, !tbaa !95
  %i.chz = shl nuw nsw i32 %i.chq, 8
  %i.cia = add i32 %i.chz, %.891539.i
  br label %bb.up

bb.up:                                            ; preds = %bb.uo, %bb.un, %bb.um, %bb.uj
  %.911541.i = phi i32 [ %.891539.i, %bb.uj ], [ %i.chu, %bb.um ], [ %i.chy, %bb.un ], [ %i.cia, %bb.uo ]
  %.91.i108 = phi i32 [ %.89.i107, %bb.uj ], [ 8, %bb.um ], [ 7, %bb.un ], [ 8, %bb.uo ]
  %i.cib = shl i32 %.571418.i, 1                  ; 3 uses
  %i.cic = shl i32 %.911541.i, 1                  ; 2 uses
  %i.cid = add i32 %.91.i108, -1                  ; 2 uses
  %i.cie = icmp ult i32 %i.cib, 32768
  br i1 %i.cie, label %bb.uj, label %.loopexit1947.i.loopexit, !llvm.loop !478

bb.uq:                                            ; preds = %bb.uh
  %i.cif = shl nuw i32 %i.che, 16
  %i.cig = sub i32 %.881538.i, %i.cif             ; 2 uses
  %i.cih = and i32 %i.chf, 32768
  %i.cii = icmp eq i32 %i.cih, 0
  br i1 %i.cii, label %bb.ur, label %bb.uz

bb.ur:                                            ; preds = %bb.uq
  %i.cij = icmp ult i32 %i.chf, %i.che            ; 2 uses
  %i.cik = getelementptr inbounds nuw i8, ptr %i.chd, i64 4
  %i.cil = load i32, ptr %i.cik, align 4, !tbaa !102 ; 2 uses
  %.sink2457.i100 = select i1 %i.cij, i64 16, i64 8
  %i.cim = getelementptr inbounds nuw i8, ptr %i.chd, i64 %.sink2457.i100
  %storemerge1762.i = load ptr, ptr %i.cim, align 8, !tbaa !99
  store ptr %storemerge1762.i, ptr %i.chc, align 8, !tbaa !99
  br label %bb.us

bb.us:                                            ; preds = %bb.uy, %bb.ur
  %.921542.i = phi i32 [ %i.cig, %bb.ur ], [ %i.cjd, %bb.uy ] ; 4 uses
  %.581419.i = phi i32 [ %i.chf, %bb.ur ], [ %i.cjc, %bb.uy ]
  %.92.i102 = phi i32 [ %.88.i96, %bb.ur ], [ %i.cje, %bb.uy ] ; 2 uses
  %i.cin = icmp eq i32 %.92.i102, 0
  br i1 %i.cin, label %bb.ut, label %bb.uy

bb.ut:                                            ; preds = %bb.us
  %i.cio = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 1 ; 3 uses
  %i.ciq = load i8, ptr %i.cip, align 1, !tbaa !56 ; 2 uses
  %i.cir = zext i8 %i.ciq to i32                  ; 2 uses
  %i.cis = load i8, ptr %i.cio, align 1, !tbaa !56
  %i.cit = icmp eq i8 %i.cis, -1
  br i1 %i.cit, label %bb.uu, label %bb.ux

bb.uu:                                            ; preds = %bb.ut
  %i.ciu = icmp ugt i8 %i.ciq, -113
  br i1 %i.ciu, label %bb.uv, label %bb.uw

bb.uv:                                            ; preds = %bb.uu
  %i.civ = add i32 %.921542.i, 65280
  %i.ciw = load i32, ptr %i.z, align 4, !tbaa !103
  %i.cix = add i32 %i.ciw, 1
  store i32 %i.cix, ptr %i.z, align 4, !tbaa !103
  br label %bb.uy

bb.uw:                                            ; preds = %bb.uu
  store ptr %i.cip, ptr %i.y, align 8, !tbaa !95
  %i.ciy = shl nuw nsw i32 %i.cir, 9
  %i.ciz = add i32 %i.ciy, %.921542.i
  br label %bb.uy

bb.ux:                                            ; preds = %bb.ut
  store ptr %i.cip, ptr %i.y, align 8, !tbaa !95
  %i.cja = shl nuw nsw i32 %i.cir, 8
  %i.cjb = add i32 %i.cja, %.921542.i
  br label %bb.uy

bb.uy:                                            ; preds = %bb.ux, %bb.uw, %bb.uv, %bb.us
  %.941544.i = phi i32 [ %.921542.i, %bb.us ], [ %i.civ, %bb.uv ], [ %i.ciz, %bb.uw ], [ %i.cjb, %bb.ux ]
  %.94.i103 = phi i32 [ %.92.i102, %bb.us ], [ 8, %bb.uv ], [ 7, %bb.uw ], [ 8, %bb.ux ]
  %i.cjc = shl i32 %.581419.i, 1                  ; 3 uses
  %i.cjd = shl i32 %.941544.i, 1                  ; 2 uses
  %i.cje = add i32 %.94.i103, -1                  ; 2 uses
  %i.cjf = icmp ult i32 %i.cjc, 32768
  br i1 %i.cjf, label %bb.us, label %.loopexit1947.i.loopexit956, !llvm.loop !479

bb.uz:                                            ; preds = %bb.uq
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.chd, i64 4
  %i.cjh = load i32, ptr %i.cjg, align 4, !tbaa !102
  br label %.loopexit1947.i

.loopexit1947.i.loopexit:                         ; preds = %bb.up
  %.not1764.i104 = icmp eq i32 %i.chk, 0
  %i.cji = zext i1 %.not1764.i104 to i32
  %.30.i106 = select i1 %i.chi, i32 %i.chk, i32 %i.cji
  br label %.loopexit1947.i

.loopexit1947.i.loopexit956:                      ; preds = %bb.uy
  %.not1763.i = icmp eq i32 %i.cil, 0
  %i.cjj = zext i1 %.not1763.i to i32
  %.31.i101 = select i1 %i.cij, i32 %i.cjj, i32 %i.cil
  br label %.loopexit1947.i

.loopexit1947.i:                                  ; preds = %.loopexit1947.i.loopexit956, %.loopexit1947.i.loopexit, %bb.uz
  %.951545.i = phi i32 [ %i.cig, %bb.uz ], [ %i.cic, %.loopexit1947.i.loopexit ], [ %i.cjd, %.loopexit1947.i.loopexit956 ]
  %.591420.i = phi i32 [ %i.chf, %bb.uz ], [ %i.cib, %.loopexit1947.i.loopexit ], [ %i.cjc, %.loopexit1947.i.loopexit956 ]
  %.95.i98 = phi i32 [ %.88.i96, %bb.uz ], [ %i.cid, %.loopexit1947.i.loopexit ], [ %i.cje, %.loopexit1947.i.loopexit956 ]
  %.32.i99 = phi i32 [ %i.cjh, %bb.uz ], [ %.30.i106, %.loopexit1947.i.loopexit ], [ %.31.i101, %.loopexit1947.i.loopexit956 ] ; 2 uses
  %i.cjk = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.cgy
  %i.cjl = load i8, ptr %i.cjk, align 1, !tbaa !56
  %i.cjm = zext i8 %i.cjl to i32                  ; 2 uses
  %i.cjn = xor i32 %.32.i99, %i.cjm               ; 2 uses
  %.not1766.i = icmp eq i32 %.32.i99, %i.cjm
  %i.cjo = select i1 %.not1766.i, i32 %i.v, i32 %i.aa
  store i32 %i.cjo, ptr %.116062059.i, align 4, !tbaa !6
  %i.cjp = load i32, ptr %i.cgk, align 4, !tbaa !6
  %i.cjq = or i32 %i.cjp, 32
  store i32 %i.cjq, ptr %i.cgk, align 4, !tbaa !6
  %i.cjr = shl i32 %i.cjn, 19
  %i.cjs = or i32 %i.bbg, %i.cjr
  %i.cjt = or disjoint i32 %i.cjs, 16
  %i.cju = load i32, ptr %i.cgm, align 4, !tbaa !6
  %i.cjv = or i32 %i.cju, 8
  store i32 %i.cjv, ptr %i.cgm, align 4, !tbaa !6
  %i.cjw = getelementptr inbounds i8, ptr %.116032060.i, i64 -264 ; 2 uses
  %i.cjx = shl i32 %i.cjn, 31
  %7 = load i32, ptr %i.cjw, align 4, !tbaa !6
  %8 = or i32 %i.cjx, %7
  %i.cjy = or i32 %8, 65536
  store i32 %i.cjy, ptr %i.cjw, align 4, !tbaa !6
  %i.cjz = getelementptr inbounds i8, ptr %.116032060.i, i64 -268 ; 2 uses
  %i.cka = load i32, ptr %i.cjz, align 4, !tbaa !6
  %i.ckb = or i32 %i.cka, 131072
  store i32 %i.ckb, ptr %i.cjz, align 4, !tbaa !6
  %i.ckc = getelementptr inbounds i8, ptr %.116032060.i, i64 -260 ; 2 uses
  %i.ckd = load i32, ptr %i.ckc, align 4, !tbaa !6
  %i.cke = or i32 %i.ckd, 32768
  store i32 %i.cke, ptr %i.ckc, align 4, !tbaa !6
  br label %bb.va

bb.va:                                            ; preds = %.loopexit1947.i, %.loopexit1949.i, %bb.tn
  %.41597.i = phi ptr [ %.115942061.i, %bb.tn ], [ %i.chc, %.loopexit1947.i ], [ %i.cec, %.loopexit1949.i ]
  %.961546.i = phi i32 [ %.114512062.i, %bb.tn ], [ %.951545.i, %.loopexit1947.i ], [ %.881538.i, %.loopexit1949.i ] ; 4 uses
  %.601421.i = phi i32 [ %.113622063.i, %bb.tn ], [ %.591420.i, %.loopexit1947.i ], [ %.551416.i, %.loopexit1949.i ] ; 2 uses
  %.96.i16 = phi i32 [ %.113112064.i, %bb.tn ], [ %.95.i98, %.loopexit1947.i ], [ %.88.i96, %.loopexit1949.i ] ; 4 uses
  %.71298.i = phi i32 [ %i.bbg, %bb.tn ], [ %i.cjt, %.loopexit1947.i ], [ %i.bbg, %.loopexit1949.i ] ; 7 uses
  %i.ckf = and i32 %.71298.i, 16777344
  %.not1767.i17 = icmp eq i32 %i.ckf, 0
  br i1 %.not1767.i17, label %bb.vb, label %bb.wn

bb.vb:                                            ; preds = %bb.va
  %i.ckg = lshr i32 %.71298.i, 3                  ; 2 uses
  %.val1858.i = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.ckh = and i32 %i.ckg, 495
  %i.cki = zext nneg i32 %i.ckh to i64
  %i.ckj = getelementptr inbounds nuw i8, ptr %.val1858.i, i64 %i.cki
  %i.ckk = load i8, ptr %i.ckj, align 1, !tbaa !56
  %i.ckl = zext i8 %i.ckk to i64
  %i.ckm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ckl ; 4 uses
  %i.ckn = load ptr, ptr %i.ckm, align 8, !tbaa !99 ; 6 uses
  %i.cko = load i32, ptr %i.ckn, align 8, !tbaa !101 ; 6 uses
  %i.ckp = sub i32 %.601421.i, %i.cko             ; 5 uses
  %i.ckq = lshr i32 %.961546.i, 16
  %i.ckr = icmp ult i32 %i.ckq, %i.cko
  br i1 %i.ckr, label %bb.vc, label %bb.vk

bb.vc:                                            ; preds = %bb.vb
  %i.cks = icmp ult i32 %i.ckp, %i.cko            ; 2 uses
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckn, i64 4
  %i.cku = load i32, ptr %i.ckt, align 4, !tbaa !102 ; 2 uses
  %.sink2458.i = select i1 %i.cks, i64 8, i64 16
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.ckn, i64 %.sink2458.i
  %storemerge1771.i = load ptr, ptr %i.ckv, align 8, !tbaa !99
  store ptr %storemerge1771.i, ptr %i.ckm, align 8, !tbaa !99
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vj, %bb.vc
  %.971547.i = phi i32 [ %.961546.i, %bb.vc ], [ %i.clm, %bb.vj ] ; 4 uses
  %.621423.i = phi i32 [ %i.cko, %bb.vc ], [ %i.cll, %bb.vj ]
  %.97.i94 = phi i32 [ %.96.i16, %bb.vc ], [ %i.cln, %bb.vj ] ; 2 uses
  %i.ckw = icmp eq i32 %.97.i94, 0
  br i1 %i.ckw, label %bb.ve, label %bb.vj

bb.ve:                                            ; preds = %bb.vd
  %i.ckx = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.cky = getelementptr inbounds nuw i8, ptr %i.ckx, i64 1 ; 3 uses
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !56 ; 2 uses
  %i.cla = zext i8 %i.ckz to i32                  ; 2 uses
  %i.clb = load i8, ptr %i.ckx, align 1, !tbaa !56
  %i.clc = icmp eq i8 %i.clb, -1
  br i1 %i.clc, label %bb.vf, label %bb.vi

bb.vf:                                            ; preds = %bb.ve
  %i.cld = icmp ugt i8 %i.ckz, -113
  br i1 %i.cld, label %bb.vg, label %bb.vh

bb.vg:                                            ; preds = %bb.vf
  %i.cle = add i32 %.971547.i, 65280
  %i.clf = load i32, ptr %i.z, align 4, !tbaa !103
  %i.clg = add i32 %i.clf, 1
  store i32 %i.clg, ptr %i.z, align 4, !tbaa !103
  br label %bb.vj

bb.vh:                                            ; preds = %bb.vf
  store ptr %i.cky, ptr %i.y, align 8, !tbaa !95
  %i.clh = shl nuw nsw i32 %i.cla, 9
  %i.cli = add i32 %i.clh, %.971547.i
  br label %bb.vj

bb.vi:                                            ; preds = %bb.ve
  store ptr %i.cky, ptr %i.y, align 8, !tbaa !95
  %i.clj = shl nuw nsw i32 %i.cla, 8
  %i.clk = add i32 %i.clj, %.971547.i
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.vh, %bb.vg, %bb.vd
  %.991549.i = phi i32 [ %.971547.i, %bb.vd ], [ %i.cle, %bb.vg ], [ %i.cli, %bb.vh ], [ %i.clk, %bb.vi ]
  %.99.i95 = phi i32 [ %.97.i94, %bb.vd ], [ 8, %bb.vg ], [ 7, %bb.vh ], [ 8, %bb.vi ]
  %i.cll = shl i32 %.621423.i, 1                  ; 3 uses
  %i.clm = shl i32 %.991549.i, 1                  ; 2 uses
  %i.cln = add i32 %.99.i95, -1                   ; 2 uses
  %i.clo = icmp ult i32 %i.cll, 32768
  br i1 %i.clo, label %bb.vd, label %.loopexit1945.i.loopexit, !llvm.loop !480

bb.vk:                                            ; preds = %bb.vb
  %i.clp = shl nuw i32 %i.cko, 16
  %i.clq = sub i32 %.961546.i, %i.clp             ; 2 uses
  %i.clr = and i32 %i.ckp, 32768
  %i.cls = icmp eq i32 %i.clr, 0
  br i1 %i.cls, label %bb.vl, label %bb.vt

bb.vl:                                            ; preds = %bb.vk
  %i.clt = icmp ult i32 %i.ckp, %i.cko            ; 2 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %i.ckn, i64 4
  %i.clv = load i32, ptr %i.clu, align 4, !tbaa !102 ; 2 uses
  %.sink2459.i = select i1 %i.clt, i64 16, i64 8
  %i.clw = getelementptr inbounds nuw i8, ptr %i.ckn, i64 %.sink2459.i
  %storemerge1768.i = load ptr, ptr %i.clw, align 8, !tbaa !99
  store ptr %storemerge1768.i, ptr %i.ckm, align 8, !tbaa !99
  br label %bb.vm

bb.vm:                                            ; preds = %bb.vs, %bb.vl
  %.1001550.i = phi i32 [ %i.clq, %bb.vl ], [ %i.cmn, %bb.vs ] ; 4 uses
  %.631424.i = phi i32 [ %i.ckp, %bb.vl ], [ %i.cmm, %bb.vs ]
  %.100.i90 = phi i32 [ %.96.i16, %bb.vl ], [ %i.cmo, %bb.vs ] ; 2 uses
  %i.clx = icmp eq i32 %.100.i90, 0
  br i1 %i.clx, label %bb.vn, label %bb.vs

bb.vn:                                            ; preds = %bb.vm
  %i.cly = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.clz = getelementptr inbounds nuw i8, ptr %i.cly, i64 1 ; 3 uses
  %i.cma = load i8, ptr %i.clz, align 1, !tbaa !56 ; 2 uses
  %i.cmb = zext i8 %i.cma to i32                  ; 2 uses
  %i.cmc = load i8, ptr %i.cly, align 1, !tbaa !56
  %i.cmd = icmp eq i8 %i.cmc, -1
  br i1 %i.cmd, label %bb.vo, label %bb.vr

bb.vo:                                            ; preds = %bb.vn
  %i.cme = icmp ugt i8 %i.cma, -113
  br i1 %i.cme, label %bb.vp, label %bb.vq

bb.vp:                                            ; preds = %bb.vo
  %i.cmf = add i32 %.1001550.i, 65280
  %i.cmg = load i32, ptr %i.z, align 4, !tbaa !103
  %i.cmh = add i32 %i.cmg, 1
  store i32 %i.cmh, ptr %i.z, align 4, !tbaa !103
  br label %bb.vs

bb.vq:                                            ; preds = %bb.vo
  store ptr %i.clz, ptr %i.y, align 8, !tbaa !95
  %i.cmi = shl nuw nsw i32 %i.cmb, 9
  %i.cmj = add i32 %i.cmi, %.1001550.i
  br label %bb.vs

bb.vr:                                            ; preds = %bb.vn
  store ptr %i.clz, ptr %i.y, align 8, !tbaa !95
  %i.cmk = shl nuw nsw i32 %i.cmb, 8
  %i.cml = add i32 %i.cmk, %.1001550.i
  br label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %bb.vq, %bb.vp, %bb.vm
  %.1021552.i = phi i32 [ %.1001550.i, %bb.vm ], [ %i.cmf, %bb.vp ], [ %i.cmj, %bb.vq ], [ %i.cml, %bb.vr ]
  %.102.i91 = phi i32 [ %.100.i90, %bb.vm ], [ 8, %bb.vp ], [ 7, %bb.vq ], [ 8, %bb.vr ]
  %i.cmm = shl i32 %.631424.i, 1                  ; 3 uses
  %i.cmn = shl i32 %.1021552.i, 1                 ; 2 uses
  %i.cmo = add i32 %.102.i91, -1                  ; 2 uses
  %i.cmp = icmp ult i32 %i.cmm, 32768
  br i1 %i.cmp, label %bb.vm, label %.loopexit1945.i.loopexit955, !llvm.loop !481

bb.vt:                                            ; preds = %bb.vk
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.ckn, i64 4
  %i.cmr = load i32, ptr %i.cmq, align 4, !tbaa !102
  br label %.loopexit1945.i

.loopexit1945.i.loopexit:                         ; preds = %bb.vj
  %.not1770.i92 = icmp eq i32 %i.cku, 0
  %i.cms = zext i1 %.not1770.i92 to i32
  %.33.i93 = select i1 %i.cks, i32 %i.cku, i32 %i.cms
  br label %.loopexit1945.i

.loopexit1945.i.loopexit955:                      ; preds = %bb.vs
  %.not1769.i = icmp eq i32 %i.clv, 0
  %i.cmt = zext i1 %.not1769.i to i32
  %.34.i89 = select i1 %i.clt, i32 %i.cmt, i32 %i.clv
  br label %.loopexit1945.i

.loopexit1945.i:                                  ; preds = %.loopexit1945.i.loopexit955, %.loopexit1945.i.loopexit, %bb.vt
  %.1031553.i = phi i32 [ %i.clq, %bb.vt ], [ %i.clm, %.loopexit1945.i.loopexit ], [ %i.cmn, %.loopexit1945.i.loopexit955 ] ; 4 uses
  %.641425.i = phi i32 [ %i.ckp, %bb.vt ], [ %i.cll, %.loopexit1945.i.loopexit ], [ %i.cmm, %.loopexit1945.i.loopexit955 ] ; 2 uses
  %.103.i78 = phi i32 [ %.96.i16, %bb.vt ], [ %i.cln, %.loopexit1945.i.loopexit ], [ %i.cmo, %.loopexit1945.i.loopexit955 ] ; 4 uses
  %.35.i79 = phi i32 [ %i.cmr, %bb.vt ], [ %.33.i93, %.loopexit1945.i.loopexit ], [ %.34.i89, %.loopexit1945.i.loopexit955 ]
  %.not1772.i = icmp eq i32 %.35.i79, 0
  br i1 %.not1772.i, label %bb.wn, label %bb.vu

bb.vu:                                            ; preds = %.loopexit1945.i
  %i.cmu = getelementptr inbounds i8, ptr %.116032060.i, i64 -4 ; 3 uses
  %i.cmv = load i32, ptr %i.cmu, align 4, !tbaa !6
  %i.cmw = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 4 ; 3 uses
  %i.cmx = load i32, ptr %i.cmw, align 4, !tbaa !6
  %.pn.in.i1872.i = lshr i32 %.71298.i, 15
  %i.cmy = and i32 %i.ckg, 170
  %i.cmz = lshr i32 %i.cmv, 22
  %i.cna = and i32 %i.cmz, 1
  %i.cnb = lshr i32 %i.cmx, 20
  %i.cnc = and i32 %i.cnb, 4
  %.pn.i1873.i = and i32 %.pn.in.i1872.i, 16
  %i.cnd = lshr i32 %.71298.i, 19
  %i.cne = and i32 %i.cnd, 64
  %i.cnf = or disjoint i32 %i.cne, %i.cmy
end_hunk_13
begin_hunk_14_@opj_t1_dec_clnpass:bb.a
  %i.cza = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 4 ; 3 uses
  %i.czb = load i32, ptr %i.cza, align 4, !tbaa !6
  %.pn.in.i1878.i = lshr i32 %.9.i22, 21
  %i.czc = and i32 %i.cwk, 170
  %i.czd = lshr i32 %i.cyz, 28
  %i.cze = and i32 %i.czd, 1
  %i.czf = lshr i32 %i.czb, 26
  %i.czg = and i32 %i.czf, 4
  %.pn.i1879.i = and i32 %.pn.in.i1878.i, 16
  %i.czh = lshr i32 %.9.i22, 25
  %i.czi = and i32 %i.czh, 64
  %i.czj = or disjoint i32 %i.czi, %i.czc
  %i.czk = or disjoint i32 %i.czj, %.pn.i1879.i
  %.0.i1880.i = or disjoint i32 %i.czk, %i.cze
  %i.czl = or disjoint i32 %.0.i1880.i, %i.czg
  %i.czm = zext nneg i32 %i.czl to i64            ; 2 uses
  %i.czn = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.czm
  %i.czo = load i8, ptr %i.czn, align 1, !tbaa !56
  %i.czp = zext i8 %i.czo to i64
  %i.czq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.czp ; 4 uses
  %i.czr = load ptr, ptr %i.czq, align 8, !tbaa !99 ; 6 uses
  %i.czs = load i32, ptr %i.czr, align 8, !tbaa !101 ; 6 uses
  %i.czt = sub i32 %.821443.i, %i.czs             ; 5 uses
  %i.czu = lshr i32 %.1331583.i, 16
  %i.czv = icmp ult i32 %i.czu, %i.czs
  br i1 %i.czv, label %bb.yv, label %bb.zd

bb.yv:                                            ; preds = %bb.yu
  %i.czw = icmp ult i32 %i.czt, %i.czs            ; 2 uses
  %i.czx = getelementptr inbounds nuw i8, ptr %i.czr, i64 4
  %i.czy = load i32, ptr %i.czx, align 4, !tbaa !102 ; 2 uses
  %.sink2468.i = select i1 %i.czw, i64 8, i64 16
  %i.czz = getelementptr inbounds nuw i8, ptr %i.czr, i64 %.sink2468.i
  %storemerge1798.i46 = load ptr, ptr %i.czz, align 8, !tbaa !99
  store ptr %storemerge1798.i46, ptr %i.czq, align 8, !tbaa !99
  br label %bb.yw

bb.yw:                                            ; preds = %bb.zc, %bb.yv
  %.1341584.i = phi i32 [ %.1331583.i, %bb.yv ], [ %i.daq, %bb.zc ] ; 4 uses
  %.841445.i = phi i32 [ %i.czs, %bb.yv ], [ %i.dap, %bb.zc ]
  %.134.i47 = phi i32 [ %.133.i30, %bb.yv ], [ %i.dar, %bb.zc ] ; 2 uses
  %i.daa = icmp eq i32 %.134.i47, 0
  br i1 %i.daa, label %bb.yx, label %bb.zc

bb.yx:                                            ; preds = %bb.yw
  %i.dab = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.dac = getelementptr inbounds nuw i8, ptr %i.dab, i64 1 ; 3 uses
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !56 ; 2 uses
  %i.dae = zext i8 %i.dad to i32                  ; 2 uses
  %i.daf = load i8, ptr %i.dab, align 1, !tbaa !56
  %i.dag = icmp eq i8 %i.daf, -1
  br i1 %i.dag, label %bb.yy, label %bb.zb

bb.yy:                                            ; preds = %bb.yx
  %i.dah = icmp ugt i8 %i.dad, -113
  br i1 %i.dah, label %bb.yz, label %bb.za

bb.yz:                                            ; preds = %bb.yy
  %i.dai = add i32 %.1341584.i, 65280
  %i.daj = load i32, ptr %i.z, align 4, !tbaa !103
  %i.dak = add i32 %i.daj, 1
  store i32 %i.dak, ptr %i.z, align 4, !tbaa !103
  br label %bb.zc

bb.za:                                            ; preds = %bb.yy
  store ptr %i.dac, ptr %i.y, align 8, !tbaa !95
  %i.dal = shl nuw nsw i32 %i.dae, 9
  %i.dam = add i32 %i.dal, %.1341584.i
  br label %bb.zc

bb.zb:                                            ; preds = %bb.yx
  store ptr %i.dac, ptr %i.y, align 8, !tbaa !95
  %i.dan = shl nuw nsw i32 %i.dae, 8
  %i.dao = add i32 %i.dan, %.1341584.i
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za, %bb.yz, %bb.yw
  %.1361586.i = phi i32 [ %.1341584.i, %bb.yw ], [ %i.dai, %bb.yz ], [ %i.dam, %bb.za ], [ %i.dao, %bb.zb ]
  %.136.i48 = phi i32 [ %.134.i47, %bb.yw ], [ 8, %bb.yz ], [ 7, %bb.za ], [ 8, %bb.zb ]
  %i.dap = shl i32 %.841445.i, 1                  ; 3 uses
  %i.daq = shl i32 %.1361586.i, 1                 ; 2 uses
  %i.dar = add i32 %.136.i48, -1                  ; 2 uses
  %i.das = icmp ult i32 %i.dap, 32768
  br i1 %i.das, label %bb.yw, label %.loopexit1935.i32.loopexit, !llvm.loop !490

bb.zd:                                            ; preds = %bb.yu
  %i.dat = shl nuw i32 %i.czs, 16
  %i.dau = sub i32 %.1331583.i, %i.dat            ; 2 uses
  %i.dav = and i32 %i.czt, 32768
  %i.daw = icmp eq i32 %i.dav, 0
  br i1 %i.daw, label %bb.ze, label %bb.zm

bb.ze:                                            ; preds = %bb.zd
  %i.dax = icmp ult i32 %i.czt, %i.czs            ; 2 uses
  %i.day = getelementptr inbounds nuw i8, ptr %i.czr, i64 4
  %i.daz = load i32, ptr %i.day, align 4, !tbaa !102 ; 2 uses
  %.sink2469.i = select i1 %i.dax, i64 16, i64 8
  %i.dba = getelementptr inbounds nuw i8, ptr %i.czr, i64 %.sink2469.i
  %storemerge1795.i41 = load ptr, ptr %i.dba, align 8, !tbaa !99
  store ptr %storemerge1795.i41, ptr %i.czq, align 8, !tbaa !99
  br label %bb.zf

bb.zf:                                            ; preds = %bb.zl, %bb.ze
  %.1371587.i = phi i32 [ %i.dau, %bb.ze ], [ %i.dbr, %bb.zl ] ; 4 uses
  %.851446.i = phi i32 [ %i.czt, %bb.ze ], [ %i.dbq, %bb.zl ]
  %.137.i42 = phi i32 [ %.133.i30, %bb.ze ], [ %i.dbs, %bb.zl ] ; 2 uses
  %i.dbb = icmp eq i32 %.137.i42, 0
  br i1 %i.dbb, label %bb.zg, label %bb.zl

bb.zg:                                            ; preds = %bb.zf
  %i.dbc = load ptr, ptr %i.y, align 8, !tbaa !95 ; 2 uses
  %i.dbd = getelementptr inbounds nuw i8, ptr %i.dbc, i64 1 ; 3 uses
  %i.dbe = load i8, ptr %i.dbd, align 1, !tbaa !56 ; 2 uses
  %i.dbf = zext i8 %i.dbe to i32                  ; 2 uses
  %i.dbg = load i8, ptr %i.dbc, align 1, !tbaa !56
  %i.dbh = icmp eq i8 %i.dbg, -1
  br i1 %i.dbh, label %bb.zh, label %bb.zk

bb.zh:                                            ; preds = %bb.zg
  %i.dbi = icmp ugt i8 %i.dbe, -113
  br i1 %i.dbi, label %bb.zi, label %bb.zj

bb.zi:                                            ; preds = %bb.zh
  %i.dbj = add i32 %.1371587.i, 65280
  %i.dbk = load i32, ptr %i.z, align 4, !tbaa !103
  %i.dbl = add i32 %i.dbk, 1
  store i32 %i.dbl, ptr %i.z, align 4, !tbaa !103
  br label %bb.zl

bb.zj:                                            ; preds = %bb.zh
  store ptr %i.dbd, ptr %i.y, align 8, !tbaa !95
  %i.dbm = shl nuw nsw i32 %i.dbf, 9
  %i.dbn = add i32 %i.dbm, %.1371587.i
  br label %bb.zl

bb.zk:                                            ; preds = %bb.zg
  store ptr %i.dbd, ptr %i.y, align 8, !tbaa !95
  %i.dbo = shl nuw nsw i32 %i.dbf, 8
  %i.dbp = add i32 %i.dbo, %.1371587.i
  br label %bb.zl

bb.zl:                                            ; preds = %bb.zk, %bb.zj, %bb.zi, %bb.zf
  %.1391589.i = phi i32 [ %.1371587.i, %bb.zf ], [ %i.dbj, %bb.zi ], [ %i.dbn, %bb.zj ], [ %i.dbp, %bb.zk ]
  %.139.i43 = phi i32 [ %.137.i42, %bb.zf ], [ 8, %bb.zi ], [ 7, %bb.zj ], [ 8, %bb.zk ]
  %i.dbq = shl i32 %.851446.i, 1                  ; 3 uses
  %i.dbr = shl i32 %.1391589.i, 1                 ; 2 uses
  %i.dbs = add i32 %.139.i43, -1                  ; 2 uses
  %i.dbt = icmp ult i32 %i.dbq, 32768
  br i1 %i.dbt, label %bb.zf, label %.loopexit1935.i32.loopexit950, !llvm.loop !491

bb.zm:                                            ; preds = %bb.zd
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.czr, i64 4
  %i.dbv = load i32, ptr %i.dbu, align 4, !tbaa !102
  br label %.loopexit1935.i32

.loopexit1935.i32.loopexit:                       ; preds = %bb.zc
  %.not1797.i44 = icmp eq i32 %i.czy, 0
  %i.dbw = zext i1 %.not1797.i44 to i32
  %.48.i45 = select i1 %i.czw, i32 %i.czy, i32 %i.dbw
  br label %.loopexit1935.i32

.loopexit1935.i32.loopexit950:                    ; preds = %bb.zl
  %.not1796.i39 = icmp eq i32 %i.daz, 0
  %i.dbx = zext i1 %.not1796.i39 to i32
  %.49.i40 = select i1 %i.dax, i32 %i.dbx, i32 %i.daz
  br label %.loopexit1935.i32

.loopexit1935.i32:                                ; preds = %.loopexit1935.i32.loopexit950, %.loopexit1935.i32.loopexit, %bb.zm
  %.1401590.i = phi i32 [ %i.dau, %bb.zm ], [ %i.daq, %.loopexit1935.i32.loopexit ], [ %i.dbr, %.loopexit1935.i32.loopexit950 ]
  %.861447.i = phi i32 [ %i.czt, %bb.zm ], [ %i.dap, %.loopexit1935.i32.loopexit ], [ %i.dbq, %.loopexit1935.i32.loopexit950 ]
  %.140.i33 = phi i32 [ %.133.i30, %bb.zm ], [ %i.dar, %.loopexit1935.i32.loopexit ], [ %i.dbs, %.loopexit1935.i32.loopexit950 ]
  %.50.i34 = phi i32 [ %i.dbv, %bb.zm ], [ %.48.i45, %.loopexit1935.i32.loopexit ], [ %.49.i40, %.loopexit1935.i32.loopexit950 ] ; 2 uses
  %i.dby = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.czm
  %i.dbz = load i8, ptr %i.dby, align 1, !tbaa !56
  %i.dca = zext i8 %i.dbz to i32                  ; 2 uses
  %i.dcb = xor i32 %.50.i34, %i.dca               ; 2 uses
  %.not1799.i = icmp eq i32 %.50.i34, %i.dca
  %i.dcc = select i1 %.not1799.i, i32 %i.v, i32 %i.aa
  %i.dcd = getelementptr inbounds nuw i8, ptr %.116062059.i, i64 768
  store i32 %i.dcc, ptr %i.dcd, align 4, !tbaa !6
  %i.dce = load i32, ptr %i.cyy, align 4, !tbaa !6
  %i.dcf = or i32 %i.dce, 16384
  store i32 %i.dcf, ptr %i.cyy, align 4, !tbaa !6
  %i.dcg = shl i32 %i.dcb, 28
  %i.dch = or i32 %i.dcg, %.9.i22
  %i.dci = load i32, ptr %i.cza, align 4, !tbaa !6
  %i.dcj = or i32 %i.dci, 4096
  store i32 %i.dcj, ptr %i.cza, align 4, !tbaa !6
  br label %.sink.split.i35

.sink.split.i35:                                  ; preds = %.loopexit1935.i32, %.loopexit.i123
  %.sink2484.i = phi i32 [ %i.cdn, %.loopexit.i123 ], [ %i.dcb, %.loopexit1935.i32 ]
  %.71600.ph.i = phi ptr [ %i.cbc, %.loopexit.i123 ], [ %i.czq, %.loopexit1935.i32 ]
  %.1411591.ph.i = phi i32 [ %.791529.i, %.loopexit.i123 ], [ %.1401590.i, %.loopexit1935.i32 ]
  %.871448.ph.i = phi i32 [ %.491410.i, %.loopexit.i123 ], [ %.861447.i, %.loopexit1935.i32 ]
  %.141.ph.i36 = phi i32 [ %.79.i124, %.loopexit.i123 ], [ %.140.i33, %.loopexit1935.i32 ]
  %.10.ph.in.i37 = phi i32 [ %i.cdt, %.loopexit.i123 ], [ %i.dch, %.loopexit1935.i32 ]
  %.10.ph.i38 = or i32 %.10.ph.in.i37, 8192
  %i.dck = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 264 ; 2 uses
  %i.dcl = shl i32 %.sink2484.i, 18
  %9 = load i32, ptr %i.dck, align 4, !tbaa !6
  %10 = or i32 %i.dcl, %9
  %i.dcm = or i32 %10, 2
  store i32 %i.dcm, ptr %i.dck, align 4, !tbaa !6
  %i.dcn = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 260 ; 2 uses
  %i.dco = load i32, ptr %i.dcn, align 4, !tbaa !6
  %i.dcp = or i32 %i.dco, 4
  store i32 %i.dcp, ptr %i.dcn, align 4, !tbaa !6
  %i.dcq = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 268 ; 2 uses
  %i.dcr = load i32, ptr %i.dcq, align 4, !tbaa !6
  %i.dcs = or i32 %i.dcr, 1
  store i32 %i.dcs, ptr %i.dcq, align 4, !tbaa !6
  br label %bb.zn

bb.zn:                                            ; preds = %.sink.split.i35, %.loopexit1937.i29, %bb.ya, %.loopexit1917.i139, %.loopexit1929.i121
  %.71600.i = phi ptr [ %i.cwq, %.loopexit1937.i29 ], [ %.61599.i, %bb.ya ], [ %i.ac, %.loopexit1929.i121 ], [ %i.byb, %.loopexit1917.i139 ], [ %.71600.ph.i, %.sink.split.i35 ]
  %.1411591.i = phi i32 [ %.1331583.i, %.loopexit1937.i29 ], [ %.1261576.i, %bb.ya ], [ %.221472.i, %.loopexit1929.i121 ], [ %.711521.i, %.loopexit1917.i139 ], [ %.1411591.ph.i, %.sink.split.i35 ]
  %.871448.i = phi i32 [ %.821443.i, %.loopexit1937.i29 ], [ %.781439.i, %bb.ya ], [ %.131374.i, %.loopexit1929.i121 ], [ %.441405.i, %.loopexit1917.i139 ], [ %.871448.ph.i, %.sink.split.i35 ]
  %.141.i24 = phi i32 [ %.133.i30, %.loopexit1937.i29 ], [ %.126.i21, %bb.ya ], [ %.221332.i, %.loopexit1929.i121 ], [ %.71.i140, %.loopexit1917.i139 ], [ %.141.ph.i36, %.sink.split.i35 ]
  %.10.i25 = phi i32 [ %.9.i22, %.loopexit1937.i29 ], [ %.9.i22, %bb.ya ], [ 0, %.loopexit1929.i121 ], [ %.41295.ph.i, %.loopexit1917.i139 ], [ %.10.ph.i38, %.sink.split.i35 ]
  %i.dct = and i32 %.10.i25, -1226833921
  store i32 %i.dct, ptr %.116032060.i, align 4, !tbaa !6
  br label %.thread1910.i

.thread1910.i:                                    ; preds = %bb.zn, %.loopexit1933.i119
  %.81601.i = phi ptr [ %.71600.i, %bb.zn ], [ %i.ab, %.loopexit1933.i119 ] ; 3 uses
  %.1421592.i = phi i32 [ %.1411591.i, %bb.zn ], [ %.81458.i, %.loopexit1933.i119 ] ; 3 uses
  %.881449.i = phi i32 [ %.871448.i, %bb.zn ], [ %.51366.i, %.loopexit1933.i119 ] ; 3 uses
  %.142.i26 = phi i32 [ %.141.i24, %bb.zn ], [ %.81318.i, %.loopexit1933.i119 ] ; 3 uses
  %i.dcu = add nuw nsw i32 %.016102058.i, 1       ; 2 uses
  %i.dcv = getelementptr inbounds nuw i8, ptr %.116062059.i, i64 4
  %i.dcw = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 4
  %exitcond.not.i27 = icmp eq i32 %i.dcu, 64
  br i1 %exitcond.not.i27, label %bb.zo, label %bb.mj, !llvm.loop !492

bb.zo:                                            ; preds = %.thread1910.i
  %i.dcx = add nuw nsw i32 %.016082065.i, 4
  %i.dcy = getelementptr inbounds nuw i8, ptr %.116062059.i, i64 772
  %i.dcz = getelementptr inbounds nuw i8, ptr %.116032060.i, i64 12
  %i.dda = icmp samesign ult i32 %.016082065.i, 60
  br i1 %i.dda, label %.preheader.i14, label %opj_t1_dec_clnpass_generic_vsc.exit.sink.split, !llvm.loop !493

bb.zp:                                            ; preds = %bb.b, %bb.a
  %i.ddb = and i32 %2, 8
  %.not = icmp eq i32 %i.ddb, 0
  %i.ddc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ddd = load ptr, ptr %i.ddc, align 8, !tbaa !28 ; 6 uses
  %i.dde = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ddf = load ptr, ptr %i.dde, align 8, !tbaa !29 ; 3 uses
  %i.ddg = add i32 %i.b, 3
  %i.ddh = zext i32 %i.ddg to i64
  %i.ddi = getelementptr inbounds nuw [4 x i8], ptr %i.ddf, i64 %i.ddh ; 4 uses
  %i.ddj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ddk = load ptr, ptr %i.ddj, align 8, !tbaa !96 ; 6 uses
  %i.ddl = load i32, ptr %0, align 8, !tbaa !94   ; 6 uses
  %i.ddm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ddn = load i32, ptr %i.ddm, align 4, !tbaa !97 ; 6 uses
  %i.ddo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ddp = load i32, ptr %i.ddo, align 8, !tbaa !93 ; 6 uses
  %i.ddq = shl nuw nsw i32 1, %1                  ; 2 uses
  %i.ddr = lshr exact i32 %i.ddq, 1
  %i.dds = or i32 %i.ddr, %i.ddq                  ; 20 uses
  %i.ddt = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 7 uses
  %i.ddu = load i32, ptr %i.ddt, align 4, !tbaa !92 ; 9 uses
  %.not.i208 = icmp ult i32 %i.ddu, 4             ; 2 uses
  br i1 %.not, label %bb.amw, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  br i1 %.not.i208, label %._crit_edge2094.i, label %.preheader1965.lr.ph.i

.preheader1965.lr.ph.i:                           ; preds = %bb.zq
  %.not2114.i = icmp eq i32 %i.b, 0
  %i.ddv = getelementptr i8, ptr %0, i64 200      ; 7 uses
  %i.ddw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 108 uses
  %i.ddy = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 72 uses
  %i.ddz = sub nsw i32 0, %i.dds                  ; 8 uses
  %i.dea = zext i32 %i.b to i64                   ; 2 uses
  %i.deb = shl i32 %i.b, 1
  %i.dec = zext i32 %i.deb to i64                 ; 2 uses
  %i.ded = mul i32 %i.b, 3
  %i.dee = zext i32 %i.ded to i64                 ; 4 uses
  %i.def = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.deg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  br i1 %.not2114.i, label %.preheader1965.lr.ph.split.i, label %.preheader1965.us.i

.preheader1965.us.i:                              ; preds = %.preheader1965.lr.ph.i, %._crit_edge.us.i
  %.013162093.us.i = phi i32 [ %.142.us.i, %._crit_edge.us.i ], [ %i.ddp, %.preheader1965.lr.ph.i ]
  %.013672092.us.i = phi i32 [ %.881455.us.i, %._crit_edge.us.i ], [ %i.ddn, %.preheader1965.lr.ph.i ]
  %.014562091.us.i = phi i32 [ %.1421598.us.i, %._crit_edge.us.i ], [ %i.ddl, %.preheader1965.lr.ph.i ]
  %.015992090.us.i = phi ptr [ %.81607.us.i, %._crit_edge.us.i ], [ %i.ddk, %.preheader1965.lr.ph.i ]
  %.016082089.us.i = phi ptr [ %i.ffl, %._crit_edge.us.i ], [ %i.ddi, %.preheader1965.lr.ph.i ]
  %.016112088.us.i = phi ptr [ %i.ffk, %._crit_edge.us.i ], [ %i.ddd, %.preheader1965.lr.ph.i ]
  %.016142087.us.i = phi i32 [ %i.ffj, %._crit_edge.us.i ], [ 0, %.preheader1965.lr.ph.i ]
  br label %bb.zr

bb.zr:                                            ; preds = %.thread1922.us.i, %.preheader1965.us.i
  %.113172081.us.i = phi i32 [ %.013162093.us.i, %.preheader1965.us.i ], [ %.142.us.i, %.thread1922.us.i ] ; 7 uses
  %.113682080.us.i = phi i32 [ %.013672092.us.i, %.preheader1965.us.i ], [ %.881455.us.i, %.thread1922.us.i ] ; 3 uses
  %.114572079.us.i = phi i32 [ %.014562091.us.i, %.preheader1965.us.i ], [ %.1421598.us.i, %.thread1922.us.i ] ; 7 uses
  %.116002078.us.i = phi ptr [ %.015992090.us.i, %.preheader1965.us.i ], [ %.81607.us.i, %.thread1922.us.i ]
  %.116092077.us.i = phi ptr [ %.016082089.us.i, %.preheader1965.us.i ], [ %i.ffi, %.thread1922.us.i ] ; 21 uses
  %.116122076.us.i = phi ptr [ %.016112088.us.i, %.preheader1965.us.i ], [ %i.ffh, %.thread1922.us.i ] ; 9 uses
  %.016162075.us.i = phi i32 [ 0, %.preheader1965.us.i ], [ %i.ffg, %.thread1922.us.i ]
  %i.deh = load i32, ptr %.116092077.us.i, align 4, !tbaa !6 ; 9 uses
  %i.dei = icmp eq i32 %i.deh, 0
  br i1 %i.dei, label %bb.afs, label %bb.zs

bb.zs:                                            ; preds = %bb.zr
  %i.dej = and i32 %i.deh, 2097168
  %.not.us.i = icmp eq i32 %i.dej, 0
  br i1 %.not.us.i, label %bb.zt, label %bb.abf

bb.zt:                                            ; preds = %bb.zs
  %.val1871.us.i = load ptr, ptr %i.ddv, align 8, !tbaa !88
  %i.dek = and i32 %i.deh, 495
  %i.del = zext nneg i32 %i.dek to i64
  %i.dem = getelementptr inbounds nuw i8, ptr %.val1871.us.i, i64 %i.del
  %i.den = load i8, ptr %i.dem, align 1, !tbaa !56
  %i.deo = zext i8 %i.den to i64
  %i.dep = getelementptr inbounds nuw [8 x i8], ptr %i.ddw, i64 %i.deo ; 4 uses
  %i.deq = load ptr, ptr %i.dep, align 8, !tbaa !99 ; 6 uses
  %i.der = load i32, ptr %i.deq, align 8, !tbaa !101 ; 6 uses
  %i.des = sub i32 %.113682080.us.i, %i.der       ; 5 uses
  %i.det = lshr i32 %.114572079.us.i, 16
  %i.deu = icmp ult i32 %i.det, %i.der
  br i1 %i.deu, label %bb.aae, label %bb.zu

bb.zu:                                            ; preds = %bb.zt
  %i.dev = shl nuw i32 %i.der, 16
  %i.dew = sub i32 %.114572079.us.i, %i.dev       ; 2 uses
  %i.dex = and i32 %i.des, 32768
  %i.dey = icmp eq i32 %i.dex, 0
  br i1 %i.dey, label %bb.zw, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.dez = getelementptr inbounds nuw i8, ptr %i.deq, i64 4
  %i.dfa = load i32, ptr %i.dez, align 4, !tbaa !102
  br label %.loopexit1963.us.i

bb.zw:                                            ; preds = %bb.zu
  %i.dfb = icmp ult i32 %i.des, %i.der            ; 2 uses
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.deq, i64 4
  %i.dfd = load i32, ptr %i.dfc, align 4, !tbaa !102 ; 2 uses
  %.sink.i207 = select i1 %i.dfb, i64 16, i64 8
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.deq, i64 %.sink.i207
  %storemerge.us.i = load ptr, ptr %i.dfe, align 8, !tbaa !99
  store ptr %storemerge.us.i, ptr %i.dep, align 8, !tbaa !99
  br label %bb.zx

bb.zx:                                            ; preds = %bb.aad, %bb.zw
  %.851541.us.i = phi i32 [ %i.dew, %bb.zw ], [ %i.dfv, %bb.aad ] ; 4 uses
  %.541421.us.i = phi i32 [ %i.des, %bb.zw ], [ %i.dfu, %bb.aad ]
  %.85.us.i = phi i32 [ %.113172081.us.i, %bb.zw ], [ %i.dfw, %bb.aad ] ; 2 uses
  %i.dff = icmp eq i32 %.85.us.i, 0
  br i1 %i.dff, label %bb.zy, label %bb.aad

bb.zy:                                            ; preds = %bb.zx
  %i.dfg = load ptr, ptr %i.ddx, align 8, !tbaa !95 ; 2 uses
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.dfg, i64 1 ; 3 uses
  %i.dfi = load i8, ptr %i.dfh, align 1, !tbaa !56 ; 2 uses
  %i.dfj = zext i8 %i.dfi to i32                  ; 2 uses
  %i.dfk = load i8, ptr %i.dfg, align 1, !tbaa !56
  %i.dfl = icmp eq i8 %i.dfk, -1
  br i1 %i.dfl, label %bb.aaa, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  store ptr %i.dfh, ptr %i.ddx, align 8, !tbaa !95
  %i.dfm = shl nuw nsw i32 %i.dfj, 8
  %i.dfn = add i32 %i.dfm, %.851541.us.i
  br label %bb.aad

bb.aaa:                                           ; preds = %bb.zy
  %i.dfo = icmp ugt i8 %i.dfi, -113
  br i1 %i.dfo, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  store ptr %i.dfh, ptr %i.ddx, align 8, !tbaa !95
  %i.dfp = shl nuw nsw i32 %i.dfj, 9
  %i.dfq = add i32 %i.dfp, %.851541.us.i
  br label %bb.aad

bb.aac:                                           ; preds = %bb.aaa
  %i.dfr = add i32 %.851541.us.i, 65280
  %i.dfs = load i32, ptr %i.ddy, align 4, !tbaa !103
  %i.dft = add i32 %i.dfs, 1
  store i32 %i.dft, ptr %i.ddy, align 4, !tbaa !103
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aac, %bb.aab, %bb.zz, %bb.zx
  %.871543.us.i = phi i32 [ %.851541.us.i, %bb.zx ], [ %i.dfr, %bb.aac ], [ %i.dfq, %bb.aab ], [ %i.dfn, %bb.zz ]
  %.87.us.i = phi i32 [ %.85.us.i, %bb.zx ], [ 8, %bb.aac ], [ 7, %bb.aab ], [ 8, %bb.zz ]
  %i.dfu = shl i32 %.541421.us.i, 1               ; 3 uses
  %i.dfv = shl i32 %.871543.us.i, 1               ; 2 uses
  %i.dfw = add i32 %.87.us.i, -1                  ; 2 uses
  %i.dfx = icmp ult i32 %i.dfu, 32768
  br i1 %i.dfx, label %bb.zx, label %.loopexit1963.us.i.loopexit1012, !llvm.loop !494

bb.aae:                                           ; preds = %bb.zt
  %i.dfy = icmp ult i32 %i.des, %i.der            ; 2 uses
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.deq, i64 4
  %i.dga = load i32, ptr %i.dfz, align 4, !tbaa !102 ; 2 uses
  %.sink2501.i = select i1 %i.dfy, i64 8, i64 16
end_hunk_14
begin_hunk_15_@opj_t1_dec_clnpass:bb.a
  %i.fbl = and i32 %i.fbk, 170
  %i.fbm = lshr i32 %i.fbh, 28
  %i.fbn = and i32 %i.fbm, 1
  %i.fbo = lshr i32 %i.fbj, 26
  %i.fbp = and i32 %i.fbo, 4
  %.pn.i1879.us.i = and i32 %.pn.in.i1878.us.i, 16
  %i.fbq = lshr i32 %.413011920.us.i, 25
  %i.fbr = and i32 %i.fbq, 64
  %i.fbs = or disjoint i32 %i.fbr, %i.fbl
  %i.fbt = or disjoint i32 %i.fbs, %.pn.i1879.us.i
  %.0.i1880.us.i = or disjoint i32 %i.fbt, %i.fbn
  %i.fbu = or disjoint i32 %.0.i1880.us.i, %i.fbp
  %i.fbv = zext nneg i32 %i.fbu to i64            ; 2 uses
  %i.fbw = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.fbv
  %i.fbx = load i8, ptr %i.fbw, align 1, !tbaa !56
  %i.fby = zext i8 %i.fbx to i64
  %i.fbz = getelementptr inbounds nuw [8 x i8], ptr %i.ddw, i64 %i.fby ; 4 uses
  %i.fca = load ptr, ptr %i.fbz, align 8, !tbaa !99 ; 6 uses
  %i.fcb = load i32, ptr %i.fca, align 8, !tbaa !101 ; 6 uses
  %i.fcc = sub i32 %.451412.us.i, %i.fcb          ; 5 uses
  %i.fcd = lshr i32 %.721528.us.i, 16
  %i.fce = icmp ult i32 %i.fcd, %i.fcb
  br i1 %i.fce, label %bb.amn, label %bb.amd

bb.amd:                                           ; preds = %.loopexit1943.us._crit_edge2255.i
  %i.fcf = shl nuw i32 %i.fcb, 16
  %i.fcg = sub i32 %.721528.us.i, %i.fcf          ; 2 uses
  %i.fch = and i32 %i.fcc, 32768
  %i.fci = icmp eq i32 %i.fch, 0
  br i1 %i.fci, label %bb.amf, label %bb.ame

bb.ame:                                           ; preds = %bb.amd
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fca, i64 4
  %i.fck = load i32, ptr %i.fcj, align 4, !tbaa !102
  br label %.loopexit1929.us.i

bb.amf:                                           ; preds = %bb.amd
  %i.fcl = icmp ult i32 %i.fcc, %i.fcb            ; 2 uses
  %i.fcm = getelementptr inbounds nuw i8, ptr %i.fca, i64 4
  %i.fcn = load i32, ptr %i.fcm, align 4, !tbaa !102 ; 2 uses
  %.sink2534.i = select i1 %i.fcl, i64 16, i64 8
  %i.fco = getelementptr inbounds nuw i8, ptr %i.fca, i64 %.sink2534.i
  %storemerge1858.us.i = load ptr, ptr %i.fco, align 8, !tbaa !99
  store ptr %storemerge1858.us.i, ptr %i.fbz, align 8, !tbaa !99
  br label %bb.amg

bb.amg:                                           ; preds = %bb.amm, %bb.amf
  %.761532.us.i = phi i32 [ %i.fcg, %bb.amf ], [ %i.fdf, %bb.amm ] ; 4 uses
  %.481415.us.i = phi i32 [ %i.fcc, %bb.amf ], [ %i.fde, %bb.amm ]
  %.76.us.i = phi i32 [ %.72.us.i, %bb.amf ], [ %i.fdg, %bb.amm ] ; 2 uses
  %i.fcp = icmp eq i32 %.76.us.i, 0
  br i1 %i.fcp, label %bb.amh, label %bb.amm

bb.amh:                                           ; preds = %bb.amg
  %i.fcq = load ptr, ptr %i.ddx, align 8, !tbaa !95 ; 2 uses
  %i.fcr = getelementptr inbounds nuw i8, ptr %i.fcq, i64 1 ; 3 uses
  %i.fcs = load i8, ptr %i.fcr, align 1, !tbaa !56 ; 2 uses
  %i.fct = zext i8 %i.fcs to i32                  ; 2 uses
  %i.fcu = load i8, ptr %i.fcq, align 1, !tbaa !56
  %i.fcv = icmp eq i8 %i.fcu, -1
  br i1 %i.fcv, label %bb.amj, label %bb.ami

bb.ami:                                           ; preds = %bb.amh
  store ptr %i.fcr, ptr %i.ddx, align 8, !tbaa !95
  %i.fcw = shl nuw nsw i32 %i.fct, 8
  %i.fcx = add i32 %i.fcw, %.761532.us.i
  br label %bb.amm

bb.amj:                                           ; preds = %bb.amh
  %i.fcy = icmp ugt i8 %i.fcs, -113
  br i1 %i.fcy, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  store ptr %i.fcr, ptr %i.ddx, align 8, !tbaa !95
  %i.fcz = shl nuw nsw i32 %i.fct, 9
  %i.fda = add i32 %i.fcz, %.761532.us.i
  br label %bb.amm

bb.aml:                                           ; preds = %bb.amj
  %i.fdb = add i32 %.761532.us.i, 65280
  %i.fdc = load i32, ptr %i.ddy, align 4, !tbaa !103
  %i.fdd = add i32 %i.fdc, 1
  store i32 %i.fdd, ptr %i.ddy, align 4, !tbaa !103
  br label %bb.amm

bb.amm:                                           ; preds = %bb.aml, %bb.amk, %bb.ami, %bb.amg
  %.781534.us.i = phi i32 [ %.761532.us.i, %bb.amg ], [ %i.fdb, %bb.aml ], [ %i.fda, %bb.amk ], [ %i.fcx, %bb.ami ]
  %.78.us.i = phi i32 [ %.76.us.i, %bb.amg ], [ 8, %bb.aml ], [ 7, %bb.amk ], [ 8, %bb.ami ]
  %i.fde = shl i32 %.481415.us.i, 1               ; 3 uses
  %i.fdf = shl i32 %.781534.us.i, 1               ; 2 uses
  %i.fdg = add i32 %.78.us.i, -1                  ; 2 uses
  %i.fdh = icmp ult i32 %i.fde, 32768
  br i1 %i.fdh, label %bb.amg, label %.loopexit1929.us.i.loopexit995, !llvm.loop !528

bb.amn:                                           ; preds = %.loopexit1943.us._crit_edge2255.i
  %i.fdi = icmp ult i32 %i.fcc, %i.fcb            ; 2 uses
  %i.fdj = getelementptr inbounds nuw i8, ptr %i.fca, i64 4
  %i.fdk = load i32, ptr %i.fdj, align 4, !tbaa !102 ; 2 uses
  %.sink2535.i = select i1 %i.fdi, i64 8, i64 16
  %i.fdl = getelementptr inbounds nuw i8, ptr %i.fca, i64 %.sink2535.i
  %storemerge1861.us.i = load ptr, ptr %i.fdl, align 8, !tbaa !99
  store ptr %storemerge1861.us.i, ptr %i.fbz, align 8, !tbaa !99
  br label %bb.amo

bb.amo:                                           ; preds = %bb.amu, %bb.amn
  %.731529.us.i = phi i32 [ %.721528.us.i, %bb.amn ], [ %i.fec, %bb.amu ] ; 4 uses
  %.471414.us.i = phi i32 [ %i.fcb, %bb.amn ], [ %i.feb, %bb.amu ]
  %.73.us.i = phi i32 [ %.72.us.i, %bb.amn ], [ %i.fed, %bb.amu ] ; 2 uses
  %i.fdm = icmp eq i32 %.73.us.i, 0
  br i1 %i.fdm, label %bb.amp, label %bb.amu

bb.amp:                                           ; preds = %bb.amo
  %i.fdn = load ptr, ptr %i.ddx, align 8, !tbaa !95 ; 2 uses
  %i.fdo = getelementptr inbounds nuw i8, ptr %i.fdn, i64 1 ; 3 uses
  %i.fdp = load i8, ptr %i.fdo, align 1, !tbaa !56 ; 2 uses
  %i.fdq = zext i8 %i.fdp to i32                  ; 2 uses
  %i.fdr = load i8, ptr %i.fdn, align 1, !tbaa !56
  %i.fds = icmp eq i8 %i.fdr, -1
  br i1 %i.fds, label %bb.amr, label %bb.amq

bb.amq:                                           ; preds = %bb.amp
  store ptr %i.fdo, ptr %i.ddx, align 8, !tbaa !95
  %i.fdt = shl nuw nsw i32 %i.fdq, 8
  %i.fdu = add i32 %i.fdt, %.731529.us.i
  br label %bb.amu

bb.amr:                                           ; preds = %bb.amp
  %i.fdv = icmp ugt i8 %i.fdp, -113
  br i1 %i.fdv, label %bb.amt, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  store ptr %i.fdo, ptr %i.ddx, align 8, !tbaa !95
  %i.fdw = shl nuw nsw i32 %i.fdq, 9
  %i.fdx = add i32 %i.fdw, %.731529.us.i
  br label %bb.amu

bb.amt:                                           ; preds = %bb.amr
  %i.fdy = add i32 %.731529.us.i, 65280
  %i.fdz = load i32, ptr %i.ddy, align 4, !tbaa !103
  %i.fea = add i32 %i.fdz, 1
  store i32 %i.fea, ptr %i.ddy, align 4, !tbaa !103
  br label %bb.amu

bb.amu:                                           ; preds = %bb.amt, %bb.ams, %bb.amq, %bb.amo
  %.751531.us.i = phi i32 [ %.731529.us.i, %bb.amo ], [ %i.fdy, %bb.amt ], [ %i.fdx, %bb.ams ], [ %i.fdu, %bb.amq ]
  %.75.us.i = phi i32 [ %.73.us.i, %bb.amo ], [ 8, %bb.amt ], [ 7, %bb.ams ], [ 8, %bb.amq ]
  %i.feb = shl i32 %.471414.us.i, 1               ; 3 uses
  %i.fec = shl i32 %.751531.us.i, 1               ; 2 uses
  %i.fed = add i32 %.75.us.i, -1                  ; 2 uses
  %i.fee = icmp ult i32 %i.feb, 32768
  br i1 %i.fee, label %bb.amo, label %.loopexit1929.us.i.loopexit, !llvm.loop !529

.loopexit1929.us.i.loopexit:                      ; preds = %bb.amu
  %.not1860.us.i = icmp eq i32 %i.fdk, 0
  %i.fef = zext i1 %.not1860.us.i to i32
  %.24.us.i = select i1 %i.fdi, i32 %i.fdk, i32 %i.fef
  br label %.loopexit1929.us.i

.loopexit1929.us.i.loopexit995:                   ; preds = %bb.amm
  %.not1859.us.i = icmp eq i32 %i.fcn, 0
  %i.feg = zext i1 %.not1859.us.i to i32
  %.25.us.i = select i1 %i.fcl, i32 %i.feg, i32 %i.fcn
  br label %.loopexit1929.us.i

.loopexit1929.us.i:                               ; preds = %.loopexit1929.us.i.loopexit995, %.loopexit1929.us.i.loopexit, %bb.ame
  %.791535.us.i = phi i32 [ %i.fcg, %bb.ame ], [ %i.fec, %.loopexit1929.us.i.loopexit ], [ %i.fdf, %.loopexit1929.us.i.loopexit995 ]
  %.491416.us.i = phi i32 [ %i.fcc, %bb.ame ], [ %i.feb, %.loopexit1929.us.i.loopexit ], [ %i.fde, %.loopexit1929.us.i.loopexit995 ]
  %.79.us.i = phi i32 [ %.72.us.i, %bb.ame ], [ %i.fed, %.loopexit1929.us.i.loopexit ], [ %i.fdg, %.loopexit1929.us.i.loopexit995 ]
  %.26.us.i = phi i32 [ %i.fck, %bb.ame ], [ %.24.us.i, %.loopexit1929.us.i.loopexit ], [ %.25.us.i, %.loopexit1929.us.i.loopexit995 ] ; 2 uses
  %i.feh = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.fbv
  %i.fei = load i8, ptr %i.feh, align 1, !tbaa !56
  %i.fej = zext i8 %i.fei to i32                  ; 2 uses
  %i.fek = xor i32 %.26.us.i, %i.fej              ; 2 uses
  %.not1862.us.i = icmp eq i32 %.26.us.i, %i.fej
  %i.fel = select i1 %.not1862.us.i, i32 %i.dds, i32 %i.ddz
  %i.fem = getelementptr inbounds nuw [4 x i8], ptr %.116122076.us.i, i64 %i.dee
  store i32 %i.fel, ptr %i.fem, align 4, !tbaa !6
  %i.fen = load i32, ptr %i.fbg, align 4, !tbaa !6
  %i.feo = or i32 %i.fen, 16384
  store i32 %i.feo, ptr %i.fbg, align 4, !tbaa !6
  %i.fep = shl i32 %i.fek, 28
  %i.feq = or i32 %i.fep, %.413011920.us.i
  %i.fer = load i32, ptr %i.fbi, align 4, !tbaa !6
  %i.fes = or i32 %i.fer, 4096
  store i32 %i.fes, ptr %i.fbi, align 4, !tbaa !6
  br label %.sink.split.i206

.sink.split.i206:                                 ; preds = %.loopexit1929.us.i, %.loopexit1949.us.i
  %.sink2552.i = phi i32 [ %i.fek, %.loopexit1929.us.i ], [ %i.ecf, %.loopexit1949.us.i ]
  %.71606.us.ph.i = phi ptr [ %i.fbz, %.loopexit1929.us.i ], [ %i.dzu, %.loopexit1949.us.i ]
  %.1411597.us.ph.i = phi i32 [ %.791535.us.i, %.loopexit1929.us.i ], [ %.1401596.us.i, %.loopexit1949.us.i ]
  %.871454.us.ph.i = phi i32 [ %.491416.us.i, %.loopexit1929.us.i ], [ %.861453.us.i, %.loopexit1949.us.i ]
  %.141.us.ph.i = phi i32 [ %.79.us.i, %.loopexit1929.us.i ], [ %.140.us.i, %.loopexit1949.us.i ]
  %.10.us.ph.in.i = phi i32 [ %i.feq, %.loopexit1929.us.i ], [ %i.ecl, %.loopexit1949.us.i ]
  %.10.us.ph.i = or i32 %.10.us.ph.in.i, 8192
  %i.fet = load i32, ptr %i.a, align 8, !tbaa !91
  %i.feu = add i32 %i.fet, 2
  %i.fev = zext i32 %i.feu to i64
  %i.few = getelementptr inbounds nuw [4 x i8], ptr %.116092077.us.i, i64 %i.fev ; 4 uses
  %i.fex = shl i32 %.sink2552.i, 18
  %11 = load i32, ptr %i.few, align 4, !tbaa !6
  %12 = or i32 %i.fex, %11
  %i.fey = or i32 %12, 2
  store i32 %i.fey, ptr %i.few, align 4, !tbaa !6
  %i.fez = getelementptr inbounds i8, ptr %i.few, i64 -4 ; 2 uses
  %i.ffa = load i32, ptr %i.fez, align 4, !tbaa !6
  %i.ffb = or i32 %i.ffa, 4
  store i32 %i.ffb, ptr %i.fez, align 4, !tbaa !6
  %i.ffc = getelementptr inbounds nuw i8, ptr %i.few, i64 4 ; 2 uses
  %i.ffd = load i32, ptr %i.ffc, align 4, !tbaa !6
  %i.ffe = or i32 %i.ffd, 1
  store i32 %i.ffe, ptr %i.ffc, align 4, !tbaa !6
  br label %bb.amv

bb.amv:                                           ; preds = %.sink.split.i206, %.loopexit1931.us.i, %.loopexit1943.us.i, %.loopexit1951.us.i, %bb.aef
  %.71606.us.i = phi ptr [ %i.dwu, %.loopexit1951.us.i ], [ %.61605.us.i, %bb.aef ], [ %i.deg, %.loopexit1943.us.i ], [ %i.eyy, %.loopexit1931.us.i ], [ %.71606.us.ph.i, %.sink.split.i206 ]
  %.1411597.us.i = phi i32 [ %.1331589.us.i, %.loopexit1951.us.i ], [ %.1261582.us.i, %bb.aef ], [ %.221478.us.i, %.loopexit1943.us.i ], [ %.711527.us.i, %.loopexit1931.us.i ], [ %.1411597.us.ph.i, %.sink.split.i206 ]
  %.871454.us.i = phi i32 [ %.821449.us.i, %.loopexit1951.us.i ], [ %.781445.us.i, %bb.aef ], [ %.131380.us.i, %.loopexit1943.us.i ], [ %.441411.us.i, %.loopexit1931.us.i ], [ %.871454.us.ph.i, %.sink.split.i206 ]
  %.141.us.i = phi i32 [ %.133.us.i, %.loopexit1951.us.i ], [ %.126.us.i, %bb.aef ], [ %.221338.us.i, %.loopexit1943.us.i ], [ %.71.us.i, %.loopexit1931.us.i ], [ %.141.us.ph.i, %.sink.split.i206 ]
  %.10.us.i = phi i32 [ %.9.us.i, %.loopexit1951.us.i ], [ %.9.us.i, %bb.aef ], [ 0, %.loopexit1943.us.i ], [ %.41301.ph.us.i, %.loopexit1931.us.i ], [ %.10.us.ph.i, %.sink.split.i206 ]
  %i.fff = and i32 %.10.us.i, -1226833921
  store i32 %i.fff, ptr %.116092077.us.i, align 4, !tbaa !6
  br label %.thread1922.us.i

.thread1922.us.i:                                 ; preds = %bb.amv, %.loopexit1947.us.i
  %.81607.us.i = phi ptr [ %.71606.us.i, %bb.amv ], [ %i.def, %.loopexit1947.us.i ] ; 3 uses
  %.1421598.us.i = phi i32 [ %.1411597.us.i, %bb.amv ], [ %.81464.us.i, %.loopexit1947.us.i ] ; 3 uses
  %.881455.us.i = phi i32 [ %.871454.us.i, %bb.amv ], [ %.51372.us.i, %.loopexit1947.us.i ] ; 3 uses
  %.142.us.i = phi i32 [ %.141.us.i, %bb.amv ], [ %.81324.us.i, %.loopexit1947.us.i ] ; 3 uses
  %i.ffg = add nuw i32 %.016162075.us.i, 1        ; 2 uses
  %i.ffh = getelementptr inbounds nuw i8, ptr %.116122076.us.i, i64 4 ; 2 uses
  %i.ffi = getelementptr inbounds nuw i8, ptr %.116092077.us.i, i64 4
  %exitcond.not.i203 = icmp eq i32 %i.ffg, %i.b
  br i1 %exitcond.not.i203, label %._crit_edge.us.i, label %bb.zr, !llvm.loop !530

._crit_edge.us.i:                                 ; preds = %.thread1922.us.i
  %i.ffj = add nuw i32 %.016142087.us.i, 4        ; 3 uses
  %i.ffk = getelementptr inbounds nuw [4 x i8], ptr %i.ffh, i64 %i.dee ; 2 uses
  %i.ffl = getelementptr inbounds nuw i8, ptr %.116092077.us.i, i64 12 ; 2 uses
  %i.ffm = load i32, ptr %i.ddt, align 4, !tbaa !92 ; 2 uses
  %i.ffn = and i32 %i.ffm, -4
  %i.ffo = icmp ult i32 %i.ffj, %i.ffn
  br i1 %i.ffo, label %.preheader1965.us.i, label %._crit_edge2094.i, !llvm.loop !531

.preheader1965.lr.ph.split.i:                     ; preds = %.preheader1965.lr.ph.i
  %i.ffp = and i32 %i.ddu, -4
  %i.ffq = add i32 %i.ddu, -4
  %i.ffr = zext i32 %i.ffq to i64                 ; 2 uses
  %i.ffs = and i64 %i.ffr, 4294967292
  %i.fft = add nuw nsw i64 %i.ffs, 4
  %i.ffu = mul nuw nsw i64 %i.fft, %i.dee
  %scevgep.i = getelementptr i8, ptr %i.ddd, i64 %i.ffu
  %i.ffv = shl nuw nsw i64 %i.ffr, 1
  %i.ffw = and i64 %i.ffv, 8589934584
  %i.ffx = getelementptr i8, ptr %i.ddf, i64 %i.ffw
  %scevgep2250.i = getelementptr i8, ptr %i.ffx, i64 20
  br label %._crit_edge2094.i

._crit_edge2094.i:                                ; preds = %._crit_edge.us.i, %.preheader1965.lr.ph.split.i, %bb.zq
  %.01614.lcssa.i = phi i32 [ 0, %bb.zq ], [ %i.ffp, %.preheader1965.lr.ph.split.i ], [ %i.ffj, %._crit_edge.us.i ] ; 3 uses
  %.01611.lcssa.i = phi ptr [ %i.ddd, %bb.zq ], [ %scevgep.i, %.preheader1965.lr.ph.split.i ], [ %i.ffk, %._crit_edge.us.i ]
  %.01608.lcssa.i = phi ptr [ %i.ddi, %bb.zq ], [ %scevgep2250.i, %.preheader1965.lr.ph.split.i ], [ %i.ffl, %._crit_edge.us.i ]
  %.01599.lcssa.i = phi ptr [ %i.ddk, %bb.zq ], [ %i.ddk, %.preheader1965.lr.ph.split.i ], [ %.81607.us.i, %._crit_edge.us.i ]
  %.01456.lcssa.i = phi i32 [ %i.ddl, %bb.zq ], [ %i.ddl, %.preheader1965.lr.ph.split.i ], [ %.1421598.us.i, %._crit_edge.us.i ]
  %.01367.lcssa.i = phi i32 [ %i.ddn, %bb.zq ], [ %i.ddn, %.preheader1965.lr.ph.split.i ], [ %.881455.us.i, %._crit_edge.us.i ]
  %.01316.lcssa.i = phi i32 [ %i.ddp, %bb.zq ], [ %i.ddp, %.preheader1965.lr.ph.split.i ], [ %.142.us.i, %._crit_edge.us.i ]
  %.lcssa2073.i = phi i32 [ %i.ddu, %bb.zq ], [ %i.ddu, %.preheader1965.lr.ph.split.i ], [ %i.ffm, %._crit_edge.us.i ]
  store ptr %.01599.lcssa.i, ptr %i.ddj, align 8, !tbaa !96
  store i32 %.01456.lcssa.i, ptr %0, align 8, !tbaa !94
  store i32 %.01367.lcssa.i, ptr %i.ddm, align 4, !tbaa !97
  store i32 %.01316.lcssa.i, ptr %i.ddo, align 8, !tbaa !93
  %i.ffy = icmp ult i32 %.01614.lcssa.i, %.lcssa2073.i
  %i.ffz = icmp ne i32 %i.b, 0
  %or.cond.i = and i1 %i.ffz, %i.ffy
  br i1 %or.cond.i, label %.preheader.i205, label %opj_t1_dec_clnpass_generic_vsc.exit

.preheader.i205:                                  ; preds = %._crit_edge2094.i, %._crit_edge.i
  %.216102113.i = phi ptr [ %i.fgm, %._crit_edge.i ], [ %.01608.lcssa.i, %._crit_edge2094.i ] ; 4 uses
  %.216132112.i = phi ptr [ %i.fgn, %._crit_edge.i ], [ %.01611.lcssa.i, %._crit_edge2094.i ] ; 2 uses
  %.116172111.i = phi i32 [ %i.fgl, %._crit_edge.i ], [ 0, %._crit_edge2094.i ]
  %i.fga = load i32, ptr %i.ddt, align 4, !tbaa !92
  %.not2115.i = icmp eq i32 %i.fga, %.01614.lcssa.i
  br i1 %.not2115.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i205, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i205 ] ; 2 uses
  %i.fgb = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.fgc = mul i32 %i.b, %i.fgb
  %i.fgd = zext i32 %i.fgc to i64
  %i.fge = getelementptr inbounds nuw [4 x i8], ptr %.216132112.i, i64 %i.fgd
  tail call fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr noundef %.216102113.i, ptr noundef %i.fge, i32 noundef %i.dds, i32 noundef %i.fgb, i32 noundef 1)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fgf = load i32, ptr %i.ddt, align 4, !tbaa !92
  %i.fgg = sub i32 %i.fgf, %.01614.lcssa.i
  %i.fgh = zext i32 %i.fgg to i64
  %i.fgi = icmp samesign ult i64 %indvars.iv.next.i, %i.fgh
  br i1 %i.fgi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !532

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i205
  %i.fgj = load i32, ptr %.216102113.i, align 4, !tbaa !6
  %i.fgk = and i32 %i.fgj, -1226833921
  store i32 %i.fgk, ptr %.216102113.i, align 4, !tbaa !6
  %i.fgl = add nuw i32 %.116172111.i, 1           ; 2 uses
  %i.fgm = getelementptr inbounds nuw i8, ptr %.216102113.i, i64 4
  %i.fgn = getelementptr inbounds nuw i8, ptr %.216132112.i, i64 4
  %exitcond2252.not.i = icmp eq i32 %i.fgl, %i.b
  br i1 %exitcond2252.not.i, label %opj_t1_dec_clnpass_generic_vsc.exit, label %.preheader.i205, !llvm.loop !533

bb.amw:                                           ; preds = %bb.zp
  br i1 %.not.i208, label %._crit_edge2106.i, label %.preheader1977.lr.ph.i

.preheader1977.lr.ph.i:                           ; preds = %bb.amw
  %.not2126.i = icmp eq i32 %i.b, 0
  %i.fgo = getelementptr i8, ptr %0, i64 200      ; 7 uses
  %i.fgp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.fgq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 108 uses
  %i.fgr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 72 uses
  %i.fgs = sub nsw i32 0, %i.dds                  ; 8 uses
  %i.fgt = zext i32 %i.b to i64                   ; 2 uses
  %i.fgu = shl i32 %i.b, 1
  %i.fgv = zext i32 %i.fgu to i64                 ; 2 uses
  %i.fgw = mul i32 %i.b, 3
  %i.fgx = zext i32 %i.fgw to i64                 ; 4 uses
  %i.fgy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fgz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  br i1 %.not2126.i, label %.preheader1977.lr.ph.split.i, label %.preheader1977.us.i

.preheader1977.us.i:                              ; preds = %.preheader1977.lr.ph.i, %._crit_edge.us.i220
  %.013312105.us.i = phi i32 [ %.142.us.i218, %._crit_edge.us.i220 ], [ %i.ddp, %.preheader1977.lr.ph.i ]
  %.013822104.us.i = phi i32 [ %.881470.us.i, %._crit_edge.us.i220 ], [ %i.ddn, %.preheader1977.lr.ph.i ]
  %.014712103.us.i = phi i32 [ %.1421613.us.i, %._crit_edge.us.i220 ], [ %i.ddl, %.preheader1977.lr.ph.i ]
  %.016142102.us.i = phi ptr [ %.81622.us.i, %._crit_edge.us.i220 ], [ %i.ddk, %.preheader1977.lr.ph.i ]
  %.016232101.us.i = phi ptr [ %i.hje, %._crit_edge.us.i220 ], [ %i.ddi, %.preheader1977.lr.ph.i ]
  %.016262100.us.i = phi ptr [ %i.hjd, %._crit_edge.us.i220 ], [ %i.ddd, %.preheader1977.lr.ph.i ]
  %.016292099.us.i = phi i32 [ %i.hjc, %._crit_edge.us.i220 ], [ 0, %.preheader1977.lr.ph.i ]
  br label %bb.amx

bb.amx:                                           ; preds = %.thread1934.us.i, %.preheader1977.us.i
  %.113322093.us.i = phi i32 [ %.013312105.us.i, %.preheader1977.us.i ], [ %.142.us.i218, %.thread1934.us.i ] ; 7 uses
  %.113832092.us.i = phi i32 [ %.013822104.us.i, %.preheader1977.us.i ], [ %.881470.us.i, %.thread1934.us.i ] ; 3 uses
  %.114722091.us.i = phi i32 [ %.014712103.us.i, %.preheader1977.us.i ], [ %.1421613.us.i, %.thread1934.us.i ] ; 7 uses
  %.116152090.us.i = phi ptr [ %.016142102.us.i, %.preheader1977.us.i ], [ %.81622.us.i, %.thread1934.us.i ]
  %.116242089.us.i = phi ptr [ %.016232101.us.i, %.preheader1977.us.i ], [ %i.hjb, %.thread1934.us.i ] ; 23 uses
  %.116272088.us.i = phi ptr [ %.016262100.us.i, %.preheader1977.us.i ], [ %i.hja, %.thread1934.us.i ] ; 9 uses
  %.016312087.us.i = phi i32 [ 0, %.preheader1977.us.i ], [ %i.hiz, %.thread1934.us.i ]
  %i.fha = load i32, ptr %.116242089.us.i, align 4, !tbaa !6 ; 9 uses
  %i.fhb = icmp eq i32 %i.fha, 0
  br i1 %i.fhb, label %bb.asy, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  %i.fhc = and i32 %i.fha, 2097168
  %.not.us.i209 = icmp eq i32 %i.fhc, 0
  br i1 %.not.us.i209, label %bb.amz, label %bb.aol

bb.amz:                                           ; preds = %bb.amy
  %.val1883.us.i = load ptr, ptr %i.fgo, align 8, !tbaa !88
  %i.fhd = and i32 %i.fha, 495
  %i.fhe = zext nneg i32 %i.fhd to i64
  %i.fhf = getelementptr inbounds nuw i8, ptr %.val1883.us.i, i64 %i.fhe
  %i.fhg = load i8, ptr %i.fhf, align 1, !tbaa !56
  %i.fhh = zext i8 %i.fhg to i64
  %i.fhi = getelementptr inbounds nuw [8 x i8], ptr %i.fgp, i64 %i.fhh ; 4 uses
  %i.fhj = load ptr, ptr %i.fhi, align 8, !tbaa !99 ; 6 uses
  %i.fhk = load i32, ptr %i.fhj, align 8, !tbaa !101 ; 6 uses
  %i.fhl = sub i32 %.113832092.us.i, %i.fhk       ; 5 uses
  %i.fhm = lshr i32 %.114722091.us.i, 16
  %i.fhn = icmp ult i32 %i.fhm, %i.fhk
  br i1 %i.fhn, label %bb.ank, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %i.fho = shl nuw i32 %i.fhk, 16
  %i.fhp = sub i32 %.114722091.us.i, %i.fho       ; 2 uses
  %i.fhq = and i32 %i.fhl, 32768
  %i.fhr = icmp eq i32 %i.fhq, 0
  br i1 %i.fhr, label %bb.anc, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.fhs = getelementptr inbounds nuw i8, ptr %i.fhj, i64 4
  %i.fht = load i32, ptr %i.fhs, align 4, !tbaa !102
  br label %.loopexit1975.us.i

bb.anc:                                           ; preds = %bb.ana
  %i.fhu = icmp ult i32 %i.fhl, %i.fhk            ; 2 uses
  %i.fhv = getelementptr inbounds nuw i8, ptr %i.fhj, i64 4
  %i.fhw = load i32, ptr %i.fhv, align 4, !tbaa !102 ; 2 uses
  %.sink.i319 = select i1 %i.fhu, i64 16, i64 8
  %i.fhx = getelementptr inbounds nuw i8, ptr %i.fhj, i64 %.sink.i319
  %storemerge.us.i321 = load ptr, ptr %i.fhx, align 8, !tbaa !99
  store ptr %storemerge.us.i321, ptr %i.fhi, align 8, !tbaa !99
  br label %bb.and

bb.and:                                           ; preds = %bb.anj, %bb.anc
  %.851556.us.i = phi i32 [ %i.fhp, %bb.anc ], [ %i.fio, %bb.anj ] ; 4 uses
  %.541436.us.i = phi i32 [ %i.fhl, %bb.anc ], [ %i.fin, %bb.anj ]
  %.85.us.i322 = phi i32 [ %.113322093.us.i, %bb.anc ], [ %i.fip, %bb.anj ] ; 2 uses
  %i.fhy = icmp eq i32 %.85.us.i322, 0
  br i1 %i.fhy, label %bb.ane, label %bb.anj

bb.ane:                                           ; preds = %bb.and
  %i.fhz = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.fia = getelementptr inbounds nuw i8, ptr %i.fhz, i64 1 ; 3 uses
  %i.fib = load i8, ptr %i.fia, align 1, !tbaa !56 ; 2 uses
  %i.fic = zext i8 %i.fib to i32                  ; 2 uses
end_hunk_15
begin_hunk_16_@opj_t1_dec_clnpass:bb.a
  %.not1785.us.i = icmp eq i32 %.29.us.i305, 0
  br i1 %.not1785.us.i, label %bb.aol, label %bb.ans

bb.ans:                                           ; preds = %.loopexit1975.us.i
  %i.fjq = getelementptr inbounds i8, ptr %.116242089.us.i, i64 -4 ; 3 uses
  %i.fjr = load i32, ptr %i.fjq, align 4, !tbaa !6
  %i.fjs = getelementptr inbounds nuw i8, ptr %.116242089.us.i, i64 4 ; 3 uses
  %i.fjt = load i32, ptr %i.fjs, align 4, !tbaa !6
  %.pn.in.i1893.us.i = lshr i32 %i.fha, 14
  %i.fju = and i32 %i.fha, 170
  %i.fjv = lshr i32 %i.fjr, 19
  %i.fjw = and i32 %i.fjv, 1
  %i.fjx = lshr i32 %i.fjt, 17
  %i.fjy = and i32 %i.fjx, 4
  %.pn.i1894.us.i = and i32 %.pn.in.i1893.us.i, 16
  %i.fjz = lshr i32 %i.fha, 16
  %i.fka = and i32 %i.fjz, 64
  %i.fkb = or disjoint i32 %i.fka, %i.fju
  %i.fkc = or disjoint i32 %i.fkb, %.pn.i1894.us.i
  %.0.i1895.us.i = or disjoint i32 %i.fkc, %i.fjw
  %i.fkd = or disjoint i32 %.0.i1895.us.i, %i.fjy
  %i.fke = zext nneg i32 %i.fkd to i64            ; 2 uses
  %i.fkf = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.fke
  %i.fkg = load i8, ptr %i.fkf, align 1, !tbaa !56
  %i.fkh = zext i8 %i.fkg to i64
  %i.fki = getelementptr inbounds nuw [8 x i8], ptr %i.fgp, i64 %i.fkh ; 4 uses
  %i.fkj = load ptr, ptr %i.fki, align 8, !tbaa !99 ; 6 uses
  %i.fkk = load i32, ptr %i.fkj, align 8, !tbaa !101 ; 6 uses
  %i.fkl = sub i32 %.551437.us.i, %i.fkk          ; 5 uses
  %i.fkm = lshr i32 %.881559.us.i, 16
  %i.fkn = icmp ult i32 %i.fkm, %i.fkk
  br i1 %i.fkn, label %bb.aod, label %bb.ant

bb.ant:                                           ; preds = %bb.ans
  %i.fko = shl nuw i32 %i.fkk, 16
  %i.fkp = sub i32 %.881559.us.i, %i.fko          ; 2 uses
  %i.fkq = and i32 %i.fkl, 32768
  %i.fkr = icmp eq i32 %i.fkq, 0
  br i1 %i.fkr, label %bb.anv, label %bb.anu

bb.anu:                                           ; preds = %bb.ant
  %i.fks = getelementptr inbounds nuw i8, ptr %i.fkj, i64 4
  %i.fkt = load i32, ptr %i.fks, align 4, !tbaa !102
  br label %.loopexit1973.us.i

bb.anv:                                           ; preds = %bb.ant
  %i.fku = icmp ult i32 %i.fkl, %i.fkk            ; 2 uses
  %i.fkv = getelementptr inbounds nuw i8, ptr %i.fkj, i64 4
  %i.fkw = load i32, ptr %i.fkv, align 4, !tbaa !102 ; 2 uses
  %.sink2514.i310 = select i1 %i.fku, i64 16, i64 8
  %i.fkx = getelementptr inbounds nuw i8, ptr %i.fkj, i64 %.sink2514.i310
  %storemerge1786.us.i = load ptr, ptr %i.fkx, align 8, !tbaa !99
  store ptr %storemerge1786.us.i, ptr %i.fki, align 8, !tbaa !99
  br label %bb.anw

bb.anw:                                           ; preds = %bb.aoc, %bb.anv
  %.921563.us.i = phi i32 [ %i.fkp, %bb.anv ], [ %i.flo, %bb.aoc ] ; 4 uses
  %.581440.us.i = phi i32 [ %i.fkl, %bb.anv ], [ %i.fln, %bb.aoc ]
  %.92.us.i312 = phi i32 [ %.88.us.i304, %bb.anv ], [ %i.flp, %bb.aoc ] ; 2 uses
  %i.fky = icmp eq i32 %.92.us.i312, 0
  br i1 %i.fky, label %bb.anx, label %bb.aoc

bb.anx:                                           ; preds = %bb.anw
  %i.fkz = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.fla = getelementptr inbounds nuw i8, ptr %i.fkz, i64 1 ; 3 uses
  %i.flb = load i8, ptr %i.fla, align 1, !tbaa !56 ; 2 uses
  %i.flc = zext i8 %i.flb to i32                  ; 2 uses
  %i.fld = load i8, ptr %i.fkz, align 1, !tbaa !56
  %i.fle = icmp eq i8 %i.fld, -1
  br i1 %i.fle, label %bb.anz, label %bb.any

bb.any:                                           ; preds = %bb.anx
  store ptr %i.fla, ptr %i.fgq, align 8, !tbaa !95
  %i.flf = shl nuw nsw i32 %i.flc, 8
  %i.flg = add i32 %i.flf, %.921563.us.i
  br label %bb.aoc

bb.anz:                                           ; preds = %bb.anx
  %i.flh = icmp ugt i8 %i.flb, -113
  br i1 %i.flh, label %bb.aob, label %bb.aoa

bb.aoa:                                           ; preds = %bb.anz
  store ptr %i.fla, ptr %i.fgq, align 8, !tbaa !95
  %i.fli = shl nuw nsw i32 %i.flc, 9
  %i.flj = add i32 %i.fli, %.921563.us.i
  br label %bb.aoc

bb.aob:                                           ; preds = %bb.anz
  %i.flk = add i32 %.921563.us.i, 65280
  %i.fll = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.flm = add i32 %i.fll, 1
  store i32 %i.flm, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.aoc

bb.aoc:                                           ; preds = %bb.aob, %bb.aoa, %bb.any, %bb.anw
  %.941565.us.i = phi i32 [ %.921563.us.i, %bb.anw ], [ %i.flk, %bb.aob ], [ %i.flj, %bb.aoa ], [ %i.flg, %bb.any ]
  %.94.us.i313 = phi i32 [ %.92.us.i312, %bb.anw ], [ 8, %bb.aob ], [ 7, %bb.aoa ], [ 8, %bb.any ]
  %i.fln = shl i32 %.581440.us.i, 1               ; 3 uses
  %i.flo = shl i32 %.941565.us.i, 1               ; 2 uses
  %i.flp = add i32 %.94.us.i313, -1               ; 2 uses
  %i.flq = icmp ult i32 %i.fln, 32768
  br i1 %i.flq, label %bb.anw, label %.loopexit1973.us.i.loopexit992, !llvm.loop !536

bb.aod:                                           ; preds = %bb.ans
  %i.flr = icmp ult i32 %i.fkl, %i.fkk            ; 2 uses
  %i.fls = getelementptr inbounds nuw i8, ptr %i.fkj, i64 4
  %i.flt = load i32, ptr %i.fls, align 4, !tbaa !102 ; 2 uses
  %.sink2515.i314 = select i1 %i.flr, i64 8, i64 16
  %i.flu = getelementptr inbounds nuw i8, ptr %i.fkj, i64 %.sink2515.i314
  %storemerge1789.us.i = load ptr, ptr %i.flu, align 8, !tbaa !99
  store ptr %storemerge1789.us.i, ptr %i.fki, align 8, !tbaa !99
  br label %bb.aoe

bb.aoe:                                           ; preds = %bb.aok, %bb.aod
  %.891560.us.i = phi i32 [ %.881559.us.i, %bb.aod ], [ %i.fml, %bb.aok ] ; 4 uses
  %.571439.us.i = phi i32 [ %i.fkk, %bb.aod ], [ %i.fmk, %bb.aok ]
  %.89.us.i316 = phi i32 [ %.88.us.i304, %bb.aod ], [ %i.fmm, %bb.aok ] ; 2 uses
  %i.flv = icmp eq i32 %.89.us.i316, 0
  br i1 %i.flv, label %bb.aof, label %bb.aok

bb.aof:                                           ; preds = %bb.aoe
  %i.flw = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.flx = getelementptr inbounds nuw i8, ptr %i.flw, i64 1 ; 3 uses
  %i.fly = load i8, ptr %i.flx, align 1, !tbaa !56 ; 2 uses
  %i.flz = zext i8 %i.fly to i32                  ; 2 uses
  %i.fma = load i8, ptr %i.flw, align 1, !tbaa !56
  %i.fmb = icmp eq i8 %i.fma, -1
  br i1 %i.fmb, label %bb.aoh, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  store ptr %i.flx, ptr %i.fgq, align 8, !tbaa !95
  %i.fmc = shl nuw nsw i32 %i.flz, 8
  %i.fmd = add i32 %i.fmc, %.891560.us.i
  br label %bb.aok

bb.aoh:                                           ; preds = %bb.aof
  %i.fme = icmp ugt i8 %i.fly, -113
  br i1 %i.fme, label %bb.aoj, label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoh
  store ptr %i.flx, ptr %i.fgq, align 8, !tbaa !95
  %i.fmf = shl nuw nsw i32 %i.flz, 9
  %i.fmg = add i32 %i.fmf, %.891560.us.i
  br label %bb.aok

bb.aoj:                                           ; preds = %bb.aoh
  %i.fmh = add i32 %.891560.us.i, 65280
  %i.fmi = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.fmj = add i32 %i.fmi, 1
  store i32 %i.fmj, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.aok

bb.aok:                                           ; preds = %bb.aoj, %bb.aoi, %bb.aog, %bb.aoe
  %.911562.us.i = phi i32 [ %.891560.us.i, %bb.aoe ], [ %i.fmh, %bb.aoj ], [ %i.fmg, %bb.aoi ], [ %i.fmd, %bb.aog ]
  %.91.us.i317 = phi i32 [ %.89.us.i316, %bb.aoe ], [ 8, %bb.aoj ], [ 7, %bb.aoi ], [ 8, %bb.aog ]
  %i.fmk = shl i32 %.571439.us.i, 1               ; 3 uses
  %i.fml = shl i32 %.911562.us.i, 1               ; 2 uses
  %i.fmm = add i32 %.91.us.i317, -1               ; 2 uses
  %i.fmn = icmp ult i32 %i.fmk, 32768
  br i1 %i.fmn, label %bb.aoe, label %.loopexit1973.us.i.loopexit, !llvm.loop !537

.loopexit1973.us.i.loopexit:                      ; preds = %bb.aok
  %.not1788.us.i = icmp eq i32 %i.flt, 0
  %i.fmo = zext i1 %.not1788.us.i to i32
  %.30.us.i315 = select i1 %i.flr, i32 %i.flt, i32 %i.fmo
  br label %.loopexit1973.us.i

.loopexit1973.us.i.loopexit992:                   ; preds = %bb.aoc
  %.not1787.us.i309 = icmp eq i32 %i.fkw, 0
  %i.fmp = zext i1 %.not1787.us.i309 to i32
  %.31.us.i311 = select i1 %i.fku, i32 %i.fmp, i32 %i.fkw
  br label %.loopexit1973.us.i

.loopexit1973.us.i:                               ; preds = %.loopexit1973.us.i.loopexit992, %.loopexit1973.us.i.loopexit, %bb.anu
  %.951566.us.i = phi i32 [ %i.fkp, %bb.anu ], [ %i.fml, %.loopexit1973.us.i.loopexit ], [ %i.flo, %.loopexit1973.us.i.loopexit992 ]
  %.591441.us.i = phi i32 [ %i.fkl, %bb.anu ], [ %i.fmk, %.loopexit1973.us.i.loopexit ], [ %i.fln, %.loopexit1973.us.i.loopexit992 ]
  %.95.us.i306 = phi i32 [ %.88.us.i304, %bb.anu ], [ %i.fmm, %.loopexit1973.us.i.loopexit ], [ %i.flp, %.loopexit1973.us.i.loopexit992 ]
  %.32.us.i307 = phi i32 [ %i.fkt, %bb.anu ], [ %.30.us.i315, %.loopexit1973.us.i.loopexit ], [ %.31.us.i311, %.loopexit1973.us.i.loopexit992 ] ; 2 uses
  %i.fmq = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.fke
  %i.fmr = load i8, ptr %i.fmq, align 1, !tbaa !56
  %i.fms = zext i8 %i.fmr to i32                  ; 2 uses
  %i.fmt = xor i32 %.32.us.i307, %i.fms           ; 2 uses
  %.not1790.us.i308 = icmp eq i32 %.32.us.i307, %i.fms
  %i.fmu = select i1 %.not1790.us.i308, i32 %i.dds, i32 %i.fgs
  store i32 %i.fmu, ptr %.116272088.us.i, align 4, !tbaa !6
  %i.fmv = load i32, ptr %i.fjq, align 4, !tbaa !6
  %i.fmw = or i32 %i.fmv, 32
  store i32 %i.fmw, ptr %i.fjq, align 4, !tbaa !6
  %i.fmx = shl i32 %i.fmt, 19
  %i.fmy = or i32 %i.fha, %i.fmx
  %i.fmz = or disjoint i32 %i.fmy, 16
  %i.fna = load i32, ptr %i.fjs, align 4, !tbaa !6
  %i.fnb = or i32 %i.fna, 8
  store i32 %i.fnb, ptr %i.fjs, align 4, !tbaa !6
  %i.fnc = load i32, ptr %i.a, align 8, !tbaa !91
  %i.fnd = add i32 %i.fnc, 2
  %i.fne = zext i32 %i.fnd to i64
  %i.fnf = sub nsw i64 0, %i.fne
  %i.fng = getelementptr inbounds [4 x i8], ptr %.116242089.us.i, i64 %i.fnf ; 4 uses
  %i.fnh = shl i32 %i.fmt, 31
  %13 = load i32, ptr %i.fng, align 4, !tbaa !6
  %14 = or i32 %i.fnh, %13
  %i.fni = or i32 %14, 65536
  store i32 %i.fni, ptr %i.fng, align 4, !tbaa !6
  %i.fnj = getelementptr inbounds i8, ptr %i.fng, i64 -4 ; 2 uses
  %i.fnk = load i32, ptr %i.fnj, align 4, !tbaa !6
  %i.fnl = or i32 %i.fnk, 131072
  store i32 %i.fnl, ptr %i.fnj, align 4, !tbaa !6
  %i.fnm = getelementptr inbounds nuw i8, ptr %i.fng, i64 4 ; 2 uses
  %i.fnn = load i32, ptr %i.fnm, align 4, !tbaa !6
  %i.fno = or i32 %i.fnn, 32768
  store i32 %i.fno, ptr %i.fnm, align 4, !tbaa !6
  br label %bb.aol

bb.aol:                                           ; preds = %.loopexit1973.us.i, %.loopexit1975.us.i, %bb.amy
  %.41618.us.i = phi ptr [ %.116152090.us.i, %bb.amy ], [ %i.fki, %.loopexit1973.us.i ], [ %i.fhi, %.loopexit1975.us.i ]
  %.961567.us.i = phi i32 [ %.114722091.us.i, %bb.amy ], [ %.951566.us.i, %.loopexit1973.us.i ], [ %.881559.us.i, %.loopexit1975.us.i ] ; 4 uses
  %.601442.us.i = phi i32 [ %.113832092.us.i, %bb.amy ], [ %.591441.us.i, %.loopexit1973.us.i ], [ %.551437.us.i, %.loopexit1975.us.i ] ; 2 uses
  %.96.us.i210 = phi i32 [ %.113322093.us.i, %bb.amy ], [ %.95.us.i306, %.loopexit1973.us.i ], [ %.88.us.i304, %.loopexit1975.us.i ] ; 4 uses
  %.71319.us.i = phi i32 [ %i.fha, %bb.amy ], [ %i.fmz, %.loopexit1973.us.i ], [ %i.fha, %.loopexit1975.us.i ] ; 7 uses
  %i.fnp = and i32 %.71319.us.i, 16777344
  %.not1791.us.i = icmp eq i32 %i.fnp, 0
  br i1 %.not1791.us.i, label %bb.aom, label %bb.apy

bb.aom:                                           ; preds = %bb.aol
  %i.fnq = lshr i32 %.71319.us.i, 3               ; 2 uses
  %.val1882.us.i = load ptr, ptr %i.fgo, align 8, !tbaa !88
  %i.fnr = and i32 %i.fnq, 495
  %i.fns = zext nneg i32 %i.fnr to i64
  %i.fnt = getelementptr inbounds nuw i8, ptr %.val1882.us.i, i64 %i.fns
  %i.fnu = load i8, ptr %i.fnt, align 1, !tbaa !56
  %i.fnv = zext i8 %i.fnu to i64
  %i.fnw = getelementptr inbounds nuw [8 x i8], ptr %i.fgp, i64 %i.fnv ; 4 uses
  %i.fnx = load ptr, ptr %i.fnw, align 8, !tbaa !99 ; 6 uses
  %i.fny = load i32, ptr %i.fnx, align 8, !tbaa !101 ; 6 uses
  %i.fnz = sub i32 %.601442.us.i, %i.fny          ; 5 uses
  %i.foa = lshr i32 %.961567.us.i, 16
  %i.fob = icmp ult i32 %i.foa, %i.fny
  br i1 %i.fob, label %bb.aox, label %bb.aon

bb.aon:                                           ; preds = %bb.aom
  %i.foc = shl nuw i32 %i.fny, 16
  %i.fod = sub i32 %.961567.us.i, %i.foc          ; 2 uses
  %i.foe = and i32 %i.fnz, 32768
  %i.fof = icmp eq i32 %i.foe, 0
  br i1 %i.fof, label %bb.aop, label %bb.aoo

bb.aoo:                                           ; preds = %bb.aon
  %i.fog = getelementptr inbounds nuw i8, ptr %i.fnx, i64 4
  %i.foh = load i32, ptr %i.fog, align 4, !tbaa !102
  br label %.loopexit1971.us.i

bb.aop:                                           ; preds = %bb.aon
  %i.foi = icmp ult i32 %i.fnz, %i.fny            ; 2 uses
  %i.foj = getelementptr inbounds nuw i8, ptr %i.fnx, i64 4
  %i.fok = load i32, ptr %i.foj, align 4, !tbaa !102 ; 2 uses
  %.sink2516.i296 = select i1 %i.foi, i64 16, i64 8
  %i.fol = getelementptr inbounds nuw i8, ptr %i.fnx, i64 %.sink2516.i296
  %storemerge1792.us.i = load ptr, ptr %i.fol, align 8, !tbaa !99
  store ptr %storemerge1792.us.i, ptr %i.fnw, align 8, !tbaa !99
  br label %bb.aoq

bb.aoq:                                           ; preds = %bb.aow, %bb.aop
  %.1001571.us.i = phi i32 [ %i.fod, %bb.aop ], [ %i.fpc, %bb.aow ] ; 4 uses
  %.631445.us.i = phi i32 [ %i.fnz, %bb.aop ], [ %i.fpb, %bb.aow ]
  %.100.us.i298 = phi i32 [ %.96.us.i210, %bb.aop ], [ %i.fpd, %bb.aow ] ; 2 uses
  %i.fom = icmp eq i32 %.100.us.i298, 0
  br i1 %i.fom, label %bb.aor, label %bb.aow

bb.aor:                                           ; preds = %bb.aoq
  %i.fon = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.foo = getelementptr inbounds nuw i8, ptr %i.fon, i64 1 ; 3 uses
  %i.fop = load i8, ptr %i.foo, align 1, !tbaa !56 ; 2 uses
  %i.foq = zext i8 %i.fop to i32                  ; 2 uses
  %i.for = load i8, ptr %i.fon, align 1, !tbaa !56
  %i.fos = icmp eq i8 %i.for, -1
  br i1 %i.fos, label %bb.aot, label %bb.aos

bb.aos:                                           ; preds = %bb.aor
  store ptr %i.foo, ptr %i.fgq, align 8, !tbaa !95
  %i.fot = shl nuw nsw i32 %i.foq, 8
  %i.fou = add i32 %i.fot, %.1001571.us.i
  br label %bb.aow

bb.aot:                                           ; preds = %bb.aor
  %i.fov = icmp ugt i8 %i.fop, -113
  br i1 %i.fov, label %bb.aov, label %bb.aou

bb.aou:                                           ; preds = %bb.aot
  store ptr %i.foo, ptr %i.fgq, align 8, !tbaa !95
  %i.fow = shl nuw nsw i32 %i.foq, 9
  %i.fox = add i32 %i.fow, %.1001571.us.i
  br label %bb.aow

bb.aov:                                           ; preds = %bb.aot
  %i.foy = add i32 %.1001571.us.i, 65280
  %i.foz = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.fpa = add i32 %i.foz, 1
  store i32 %i.fpa, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.aow

bb.aow:                                           ; preds = %bb.aov, %bb.aou, %bb.aos, %bb.aoq
  %.1021573.us.i = phi i32 [ %.1001571.us.i, %bb.aoq ], [ %i.foy, %bb.aov ], [ %i.fox, %bb.aou ], [ %i.fou, %bb.aos ]
  %.102.us.i299 = phi i32 [ %.100.us.i298, %bb.aoq ], [ 8, %bb.aov ], [ 7, %bb.aou ], [ 8, %bb.aos ]
  %i.fpb = shl i32 %.631445.us.i, 1               ; 3 uses
  %i.fpc = shl i32 %.1021573.us.i, 1              ; 2 uses
  %i.fpd = add i32 %.102.us.i299, -1              ; 2 uses
  %i.fpe = icmp ult i32 %i.fpb, 32768
  br i1 %i.fpe, label %bb.aoq, label %.loopexit1971.us.i.loopexit991, !llvm.loop !538

bb.aox:                                           ; preds = %bb.aom
  %i.fpf = icmp ult i32 %i.fnz, %i.fny            ; 2 uses
  %i.fpg = getelementptr inbounds nuw i8, ptr %i.fnx, i64 4
  %i.fph = load i32, ptr %i.fpg, align 4, !tbaa !102 ; 2 uses
  %.sink2517.i300 = select i1 %i.fpf, i64 8, i64 16
  %i.fpi = getelementptr inbounds nuw i8, ptr %i.fnx, i64 %.sink2517.i300
  %storemerge1795.us.i = load ptr, ptr %i.fpi, align 8, !tbaa !99
  store ptr %storemerge1795.us.i, ptr %i.fnw, align 8, !tbaa !99
  br label %bb.aoy

bb.aoy:                                           ; preds = %bb.ape, %bb.aox
  %.971568.us.i = phi i32 [ %.961567.us.i, %bb.aox ], [ %i.fpz, %bb.ape ] ; 4 uses
  %.621444.us.i = phi i32 [ %i.fny, %bb.aox ], [ %i.fpy, %bb.ape ]
  %.97.us.i302 = phi i32 [ %.96.us.i210, %bb.aox ], [ %i.fqa, %bb.ape ] ; 2 uses
  %i.fpj = icmp eq i32 %.97.us.i302, 0
  br i1 %i.fpj, label %bb.aoz, label %bb.ape

bb.aoz:                                           ; preds = %bb.aoy
  %i.fpk = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.fpl = getelementptr inbounds nuw i8, ptr %i.fpk, i64 1 ; 3 uses
  %i.fpm = load i8, ptr %i.fpl, align 1, !tbaa !56 ; 2 uses
  %i.fpn = zext i8 %i.fpm to i32                  ; 2 uses
  %i.fpo = load i8, ptr %i.fpk, align 1, !tbaa !56
  %i.fpp = icmp eq i8 %i.fpo, -1
  br i1 %i.fpp, label %bb.apb, label %bb.apa

bb.apa:                                           ; preds = %bb.aoz
  store ptr %i.fpl, ptr %i.fgq, align 8, !tbaa !95
  %i.fpq = shl nuw nsw i32 %i.fpn, 8
  %i.fpr = add i32 %i.fpq, %.971568.us.i
  br label %bb.ape

bb.apb:                                           ; preds = %bb.aoz
  %i.fps = icmp ugt i8 %i.fpm, -113
  br i1 %i.fps, label %bb.apd, label %bb.apc

bb.apc:                                           ; preds = %bb.apb
  store ptr %i.fpl, ptr %i.fgq, align 8, !tbaa !95
  %i.fpt = shl nuw nsw i32 %i.fpn, 9
  %i.fpu = add i32 %i.fpt, %.971568.us.i
  br label %bb.ape

bb.apd:                                           ; preds = %bb.apb
  %i.fpv = add i32 %.971568.us.i, 65280
  %i.fpw = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.fpx = add i32 %i.fpw, 1
  store i32 %i.fpx, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.ape

bb.ape:                                           ; preds = %bb.apd, %bb.apc, %bb.apa, %bb.aoy
  %.991570.us.i = phi i32 [ %.971568.us.i, %bb.aoy ], [ %i.fpv, %bb.apd ], [ %i.fpu, %bb.apc ], [ %i.fpr, %bb.apa ]
  %.99.us.i303 = phi i32 [ %.97.us.i302, %bb.aoy ], [ 8, %bb.apd ], [ 7, %bb.apc ], [ 8, %bb.apa ]
  %i.fpy = shl i32 %.621444.us.i, 1               ; 3 uses
  %i.fpz = shl i32 %.991570.us.i, 1               ; 2 uses
  %i.fqa = add i32 %.99.us.i303, -1               ; 2 uses
  %i.fqb = icmp ult i32 %i.fpy, 32768
  br i1 %i.fqb, label %bb.aoy, label %.loopexit1971.us.i.loopexit, !llvm.loop !539

.loopexit1971.us.i.loopexit:                      ; preds = %bb.ape
  %.not1794.us.i = icmp eq i32 %i.fph, 0
  %i.fqc = zext i1 %.not1794.us.i to i32
  %.33.us.i301 = select i1 %i.fpf, i32 %i.fph, i32 %i.fqc
  br label %.loopexit1971.us.i

.loopexit1971.us.i.loopexit991:                   ; preds = %bb.aow
  %.not1793.us.i295 = icmp eq i32 %i.fok, 0
  %i.fqd = zext i1 %.not1793.us.i295 to i32
  %.34.us.i297 = select i1 %i.foi, i32 %i.fqd, i32 %i.fok
  br label %.loopexit1971.us.i

.loopexit1971.us.i:                               ; preds = %.loopexit1971.us.i.loopexit991, %.loopexit1971.us.i.loopexit, %bb.aoo
  %.1031574.us.i = phi i32 [ %i.fod, %bb.aoo ], [ %i.fpz, %.loopexit1971.us.i.loopexit ], [ %i.fpc, %.loopexit1971.us.i.loopexit991 ] ; 4 uses
  %.641446.us.i = phi i32 [ %i.fnz, %bb.aoo ], [ %i.fpy, %.loopexit1971.us.i.loopexit ], [ %i.fpb, %.loopexit1971.us.i.loopexit991 ] ; 2 uses
  %.103.us.i281 = phi i32 [ %.96.us.i210, %bb.aoo ], [ %i.fqa, %.loopexit1971.us.i.loopexit ], [ %i.fpd, %.loopexit1971.us.i.loopexit991 ] ; 4 uses
  %.35.us.i282 = phi i32 [ %i.foh, %bb.aoo ], [ %.33.us.i301, %.loopexit1971.us.i.loopexit ], [ %.34.us.i297, %.loopexit1971.us.i.loopexit991 ]
  %.not1796.us.i = icmp eq i32 %.35.us.i282, 0
  br i1 %.not1796.us.i, label %bb.apy, label %bb.apf

bb.apf:                                           ; preds = %.loopexit1971.us.i
  %i.fqe = getelementptr inbounds i8, ptr %.116242089.us.i, i64 -4 ; 3 uses
  %i.fqf = load i32, ptr %i.fqe, align 4, !tbaa !6
  %i.fqg = getelementptr inbounds nuw i8, ptr %.116242089.us.i, i64 4 ; 3 uses
  %i.fqh = load i32, ptr %i.fqg, align 4, !tbaa !6
  %.pn.in.i1896.us.i = lshr i32 %.71319.us.i, 15
  %i.fqi = and i32 %i.fnq, 170
  %i.fqj = lshr i32 %i.fqf, 22
  %i.fqk = and i32 %i.fqj, 1
  %i.fql = lshr i32 %i.fqh, 20
  %i.fqm = and i32 %i.fql, 4
  %.pn.i1897.us.i = and i32 %.pn.in.i1896.us.i, 16
  %i.fqn = lshr i32 %.71319.us.i, 19
  %i.fqo = and i32 %i.fqn, 64
  %i.fqp = or disjoint i32 %i.fqo, %i.fqi
end_hunk_16
begin_hunk_17_@opj_t1_dec_clnpass:bb.a
  %.131395.us.i = phi i32 [ %i.gkk, %bb.aul ], [ %i.gmj, %.loopexit1955.us.i330.loopexit ], [ %i.glm, %.loopexit1955.us.i330.loopexit983 ] ; 5 uses
  %.221353.us.i = phi i32 [ %.151346.us.i, %bb.aul ], [ %i.gml, %.loopexit1955.us.i330.loopexit ], [ %i.glo, %.loopexit1955.us.i330.loopexit983 ] ; 7 uses
  %.51325.us.i = phi i32 [ %i.gks, %bb.aul ], [ %.31323.us.i, %.loopexit1955.us.i330.loopexit ], [ %.41324.us.i, %.loopexit1955.us.i330.loopexit983 ]
  %i.gmp = shl i32 %.2.us.i, 1
  %i.gmq = or i32 %.51325.us.i, %i.gmp
  switch i32 %i.gmq, label %bb.bab [
    i32 0, label %bb.avc
    i32 1, label %.thread.us.i368
    i32 2, label %.loopexit1955.us._crit_edge.i
    i32 3, label %.loopexit1955.us._crit_edge2267.i
  ]

bb.avc:                                           ; preds = %.loopexit1955.us.i330
  %i.gmr = getelementptr inbounds i8, ptr %.116242089.us.i, i64 -4 ; 3 uses
  %i.gms = load i32, ptr %i.gmr, align 4, !tbaa !6
  %i.gmt = getelementptr inbounds nuw i8, ptr %.116242089.us.i, i64 4 ; 3 uses
  %i.gmu = load i32, ptr %i.gmt, align 4, !tbaa !6
  %i.gmv = lshr i32 %i.gms, 19
  %i.gmw = and i32 %i.gmv, 1
  %i.gmx = lshr i32 %i.gmu, 17
  %i.gmy = and i32 %i.gmx, 4
  %i.gmz = or disjoint i32 %i.gmy, %i.gmw
  %i.gna = zext nneg i32 %i.gmz to i64            ; 2 uses
  %i.gnb = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.gna
  %i.gnc = load i8, ptr %i.gnb, align 1, !tbaa !56
  %i.gnd = zext i8 %i.gnc to i64
  %i.gne = getelementptr inbounds nuw [8 x i8], ptr %i.fgp, i64 %i.gnd ; 3 uses
  %i.gnf = load ptr, ptr %i.gne, align 8, !tbaa !99 ; 6 uses
  %i.gng = load i32, ptr %i.gnf, align 8, !tbaa !101 ; 6 uses
  %i.gnh = sub i32 %.131395.us.i, %i.gng          ; 5 uses
  %i.gni = lshr i32 %.221493.us.i, 16
  %i.gnj = icmp ult i32 %i.gni, %i.gng
  br i1 %i.gnj, label %bb.avn, label %bb.avd

bb.avd:                                           ; preds = %bb.avc
  %i.gnk = shl nuw i32 %i.gng, 16
  %i.gnl = sub i32 %.221493.us.i, %i.gnk          ; 2 uses
  %i.gnm = and i32 %i.gnh, 32768
  %i.gnn = icmp eq i32 %i.gnm, 0
  br i1 %i.gnn, label %bb.avf, label %bb.ave

bb.ave:                                           ; preds = %bb.avd
  %i.gno = getelementptr inbounds nuw i8, ptr %i.gnf, i64 4
  %i.gnp = load i32, ptr %i.gno, align 4, !tbaa !102
  br label %.loopexit1953.us.i385

bb.avf:                                           ; preds = %bb.avd
  %i.gnq = icmp ult i32 %i.gnh, %i.gng            ; 2 uses
  %i.gnr = getelementptr inbounds nuw i8, ptr %i.gnf, i64 4
  %i.gns = load i32, ptr %i.gnr, align 4, !tbaa !102 ; 2 uses
  %.sink2534.i390 = select i1 %i.gnq, i64 16, i64 8
  %i.gnt = getelementptr inbounds nuw i8, ptr %i.gnf, i64 %.sink2534.i390
  %storemerge1837.us.i = load ptr, ptr %i.gnt, align 8, !tbaa !99
  store ptr %storemerge1837.us.i, ptr %i.gne, align 8, !tbaa !99
  br label %bb.avg

bb.avg:                                           ; preds = %bb.avm, %bb.avf
  %.261497.us.i = phi i32 [ %i.gnl, %bb.avf ], [ %i.gok, %bb.avm ] ; 4 uses
  %.161398.us.i = phi i32 [ %i.gnh, %bb.avf ], [ %i.goj, %bb.avm ]
  %.261357.us.i = phi i32 [ %.221353.us.i, %bb.avf ], [ %i.gol, %bb.avm ] ; 2 uses
  %i.gnu = icmp eq i32 %.261357.us.i, 0
  br i1 %i.gnu, label %bb.avh, label %bb.avm

bb.avh:                                           ; preds = %bb.avg
  %i.gnv = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.gnw = getelementptr inbounds nuw i8, ptr %i.gnv, i64 1 ; 3 uses
  %i.gnx = load i8, ptr %i.gnw, align 1, !tbaa !56 ; 2 uses
  %i.gny = zext i8 %i.gnx to i32                  ; 2 uses
  %i.gnz = load i8, ptr %i.gnv, align 1, !tbaa !56
  %i.goa = icmp eq i8 %i.gnz, -1
  br i1 %i.goa, label %bb.avj, label %bb.avi

bb.avi:                                           ; preds = %bb.avh
  store ptr %i.gnw, ptr %i.fgq, align 8, !tbaa !95
  %i.gob = shl nuw nsw i32 %i.gny, 8
  %i.goc = add i32 %i.gob, %.261497.us.i
  br label %bb.avm

bb.avj:                                           ; preds = %bb.avh
  %i.god = icmp ugt i8 %i.gnx, -113
  br i1 %i.god, label %bb.avl, label %bb.avk

bb.avk:                                           ; preds = %bb.avj
  store ptr %i.gnw, ptr %i.fgq, align 8, !tbaa !95
  %i.goe = shl nuw nsw i32 %i.gny, 9
  %i.gof = add i32 %i.goe, %.261497.us.i
  br label %bb.avm

bb.avl:                                           ; preds = %bb.avj
  %i.gog = add i32 %.261497.us.i, 65280
  %i.goh = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.goi = add i32 %i.goh, 1
  store i32 %i.goi, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.avm

bb.avm:                                           ; preds = %bb.avl, %bb.avk, %bb.avi, %bb.avg
  %.281499.us.i = phi i32 [ %.261497.us.i, %bb.avg ], [ %i.gog, %bb.avl ], [ %i.gof, %bb.avk ], [ %i.goc, %bb.avi ]
  %.281359.us.i = phi i32 [ %.261357.us.i, %bb.avg ], [ 8, %bb.avl ], [ 7, %bb.avk ], [ 8, %bb.avi ]
  %i.goj = shl i32 %.161398.us.i, 1               ; 3 uses
  %i.gok = shl i32 %.281499.us.i, 1               ; 2 uses
  %i.gol = add i32 %.281359.us.i, -1              ; 2 uses
  %i.gom = icmp ult i32 %i.goj, 32768
  br i1 %i.gom, label %bb.avg, label %.loopexit1953.us.i385.loopexit982, !llvm.loop !556

bb.avn:                                           ; preds = %bb.avc
  %i.gon = icmp ult i32 %i.gnh, %i.gng            ; 2 uses
  %i.goo = getelementptr inbounds nuw i8, ptr %i.gnf, i64 4
  %i.gop = load i32, ptr %i.goo, align 4, !tbaa !102 ; 2 uses
  %.sink2535.i391 = select i1 %i.gon, i64 8, i64 16
  %i.goq = getelementptr inbounds nuw i8, ptr %i.gnf, i64 %.sink2535.i391
  %storemerge1840.us.i = load ptr, ptr %i.goq, align 8, !tbaa !99
  store ptr %storemerge1840.us.i, ptr %i.gne, align 8, !tbaa !99
  br label %bb.avo

bb.avo:                                           ; preds = %bb.avu, %bb.avn
  %.231494.us.i = phi i32 [ %.221493.us.i, %bb.avn ], [ %i.gph, %bb.avu ] ; 4 uses
  %.151397.us.i = phi i32 [ %i.gng, %bb.avn ], [ %i.gpg, %bb.avu ]
  %.231354.us.i = phi i32 [ %.221353.us.i, %bb.avn ], [ %i.gpi, %bb.avu ] ; 2 uses
  %i.gor = icmp eq i32 %.231354.us.i, 0
  br i1 %i.gor, label %bb.avp, label %bb.avu

bb.avp:                                           ; preds = %bb.avo
  %i.gos = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.got = getelementptr inbounds nuw i8, ptr %i.gos, i64 1 ; 3 uses
  %i.gou = load i8, ptr %i.got, align 1, !tbaa !56 ; 2 uses
  %i.gov = zext i8 %i.gou to i32                  ; 2 uses
  %i.gow = load i8, ptr %i.gos, align 1, !tbaa !56
  %i.gox = icmp eq i8 %i.gow, -1
  br i1 %i.gox, label %bb.avr, label %bb.avq

bb.avq:                                           ; preds = %bb.avp
  store ptr %i.got, ptr %i.fgq, align 8, !tbaa !95
  %i.goy = shl nuw nsw i32 %i.gov, 8
  %i.goz = add i32 %i.goy, %.231494.us.i
  br label %bb.avu

bb.avr:                                           ; preds = %bb.avp
  %i.gpa = icmp ugt i8 %i.gou, -113
  br i1 %i.gpa, label %bb.avt, label %bb.avs

bb.avs:                                           ; preds = %bb.avr
  store ptr %i.got, ptr %i.fgq, align 8, !tbaa !95
  %i.gpb = shl nuw nsw i32 %i.gov, 9
  %i.gpc = add i32 %i.gpb, %.231494.us.i
  br label %bb.avu

bb.avt:                                           ; preds = %bb.avr
  %i.gpd = add i32 %.231494.us.i, 65280
  %i.gpe = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.gpf = add i32 %i.gpe, 1
  store i32 %i.gpf, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.avu

bb.avu:                                           ; preds = %bb.avt, %bb.avs, %bb.avq, %bb.avo
  %.251496.us.i = phi i32 [ %.231494.us.i, %bb.avo ], [ %i.gpd, %bb.avt ], [ %i.gpc, %bb.avs ], [ %i.goz, %bb.avq ]
  %.251356.us.i = phi i32 [ %.231354.us.i, %bb.avo ], [ 8, %bb.avt ], [ 7, %bb.avs ], [ 8, %bb.avq ]
  %i.gpg = shl i32 %.151397.us.i, 1               ; 3 uses
  %i.gph = shl i32 %.251496.us.i, 1               ; 2 uses
  %i.gpi = add i32 %.251356.us.i, -1              ; 2 uses
  %i.gpj = icmp ult i32 %i.gpg, 32768
  br i1 %i.gpj, label %bb.avo, label %.loopexit1953.us.i385.loopexit, !llvm.loop !557

.loopexit1953.us.i385.loopexit:                   ; preds = %bb.avu
  %.not1839.us.i = icmp eq i32 %i.gop, 0
  %i.gpk = zext i1 %.not1839.us.i to i32
  %.61326.us.i = select i1 %i.gon, i32 %i.gop, i32 %i.gpk
  br label %.loopexit1953.us.i385

.loopexit1953.us.i385.loopexit982:                ; preds = %bb.avm
  %.not1838.us.i389 = icmp eq i32 %i.gns, 0
  %i.gpl = zext i1 %.not1838.us.i389 to i32
  %.71327.us.i = select i1 %i.gnq, i32 %i.gpl, i32 %i.gns
  br label %.loopexit1953.us.i385

.loopexit1953.us.i385:                            ; preds = %.loopexit1953.us.i385.loopexit982, %.loopexit1953.us.i385.loopexit, %bb.ave
  %.291500.us.i = phi i32 [ %i.gnl, %bb.ave ], [ %i.gph, %.loopexit1953.us.i385.loopexit ], [ %i.gok, %.loopexit1953.us.i385.loopexit982 ] ; 3 uses
  %.171399.us.i = phi i32 [ %i.gnh, %bb.ave ], [ %i.gpg, %.loopexit1953.us.i385.loopexit ], [ %i.goj, %.loopexit1953.us.i385.loopexit982 ]
  %.291360.us.i = phi i32 [ %.221353.us.i, %bb.ave ], [ %i.gpi, %.loopexit1953.us.i385.loopexit ], [ %i.gol, %.loopexit1953.us.i385.loopexit982 ] ; 3 uses
  %.81328.us.i = phi i32 [ %i.gnp, %bb.ave ], [ %.61326.us.i, %.loopexit1953.us.i385.loopexit ], [ %.71327.us.i, %.loopexit1953.us.i385.loopexit982 ] ; 2 uses
  %i.gpm = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.gna
  %i.gpn = load i8, ptr %i.gpm, align 1, !tbaa !56
  %i.gpo = zext i8 %i.gpn to i32                  ; 2 uses
  %i.gpp = xor i32 %.81328.us.i, %i.gpo           ; 2 uses
  %.not1841.us.i = icmp eq i32 %.81328.us.i, %i.gpo
  %i.gpq = select i1 %.not1841.us.i, i32 %i.dds, i32 %i.fgs
  store i32 %i.gpq, ptr %.116272088.us.i, align 4, !tbaa !6
  %i.gpr = load i32, ptr %i.gmr, align 4, !tbaa !6
  %i.gps = or i32 %i.gpr, 32
  store i32 %i.gps, ptr %i.gmr, align 4, !tbaa !6
  %i.gpt = shl i32 %i.gpp, 19
  %i.gpu = or disjoint i32 %i.gpt, 16             ; 2 uses
  %i.gpv = load i32, ptr %i.gmt, align 4, !tbaa !6
  %i.gpw = or i32 %i.gpv, 8
  store i32 %i.gpw, ptr %i.gmt, align 4, !tbaa !6
  %i.gpx = load i32, ptr %i.a, align 8, !tbaa !91
  %i.gpy = add i32 %i.gpx, 2
  %i.gpz = zext i32 %i.gpy to i64
  %i.gqa = sub nsw i64 0, %i.gpz
  %i.gqb = getelementptr inbounds [4 x i8], ptr %.116242089.us.i, i64 %i.gqa ; 4 uses
  %i.gqc = shl i32 %i.gpp, 31
  %15 = load i32, ptr %i.gqb, align 4, !tbaa !6
  %16 = or i32 %i.gqc, %15
  %i.gqd = or i32 %16, 65536
  store i32 %i.gqd, ptr %i.gqb, align 4, !tbaa !6
  %i.gqe = getelementptr inbounds i8, ptr %i.gqb, i64 -4 ; 2 uses
  %i.gqf = load i32, ptr %i.gqe, align 4, !tbaa !6
  %i.gqg = or i32 %i.gqf, 131072
  store i32 %i.gqg, ptr %i.gqe, align 4, !tbaa !6
  %i.gqh = getelementptr inbounds nuw i8, ptr %i.gqb, i64 4 ; 2 uses
  %i.gqi = load i32, ptr %i.gqh, align 4, !tbaa !6
  %i.gqj = or i32 %i.gqi, 32768
  store i32 %i.gqj, ptr %i.gqh, align 4, !tbaa !6
  %.val1886.us.i = load ptr, ptr %i.fgo, align 8, !tbaa !88 ; 2 uses
  %i.gqk = getelementptr inbounds nuw i8, ptr %.val1886.us.i, i64 2
  %i.gql = load i8, ptr %i.gqk, align 1, !tbaa !56
  %i.gqm = zext i8 %i.gql to i64
  %i.gqn = getelementptr inbounds nuw [8 x i8], ptr %i.fgp, i64 %i.gqm ; 3 uses
  %i.gqo = load ptr, ptr %i.gqn, align 8, !tbaa !99 ; 6 uses
  %i.gqp = load i32, ptr %i.gqo, align 8, !tbaa !101 ; 6 uses
  %i.gqq = sub i32 %.171399.us.i, %i.gqp          ; 5 uses
  %i.gqr = lshr i32 %.291500.us.i, 16
  %i.gqs = icmp ult i32 %i.gqr, %i.gqp
  br i1 %i.gqs, label %bb.awf, label %bb.avv

bb.avv:                                           ; preds = %.loopexit1953.us.i385
  %i.gqt = shl nuw i32 %i.gqp, 16
  %i.gqu = sub i32 %.291500.us.i, %i.gqt          ; 2 uses
  %i.gqv = and i32 %i.gqq, 32768
  %i.gqw = icmp eq i32 %i.gqv, 0
  br i1 %i.gqw, label %bb.avx, label %bb.avw

bb.avw:                                           ; preds = %bb.avv
  %i.gqx = getelementptr inbounds nuw i8, ptr %i.gqo, i64 4
  %i.gqy = load i32, ptr %i.gqx, align 4, !tbaa !102
  br label %.loopexit1951.us.i386

bb.avx:                                           ; preds = %bb.avv
  %i.gqz = icmp ult i32 %i.gqq, %i.gqp            ; 2 uses
  %i.gra = getelementptr inbounds nuw i8, ptr %i.gqo, i64 4
  %i.grb = load i32, ptr %i.gra, align 4, !tbaa !102 ; 2 uses
  %.sink2536.i = select i1 %i.gqz, i64 16, i64 8
  %i.grc = getelementptr inbounds nuw i8, ptr %i.gqo, i64 %.sink2536.i
  %storemerge1843.us.i = load ptr, ptr %i.grc, align 8, !tbaa !99
  store ptr %storemerge1843.us.i, ptr %i.gqn, align 8, !tbaa !99
  br label %bb.avy

bb.avy:                                           ; preds = %bb.awe, %bb.avx
  %.341505.us.i = phi i32 [ %i.gqu, %bb.avx ], [ %i.grt, %bb.awe ] ; 4 uses
  %.211403.us.i = phi i32 [ %i.gqq, %bb.avx ], [ %i.grs, %bb.awe ]
  %.341365.us.i = phi i32 [ %.291360.us.i, %bb.avx ], [ %i.gru, %bb.awe ] ; 2 uses
  %i.grd = icmp eq i32 %.341365.us.i, 0
  br i1 %i.grd, label %bb.avz, label %bb.awe

bb.avz:                                           ; preds = %bb.avy
  %i.gre = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.grf = getelementptr inbounds nuw i8, ptr %i.gre, i64 1 ; 3 uses
  %i.grg = load i8, ptr %i.grf, align 1, !tbaa !56 ; 2 uses
  %i.grh = zext i8 %i.grg to i32                  ; 2 uses
  %i.gri = load i8, ptr %i.gre, align 1, !tbaa !56
  %i.grj = icmp eq i8 %i.gri, -1
  br i1 %i.grj, label %bb.awb, label %bb.awa

bb.awa:                                           ; preds = %bb.avz
  store ptr %i.grf, ptr %i.fgq, align 8, !tbaa !95
  %i.grk = shl nuw nsw i32 %i.grh, 8
  %i.grl = add i32 %i.grk, %.341505.us.i
  br label %bb.awe

bb.awb:                                           ; preds = %bb.avz
  %i.grm = icmp ugt i8 %i.grg, -113
  br i1 %i.grm, label %bb.awd, label %bb.awc

bb.awc:                                           ; preds = %bb.awb
  store ptr %i.grf, ptr %i.fgq, align 8, !tbaa !95
  %i.grn = shl nuw nsw i32 %i.grh, 9
  %i.gro = add i32 %i.grn, %.341505.us.i
  br label %bb.awe

bb.awd:                                           ; preds = %bb.awb
  %i.grp = add i32 %.341505.us.i, 65280
  %i.grq = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.grr = add i32 %i.grq, 1
  store i32 %i.grr, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.awe

bb.awe:                                           ; preds = %bb.awd, %bb.awc, %bb.awa, %bb.avy
  %.361507.us.i = phi i32 [ %.341505.us.i, %bb.avy ], [ %i.grp, %bb.awd ], [ %i.gro, %bb.awc ], [ %i.grl, %bb.awa ]
  %.361367.us.i = phi i32 [ %.341365.us.i, %bb.avy ], [ 8, %bb.awd ], [ 7, %bb.awc ], [ 8, %bb.awa ]
  %i.grs = shl i32 %.211403.us.i, 1               ; 3 uses
  %i.grt = shl i32 %.361507.us.i, 1               ; 2 uses
  %i.gru = add i32 %.361367.us.i, -1              ; 2 uses
  %i.grv = icmp ult i32 %i.grs, 32768
  br i1 %i.grv, label %bb.avy, label %.loopexit1951.us.i386.loopexit981, !llvm.loop !558

bb.awf:                                           ; preds = %.loopexit1953.us.i385
  %i.grw = icmp ult i32 %i.gqq, %i.gqp            ; 2 uses
  %i.grx = getelementptr inbounds nuw i8, ptr %i.gqo, i64 4
  %i.gry = load i32, ptr %i.grx, align 4, !tbaa !102 ; 2 uses
  %.sink2537.i = select i1 %i.grw, i64 8, i64 16
  %i.grz = getelementptr inbounds nuw i8, ptr %i.gqo, i64 %.sink2537.i
  %storemerge1846.us.i = load ptr, ptr %i.grz, align 8, !tbaa !99
  store ptr %storemerge1846.us.i, ptr %i.gqn, align 8, !tbaa !99
  br label %bb.awg

bb.awg:                                           ; preds = %bb.awm, %bb.awf
  %.311502.us.i = phi i32 [ %.291500.us.i, %bb.awf ], [ %i.gsq, %bb.awm ] ; 4 uses
  %.201402.us.i = phi i32 [ %i.gqp, %bb.awf ], [ %i.gsp, %bb.awm ]
  %.311362.us.i = phi i32 [ %.291360.us.i, %bb.awf ], [ %i.gsr, %bb.awm ] ; 2 uses
  %i.gsa = icmp eq i32 %.311362.us.i, 0
  br i1 %i.gsa, label %bb.awh, label %bb.awm

bb.awh:                                           ; preds = %bb.awg
  %i.gsb = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.gsc = getelementptr inbounds nuw i8, ptr %i.gsb, i64 1 ; 3 uses
  %i.gsd = load i8, ptr %i.gsc, align 1, !tbaa !56 ; 2 uses
  %i.gse = zext i8 %i.gsd to i32                  ; 2 uses
  %i.gsf = load i8, ptr %i.gsb, align 1, !tbaa !56
  %i.gsg = icmp eq i8 %i.gsf, -1
  br i1 %i.gsg, label %bb.awj, label %bb.awi

bb.awi:                                           ; preds = %bb.awh
  store ptr %i.gsc, ptr %i.fgq, align 8, !tbaa !95
  %i.gsh = shl nuw nsw i32 %i.gse, 8
  %i.gsi = add i32 %i.gsh, %.311502.us.i
  br label %bb.awm

bb.awj:                                           ; preds = %bb.awh
  %i.gsj = icmp ugt i8 %i.gsd, -113
  br i1 %i.gsj, label %bb.awl, label %bb.awk

bb.awk:                                           ; preds = %bb.awj
  store ptr %i.gsc, ptr %i.fgq, align 8, !tbaa !95
  %i.gsk = shl nuw nsw i32 %i.gse, 9
  %i.gsl = add i32 %i.gsk, %.311502.us.i
  br label %bb.awm

bb.awl:                                           ; preds = %bb.awj
  %i.gsm = add i32 %.311502.us.i, 65280
  %i.gsn = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.gso = add i32 %i.gsn, 1
  store i32 %i.gso, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.awm

bb.awm:                                           ; preds = %bb.awl, %bb.awk, %bb.awi, %bb.awg
  %.331504.us.i = phi i32 [ %.311502.us.i, %bb.awg ], [ %i.gsm, %bb.awl ], [ %i.gsl, %bb.awk ], [ %i.gsi, %bb.awi ]
  %.331364.us.i = phi i32 [ %.311362.us.i, %bb.awg ], [ 8, %bb.awl ], [ 7, %bb.awk ], [ 8, %bb.awi ]
  %i.gsp = shl i32 %.201402.us.i, 1               ; 3 uses
  %i.gsq = shl i32 %.331504.us.i, 1               ; 2 uses
  %i.gsr = add i32 %.331364.us.i, -1              ; 2 uses
  %i.gss = icmp ult i32 %i.gsp, 32768
  br i1 %i.gss, label %bb.awg, label %.loopexit1951.us.i386.loopexit, !llvm.loop !559

.loopexit1951.us.i386.loopexit:                   ; preds = %bb.awm
  %.not1845.us.i = icmp eq i32 %i.gry, 0
  %i.gst = zext i1 %.not1845.us.i to i32
  %.91329.us.i = select i1 %i.grw, i32 %i.gry, i32 %i.gst
  br label %.loopexit1951.us.i386

.loopexit1951.us.i386.loopexit981:                ; preds = %bb.awe
  %.not1844.us.i388 = icmp eq i32 %i.grb, 0
  %i.gsu = zext i1 %.not1844.us.i388 to i32
  %.101330.us.i = select i1 %i.gqz, i32 %i.gsu, i32 %i.grb
  br label %.loopexit1951.us.i386

.loopexit1951.us.i386:                            ; preds = %.loopexit1951.us.i386.loopexit981, %.loopexit1951.us.i386.loopexit, %bb.avw
  %.371508.us.i = phi i32 [ %i.gqu, %bb.avw ], [ %i.gsq, %.loopexit1951.us.i386.loopexit ], [ %i.grt, %.loopexit1951.us.i386.loopexit981 ] ; 2 uses
  %.221404.us.i = phi i32 [ %i.gqq, %bb.avw ], [ %i.gsp, %.loopexit1951.us.i386.loopexit ], [ %i.grs, %.loopexit1951.us.i386.loopexit981 ] ; 2 uses
  %.371368.us.i = phi i32 [ %.291360.us.i, %bb.avw ], [ %i.gsr, %.loopexit1951.us.i386.loopexit ], [ %i.gru, %.loopexit1951.us.i386.loopexit981 ] ; 2 uses
  %.11.us.i387 = phi i32 [ %i.gqy, %bb.avw ], [ %.91329.us.i, %.loopexit1951.us.i386.loopexit ], [ %.101330.us.i, %.loopexit1951.us.i386.loopexit981 ]
  %.not1847.us.i = icmp eq i32 %.11.us.i387, 0
  br i1 %.not1847.us.i, label %bb.axf, label %.thread.us.i368

.thread.us.i368:                                  ; preds = %.loopexit1951.us.i386, %.loopexit1955.us.i330
  %.013121910.us.i = phi i32 [ 0, %.loopexit1955.us.i330 ], [ %i.gpu, %.loopexit1951.us.i386 ] ; 4 uses
  %.381509.us.i = phi i32 [ %.221493.us.i, %.loopexit1955.us.i330 ], [ %.371508.us.i, %.loopexit1951.us.i386 ] ; 3 uses
  %.231405.us.i = phi i32 [ %.131395.us.i, %.loopexit1955.us.i330 ], [ %.221404.us.i, %.loopexit1951.us.i386 ]
  %.381369.us.i = phi i32 [ %.221353.us.i, %.loopexit1955.us.i330 ], [ %.371368.us.i, %.loopexit1951.us.i386 ] ; 3 uses
  %i.gsv = getelementptr inbounds i8, ptr %.116242089.us.i, i64 -4 ; 3 uses
  %i.gsw = load i32, ptr %i.gsv, align 4, !tbaa !6
  %i.gsx = getelementptr inbounds nuw i8, ptr %.116242089.us.i, i64 4 ; 3 uses
  %i.gsy = load i32, ptr %i.gsx, align 4, !tbaa !6
  %.pn.in.i.us.i369 = lshr i32 %.013121910.us.i, 15
  %i.gsz = lshr i32 %.013121910.us.i, 3
  %i.gta = and i32 %i.gsz, 170
  %i.gtb = lshr i32 %i.gsw, 22
  %i.gtc = and i32 %i.gtb, 1
  %i.gtd = lshr i32 %i.gsy, 20
  %i.gte = and i32 %i.gtd, 4
  %.pn.i.us.i370 = and i32 %.pn.in.i.us.i369, 16
  %i.gtf = lshr i32 %.013121910.us.i, 19
  %i.gtg = and i32 %i.gtf, 64
  %i.gth = or disjoint i32 %i.gtg, %i.gta
  %i.gti = or disjoint i32 %i.gth, %.pn.i.us.i370
  %.0.i.us.i371 = or disjoint i32 %i.gti, %i.gtc
  %i.gtj = or disjoint i32 %.0.i.us.i371, %i.gte
  %i.gtk = zext nneg i32 %i.gtj to i64            ; 2 uses
  %i.gtl = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.gtk
  %i.gtm = load i8, ptr %i.gtl, align 1, !tbaa !56
  %i.gtn = zext i8 %i.gtm to i64
  %i.gto = getelementptr inbounds nuw [8 x i8], ptr %i.fgp, i64 %i.gtn ; 3 uses
  %i.gtp = load ptr, ptr %i.gto, align 8, !tbaa !99 ; 6 uses
  %i.gtq = load i32, ptr %i.gtp, align 8, !tbaa !101 ; 6 uses
  %i.gtr = sub i32 %.231405.us.i, %i.gtq          ; 5 uses
end_hunk_17
begin_hunk_18_@opj_t1_dec_clnpass:bb.a
  %i.hfe = and i32 %i.hfd, 170
  %i.hff = lshr i32 %i.hfa, 28
  %i.hfg = and i32 %i.hff, 1
  %i.hfh = lshr i32 %i.hfc, 26
  %i.hfi = and i32 %i.hfh, 4
  %.pn.i1891.us.i333 = and i32 %.pn.in.i1890.us.i332, 16
  %i.hfj = lshr i32 %.413161932.us.i, 25
  %i.hfk = and i32 %i.hfj, 64
  %i.hfl = or disjoint i32 %i.hfk, %i.hfe
  %i.hfm = or disjoint i32 %i.hfl, %.pn.i1891.us.i333
  %.0.i1892.us.i334 = or disjoint i32 %i.hfm, %i.hfg
  %i.hfn = or disjoint i32 %.0.i1892.us.i334, %i.hfi
  %i.hfo = zext nneg i32 %i.hfn to i64            ; 2 uses
  %i.hfp = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.hfo
  %i.hfq = load i8, ptr %i.hfp, align 1, !tbaa !56
  %i.hfr = zext i8 %i.hfq to i64
  %i.hfs = getelementptr inbounds nuw [8 x i8], ptr %i.fgp, i64 %i.hfr ; 4 uses
  %i.hft = load ptr, ptr %i.hfs, align 8, !tbaa !99 ; 6 uses
  %i.hfu = load i32, ptr %i.hft, align 8, !tbaa !101 ; 6 uses
  %i.hfv = sub i32 %.451427.us.i, %i.hfu          ; 5 uses
  %i.hfw = lshr i32 %.721543.us.i, 16
  %i.hfx = icmp ult i32 %i.hfw, %i.hfu
  br i1 %i.hfx, label %bb.azt, label %bb.azj

bb.azj:                                           ; preds = %.loopexit1955.us._crit_edge2267.i
  %i.hfy = shl nuw i32 %i.hfu, 16
  %i.hfz = sub i32 %.721543.us.i, %i.hfy          ; 2 uses
  %i.hga = and i32 %i.hfv, 32768
  %i.hgb = icmp eq i32 %i.hga, 0
  br i1 %i.hgb, label %bb.azl, label %bb.azk

bb.azk:                                           ; preds = %bb.azj
  %i.hgc = getelementptr inbounds nuw i8, ptr %i.hft, i64 4
  %i.hgd = load i32, ptr %i.hgc, align 4, !tbaa !102
  br label %.loopexit1941.us.i335

bb.azl:                                           ; preds = %bb.azj
  %i.hge = icmp ult i32 %i.hfv, %i.hfu            ; 2 uses
  %i.hgf = getelementptr inbounds nuw i8, ptr %i.hft, i64 4
  %i.hgg = load i32, ptr %i.hgf, align 4, !tbaa !102 ; 2 uses
  %.sink2546.i = select i1 %i.hge, i64 16, i64 8
  %i.hgh = getelementptr inbounds nuw i8, ptr %i.hft, i64 %.sink2546.i
  %storemerge1870.us.i = load ptr, ptr %i.hgh, align 8, !tbaa !99
  store ptr %storemerge1870.us.i, ptr %i.hfs, align 8, !tbaa !99
  br label %bb.azm

bb.azm:                                           ; preds = %bb.azs, %bb.azl
  %.761547.us.i = phi i32 [ %i.hfz, %bb.azl ], [ %i.hgy, %bb.azs ] ; 4 uses
  %.481430.us.i = phi i32 [ %i.hfv, %bb.azl ], [ %i.hgx, %bb.azs ]
  %.76.us.i339 = phi i32 [ %.72.us.i331, %bb.azl ], [ %i.hgz, %bb.azs ] ; 2 uses
  %i.hgi = icmp eq i32 %.76.us.i339, 0
  br i1 %i.hgi, label %bb.azn, label %bb.azs

bb.azn:                                           ; preds = %bb.azm
  %i.hgj = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.hgk = getelementptr inbounds nuw i8, ptr %i.hgj, i64 1 ; 3 uses
  %i.hgl = load i8, ptr %i.hgk, align 1, !tbaa !56 ; 2 uses
  %i.hgm = zext i8 %i.hgl to i32                  ; 2 uses
  %i.hgn = load i8, ptr %i.hgj, align 1, !tbaa !56
  %i.hgo = icmp eq i8 %i.hgn, -1
  br i1 %i.hgo, label %bb.azp, label %bb.azo

bb.azo:                                           ; preds = %bb.azn
  store ptr %i.hgk, ptr %i.fgq, align 8, !tbaa !95
  %i.hgp = shl nuw nsw i32 %i.hgm, 8
  %i.hgq = add i32 %i.hgp, %.761547.us.i
  br label %bb.azs

bb.azp:                                           ; preds = %bb.azn
  %i.hgr = icmp ugt i8 %i.hgl, -113
  br i1 %i.hgr, label %bb.azr, label %bb.azq

bb.azq:                                           ; preds = %bb.azp
  store ptr %i.hgk, ptr %i.fgq, align 8, !tbaa !95
  %i.hgs = shl nuw nsw i32 %i.hgm, 9
  %i.hgt = add i32 %i.hgs, %.761547.us.i
  br label %bb.azs

bb.azr:                                           ; preds = %bb.azp
  %i.hgu = add i32 %.761547.us.i, 65280
  %i.hgv = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.hgw = add i32 %i.hgv, 1
  store i32 %i.hgw, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.azs

bb.azs:                                           ; preds = %bb.azr, %bb.azq, %bb.azo, %bb.azm
  %.781549.us.i = phi i32 [ %.761547.us.i, %bb.azm ], [ %i.hgu, %bb.azr ], [ %i.hgt, %bb.azq ], [ %i.hgq, %bb.azo ]
  %.78.us.i340 = phi i32 [ %.76.us.i339, %bb.azm ], [ 8, %bb.azr ], [ 7, %bb.azq ], [ 8, %bb.azo ]
  %i.hgx = shl i32 %.481430.us.i, 1               ; 3 uses
  %i.hgy = shl i32 %.781549.us.i, 1               ; 2 uses
  %i.hgz = add i32 %.78.us.i340, -1               ; 2 uses
  %i.hha = icmp ult i32 %i.hgx, 32768
  br i1 %i.hha, label %bb.azm, label %.loopexit1941.us.i335.loopexit976, !llvm.loop !568

bb.azt:                                           ; preds = %.loopexit1955.us._crit_edge2267.i
  %i.hhb = icmp ult i32 %i.hfv, %i.hfu            ; 2 uses
  %i.hhc = getelementptr inbounds nuw i8, ptr %i.hft, i64 4
  %i.hhd = load i32, ptr %i.hhc, align 4, !tbaa !102 ; 2 uses
  %.sink2547.i = select i1 %i.hhb, i64 8, i64 16
  %i.hhe = getelementptr inbounds nuw i8, ptr %i.hft, i64 %.sink2547.i
  %storemerge1873.us.i = load ptr, ptr %i.hhe, align 8, !tbaa !99
  store ptr %storemerge1873.us.i, ptr %i.hfs, align 8, !tbaa !99
  br label %bb.azu

bb.azu:                                           ; preds = %bb.baa, %bb.azt
  %.731544.us.i = phi i32 [ %.721543.us.i, %bb.azt ], [ %i.hhv, %bb.baa ] ; 4 uses
  %.471429.us.i = phi i32 [ %i.hfu, %bb.azt ], [ %i.hhu, %bb.baa ]
  %.73.us.i342 = phi i32 [ %.72.us.i331, %bb.azt ], [ %i.hhw, %bb.baa ] ; 2 uses
  %i.hhf = icmp eq i32 %.73.us.i342, 0
  br i1 %i.hhf, label %bb.azv, label %bb.baa

bb.azv:                                           ; preds = %bb.azu
  %i.hhg = load ptr, ptr %i.fgq, align 8, !tbaa !95 ; 2 uses
  %i.hhh = getelementptr inbounds nuw i8, ptr %i.hhg, i64 1 ; 3 uses
  %i.hhi = load i8, ptr %i.hhh, align 1, !tbaa !56 ; 2 uses
  %i.hhj = zext i8 %i.hhi to i32                  ; 2 uses
  %i.hhk = load i8, ptr %i.hhg, align 1, !tbaa !56
  %i.hhl = icmp eq i8 %i.hhk, -1
  br i1 %i.hhl, label %bb.azx, label %bb.azw

bb.azw:                                           ; preds = %bb.azv
  store ptr %i.hhh, ptr %i.fgq, align 8, !tbaa !95
  %i.hhm = shl nuw nsw i32 %i.hhj, 8
  %i.hhn = add i32 %i.hhm, %.731544.us.i
  br label %bb.baa

bb.azx:                                           ; preds = %bb.azv
  %i.hho = icmp ugt i8 %i.hhi, -113
  br i1 %i.hho, label %bb.azz, label %bb.azy

bb.azy:                                           ; preds = %bb.azx
  store ptr %i.hhh, ptr %i.fgq, align 8, !tbaa !95
  %i.hhp = shl nuw nsw i32 %i.hhj, 9
  %i.hhq = add i32 %i.hhp, %.731544.us.i
  br label %bb.baa

bb.azz:                                           ; preds = %bb.azx
  %i.hhr = add i32 %.731544.us.i, 65280
  %i.hhs = load i32, ptr %i.fgr, align 4, !tbaa !103
  %i.hht = add i32 %i.hhs, 1
  store i32 %i.hht, ptr %i.fgr, align 4, !tbaa !103
  br label %bb.baa

bb.baa:                                           ; preds = %bb.azz, %bb.azy, %bb.azw, %bb.azu
  %.751546.us.i = phi i32 [ %.731544.us.i, %bb.azu ], [ %i.hhr, %bb.azz ], [ %i.hhq, %bb.azy ], [ %i.hhn, %bb.azw ]
  %.75.us.i343 = phi i32 [ %.73.us.i342, %bb.azu ], [ 8, %bb.azz ], [ 7, %bb.azy ], [ 8, %bb.azw ]
  %i.hhu = shl i32 %.471429.us.i, 1               ; 3 uses
  %i.hhv = shl i32 %.751546.us.i, 1               ; 2 uses
  %i.hhw = add i32 %.75.us.i343, -1               ; 2 uses
  %i.hhx = icmp ult i32 %i.hhu, 32768
  br i1 %i.hhx, label %bb.azu, label %.loopexit1941.us.i335.loopexit, !llvm.loop !569

.loopexit1941.us.i335.loopexit:                   ; preds = %bb.baa
  %.not1872.us.i = icmp eq i32 %i.hhd, 0
  %i.hhy = zext i1 %.not1872.us.i to i32
  %.24.us.i341 = select i1 %i.hhb, i32 %i.hhd, i32 %i.hhy
  br label %.loopexit1941.us.i335

.loopexit1941.us.i335.loopexit976:                ; preds = %bb.azs
  %.not1871.us.i = icmp eq i32 %i.hgg, 0
  %i.hhz = zext i1 %.not1871.us.i to i32
  %.25.us.i338 = select i1 %i.hge, i32 %i.hhz, i32 %i.hgg
  br label %.loopexit1941.us.i335

.loopexit1941.us.i335:                            ; preds = %.loopexit1941.us.i335.loopexit976, %.loopexit1941.us.i335.loopexit, %bb.azk
  %.791550.us.i = phi i32 [ %i.hfz, %bb.azk ], [ %i.hhv, %.loopexit1941.us.i335.loopexit ], [ %i.hgy, %.loopexit1941.us.i335.loopexit976 ]
  %.491431.us.i = phi i32 [ %i.hfv, %bb.azk ], [ %i.hhu, %.loopexit1941.us.i335.loopexit ], [ %i.hgx, %.loopexit1941.us.i335.loopexit976 ]
  %.79.us.i336 = phi i32 [ %.72.us.i331, %bb.azk ], [ %i.hhw, %.loopexit1941.us.i335.loopexit ], [ %i.hgz, %.loopexit1941.us.i335.loopexit976 ]
  %.26.us.i337 = phi i32 [ %i.hgd, %bb.azk ], [ %.24.us.i341, %.loopexit1941.us.i335.loopexit ], [ %.25.us.i338, %.loopexit1941.us.i335.loopexit976 ] ; 2 uses
  %i.hia = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.hfo
  %i.hib = load i8, ptr %i.hia, align 1, !tbaa !56
  %i.hic = zext i8 %i.hib to i32                  ; 2 uses
  %i.hid = xor i32 %.26.us.i337, %i.hic           ; 2 uses
  %.not1874.us.i = icmp eq i32 %.26.us.i337, %i.hic
  %i.hie = select i1 %.not1874.us.i, i32 %i.dds, i32 %i.fgs
  %i.hif = getelementptr inbounds nuw [4 x i8], ptr %.116272088.us.i, i64 %i.fgx
  store i32 %i.hie, ptr %i.hif, align 4, !tbaa !6
  %i.hig = load i32, ptr %i.hez, align 4, !tbaa !6
  %i.hih = or i32 %i.hig, 16384
  store i32 %i.hih, ptr %i.hez, align 4, !tbaa !6
  %i.hii = shl i32 %i.hid, 28
  %i.hij = or i32 %i.hii, %.413161932.us.i
  %i.hik = load i32, ptr %i.hfb, align 4, !tbaa !6
  %i.hil = or i32 %i.hik, 4096
  store i32 %i.hil, ptr %i.hfb, align 4, !tbaa !6
  br label %.sink.split.i238

.sink.split.i238:                                 ; preds = %.loopexit1941.us.i335, %.loopexit1961.us.i234
  %.sink2564.i = phi i32 [ %i.hid, %.loopexit1941.us.i335 ], [ %i.gfl, %.loopexit1961.us.i234 ]
  %.71621.us.ph.i = phi ptr [ %i.hfs, %.loopexit1941.us.i335 ], [ %i.gda, %.loopexit1961.us.i234 ]
  %.1411612.us.ph.i = phi i32 [ %.791550.us.i, %.loopexit1941.us.i335 ], [ %.1401611.us.i, %.loopexit1961.us.i234 ]
  %.871469.us.ph.i = phi i32 [ %.491431.us.i, %.loopexit1941.us.i335 ], [ %.861468.us.i, %.loopexit1961.us.i234 ]
  %.141.us.ph.i239 = phi i32 [ %.79.us.i336, %.loopexit1941.us.i335 ], [ %.140.us.i235, %.loopexit1961.us.i234 ]
  %.10.us.ph.in.i240 = phi i32 [ %i.hij, %.loopexit1941.us.i335 ], [ %i.gfr, %.loopexit1961.us.i234 ]
  %.10.us.ph.i241 = or i32 %.10.us.ph.in.i240, 8192
  %i.him = load i32, ptr %i.a, align 8, !tbaa !91
  %i.hin = add i32 %i.him, 2
  %i.hio = zext i32 %i.hin to i64
  %i.hip = getelementptr inbounds nuw [4 x i8], ptr %.116242089.us.i, i64 %i.hio ; 4 uses
  %i.hiq = shl i32 %.sink2564.i, 18
  %17 = load i32, ptr %i.hip, align 4, !tbaa !6
  %18 = or i32 %i.hiq, %17
  %i.hir = or i32 %18, 2
  store i32 %i.hir, ptr %i.hip, align 4, !tbaa !6
  %i.his = getelementptr inbounds i8, ptr %i.hip, i64 -4 ; 2 uses
  %i.hit = load i32, ptr %i.his, align 4, !tbaa !6
  %i.hiu = or i32 %i.hit, 4
  store i32 %i.hiu, ptr %i.his, align 4, !tbaa !6
  %i.hiv = getelementptr inbounds nuw i8, ptr %i.hip, i64 4 ; 2 uses
  %i.hiw = load i32, ptr %i.hiv, align 4, !tbaa !6
  %i.hix = or i32 %i.hiw, 1
  store i32 %i.hix, ptr %i.hiv, align 4, !tbaa !6
  br label %bb.bab

bb.bab:                                           ; preds = %.sink.split.i238, %.loopexit1943.us.i352, %.loopexit1955.us.i330, %.loopexit1963.us.i230, %bb.arl
  %.71621.us.i = phi ptr [ %i.gaa, %.loopexit1963.us.i230 ], [ %.61620.us.i, %bb.arl ], [ %i.fgz, %.loopexit1955.us.i330 ], [ %i.hcr, %.loopexit1943.us.i352 ], [ %.71621.us.ph.i, %.sink.split.i238 ]
  %.1411612.us.i = phi i32 [ %.1331604.us.i, %.loopexit1963.us.i230 ], [ %.1261597.us.i, %bb.arl ], [ %.221493.us.i, %.loopexit1955.us.i330 ], [ %.711542.us.i, %.loopexit1943.us.i352 ], [ %.1411612.us.ph.i, %.sink.split.i238 ]
  %.871469.us.i = phi i32 [ %.821464.us.i, %.loopexit1963.us.i230 ], [ %.781460.us.i, %bb.arl ], [ %.131395.us.i, %.loopexit1955.us.i330 ], [ %.441426.us.i, %.loopexit1943.us.i352 ], [ %.871469.us.ph.i, %.sink.split.i238 ]
  %.141.us.i216 = phi i32 [ %.133.us.i231, %.loopexit1963.us.i230 ], [ %.126.us.i213, %bb.arl ], [ %.221353.us.i, %.loopexit1955.us.i330 ], [ %.71.us.i353, %.loopexit1943.us.i352 ], [ %.141.us.ph.i239, %.sink.split.i238 ]
  %.10.us.i217 = phi i32 [ %.9.us.i214, %.loopexit1963.us.i230 ], [ %.9.us.i214, %bb.arl ], [ 0, %.loopexit1955.us.i330 ], [ %.41316.ph.us.i, %.loopexit1943.us.i352 ], [ %.10.us.ph.i241, %.sink.split.i238 ]
  %i.hiy = and i32 %.10.us.i217, -1226833921
  store i32 %i.hiy, ptr %.116242089.us.i, align 4, !tbaa !6
  br label %.thread1934.us.i

.thread1934.us.i:                                 ; preds = %bb.bab, %.loopexit1959.us.i328
  %.81622.us.i = phi ptr [ %.71621.us.i, %bb.bab ], [ %i.fgy, %.loopexit1959.us.i328 ] ; 3 uses
  %.1421613.us.i = phi i32 [ %.1411612.us.i, %bb.bab ], [ %.81479.us.i, %.loopexit1959.us.i328 ] ; 3 uses
  %.881470.us.i = phi i32 [ %.871469.us.i, %bb.bab ], [ %.51387.us.i, %.loopexit1959.us.i328 ] ; 3 uses
  %.142.us.i218 = phi i32 [ %.141.us.i216, %bb.bab ], [ %.81339.us.i, %.loopexit1959.us.i328 ] ; 3 uses
  %i.hiz = add nuw i32 %.016312087.us.i, 1        ; 2 uses
  %i.hja = getelementptr inbounds nuw i8, ptr %.116272088.us.i, i64 4 ; 2 uses
  %i.hjb = getelementptr inbounds nuw i8, ptr %.116242089.us.i, i64 4
  %exitcond.not.i219 = icmp eq i32 %i.hiz, %i.b
  br i1 %exitcond.not.i219, label %._crit_edge.us.i220, label %bb.amx, !llvm.loop !570

._crit_edge.us.i220:                              ; preds = %.thread1934.us.i
  %i.hjc = add nuw i32 %.016292099.us.i, 4        ; 3 uses
  %i.hjd = getelementptr inbounds nuw [4 x i8], ptr %i.hja, i64 %i.fgx ; 2 uses
  %i.hje = getelementptr inbounds nuw i8, ptr %.116242089.us.i, i64 12 ; 2 uses
  %i.hjf = load i32, ptr %i.ddt, align 4, !tbaa !92 ; 2 uses
  %i.hjg = and i32 %i.hjf, -4
  %i.hjh = icmp ult i32 %i.hjc, %i.hjg
  br i1 %i.hjh, label %.preheader1977.us.i, label %._crit_edge2106.i, !llvm.loop !571

.preheader1977.lr.ph.split.i:                     ; preds = %.preheader1977.lr.ph.i
  %i.hji = and i32 %i.ddu, -4
  %i.hjj = add i32 %i.ddu, -4
  %i.hjk = zext i32 %i.hjj to i64                 ; 2 uses
  %i.hjl = and i64 %i.hjk, 4294967292
  %i.hjm = add nuw nsw i64 %i.hjl, 4
  %i.hjn = mul nuw nsw i64 %i.hjm, %i.fgx
  %scevgep.i402 = getelementptr i8, ptr %i.ddd, i64 %i.hjn
  %i.hjo = shl nuw nsw i64 %i.hjk, 1
  %i.hjp = and i64 %i.hjo, 8589934584
  %i.hjq = getelementptr i8, ptr %i.ddf, i64 %i.hjp
  %scevgep2262.i = getelementptr i8, ptr %i.hjq, i64 20
  br label %._crit_edge2106.i

._crit_edge2106.i:                                ; preds = %._crit_edge.us.i220, %.preheader1977.lr.ph.split.i, %bb.amw
  %.01629.lcssa.i = phi i32 [ 0, %bb.amw ], [ %i.hji, %.preheader1977.lr.ph.split.i ], [ %i.hjc, %._crit_edge.us.i220 ] ; 3 uses
  %.01626.lcssa.i = phi ptr [ %i.ddd, %bb.amw ], [ %scevgep.i402, %.preheader1977.lr.ph.split.i ], [ %i.hjd, %._crit_edge.us.i220 ]
  %.01623.lcssa.i = phi ptr [ %i.ddi, %bb.amw ], [ %scevgep2262.i, %.preheader1977.lr.ph.split.i ], [ %i.hje, %._crit_edge.us.i220 ]
  %.01614.lcssa.i221 = phi ptr [ %i.ddk, %bb.amw ], [ %i.ddk, %.preheader1977.lr.ph.split.i ], [ %.81622.us.i, %._crit_edge.us.i220 ]
  %.01471.lcssa.i = phi i32 [ %i.ddl, %bb.amw ], [ %i.ddl, %.preheader1977.lr.ph.split.i ], [ %.1421613.us.i, %._crit_edge.us.i220 ]
  %.01382.lcssa.i = phi i32 [ %i.ddn, %bb.amw ], [ %i.ddn, %.preheader1977.lr.ph.split.i ], [ %.881470.us.i, %._crit_edge.us.i220 ]
  %.01331.lcssa.i = phi i32 [ %i.ddp, %bb.amw ], [ %i.ddp, %.preheader1977.lr.ph.split.i ], [ %.142.us.i218, %._crit_edge.us.i220 ]
  %.lcssa2085.i = phi i32 [ %i.ddu, %bb.amw ], [ %i.ddu, %.preheader1977.lr.ph.split.i ], [ %i.hjf, %._crit_edge.us.i220 ]
  store ptr %.01614.lcssa.i221, ptr %i.ddj, align 8, !tbaa !96
  store i32 %.01471.lcssa.i, ptr %0, align 8, !tbaa !94
  store i32 %.01382.lcssa.i, ptr %i.ddm, align 4, !tbaa !97
  store i32 %.01331.lcssa.i, ptr %i.ddo, align 8, !tbaa !93
  %i.hjr = icmp ult i32 %.01629.lcssa.i, %.lcssa2085.i
  %i.hjs = icmp ne i32 %i.b, 0
  %or.cond.i222 = and i1 %i.hjs, %i.hjr
  br i1 %or.cond.i222, label %.preheader.i224, label %opj_t1_dec_clnpass_generic_vsc.exit

.preheader.i224:                                  ; preds = %._crit_edge2106.i, %._crit_edge.i228
  %.216252125.i = phi ptr [ %i.hkf, %._crit_edge.i228 ], [ %.01623.lcssa.i, %._crit_edge2106.i ] ; 4 uses
  %.216282124.i = phi ptr [ %i.hkg, %._crit_edge.i228 ], [ %.01626.lcssa.i, %._crit_edge2106.i ] ; 2 uses
  %.116322123.i = phi i32 [ %i.hke, %._crit_edge.i228 ], [ 0, %._crit_edge2106.i ]
  %i.hjt = load i32, ptr %i.ddt, align 4, !tbaa !92
  %.not2127.i = icmp eq i32 %i.hjt, %.01629.lcssa.i
  br i1 %.not2127.i, label %._crit_edge.i228, label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %.preheader.i224, %.lr.ph.i225
  %indvars.iv.i226 = phi i64 [ %indvars.iv.next.i227, %.lr.ph.i225 ], [ 0, %.preheader.i224 ] ; 2 uses
  %i.hju = trunc nuw i64 %indvars.iv.i226 to i32  ; 2 uses
  %i.hjv = mul i32 %i.b, %i.hju
  %i.hjw = zext i32 %i.hjv to i64
  %i.hjx = getelementptr inbounds nuw [4 x i8], ptr %.216282124.i, i64 %i.hjw
  tail call fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr noundef %.216252125.i, ptr noundef %i.hjx, i32 noundef %i.dds, i32 noundef %i.hju, i32 noundef 0)
  %indvars.iv.next.i227 = add nuw nsw i64 %indvars.iv.i226, 1 ; 2 uses
  %i.hjy = load i32, ptr %i.ddt, align 4, !tbaa !92
  %i.hjz = sub i32 %i.hjy, %.01629.lcssa.i
  %i.hka = zext i32 %i.hjz to i64
  %i.hkb = icmp samesign ult i64 %indvars.iv.next.i227, %i.hka
  br i1 %i.hkb, label %.lr.ph.i225, label %._crit_edge.i228, !llvm.loop !572

._crit_edge.i228:                                 ; preds = %.lr.ph.i225, %.preheader.i224
  %i.hkc = load i32, ptr %.216252125.i, align 4, !tbaa !6
  %i.hkd = and i32 %i.hkc, -1226833921
  store i32 %i.hkd, ptr %.216252125.i, align 4, !tbaa !6
  %i.hke = add nuw i32 %.116322123.i, 1           ; 2 uses
  %i.hkf = getelementptr inbounds nuw i8, ptr %.216252125.i, i64 4
  %i.hkg = getelementptr inbounds nuw i8, ptr %.216282124.i, i64 4
  %exitcond2264.not.i = icmp eq i32 %i.hke, %i.b
  br i1 %exitcond2264.not.i, label %opj_t1_dec_clnpass_generic_vsc.exit, label %.preheader.i224, !llvm.loop !573

opj_t1_dec_clnpass_generic_vsc.exit.sink.split:   ; preds = %bb.mi, %bb.zo
  %.81588.i.lcssa.lcssa.sink = phi ptr [ %.81601.i, %bb.zo ], [ %.81588.i, %bb.mi ]
  %.1421579.i.lcssa.lcssa.sink = phi i32 [ %.1421592.i, %bb.zo ], [ %.1421579.i, %bb.mi ]
  %.881436.i.lcssa.lcssa.sink = phi i32 [ %.881449.i, %bb.zo ], [ %.881436.i, %bb.mi ]
  %.142.i.lcssa.lcssa.sink = phi i32 [ %.142.i26, %bb.zo ], [ %.142.i, %bb.mi ]
  store ptr %.81588.i.lcssa.lcssa.sink, ptr %i.m, align 8, !tbaa !96
  store i32 %.1421579.i.lcssa.lcssa.sink, ptr %0, align 8, !tbaa !94
  store i32 %.881436.i.lcssa.lcssa.sink, ptr %i.p, align 4, !tbaa !97
  store i32 %.142.i.lcssa.lcssa.sink, ptr %i.r, align 8, !tbaa !93
  br label %opj_t1_dec_clnpass_generic_vsc.exit

opj_t1_dec_clnpass_generic_vsc.exit:              ; preds = %._crit_edge.i, %._crit_edge.i228, %opj_t1_dec_clnpass_generic_vsc.exit.sink.split, %._crit_edge2106.i, %._crit_edge2094.i
  %i.hkh = and i32 %2, 32
  %.not.i403 = icmp eq i32 %i.hkh, 0
  br i1 %.not.i403, label %opj_t1_dec_clnpass_check_segsym.exit, label %bb.bac

bb.bac:                                           ; preds = %opj_t1_dec_clnpass_generic_vsc.exit
  %i.hki = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 10 uses
  %i.hkj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.hki, ptr %i.hkj, align 8, !tbaa !96
  %i.hkk = load ptr, ptr %i.hki, align 8, !tbaa !99 ; 4 uses
  %i.hkl = load i32, ptr %i.hkk, align 8, !tbaa !101 ; 7 uses
  %i.hkm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 17 uses
  %i.hkn = load i32, ptr %i.hkm, align 4, !tbaa !97
  %i.hko = sub i32 %i.hkn, %i.hkl                 ; 6 uses
  store i32 %i.hko, ptr %i.hkm, align 4, !tbaa !97
  %i.hkp = load i32, ptr %0, align 8, !tbaa !94   ; 3 uses
  %i.hkq = lshr i32 %i.hkp, 16
  %i.hkr = icmp ult i32 %i.hkq, %i.hkl
  br i1 %i.hkr, label %bb.bad, label %bb.bal

bb.bad:                                           ; preds = %bb.bac
  %i.hks = icmp ult i32 %i.hko, %i.hkl
  %..i = select i1 %i.hks, i64 8, i64 16
  %i.hkt = getelementptr inbounds nuw i8, ptr %i.hkk, i64 %..i
  store i32 %i.hkl, ptr %i.hkm, align 4, !tbaa !97
  %storemerge295.i = load ptr, ptr %i.hkt, align 8, !tbaa !99 ; 2 uses
  store ptr %storemerge295.i, ptr %i.hki, align 8, !tbaa !99
  %i.hku = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted308.i = load i32, ptr %i.hku, align 8, !tbaa !93
  %i.hkv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.hkw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.bae

bb.bae:                                           ; preds = %bb.bak, %bb.bad
  %i.hkx = phi i32 [ %i.hlr, %bb.bak ], [ %i.hkl, %bb.bad ]
  %i.hky = phi i32 [ %i.hls, %bb.bak ], [ %i.hkp, %bb.bad ] ; 4 uses
  %i.hkz = phi i32 [ %i.hlt, %bb.bak ], [ %.promoted308.i, %bb.bad ] ; 2 uses
  %i.hla = icmp eq i32 %i.hkz, 0
  br i1 %i.hla, label %bb.baf, label %bb.bak

bb.baf:                                           ; preds = %bb.bae
  %i.hlb = load ptr, ptr %i.hkv, align 8, !tbaa !95 ; 2 uses
  %i.hlc = getelementptr inbounds nuw i8, ptr %i.hlb, i64 1 ; 3 uses
  %i.hld = load i8, ptr %i.hlc, align 1, !tbaa !56 ; 2 uses
  %i.hle = zext i8 %i.hld to i32                  ; 2 uses
  %i.hlf = load i8, ptr %i.hlb, align 1, !tbaa !56
  %i.hlg = icmp eq i8 %i.hlf, -1
  br i1 %i.hlg, label %bb.bag, label %bb.baj

bb.bag:                                           ; preds = %bb.baf
  %i.hlh = icmp ugt i8 %i.hld, -113
  br i1 %i.hlh, label %bb.bah, label %bb.bai

bb.bah:                                           ; preds = %bb.bag
  %i.hli = add i32 %i.hky, 65280
  %i.hlj = load i32, ptr %i.hkw, align 4, !tbaa !103
  %i.hlk = add i32 %i.hlj, 1
  store i32 %i.hlk, ptr %i.hkw, align 4, !tbaa !103
  br label %bb.bak

bb.bai:                                           ; preds = %bb.bag
  store ptr %i.hlc, ptr %i.hkv, align 8, !tbaa !95
  %i.hll = shl nuw nsw i32 %i.hle, 9
  %i.hlm = add i32 %i.hll, %i.hky
  br label %bb.bak

bb.baj:                                           ; preds = %bb.baf
  store ptr %i.hlc, ptr %i.hkv, align 8, !tbaa !95
  %i.hln = shl nuw nsw i32 %i.hle, 8
  %i.hlo = add i32 %i.hln, %i.hky
  br label %bb.bak

bb.bak:                                           ; preds = %bb.baj, %bb.bai, %bb.bah, %bb.bae
  %i.hlp = phi i32 [ %i.hlo, %bb.baj ], [ %i.hlm, %bb.bai ], [ %i.hli, %bb.bah ], [ %i.hky, %bb.bae ]
  %i.hlq = phi i32 [ 8, %bb.baj ], [ 7, %bb.bai ], [ 8, %bb.bah ], [ %i.hkz, %bb.bae ]
  %i.hlr = shl i32 %i.hkx, 1                      ; 4 uses
  store i32 %i.hlr, ptr %i.hkm, align 4, !tbaa !97
  %i.hls = shl i32 %i.hlp, 1                      ; 3 uses
  store i32 %i.hls, ptr %0, align 8, !tbaa !94
  %i.hlt = add i32 %i.hlq, -1                     ; 2 uses
  store i32 %i.hlt, ptr %i.hku, align 8, !tbaa !93
  %i.hlu = icmp ult i32 %i.hlr, 32768
  br i1 %i.hlu, label %bb.bae, label %.loopexit304.i, !llvm.loop !574

end_hunk_18
begin_hunk_19_@opj_t1_dec_sigpass_step_mqc:bb.a
  %i.dl = or disjoint i32 %i.dk, %.pn.i
  %.0.i = or disjoint i32 %i.dl, %i.dd
  %i.dm = or disjoint i32 %.0.i, %i.dg
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !56
  %i.dq = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.dn
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !56
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = zext i8 %i.dp to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dt ; 4 uses
  store ptr %i.du, ptr %i.q, align 8, !tbaa !96
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !99 ; 6 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !101 ; 7 uses
  %i.dx = sub i32 %i.cr, %i.dw                    ; 5 uses
  store i32 %i.dx, ptr %i.t, align 4, !tbaa !97
  %i.dy = lshr i32 %.promoted213, 16
  %i.dz = icmp ult i32 %i.dy, %i.dw
  br i1 %i.dz, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ea = icmp ult i32 %i.dx, %i.dw               ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !102 ; 2 uses
  %.not197 = icmp eq i32 %i.ec, 0
  %i.ed = zext i1 %.not197 to i32
  %.sink237 = select i1 %i.ea, i64 8, i64 16
  %.3 = select i1 %i.ea, i32 %i.ec, i32 %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sink237
  store i32 %i.dw, ptr %i.t, align 4, !tbaa !97
  %storemerge200 = load ptr, ptr %i.ee, align 8, !tbaa !99
  store ptr %storemerge200, ptr %i.du, align 8, !tbaa !99
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted212 = load i32, ptr %i.ef, align 8, !tbaa !93
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %bb.w
  %i.ei = phi i32 [ %i.fc, %bb.ad ], [ %i.dw, %bb.w ]
  %i.ej = phi i32 [ %i.fd, %bb.ad ], [ %.promoted213, %bb.w ] ; 4 uses
  %i.ek = phi i32 [ %i.fe, %bb.ad ], [ %.promoted212, %bb.w ] ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !95 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 3 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !56  ; 2 uses
  %i.ep = zext i8 %i.eo to i32                    ; 2 uses
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !56
  %i.er = icmp eq i8 %i.eq, -1
  br i1 %i.er, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.es = icmp ugt i8 %i.eo, -113
  br i1 %i.es, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.et = add i32 %i.ej, 65280
  %i.eu = load i32, ptr %i.eh, align 4, !tbaa !103
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.eh, align 4, !tbaa !103
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  store ptr %i.en, ptr %i.eg, align 8, !tbaa !95
  %i.ew = shl nuw nsw i32 %i.ep, 9
  %i.ex = add i32 %i.ej, %i.ew
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  store ptr %i.en, ptr %i.eg, align 8, !tbaa !95
  %i.ey = shl nuw nsw i32 %i.ep, 8
  %i.ez = add i32 %i.ej, %i.ey
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.fa = phi i32 [ %i.ez, %bb.ac ], [ %i.ex, %bb.ab ], [ %i.et, %bb.aa ], [ %i.ej, %bb.x ]
  %i.fb = phi i32 [ 8, %bb.ac ], [ 7, %bb.ab ], [ 8, %bb.aa ], [ %i.ek, %bb.x ]
  %i.fc = shl i32 %i.ei, 1                        ; 3 uses
  store i32 %i.fc, ptr %i.t, align 4, !tbaa !97
  %i.fd = shl i32 %i.fa, 1                        ; 2 uses
  store i32 %i.fd, ptr %0, align 8, !tbaa !94
  %i.fe = add i32 %i.fb, -1                       ; 2 uses
  store i32 %i.fe, ptr %i.ef, align 8, !tbaa !93
  %i.ff = icmp ult i32 %i.fc, 32768
  br i1 %i.ff, label %bb.x, label %.loopexit, !llvm.loop !585

bb.ae:                                            ; preds = %bb.v
  %i.fg = shl nuw i32 %i.dw, 16
  %i.fh = sub i32 %.promoted213, %i.fg            ; 2 uses
  store i32 %i.fh, ptr %0, align 8, !tbaa !94
  %i.fi = and i32 %i.dx, 32768
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.fk = icmp ult i32 %i.dx, %i.dw               ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !102 ; 2 uses
  %.not196 = icmp eq i32 %i.fm, 0
  %i.fn = zext i1 %.not196 to i32
  %.sink238 = select i1 %i.fk, i64 16, i64 8
  %.4 = select i1 %i.fk, i32 %i.fn, i32 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sink238
  %storemerge195 = load ptr, ptr %i.fo, align 8, !tbaa !99
  store ptr %storemerge195, ptr %i.du, align 8, !tbaa !99
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted209 = load i32, ptr %i.fp, align 8, !tbaa !93
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.am, %bb.af
  %i.fs = phi i32 [ %i.gm, %bb.am ], [ %i.dx, %bb.af ]
  %i.ft = phi i32 [ %i.gn, %bb.am ], [ %i.fh, %bb.af ] ; 4 uses
  %i.fu = phi i32 [ %i.go, %bb.am ], [ %.promoted209, %bb.af ] ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !95 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !56  ; 2 uses
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !56
  %i.gb = icmp eq i8 %i.ga, -1
  br i1 %i.gb, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.gc = icmp ugt i8 %i.fy, -113
  br i1 %i.gc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gd = add i32 %i.ft, 65280
  %i.ge = load i32, ptr %i.fr, align 4, !tbaa !103
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.fr, align 4, !tbaa !103
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  store ptr %i.fx, ptr %i.fq, align 8, !tbaa !95
  %i.gg = shl nuw nsw i32 %i.fz, 9
  %i.gh = add i32 %i.ft, %i.gg
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  store ptr %i.fx, ptr %i.fq, align 8, !tbaa !95
  %i.gi = shl nuw nsw i32 %i.fz, 8
  %i.gj = add i32 %i.ft, %i.gi
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag
  %i.gk = phi i32 [ %i.gj, %bb.al ], [ %i.gh, %bb.ak ], [ %i.gd, %bb.aj ], [ %i.ft, %bb.ag ]
  %i.gl = phi i32 [ 8, %bb.al ], [ 7, %bb.ak ], [ 8, %bb.aj ], [ %i.fu, %bb.ag ]
  %i.gm = shl i32 %i.fs, 1                        ; 3 uses
  store i32 %i.gm, ptr %i.t, align 4, !tbaa !97
  %i.gn = shl i32 %i.gk, 1                        ; 2 uses
  store i32 %i.gn, ptr %0, align 8, !tbaa !94
  %i.go = add i32 %i.gl, -1                       ; 2 uses
  store i32 %i.go, ptr %i.fp, align 8, !tbaa !93
  %i.gp = icmp ult i32 %i.gm, 32768
  br i1 %i.gp, label %bb.ag, label %.loopexit, !llvm.loop !586

bb.an:                                            ; preds = %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !102
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %bb.ad, %bb.an
  %.5 = phi i32 [ %i.gr, %bb.an ], [ %.3, %bb.ad ], [ %.4, %bb.am ] ; 2 uses
  %i.gs = xor i32 %.5, %i.ds                      ; 3 uses
  %.not198 = icmp eq i32 %.5, %i.ds
  %i.gt = sub nsw i32 0, %3
  %i.gu = select i1 %.not198, i32 %3, i32 %i.gt
  store i32 %i.gu, ptr %2, align 4, !tbaa !6
  %i.gv = shl i32 32, %i.b
  %i.gw = load i32, ptr %i.ct, align 4, !tbaa !6
  %i.gx = or i32 %i.gw, %i.gv
  store i32 %i.gx, ptr %i.ct, align 4, !tbaa !6
  %i.gy = shl i32 %i.gs, 19
  %i.gz = or disjoint i32 %i.gy, 16
  %i.ha = shl i32 %i.gz, %i.b
  %i.hb = load i32, ptr %1, align 4, !tbaa !6
  %i.hc = or i32 %i.hb, %i.ha
  store i32 %i.hc, ptr %1, align 4, !tbaa !6
  %i.hd = shl i32 8, %i.b
  %i.he = load i32, ptr %i.cv, align 4, !tbaa !6
  %i.hf = or i32 %i.he, %i.hd
  store i32 %i.hf, ptr %i.cv, align 4, !tbaa !6
  %i.hg = or i32 %6, %4
  %or.cond.not = icmp eq i32 %i.hg, 0
  br i1 %or.cond.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.loopexit
  %i.hh = zext i32 %5 to i64
  %i.hi = sub nsw i64 0, %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hi ; 4 uses
  %i.hk = shl i32 %i.gs, 31
  %7 = load i32, ptr %i.hj, align 4, !tbaa !6
  %8 = or i32 %i.hk, %7
  %i.hl = or i32 %8, 65536
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !6
  %i.hm = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !6
  %i.ho = or i32 %i.hn, 131072
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !6
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !6
  %i.hr = or i32 %i.hq, 32768
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit
  %i.hs = icmp eq i32 %4, 3
  br i1 %i.hs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ht = zext i32 %5 to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ht ; 4 uses
  %i.hv = shl i32 %i.gs, 18
  %9 = load i32, ptr %i.hu, align 4, !tbaa !6
  %10 = or i32 %i.hv, %9
  %i.hw = or i32 %10, 2
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !6
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 -4 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !6
  %i.hz = or i32 %i.hy, 4
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !6
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !6
  %i.ic = or i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !6
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %.loopexit202
  %i.id = shl i32 2097152, %i.b
  %i.ie = load i32, ptr %1, align 4, !tbaa !6
  %i.if = or i32 %i.ie, %i.id
  store i32 %i.if, ptr %1, align 4, !tbaa !6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 2, -2147483648) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 !guid !592 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !6      ; 2 uses
  %i.b = mul i32 %4, 3                            ; 10 uses
  %i.c = shl i32 2097168, %i.b
  %i.d = and i32 %i.a, %i.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.a, %i.b
  %i.f = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.g = and i32 %i.e, 495
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !96
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !99   ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !101  ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !97
  %i.s = sub i32 %i.r, %i.p                       ; 6 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !97
  %i.t = load i32, ptr %0, align 8, !tbaa !94     ; 3 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = icmp ult i32 %i.u, %i.p
  br i1 %i.v, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ult i32 %i.s, %i.p                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !102  ; 2 uses
  %.not189 = icmp eq i32 %i.y, 0
  %i.z = zext i1 %.not189 to i32
  %.sink = select i1 %i.w, i64 8, i64 16
  %.0 = select i1 %i.w, i32 %i.y, i32 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink
  store i32 %i.p, ptr %i.q, align 4, !tbaa !97
  %storemerge195 = load ptr, ptr %i.aa, align 8, !tbaa !99
  store ptr %storemerge195, ptr %i.m, align 8, !tbaa !99
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted202 = load i32, ptr %i.ab, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.ae = phi i32 [ %i.ay, %bb.j ], [ %i.p, %bb.c ]
  %i.af = phi i32 [ %i.az, %bb.j ], [ %i.t, %bb.c ] ; 4 uses
  %i.ag = phi i32 [ %i.ba, %bb.j ], [ %.promoted202, %bb.c ] ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !56  ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !56
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp ugt i8 %i.ak, -113
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = add i32 %i.af, 65280
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !103
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ad, align 4, !tbaa !103
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !95
  %i.as = shl nuw nsw i32 %i.al, 9
  %i.at = add i32 %i.af, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !95
  %i.au = shl nuw nsw i32 %i.al, 8
  %i.av = add i32 %i.af, %i.au
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %i.aw = phi i32 [ %i.av, %bb.i ], [ %i.at, %bb.h ], [ %i.ap, %bb.g ], [ %i.af, %bb.d ]
  %i.ax = phi i32 [ 8, %bb.i ], [ 7, %bb.h ], [ 8, %bb.g ], [ %i.ag, %bb.d ]
  %i.ay = shl i32 %i.ae, 1                        ; 4 uses
  store i32 %i.ay, ptr %i.q, align 4, !tbaa !97
  %i.az = shl i32 %i.aw, 1                        ; 3 uses
  store i32 %i.az, ptr %0, align 8, !tbaa !94
  %i.ba = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ab, align 8, !tbaa !93
  %i.bb = icmp ult i32 %i.ay, 32768
  br i1 %i.bb, label %bb.d, label %.loopexit198, !llvm.loop !588

bb.k:                                             ; preds = %bb.b
  %i.bc = shl nuw i32 %i.p, 16
  %i.bd = sub i32 %i.t, %i.bc                     ; 3 uses
  store i32 %i.bd, ptr %0, align 8, !tbaa !94
  %i.be = and i32 %i.s, 32768
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ult i32 %i.s, %i.p                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !102 ; 2 uses
  %.not188 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not188 to i32
  %.sink232 = select i1 %i.bg, i64 16, i64 8
  %.1 = select i1 %i.bg, i32 %i.bj, i32 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink232
  %storemerge = load ptr, ptr %i.bk, align 8, !tbaa !99
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !99
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i32, ptr %i.bl, align 8, !tbaa !93
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.l
  %i.bo = phi i32 [ %i.ci, %bb.s ], [ %i.s, %bb.l ]
  %i.bp = phi i32 [ %i.cj, %bb.s ], [ %i.bd, %bb.l ] ; 4 uses
  %i.bq = phi i32 [ %i.ck, %bb.s ], [ %.promoted, %bb.l ] ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !95 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !56  ; 2 uses
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !56
  %i.bx = icmp eq i8 %i.bw, -1
  br i1 %i.bx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.by = icmp ugt i8 %i.bu, -113
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = add i32 %i.bp, 65280
  %i.ca = load i32, ptr %i.bn, align 4, !tbaa !103
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bn, align 4, !tbaa !103
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !95
  %i.cc = shl nuw nsw i32 %i.bv, 9
  %i.cd = add i32 %i.bp, %i.cc
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !95
  %i.ce = shl nuw nsw i32 %i.bv, 8
  %i.cf = add i32 %i.bp, %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m
  %i.cg = phi i32 [ %i.cf, %bb.r ], [ %i.cd, %bb.q ], [ %i.bz, %bb.p ], [ %i.bp, %bb.m ]
  %i.ch = phi i32 [ 8, %bb.r ], [ 7, %bb.q ], [ 8, %bb.p ], [ %i.bq, %bb.m ]
  %i.ci = shl i32 %i.bo, 1                        ; 4 uses
  store i32 %i.ci, ptr %i.q, align 4, !tbaa !97
  %i.cj = shl i32 %i.cg, 1                        ; 3 uses
  store i32 %i.cj, ptr %0, align 8, !tbaa !94
  %i.ck = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.bl, align 8, !tbaa !93
  %i.cl = icmp ult i32 %i.ci, 32768
  br i1 %i.cl, label %bb.m, label %.loopexit198, !llvm.loop !589
end_hunk_19
begin_hunk_20_@opj_t1_dec_clnpass_step:bb.a
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !56
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dn ; 4 uses
  store ptr %i.do, ptr %i.n, align 8, !tbaa !96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !99 ; 6 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !101 ; 7 uses
  %i.dr = sub i32 %i.co, %i.dq                    ; 5 uses
  store i32 %i.dr, ptr %i.q, align 4, !tbaa !97
  %i.ds = lshr i32 %.promoted209, 16
  %i.dt = icmp ult i32 %i.ds, %i.dq
  br i1 %i.dt, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.du = icmp ult i32 %i.dr, %i.dq               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !102 ; 2 uses
  %.not193 = icmp eq i32 %i.dw, 0
  %i.dx = zext i1 %.not193 to i32
  %.sink233 = select i1 %i.du, i64 8, i64 16
  %.3 = select i1 %i.du, i32 %i.dw, i32 %i.dx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sink233
  store i32 %i.dq, ptr %i.q, align 4, !tbaa !97
  %storemerge196 = load ptr, ptr %i.dy, align 8, !tbaa !99
  store ptr %storemerge196, ptr %i.do, align 8, !tbaa !99
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted208 = load i32, ptr %i.dz, align 8, !tbaa !93
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.v
  %i.ec = phi i32 [ %i.ew, %bb.ac ], [ %i.dq, %bb.v ]
  %i.ed = phi i32 [ %i.ex, %bb.ac ], [ %.promoted209, %bb.v ] ; 4 uses
  %i.ee = phi i32 [ %i.ey, %bb.ac ], [ %.promoted208, %bb.v ] ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !95 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !56  ; 2 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !56
  %i.el = icmp eq i8 %i.ek, -1
  br i1 %i.el, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.em = icmp ugt i8 %i.ei, -113
  br i1 %i.em, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.en = add i32 %i.ed, 65280
  %i.eo = load i32, ptr %i.eb, align 4, !tbaa !103
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.eb, align 4, !tbaa !103
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !95
  %i.eq = shl nuw nsw i32 %i.ej, 9
  %i.er = add i32 %i.ed, %i.eq
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !95
  %i.es = shl nuw nsw i32 %i.ej, 8
  %i.et = add i32 %i.ed, %i.es
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w
  %i.eu = phi i32 [ %i.et, %bb.ab ], [ %i.er, %bb.aa ], [ %i.en, %bb.z ], [ %i.ed, %bb.w ]
  %i.ev = phi i32 [ 8, %bb.ab ], [ 7, %bb.aa ], [ 8, %bb.z ], [ %i.ee, %bb.w ]
  %i.ew = shl i32 %i.ec, 1                        ; 3 uses
  store i32 %i.ew, ptr %i.q, align 4, !tbaa !97
  %i.ex = shl i32 %i.eu, 1                        ; 2 uses
  store i32 %i.ex, ptr %0, align 8, !tbaa !94
  %i.ey = add i32 %i.ev, -1                       ; 2 uses
  store i32 %i.ey, ptr %i.dz, align 8, !tbaa !93
  %i.ez = icmp ult i32 %i.ew, 32768
  br i1 %i.ez, label %bb.w, label %.loopexit, !llvm.loop !590

bb.ad:                                            ; preds = %bb.u
  %i.fa = shl nuw i32 %i.dq, 16
  %i.fb = sub i32 %.promoted209, %i.fa            ; 2 uses
  store i32 %i.fb, ptr %0, align 8, !tbaa !94
  %i.fc = and i32 %i.dr, 32768
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.fe = icmp ult i32 %i.dr, %i.dq               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !102 ; 2 uses
  %.not192 = icmp eq i32 %i.fg, 0
  %i.fh = zext i1 %.not192 to i32
  %.sink234 = select i1 %i.fe, i64 16, i64 8
  %.4 = select i1 %i.fe, i32 %i.fh, i32 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sink234
  %storemerge191 = load ptr, ptr %i.fi, align 8, !tbaa !99
  store ptr %storemerge191, ptr %i.do, align 8, !tbaa !99
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted205 = load i32, ptr %i.fj, align 8, !tbaa !93
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.al, %bb.ae
  %i.fm = phi i32 [ %i.gg, %bb.al ], [ %i.dr, %bb.ae ]
  %i.fn = phi i32 [ %i.gh, %bb.al ], [ %i.fb, %bb.ae ] ; 4 uses
  %i.fo = phi i32 [ %i.gi, %bb.al ], [ %.promoted205, %bb.ae ] ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !95 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 3 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !56  ; 2 uses
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !56
  %i.fv = icmp eq i8 %i.fu, -1
  br i1 %i.fv, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fw = icmp ugt i8 %i.fs, -113
  br i1 %i.fw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fx = add i32 %i.fn, 65280
  %i.fy = load i32, ptr %i.fl, align 4, !tbaa !103
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fl, align 4, !tbaa !103
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  store ptr %i.fr, ptr %i.fk, align 8, !tbaa !95
  %i.ga = shl nuw nsw i32 %i.ft, 9
  %i.gb = add i32 %i.fn, %i.ga
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  store ptr %i.fr, ptr %i.fk, align 8, !tbaa !95
  %i.gc = shl nuw nsw i32 %i.ft, 8
  %i.gd = add i32 %i.fn, %i.gc
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.af
  %i.ge = phi i32 [ %i.gd, %bb.ak ], [ %i.gb, %bb.aj ], [ %i.fx, %bb.ai ], [ %i.fn, %bb.af ]
  %i.gf = phi i32 [ 8, %bb.ak ], [ 7, %bb.aj ], [ 8, %bb.ai ], [ %i.fo, %bb.af ]
  %i.gg = shl i32 %i.fm, 1                        ; 3 uses
  store i32 %i.gg, ptr %i.q, align 4, !tbaa !97
  %i.gh = shl i32 %i.ge, 1                        ; 2 uses
  store i32 %i.gh, ptr %0, align 8, !tbaa !94
  %i.gi = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.fj, align 8, !tbaa !93
  %i.gj = icmp ult i32 %i.gg, 32768
  br i1 %i.gj, label %bb.af, label %.loopexit, !llvm.loop !591

bb.am:                                            ; preds = %bb.ad
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !102
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.ac, %bb.am
  %.5 = phi i32 [ %i.gl, %bb.am ], [ %.3, %bb.ac ], [ %.4, %bb.al ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.dk
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !56
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %i.gp = xor i32 %.5, %i.go                      ; 3 uses
  %.not194 = icmp eq i32 %.5, %i.go
  %i.gq = sub nsw i32 0, %3
  %i.gr = select i1 %.not194, i32 %3, i32 %i.gq
  store i32 %i.gr, ptr %2, align 4, !tbaa !6
  %i.gs = shl i32 32, %i.b
  %i.gt = load i32, ptr %i.cq, align 4, !tbaa !6
  %i.gu = or i32 %i.gt, %i.gs
  store i32 %i.gu, ptr %i.cq, align 4, !tbaa !6
  %i.gv = shl i32 %i.gp, 19
  %i.gw = or disjoint i32 %i.gv, 16
  %i.gx = shl i32 %i.gw, %i.b
  %i.gy = load i32, ptr %1, align 4, !tbaa !6
  %i.gz = or i32 %i.gx, %i.gy
  store i32 %i.gz, ptr %1, align 4, !tbaa !6
  %i.ha = shl i32 8, %i.b
  %i.hb = load i32, ptr %i.cs, align 4, !tbaa !6
  %i.hc = or i32 %i.hb, %i.ha
  store i32 %i.hc, ptr %i.cs, align 4, !tbaa !6
  %i.hd = or i32 %5, %4
  %or.cond.not = icmp eq i32 %i.hd, 0
  br i1 %or.cond.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !91
  %i.hg = add i32 %i.hf, 2
  %i.hh = zext i32 %i.hg to i64
  %i.hi = sub nsw i64 0, %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hi ; 4 uses
  %i.hk = shl i32 %i.gp, 31
  %6 = load i32, ptr %i.hj, align 4, !tbaa !6
  %7 = or i32 %i.hk, %6
  %i.hl = or i32 %7, 65536
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !6
  %i.hm = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !6
  %i.ho = or i32 %i.hn, 131072
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !6
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !6
  %i.hr = or i32 %i.hq, 32768
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %i.hs = icmp eq i32 %4, 3
  br i1 %i.hs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !91
  %i.hv = add i32 %i.hu, 2
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hw ; 4 uses
  %i.hy = shl i32 %i.gp, 18
  %8 = load i32, ptr %i.hx, align 4, !tbaa !6
  %9 = or i32 %i.hy, %8
  %i.hz = or i32 %9, 2
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !6
  %i.ia = getelementptr inbounds i8, ptr %i.hx, i64 -4 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !6
  %i.ic = or i32 %i.ib, 4
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !6
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !6
  %i.if = or i32 %i.ie, 1
  store i32 %i.if, ptr %i.id, align 4, !tbaa !6
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit198, %bb.ao, %bb.ap, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @lrintf(float noundef) local_unnamed_addr #9

declare void @opj_mqc_init_enc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_bypass_init_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_restart_init_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_segmark_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_bypass_flush_enc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @opj_mqc_erterm_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_flush(ptr noundef) local_unnamed_addr #2

declare i32 @opj_mqc_numbytes(ptr noundef) local_unnamed_addr #2

declare i32 @opj_mqc_bypass_get_extra_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @opj_mqc_reset_enc(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_byteout(ptr noundef) local_unnamed_addr #2

declare double @opj_dwt_getnorm(i32 noundef, i32 noundef) local_unnamed_addr #2

declare double @opj_dwt_getnorm_real(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 1069405855981459787}
!8 = !{i64 922769656889697789}
!9 = !{i64 647811320426551150}
!10 = !{i64 -2180705979795614816}
!11 = !{i64 -6089794615761941285}
!12 = !{i64 5882017139412497526}
!13 = !{i64 1510920681195080620}
!14 = !{i64 -7436712803864703621}
!15 = !{i64 -4515106965380593186}
!16 = !{i64 1102783198036281226}
!17 = !{i64 2138125996547931805}
!18 = !{i64 373868782214024208}
!19 = !{i64 -1043057220333374782}
!20 = !{!"any pointer", !4, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"any p2 pointer", !20, i64 0}
!23 = !{!"p2 _ZTS13opj_mqc_state", !22, i64 0}
!24 = !{!"opj_mqc", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !21, i64 16, !21, i64 24, !21, i64 32, !4, i64 40, !23, i64 192, !21, i64 200, !4, i64 208}
!25 = !{!"p1 int", !20, i64 0}
!26 = !{!"opj_t1", !24, i64 0, !25, i64 216, !25, i64 224, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !21, i64 256, !5, i64 264}
!27 = !{!26, !5, i64 248}
!28 = !{!26, !25, i64 216}
!29 = !{!26, !25, i64 224}
!30 = !{!26, !21, i64 256}
!31 = !{!"p1 _ZTS13opj_tcd_image", !20, i64 0}
!32 = !{!"p1 _ZTS9opj_image", !20, i64 0}
!33 = !{!"p1 _ZTS6opj_cp", !20, i64 0}
!34 = !{!"p1 _ZTS7opj_tcp", !20, i64 0}
!35 = !{!"p1 _ZTS17opj_thread_pool_t", !20, i64 0}
!36 = !{!"opj_tcd", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !31, i64 24, !32, i64 32, !33, i64 40, !34, i64 48, !5, i64 56, !5, i64 60, !35, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !25, i64 96}
!37 = !{!36, !35, i64 64}
!38 = !{!"p1 _ZTS18opj_tcd_resolution", !20, i64 0}
!39 = !{!"long", !4, i64 0}
!40 = !{!"opj_tcd_tilecomp", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !38, i64 32, !5, i64 40, !25, i64 48, !5, i64 56, !39, i64 64, !39, i64 72, !25, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !39, i64 104}
!41 = !{!40, !5, i64 24}
!42 = !{!40, !38, i64 32}
!43 = !{!"opj_tcd_resolution", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 32, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188}
!44 = !{!43, !5, i64 24}
!45 = !{!43, !5, i64 16}
!46 = !{!43, !5, i64 20}
!47 = !{!"p1 _ZTS16opj_tcd_precinct", !20, i64 0}
!48 = !{!"float", !4, i64 0}
!49 = !{!"opj_tcd_band", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !47, i64 24, !5, i64 32, !5, i64 36, !48, i64 40}
!50 = !{!49, !47, i64 24}
!51 = !{!49, !5, i64 16}
!52 = !{!"p1 _ZTS12opj_tgt_tree", !20, i64 0}
!53 = !{!"opj_tcd_precinct", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !5, i64 32, !52, i64 40, !52, i64 48}
!54 = !{!53, !5, i64 16}
!55 = !{!53, !5, i64 20}
!56 = !{!4, !4, i64 0}
!57 = !{!"p1 _ZTS11opj_tcd_seg", !20, i64 0}
!58 = !{!"p1 _ZTS22opj_tcd_seg_data_chunk", !20, i64 0}
!59 = !{!"opj_tcd_cblk_dec", !57, i64 0, !58, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !25, i64 72, !5, i64 80}
!60 = !{!59, !25, i64 72}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!59, !5, i64 16}
!63 = !{!59, !5, i64 20}
!64 = !{!59, !5, i64 24}
!65 = !{!59, !5, i64 28}
!66 = !{!"p1 _ZTS16opj_tcd_cblk_dec", !20, i64 0}
!67 = !{!"p1 _ZTS12opj_tcd_band", !20, i64 0}
!68 = !{!"p1 _ZTS16opj_tcd_tilecomp", !20, i64 0}
!69 = !{!"p1 _ZTS8opj_tccp", !20, i64 0}
!70 = !{!"p1 _ZTS13opj_event_mgr", !20, i64 0}
!71 = !{!"p1 _ZTS11opj_mutex_t", !20, i64 0}
!72 = !{!"", !5, i64 0, !5, i64 4, !66, i64 8, !67, i64 16, !68, i64 24, !69, i64 32, !5, i64 40, !25, i64 48, !70, i64 56, !71, i64 64, !5, i64 72}
!73 = !{!72, !5, i64 0}
!74 = !{!72, !5, i64 4}
!75 = !{!72, !66, i64 8}
!76 = !{!72, !67, i64 16}
!77 = !{!72, !68, i64 24}
!78 = !{!72, !69, i64 32}
!79 = !{!72, !25, i64 48}
!80 = !{!72, !71, i64 64}
!81 = !{!72, !70, i64 56}
!82 = !{!72, !5, i64 72}
!83 = !{!72, !5, i64 40}
!84 = !{!43, !5, i64 8}
!85 = !{!43, !5, i64 0}
!86 = !{!"opj_tccp", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !5, i64 804, !5, i64 808, !4, i64 812, !4, i64 944, !5, i64 1076}
!87 = !{!86, !5, i64 16}
!88 = !{!24, !21, i64 200}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!26, !5, i64 232}
!92 = !{!26, !5, i64 236}
!93 = !{!24, !5, i64 8}
!94 = !{!24, !5, i64 0}
!95 = !{!24, !21, i64 16}
!96 = !{!24, !23, i64 192}
!97 = !{!24, !5, i64 4}
!98 = !{!"p1 _ZTS13opj_mqc_state", !20, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"opj_mqc_state", !5, i64 0, !5, i64 4, !98, i64 8, !98, i64 16}
!101 = !{!100, !5, i64 0}
!102 = !{!100, !5, i64 4}
!103 = !{!24, !5, i64 12}
!104 = !{!49, !5, i64 0}
!105 = !{!49, !5, i64 4}
!106 = !{!43, !5, i64 12}
!107 = !{!43, !5, i64 4}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = !{!86, !5, i64 20}
!110 = !{!49, !48, i64 40}
!111 = !{!40, !25, i64 48}
!112 = !{!48, !48, i64 0}
!113 = !{!"double", !4, i64 0}
!114 = !{!"opj_tcd_tile", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !68, i64 24, !39, i64 32, !113, i64 40, !4, i64 48, !5, i64 848}
!115 = !{!114, !113, i64 40}
!116 = !{!"p1 double", !20, i64 0}
!117 = !{!40, !5, i64 20}
!118 = !{!"p1 _ZTS16opj_tcd_cblk_enc", !20, i64 0}
!119 = !{!"p1 _ZTS12opj_tcd_tile", !20, i64 0}
end_hunk_20
