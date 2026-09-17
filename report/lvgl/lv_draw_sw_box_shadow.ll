Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_box_shadow?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@lv_draw_sw_box_shadow:bb.a
  store i32 2, ptr %i.id, align 8, !tbaa !69
  %i.ie = load i32, ptr %i.hl, align 4, !tbaa !46 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !48
  %.not400445 = icmp sgt i32 %i.ie, %i.ig
  br i1 %.not400445, label %.loopexit443, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.ih = sext i32 %i.bj to i64                   ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.ai
  %.0364447 = phi i32 [ %i.ie, %.lr.ph ], [ %i.in, %bb.ai ] ; 5 uses
  %.0373446 = phi ptr [ %i.hx, %.lr.ph ], [ %i.im, %bb.ai ] ; 3 uses
  store i32 %.0364447, ptr %i.hc, align 4, !tbaa !46
  store i32 %.0364447, ptr %i.hf, align 4, !tbaa !48
  br i1 %i.gf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ii = call ptr @lv_memcpy(ptr noundef %i.gi, ptr noundef %.0373446, i64 noundef %i.ih) #6 ; 0 uses
  %i.ij = load i32, ptr %11, align 4, !tbaa !35
  %i.ik = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.gi, i32 noundef %i.ij, i32 noundef %.0364447, i32 noundef %i.hk) #6 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 1
  %spec.store.select = select i1 %i.il, i32 2, i32 %i.ik
  store i32 %spec.store.select, ptr %i.id, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr %.0373446, ptr %i.gk, align 8, !tbaa !66
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.im = getelementptr inbounds i8, ptr %.0373446, i64 %i.ih
  %i.in = add nsw i32 %.0364447, 1
  %i.io = load i32, ptr %i.if, align 4, !tbaa !48
  %.not400.not = icmp slt i32 %.0364447, %i.io
  br i1 %.not400.not, label %bb.af, label %.loopexit443, !llvm.loop !22

.loopexit443:                                     ; preds = %bb.ai, %bb.ae, %bb.ad, %bb.aa, %bb.z
  %i.ip = load i32, ptr %i.ag, align 4, !tbaa !45 ; 2 uses
  store i32 %i.ip, ptr %i.gy, align 4, !tbaa !45
  %i.iq = sub nsw i32 %i.ip, %i.bj
  %i.ir = add nsw i32 %i.iq, 1
  %i.is = load i32, ptr %i.ak, align 4, !tbaa !48 ; 2 uses
  %i.it = sub nsw i32 %i.is, %i.bj
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.is, ptr %i.hf, align 4, !tbaa !48
  %i.iv = call i32 @llvm.smax.i32(i32 %i.ir, i32 %i.gs)
  store i32 %i.iv, ptr %10, align 4, !tbaa !35
  %i.iw = add nsw i32 %i.gw, 1                    ; 6 uses
  %i.ix = call i32 @llvm.smax.i32(i32 %i.iu, i32 %i.iw)
  store i32 %i.ix, ptr %i.hc, align 4, !tbaa !46
  %i.iy = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.iy, label %bb.aj, label %.loopexit442

bb.aj:                                            ; preds = %.loopexit443
  %i.iz = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.iz, label %.loopexit442, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ja = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 2 uses
  %i.jb = load i32, ptr %i.hf, align 4, !tbaa !48
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !48
  %i.je = sub nsw i32 %i.jb, %i.jd
  %i.jf = mul nsw i32 %i.je, %i.bj
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds i8, ptr %i.bn, i64 %i.jg
  %i.ji = load i32, ptr %11, align 4, !tbaa !35
  %i.jj = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.jk = xor i32 %i.jj, -1
  %.neg401 = add i32 %i.ji, %i.bj
  %i.jl = add i32 %.neg401, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jh, i64 %i.jm
  br i1 %i.gf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jo = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jp = icmp sgt i32 %i.ja, 0
  br i1 %i.jp, label %bb.an, label %.loopexit442

bb.an:                                            ; preds = %bb.am
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !66
  %i.jq = load i32, ptr %11, align 4, !tbaa !35
  store i32 %i.jq, ptr %10, align 4, !tbaa !35
  %i.jr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !45
  store i32 %i.js, ptr %i.gy, align 4, !tbaa !45
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i32 2, ptr %i.jt, align 8, !tbaa !69
  %i.ju = load i32, ptr %i.jc, align 4, !tbaa !48 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !46
  %.not402448 = icmp slt i32 %i.ju, %i.jw
  br i1 %.not402448, label %.loopexit442, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.an
  %i.jx = sext i32 %i.bj to i64                   ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph451, %bb.ar
  %.1365450 = phi i32 [ %i.ju, %.lr.ph451 ], [ %i.kd, %bb.ar ] ; 5 uses
  %.1374449 = phi ptr [ %i.jn, %.lr.ph451 ], [ %i.kc, %bb.ar ] ; 3 uses
  store i32 %.1365450, ptr %i.hc, align 4, !tbaa !46
  store i32 %.1365450, ptr %i.hf, align 4, !tbaa !48
  br i1 %i.gf, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jy = call ptr @lv_memcpy(ptr noundef %i.gi, ptr noundef %.1374449, i64 noundef %i.jx) #6 ; 0 uses
  %i.jz = load i32, ptr %11, align 4, !tbaa !35
  %i.ka = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.gi, i32 noundef %i.jz, i32 noundef %.1365450, i32 noundef %i.ja) #6 ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 1
  %spec.store.select415 = select i1 %i.kb, i32 2, i32 %i.ka
  store i32 %spec.store.select415, ptr %i.jt, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  store ptr %.1374449, ptr %i.gk, align 8, !tbaa !66
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.kc = getelementptr inbounds i8, ptr %.1374449, i64 %i.jx
  %i.kd = add nsw i32 %.1365450, -1
  %i.ke = load i32, ptr %i.jv, align 4, !tbaa !46
  %.not402.not = icmp sgt i32 %.1365450, %i.ke
  br i1 %.not402.not, label %bb.ao, label %.loopexit442, !llvm.loop !23

.loopexit442:                                     ; preds = %bb.ar, %bb.an, %bb.am, %bb.aj, %.loopexit443
  %i.kf = load i32, ptr %6, align 4, !tbaa !35
  %i.kg = add nsw i32 %i.kf, %i.bj
  store i32 %i.kg, ptr %10, align 4, !tbaa !35
  %i.kh = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.ki = sub nsw i32 %i.kh, %i.bj
  store i32 %i.ki, ptr %i.gy, align 4, !tbaa !45
  %i.kj = load i32, ptr %i.ai, align 4, !tbaa !46 ; 2 uses
  store i32 %i.kj, ptr %i.hc, align 4, !tbaa !46
  %i.kk = add i32 %i.hd, %i.kj
  %i.kl = call i32 @llvm.smin.i32(i32 %i.kk, i32 %i.gw)
  store i32 %i.kl, ptr %i.hf, align 4, !tbaa !48
  %i.km = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.km, label %bb.as, label %.loopexit441

bb.as:                                            ; preds = %.loopexit442
  %i.kn = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.kn, label %.loopexit441, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ko = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !46
  %i.kr = load i32, ptr %i.hc, align 4, !tbaa !46
  %i.ks = sub nsw i32 %i.kq, %i.kr
  %i.kt = mul nsw i32 %i.ks, %i.bj
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %i.bn, i64 %i.ku ; 2 uses
  br i1 %i.gf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.kw = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.kx = icmp sgt i32 %i.ko, 0
  br i1 %i.kx, label %bb.aw, label %.loopexit441

bb.aw:                                            ; preds = %bb.av
  %. = select i1 %i.gf, ptr null, ptr %i.gi
  store ptr %., ptr %i.gk, align 8, !tbaa !66
  %i.ky = load i32, ptr %11, align 4, !tbaa !35
  store i32 %i.ky, ptr %10, align 4, !tbaa !35
  %i.kz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !45
  store i32 %i.la, ptr %i.gy, align 4, !tbaa !45
  %i.lb = load i32, ptr %i.kp, align 4, !tbaa !46 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !48
  %.not403452 = icmp sgt i32 %i.lb, %i.ld
  br i1 %.not403452, label %.loopexit441, label %.lr.ph456

.lr.ph456:                                        ; preds = %bb.aw
  %i.le = zext nneg i32 %i.ko to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.lg = sext i32 %i.bj to i64                   ; 2 uses
  br i1 %i.gf, label %.lr.ph456.split.us, label %.lr.ph456.split

.lr.ph456.split.us:                               ; preds = %.lr.ph456, %bb.ay
  %.2366455.us = phi i32 [ %i.ll, %bb.ay ], [ %i.lb, %.lr.ph456 ] ; 4 uses
  %.2375453.us = phi ptr [ %i.lk, %bb.ay ], [ %i.kv, %.lr.ph456 ] ; 2 uses
  store i32 %.2366455.us, ptr %i.hc, align 4, !tbaa !46
  store i32 %.2366455.us, ptr %i.hf, align 4, !tbaa !48
  %i.lh = load i8, ptr %.2375453.us, align 1, !tbaa !57 ; 2 uses
  br i1 %i.an, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph456.split.us
  %13 = zext i8 %i.lh to i16
  %i.li = load i8, ptr %i.al, align 8, !tbaa !50
  %14 = zext i8 %i.li to i16
  %15 = mul nuw i16 %14, %13
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph456.split.us, %bb.ax
  %i.lj = phi i8 [ %17, %bb.ax ], [ %i.lh, %.lr.ph456.split.us ]
  store i8 %i.lj, ptr %i.go, align 8, !tbaa !68
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.lk = getelementptr inbounds i8, ptr %.2375453.us, i64 %i.lg
  %i.ll = add nsw i32 %.2366455.us, 1
  %i.lm = load i32, ptr %i.lc, align 4, !tbaa !48
  %.not403.us.not = icmp slt i32 %.2366455.us, %i.lm
  br i1 %.not403.us.not, label %.lr.ph456.split.us, label %.loopexit441, !llvm.loop !24

.lr.ph456.split:                                  ; preds = %.lr.ph456, %.lr.ph456.split
  %.2366455 = phi i32 [ %i.ls, %.lr.ph456.split ], [ %i.lb, %.lr.ph456 ] ; 5 uses
  %.2375453 = phi ptr [ %i.lr, %.lr.ph456.split ], [ %i.kv, %.lr.ph456 ] ; 2 uses
  store i32 %.2366455, ptr %i.hc, align 4, !tbaa !46
  store i32 %.2366455, ptr %i.hf, align 4, !tbaa !48
  %i.ln = load i8, ptr %.2375453, align 1, !tbaa !57
  call void @lv_memset(ptr noundef %i.gi, i8 noundef zeroext %i.ln, i64 noundef %i.le) #6
  %i.lo = load i32, ptr %11, align 4, !tbaa !35
  %i.lp = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.gi, i32 noundef %i.lo, i32 noundef %.2366455, i32 noundef %i.ko) #6 ; 2 uses
  %i.lq = icmp eq i32 %i.lp, 1
  %spec.select416 = select i1 %i.lq, i32 2, i32 %i.lp
  store i32 %spec.select416, ptr %i.lf, align 8, !tbaa !69
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %12) #6
  %i.lr = getelementptr inbounds i8, ptr %.2375453, i64 %i.lg
  %i.ls = add nsw i32 %.2366455, 1
  %i.lt = load i32, ptr %i.lc, align 4, !tbaa !48
  %.not403.not = icmp slt i32 %.2366455, %i.lt
  br i1 %.not403.not, label %.lr.ph456.split, label %.loopexit441, !llvm.loop !24

.loopexit441:                                     ; preds = %.lr.ph456.split, %bb.ay, %bb.aw, %bb.av, %bb.as, %.loopexit442
  %i.lu = load i8, ptr %i.al, align 8, !tbaa !50
  store i8 %i.lu, ptr %i.go, align 8, !tbaa !68
  %i.lv = load i32, ptr %6, align 4, !tbaa !35
  %i.lw = add nsw i32 %i.lv, %i.bj
  store i32 %i.lw, ptr %10, align 4, !tbaa !35
  %i.lx = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.ly = sub nsw i32 %i.lx, %i.bj
  store i32 %i.ly, ptr %i.gy, align 4, !tbaa !45
  %i.lz = load i32, ptr %i.ak, align 4, !tbaa !48 ; 2 uses
  %i.ma = sub nsw i32 %i.lz, %i.bj
  %i.mb = add nsw i32 %i.ma, 1
  store i32 %i.lz, ptr %i.hf, align 4, !tbaa !48
  %i.mc = call i32 @llvm.smax.i32(i32 %i.mb, i32 %i.iw)
  store i32 %i.mc, ptr %i.hc, align 4, !tbaa !46
  %i.md = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.md, label %bb.az, label %.loopexit440

bb.az:                                            ; preds = %.loopexit441
  %i.me = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.me, label %.loopexit440, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mf = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 3 uses
  %i.mg = load i32, ptr %i.hf, align 4, !tbaa !48
  %i.mh = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !48 ; 2 uses
  %i.mj = sub nsw i32 %i.mg, %i.mi
  %i.mk = mul nsw i32 %i.mj, %i.bj
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds i8, ptr %i.bn, i64 %i.ml
  %i.mn = icmp sgt i32 %i.mf, 0
  br i1 %i.mn, label %bb.bb, label %.loopexit440

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gf, label %bb.bc, label %.thread424

bb.bc:                                            ; preds = %bb.bb
  %i.mo = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  %.pre = load i32, ptr %i.mh, align 4, !tbaa !48
  br label %.thread424

.thread424:                                       ; preds = %bb.bc, %bb.bb
  %i.mp = phi i32 [ %i.mi, %bb.bb ], [ %.pre, %bb.bc ] ; 2 uses
  %i.mq = phi ptr [ %i.gi, %bb.bb ], [ null, %bb.bc ]
  store ptr %i.mq, ptr %i.gk, align 8, !tbaa !66
  %i.mr = load i32, ptr %11, align 4, !tbaa !35
  store i32 %i.mr, ptr %10, align 4, !tbaa !35
  %i.ms = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !45
  store i32 %i.mt, ptr %i.gy, align 4, !tbaa !45
  %i.mu = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !46
  %.not406457 = icmp slt i32 %i.mp, %i.mv
  br i1 %.not406457, label %.loopexit440, label %.lr.ph461

.lr.ph461:                                        ; preds = %.thread424
  %i.mw = zext nneg i32 %i.mf to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.my = sext i32 %i.bj to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph461, %bb.bh
  %.3367460 = phi i32 [ %i.mp, %.lr.ph461 ], [ %i.ni, %bb.bh ] ; 5 uses
  %.3376458 = phi ptr [ %i.mm, %.lr.ph461 ], [ %i.nh, %bb.bh ] ; 3 uses
  store i32 %.3367460, ptr %i.hc, align 4, !tbaa !46
  store i32 %.3367460, ptr %i.hf, align 4, !tbaa !48
  br i1 %i.gf, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mz = load i8, ptr %.3376458, align 1, !tbaa !57
  call void @lv_memset(ptr noundef %i.gi, i8 noundef zeroext %i.mz, i64 noundef %i.mw) #6
  %i.na = load i32, ptr %11, align 4, !tbaa !35
  %i.nb = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.gi, i32 noundef %i.na, i32 noundef %.3367460, i32 noundef %i.mf) #6 ; 2 uses
  %i.nc = icmp eq i32 %i.nb, 1
  %spec.select418 = select i1 %i.nc, i32 2, i32 %i.nb
  store i32 %spec.select418, ptr %i.mx, align 8, !tbaa !69
  br label %bb.bh

.critedge:                                        ; preds = %bb.bd
  %i.nd = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  %i.ne = load i8, ptr %.3376458, align 1, !tbaa !57 ; 2 uses
  br i1 %i.an, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.critedge
  %18 = zext i8 %i.ne to i16
  %i.nf = load i8, ptr %i.al, align 8, !tbaa !50
  %19 = zext i8 %i.nf to i16
  %20 = mul nuw i16 %19, %18
  %21 = lshr i16 %20, 8
  %22 = trunc nuw i16 %21 to i8
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge, %bb.bf
  %i.ng = phi i8 [ %22, %bb.bf ], [ %i.ne, %.critedge ]
  store i8 %i.ng, ptr %i.go, align 8, !tbaa !68
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.nh = getelementptr inbounds i8, ptr %.3376458, i64 %i.my
  %i.ni = add nsw i32 %.3367460, -1
  %i.nj = load i32, ptr %i.mu, align 4, !tbaa !46
  %.not406.not = icmp sgt i32 %.3367460, %i.nj
  br i1 %.not406.not, label %bb.bd, label %.loopexit440, !llvm.loop !25

.loopexit440:                                     ; preds = %bb.bh, %.thread424, %bb.ba, %bb.az, %.loopexit441
  %i.nk = load i8, ptr %i.al, align 8, !tbaa !50
  store i8 %i.nk, ptr %i.go, align 8, !tbaa !68
  %i.nl = load i32, ptr %i.ag, align 4, !tbaa !45 ; 2 uses
  %i.nm = sub nsw i32 %i.nl, %i.bj
  %i.nn = add nsw i32 %i.nm, 1
  store i32 %i.nl, ptr %i.gy, align 4, !tbaa !45
  %i.no = load i32, ptr %i.ai, align 4, !tbaa !46
  %i.np = add nsw i32 %i.no, %i.bj
  %i.nq = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.nr = sub nsw i32 %i.nq, %i.bj
  %i.ns = call i32 @llvm.smin.i32(i32 %i.np, i32 %i.iw)
  store i32 %i.ns, ptr %i.hc, align 4, !tbaa !46
  %i.nt = call i32 @llvm.smax.i32(i32 %i.nr, i32 %i.gw)
  store i32 %i.nt, ptr %i.hf, align 4, !tbaa !48
  %i.nu = call i32 @llvm.smax.i32(i32 %i.nn, i32 %i.gs)
  store i32 %i.nu, ptr %10, align 4, !tbaa !35
  %i.nv = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.nv, label %bb.bi, label %.loopexit439

bb.bi:                                            ; preds = %.loopexit440
  %i.nw = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.nw, label %.loopexit439, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nx = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 3 uses
  %i.ny = mul nsw i32 %i.hd, %i.bj
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds i8, ptr %i.bn, i64 %i.nz
  %i.ob = load i32, ptr %11, align 4, !tbaa !35
  %i.oc = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.od = xor i32 %i.oc, -1
  %.neg408 = add i32 %i.ob, %i.bj
  %i.oe = add i32 %.neg408, %i.od
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds i8, ptr %i.oa, i64 %i.of ; 2 uses
  br i1 %i.gf, label %bb.bk, label %.thread429

bb.bk:                                            ; preds = %bb.bj
  %i.oh = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %.thread429

.thread429:                                       ; preds = %bb.bk, %bb.bj
  %i.oi = phi ptr [ %i.gi, %bb.bj ], [ %i.og, %bb.bk ]
  store ptr %i.oi, ptr %i.gk, align 8, !tbaa !66
  %i.oj = icmp sgt i32 %i.nx, 0
  br i1 %i.oj, label %bb.bl, label %.loopexit439

bb.bl:                                            ; preds = %.thread429
  %i.ok = load i32, ptr %11, align 4, !tbaa !35
  store i32 %i.ok, ptr %10, align 4, !tbaa !35
  %i.ol = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !45
  store i32 %i.om, ptr %i.gy, align 4, !tbaa !45
  %i.on = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i32 2, ptr %i.on, align 8, !tbaa !69
  %i.oo = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !46 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !48
  %.not409462 = icmp sgt i32 %i.op, %i.or
  br i1 %.not409462, label %.loopexit439, label %.lr.ph464

.lr.ph464:                                        ; preds = %bb.bl
  %i.os = zext nneg i32 %i.nx to i64
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph464, %bb.bo
  %.4368463 = phi i32 [ %i.op, %.lr.ph464 ], [ %i.ox, %bb.bo ] ; 5 uses
  store i32 %.4368463, ptr %i.hc, align 4, !tbaa !46
  store i32 %.4368463, ptr %i.hf, align 4, !tbaa !48
  br i1 %i.gf, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ot = call ptr @lv_memcpy(ptr noundef %i.gi, ptr noundef nonnull %i.og, i64 noundef %i.os) #6 ; 0 uses
  %i.ou = load i32, ptr %11, align 4, !tbaa !35
  %i.ov = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.gi, i32 noundef %i.ou, i32 noundef %.4368463, i32 noundef %i.nx) #6 ; 2 uses
  %i.ow = icmp eq i32 %i.ov, 1
  %spec.store.select419 = select i1 %i.ow, i32 2, i32 %i.ov
  store i32 %spec.store.select419, ptr %i.on, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.ox = add nsw i32 %.4368463, 1
  %i.oy = load i32, ptr %i.oq, align 4, !tbaa !48
  %.not409.not = icmp slt i32 %.4368463, %i.oy
  br i1 %.not409.not, label %bb.bm, label %.loopexit439, !llvm.loop !26

.loopexit439:                                     ; preds = %bb.bo, %bb.bl, %.thread429, %bb.bi, %.loopexit440
  %i.oz = icmp sgt i32 %i.bj, 0
  br i1 %i.oz, label %.lr.ph472, label %._crit_edge473.split

.lr.ph472:                                        ; preds = %.loopexit439
  %i.pa = zext nneg i32 %i.bj to i64
  %i.pb = lshr i32 %i.bj, 1                       ; 3 uses
  %.not492 = icmp eq i32 %i.pb, 0
  br i1 %.not492, label %._crit_edge473.split, label %.lr.ph468.preheader

.lr.ph468.preheader:                              ; preds = %.lr.ph472
  %xtraiter569 = and i32 %i.pb, 3                 ; 3 uses
  %i.pc = icmp ult i32 %i.bj, 8
  %unroll_iter572 = and i32 %i.pb, 1073741820
  %lcmp.mod570.not = icmp eq i32 %xtraiter569, 0
  %lcmp.mod571 = icmp ne i32 %xtraiter569, 0
  br label %.lr.ph468

.lr.ph468:                                        ; preds = %.lr.ph468.preheader, %._crit_edge
  %.5369470 = phi i32 [ %i.pt, %._crit_edge ], [ 0, %.lr.ph468.preheader ]
  %.4377469 = phi ptr [ %i.pd, %._crit_edge ], [ %i.bn, %.lr.ph468.preheader ] ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.4377469, i64 %i.pa ; 3 uses
  br i1 %i.pc, label %.epil.preheader568, label %.lr.ph468.new

.lr.ph468.new:                                    ; preds = %.lr.ph468, %.lr.ph468.new
  %.pn467 = phi ptr [ %.0.3, %.lr.ph468.new ], [ %i.pd, %.lr.ph468 ] ; 4 uses
  %.0361466 = phi ptr [ %i.pp, %.lr.ph468.new ], [ %.4377469, %.lr.ph468 ] ; 6 uses
  %niter573 = phi i32 [ %niter573.next.3, %.lr.ph468.new ], [ 0, %.lr.ph468 ]
  %.0 = getelementptr inbounds i8, ptr %.pn467, i64 -1 ; 2 uses
  %i.pe = load i8, ptr %.0361466, align 1, !tbaa !57
  %i.pf = load i8, ptr %.0, align 1, !tbaa !57
  store i8 %i.pf, ptr %.0361466, align 1, !tbaa !57
  store i8 %i.pe, ptr %.0, align 1, !tbaa !57
  %i.pg = getelementptr inbounds nuw i8, ptr %.0361466, i64 1 ; 2 uses
  %.0.1 = getelementptr inbounds i8, ptr %.pn467, i64 -2 ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !57
  %i.pi = load i8, ptr %.0.1, align 1, !tbaa !57
  store i8 %i.pi, ptr %i.pg, align 1, !tbaa !57
  store i8 %i.ph, ptr %.0.1, align 1, !tbaa !57
  %i.pj = getelementptr inbounds nuw i8, ptr %.0361466, i64 2 ; 2 uses
  %.0.2 = getelementptr inbounds i8, ptr %.pn467, i64 -3 ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !57
  %i.pl = load i8, ptr %.0.2, align 1, !tbaa !57
  store i8 %i.pl, ptr %i.pj, align 1, !tbaa !57
  store i8 %i.pk, ptr %.0.2, align 1, !tbaa !57
  %i.pm = getelementptr inbounds nuw i8, ptr %.0361466, i64 3 ; 2 uses
  %.0.3 = getelementptr inbounds i8, ptr %.pn467, i64 -4 ; 4 uses
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !57
  %i.po = load i8, ptr %.0.3, align 1, !tbaa !57
  store i8 %i.po, ptr %i.pm, align 1, !tbaa !57
  store i8 %i.pn, ptr %.0.3, align 1, !tbaa !57
  %i.pp = getelementptr inbounds nuw i8, ptr %.0361466, i64 4 ; 2 uses
  %niter573.next.3 = add i32 %niter573, 4         ; 2 uses
  %niter573.ncmp.3 = icmp eq i32 %niter573.next.3, %unroll_iter572
  br i1 %niter573.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph468.new, !llvm.loop !27

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph468.new
  br i1 %lcmp.mod570.not, label %._crit_edge, label %.epil.preheader568

.epil.preheader568:                               ; preds = %._crit_edge.unr-lcssa, %.lr.ph468
  %.pn467.epil.init = phi ptr [ %i.pd, %.lr.ph468 ], [ %.0.3, %._crit_edge.unr-lcssa ]
  %.0361466.epil.init = phi ptr [ %.4377469, %.lr.ph468 ], [ %i.pp, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod571)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.epil.preheader568
  %.pn467.epil = phi ptr [ %.pn467.epil.init, %.epil.preheader568 ], [ %.0.epil, %bb.bp ]
  %.0361466.epil = phi ptr [ %.0361466.epil.init, %.epil.preheader568 ], [ %i.ps, %bb.bp ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader568 ], [ %epil.iter.next, %bb.bp ]
  %.0.epil = getelementptr inbounds i8, ptr %.pn467.epil, i64 -1 ; 3 uses
  %i.pq = load i8, ptr %.0361466.epil, align 1, !tbaa !57
  %i.pr = load i8, ptr %.0.epil, align 1, !tbaa !57
  store i8 %i.pr, ptr %.0361466.epil, align 1, !tbaa !57
  store i8 %i.pq, ptr %.0.epil, align 1, !tbaa !57
  %i.ps = getelementptr inbounds nuw i8, ptr %.0361466.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter569
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.bp, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.bp, %._crit_edge.unr-lcssa
  %i.pt = add nuw nsw i32 %.5369470, 1            ; 2 uses
  %exitcond495.not = icmp eq i32 %i.pt, %i.bj
  br i1 %exitcond495.not, label %._crit_edge473.split, label %.lr.ph468, !llvm.loop !29

._crit_edge473.split:                             ; preds = %._crit_edge, %.lr.ph472, %.loopexit439
  %i.pu = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  store i32 %i.pu, ptr %10, align 4, !tbaa !35
  %i.pv = add i32 %i.hd, %i.pu
  %i.pw = load i32, ptr %i.ai, align 4, !tbaa !46
  %i.px = add nsw i32 %i.pw, %i.bj
  %i.py = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.pz = sub nsw i32 %i.py, %i.bj
  %i.qa = call i32 @llvm.smin.i32(i32 %i.px, i32 %i.iw)
  store i32 %i.qa, ptr %i.hc, align 4, !tbaa !46
  %i.qb = call i32 @llvm.smax.i32(i32 %i.pz, i32 %i.gw)
  store i32 %i.qb, ptr %i.hf, align 4, !tbaa !48
  %i.qc = add nsw i32 %i.gs, -1                   ; 3 uses
  %i.qd = call i32 @llvm.smin.i32(i32 %i.pv, i32 %i.qc)
  store i32 %i.qd, ptr %i.gy, align 4, !tbaa !45
  %i.qe = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
end_hunk_0
begin_hunk_1_@shadow_blur_corner:bb.a

.sink.split.epil:                                 ; preds = %bb.e, %.epil.preheader
  %.sink.in.epil = phi i32 [ %i.aj, %bb.e ], [ %i.ae, %.epil.preheader ]
  %.sink.epil = trunc i32 %.sink.in.epil to i16
  store i16 %.sink.epil, ptr %i.ag, align 2, !tbaa !9
  br label %.preheader130

.preheader130:                                    ; preds = %.preheader130.loopexit.unr-lcssa, %.sink.split.epil, %.epil.preheader, %._crit_edge137
  br i1 %i.f, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader130
  %i.ak = add nsw i32 %i.b, %i.a
  %i.al = add nsw i32 %0, -1
  %i.am = sext i32 %i.a to i64
  %wide.trip.count170 = zext nneg i32 %0 to i64   ; 4 uses
  %xtraiter176 = and i64 %wide.trip.count170, 7   ; 3 uses
  %i.an = icmp ult i32 %0, 8
  %unroll_iter179 = and i64 %wide.trip.count170, 2147483640
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  %lcmp.mod178 = icmp ne i64 %xtraiter176, 0
  br label %.lr.ph142.us

.lr.ph142.us:                                     ; preds = %._crit_edge.us149, %.lr.ph147
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge.us149 ], [ 0, %.lr.ph147 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv166 ; 4 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !9
  %i.aq = zext i16 %i.ap to i32
  %i.ar = mul nsw i32 %1, %i.aq
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %indvars.iv166
  %i.as = getelementptr [2 x i8], ptr %2, i64 %indvars.iv166
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph142.us, %bb.f
  %indvars.iv156 = phi i64 [ 0, %.lr.ph142.us ], [ %indvars.iv.next157, %bb.f ] ; 4 uses
  %.0109141.us = phi i32 [ %i.ar, %.lr.ph142.us ], [ %i.be, %bb.f ] ; 2 uses
  %.1140.us = phi ptr [ %i.ao, %.lr.ph142.us ], [ %i.bf, %bb.f ] ; 2 uses
  %i.at = tail call i32 @llvm.smax.i32(i32 %.0109141.us, i32 0)
  %i.au = lshr i32 %i.at, 6
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv156
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !9
  %i.ax = sub nsw i64 %indvars.iv156, %i.am       ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 1
  %i.az = mul nsw i64 %i.ax, %i.c
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.az
  %.0108.in.in.us = select i1 %i.ay, ptr %.1140.us, ptr %gep
  %.0108.in.us = load i16, ptr %.0108.in.in.us, align 2, !tbaa !9
  %.0108.us = zext i16 %.0108.in.us to i32
  %i.ba = sub i32 %.0109141.us, %.0108.us
  %i.bb = trunc nuw nsw i64 %indvars.iv156 to i32
  %i.bc = add i32 %i.ak, %i.bb
  %.pn129.us = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.al)
  %.pn128.us = mul nsw i32 %.pn129.us, %0
  %i.bd = sext i32 %.pn128.us to i64
  %.0.in.in.us = getelementptr [2 x i8], ptr %i.as, i64 %i.bd
  %.0.in.us = load i16, ptr %.0.in.in.us, align 2, !tbaa !9
  %.0.us = zext i16 %.0.in.us to i32
  %i.be = add i32 %i.ba, %.0.us
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.1140.us, i64 %i.c
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count170
  br i1 %exitcond160.not, label %.lr.ph145.us.preheader, label %bb.f, !llvm.loop !72

.lr.ph145.us.preheader:                           ; preds = %bb.f
  br i1 %i.an, label %.lr.ph145.us.epil.preheader, label %.lr.ph145.us

.lr.ph145.us:                                     ; preds = %.lr.ph145.us.preheader, %.lr.ph145.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.7, %.lr.ph145.us ], [ 0, %.lr.ph145.us.preheader ] ; 9 uses
  %.2144.us = phi ptr [ %i.ck, %.lr.ph145.us ], [ %i.ao, %.lr.ph145.us.preheader ] ; 2 uses
  %niter180 = phi i64 [ %niter180.next.7, %.lr.ph145.us ], [ 0, %.lr.ph145.us.preheader ]
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !9
  store i16 %i.bh, ptr %.2144.us, align 2, !tbaa !9
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.2144.us, i64 %i.c ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !9
  store i16 %i.bl, ptr %i.bi, align 2, !tbaa !9
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.c ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !9
  store i16 %i.bp, ptr %i.bm, align 2, !tbaa !9
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.c ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !9
  store i16 %i.bt, ptr %i.bq, align 2, !tbaa !9
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.c ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !9
  store i16 %i.bx, ptr %i.bu, align 2, !tbaa !9
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.c ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !9
  store i16 %i.cb, ptr %i.by, align 2, !tbaa !9
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.c ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !9
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !9
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.c ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !9
  store i16 %i.cj, ptr %i.cg, align 2, !tbaa !9
  %indvars.iv.next162.7 = add nuw nsw i64 %indvars.iv161, 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %niter180.next.7 = add i64 %niter180, 8         ; 2 uses
  %niter180.ncmp.7 = icmp eq i64 %niter180.next.7, %unroll_iter179
  br i1 %niter180.ncmp.7, label %._crit_edge.us149.unr-lcssa, label %.lr.ph145.us, !llvm.loop !73

._crit_edge.us149.unr-lcssa:                      ; preds = %.lr.ph145.us
  br i1 %lcmp.mod177.not, label %._crit_edge.us149, label %.lr.ph145.us.epil.preheader

.lr.ph145.us.epil.preheader:                      ; preds = %._crit_edge.us149.unr-lcssa, %.lr.ph145.us.preheader
  %indvars.iv161.epil.init = phi i64 [ 0, %.lr.ph145.us.preheader ], [ %indvars.iv.next162.7, %._crit_edge.us149.unr-lcssa ]
  %.2144.us.epil.init = phi ptr [ %i.ao, %.lr.ph145.us.preheader ], [ %i.ck, %._crit_edge.us149.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph145.us.epil

.lr.ph145.us.epil:                                ; preds = %.lr.ph145.us.epil, %.lr.ph145.us.epil.preheader
  %indvars.iv161.epil = phi i64 [ %indvars.iv.next162.epil, %.lr.ph145.us.epil ], [ %indvars.iv161.epil.init, %.lr.ph145.us.epil.preheader ] ; 2 uses
  %.2144.us.epil = phi ptr [ %i.cn, %.lr.ph145.us.epil ], [ %.2144.us.epil.init, %.lr.ph145.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph145.us.epil ], [ 0, %.lr.ph145.us.epil.preheader ]
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv161.epil
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9
  store i16 %i.cm, ptr %.2144.us.epil, align 2, !tbaa !9
  %indvars.iv.next162.epil = add nuw nsw i64 %indvars.iv161.epil, 1
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.2144.us.epil, i64 %i.c
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter176
  br i1 %epil.iter.cmp.not, label %._crit_edge.us149, label %.lr.ph145.us.epil, !llvm.loop !74

._crit_edge.us149:                                ; preds = %.lr.ph145.us.epil, %._crit_edge.us149.unr-lcssa
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge148, label %.lr.ph142.us, !llvm.loop !75

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv152 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next153.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv152 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.cp, label %bb.h [
    i16 0, label %bb.i
    i16 16320, label %.sink.split
  ]

bb.h:                                             ; preds = %bb.g
  %i.cq = zext i16 %i.cp to i32
  %i.cr = sdiv i32 %i.cq, %1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink.in = phi i32 [ %i.cr, %bb.h ], [ %i.ae, %bb.g ]
  %.sink = trunc i32 %.sink.in to i16
  store i16 %.sink, ptr %i.co, align 2, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv152
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.cu, label %bb.j [
    i16 0, label %bb.k
    i16 16320, label %.sink.split.1
  ]

bb.j:                                             ; preds = %bb.i
  %i.cv = zext i16 %i.cu to i32
  %i.cw = sdiv i32 %i.cv, %1
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.j, %bb.i
  %.sink.in.1 = phi i32 [ %i.cw, %bb.j ], [ %i.ae, %bb.i ]
  %.sink.1 = trunc i32 %.sink.in.1 to i16
  store i16 %.sink.1, ptr %i.ct, align 2, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.1, %bb.i
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader130.loopexit.unr-lcssa, label %bb.g, !llvm.loop !76

._crit_edge148:                                   ; preds = %._crit_edge.us149, %.preheader130
  tail call void @lv_free(ptr noundef %i.e) #6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{null}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !58, !59}
!16 = distinct !{!16, !10, !58, !59}
!17 = distinct !{!17, !10, !59, !58}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !58, !59}
!20 = distinct !{!20, !10, !58, !59}
!21 = distinct !{!21, !10, !59, !58}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!35 = !{!34, !5, i64 0}
!36 = !{!"any pointer", !4, i64 0}
!37 = !{!"p1 _ZTS9_lv_obj_t", !36, i64 0}
!38 = !{!"p1 _ZTS11_lv_layer_t", !36, i64 0}
!39 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!40 = !{!"long", !4, i64 0}
!41 = !{!"", !37, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !38, i64 24, !8, i64 32, !8, i64 34, !39, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !40, i64 48, !36, i64 56}
!42 = !{!"", !41, i64 0, !5, i64 64, !39, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !4, i64 88, !4, i64 89}
!43 = !{!42, !5, i64 80}
!44 = !{!42, !5, i64 76}
!45 = !{!34, !5, i64 8}
!46 = !{!34, !5, i64 4}
!47 = !{!42, !5, i64 84}
!48 = !{!34, !5, i64 12}
!49 = !{!42, !5, i64 72}
!50 = !{!42, !4, i64 88}
!51 = !{!5, !5, i64 0}
!52 = !{!42, !5, i64 64}
!53 = !{!"_lv_draw_sw_mask_common_dsc_t", !36, i64 0, !5, i64 8}
!54 = !{!"", !34, i64 0, !5, i64 16, !4, i64 20}
!55 = !{!"_lv_draw_sw_mask_radius_param_t", !53, i64 0, !54, i64 16, !36, i64 40}
!56 = !{!55, !36, i64 0}
!57 = !{!4, !4, i64 0}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"branch_weights", i32 4, i32 12}
!61 = !{!36, !36, i64 0}
!62 = !{!"p1 omnipotent char", !36, i64 0}
!63 = !{!"_lv_draw_sw_blend_dsc_t", !36, i64 0, !36, i64 8, !5, i64 16, !5, i64 20, !36, i64 24, !4, i64 32, !39, i64 33, !62, i64 40, !5, i64 48, !36, i64 56, !5, i64 64, !5, i64 68}
!64 = !{!63, !36, i64 0}
!65 = !{!63, !36, i64 56}
!66 = !{!63, !62, i64 40}
!67 = !{i64 0, i64 1, !57, i64 1, i64 1, !57, i64 2, i64 1, !57}
!68 = !{!63, !4, i64 32}
!69 = !{!63, !5, i64 48}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
end_hunk_1
