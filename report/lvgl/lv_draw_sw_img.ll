inline.NumInlined: 20
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@img_draw_core:bb.a
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !75
  %i.gw = icmp ne ptr %i.gv, null                 ; 2 uses
  switch i8 %trunc.i, label %.thread.thread9.fold.split.i [
    i8 17, label %.thread.thread9.i
    i8 15, label %.thread.thread9.i
    i8 27, label %.thread4.i
    i8 18, label %.thread4.i
    i8 6, label %.thread.thread.i
    i8 20, label %.thread4.i
    i8 21, label %.thread.thread.i
  ]

.thread4.i:                                       ; preds = %bb.z, %bb.z, %bb.z
  %i.gx = mul nsw i32 %i.gn, 3                    ; 2 uses
  %i.gy = call ptr @lv_refr_get_disp_refreshing() #6
  %i.gz = call i32 @lv_display_get_horizontal_resolution(ptr noundef %i.gy) #6
  %i.ha = shl nsw i32 %i.gz, 2
  %i.hb = call ptr @lv_refr_get_disp_refreshing() #6
  %i.hc = call i32 @lv_display_get_color_format(ptr noundef %i.hb) #6
  %i.hd = call zeroext i8 @lv_color_format_get_size(i32 noundef %i.hc) #6
  %i.he = zext i8 %i.hd to i32
  %i.hf = mul nsw i32 %i.ha, %i.he
  %i.hg = udiv i32 %i.hf, %i.gx
  br label %bb.aa

.thread.thread.i:                                 ; preds = %bb.z, %bb.z
  %i.hh = call ptr @lv_refr_get_disp_refreshing() #6
  %i.hi = call i32 @lv_display_get_horizontal_resolution(ptr noundef %i.hh) #6
  %i.hj = shl nsw i32 %i.hi, 2
  %i.hk = call ptr @lv_refr_get_disp_refreshing() #6
  %i.hl = call i32 @lv_display_get_color_format(ptr noundef %i.hk) #6
  %i.hm = call zeroext i8 @lv_color_format_get_size(i32 noundef %i.hl) #6
  %i.hn = zext i8 %i.hm to i32
  %i.ho = mul nsw i32 %i.hj, %i.hn
  %i.hp = shl i32 %i.gn, 1                        ; 2 uses
  %i.hq = udiv i32 %i.ho, %i.hp
  br label %bb.aa

.thread.thread9.fold.split.i:                     ; preds = %bb.z
  br label %.thread.thread9.i

.thread.thread9.i:                                ; preds = %.thread.thread9.fold.split.i, %bb.z, %bb.z
  %.0107311.i = phi i32 [ 16, %bb.z ], [ 16, %bb.z ], [ %i.ge, %.thread.thread9.fold.split.i ] ; 2 uses
  %i.hr = call zeroext i8 @lv_color_format_get_size(i32 noundef %.0107311.i) #6
  %i.hs = zext i8 %i.hr to i32
  %i.ht = mul nsw i32 %i.gn, %i.hs                ; 2 uses
  %i.hu = call ptr @lv_refr_get_disp_refreshing() #6
  %i.hv = call i32 @lv_display_get_horizontal_resolution(ptr noundef %i.hu) #6
  %i.hw = shl nsw i32 %i.hv, 2
  %i.hx = call ptr @lv_refr_get_disp_refreshing() #6
  %i.hy = call i32 @lv_display_get_color_format(ptr noundef %i.hx) #6
  %i.hz = call zeroext i8 @lv_color_format_get_size(i32 noundef %i.hy) #6
  %i.ia = zext i8 %i.hz to i32
  %i.ib = mul nsw i32 %i.hw, %i.ia
  %i.ic = udiv i32 %i.ib, %i.ht
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.thread9.i, %.thread.thread.i, %.thread4.i
  %.sink238 = phi i32 [ %i.ic, %.thread.thread9.i ], [ %i.hq, %.thread.thread.i ], [ %i.hg, %.thread4.i ]
  %.sink = phi i32 [ %i.ht, %.thread.thread9.i ], [ %i.hp, %.thread.thread.i ], [ %i.gx, %.thread4.i ]
  %i.id = phi i1 [ false, %.thread.thread9.i ], [ false, %.thread.thread.i ], [ true, %.thread4.i ] ; 5 uses
  %.01072.i = phi i32 [ %.0107311.i, %.thread.thread9.i ], [ 21, %.thread.thread.i ], [ 20, %.thread4.i ] ; 10 uses
  %spec.select120.i = call i32 @llvm.smin.i32(i32 %.sink238, i32 %i.go) ; 5 uses
  %i.ie = mul i32 %spec.select120.i, %.sink
  %i.if = zext i32 %i.ie to i64
  %i.ig = call ptr @lv_malloc(i64 noundef %i.if) #6 ; 23 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %.preheader.i, label %bb.ab

.preheader.i:                                     ; preds = %bb.aa, %.preheader.i
  br label %.preheader.i

bb.ab:                                            ; preds = %bb.aa
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !70
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  store i32 %.01072.i, ptr %i.ii, align 4, !tbaa !77
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 5 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !32 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !31 ; 4 uses
  %i.in = add i32 %spec.select120.i, -1
  %i.io = add i32 %i.in, %i.im
  store i32 %i.io, ptr %i.ij, align 4, !tbaa !32
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %8, ptr %i.ip, align 8, !tbaa !76
  %i.iq = getelementptr inbounds nuw i8, ptr %.val109, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !59
  br i1 %i.id, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.is = shl nsw i32 %i.gn, 1                    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.is, ptr %i.it, align 8, !tbaa !66
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %8, ptr %i.iu, align 8, !tbaa !68
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 2, ptr %i.iv, align 8, !tbaa !72
  %i.iw = mul nsw i32 %spec.select120.i, %i.is
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.ig, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !67
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %i.gn, ptr %i.ja, align 8, !tbaa !69
  store i32 18, ptr %i.ii, align 4, !tbaa !77
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  switch i32 %.01072.i, label %bb.ag [
    i32 21, label %bb.ae
    i32 14, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.gn, ptr %i.jb, align 8, !tbaa !66
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %8, ptr %i.jc, align 8, !tbaa !68
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 2, ptr %i.jd, align 8, !tbaa !72
  %i.je = mul nsw i32 %spec.select120.i, %i.gn
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.ig, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !67
  %i.ji = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %i.gn, ptr %i.ji, align 8, !tbaa !69
  store i32 6, ptr %i.ii, align 4, !tbaa !77
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.ig, ptr %i.jj, align 8, !tbaa !67
  %i.jk = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %i.gn, ptr %i.jk, align 8, !tbaa !69
  %i.jl = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %8, ptr %i.jl, align 8, !tbaa !68
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 2, ptr %i.jm, align 8, !tbaa !72
  store ptr null, ptr %i.ih, align 8, !tbaa !70
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.jn = call zeroext i8 @lv_color_format_get_size(i32 noundef %.01072.i) #6
  %i.jo = zext i8 %i.jn to i32
  %i.jp = mul nsw i32 %i.gn, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.jp, ptr %i.jq, align 8, !tbaa !66
  %.pre.i = load i32, ptr %i.il, align 4, !tbaa !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  %i.jr = phi i32 [ %i.im, %bb.ae ], [ %.pre.i, %bb.ag ], [ %i.im, %bb.af ], [ %i.im, %bb.ac ] ; 2 uses
  %.not11831.i = icmp sgt i32 %i.jr, %i.ik
  br i1 %.not11831.i, label %transform_and_recolor.exit, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.ah
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %or.cond7.i = select i1 %.0.i, i1 true, i1 %i.gw
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 116
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 117 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 118
  %trunc.i.i = trunc nuw i32 %.01072.i to i8
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.kd = icmp eq i32 %.01072.i, 16               ; 3 uses
  %i.ke = add nsw i32 %.01072.i, -15
  %or.cond7.i.i = icmp ult i32 %i.ke, 3
  %i.kf = icmp eq i32 %.01072.i, 26
  %i.kg = icmp eq i32 %.01072.i, 21
  %i.kh = shl nsw i32 %i.gn, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.cw, %.lr.ph.i110
  %i.ki = phi i32 [ %i.jr, %.lr.ph.i110 ], [ %i.aau, %bb.cw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.kj = load i32, ptr %8, align 16, !tbaa !33
  store i32 %i.kj, ptr %9, align 4, !tbaa !33
  store i32 %i.ki, ptr %i.js, align 4, !tbaa !31
  %i.kk = load <2 x i32>, ptr %i.jt, align 8, !tbaa !29
  store <2 x i32> %i.kk, ptr %i.ju, align 4, !tbaa !29
  %i.kl = load i32, ptr %4, align 4, !tbaa !33
  %i.km = sub nsw i32 0, %i.kl
  %i.kn = load i32, ptr %i.jv, align 4, !tbaa !31
  %i.ko = sub nsw i32 0, %i.kn
  call void @lv_area_move(ptr noundef nonnull %9, i32 noundef %i.km, i32 noundef %i.ko) #6
  call void @lv_draw_sw_transform(ptr noundef nonnull %9, ptr noundef %i.ir, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef %i.ga, ptr noundef %1, ptr noundef %3, i32 noundef %i.ge, ptr noundef nonnull %i.ig) #6
  br i1 %or.cond7.i, label %bb.aj, label %bb.cr

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.kp = load <4 x i32>, ptr %8, align 16, !tbaa !29 ; 2 uses
  store <4 x i32> %i.kp, ptr %10, align 16, !tbaa !29
  %16 = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %17 = sub nsw <2 x i32> zeroinitializer, %16    ; 2 uses
  %i.kq = extractelement <2 x i32> %17, i64 0
  %18 = extractelement <2 x i32> %17, i64 1
  call void @lv_area_move(ptr noundef nonnull %10, i32 noundef %i.kq, i32 noundef %18) #6
  %i.kr = load i32, ptr %i.jx, align 8, !tbaa !66 ; 7 uses
  %i.ks = load i64, ptr %10, align 16             ; 2 uses
  %i.kt = load i64, ptr %i.jw, align 8            ; 2 uses
  br i1 %i.gw, label %bb.ak, label %bb.cp

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.ks, ptr %6, align 8
  store i64 %i.kt, ptr %i.jy, align 8
  %i.ku = call i32 @lv_area_get_width(ptr noundef nonnull %6) #6 ; 13 uses
  %i.kv = call i32 @lv_area_get_height(ptr noundef nonnull %6) #6 ; 13 uses
  %.sroa.0179.0.copyload.i.i = load i8, ptr %i.jz, align 4, !tbaa !44 ; 7 uses
  %i.kw = load i8, ptr %.sroa.9.0..sroa_idx.i.i, align 1, !tbaa !44 ; 6 uses
  %.sroa.14.0.copyload.i.i = load i8, ptr %.sroa.14.0..sroa_idx.i.i, align 2, !tbaa !44 ; 6 uses
  %i.kx = load i8, ptr %i.gp, align 1, !tbaa !74
  %.fr337.i.i = freeze i8 %i.kx                   ; 8 uses
  %i.ky = zext i8 %.fr337.i.i to i32              ; 9 uses
  %i.kz = xor i8 %.fr337.i.i, -1                  ; 3 uses
  %i.la = load ptr, ptr %i.gu, align 8, !tbaa !75 ; 2 uses
  %.sroa.0151.0.copyload.i.i = load i24, ptr %i.la, align 1 ; 9 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 3
  %.sroa.0148.0.copyload.i.i = load i24, ptr %i.lb, align 1 ; 9 uses
  switch i8 %trunc.i.i, label %bb.bh [
    i8 20, label %bb.al
    i8 18, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %.sroa.9.0.copyload.i.i = load i16, ptr %.sroa.9.0..sroa_idx.i.i, align 1
  %i.lc = zext i16 %.sroa.9.0.copyload.i.i to i24
  %i.ld = shl nuw i24 %i.lc, 8
  %i.le = load i32, ptr %i.ka, align 4, !tbaa !31
  %i.lf = mul nsw i32 %i.le, %i.kr
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %i.ig, i64 %i.lg
  %i.li = load i32, ptr %6, align 8, !tbaa !33
  %i.lj = shl nsw i32 %i.li, 1
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.lh, i64 %i.lk ; 3 uses
  %.sroa.0179.0.insert.ext.i.i = zext i8 %.sroa.0179.0.copyload.i.i to i24
  %.sroa.0179.0.insert.insert.i.i = or disjoint i24 %i.ld, %.sroa.0179.0.insert.ext.i.i
  %i.lm = call zeroext i16 @lv_color_to_u16(i24 %.sroa.0179.0.insert.insert.i.i) #6 ; 2 uses
  %i.ln = lshr i8 %.sroa.0179.0.copyload.i.i, 3
  %i.lo = zext nneg i8 %i.ln to i32
  %i.lp = mul nuw nsw i32 %i.ky, %i.lo
  %i.lq = lshr i8 %i.kw, 2
  %i.lr = zext nneg i8 %i.lq to i32
  %i.ls = mul nuw nsw i32 %i.ky, %i.lr
  %i.lt = lshr i8 %.sroa.14.0.copyload.i.i, 3
  %i.lu = zext nneg i8 %i.lt to i32
  %i.lv = mul nuw nsw i32 %i.ky, %i.lu
  %i.lw = load ptr, ptr %i.kb, align 8, !tbaa !67 ; 3 uses
  %i.lx = icmp sgt i32 %i.kv, 0
  br i1 %i.lx, label %.preheader296.lr.ph.i.i, label %colorkey_and_recolor.exit.i

.preheader296.lr.ph.i.i:                          ; preds = %bb.al
  %i.ly = sdiv i32 %i.kr, 2
  %i.lz = icmp sgt i32 %i.ku, 0
  %.sroa.22.0.extract.shift.i.i.i = lshr i24 %.sroa.0151.0.copyload.i.i, 8
  %.sroa.33.0.extract.shift.i.i.i = lshr i24 %.sroa.0151.0.copyload.i.i, 16 ; 5 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i24 %.sroa.0148.0.copyload.i.i, 16 ; 5 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i24 %.sroa.0148.0.copyload.i.i, 8
  %i.ma = and i24 %.sroa.2.0.extract.shift.i.i.i, 255 ; 5 uses
  %i.mb = and i24 %.sroa.0148.0.copyload.i.i, 255 ; 5 uses
  %i.mc = and i24 %.sroa.22.0.extract.shift.i.i.i, 255 ; 5 uses
  %i.md = and i24 %.sroa.0151.0.copyload.i.i, 255 ; 5 uses
  %i.me = icmp ugt i8 %.fr337.i.i, 2
  %i.mf = zext i8 %i.kz to i32                    ; 3 uses
  %i.mg = sext i32 %i.ly to i64                   ; 3 uses
  br i1 %i.lz, label %.preheader296.lr.ph.split.i.i, label %colorkey_and_recolor.exit.i

.preheader296.lr.ph.split.i.i:                    ; preds = %.preheader296.lr.ph.i.i
  %i.mh = icmp ugt i8 %.fr337.i.i, -4
  %wide.trip.count359.i.i = zext nneg i32 %i.ku to i64 ; 5 uses
  br i1 %i.mh, label %.preheader296.us.i.i, label %.preheader296.i.preheader.i

.preheader296.i.preheader.i:                      ; preds = %.preheader296.lr.ph.split.i.i
  br i1 %i.me, label %.preheader296.i.us.i, label %.preheader296.i.i

.preheader296.i.us.i:                             ; preds = %.preheader296.i.preheader.i, %._crit_edge.split.i.split.us.us.i
  %.0304.i.us.i = phi ptr [ %i.ns, %._crit_edge.split.i.split.us.us.i ], [ %i.ll, %.preheader296.i.preheader.i ] ; 2 uses
  %.0230303.i.us.i = phi ptr [ %i.nr, %._crit_edge.split.i.split.us.us.i ], [ %i.ig, %.preheader296.i.preheader.i ]
  %.0231301.i.us.i = phi ptr [ %i.nv, %._crit_edge.split.i.split.us.us.i ], [ %i.lw, %.preheader296.i.preheader.i ] ; 3 uses
  %.0232300.i.us.i = phi i32 [ %i.nw, %._crit_edge.split.i.split.us.us.i ], [ 0, %.preheader296.i.preheader.i ]
  %i.mi = icmp ne ptr %.0231301.i.us.i, null
  %or.cond3.i.us.i = select i1 %i.id, i1 %i.mi, i1 false
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %.preheader296.i.us.i
  %indvars.iv.i.us.us.i = phi i64 [ 0, %.preheader296.i.us.i ], [ %indvars.iv.next.i.us.us.i, %bb.as ] ; 3 uses
  %.1299.i.us.us.i = phi ptr [ %.0230303.i.us.i, %.preheader296.i.us.i ], [ %i.nr, %bb.as ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.0304.i.us.i, i64 %indvars.iv.i.us.us.i ; 2 uses
  %i.mk = load i16, ptr %i.mj, align 2            ; 3 uses
  %i.ml = lshr i16 %i.mk, 8
  %i.mm = trunc nuw i16 %i.ml to i8
  %i.mn = and i8 %i.mm, -8
  %i.mo = lshr i16 %i.mk, 3
  %i.mp = trunc i16 %i.mo to i8
  %i.mq = and i8 %i.mp, -4
  %.tr.i.i.us.us.i = trunc i16 %i.mk to i8
  %i.mr = shl i8 %.tr.i.i.us.us.i, 3
  %i.ms = call i24 @lv_color_make(i8 noundef zeroext %i.mn, i8 noundef zeroext %i.mq, i8 noundef zeroext %i.mr) #6 ; 3 uses
  %.sroa.5.0.extract.shift.i.i.us.us.i = lshr i24 %i.ms, 16 ; 2 uses
  %.not.i.i.us.us.i = icmp samesign ugt i24 %.sroa.5.0.extract.shift.i.i.us.us.i, %.sroa.3.0.extract.shift.i.i.i
  br i1 %.not.i.i.us.us.i, label %lv_color_is_in_range.exit.thread.i.us.us.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.36.0.extract.shift.i.i.us.us.i = lshr i24 %i.ms, 8
  %i.mt = and i24 %.sroa.36.0.extract.shift.i.i.us.us.i, 255 ; 2 uses
  %.not11.i.i.us.us.i = icmp samesign ugt i24 %i.mt, %i.ma
  br i1 %.not11.i.i.us.us.i, label %lv_color_is_in_range.exit.thread.i.us.us.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mu = and i24 %i.ms, 255                      ; 2 uses
  %.not12.i.i.us.us.i = icmp samesign ule i24 %i.mu, %i.mb
  %.not13.i.i.us.us.i = icmp samesign uge i24 %.sroa.5.0.extract.shift.i.i.us.us.i, %.sroa.33.0.extract.shift.i.i.i
  %or.cond.i.not289.i.us.us.i = select i1 %.not12.i.i.us.us.i, i1 %.not13.i.i.us.us.i, i1 false
  %.not14.i.i.us.us.i = icmp samesign uge i24 %i.mt, %i.mc
  %or.cond15.i.not288.i.us.us.i = select i1 %or.cond.i.not289.i.us.us.i, i1 %.not14.i.i.us.us.i, i1 false
  %i.mv = icmp samesign uge i24 %i.mu, %i.md
  %or.cond.i.us.us.i = select i1 %or.cond15.i.not288.i.us.us.i, i1 %i.mv, i1 false
  br i1 %or.cond.i.us.us.i, label %bb.ap, label %lv_color_is_in_range.exit.thread.i.us.us.i

bb.ap:                                            ; preds = %bb.ao
  br i1 %or.cond3.i.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i16 0, ptr %.1299.i.us.us.i, align 2, !tbaa !51
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.mw = getelementptr inbounds nuw i8, ptr %.0231301.i.us.i, i64 %indvars.iv.i.us.us.i
  store i8 0, ptr %i.mw, align 1, !tbaa !44
  br label %bb.as

lv_color_is_in_range.exit.thread.i.us.us.i:       ; preds = %bb.ao, %bb.an, %bb.am
  %i.mx = load i16, ptr %i.mj, align 2, !tbaa !51
  %i.my = zext i16 %i.mx to i32                   ; 3 uses
  %i.mz = lshr i32 %i.my, 11
  %i.na = mul nuw nsw i32 %i.mz, %i.mf
  %i.nb = add nuw nsw i32 %i.na, %i.lv
  %i.nc = shl nuw nsw i32 %i.nb, 3
  %i.nd = and i32 %i.nc, 63488
  %i.ne = lshr i32 %i.my, 5
  %i.nf = and i32 %i.ne, 63
  %i.ng = mul nuw nsw i32 %i.nf, %i.mf
  %i.nh = add nuw nsw i32 %i.ng, %i.ls
  %i.ni = lshr i32 %i.nh, 3
  %i.nj = and i32 %i.ni, 2016
  %i.nk = and i32 %i.my, 31
  %i.nl = mul nuw nsw i32 %i.nk, %i.mf
  %i.nm = add nuw nsw i32 %i.nl, %i.lp
  %i.nn = lshr i32 %i.nm, 8
  %i.no = or disjoint i32 %i.nd, %i.nn
  %i.np = add nuw nsw i32 %i.no, %i.nj
  %i.nq = trunc i32 %i.np to i16
  store i16 %i.nq, ptr %.1299.i.us.us.i, align 2, !tbaa !51
  br label %bb.as

bb.as:                                            ; preds = %lv_color_is_in_range.exit.thread.i.us.us.i, %bb.ar, %bb.aq
  %i.nr = getelementptr inbounds nuw i8, ptr %.1299.i.us.us.i, i64 2 ; 2 uses
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count359.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.split.i.split.us.us.i, label %bb.am, !llvm.loop !79

._crit_edge.split.i.split.us.us.i:                ; preds = %bb.as
  %i.ns = getelementptr inbounds [2 x i8], ptr %.0304.i.us.i, i64 %i.mg
  %i.nt = load i32, ptr %i.kc, align 8, !tbaa !69
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds i8, ptr %.0231301.i.us.i, i64 %i.nu
  %i.nw = add nuw nsw i32 %.0232300.i.us.i, 1     ; 2 uses
  %exitcond355.not.i.us.i = icmp eq i32 %i.nw, %i.kv
  br i1 %exitcond355.not.i.us.i, label %colorkey_and_recolor.exit.i, label %.preheader296.i.us.i, !llvm.loop !80

.preheader296.us.i.i:                             ; preds = %.preheader296.lr.ph.split.i.i, %._crit_edge.split.us.us.i.i
  %.0304.us.i.i = phi ptr [ %i.pb, %._crit_edge.split.us.us.i.i ], [ %i.ll, %.preheader296.lr.ph.split.i.i ] ; 3 uses
  %.0230303.us.i.i = phi ptr [ %.us-phi.i.i, %._crit_edge.split.us.us.i.i ], [ %i.ig, %.preheader296.lr.ph.split.i.i ] ; 2 uses
  %.0231301.us.i.i = phi ptr [ %i.pe, %._crit_edge.split.us.us.i.i ], [ %i.lw, %.preheader296.lr.ph.split.i.i ]
  %.0232300.us.i.i = phi i32 [ %i.pf, %._crit_edge.split.us.us.i.i ], [ 0, %.preheader296.lr.ph.split.i.i ]
  %.0231301.us.fr.i.i = freeze ptr %.0231301.us.i.i ; 3 uses
  %i.nx = icmp ne ptr %.0231301.us.fr.i.i, null
  %or.cond3.us.i.i = and i1 %i.id, %i.nx
  br i1 %or.cond3.us.i.i, label %.lr.ph.split.us.us.split.us.i.i, label %.lr.ph.split.us.us.split.i.i

.lr.ph.split.us.us.split.us.i.i:                  ; preds = %.preheader296.us.i.i, %bb.aw
  %indvars.iv361.i.i = phi i64 [ %indvars.iv.next362.i.i, %bb.aw ], [ 0, %.preheader296.us.i.i ] ; 3 uses
  %.1299.us.us.us.i.i = phi ptr [ %i.om, %bb.aw ], [ %.0230303.us.i.i, %.preheader296.us.i.i ] ; 2 uses
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.0304.us.i.i, i64 %indvars.iv361.i.i
  %i.nz = load i16, ptr %i.ny, align 2            ; 3 uses
  %i.oa = lshr i16 %i.nz, 8
  %i.ob = trunc nuw i16 %i.oa to i8
  %i.oc = and i8 %i.ob, -8
  %i.od = lshr i16 %i.nz, 3
  %i.oe = trunc i16 %i.od to i8
  %i.of = and i8 %i.oe, -4
  %.tr.i.us.us.us.i.i = trunc i16 %i.nz to i8
  %i.og = shl i8 %.tr.i.us.us.us.i.i, 3
  %i.oh = call i24 @lv_color_make(i8 noundef zeroext %i.oc, i8 noundef zeroext %i.of, i8 noundef zeroext %i.og) #6 ; 3 uses
  %.sroa.5.0.extract.shift.i.us.us.us.i.i = lshr i24 %i.oh, 16 ; 2 uses
  %.not.i.us.us.us.i.i = icmp samesign ugt i24 %.sroa.5.0.extract.shift.i.us.us.us.i.i, %.sroa.3.0.extract.shift.i.i.i
end_hunk_0
