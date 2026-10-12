Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_box_shadow?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_box_shadow:bb.a
  store i32 2, ptr %i.js, align 8, !tbaa !70
  %i.jt = load i32, ptr %i.ja, align 4, !tbaa !47 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !49
  %.not400445 = icmp sgt i32 %i.jt, %i.jv
  br i1 %.not400445, label %.loopexit443, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.jw = sext i32 %i.bj to i64                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ae
  %.0364447 = phi i32 [ %i.jt, %.lr.ph ], [ %i.kc, %bb.ae ] ; 5 uses
  %.0373446 = phi ptr [ %i.jm, %.lr.ph ], [ %i.kb, %bb.ae ] ; 3 uses
  store i32 %.0364447, ptr %i.ir, align 4, !tbaa !47
  store i32 %.0364447, ptr %i.iu, align 4, !tbaa !49
  br i1 %i.hu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jx = call ptr @lv_memcpy(ptr noundef %i.hx, ptr noundef %.0373446, i64 noundef %i.jw) #6 ; 0 uses
  %i.jy = load i32, ptr %11, align 4, !tbaa !36
  %i.jz = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.hx, i32 noundef %i.jy, i32 noundef %.0364447, i32 noundef %i.iz) #6 ; 2 uses
  %i.ka = icmp eq i32 %i.jz, 1
  %spec.store.select = select i1 %i.ka, i32 2, i32 %i.jz
  store i32 %spec.store.select, ptr %i.js, align 8, !tbaa !70
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store ptr %.0373446, ptr %i.hz, align 8, !tbaa !67
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.kb = getelementptr inbounds i8, ptr %.0373446, i64 %i.jw
  %i.kc = add nsw i32 %.0364447, 1
  %i.kd = load i32, ptr %i.ju, align 4, !tbaa !49
  %.not400.not = icmp slt i32 %.0364447, %i.kd
  br i1 %.not400.not, label %bb.ab, label %.loopexit443, !llvm.loop !23

.loopexit443:                                     ; preds = %bb.ae, %bb.aa, %bb.z, %bb.w, %bb.v
  %i.ke = load i32, ptr %i.ag, align 4, !tbaa !46 ; 2 uses
  store i32 %i.ke, ptr %i.in, align 4, !tbaa !46
  %i.kf = sub nsw i32 %i.ke, %i.bj
  %i.kg = add nsw i32 %i.kf, 1
  %i.kh = load i32, ptr %i.ak, align 4, !tbaa !49 ; 2 uses
  %i.ki = sub nsw i32 %i.kh, %i.bj
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kh, ptr %i.iu, align 4, !tbaa !49
  %i.kk = call i32 @llvm.smax.i32(i32 %i.kg, i32 %i.ih)
  store i32 %i.kk, ptr %10, align 4, !tbaa !36
  %i.kl = add nsw i32 %i.il, 1                    ; 6 uses
  %i.km = call i32 @llvm.smax.i32(i32 %i.kj, i32 %i.kl)
  store i32 %i.km, ptr %i.ir, align 4, !tbaa !47
  %i.kn = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.kn, label %bb.af, label %.loopexit442

bb.af:                                            ; preds = %.loopexit443
  %i.ko = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.ko, label %.loopexit442, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kp = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 2 uses
  %i.kq = load i32, ptr %i.iu, align 4, !tbaa !49
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !49
  %i.kt = sub nsw i32 %i.kq, %i.ks
  %i.ku = mul nsw i32 %i.kt, %i.bj
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %i.bn, i64 %i.kv
  %i.kx = load i32, ptr %11, align 4, !tbaa !36
  %i.ky = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.kz = xor i32 %i.ky, -1
  %.neg401 = add i32 %i.kx, %i.bj
  %i.la = add i32 %.neg401, %i.kz
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds i8, ptr %i.kw, i64 %i.lb
  br i1 %i.hu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ld = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.le = icmp sgt i32 %i.kp, 0
  br i1 %i.le, label %bb.aj, label %.loopexit442

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !67
  %i.lf = load i32, ptr %11, align 4, !tbaa !36
  store i32 %i.lf, ptr %10, align 4, !tbaa !36
  %i.lg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !46
  store i32 %i.lh, ptr %i.in, align 4, !tbaa !46
  %i.li = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i32 2, ptr %i.li, align 8, !tbaa !70
  %i.lj = load i32, ptr %i.kr, align 4, !tbaa !49 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !47
  %.not402448 = icmp slt i32 %i.lj, %i.ll
  br i1 %.not402448, label %.loopexit442, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.aj
  %i.lm = sext i32 %i.bj to i64                   ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph451, %bb.an
  %.1365450 = phi i32 [ %i.lj, %.lr.ph451 ], [ %i.ls, %bb.an ] ; 5 uses
  %.1374449 = phi ptr [ %i.lc, %.lr.ph451 ], [ %i.lr, %bb.an ] ; 3 uses
  store i32 %.1365450, ptr %i.ir, align 4, !tbaa !47
  store i32 %.1365450, ptr %i.iu, align 4, !tbaa !49
  br i1 %i.hu, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ln = call ptr @lv_memcpy(ptr noundef %i.hx, ptr noundef %.1374449, i64 noundef %i.lm) #6 ; 0 uses
  %i.lo = load i32, ptr %11, align 4, !tbaa !36
  %i.lp = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.hx, i32 noundef %i.lo, i32 noundef %.1365450, i32 noundef %i.kp) #6 ; 2 uses
  %i.lq = icmp eq i32 %i.lp, 1
  %spec.store.select415 = select i1 %i.lq, i32 2, i32 %i.lp
  store i32 %spec.store.select415, ptr %i.li, align 8, !tbaa !70
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store ptr %.1374449, ptr %i.hz, align 8, !tbaa !67
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.lr = getelementptr inbounds i8, ptr %.1374449, i64 %i.lm
  %i.ls = add nsw i32 %.1365450, -1
  %i.lt = load i32, ptr %i.lk, align 4, !tbaa !47
  %.not402.not = icmp sgt i32 %.1365450, %i.lt
  br i1 %.not402.not, label %bb.ak, label %.loopexit442, !llvm.loop !24

.loopexit442:                                     ; preds = %bb.an, %bb.aj, %bb.ai, %bb.af, %.loopexit443
  %i.lu = load i32, ptr %6, align 4, !tbaa !36
  %i.lv = add nsw i32 %i.lu, %i.bj
  store i32 %i.lv, ptr %10, align 4, !tbaa !36
  %i.lw = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.lx = sub nsw i32 %i.lw, %i.bj
  store i32 %i.lx, ptr %i.in, align 4, !tbaa !46
  %i.ly = load i32, ptr %i.ai, align 4, !tbaa !47 ; 2 uses
  store i32 %i.ly, ptr %i.ir, align 4, !tbaa !47
  %i.lz = add i32 %i.is, %i.ly
  %i.ma = call i32 @llvm.smin.i32(i32 %i.lz, i32 %i.il)
  store i32 %i.ma, ptr %i.iu, align 4, !tbaa !49
  %i.mb = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.mb, label %bb.ao, label %.loopexit441

bb.ao:                                            ; preds = %.loopexit442
  %i.mc = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.mc, label %.loopexit441, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.md = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !47
  %i.mg = load i32, ptr %i.ir, align 4, !tbaa !47
  %i.mh = sub nsw i32 %i.mf, %i.mg
  %i.mi = mul nsw i32 %i.mh, %i.bj
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.bn, i64 %i.mj ; 2 uses
  br i1 %i.hu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ml = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.mm = icmp sgt i32 %i.md, 0
  br i1 %i.mm, label %bb.as, label %.loopexit441

bb.as:                                            ; preds = %bb.ar
  %. = select i1 %i.hu, ptr null, ptr %i.hx
  store ptr %., ptr %i.hz, align 8, !tbaa !67
  %i.mn = load i32, ptr %11, align 4, !tbaa !36
  store i32 %i.mn, ptr %10, align 4, !tbaa !36
  %i.mo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !46
  store i32 %i.mp, ptr %i.in, align 4, !tbaa !46
  %i.mq = load i32, ptr %i.me, align 4, !tbaa !47 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !49
  %.not403452 = icmp sgt i32 %i.mq, %i.ms
  br i1 %.not403452, label %.loopexit441, label %.lr.ph456

.lr.ph456:                                        ; preds = %bb.as
  %i.mt = zext nneg i32 %i.md to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.mv = sext i32 %i.bj to i64                   ; 2 uses
  br i1 %i.hu, label %.lr.ph456.split.us, label %.lr.ph456.split

.lr.ph456.split.us:                               ; preds = %.lr.ph456, %bb.au
  %.2366455.us = phi i32 [ %i.na, %bb.au ], [ %i.mq, %.lr.ph456 ] ; 4 uses
  %.2375453.us = phi ptr [ %i.mz, %bb.au ], [ %i.mk, %.lr.ph456 ] ; 2 uses
  store i32 %.2366455.us, ptr %i.ir, align 4, !tbaa !47
  store i32 %.2366455.us, ptr %i.iu, align 4, !tbaa !49
  %i.mw = load i8, ptr %.2375453.us, align 1, !tbaa !58 ; 2 uses
  br i1 %i.an, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph456.split.us
  %13 = zext i8 %i.mw to i16
  %i.mx = load i8, ptr %i.al, align 8, !tbaa !51
  %14 = zext i8 %i.mx to i16
  %15 = mul nuw i16 %14, %13
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph456.split.us, %bb.at
  %i.my = phi i8 [ %17, %bb.at ], [ %i.mw, %.lr.ph456.split.us ]
  store i8 %i.my, ptr %i.id, align 8, !tbaa !69
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.mz = getelementptr inbounds i8, ptr %.2375453.us, i64 %i.mv
  %i.na = add nsw i32 %.2366455.us, 1
  %i.nb = load i32, ptr %i.mr, align 4, !tbaa !49
  %.not403.us.not = icmp slt i32 %.2366455.us, %i.nb
  br i1 %.not403.us.not, label %.lr.ph456.split.us, label %.loopexit441, !llvm.loop !25

.lr.ph456.split:                                  ; preds = %.lr.ph456, %.lr.ph456.split
  %.2366455 = phi i32 [ %i.nh, %.lr.ph456.split ], [ %i.mq, %.lr.ph456 ] ; 5 uses
  %.2375453 = phi ptr [ %i.ng, %.lr.ph456.split ], [ %i.mk, %.lr.ph456 ] ; 2 uses
  store i32 %.2366455, ptr %i.ir, align 4, !tbaa !47
  store i32 %.2366455, ptr %i.iu, align 4, !tbaa !49
  %i.nc = load i8, ptr %.2375453, align 1, !tbaa !58
  call void @lv_memset(ptr noundef %i.hx, i8 noundef zeroext %i.nc, i64 noundef %i.mt) #6
  %i.nd = load i32, ptr %11, align 4, !tbaa !36
  %i.ne = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.hx, i32 noundef %i.nd, i32 noundef %.2366455, i32 noundef %i.md) #6 ; 2 uses
  %i.nf = icmp eq i32 %i.ne, 1
  %spec.select416 = select i1 %i.nf, i32 2, i32 %i.ne
  store i32 %spec.select416, ptr %i.mu, align 8, !tbaa !70
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %12) #6
  %i.ng = getelementptr inbounds i8, ptr %.2375453, i64 %i.mv
  %i.nh = add nsw i32 %.2366455, 1
  %i.ni = load i32, ptr %i.mr, align 4, !tbaa !49
  %.not403.not = icmp slt i32 %.2366455, %i.ni
  br i1 %.not403.not, label %.lr.ph456.split, label %.loopexit441, !llvm.loop !25

.loopexit441:                                     ; preds = %.lr.ph456.split, %bb.au, %bb.as, %bb.ar, %bb.ao, %.loopexit442
  %i.nj = load i8, ptr %i.al, align 8, !tbaa !51
  store i8 %i.nj, ptr %i.id, align 8, !tbaa !69
  %i.nk = load i32, ptr %6, align 4, !tbaa !36
  %i.nl = add nsw i32 %i.nk, %i.bj
  store i32 %i.nl, ptr %10, align 4, !tbaa !36
  %i.nm = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.nn = sub nsw i32 %i.nm, %i.bj
  store i32 %i.nn, ptr %i.in, align 4, !tbaa !46
  %i.no = load i32, ptr %i.ak, align 4, !tbaa !49 ; 2 uses
  %i.np = sub nsw i32 %i.no, %i.bj
  %i.nq = add nsw i32 %i.np, 1
  store i32 %i.no, ptr %i.iu, align 4, !tbaa !49
  %i.nr = call i32 @llvm.smax.i32(i32 %i.nq, i32 %i.kl)
  store i32 %i.nr, ptr %i.ir, align 4, !tbaa !47
  %i.ns = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.ns, label %bb.av, label %.loopexit440

bb.av:                                            ; preds = %.loopexit441
  %i.nt = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.nt, label %.loopexit440, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nu = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 3 uses
  %i.nv = load i32, ptr %i.iu, align 4, !tbaa !49
  %i.nw = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !49 ; 2 uses
  %i.ny = sub nsw i32 %i.nv, %i.nx
  %i.nz = mul nsw i32 %i.ny, %i.bj
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds i8, ptr %i.bn, i64 %i.oa
  %i.oc = icmp sgt i32 %i.nu, 0
  br i1 %i.oc, label %bb.ax, label %.loopexit440

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.hu, label %bb.ay, label %.thread424

bb.ay:                                            ; preds = %bb.ax
  %i.od = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  %.pre = load i32, ptr %i.nw, align 4, !tbaa !49
  br label %.thread424

.thread424:                                       ; preds = %bb.ay, %bb.ax
  %i.oe = phi i32 [ %i.nx, %bb.ax ], [ %.pre, %bb.ay ] ; 2 uses
  %i.of = phi ptr [ %i.hx, %bb.ax ], [ null, %bb.ay ]
  store ptr %i.of, ptr %i.hz, align 8, !tbaa !67
  %i.og = load i32, ptr %11, align 4, !tbaa !36
  store i32 %i.og, ptr %10, align 4, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !46
  store i32 %i.oi, ptr %i.in, align 4, !tbaa !46
  %i.oj = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !47
  %.not406457 = icmp slt i32 %i.oe, %i.ok
  br i1 %.not406457, label %.loopexit440, label %.lr.ph461

.lr.ph461:                                        ; preds = %.thread424
  %i.ol = zext nneg i32 %i.nu to i64
  %i.om = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.on = sext i32 %i.bj to i64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph461, %bb.bd
  %.3367460 = phi i32 [ %i.oe, %.lr.ph461 ], [ %i.ox, %bb.bd ] ; 5 uses
  %.3376458 = phi ptr [ %i.ob, %.lr.ph461 ], [ %i.ow, %bb.bd ] ; 3 uses
  store i32 %.3367460, ptr %i.ir, align 4, !tbaa !47
  store i32 %.3367460, ptr %i.iu, align 4, !tbaa !49
  br i1 %i.hu, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oo = load i8, ptr %.3376458, align 1, !tbaa !58
  call void @lv_memset(ptr noundef %i.hx, i8 noundef zeroext %i.oo, i64 noundef %i.ol) #6
  %i.op = load i32, ptr %11, align 4, !tbaa !36
  %i.oq = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.hx, i32 noundef %i.op, i32 noundef %.3367460, i32 noundef %i.nu) #6 ; 2 uses
  %i.or = icmp eq i32 %i.oq, 1
  %spec.select418 = select i1 %i.or, i32 2, i32 %i.oq
  store i32 %spec.select418, ptr %i.om, align 8, !tbaa !70
  br label %bb.bd

.critedge:                                        ; preds = %bb.az
  %i.os = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  %i.ot = load i8, ptr %.3376458, align 1, !tbaa !58 ; 2 uses
  br i1 %i.an, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge
  %18 = zext i8 %i.ot to i16
  %i.ou = load i8, ptr %i.al, align 8, !tbaa !51
  %19 = zext i8 %i.ou to i16
  %20 = mul nuw i16 %19, %18
  %21 = lshr i16 %20, 8
  %22 = trunc nuw i16 %21 to i8
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge, %bb.bb
  %i.ov = phi i8 [ %22, %bb.bb ], [ %i.ot, %.critedge ]
  store i8 %i.ov, ptr %i.id, align 8, !tbaa !69
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.ow = getelementptr inbounds i8, ptr %.3376458, i64 %i.on
  %i.ox = add nsw i32 %.3367460, -1
  %i.oy = load i32, ptr %i.oj, align 4, !tbaa !47
  %.not406.not = icmp sgt i32 %.3367460, %i.oy
  br i1 %.not406.not, label %bb.az, label %.loopexit440, !llvm.loop !26

.loopexit440:                                     ; preds = %bb.bd, %.thread424, %bb.aw, %bb.av, %.loopexit441
  %i.oz = load i8, ptr %i.al, align 8, !tbaa !51
  store i8 %i.oz, ptr %i.id, align 8, !tbaa !69
  %i.pa = load i32, ptr %i.ag, align 4, !tbaa !46 ; 2 uses
  %i.pb = sub nsw i32 %i.pa, %i.bj
  %i.pc = add nsw i32 %i.pb, 1
  store i32 %i.pa, ptr %i.in, align 4, !tbaa !46
  %i.pd = load i32, ptr %i.ai, align 4, !tbaa !47
  %i.pe = add nsw i32 %i.pd, %i.bj
  %i.pf = load i32, ptr %i.ak, align 4, !tbaa !49
  %i.pg = sub nsw i32 %i.pf, %i.bj
  %i.ph = call i32 @llvm.smin.i32(i32 %i.pe, i32 %i.kl)
  store i32 %i.ph, ptr %i.ir, align 4, !tbaa !47
  %i.pi = call i32 @llvm.smax.i32(i32 %i.pg, i32 %i.il)
  store i32 %i.pi, ptr %i.iu, align 4, !tbaa !49
  %i.pj = call i32 @llvm.smax.i32(i32 %i.pc, i32 %i.ih)
  store i32 %i.pj, ptr %10, align 4, !tbaa !36
  %i.pk = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
  br i1 %i.pk, label %bb.be, label %.loopexit439

bb.be:                                            ; preds = %.loopexit440
  %i.pl = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6
  br i1 %i.pl, label %.loopexit439, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pm = call i32 @lv_area_get_width(ptr noundef nonnull %11) #6 ; 3 uses
  %i.pn = mul nsw i32 %i.is, %i.bj
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds i8, ptr %i.bn, i64 %i.po
  %i.pq = load i32, ptr %11, align 4, !tbaa !36
  %i.pr = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.ps = xor i32 %i.pr, -1
  %.neg408 = add i32 %i.pq, %i.bj
  %i.pt = add i32 %.neg408, %i.ps
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds i8, ptr %i.pp, i64 %i.pu ; 2 uses
  br i1 %i.hu, label %bb.bg, label %.thread429

bb.bg:                                            ; preds = %bb.bf
  %i.pw = call zeroext i1 @lv_area_is_out(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef %spec.select) #6 ; 0 uses
  br label %.thread429

.thread429:                                       ; preds = %bb.bg, %bb.bf
  %i.px = phi ptr [ %i.hx, %bb.bf ], [ %i.pv, %bb.bg ]
  store ptr %i.px, ptr %i.hz, align 8, !tbaa !67
  %i.py = icmp sgt i32 %i.pm, 0
  br i1 %i.py, label %bb.bh, label %.loopexit439

bb.bh:                                            ; preds = %.thread429
  %i.pz = load i32, ptr %11, align 4, !tbaa !36
  store i32 %i.pz, ptr %10, align 4, !tbaa !36
  %i.qa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !46
  store i32 %i.qb, ptr %i.in, align 4, !tbaa !46
  %i.qc = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i32 2, ptr %i.qc, align 8, !tbaa !70
  %i.qd = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !47 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !49
  %.not409462 = icmp sgt i32 %i.qe, %i.qg
  br i1 %.not409462, label %.loopexit439, label %.lr.ph464

.lr.ph464:                                        ; preds = %bb.bh
  %i.qh = zext nneg i32 %i.pm to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph464, %bb.bk
  %.4368463 = phi i32 [ %i.qe, %.lr.ph464 ], [ %i.qm, %bb.bk ] ; 5 uses
  store i32 %.4368463, ptr %i.ir, align 4, !tbaa !47
  store i32 %.4368463, ptr %i.iu, align 4, !tbaa !49
  br i1 %i.hu, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qi = call ptr @lv_memcpy(ptr noundef %i.hx, ptr noundef nonnull %i.pv, i64 noundef %i.qh) #6 ; 0 uses
  %i.qj = load i32, ptr %11, align 4, !tbaa !36
  %i.qk = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.hx, i32 noundef %i.qj, i32 noundef %.4368463, i32 noundef %i.pm) #6 ; 2 uses
  %i.ql = icmp eq i32 %i.qk, 1
  %spec.store.select419 = select i1 %i.ql, i32 2, i32 %i.qk
  store i32 %spec.store.select419, ptr %i.qc, align 8, !tbaa !70
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %12) #6
  %i.qm = add nsw i32 %.4368463, 1
  %i.qn = load i32, ptr %i.qf, align 4, !tbaa !49
  %.not409.not = icmp slt i32 %.4368463, %i.qn
  br i1 %.not409.not, label %bb.bi, label %.loopexit439, !llvm.loop !27

.loopexit439:                                     ; preds = %bb.bk, %bb.bh, %.thread429, %bb.be, %.loopexit440
  %i.qo = icmp sgt i32 %i.bj, 0
  br i1 %i.qo, label %.lr.ph472, label %._crit_edge473.split

.lr.ph472:                                        ; preds = %.loopexit439
  %i.qp = zext nneg i32 %i.bj to i64
  %i.qq = lshr i32 %i.bj, 1                       ; 3 uses
  %.not492 = icmp eq i32 %i.qq, 0
  br i1 %.not492, label %._crit_edge473.split, label %.lr.ph468.preheader

.lr.ph468.preheader:                              ; preds = %.lr.ph472
  %xtraiter589 = and i32 %i.qq, 3                 ; 3 uses
  %i.qr = icmp ult i32 %i.bj, 8
  %unroll_iter592 = and i32 %i.qq, 1073741820
  %lcmp.mod590.not = icmp eq i32 %xtraiter589, 0
  %lcmp.mod591 = icmp ne i32 %xtraiter589, 0
  br label %.lr.ph468

.lr.ph468:                                        ; preds = %.lr.ph468.preheader, %._crit_edge
  %.5369470 = phi i32 [ %i.ri, %._crit_edge ], [ 0, %.lr.ph468.preheader ]
  %.4377469 = phi ptr [ %i.qs, %._crit_edge ], [ %i.bn, %.lr.ph468.preheader ] ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.4377469, i64 %i.qp ; 3 uses
  br i1 %i.qr, label %.epil.preheader, label %.lr.ph468.new

.lr.ph468.new:                                    ; preds = %.lr.ph468, %.lr.ph468.new
  %.pn467 = phi ptr [ %.0.3, %.lr.ph468.new ], [ %i.qs, %.lr.ph468 ] ; 4 uses
  %.0361466 = phi ptr [ %i.re, %.lr.ph468.new ], [ %.4377469, %.lr.ph468 ] ; 6 uses
  %niter593 = phi i32 [ %niter593.next.3, %.lr.ph468.new ], [ 0, %.lr.ph468 ]
  %.0 = getelementptr inbounds i8, ptr %.pn467, i64 -1 ; 2 uses
  %i.qt = load i8, ptr %.0361466, align 1, !tbaa !58
  %i.qu = load i8, ptr %.0, align 1, !tbaa !58
  store i8 %i.qu, ptr %.0361466, align 1, !tbaa !58
  store i8 %i.qt, ptr %.0, align 1, !tbaa !58
  %i.qv = getelementptr inbounds nuw i8, ptr %.0361466, i64 1 ; 2 uses
  %.0.1 = getelementptr inbounds i8, ptr %.pn467, i64 -2 ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !58
  %i.qx = load i8, ptr %.0.1, align 1, !tbaa !58
  store i8 %i.qx, ptr %i.qv, align 1, !tbaa !58
  store i8 %i.qw, ptr %.0.1, align 1, !tbaa !58
  %i.qy = getelementptr inbounds nuw i8, ptr %.0361466, i64 2 ; 2 uses
  %.0.2 = getelementptr inbounds i8, ptr %.pn467, i64 -3 ; 2 uses
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !58
  %i.ra = load i8, ptr %.0.2, align 1, !tbaa !58
  store i8 %i.ra, ptr %i.qy, align 1, !tbaa !58
  store i8 %i.qz, ptr %.0.2, align 1, !tbaa !58
  %i.rb = getelementptr inbounds nuw i8, ptr %.0361466, i64 3 ; 2 uses
  %.0.3 = getelementptr inbounds i8, ptr %.pn467, i64 -4 ; 4 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !58
  %i.rd = load i8, ptr %.0.3, align 1, !tbaa !58
  store i8 %i.rd, ptr %i.rb, align 1, !tbaa !58
  store i8 %i.rc, ptr %.0.3, align 1, !tbaa !58
  %i.re = getelementptr inbounds nuw i8, ptr %.0361466, i64 4 ; 2 uses
  %niter593.next.3 = add i32 %niter593, 4         ; 2 uses
  %niter593.ncmp.3 = icmp eq i32 %niter593.next.3, %unroll_iter592
  br i1 %niter593.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph468.new, !llvm.loop !28

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph468.new
  br i1 %lcmp.mod590.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph468
  %.pn467.epil.init = phi ptr [ %i.qs, %.lr.ph468 ], [ %.0.3, %._crit_edge.unr-lcssa ]
  %.0361466.epil.init = phi ptr [ %.4377469, %.lr.ph468 ], [ %i.re, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod591)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader
  %.pn467.epil = phi ptr [ %.pn467.epil.init, %.epil.preheader ], [ %.0.epil, %bb.bl ]
  %.0361466.epil = phi ptr [ %.0361466.epil.init, %.epil.preheader ], [ %i.rh, %bb.bl ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bl ]
  %.0.epil = getelementptr inbounds i8, ptr %.pn467.epil, i64 -1 ; 3 uses
  %i.rf = load i8, ptr %.0361466.epil, align 1, !tbaa !58
  %i.rg = load i8, ptr %.0.epil, align 1, !tbaa !58
  store i8 %i.rg, ptr %.0361466.epil, align 1, !tbaa !58
  store i8 %i.rf, ptr %.0.epil, align 1, !tbaa !58
  %i.rh = getelementptr inbounds nuw i8, ptr %.0361466.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter589
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.bl, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.bl, %._crit_edge.unr-lcssa
  %i.ri = add nuw nsw i32 %.5369470, 1            ; 2 uses
  %exitcond495.not = icmp eq i32 %i.ri, %i.bj
  br i1 %exitcond495.not, label %._crit_edge473.split, label %.lr.ph468, !llvm.loop !30

._crit_edge473.split:                             ; preds = %._crit_edge, %.lr.ph472, %.loopexit439
  %i.rj = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  store i32 %i.rj, ptr %10, align 4, !tbaa !36
  %i.rk = add i32 %i.is, %i.rj
  %i.rl = load i32, ptr %i.ai, align 4, !tbaa !47
  %i.rm = add nsw i32 %i.rl, %i.bj
  %i.rn = load i32, ptr %i.ak, align 4, !tbaa !49
  %i.ro = sub nsw i32 %i.rn, %i.bj
  %i.rp = call i32 @llvm.smin.i32(i32 %i.rm, i32 %i.kl)
  store i32 %i.rp, ptr %i.ir, align 4, !tbaa !47
  %i.rq = call i32 @llvm.smax.i32(i32 %i.ro, i32 %i.il)
  store i32 %i.rq, ptr %i.iu, align 4, !tbaa !49
  %i.rr = add nsw i32 %i.ih, -1                   ; 3 uses
  %i.rs = call i32 @llvm.smin.i32(i32 %i.rk, i32 %i.rr)
  store i32 %i.rs, ptr %i.in, align 4, !tbaa !46
  %i.rt = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.ao) #6
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
  br i1 %exitcond160.not, label %.lr.ph145.us.preheader, label %bb.f, !llvm.loop !73

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
  br i1 %niter180.ncmp.7, label %._crit_edge.us149.unr-lcssa, label %.lr.ph145.us, !llvm.loop !74

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
  br i1 %epil.iter.cmp.not, label %._crit_edge.us149, label %.lr.ph145.us.epil, !llvm.loop !75

._crit_edge.us149:                                ; preds = %.lr.ph145.us.epil, %._crit_edge.us149.unr-lcssa
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge148, label %.lr.ph142.us, !llvm.loop !76

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
  br i1 %niter.ncmp.1, label %.preheader130.loopexit.unr-lcssa, label %bb.g, !llvm.loop !77

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
!15 = distinct !{!15, !10, !59, !60}
!16 = distinct !{!16, !10, !59, !60}
!17 = distinct !{!17, !10, !60, !59}
!18 = distinct !{!18, !10, !59, !60}
!19 = distinct !{!19, !10, !60, !59}
!20 = distinct !{!20, !10, !59, !60}
!21 = distinct !{!21, !10, !59, !60}
!22 = distinct !{!22, !10, !60, !59}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!36 = !{!35, !5, i64 0}
!37 = !{!"any pointer", !4, i64 0}
!38 = !{!"p1 _ZTS9_lv_obj_t", !37, i64 0}
!39 = !{!"p1 _ZTS11_lv_layer_t", !37, i64 0}
!40 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!41 = !{!"long", !4, i64 0}
!42 = !{!"", !38, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !39, i64 24, !8, i64 32, !8, i64 34, !40, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !41, i64 48, !37, i64 56}
!43 = !{!"", !42, i64 0, !5, i64 64, !40, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !4, i64 88, !4, i64 89}
!44 = !{!43, !5, i64 80}
!45 = !{!43, !5, i64 76}
!46 = !{!35, !5, i64 8}
!47 = !{!35, !5, i64 4}
!48 = !{!43, !5, i64 84}
!49 = !{!35, !5, i64 12}
!50 = !{!43, !5, i64 72}
!51 = !{!43, !4, i64 88}
!52 = !{!5, !5, i64 0}
!53 = !{!43, !5, i64 64}
!54 = !{!"_lv_draw_sw_mask_common_dsc_t", !37, i64 0, !5, i64 8}
!55 = !{!"", !35, i64 0, !5, i64 16, !4, i64 20}
!56 = !{!"_lv_draw_sw_mask_radius_param_t", !54, i64 0, !55, i64 16, !37, i64 40}
!57 = !{!56, !37, i64 0}
!58 = !{!4, !4, i64 0}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"branch_weights", i32 4, i32 12}
!62 = !{!37, !37, i64 0}
!63 = !{!"p1 omnipotent char", !37, i64 0}
!64 = !{!"_lv_draw_sw_blend_dsc_t", !37, i64 0, !37, i64 8, !5, i64 16, !5, i64 20, !37, i64 24, !4, i64 32, !40, i64 33, !63, i64 40, !5, i64 48, !37, i64 56, !5, i64 64, !5, i64 68}
!65 = !{!64, !37, i64 0}
!66 = !{!64, !37, i64 56}
!67 = !{!64, !63, i64 40}
!68 = !{i64 0, i64 1, !58, i64 1, i64 1, !58, i64 2, i64 1, !58}
!69 = !{!64, !4, i64 32}
!70 = !{!64, !5, i64 48}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
end_hunk_1
