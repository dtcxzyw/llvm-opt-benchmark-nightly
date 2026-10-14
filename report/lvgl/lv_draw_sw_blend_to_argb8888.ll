Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_argb8888?download=true
inline.NumInlined: 160
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %i.iy = lshr i32 %i.ix, 8
  %i.iz = trunc nuw i32 %i.iy to i8
  %i.ja = xor i8 %i.iz, -1                        ; 2 uses
  store i8 %i.ja, ptr %i.v, align 4, !tbaa !13
  %i.jb = zext i8 %i.hy to i16
  %.lhs.trunc.i217.i = mul nuw i16 %i.jb, 255
  %.rhs.trunc.i218.i = zext i8 %i.ja to i16
  %i.jc = udiv i16 %.lhs.trunc.i217.i, %.rhs.trunc.i218.i
  %i.jd = trunc i16 %i.jc to i8
  store i8 %i.jd, ptr %i.w, align 1, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.je = load i32, ptr %i.t, align 4
  %i.jf = call zeroext i1 @lv_color32_eq(i32 %i.im, i32 %i.je) #7
  br i1 %i.jf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jg = load i32, ptr %7, align 4
  %i.jh = call zeroext i1 @lv_color32_eq(i32 %.sroa.044.0.insert.insert52.i, i32 %i.jg) #7
  br i1 %i.jh, label %._crit_edge.i230.i, label %bb.ae

._crit_edge.i230.i:                               ; preds = %bb.ad
  %.sroa.074.0.copyload.pre.i232.i = load i24, ptr %i.u, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i234.i = load i8, ptr %i.fr, align 1, !tbaa !18
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 %.sroa.044.0.insert.insert52.i, ptr %7, align 4
  store i32 %i.im, ptr %i.t, align 4
  %i.ji = load i8, ptr %i.w, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i219.i = zext i8 %i.ji to i32
  %.sroa.654.0.insert.shift64.i220.i = shl nuw i32 %.sroa.654.0.insert.ext63.i219.i, 24
  %.sroa.045.0.insert.insert53.i222.i = or disjoint i32 %.sroa.654.0.insert.shift64.i220.i, %i.il
  %i.jj = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i222.i, i32 %i.im) #7 ; 2 uses
  store i32 %i.jj, ptr %i.u, align 4, !tbaa !18
  %i.jk = load i8, ptr %i.v, align 4, !tbaa !13   ; 2 uses
  store i8 %i.jk, ptr %i.fr, align 1, !tbaa !20
  %i.jl = trunc i32 %i.jj to i24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i230.i
  %.sroa.5.0.copyload.i223.i = phi i8 [ %.sroa.5.0.copyload.pre.i234.i, %._crit_edge.i230.i ], [ %i.jk, %bb.ae ]
  %.sroa.074.0.copyload.i224.i = phi i24 [ %.sroa.074.0.copyload.pre.i232.i, %._crit_edge.i230.i ], [ %i.jl, %bb.ae ]
  %i.jm = zext i8 %.sroa.5.0.copyload.i223.i to i32
  br label %lv_color_32_32_mix.exit238.i

lv_color_32_32_mix.exit238.i:                     ; preds = %bb.af, %bb.z, %bb.x, %bb.w
  %.sroa.074.0.i225.i = phi i24 [ %.sroa.074.0.copyload.i224.i, %bb.af ], [ %.sroa.045.0.extract.trunc.i211.i, %bb.w ], [ %.sroa.074.0.extract.trunc.i236.i, %bb.z ], [ %.sroa.018.0.extract.trunc.i215.i, %bb.x ]
  %.sroa.5.0.i226.i = phi i32 [ %i.jm, %bb.af ], [ %.sroa.14.0.insert.ext79.i, %bb.w ], [ %.sroa.5.0.extract.shift.i237.i, %bb.z ], [ %.sroa.6.0.extract.shift.i213.i, %bb.x ]
  %.sroa.5.0.insert.shift.i227.i = shl nuw i32 %.sroa.5.0.i226.i, 24
  %.sroa.074.0.insert.ext.i228.i = zext i24 %.sroa.074.0.i225.i to i32
  %.sroa.074.0.insert.insert.i229.i = or disjoint i32 %.sroa.5.0.insert.shift.i227.i, %.sroa.074.0.insert.ext.i228.i
  store i32 %.sroa.074.0.insert.insert.i229.i, ptr %i.ii, align 1, !tbaa !18
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 2 uses
  %exitcond325.not.i = icmp eq i64 %indvars.iv.next322.i, %wide.trip.count324.i
  br i1 %exitcond325.not.i, label %._crit_edge294.i, label %bb.w, !llvm.loop !77

._crit_edge294.i:                                 ; preds = %lv_color_32_32_mix.exit238.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.2168295.i, i64 %i.fs
  %i.jo = getelementptr inbounds nuw i8, ptr %.2164296.i, i64 %i.ft
  %i.jp = getelementptr inbounds i8, ptr %.1159297.i, i64 %i.fu
  %i.jq = add nuw nsw i32 %.2298.i, 1             ; 2 uses
  %exitcond326.not.i = icmp eq i32 %i.jq, %i.f
  br i1 %exitcond326.not.i, label %rgb565_image_blend.exit, label %.preheader282.i, !llvm.loop !78

.preheader285.i:                                  ; preds = %._crit_edge.i, %.preheader285.preheader.i
  %.3292.i = phi i32 [ %i.nw, %._crit_edge.i ], [ 0, %.preheader285.preheader.i ]
  %.2160291.i = phi ptr [ %.3161.i, %._crit_edge.i ], [ %i.q, %.preheader285.preheader.i ] ; 3 uses
  %.3165290.i = phi ptr [ %i.nv, %._crit_edge.i ], [ %i.m, %.preheader285.preheader.i ] ; 2 uses
  %.3169289.i = phi ptr [ %i.nu, %._crit_edge.i ], [ %i.i, %.preheader285.preheader.i ] ; 2 uses
  %i.jr = icmp eq ptr %.2160291.i, null           ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %blend_non_normal_pixel.exit.i, %.preheader285.i
  %indvars.iv.i = phi i64 [ 0, %.preheader285.i ], [ %indvars.iv.next.i, %blend_non_normal_pixel.exit.i ] ; 4 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %.3165290.i, i64 %indvars.iv.i
  %i.jt = load i16, ptr %i.js, align 2            ; 3 uses
  %i.ju = lshr i16 %i.jt, 11
  %narrow.i = mul nuw i16 %i.ju, 2106
  %i.jv = lshr i16 %narrow.i, 8
  %.sroa.5.0.insert.ext.i = zext nneg i16 %i.jv to i32
  %i.jw = lshr i16 %i.jt, 5
  %i.jx = and i16 %i.jw, 63
  %narrow172.i = mul nuw i16 %i.jx, 1037
  %i.jy = and i16 %i.jt, 31
  %narrow173.i = mul nuw i16 %i.jy, 2106
  %i.jz = lshr i16 %narrow173.i, 8
  %.sroa.0.0.insert.ext.i = zext nneg i16 %i.jz to i32 ; 4 uses
  br i1 %i.jr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ka = getelementptr inbounds nuw i8, ptr %.2160291.i, i64 %indvars.iv.i
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !18
  %i.kc = call i8 @llvm.umulh.i8(i8 %i.kb, i8 %.fr314.i)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.6.0.i = phi i8 [ %i.kc, %bb.ah ], [ %.fr314.i, %bb.ag ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.3169289.i, i64 %indvars.iv.i ; 14 uses
  %i.ke = load i32, ptr %i.x, align 4, !tbaa !31
  %.sroa.6.0.insert.ext.i = zext i8 %.sroa.6.0.i to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24 ; 2 uses
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.shift.i, %.sroa.5.0.insert.shift.i ; 2 uses
  %.sroa.4.0.insert.shift.i = zext i16 %narrow172.i to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  %.sroa.9.0.extract.shift.i.i = lshr i32 %.sroa.4.0.insert.insert.i, 8 ; 4 uses
  %.sroa.17.0.extract.shift.i.i = lshr exact i32 %.sroa.5.0.insert.insert.i, 16 ; 4 uses
  switch i32 %i.ke, label %blend_non_normal_pixel.exit.i [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !32
  %i.kh = zext i8 %i.kg to i32
  %i.ki = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.kj = add nuw nsw i32 %i.ki, %i.kh
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.kj, i32 255)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !33
  %i.km = zext i8 %i.kl to i32
  %i.kn = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.ko = add nuw nsw i32 %i.kn, %i.km
  %i.kp = call i32 @llvm.umin.i32(i32 %i.ko, i32 255)
  %i.kq = load i8, ptr %i.kd, align 1, !tbaa !34
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nuw nsw i32 %i.kr, %.sroa.0.0.insert.ext.i
  %i.kt = call i32 @llvm.umin.i32(i32 %i.ks, i32 255)
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !32
  %i.kw = zext i8 %i.kv to i32
  %i.kx = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.ky = sub nsw i32 %i.kw, %i.kx
  %spec.select60.i.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 0)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !33
  %i.lb = zext i8 %i.la to i32
  %i.lc = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.ld = sub nsw i32 %i.lb, %i.lc
  %i.le = call i32 @llvm.smax.i32(i32 %i.ld, i32 0)
  %i.lf = load i8, ptr %i.kd, align 1, !tbaa !34
  %i.lg = zext i8 %i.lf to i32
  %i.lh = sub nsw i32 %i.lg, %.sroa.0.0.insert.ext.i
  %i.li = call i32 @llvm.smax.i32(i32 %i.lh, i32 0)
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !32
  %i.ll = zext i8 %i.lk to i32
  %i.lm = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.ln = mul nuw nsw i32 %i.lm, %i.ll
  %i.lo = lshr i32 %i.ln, 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !33
  %i.lr = zext i8 %i.lq to i32
  %i.ls = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.lt = mul nuw nsw i32 %i.ls, %i.lr
  %i.lu = lshr i32 %i.lt, 8
  %i.lv = load i8, ptr %i.kd, align 1, !tbaa !34
  %i.lw = zext i8 %i.lv to i32
  %i.lx = mul nuw nsw i32 %i.lw, %.sroa.0.0.insert.ext.i
  %i.ly = lshr i32 %i.lx, 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !32
  %i.mb = zext i8 %i.ma to i32
  %i.mc = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.md = sub nsw i32 %i.mb, %i.mc
  %i.me = call i32 @llvm.abs.i32(i32 %i.md, i1 true)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !33
  %i.mh = zext i8 %i.mg to i32
  %i.mi = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.mj = sub nsw i32 %i.mh, %i.mi
  %i.mk = call i32 @llvm.abs.i32(i32 %i.mj, i1 true)
  %i.ml = load i8, ptr %i.kd, align 1, !tbaa !34
  %i.mm = zext i8 %i.ml to i32
  %i.mn = sub nsw i32 %i.mm, %.sroa.0.0.insert.ext.i
  %i.mo = call i32 @llvm.abs.i32(i32 %i.mn, i1 true)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.11.0.i.i = phi i32 [ %spec.select.i.i, %bb.aj ], [ %spec.select60.i.i, %bb.ak ], [ %i.lo, %bb.al ], [ %i.me, %bb.am ]
  %.sroa.7.0.i.i = phi i32 [ %i.kp, %bb.aj ], [ %i.le, %bb.ak ], [ %i.lu, %bb.al ], [ %i.mk, %bb.am ]
  %.sroa.01.0.i.i = phi i32 [ %i.kt, %bb.aj ], [ %i.li, %bb.ak ], [ %i.ly, %bb.al ], [ %i.mo, %bb.am ]
  %.sroa.11.0.insert.ext.i.i = shl nuw nsw i32 %.sroa.11.0.i.i, 16
  %.sroa.11.0.insert.shift.i.i = and i32 %.sroa.11.0.insert.ext.i.i, 16711680
  %.sroa.7.0.insert.ext.i.i = shl nuw nsw i32 %.sroa.7.0.i.i, 8
  %.sroa.7.0.insert.shift.i.i = and i32 %.sroa.7.0.insert.ext.i.i, 65280
  %i.mp = or i32 %.sroa.01.0.i.i, %.sroa.11.0.insert.shift.i.i
  %i.mq = or i32 %i.mp, %.sroa.7.0.insert.shift.i.i ; 3 uses
  %.sroa.01.0.insert.insert.i.i = or i32 %i.mq, %.sroa.6.0.insert.shift.i ; 6 uses
  %i.mr = load i32, ptr %i.kd, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i239.i = trunc nuw i32 %i.mq to i24
  %.sroa.654.0.extract.shift.i240.i = lshr i32 %.sroa.01.0.insert.insert.i.i, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i241.i = lshr i32 %i.mr, 24 ; 4 uses
  %i.ms = icmp ugt i32 %.sroa.01.0.insert.insert.i.i, -50331649
  %i.mt = icmp ult i32 %i.mr, 50331648
  %or.cond.i242.i = select i1 %i.ms, i1 true, i1 %i.mt
  br i1 %or.cond.i242.i, label %lv_color_32_32_mix.exit266.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.018.0.extract.trunc.i243.i = trunc i32 %i.mr to i24
  %i.mu = icmp ult i32 %.sroa.01.0.insert.insert.i.i, 50331648
  br i1 %i.mu, label %lv_color_32_32_mix.exit266.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mv = icmp eq i32 %.sroa.6.0.extract.shift.i241.i, 255
  br i1 %i.mv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mw = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i, i32 %i.mr) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i264.i = trunc i32 %i.mw to i24
  %.sroa.5.0.extract.shift.i265.i = lshr i32 %i.mw, 24
  br label %lv_color_32_32_mix.exit266.i

bb.ar:                                            ; preds = %bb.ap
  %i.mx = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.my = zext i8 %i.mx to i32
  %.not.i244.i = icmp eq i32 %.sroa.6.0.extract.shift.i241.i, %i.my
  %i.mz = load i8, ptr %i.ad, align 1
  %i.na = zext i8 %i.mz to i32
  %.not77.i263.i = icmp eq i32 %.sroa.654.0.extract.shift.i240.i, %i.na
  %or.cond277.i = select i1 %.not.i244.i, i1 %.not77.i263.i, i1 false
  br i1 %or.cond277.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nb = xor i32 %.sroa.654.0.extract.shift.i240.i, 255
  %i.nc = xor i32 %.sroa.6.0.extract.shift.i241.i, 255
  %i.nd = mul nuw nsw i32 %i.nb, %i.nc
  %i.ne = lshr i32 %i.nd, 8
  %i.nf = trunc nuw i32 %i.ne to i8
  %i.ng = xor i8 %i.nf, -1                        ; 2 uses
  store i8 %i.ng, ptr %i.v, align 4, !tbaa !13
  %i.nh = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i240.i to i16
  %.lhs.trunc.i245.i = mul nuw i16 %i.nh, 255
  %.rhs.trunc.i246.i = zext i8 %i.ng to i16
  %i.ni = udiv i16 %.lhs.trunc.i245.i, %.rhs.trunc.i246.i
  %i.nj = trunc i16 %i.ni to i8
  store i8 %i.nj, ptr %i.w, align 1, !tbaa !14
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.nk = load i32, ptr %i.t, align 4
  %i.nl = call zeroext i1 @lv_color32_eq(i32 %i.mr, i32 %i.nk) #7
  br i1 %i.nl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nm = load i32, ptr %7, align 4
  %i.nn = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i, i32 %i.nm) #7
  br i1 %i.nn, label %._crit_edge.i258.i, label %bb.av

._crit_edge.i258.i:                               ; preds = %bb.au
  %.sroa.074.0.copyload.pre.i260.i = load i24, ptr %i.u, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i262.i = load i8, ptr %i.ae, align 1, !tbaa !18
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  store i32 %.sroa.01.0.insert.insert.i.i, ptr %7, align 4
  store i32 %i.mr, ptr %i.t, align 4
  %i.no = load i8, ptr %i.w, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i247.i = zext i8 %i.no to i32
  %.sroa.654.0.insert.shift64.i248.i = shl nuw i32 %.sroa.654.0.insert.ext63.i247.i, 24
  %.sroa.045.0.insert.insert53.i250.i = add nuw nsw i32 %.sroa.654.0.insert.shift64.i248.i, %i.mq
  %i.np = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i250.i, i32 %i.mr) #7 ; 2 uses
  store i32 %i.np, ptr %i.u, align 4, !tbaa !18
  %i.nq = load i8, ptr %i.v, align 4, !tbaa !13   ; 2 uses
  store i8 %i.nq, ptr %i.ae, align 1, !tbaa !20
  %i.nr = trunc i32 %i.np to i24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i258.i
  %.sroa.5.0.copyload.i251.i = phi i8 [ %.sroa.5.0.copyload.pre.i262.i, %._crit_edge.i258.i ], [ %i.nq, %bb.av ]
  %.sroa.074.0.copyload.i252.i = phi i24 [ %.sroa.074.0.copyload.pre.i260.i, %._crit_edge.i258.i ], [ %i.nr, %bb.av ]
  %i.ns = zext i8 %.sroa.5.0.copyload.i251.i to i32
  br label %lv_color_32_32_mix.exit266.i

lv_color_32_32_mix.exit266.i:                     ; preds = %bb.aw, %bb.aq, %bb.ao, %bb.an
  %.sroa.074.0.i253.i = phi i24 [ %.sroa.074.0.copyload.i252.i, %bb.aw ], [ %.sroa.045.0.extract.trunc.i239.i, %bb.an ], [ %.sroa.074.0.extract.trunc.i264.i, %bb.aq ], [ %.sroa.018.0.extract.trunc.i243.i, %bb.ao ]
  %.sroa.5.0.i254.i = phi i32 [ %i.ns, %bb.aw ], [ %.sroa.654.0.extract.shift.i240.i, %bb.an ], [ %.sroa.5.0.extract.shift.i265.i, %bb.aq ], [ %.sroa.6.0.extract.shift.i241.i, %bb.ao ]
  %.sroa.5.0.insert.shift.i255.i = shl nuw i32 %.sroa.5.0.i254.i, 24
  %.sroa.074.0.insert.ext.i256.i = zext i24 %.sroa.074.0.i253.i to i32
  %.sroa.074.0.insert.insert.i257.i = or disjoint i32 %.sroa.5.0.insert.shift.i255.i, %.sroa.074.0.insert.ext.i256.i
  store i32 %.sroa.074.0.insert.insert.i257.i, ptr %i.kd, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit.i

blend_non_normal_pixel.exit.i:                    ; preds = %lv_color_32_32_mix.exit266.i, %bb.ai
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ag, !llvm.loop !79

._crit_edge.i:                                    ; preds = %blend_non_normal_pixel.exit.i
  %i.nt = getelementptr inbounds i8, ptr %.2160291.i, i64 %i.af
  %.3161.i = select i1 %i.jr, ptr null, ptr %i.nt
  %i.nu = getelementptr inbounds nuw i8, ptr %.3169289.i, i64 %i.ag
  %i.nv = getelementptr inbounds nuw i8, ptr %.3165290.i, i64 %i.ah
  %i.nw = add nuw nsw i32 %.3292.i, 1             ; 2 uses
  %exitcond320.not.i = icmp eq i32 %i.nw, %i.f
  br i1 %exitcond320.not.i, label %rgb565_image_blend.exit, label %.preheader285.i, !llvm.loop !80

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i, %._crit_edge294.i, %._crit_edge300.i, %._crit_edge306.split.i, %._crit_edge306.split.us.us.i, %.preheader286.i, %.preheader285.lr.ph.i, %.preheader278.i, %.preheader.lr.ph.i, %.preheader283.i, %.preheader282.lr.ph.i, %.preheader280.i, %.preheader279.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %l8_image_blend.exit

bb.ax:                                            ; preds = %bb.a
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !22 ; 10 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !23 ; 9 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.oc = load i8, ptr %i.ob, align 8, !tbaa !24
  %.fr318.i = freeze i8 %i.oc                     ; 9 uses
  %i.od = load ptr, ptr %0, align 8, !tbaa !25    ; 8 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !26 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !27 ; 8 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !28 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !29 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.on = load i32, ptr %i.om, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @lv_memset(ptr noundef nonnull %6, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.oo, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.op, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 9 uses
  store i8 -1, ptr %i.oq, align 4, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 9 uses
  store i8 -1, ptr %i.or, align 1, !tbaa !14
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !31
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %bb.ay, label %.preheader290.i

.preheader290.i:                                  ; preds = %bb.ax
  %i.ov = icmp sgt i32 %i.oa, 0
  br i1 %i.ov, label %.preheader289.lr.ph.i, label %rgb565_swapped_image_blend.exit

.preheader289.lr.ph.i:                            ; preds = %.preheader290.i
  %i.ow = icmp sgt i32 %i.ny, 0
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 11 ; 2 uses
  %i.pa = sext i32 %i.on to i64
  %i.pb = zext i32 %i.of to i64
  %i.pc = zext i32 %i.oj to i64
  br i1 %i.ow, label %.preheader289.preheader.i, label %rgb565_swapped_image_blend.exit

.preheader289.preheader.i:                        ; preds = %.preheader289.lr.ph.i
  %wide.trip.count.i10 = zext nneg i32 %i.ny to i64
  br label %.preheader289.i

bb.ay:                                            ; preds = %bb.ax
  %i.pd = icmp eq ptr %i.ol, null
  br i1 %i.pd, label %.preheader282.i46, label %bb.bh

.preheader282.i46:                                ; preds = %bb.ay
  %i.pe = icmp sgt i32 %i.oa, 0
  br i1 %i.pe, label %.preheader.lr.ph.i47, label %rgb565_swapped_image_blend.exit

.preheader.lr.ph.i47:                             ; preds = %.preheader282.i46
  %i.pf = icmp sgt i32 %i.ny, 0
  %.sroa.14.0.insert.ext.i48 = zext i8 %.fr318.i to i32 ; 5 uses
  %.sroa.14.0.insert.shift.i49 = shl nuw i32 %.sroa.14.0.insert.ext.i48, 24 ; 3 uses
  %i.pg = icmp ult i8 %.fr318.i, 3
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.pi = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.pj = xor i32 %.sroa.14.0.insert.ext.i48, 255
  %i.pk = zext i8 %.fr318.i to i16
  %.lhs.trunc.i.i50 = mul nuw i16 %i.pk, 255
  %i.pl = getelementptr inbounds nuw i8, ptr %6, i64 11 ; 2 uses
  %i.pm = zext i32 %i.of to i64                   ; 3 uses
  %i.pn = zext i32 %i.oj to i64                   ; 3 uses
  br i1 %i.pf, label %.preheader.lr.ph.split.i51, label %rgb565_swapped_image_blend.exit

.preheader.lr.ph.split.i51:                       ; preds = %.preheader.lr.ph.i47
  %i.po = icmp ugt i8 %.fr318.i, -4
  %wide.trip.count346.i = zext nneg i32 %i.ny to i64 ; 9 uses
  %i.pp = add nsw i32 %i.oa, -1
  %i.pq = zext i32 %i.pp to i64                   ; 2 uses
  %i.pr = mul nuw i64 %i.pm, %i.pq
  %i.ps = shl nuw nsw i64 %wide.trip.count346.i, 2
  %i.pt = getelementptr i8, ptr %i.od, i64 %i.pr
  %scevgep637 = getelementptr i8, ptr %i.pt, i64 %i.ps ; 2 uses
  %i.pu = mul nuw i64 %i.pn, %i.pq
  %i.pv = shl nuw nsw i64 %wide.trip.count346.i, 1
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %i.yb = trunc nuw i32 %i.ya to i8
  %i.yc = xor i8 %i.yb, -1                        ; 2 uses
  store i8 %i.yc, ptr %i.oq, align 4, !tbaa !13
  %i.yd = zext i8 %i.wz to i16
  %.lhs.trunc.i221.i = mul nuw i16 %i.yd, 255
  %.rhs.trunc.i222.i = zext i8 %i.yc to i16
  %i.ye = udiv i16 %.lhs.trunc.i221.i, %.rhs.trunc.i222.i
  %i.yf = trunc i16 %i.ye to i8
  store i8 %i.yf, ptr %i.or, align 1, !tbaa !14
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.yg = load i32, ptr %i.oo, align 4
  %i.yh = call zeroext i1 @lv_color32_eq(i32 %i.xo, i32 %i.yg) #7
  br i1 %i.yh, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.yi = load i32, ptr %6, align 4
  %i.yj = call zeroext i1 @lv_color32_eq(i32 %.sroa.056.0.insert.insert64.i, i32 %i.yi) #7
  br i1 %i.yj, label %._crit_edge.i234.i, label %bb.ca

._crit_edge.i234.i:                               ; preds = %bb.bz
  %.sroa.074.0.copyload.pre.i236.i = load i24, ptr %i.op, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i238.i = load i8, ptr %i.ur, align 1, !tbaa !18
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %.sroa.056.0.insert.insert64.i, ptr %6, align 4
  store i32 %i.xo, ptr %i.oo, align 4
  %i.yk = load i8, ptr %i.or, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i223.i = zext i8 %i.yk to i32
  %.sroa.654.0.insert.shift64.i224.i = shl nuw i32 %.sroa.654.0.insert.ext63.i223.i, 24
  %.sroa.045.0.insert.insert53.i226.i = or disjoint i32 %.sroa.654.0.insert.shift64.i224.i, %i.xn
  %i.yl = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i226.i, i32 %i.xo) #7 ; 2 uses
  store i32 %i.yl, ptr %i.op, align 4, !tbaa !18
  %i.ym = load i8, ptr %i.oq, align 4, !tbaa !13  ; 2 uses
  store i8 %i.ym, ptr %i.ur, align 1, !tbaa !20
  %i.yn = trunc i32 %i.yl to i24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i234.i
  %.sroa.5.0.copyload.i227.i = phi i8 [ %.sroa.5.0.copyload.pre.i238.i, %._crit_edge.i234.i ], [ %i.ym, %bb.ca ]
  %.sroa.074.0.copyload.i228.i = phi i24 [ %.sroa.074.0.copyload.pre.i236.i, %._crit_edge.i234.i ], [ %i.yn, %bb.ca ]
  %i.yo = zext i8 %.sroa.5.0.copyload.i227.i to i32
  br label %lv_color_32_32_mix.exit242.i

lv_color_32_32_mix.exit242.i:                     ; preds = %bb.cb, %bb.bv, %bb.bt, %bb.bs
  %.sroa.074.0.i229.i = phi i24 [ %.sroa.074.0.copyload.i228.i, %bb.cb ], [ %.sroa.045.0.extract.trunc.i215.i, %bb.bs ], [ %.sroa.074.0.extract.trunc.i240.i, %bb.bv ], [ %.sroa.018.0.extract.trunc.i219.i, %bb.bt ]
  %.sroa.5.0.i230.i = phi i32 [ %i.yo, %bb.cb ], [ %.sroa.14.0.insert.ext91.i, %bb.bs ], [ %.sroa.5.0.extract.shift.i241.i, %bb.bv ], [ %.sroa.6.0.extract.shift.i217.i, %bb.bt ]
  %.sroa.5.0.insert.shift.i231.i = shl nuw i32 %.sroa.5.0.i230.i, 24
  %.sroa.074.0.insert.ext.i232.i = zext i24 %.sroa.074.0.i229.i to i32
  %.sroa.074.0.insert.insert.i233.i = or disjoint i32 %.sroa.5.0.insert.shift.i231.i, %.sroa.074.0.insert.ext.i232.i
  store i32 %.sroa.074.0.insert.insert.i233.i, ptr %i.xk, align 1, !tbaa !18
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %exitcond329.not.i = icmp eq i64 %indvars.iv.next326.i, %wide.trip.count328.i
  br i1 %exitcond329.not.i, label %._crit_edge298.i, label %bb.bs, !llvm.loop !95

._crit_edge298.i:                                 ; preds = %lv_color_32_32_mix.exit242.i
  %i.yp = getelementptr inbounds nuw i8, ptr %.2302.i, i64 %i.us
  %i.yq = getelementptr inbounds nuw i8, ptr %.2160301.i, i64 %i.ut
  %i.yr = getelementptr inbounds i8, ptr %.1171299.i, i64 %i.uu
  %i.ys = add nuw nsw i32 %.2164300.i, 1          ; 2 uses
  %exitcond330.not.i = icmp eq i32 %i.ys, %i.oa
  br i1 %exitcond330.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader286.i39, !llvm.loop !96

.preheader289.i:                                  ; preds = %._crit_edge.i36, %.preheader289.preheader.i
  %.3296.i = phi ptr [ %i.acx, %._crit_edge.i36 ], [ %i.od, %.preheader289.preheader.i ] ; 2 uses
  %.3161295.i = phi ptr [ %i.acy, %._crit_edge.i36 ], [ %i.oh, %.preheader289.preheader.i ] ; 2 uses
  %.3165294.i = phi i32 [ %i.acz, %._crit_edge.i36 ], [ 0, %.preheader289.preheader.i ]
  %.2172293.i = phi ptr [ %.3173.i, %._crit_edge.i36 ], [ %i.ol, %.preheader289.preheader.i ] ; 3 uses
  %i.yt = icmp eq ptr %.2172293.i, null           ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %blend_non_normal_pixel.exit.i33, %.preheader289.i
  %indvars.iv.i11 = phi i64 [ 0, %.preheader289.i ], [ %indvars.iv.next.i34, %blend_non_normal_pixel.exit.i33 ] ; 4 uses
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %.3161295.i, i64 %indvars.iv.i11
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !155
  %i.yw = call noundef i16 @llvm.bswap.i16(i16 %i.yv) ; 3 uses
  %i.yx = lshr i16 %i.yw, 11
  %narrow.i12 = mul nuw i16 %i.yx, 2106
  %i.yy = lshr i16 %narrow.i12, 8
  %.sroa.5.0.insert.ext.i13 = zext nneg i16 %i.yy to i32
  %i.yz = lshr i16 %i.yw, 5
  %i.za = and i16 %i.yz, 63
  %narrow176.i14 = mul nuw i16 %i.za, 1037
  %i.zb = and i16 %i.yw, 31
  %narrow177.i15 = mul nuw i16 %i.zb, 2106
  %i.zc = lshr i16 %narrow177.i15, 8
  %.sroa.03.0.insert.ext.i = zext nneg i16 %i.zc to i32 ; 4 uses
  br i1 %i.yt, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.zd = getelementptr inbounds nuw i8, ptr %.2172293.i, i64 %indvars.iv.i11
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !18
  %i.zf = call i8 @llvm.umulh.i8(i8 %i.ze, i8 %.fr318.i)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.6.0.i16 = phi i8 [ %i.zf, %bb.cd ], [ %.fr318.i, %bb.cc ]
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.3296.i, i64 %indvars.iv.i11 ; 14 uses
  %i.zh = load i32, ptr %i.os, align 4, !tbaa !31
  %.sroa.6.0.insert.ext.i17 = zext i8 %.sroa.6.0.i16 to i32
  %.sroa.6.0.insert.shift.i18 = shl nuw i32 %.sroa.6.0.insert.ext.i17, 24 ; 2 uses
  %.sroa.5.0.insert.shift.i19 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i13, 16
  %.sroa.5.0.insert.insert.i20 = or disjoint i32 %.sroa.6.0.insert.shift.i18, %.sroa.5.0.insert.shift.i19 ; 2 uses
  %.sroa.4.0.insert.shift.i21 = zext i16 %narrow176.i14 to i32
  %.sroa.4.0.insert.insert.i22 = or disjoint i32 %.sroa.5.0.insert.insert.i20, %.sroa.4.0.insert.shift.i21
  %.sroa.9.0.extract.shift.i.i23 = lshr i32 %.sroa.4.0.insert.insert.i22, 8 ; 4 uses
  %.sroa.17.0.extract.shift.i.i24 = lshr exact i32 %.sroa.5.0.insert.insert.i20, 16 ; 4 uses
  switch i32 %i.zh, label %blend_non_normal_pixel.exit.i33 [
    i32 1, label %bb.cf
    i32 2, label %bb.cg
    i32 3, label %bb.ch
    i32 4, label %bb.ci
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 2
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !32
  %i.zk = zext i8 %i.zj to i32
  %i.zl = and i32 %.sroa.17.0.extract.shift.i.i24, 255
  %i.zm = add nuw nsw i32 %i.zl, %i.zk
  %spec.select.i.i38 = call i32 @llvm.umin.i32(i32 %i.zm, i32 255)
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zg, i64 1
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !33
  %i.zp = zext i8 %i.zo to i32
  %i.zq = and i32 %.sroa.9.0.extract.shift.i.i23, 255
  %i.zr = add nuw nsw i32 %i.zq, %i.zp
  %i.zs = call i32 @llvm.umin.i32(i32 %i.zr, i32 255)
  %i.zt = load i8, ptr %i.zg, align 1, !tbaa !34
  %i.zu = zext i8 %i.zt to i32
  %i.zv = add nuw nsw i32 %i.zu, %.sroa.03.0.insert.ext.i
  %i.zw = call i32 @llvm.umin.i32(i32 %i.zv, i32 255)
  br label %bb.cj

bb.cg:                                            ; preds = %bb.ce
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zg, i64 2
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !32
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = and i32 %.sroa.17.0.extract.shift.i.i24, 255
  %i.aab = sub nsw i32 %i.zz, %i.aaa
  %spec.select60.i.i37 = call i32 @llvm.smax.i32(i32 %i.aab, i32 0)
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zg, i64 1
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !33
  %i.aae = zext i8 %i.aad to i32
  %i.aaf = and i32 %.sroa.9.0.extract.shift.i.i23, 255
  %i.aag = sub nsw i32 %i.aae, %i.aaf
  %i.aah = call i32 @llvm.smax.i32(i32 %i.aag, i32 0)
  %i.aai = load i8, ptr %i.zg, align 1, !tbaa !34
  %i.aaj = zext i8 %i.aai to i32
  %i.aak = sub nsw i32 %i.aaj, %.sroa.03.0.insert.ext.i
  %i.aal = call i32 @llvm.smax.i32(i32 %i.aak, i32 0)
  br label %bb.cj

bb.ch:                                            ; preds = %bb.ce
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zg, i64 2
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !32
  %i.aao = zext i8 %i.aan to i32
  %i.aap = and i32 %.sroa.17.0.extract.shift.i.i24, 255
  %i.aaq = mul nuw nsw i32 %i.aap, %i.aao
  %i.aar = lshr i32 %i.aaq, 8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zg, i64 1
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !33
  %i.aau = zext i8 %i.aat to i32
  %i.aav = and i32 %.sroa.9.0.extract.shift.i.i23, 255
  %i.aaw = mul nuw nsw i32 %i.aav, %i.aau
  %i.aax = lshr i32 %i.aaw, 8
  %i.aay = load i8, ptr %i.zg, align 1, !tbaa !34
  %i.aaz = zext i8 %i.aay to i32
  %i.aba = mul nuw nsw i32 %i.aaz, %.sroa.03.0.insert.ext.i
  %i.abb = lshr i32 %i.aba, 8
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ce
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zg, i64 2
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !32
  %i.abe = zext i8 %i.abd to i32
  %i.abf = and i32 %.sroa.17.0.extract.shift.i.i24, 255
  %i.abg = sub nsw i32 %i.abe, %i.abf
  %i.abh = call i32 @llvm.abs.i32(i32 %i.abg, i1 true)
  %i.abi = getelementptr inbounds nuw i8, ptr %i.zg, i64 1
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !33
  %i.abk = zext i8 %i.abj to i32
  %i.abl = and i32 %.sroa.9.0.extract.shift.i.i23, 255
  %i.abm = sub nsw i32 %i.abk, %i.abl
  %i.abn = call i32 @llvm.abs.i32(i32 %i.abm, i1 true)
  %i.abo = load i8, ptr %i.zg, align 1, !tbaa !34
  %i.abp = zext i8 %i.abo to i32
  %i.abq = sub nsw i32 %i.abp, %.sroa.03.0.insert.ext.i
  %i.abr = call i32 @llvm.abs.i32(i32 %i.abq, i1 true)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %.sroa.11.0.i.i25 = phi i32 [ %spec.select.i.i38, %bb.cf ], [ %spec.select60.i.i37, %bb.cg ], [ %i.aar, %bb.ch ], [ %i.abh, %bb.ci ]
  %.sroa.7.0.i.i26 = phi i32 [ %i.zs, %bb.cf ], [ %i.aah, %bb.cg ], [ %i.aax, %bb.ch ], [ %i.abn, %bb.ci ]
  %.sroa.01.0.i.i27 = phi i32 [ %i.zw, %bb.cf ], [ %i.aal, %bb.cg ], [ %i.abb, %bb.ch ], [ %i.abr, %bb.ci ]
  %.sroa.11.0.insert.ext.i.i28 = shl nuw nsw i32 %.sroa.11.0.i.i25, 16
  %.sroa.11.0.insert.shift.i.i29 = and i32 %.sroa.11.0.insert.ext.i.i28, 16711680
  %.sroa.7.0.insert.ext.i.i30 = shl nuw nsw i32 %.sroa.7.0.i.i26, 8
  %.sroa.7.0.insert.shift.i.i31 = and i32 %.sroa.7.0.insert.ext.i.i30, 65280
  %i.abs = or i32 %.sroa.01.0.i.i27, %.sroa.11.0.insert.shift.i.i29
  %i.abt = or i32 %i.abs, %.sroa.7.0.insert.shift.i.i31 ; 3 uses
  %.sroa.01.0.insert.insert.i.i32 = or i32 %i.abt, %.sroa.6.0.insert.shift.i18 ; 6 uses
  %i.abu = load i32, ptr %i.zg, align 1           ; 7 uses
  %.sroa.045.0.extract.trunc.i243.i = trunc nuw i32 %i.abt to i24
  %.sroa.654.0.extract.shift.i244.i = lshr i32 %.sroa.01.0.insert.insert.i.i32, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i245.i = lshr i32 %i.abu, 24 ; 4 uses
  %i.abv = icmp ugt i32 %.sroa.01.0.insert.insert.i.i32, -50331649
  %i.abw = icmp ult i32 %i.abu, 50331648
  %or.cond.i246.i = select i1 %i.abv, i1 true, i1 %i.abw
  br i1 %or.cond.i246.i, label %lv_color_32_32_mix.exit270.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.sroa.018.0.extract.trunc.i247.i = trunc i32 %i.abu to i24
  %i.abx = icmp ult i32 %.sroa.01.0.insert.insert.i.i32, 50331648
  br i1 %i.abx, label %lv_color_32_32_mix.exit270.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aby = icmp eq i32 %.sroa.6.0.extract.shift.i245.i, 255
  br i1 %i.aby, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.abz = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i32, i32 %i.abu) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i268.i = trunc i32 %i.abz to i24
  %.sroa.5.0.extract.shift.i269.i = lshr i32 %i.abz, 24
  br label %lv_color_32_32_mix.exit270.i

bb.cn:                                            ; preds = %bb.cl
  %i.aca = load i8, ptr %i.ox, align 1, !tbaa !19
  %i.acb = zext i8 %i.aca to i32
  %.not.i248.i = icmp eq i32 %.sroa.6.0.extract.shift.i245.i, %i.acb
  %i.acc = load i8, ptr %i.oy, align 1
  %i.acd = zext i8 %i.acc to i32
  %.not77.i267.i = icmp eq i32 %.sroa.654.0.extract.shift.i244.i, %i.acd
  %or.cond281.i = select i1 %.not.i248.i, i1 %.not77.i267.i, i1 false
  br i1 %or.cond281.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ace = xor i32 %.sroa.654.0.extract.shift.i244.i, 255
  %i.acf = xor i32 %.sroa.6.0.extract.shift.i245.i, 255
  %i.acg = mul nuw nsw i32 %i.ace, %i.acf
  %i.ach = lshr i32 %i.acg, 8
  %i.aci = trunc nuw i32 %i.ach to i8
  %i.acj = xor i8 %i.aci, -1                      ; 2 uses
  store i8 %i.acj, ptr %i.oq, align 4, !tbaa !13
  %i.ack = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i244.i to i16
  %.lhs.trunc.i249.i = mul nuw i16 %i.ack, 255
  %.rhs.trunc.i250.i = zext i8 %i.acj to i16
  %i.acl = udiv i16 %.lhs.trunc.i249.i, %.rhs.trunc.i250.i
  %i.acm = trunc i16 %i.acl to i8
  store i8 %i.acm, ptr %i.or, align 1, !tbaa !14
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.acn = load i32, ptr %i.oo, align 4
  %i.aco = call zeroext i1 @lv_color32_eq(i32 %i.abu, i32 %i.acn) #7
  br i1 %i.aco, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.acp = load i32, ptr %6, align 4
  %i.acq = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i32, i32 %i.acp) #7
  br i1 %i.acq, label %._crit_edge.i262.i, label %bb.cr

._crit_edge.i262.i:                               ; preds = %bb.cq
  %.sroa.074.0.copyload.pre.i264.i = load i24, ptr %i.op, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i266.i = load i8, ptr %i.oz, align 1, !tbaa !18
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %.sroa.01.0.insert.insert.i.i32, ptr %6, align 4
  store i32 %i.abu, ptr %i.oo, align 4
  %i.acr = load i8, ptr %i.or, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i251.i = zext i8 %i.acr to i32
  %.sroa.654.0.insert.shift64.i252.i = shl nuw i32 %.sroa.654.0.insert.ext63.i251.i, 24
  %.sroa.045.0.insert.insert53.i254.i = add nuw nsw i32 %.sroa.654.0.insert.shift64.i252.i, %i.abt
  %i.acs = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i254.i, i32 %i.abu) #7 ; 2 uses
  store i32 %i.acs, ptr %i.op, align 4, !tbaa !18
  %i.act = load i8, ptr %i.oq, align 4, !tbaa !13 ; 2 uses
  store i8 %i.act, ptr %i.oz, align 1, !tbaa !20
  %i.acu = trunc i32 %i.acs to i24
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %._crit_edge.i262.i
  %.sroa.5.0.copyload.i255.i = phi i8 [ %.sroa.5.0.copyload.pre.i266.i, %._crit_edge.i262.i ], [ %i.act, %bb.cr ]
  %.sroa.074.0.copyload.i256.i = phi i24 [ %.sroa.074.0.copyload.pre.i264.i, %._crit_edge.i262.i ], [ %i.acu, %bb.cr ]
  %i.acv = zext i8 %.sroa.5.0.copyload.i255.i to i32
  br label %lv_color_32_32_mix.exit270.i

lv_color_32_32_mix.exit270.i:                     ; preds = %bb.cs, %bb.cm, %bb.ck, %bb.cj
  %.sroa.074.0.i257.i = phi i24 [ %.sroa.074.0.copyload.i256.i, %bb.cs ], [ %.sroa.045.0.extract.trunc.i243.i, %bb.cj ], [ %.sroa.074.0.extract.trunc.i268.i, %bb.cm ], [ %.sroa.018.0.extract.trunc.i247.i, %bb.ck ]
  %.sroa.5.0.i258.i = phi i32 [ %i.acv, %bb.cs ], [ %.sroa.654.0.extract.shift.i244.i, %bb.cj ], [ %.sroa.5.0.extract.shift.i269.i, %bb.cm ], [ %.sroa.6.0.extract.shift.i245.i, %bb.ck ]
  %.sroa.5.0.insert.shift.i259.i = shl nuw i32 %.sroa.5.0.i258.i, 24
  %.sroa.074.0.insert.ext.i260.i = zext i24 %.sroa.074.0.i257.i to i32
  %.sroa.074.0.insert.insert.i261.i = or disjoint i32 %.sroa.5.0.insert.shift.i259.i, %.sroa.074.0.insert.ext.i260.i
  store i32 %.sroa.074.0.insert.insert.i261.i, ptr %i.zg, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit.i33

blend_non_normal_pixel.exit.i33:                  ; preds = %lv_color_32_32_mix.exit270.i, %bb.ce
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, %wide.trip.count.i10
  br i1 %exitcond.not.i35, label %._crit_edge.i36, label %bb.cc, !llvm.loop !97

._crit_edge.i36:                                  ; preds = %blend_non_normal_pixel.exit.i33
  %i.acw = getelementptr inbounds i8, ptr %.2172293.i, i64 %i.pa
  %.3173.i = select i1 %i.yt, ptr null, ptr %i.acw
  %i.acx = getelementptr inbounds nuw i8, ptr %.3296.i, i64 %i.pb
  %i.acy = getelementptr inbounds nuw i8, ptr %.3161295.i, i64 %i.pc
  %i.acz = add nuw nsw i32 %.3165294.i, 1         ; 2 uses
  %exitcond324.not.i = icmp eq i32 %i.acz, %i.oa
  br i1 %exitcond324.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader289.i, !llvm.loop !98

rgb565_swapped_image_blend.exit:                  ; preds = %._crit_edge.i36, %._crit_edge298.i, %._crit_edge304.i, %._crit_edge310.split.i, %._crit_edge310.split.us.us.i, %.preheader290.i, %.preheader289.lr.ph.i, %.preheader282.i46, %.preheader.lr.ph.i47, %.preheader287.i, %.preheader286.lr.ph.i, %.preheader284.i, %.preheader283.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %l8_image_blend.exit

bb.ct:                                            ; preds = %bb.a
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext 3)
  br label %l8_image_blend.exit

bb.cu:                                            ; preds = %bb.a
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext 4)
  br label %l8_image_blend.exit

bb.cv:                                            ; preds = %bb.a
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adb = load i32, ptr %i.ada, align 8, !tbaa !22 ; 10 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !23 ; 10 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.adf = load i8, ptr %i.ade, align 8, !tbaa !24 ; 4 uses
  %i.adg = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !26 ; 5 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !27 ; 5 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !28 ; 5 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !29 ; 4 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @lv_memset(ptr noundef nonnull %5, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.adr = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.adr, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.ads = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.ads, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.adt = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 11 uses
  store i8 -1, ptr %i.adt, align 4, !tbaa !13
  %i.adu = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 11 uses
  store i8 -1, ptr %i.adu, align 1, !tbaa !14
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !31
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %bb.cw, label %.preheader454.i

.preheader454.i:                                  ; preds = %bb.cv
  %i.ady = icmp sgt i32 %i.add, 0
  br i1 %i.ady, label %.preheader453.lr.ph.i, label %argb8888_premultiplied_image_blend.exit

.preheader453.lr.ph.i:                            ; preds = %.preheader454.i
  %i.adz = icmp sgt i32 %i.adb, 0
  %i.aea = zext i8 %i.adf to i32                  ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.aec = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.aed = getelementptr inbounds nuw i8, ptr %5, i64 11 ; 2 uses
  %i.aee = sext i32 %i.adq to i64
  %i.aef = zext i32 %i.adi to i64
  %i.aeg = zext i32 %i.adm to i64
  br i1 %i.adz, label %.preheader453.preheader.i, label %argb8888_premultiplied_image_blend.exit

.preheader453.preheader.i:                        ; preds = %.preheader453.lr.ph.i
  %wide.trip.count.i83 = zext nneg i32 %i.adb to i64
  br label %.preheader453.i

bb.cw:                                            ; preds = %bb.cv
  %i.aeh = icmp eq ptr %i.ado, null               ; 3 uses
  %i.aei = zext i8 %i.adf to i32                  ; 2 uses
  %i.aej = icmp ugt i8 %i.adf, -4                 ; 2 uses
  %or.cond.i99 = select i1 %i.aeh, i1 %i.aej, i1 false
  br i1 %or.cond.i99, label %.preheader443.i, label %bb.dj

.preheader443.i:                                  ; preds = %bb.cw
  %i.aek = icmp sgt i32 %i.add, 0
  br i1 %i.aek, label %.preheader.lr.ph.i100, label %argb8888_premultiplied_image_blend.exit

.preheader.lr.ph.i100:                            ; preds = %.preheader443.i
  %i.ael = icmp sgt i32 %i.adb, 0
  %i.aem = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.aen = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.aeo = getelementptr inbounds nuw i8, ptr %5, i64 11 ; 2 uses
  %i.aep = zext i32 %i.adi to i64
  %i.aeq = zext i32 %i.adm to i64
  br i1 %i.ael, label %.preheader.preheader.i, label %argb8888_premultiplied_image_blend.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i100
  %wide.trip.count511.i = zext nneg i32 %i.adb to i64
  br label %.preheader.i101

.preheader.i101:                                  ; preds = %._crit_edge479.i, %.preheader.preheader.i
  %.0482.i = phi ptr [ %i.agf, %._crit_edge479.i ], [ %i.adg, %.preheader.preheader.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_argb8888:bb.a
  br i1 %i.amy, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.amz = load i32, ptr %5, align 4
  %i.ana = call zeroext i1 @lv_color32_eq(i32 %.sroa.066.0.insert.insert86.i, i32 %i.amz) #7
  br i1 %i.ana, label %._crit_edge.i383.i, label %bb.eu

._crit_edge.i383.i:                               ; preds = %bb.et
  %.sroa.074.0.copyload.pre.i385.i = load i24, ptr %i.ads, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i387.i = load i8, ptr %i.ald, align 1, !tbaa !18
  br label %bb.ev

bb.eu:                                            ; preds = %bb.et, %bb.es
  store i32 %.sroa.066.0.insert.insert86.i, ptr %5, align 4
  store i32 %i.ame, ptr %i.adr, align 4
  %i.anb = load i8, ptr %i.adu, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i372.i = zext i8 %i.anb to i32
  %.sroa.654.0.insert.shift64.i373.i = shl nuw i32 %.sroa.654.0.insert.ext63.i372.i, 24
  %.sroa.045.0.insert.ext51.i374.i = and i32 %.sroa.066.0.insert.insert86.i, 16777215
  %.sroa.045.0.insert.insert53.i375.i = or disjoint i32 %.sroa.654.0.insert.shift64.i373.i, %.sroa.045.0.insert.ext51.i374.i
  %i.anc = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i375.i, i32 %i.ame) #7 ; 2 uses
  store i32 %i.anc, ptr %i.ads, align 4, !tbaa !18
  %i.and = load i8, ptr %i.adt, align 4, !tbaa !13 ; 2 uses
  store i8 %i.and, ptr %i.ald, align 1, !tbaa !20
  %i.ane = trunc i32 %i.anc to i24
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge.i383.i
  %.sroa.5.0.copyload.i376.i = phi i8 [ %.sroa.5.0.copyload.pre.i387.i, %._crit_edge.i383.i ], [ %i.and, %bb.eu ]
  %.sroa.074.0.copyload.i377.i = phi i24 [ %.sroa.074.0.copyload.pre.i385.i, %._crit_edge.i383.i ], [ %i.ane, %bb.eu ]
  %i.anf = zext i8 %.sroa.5.0.copyload.i376.i to i32
  br label %lv_color_32_32_mix.exit391.i

lv_color_32_32_mix.exit391.i:                     ; preds = %bb.ev, %bb.ep, %bb.en, %bb.em
  %.sroa.074.0.i378.i = phi i24 [ %.sroa.074.0.copyload.i377.i, %bb.ev ], [ %.sroa.045.0.extract.trunc.i364.i, %bb.em ], [ %.sroa.074.0.extract.trunc.i389.i, %bb.ep ], [ %.sroa.018.0.extract.trunc.i368.i, %bb.en ]
  %.sroa.5.0.i379.i = phi i32 [ %i.anf, %bb.ev ], [ %.sroa.654.0.extract.shift.i365.i, %bb.em ], [ %.sroa.5.0.extract.shift.i390.i, %bb.ep ], [ %.sroa.6.0.extract.shift.i366.i, %bb.en ]
  %.sroa.5.0.insert.shift.i380.i = shl nuw i32 %.sroa.5.0.i379.i, 24
  %.sroa.074.0.insert.ext.i381.i = zext i24 %.sroa.074.0.i378.i to i32
  %.sroa.074.0.insert.insert.i382.i = or disjoint i32 %.sroa.5.0.insert.shift.i380.i, %.sroa.074.0.insert.ext.i381.i
  store i32 %.sroa.074.0.insert.insert.i382.i, ptr %i.amc, align 1, !tbaa !18
  %indvars.iv.next491.i = add nuw nsw i64 %indvars.iv490.i, 1 ; 2 uses
  %exitcond494.not.i = icmp eq i64 %indvars.iv.next491.i, %wide.trip.count493.i
  br i1 %exitcond494.not.i, label %._crit_edge462.i, label %bb.ek, !llvm.loop !105

._crit_edge462.i:                                 ; preds = %lv_color_32_32_mix.exit391.i
  %i.ang = getelementptr inbounds nuw i8, ptr %.3466.i, i64 %i.ale
  %i.anh = getelementptr inbounds nuw i8, ptr %.3278465.i, i64 %i.alf
  %i.ani = getelementptr inbounds i8, ptr %.1281464.i, i64 %i.alg
  %i.anj = add nuw nsw i32 %.3287463.i, 1         ; 2 uses
  %exitcond495.not.i = icmp eq i32 %i.anj, %i.add
  br i1 %exitcond495.not.i, label %argb8888_premultiplied_image_blend.exit, label %.preheader450.i, !llvm.loop !106

.preheader453.i:                                  ; preds = %._crit_edge.i96, %.preheader453.preheader.i
  %.4460.i = phi ptr [ %i.arp, %._crit_edge.i96 ], [ %i.adg, %.preheader453.preheader.i ] ; 2 uses
  %.4279459.i = phi ptr [ %i.arq, %._crit_edge.i96 ], [ %i.adk, %.preheader453.preheader.i ] ; 2 uses
  %.2282458.i = phi ptr [ %.3283.i, %._crit_edge.i96 ], [ %i.ado, %.preheader453.preheader.i ] ; 3 uses
  %.4288457.i = phi i32 [ %i.arr, %._crit_edge.i96 ], [ 0, %.preheader453.preheader.i ]
  %i.ank = icmp eq ptr %.2282458.i, null          ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %blend_non_normal_pixel.exit.i93, %.preheader453.i
  %indvars.iv.i84 = phi i64 [ 0, %.preheader453.i ], [ %indvars.iv.next.i94, %blend_non_normal_pixel.exit.i93 ] ; 4 uses
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %.4279459.i, i64 %indvars.iv.i84 ; 4 uses
  %.sroa.066.0.copyload87.i = load i8, ptr %i.anl, align 1, !tbaa !18 ; 2 uses
  %.sroa.22.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.anl, i64 1
  %.sroa.22.0.copyload114.i = load i8, ptr %.sroa.22.0..sroa_idx113.i, align 1, !tbaa !18 ; 2 uses
  %.sroa.32.0..sroa_idx145.i = getelementptr inbounds nuw i8, ptr %i.anl, i64 2
  %.sroa.32.0.copyload146.i = load i8, ptr %.sroa.32.0..sroa_idx145.i, align 1, !tbaa !18 ; 2 uses
  %.sroa.42.0..sroa_idx177.i = getelementptr inbounds nuw i8, ptr %i.anl, i64 3
  %.sroa.42.0.copyload178.i = load i8, ptr %.sroa.42.0..sroa_idx177.i, align 1, !tbaa !18 ; 3 uses
  %i.anm = zext i8 %.sroa.42.0.copyload178.i to i32 ; 2 uses
  %.not303.i = icmp eq i8 %.sroa.42.0.copyload178.i, 0
  br i1 %.not303.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.rhs.trunc426.i = zext i8 %.sroa.42.0.copyload178.i to i16
  %i.ann = udiv i16 -256, %.rhs.trunc426.i        ; 3 uses
  %i.ano = zext i8 %.sroa.32.0.copyload146.i to i16
  %i.anp = mul i16 %i.ann, %i.ano
  %i.anq = lshr i16 %i.anp, 8
  %i.anr = trunc nuw i16 %i.anq to i8
  %i.ans = zext i8 %.sroa.22.0.copyload114.i to i16
  %i.ant = mul i16 %i.ann, %i.ans
  %i.anu = lshr i16 %i.ant, 8
  %i.anv = trunc nuw i16 %i.anu to i8
  %i.anw = zext i8 %.sroa.066.0.copyload87.i to i16
  %i.anx = mul i16 %i.ann, %i.anw
  %i.any = lshr i16 %i.anx, 8
  %i.anz = trunc nuw i16 %i.any to i8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sroa.32.3.i = phi i8 [ %i.anr, %bb.ex ], [ %.sroa.32.0.copyload146.i, %bb.ew ]
  %.sroa.22.3.i = phi i8 [ %i.anv, %bb.ex ], [ %.sroa.22.0.copyload114.i, %bb.ew ]
  %.sroa.066.3.i = phi i8 [ %i.anz, %bb.ex ], [ %.sroa.066.0.copyload87.i, %bb.ew ]
  br i1 %i.ank, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aoa = mul nuw nsw i32 %i.anm, %i.aea
  %i.aob = lshr i32 %i.aoa, 8
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.aoc = getelementptr inbounds nuw i8, ptr %.2282458.i, i64 %indvars.iv.i84
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18
  %i.aoe = zext i8 %i.aod to i32
  %i.aof = mul nuw nsw i32 %i.anm, %i.aea
  %i.aog = mul nuw nsw i32 %i.aof, %i.aoe
  %i.aoh = lshr i32 %i.aog, 16
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sroa.42.3.in.i = phi i32 [ %i.aob, %bb.ez ], [ %i.aoh, %bb.fa ]
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %.4460.i, i64 %indvars.iv.i84 ; 14 uses
  %i.aoj = load i32, ptr %i.adv, align 4, !tbaa !31
  %.sroa.42.0.insert.ext180.i = shl nuw i32 %.sroa.42.3.in.i, 24
  %.sroa.32.0.insert.ext148.i = zext i8 %.sroa.32.3.i to i32 ; 4 uses
  %.sroa.22.0.insert.ext116.i = zext i8 %.sroa.22.3.i to i32 ; 4 uses
  %.sroa.066.0.insert.ext89.i = zext i8 %.sroa.066.3.i to i32 ; 4 uses
  switch i32 %i.aoj, label %blend_non_normal_pixel.exit.i93 [
    i32 1, label %bb.fc
    i32 2, label %bb.fd
    i32 3, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !32
  %i.aom = zext i8 %i.aol to i32
  %i.aon = add nuw nsw i32 %i.aom, %.sroa.32.0.insert.ext148.i
  %spec.select.i.i98 = call i32 @llvm.umin.i32(i32 %i.aon, i32 255)
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoi, i64 1
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !33
  %i.aoq = zext i8 %i.aop to i32
  %i.aor = add nuw nsw i32 %i.aoq, %.sroa.22.0.insert.ext116.i
  %i.aos = call i32 @llvm.umin.i32(i32 %i.aor, i32 255)
  %i.aot = load i8, ptr %i.aoi, align 1, !tbaa !34
  %i.aou = zext i8 %i.aot to i32
  %i.aov = add nuw nsw i32 %i.aou, %.sroa.066.0.insert.ext89.i
  %i.aow = call i32 @llvm.umin.i32(i32 %i.aov, i32 255)
  br label %bb.fg

bb.fd:                                            ; preds = %bb.fb
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !32
  %i.aoz = zext i8 %i.aoy to i32
  %i.apa = sub nsw i32 %i.aoz, %.sroa.32.0.insert.ext148.i
  %spec.select60.i.i97 = call i32 @llvm.smax.i32(i32 %i.apa, i32 0)
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoi, i64 1
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !33
  %i.apd = zext i8 %i.apc to i32
  %i.ape = sub nsw i32 %i.apd, %.sroa.22.0.insert.ext116.i
  %i.apf = call i32 @llvm.smax.i32(i32 %i.ape, i32 0)
  %i.apg = load i8, ptr %i.aoi, align 1, !tbaa !34
  %i.aph = zext i8 %i.apg to i32
  %i.api = sub nsw i32 %i.aph, %.sroa.066.0.insert.ext89.i
  %i.apj = call i32 @llvm.smax.i32(i32 %i.api, i32 0)
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fb
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !32
  %i.apm = zext i8 %i.apl to i32
  %i.apn = mul nuw nsw i32 %i.apm, %.sroa.32.0.insert.ext148.i
  %i.apo = lshr i32 %i.apn, 8
  %i.app = getelementptr inbounds nuw i8, ptr %i.aoi, i64 1
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !33
  %i.apr = zext i8 %i.apq to i32
  %i.aps = mul nuw nsw i32 %i.apr, %.sroa.22.0.insert.ext116.i
  %i.apt = lshr i32 %i.aps, 8
  %i.apu = load i8, ptr %i.aoi, align 1, !tbaa !34
  %i.apv = zext i8 %i.apu to i32
  %i.apw = mul nuw nsw i32 %i.apv, %.sroa.066.0.insert.ext89.i
  %i.apx = lshr i32 %i.apw, 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fb
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !32
  %i.aqa = zext i8 %i.apz to i32
  %i.aqb = sub nsw i32 %i.aqa, %.sroa.32.0.insert.ext148.i
  %i.aqc = call i32 @llvm.abs.i32(i32 %i.aqb, i1 true)
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aoi, i64 1
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !33
  %i.aqf = zext i8 %i.aqe to i32
  %i.aqg = sub nsw i32 %i.aqf, %.sroa.22.0.insert.ext116.i
  %i.aqh = call i32 @llvm.abs.i32(i32 %i.aqg, i1 true)
  %i.aqi = load i8, ptr %i.aoi, align 1, !tbaa !34
  %i.aqj = zext i8 %i.aqi to i32
  %i.aqk = sub nsw i32 %i.aqj, %.sroa.066.0.insert.ext89.i
  %i.aql = call i32 @llvm.abs.i32(i32 %i.aqk, i1 true)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fc
  %.sroa.11.0.i.i85 = phi i32 [ %spec.select.i.i98, %bb.fc ], [ %spec.select60.i.i97, %bb.fd ], [ %i.apo, %bb.fe ], [ %i.aqc, %bb.ff ]
  %.sroa.7.0.i.i86 = phi i32 [ %i.aos, %bb.fc ], [ %i.apf, %bb.fd ], [ %i.apt, %bb.fe ], [ %i.aqh, %bb.ff ]
  %.sroa.01.0.i.i87 = phi i32 [ %i.aow, %bb.fc ], [ %i.apj, %bb.fd ], [ %i.apx, %bb.fe ], [ %i.aql, %bb.ff ]
  %.sroa.11.0.insert.ext.i.i88 = shl nuw nsw i32 %.sroa.11.0.i.i85, 16
  %.sroa.11.0.insert.shift.i.i89 = and i32 %.sroa.11.0.insert.ext.i.i88, 16711680
  %.sroa.7.0.insert.ext.i.i90 = shl nuw nsw i32 %.sroa.7.0.i.i86, 8
  %.sroa.7.0.insert.shift.i.i91 = and i32 %.sroa.7.0.insert.ext.i.i90, 65280
  %.sroa.7.0.insert.insert.i.i = or disjoint i32 %.sroa.11.0.insert.shift.i.i89, %.sroa.42.0.insert.ext180.i
  %.sroa.7.0.insert.insert.i.i.a = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i, %.sroa.01.0.i.i87
  %.sroa.01.0.insert.insert.i.i92 = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i.a, %.sroa.7.0.insert.shift.i.i91 ; 8 uses
  %i.aqm = load i32, ptr %i.aoi, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i392.i = trunc i32 %.sroa.01.0.insert.insert.i.i92 to i24
  %.sroa.654.0.extract.shift.i393.i = lshr i32 %.sroa.01.0.insert.insert.i.i92, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i394.i = lshr i32 %i.aqm, 24 ; 4 uses
  %i.aqn = icmp ugt i32 %.sroa.01.0.insert.insert.i.i92, -50331649
  %i.aqo = icmp ult i32 %i.aqm, 50331648
  %or.cond.i395.i = select i1 %i.aqn, i1 true, i1 %i.aqo
  br i1 %or.cond.i395.i, label %lv_color_32_32_mix.exit419.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.sroa.018.0.extract.trunc.i396.i = trunc i32 %i.aqm to i24
  %i.aqp = icmp ult i32 %.sroa.01.0.insert.insert.i.i92, 50331648
  br i1 %i.aqp, label %lv_color_32_32_mix.exit419.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aqq = icmp eq i32 %.sroa.6.0.extract.shift.i394.i, 255
  br i1 %i.aqq, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aqr = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i92, i32 %i.aqm) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i417.i = trunc i32 %i.aqr to i24
  %.sroa.5.0.extract.shift.i418.i = lshr i32 %i.aqr, 24
  br label %lv_color_32_32_mix.exit419.i

bb.fk:                                            ; preds = %bb.fi
  %i.aqs = load i8, ptr %i.aeb, align 1, !tbaa !19
  %i.aqt = zext i8 %i.aqs to i32
  %.not.i397.i = icmp eq i32 %.sroa.6.0.extract.shift.i394.i, %i.aqt
  %i.aqu = load i8, ptr %i.aec, align 1
  %i.aqv = zext i8 %i.aqu to i32
  %.not77.i416.i = icmp eq i32 %.sroa.654.0.extract.shift.i393.i, %i.aqv
  %or.cond442.i = select i1 %.not.i397.i, i1 %.not77.i416.i, i1 false
  br i1 %or.cond442.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aqw = xor i32 %.sroa.654.0.extract.shift.i393.i, 255
  %i.aqx = xor i32 %.sroa.6.0.extract.shift.i394.i, 255
  %i.aqy = mul nuw nsw i32 %i.aqw, %i.aqx
  %i.aqz = lshr i32 %i.aqy, 8
  %i.ara = trunc nuw i32 %i.aqz to i8
  %i.arb = xor i8 %i.ara, -1                      ; 2 uses
  store i8 %i.arb, ptr %i.adt, align 4, !tbaa !13
  %i.arc = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i393.i to i16
  %.lhs.trunc.i398.i = mul nuw i16 %i.arc, 255
  %.rhs.trunc.i399.i = zext i8 %i.arb to i16
  %i.ard = udiv i16 %.lhs.trunc.i398.i, %.rhs.trunc.i399.i
  %i.are = trunc i16 %i.ard to i8
  store i8 %i.are, ptr %i.adu, align 1, !tbaa !14
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.arf = load i32, ptr %i.adr, align 4
  %i.arg = call zeroext i1 @lv_color32_eq(i32 %i.aqm, i32 %i.arf) #7
  br i1 %i.arg, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.arh = load i32, ptr %5, align 4
  %i.ari = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i92, i32 %i.arh) #7
  br i1 %i.ari, label %._crit_edge.i411.i, label %bb.fo

._crit_edge.i411.i:                               ; preds = %bb.fn
  %.sroa.074.0.copyload.pre.i413.i = load i24, ptr %i.ads, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i415.i = load i8, ptr %i.aed, align 1, !tbaa !18
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  store i32 %.sroa.01.0.insert.insert.i.i92, ptr %5, align 4
  store i32 %i.aqm, ptr %i.adr, align 4
  %i.arj = load i8, ptr %i.adu, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i400.i = zext i8 %i.arj to i32
  %.sroa.654.0.insert.shift64.i401.i = shl nuw i32 %.sroa.654.0.insert.ext63.i400.i, 24
  %.sroa.045.0.insert.ext51.i402.i = and i32 %.sroa.01.0.insert.insert.i.i92, 16777215
  %.sroa.045.0.insert.insert53.i403.i = or disjoint i32 %.sroa.654.0.insert.shift64.i401.i, %.sroa.045.0.insert.ext51.i402.i
  %i.ark = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i403.i, i32 %i.aqm) #7 ; 2 uses
  store i32 %i.ark, ptr %i.ads, align 4, !tbaa !18
  %i.arl = load i8, ptr %i.adt, align 4, !tbaa !13 ; 2 uses
  store i8 %i.arl, ptr %i.aed, align 1, !tbaa !20
  %i.arm = trunc i32 %i.ark to i24
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge.i411.i
  %.sroa.5.0.copyload.i404.i = phi i8 [ %.sroa.5.0.copyload.pre.i415.i, %._crit_edge.i411.i ], [ %i.arl, %bb.fo ]
  %.sroa.074.0.copyload.i405.i = phi i24 [ %.sroa.074.0.copyload.pre.i413.i, %._crit_edge.i411.i ], [ %i.arm, %bb.fo ]
  %i.arn = zext i8 %.sroa.5.0.copyload.i404.i to i32
  br label %lv_color_32_32_mix.exit419.i

lv_color_32_32_mix.exit419.i:                     ; preds = %bb.fp, %bb.fj, %bb.fh, %bb.fg
  %.sroa.074.0.i406.i = phi i24 [ %.sroa.074.0.copyload.i405.i, %bb.fp ], [ %.sroa.045.0.extract.trunc.i392.i, %bb.fg ], [ %.sroa.074.0.extract.trunc.i417.i, %bb.fj ], [ %.sroa.018.0.extract.trunc.i396.i, %bb.fh ]
  %.sroa.5.0.i407.i = phi i32 [ %i.arn, %bb.fp ], [ %.sroa.654.0.extract.shift.i393.i, %bb.fg ], [ %.sroa.5.0.extract.shift.i418.i, %bb.fj ], [ %.sroa.6.0.extract.shift.i394.i, %bb.fh ]
  %.sroa.5.0.insert.shift.i408.i = shl nuw i32 %.sroa.5.0.i407.i, 24
  %.sroa.074.0.insert.ext.i409.i = zext i24 %.sroa.074.0.i406.i to i32
  %.sroa.074.0.insert.insert.i410.i = or disjoint i32 %.sroa.5.0.insert.shift.i408.i, %.sroa.074.0.insert.ext.i409.i
  store i32 %.sroa.074.0.insert.insert.i410.i, ptr %i.aoi, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit.i93

blend_non_normal_pixel.exit.i93:                  ; preds = %lv_color_32_32_mix.exit419.i, %bb.fb
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, %wide.trip.count.i83
  br i1 %exitcond.not.i95, label %._crit_edge.i96, label %bb.ew, !llvm.loop !107

._crit_edge.i96:                                  ; preds = %blend_non_normal_pixel.exit.i93
  %i.aro = getelementptr inbounds i8, ptr %.2282458.i, i64 %i.aee
  %.3283.i = select i1 %i.ank, ptr null, ptr %i.aro
  %i.arp = getelementptr inbounds nuw i8, ptr %.4460.i, i64 %i.aef
  %i.arq = getelementptr inbounds nuw i8, ptr %.4279459.i, i64 %i.aeg
  %i.arr = add nuw nsw i32 %.4288457.i, 1         ; 2 uses
  %exitcond489.not.i = icmp eq i32 %i.arr, %i.add
  br i1 %exitcond489.not.i, label %argb8888_premultiplied_image_blend.exit, label %.preheader453.i, !llvm.loop !108

argb8888_premultiplied_image_blend.exit:          ; preds = %._crit_edge.i96, %._crit_edge462.i, %._crit_edge468.i, %._crit_edge474.i, %._crit_edge479.i, %.preheader454.i, %.preheader453.lr.ph.i, %.preheader443.i, %.preheader.lr.ph.i100, %.preheader445.i, %.preheader444.lr.ph.i, %.preheader448.i, %.preheader447.lr.ph.i, %bb.ej, %.preheader450.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %l8_image_blend.exit

bb.fq:                                            ; preds = %bb.a
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !22 ; 10 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !23 ; 10 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.arx = load i8, ptr %i.arw, align 8, !tbaa !24 ; 5 uses
  %i.ary = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.asa = load i32, ptr %i.arz, align 8, !tbaa !26 ; 5 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !27 ; 5 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ase = load i32, ptr %i.asd, align 8, !tbaa !28 ; 5 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !29 ; 4 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @lv_memset(ptr noundef nonnull %4, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.asj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.asj, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.ask = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.ask, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.asl = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 11 uses
  store i8 -1, ptr %i.asl, align 4, !tbaa !13
  %i.asm = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 11 uses
  store i8 -1, ptr %i.asm, align 1, !tbaa !14
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !31
  %i.asp = icmp eq i32 %i.aso, 0
  br i1 %i.asp, label %bb.fr, label %.preheader333.i

.preheader333.i:                                  ; preds = %bb.fq
  %i.asq = icmp sgt i32 %i.arv, 0
  br i1 %i.asq, label %.preheader332.lr.ph.i, label %argb8888_image_blend.exit

.preheader332.lr.ph.i:                            ; preds = %.preheader333.i
  %i.asr = icmp sgt i32 %i.art, 0
  %i.ass = zext i8 %i.arx to i32
  %i.ast = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.asu = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.asv = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.asw = sext i32 %i.asi to i64
  %i.asx = zext i32 %i.asa to i64
  %i.asy = zext i32 %i.ase to i64
  br i1 %i.asr, label %.preheader332.preheader.i, label %argb8888_image_blend.exit

.preheader332.preheader.i:                        ; preds = %.preheader332.lr.ph.i
  %wide.trip.count.i125 = zext nneg i32 %i.art to i64
  br label %.preheader332.i

bb.fr:                                            ; preds = %bb.fq
  %i.asz = icmp eq ptr %i.asg, null               ; 3 uses
  %i.ata = zext i8 %i.arx to i32                  ; 2 uses
  %i.atb = icmp ugt i8 %i.arx, -4                 ; 2 uses
  %or.cond.i143 = select i1 %i.asz, i1 %i.atb, i1 false
  br i1 %or.cond.i143, label %.preheader322.i, label %bb.gc

.preheader322.i:                                  ; preds = %bb.fr
  %i.atc = icmp sgt i32 %i.arv, 0
  br i1 %i.atc, label %.preheader.lr.ph.i148, label %argb8888_image_blend.exit

.preheader.lr.ph.i148:                            ; preds = %.preheader322.i
  %i.atd = icmp sgt i32 %i.art, 0
  %i.ate = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.atf = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.atg = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.ath = zext i32 %i.asa to i64
  %i.ati = zext i32 %i.ase to i64
  br i1 %i.atd, label %.preheader.preheader.i149, label %argb8888_image_blend.exit

.preheader.preheader.i149:                        ; preds = %.preheader.lr.ph.i148
  %wide.trip.count390.i = zext nneg i32 %i.art to i64
  br label %.preheader.i150

.preheader.i150:                                  ; preds = %._crit_edge358.i, %.preheader.preheader.i149
  %.0361.i = phi ptr [ %i.auo, %._crit_edge358.i ], [ %i.ary, %.preheader.preheader.i149 ] ; 2 uses
  %.0172360.i = phi i32 [ %i.auq, %._crit_edge358.i ], [ 0, %.preheader.preheader.i149 ]
  %.0186359.i = phi ptr [ %i.aup, %._crit_edge358.i ], [ %i.asc, %.preheader.preheader.i149 ] ; 2 uses
  br label %bb.fs

bb.fs:                                            ; preds = %lv_color_32_32_mix.exit.i164, %.preheader.i150
  %indvars.iv387.i = phi i64 [ 0, %.preheader.i150 ], [ %indvars.iv.next388.i, %lv_color_32_32_mix.exit.i164 ] ; 3 uses
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.0361.i, i64 %indvars.iv387.i ; 2 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %.0186359.i, i64 %indvars.iv387.i
  %i.atl = load i32, ptr %i.atk, align 1          ; 8 uses
  %i.atm = load i32, ptr %i.atj, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i.i151 = trunc i32 %i.atl to i24
  %.sroa.654.0.extract.shift.i.i = lshr i32 %i.atl, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i.i152 = lshr i32 %i.atm, 24 ; 4 uses
  %i.atn = icmp ugt i32 %i.atl, -50331649
  %i.ato = icmp ult i32 %i.atm, 50331648
  %or.cond.i.i153 = select i1 %i.atn, i1 true, i1 %i.ato
  br i1 %or.cond.i.i153, label %lv_color_32_32_mix.exit.i164, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.sroa.018.0.extract.trunc.i.i154 = trunc i32 %i.atm to i24
  %i.atp = icmp ult i32 %i.atl, 50331648
end_hunk_2
begin_hunk_3_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %i.azg = trunc nuw i32 %i.azf to i8
  %i.azh = xor i8 %i.azg, -1                      ; 2 uses
  store i8 %i.azh, ptr %i.asl, align 4, !tbaa !13
  %i.azi = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i252.i to i16
  %.lhs.trunc.i257.i = mul nuw i16 %i.azi, 255
  %.rhs.trunc.i258.i = zext i8 %i.azh to i16
  %i.azj = udiv i16 %.lhs.trunc.i257.i, %.rhs.trunc.i258.i
  %i.azk = trunc i16 %i.azj to i8
  store i8 %i.azk, ptr %i.asm, align 1, !tbaa !14
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.azl = load i32, ptr %i.asj, align 4
  %i.azm = call zeroext i1 @lv_color32_eq(i32 %i.ays, i32 %i.azl) #7
  br i1 %i.azm, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.azn = load i32, ptr %4, align 4
  %i.azo = call zeroext i1 @lv_color32_eq(i32 %.sroa.051.0.insert.insert59.i, i32 %i.azn) #7
  br i1 %i.azo, label %._crit_edge.i270.i, label %bb.hh

._crit_edge.i270.i:                               ; preds = %bb.hg
  %.sroa.074.0.copyload.pre.i272.i = load i24, ptr %i.ask, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i274.i = load i8, ptr %i.ayf, align 1, !tbaa !18
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  store i32 %.sroa.051.0.insert.insert59.i, ptr %4, align 4
  store i32 %i.ays, ptr %i.asj, align 4
  %i.azp = load i8, ptr %i.asm, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i259.i = zext i8 %i.azp to i32
  %.sroa.654.0.insert.shift64.i260.i = shl nuw i32 %.sroa.654.0.insert.ext63.i259.i, 24
  %.sroa.045.0.insert.insert53.i262.i = or disjoint i32 %.sroa.654.0.insert.shift64.i260.i, %.sroa.051.0.insert.ext57.i
  %i.azq = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i262.i, i32 %i.ays) #7 ; 2 uses
  store i32 %i.azq, ptr %i.ask, align 4, !tbaa !18
  %i.azr = load i8, ptr %i.asl, align 4, !tbaa !13 ; 2 uses
  store i8 %i.azr, ptr %i.ayf, align 1, !tbaa !20
  %i.azs = trunc i32 %i.azq to i24
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %._crit_edge.i270.i
  %.sroa.5.0.copyload.i263.i = phi i8 [ %.sroa.5.0.copyload.pre.i274.i, %._crit_edge.i270.i ], [ %i.azr, %bb.hh ]
  %.sroa.074.0.copyload.i264.i = phi i24 [ %.sroa.074.0.copyload.pre.i272.i, %._crit_edge.i270.i ], [ %i.azs, %bb.hh ]
  %i.azt = zext i8 %.sroa.5.0.copyload.i263.i to i32
  br label %lv_color_32_32_mix.exit278.i

lv_color_32_32_mix.exit278.i:                     ; preds = %bb.hi, %bb.hc, %bb.ha, %bb.gz
  %.sroa.074.0.i265.i = phi i24 [ %.sroa.074.0.copyload.i264.i, %bb.hi ], [ %.sroa.051.sroa.0.0.copyload91.i, %bb.gz ], [ %.sroa.074.0.extract.trunc.i276.i, %bb.hc ], [ %.sroa.018.0.extract.trunc.i255.i, %bb.ha ]
  %.sroa.5.0.i266.i = phi i32 [ %i.azt, %bb.hi ], [ %.sroa.654.0.extract.shift.i252.i, %bb.gz ], [ %.sroa.5.0.extract.shift.i277.i, %bb.hc ], [ %.sroa.6.0.extract.shift.i253.i, %bb.ha ]
  %.sroa.5.0.insert.shift.i267.i = shl nuw i32 %.sroa.5.0.i266.i, 24
  %.sroa.074.0.insert.ext.i268.i = zext i24 %.sroa.074.0.i265.i to i32
  %.sroa.074.0.insert.insert.i269.i = or disjoint i32 %.sroa.5.0.insert.shift.i267.i, %.sroa.074.0.insert.ext.i268.i
  store i32 %.sroa.074.0.insert.insert.i269.i, ptr %i.ayq, align 1, !tbaa !18
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %wide.trip.count372.i
  br i1 %exitcond373.not.i, label %._crit_edge341.i, label %bb.gz, !llvm.loop !115

._crit_edge341.i:                                 ; preds = %lv_color_32_32_mix.exit278.i
  %i.azu = getelementptr inbounds nuw i8, ptr %.3345.i, i64 %i.ayg
  %i.azv = getelementptr inbounds nuw i8, ptr %.3189342.i, i64 %i.ayh
  %i.azw = getelementptr inbounds i8, ptr %.1183343.i, i64 %i.ayi
  %i.azx = add nuw nsw i32 %.3175344.i, 1         ; 2 uses
  %exitcond374.not.i = icmp eq i32 %i.azx, %i.arv
  br i1 %exitcond374.not.i, label %argb8888_image_blend.exit, label %.preheader329.i, !llvm.loop !116

.preheader332.i:                                  ; preds = %._crit_edge.i140, %.preheader332.preheader.i
  %.4339.i = phi ptr [ %i.bee, %._crit_edge.i140 ], [ %i.ary, %.preheader332.preheader.i ] ; 2 uses
  %.4176338.i = phi i32 [ %i.beg, %._crit_edge.i140 ], [ 0, %.preheader332.preheader.i ]
  %.2184337.i = phi ptr [ %.3185.i, %._crit_edge.i140 ], [ %i.asg, %.preheader332.preheader.i ] ; 3 uses
  %.4190336.i = phi ptr [ %i.bef, %._crit_edge.i140 ], [ %i.asc, %.preheader332.preheader.i ] ; 2 uses
  %i.azy = icmp eq ptr %.2184337.i, null          ; 2 uses
  br label %bb.hj

bb.hj:                                            ; preds = %blend_non_normal_pixel.exit.i137, %.preheader332.i
  %indvars.iv.i126 = phi i64 [ 0, %.preheader332.i ], [ %indvars.iv.next.i138, %blend_non_normal_pixel.exit.i137 ] ; 4 uses
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %.4190336.i, i64 %indvars.iv.i126 ; 2 uses
  %.sroa.051.sroa.0.0.copyload93.i = load i24, ptr %i.azz, align 1, !tbaa !18
  %.sroa.10.0..sroa_idx78.i = getelementptr inbounds nuw i8, ptr %i.azz, i64 3
  %.sroa.10.0.copyload79.i = load i8, ptr %.sroa.10.0..sroa_idx78.i, align 1, !tbaa !18 ; 2 uses
  br i1 %i.azy, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.baa = call i8 @llvm.umulh.i8(i8 %.sroa.10.0.copyload79.i, i8 %i.arx)
  %i.bab = zext i8 %i.baa to i32
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.bac = zext i8 %.sroa.10.0.copyload79.i to i32
  %i.bad = getelementptr inbounds nuw i8, ptr %.2184337.i, i64 %indvars.iv.i126
  %i.bae = load i8, ptr %i.bad, align 1, !tbaa !18
  %i.baf = zext i8 %i.bae to i32
  %i.bag = mul nuw nsw i32 %i.bac, %i.ass
  %i.bah = mul nuw nsw i32 %i.bag, %i.baf
  %i.bai = lshr i32 %i.bah, 16
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.sroa.10.0.i = phi i32 [ %i.bab, %bb.hk ], [ %i.bai, %bb.hl ]
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.4339.i, i64 %indvars.iv.i126 ; 14 uses
  %i.bak = load i32, ptr %i.asn, align 4, !tbaa !31
  %.sroa.10.0.insert.shift82.i = shl nuw i32 %.sroa.10.0.i, 24 ; 2 uses
  %.sroa.051.0.insert.ext61.i = zext i24 %.sroa.051.sroa.0.0.copyload93.i to i32 ; 5 uses
  %.sroa.051.0.insert.insert63.i = or disjoint i32 %.sroa.10.0.insert.shift82.i, %.sroa.051.0.insert.ext61.i ; 2 uses
  %.sroa.9.0.extract.shift.i.i127 = lshr i32 %.sroa.051.0.insert.insert63.i, 8 ; 4 uses
  %.sroa.17.0.extract.shift.i.i128 = lshr i32 %.sroa.051.0.insert.insert63.i, 16 ; 4 uses
  switch i32 %i.bak, label %blend_non_normal_pixel.exit.i137 [
    i32 1, label %bb.hn
    i32 2, label %bb.ho
    i32 3, label %bb.hp
    i32 4, label %bb.hq
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.bal = getelementptr inbounds nuw i8, ptr %i.baj, i64 2
  %i.bam = load i8, ptr %i.bal, align 1, !tbaa !32
  %i.ban = zext i8 %i.bam to i32
  %i.bao = and i32 %.sroa.17.0.extract.shift.i.i128, 255
  %i.bap = add nuw nsw i32 %i.bao, %i.ban
  %spec.select.i.i142 = call i32 @llvm.umin.i32(i32 %i.bap, i32 255)
  %i.baq = getelementptr inbounds nuw i8, ptr %i.baj, i64 1
  %i.bar = load i8, ptr %i.baq, align 1, !tbaa !33
  %i.bas = zext i8 %i.bar to i32
  %i.bat = and i32 %.sroa.9.0.extract.shift.i.i127, 255
  %i.bau = add nuw nsw i32 %i.bat, %i.bas
  %i.bav = call i32 @llvm.umin.i32(i32 %i.bau, i32 255)
  %i.baw = load i8, ptr %i.baj, align 1, !tbaa !34
  %i.bax = zext i8 %i.baw to i32
  %i.bay = and i32 %.sroa.051.0.insert.ext61.i, 255
  %i.baz = add nuw nsw i32 %i.bay, %i.bax
  %i.bba = call i32 @llvm.umin.i32(i32 %i.baz, i32 255)
  br label %bb.hr

bb.ho:                                            ; preds = %bb.hm
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baj, i64 2
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !32
  %i.bbd = zext i8 %i.bbc to i32
  %i.bbe = and i32 %.sroa.17.0.extract.shift.i.i128, 255
  %i.bbf = sub nsw i32 %i.bbd, %i.bbe
  %spec.select60.i.i141 = call i32 @llvm.smax.i32(i32 %i.bbf, i32 0)
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.baj, i64 1
  %i.bbh = load i8, ptr %i.bbg, align 1, !tbaa !33
  %i.bbi = zext i8 %i.bbh to i32
  %i.bbj = and i32 %.sroa.9.0.extract.shift.i.i127, 255
  %i.bbk = sub nsw i32 %i.bbi, %i.bbj
  %i.bbl = call i32 @llvm.smax.i32(i32 %i.bbk, i32 0)
  %i.bbm = load i8, ptr %i.baj, align 1, !tbaa !34
  %i.bbn = zext i8 %i.bbm to i32
  %i.bbo = and i32 %.sroa.051.0.insert.ext61.i, 255
  %i.bbp = sub nsw i32 %i.bbn, %i.bbo
  %i.bbq = call i32 @llvm.smax.i32(i32 %i.bbp, i32 0)
  br label %bb.hr

bb.hp:                                            ; preds = %bb.hm
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.baj, i64 2
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !32
  %i.bbt = zext i8 %i.bbs to i32
  %i.bbu = and i32 %.sroa.17.0.extract.shift.i.i128, 255
  %i.bbv = mul nuw nsw i32 %i.bbu, %i.bbt
  %i.bbw = lshr i32 %i.bbv, 8
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.baj, i64 1
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !33
  %i.bbz = zext i8 %i.bby to i32
  %i.bca = and i32 %.sroa.9.0.extract.shift.i.i127, 255
  %i.bcb = mul nuw nsw i32 %i.bca, %i.bbz
  %i.bcc = lshr i32 %i.bcb, 8
  %i.bcd = load i8, ptr %i.baj, align 1, !tbaa !34
  %i.bce = zext i8 %i.bcd to i32
  %i.bcf = and i32 %.sroa.051.0.insert.ext61.i, 255
  %i.bcg = mul nuw nsw i32 %i.bcf, %i.bce
  %i.bch = lshr i32 %i.bcg, 8
  br label %bb.hr

bb.hq:                                            ; preds = %bb.hm
  %i.bci = getelementptr inbounds nuw i8, ptr %i.baj, i64 2
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !32
  %i.bck = zext i8 %i.bcj to i32
  %i.bcl = and i32 %.sroa.17.0.extract.shift.i.i128, 255
  %i.bcm = sub nsw i32 %i.bck, %i.bcl
  %i.bcn = call i32 @llvm.abs.i32(i32 %i.bcm, i1 true)
  %i.bco = getelementptr inbounds nuw i8, ptr %i.baj, i64 1
  %i.bcp = load i8, ptr %i.bco, align 1, !tbaa !33
  %i.bcq = zext i8 %i.bcp to i32
  %i.bcr = and i32 %.sroa.9.0.extract.shift.i.i127, 255
  %i.bcs = sub nsw i32 %i.bcq, %i.bcr
  %i.bct = call i32 @llvm.abs.i32(i32 %i.bcs, i1 true)
  %i.bcu = load i8, ptr %i.baj, align 1, !tbaa !34
  %i.bcv = zext i8 %i.bcu to i32
  %i.bcw = and i32 %.sroa.051.0.insert.ext61.i, 255
  %i.bcx = sub nsw i32 %i.bcv, %i.bcw
  %i.bcy = call i32 @llvm.abs.i32(i32 %i.bcx, i1 true)
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.hn
  %.sroa.11.0.i.i129 = phi i32 [ %spec.select.i.i142, %bb.hn ], [ %spec.select60.i.i141, %bb.ho ], [ %i.bbw, %bb.hp ], [ %i.bcn, %bb.hq ]
  %.sroa.7.0.i.i130 = phi i32 [ %i.bav, %bb.hn ], [ %i.bbl, %bb.ho ], [ %i.bcc, %bb.hp ], [ %i.bct, %bb.hq ]
  %.sroa.01.0.i.i131 = phi i32 [ %i.bba, %bb.hn ], [ %i.bbq, %bb.ho ], [ %i.bch, %bb.hp ], [ %i.bcy, %bb.hq ]
  %.sroa.11.0.insert.ext.i.i132 = shl nuw nsw i32 %.sroa.11.0.i.i129, 16
  %.sroa.11.0.insert.shift.i.i133 = and i32 %.sroa.11.0.insert.ext.i.i132, 16711680
  %.sroa.7.0.insert.ext.i.i134 = shl nuw nsw i32 %.sroa.7.0.i.i130, 8
  %.sroa.7.0.insert.shift.i.i135 = and i32 %.sroa.7.0.insert.ext.i.i134, 65280
  %i.bcz = or i32 %.sroa.01.0.i.i131, %.sroa.11.0.insert.shift.i.i133
  %i.bda = or i32 %i.bcz, %.sroa.7.0.insert.shift.i.i135 ; 3 uses
  %.sroa.01.0.insert.insert.i.i136 = or i32 %i.bda, %.sroa.10.0.insert.shift82.i ; 6 uses
  %i.bdb = load i32, ptr %i.baj, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i279.i = trunc nuw i32 %i.bda to i24
  %.sroa.654.0.extract.shift.i280.i = lshr i32 %.sroa.01.0.insert.insert.i.i136, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i281.i = lshr i32 %i.bdb, 24 ; 4 uses
  %i.bdc = icmp ugt i32 %.sroa.01.0.insert.insert.i.i136, -50331649
  %i.bdd = icmp ult i32 %i.bdb, 50331648
  %or.cond.i282.i = select i1 %i.bdc, i1 true, i1 %i.bdd
  br i1 %or.cond.i282.i, label %lv_color_32_32_mix.exit306.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.sroa.018.0.extract.trunc.i283.i = trunc i32 %i.bdb to i24
  %i.bde = icmp ult i32 %.sroa.01.0.insert.insert.i.i136, 50331648
  br i1 %i.bde, label %lv_color_32_32_mix.exit306.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bdf = icmp eq i32 %.sroa.6.0.extract.shift.i281.i, 255
  br i1 %i.bdf, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.bdg = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i136, i32 %i.bdb) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i304.i = trunc i32 %i.bdg to i24
  %.sroa.5.0.extract.shift.i305.i = lshr i32 %i.bdg, 24
  br label %lv_color_32_32_mix.exit306.i

bb.hv:                                            ; preds = %bb.ht
  %i.bdh = load i8, ptr %i.ast, align 1, !tbaa !19
  %i.bdi = zext i8 %i.bdh to i32
  %.not.i284.i = icmp eq i32 %.sroa.6.0.extract.shift.i281.i, %i.bdi
  %i.bdj = load i8, ptr %i.asu, align 1
  %i.bdk = zext i8 %i.bdj to i32
  %.not77.i303.i = icmp eq i32 %.sroa.654.0.extract.shift.i280.i, %i.bdk
  %or.cond321.i = select i1 %.not.i284.i, i1 %.not77.i303.i, i1 false
  br i1 %or.cond321.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bdl = xor i32 %.sroa.654.0.extract.shift.i280.i, 255
  %i.bdm = xor i32 %.sroa.6.0.extract.shift.i281.i, 255
  %i.bdn = mul nuw nsw i32 %i.bdl, %i.bdm
  %i.bdo = lshr i32 %i.bdn, 8
  %i.bdp = trunc nuw i32 %i.bdo to i8
  %i.bdq = xor i8 %i.bdp, -1                      ; 2 uses
  store i8 %i.bdq, ptr %i.asl, align 4, !tbaa !13
  %i.bdr = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i280.i to i16
  %.lhs.trunc.i285.i = mul nuw i16 %i.bdr, 255
  %.rhs.trunc.i286.i = zext i8 %i.bdq to i16
  %i.bds = udiv i16 %.lhs.trunc.i285.i, %.rhs.trunc.i286.i
  %i.bdt = trunc i16 %i.bds to i8
  store i8 %i.bdt, ptr %i.asm, align 1, !tbaa !14
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.bdu = load i32, ptr %i.asj, align 4
  %i.bdv = call zeroext i1 @lv_color32_eq(i32 %i.bdb, i32 %i.bdu) #7
  br i1 %i.bdv, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.bdw = load i32, ptr %4, align 4
  %i.bdx = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i136, i32 %i.bdw) #7
  br i1 %i.bdx, label %._crit_edge.i298.i, label %bb.hz

._crit_edge.i298.i:                               ; preds = %bb.hy
  %.sroa.074.0.copyload.pre.i300.i = load i24, ptr %i.ask, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i302.i = load i8, ptr %i.asv, align 1, !tbaa !18
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  store i32 %.sroa.01.0.insert.insert.i.i136, ptr %4, align 4
  store i32 %i.bdb, ptr %i.asj, align 4
  %i.bdy = load i8, ptr %i.asm, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i287.i = zext i8 %i.bdy to i32
  %.sroa.654.0.insert.shift64.i288.i = shl nuw i32 %.sroa.654.0.insert.ext63.i287.i, 24
  %.sroa.045.0.insert.insert53.i290.i = add nuw nsw i32 %.sroa.654.0.insert.shift64.i288.i, %i.bda
  %i.bdz = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i290.i, i32 %i.bdb) #7 ; 2 uses
  store i32 %i.bdz, ptr %i.ask, align 4, !tbaa !18
  %i.bea = load i8, ptr %i.asl, align 4, !tbaa !13 ; 2 uses
  store i8 %i.bea, ptr %i.asv, align 1, !tbaa !20
  %i.beb = trunc i32 %i.bdz to i24
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %._crit_edge.i298.i
  %.sroa.5.0.copyload.i291.i = phi i8 [ %.sroa.5.0.copyload.pre.i302.i, %._crit_edge.i298.i ], [ %i.bea, %bb.hz ]
  %.sroa.074.0.copyload.i292.i = phi i24 [ %.sroa.074.0.copyload.pre.i300.i, %._crit_edge.i298.i ], [ %i.beb, %bb.hz ]
  %i.bec = zext i8 %.sroa.5.0.copyload.i291.i to i32
  br label %lv_color_32_32_mix.exit306.i

lv_color_32_32_mix.exit306.i:                     ; preds = %bb.ia, %bb.hu, %bb.hs, %bb.hr
  %.sroa.074.0.i293.i = phi i24 [ %.sroa.074.0.copyload.i292.i, %bb.ia ], [ %.sroa.045.0.extract.trunc.i279.i, %bb.hr ], [ %.sroa.074.0.extract.trunc.i304.i, %bb.hu ], [ %.sroa.018.0.extract.trunc.i283.i, %bb.hs ]
  %.sroa.5.0.i294.i = phi i32 [ %i.bec, %bb.ia ], [ %.sroa.654.0.extract.shift.i280.i, %bb.hr ], [ %.sroa.5.0.extract.shift.i305.i, %bb.hu ], [ %.sroa.6.0.extract.shift.i281.i, %bb.hs ]
  %.sroa.5.0.insert.shift.i295.i = shl nuw i32 %.sroa.5.0.i294.i, 24
  %.sroa.074.0.insert.ext.i296.i = zext i24 %.sroa.074.0.i293.i to i32
  %.sroa.074.0.insert.insert.i297.i = or disjoint i32 %.sroa.5.0.insert.shift.i295.i, %.sroa.074.0.insert.ext.i296.i
  store i32 %.sroa.074.0.insert.insert.i297.i, ptr %i.baj, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit.i137

blend_non_normal_pixel.exit.i137:                 ; preds = %lv_color_32_32_mix.exit306.i, %bb.hm
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next.i138, %wide.trip.count.i125
  br i1 %exitcond.not.i139, label %._crit_edge.i140, label %bb.hj, !llvm.loop !117

._crit_edge.i140:                                 ; preds = %blend_non_normal_pixel.exit.i137
  %i.bed = getelementptr inbounds i8, ptr %.2184337.i, i64 %i.asw
  %.3185.i = select i1 %i.azy, ptr null, ptr %i.bed
  %i.bee = getelementptr inbounds nuw i8, ptr %.4339.i, i64 %i.asx
  %i.bef = getelementptr inbounds nuw i8, ptr %.4190336.i, i64 %i.asy
  %i.beg = add nuw nsw i32 %.4176338.i, 1         ; 2 uses
  %exitcond368.not.i = icmp eq i32 %i.beg, %i.arv
  br i1 %exitcond368.not.i, label %argb8888_image_blend.exit, label %.preheader332.i, !llvm.loop !118

argb8888_image_blend.exit:                        ; preds = %._crit_edge.i140, %._crit_edge341.i, %._crit_edge347.i, %._crit_edge353.i, %._crit_edge358.i, %.preheader333.i, %.preheader332.lr.ph.i, %.preheader322.i, %.preheader.lr.ph.i148, %.preheader324.i, %.preheader323.lr.ph.i, %.preheader327.i, %.preheader326.lr.ph.i, %bb.gy, %.preheader329.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %l8_image_blend.exit

bb.ib:                                            ; preds = %bb.a
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bei = load i32, ptr %i.beh, align 8, !tbaa !22 ; 12 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !23 ; 10 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bem = load i8, ptr %i.bel, align 8, !tbaa !24 ; 8 uses
  %i.ben = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bep = load i32, ptr %i.beo, align 8, !tbaa !26 ; 5 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !27 ; 5 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !28 ; 5 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !29 ; 4 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bex = load i32, ptr %i.bew, align 8, !tbaa !30 ; 3 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !31
  %i.bfa = icmp eq i32 %i.bez, 0
  br i1 %i.bfa, label %bb.ic, label %bb.io

bb.ic:                                            ; preds = %bb.ib
  %i.bfb = icmp eq ptr %i.bev, null               ; 3 uses
  %i.bfc = icmp ugt i8 %i.bem, -4                 ; 2 uses
  %or.cond.i223 = select i1 %i.bfb, i1 %i.bfc, i1 false
  br i1 %or.cond.i223, label %.preheader172.i, label %bb.id

.preheader172.i:                                  ; preds = %bb.ic
  %i.bfd = icmp sgt i32 %i.bek, 0
  br i1 %i.bfd, label %.preheader.lr.ph.i228, label %l8_image_blend.exit

.preheader.lr.ph.i228:                            ; preds = %.preheader172.i
  %i.bfe = icmp sgt i32 %i.bei, 0
  %i.bff = zext i32 %i.bep to i64
  %i.bfg = zext i32 %i.bet to i64
  br i1 %i.bfe, label %.preheader.preheader.i229, label %l8_image_blend.exit

.preheader.preheader.i229:                        ; preds = %.preheader.lr.ph.i228
  %wide.trip.count255.i = zext nneg i32 %i.bei to i64 ; 2 uses
  %xtraiter727 = and i64 %wide.trip.count255.i, 1
  %i.bfh = icmp eq i32 %i.bei, 1
  %unroll_iter730 = and i64 %wide.trip.count255.i, 2147483646
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  %lcmp.mod729 = trunc i32 %i.bei to i1
  br label %.preheader.i230

.preheader.i230:                                  ; preds = %._crit_edge213.i, %.preheader.preheader.i229
  %.0216.i = phi i32 [ %i.bgf, %._crit_edge213.i ], [ 0, %.preheader.preheader.i229 ]
  %.0150215.i = phi ptr [ %i.bge, %._crit_edge213.i ], [ %i.ber, %.preheader.preheader.i229 ] ; 4 uses
  %.0155214.i = phi ptr [ %i.bgd, %._crit_edge213.i ], [ %i.ben, %.preheader.preheader.i229 ] ; 4 uses
  br i1 %i.bfh, label %.epil.preheader726, label %.preheader.i230.new

.preheader.i230.new:                              ; preds = %.preheader.i230, %.preheader.i230.new
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i.1, %.preheader.i230.new ], [ 0, %.preheader.i230 ] ; 4 uses
  %niter731 = phi i64 [ %niter731.next.1, %.preheader.i230.new ], [ 0, %.preheader.i230 ]
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %.0155214.i, i64 %indvars.iv250.i ; 4 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 3
  store i8 -1, ptr %i.bfj, align 1, !tbaa !35
  %i.bfk = getelementptr inbounds nuw i8, ptr %.0150215.i, i64 %indvars.iv250.i ; 2 uses
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !18 ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfi, i64 2
  store i8 %i.bfl, ptr %i.bfm, align 1, !tbaa !32
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfi, i64 1
  store i8 %i.bfl, ptr %i.bfn, align 1, !tbaa !33
  %i.bfo = load i8, ptr %i.bfk, align 1, !tbaa !18
  store i8 %i.bfo, ptr %i.bfi, align 1, !tbaa !34
  %indvars.iv.next251.i = or disjoint i64 %indvars.iv250.i, 1 ; 2 uses
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %.0155214.i, i64 %indvars.iv.next251.i ; 4 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 3
  store i8 -1, ptr %i.bfq, align 1, !tbaa !35
  %i.bfr = getelementptr inbounds nuw i8, ptr %.0150215.i, i64 %indvars.iv.next251.i ; 2 uses
  %i.bfs = load i8, ptr %i.bfr, align 1, !tbaa !18 ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfp, i64 2
  store i8 %i.bfs, ptr %i.bft, align 1, !tbaa !32
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfp, i64 1
  store i8 %i.bfs, ptr %i.bfu, align 1, !tbaa !33
  %i.bfv = load i8, ptr %i.bfr, align 1, !tbaa !18
  store i8 %i.bfv, ptr %i.bfp, align 1, !tbaa !34
  %indvars.iv.next251.i.1 = add nuw nsw i64 %indvars.iv250.i, 2 ; 2 uses
  %niter731.next.1 = add i64 %niter731, 2         ; 2 uses
  %niter731.ncmp.1 = icmp eq i64 %niter731.next.1, %unroll_iter730
  br i1 %niter731.ncmp.1, label %._crit_edge213.i.unr-lcssa, label %.preheader.i230.new, !llvm.loop !119

._crit_edge213.i.unr-lcssa:                       ; preds = %.preheader.i230.new
end_hunk_3
begin_hunk_4_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %i.bjv = zext i8 %i.bju to i32
  %i.bjw = icmp eq i8 %i.bju, 0
  br i1 %i.bjw, label %lv_color_8_32_mix.exit168.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjr, i64 3
  store i8 -1, ptr %i.bjx, align 1, !tbaa !35
  %i.bjy = icmp ugt i8 %i.bju, -4
  br i1 %i.bjy, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjr, i64 2
  store i8 %i.bjq, ptr %i.bjz, align 1, !tbaa !32
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjr, i64 1
  store i8 %i.bjq, ptr %i.bka, align 1, !tbaa !33
  br label %.sink.split.i166.i

bb.in:                                            ; preds = %bb.il
  %i.bkb = xor i8 %i.bju, -1
  %i.bkc = zext i8 %i.bjq to i32
  %i.bkd = mul nuw nsw i32 %i.bjv, %i.bkc         ; 3 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bjr, i64 2 ; 2 uses
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !32
  %i.bkg = zext i8 %i.bkf to i32
  %i.bkh = zext i8 %i.bkb to i32                  ; 3 uses
  %i.bki = mul nuw nsw i32 %i.bkg, %i.bkh
  %i.bkj = add nuw nsw i32 %i.bki, %i.bkd
  %i.bkk = lshr i32 %i.bkj, 8
  %i.bkl = trunc i32 %i.bkk to i8
  store i8 %i.bkl, ptr %i.bke, align 1, !tbaa !32
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bjr, i64 1 ; 2 uses
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !33
  %i.bko = zext i8 %i.bkn to i32
  %i.bkp = mul nuw nsw i32 %i.bko, %i.bkh
  %i.bkq = add nuw nsw i32 %i.bkp, %i.bkd
  %i.bkr = lshr i32 %i.bkq, 8
  %i.bks = trunc i32 %i.bkr to i8
  store i8 %i.bks, ptr %i.bkm, align 1, !tbaa !33
  %i.bkt = load i8, ptr %i.bjr, align 1, !tbaa !34
  %i.bku = zext i8 %i.bkt to i32
  %i.bkv = mul nuw nsw i32 %i.bku, %i.bkh
  %i.bkw = add nuw nsw i32 %i.bkv, %i.bkd
  %i.bkx = lshr i32 %i.bkw, 8
  %i.bky = trunc i32 %i.bkx to i8
  br label %.sink.split.i166.i

.sink.split.i166.i:                               ; preds = %bb.in, %bb.im
  %.sink.i167.i = phi i8 [ %i.bky, %bb.in ], [ %i.bjq, %bb.im ]
  store i8 %.sink.i167.i, ptr %i.bjr, align 1, !tbaa !34
  br label %lv_color_8_32_mix.exit168.i

lv_color_8_32_mix.exit168.i:                      ; preds = %.sink.split.i166.i, %bb.ik
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond232.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count231.i
  br i1 %exitcond232.not.i, label %._crit_edge192.i, label %bb.ik, !llvm.loop !125

._crit_edge192.i:                                 ; preds = %lv_color_8_32_mix.exit168.i
  %i.bkz = getelementptr inbounds nuw i8, ptr %.3158193.i, i64 %i.bjm
  %i.bla = getelementptr inbounds nuw i8, ptr %.3153194.i, i64 %i.bjn
  %i.blb = getelementptr inbounds i8, ptr %.1147195.i, i64 %i.bjo
  %i.blc = add nuw nsw i32 %.3196.i, 1            ; 2 uses
  %exitcond233.not.i = icmp eq i32 %i.blc, %i.bek
  br i1 %exitcond233.not.i, label %l8_image_blend.exit, label %.preheader179.i, !llvm.loop !126

bb.io:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @lv_memset(ptr noundef nonnull %3, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bld = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.bld, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.ble = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.ble, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.blf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i8 -1, ptr %i.blf, align 4, !tbaa !13
  %i.blg = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 3 uses
  store i8 -1, ptr %i.blg, align 1, !tbaa !14
  %i.blh = icmp sgt i32 %i.bek, 0
  br i1 %i.blh, label %.preheader182.lr.ph.i, label %._crit_edge189.split.i

.preheader182.lr.ph.i:                            ; preds = %bb.io
  %i.bli = icmp sgt i32 %i.bei, 0
  %i.blj = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.blk = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bll = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 2 uses
  %i.blm = sext i32 %i.bex to i64
  %i.bln = zext i32 %i.bep to i64
  %i.blo = zext i32 %i.bet to i64
  br i1 %i.bli, label %.preheader182.preheader.i, label %._crit_edge189.split.i

.preheader182.preheader.i:                        ; preds = %.preheader182.lr.ph.i
  %wide.trip.count.i175 = zext nneg i32 %i.bei to i64
  br label %.preheader182.i

.preheader182.i:                                  ; preds = %._crit_edge.i215, %.preheader182.preheader.i
  %.4188.i = phi i32 [ %i.bpe, %._crit_edge.i215 ], [ 0, %.preheader182.preheader.i ]
  %.2148187.i = phi ptr [ %.3149.i, %._crit_edge.i215 ], [ %i.bev, %.preheader182.preheader.i ] ; 3 uses
  %.4154186.i = phi ptr [ %i.bpd, %._crit_edge.i215 ], [ %i.ber, %.preheader182.preheader.i ] ; 2 uses
  %.4159185.i = phi ptr [ %i.bpc, %._crit_edge.i215 ], [ %i.ben, %.preheader182.preheader.i ] ; 2 uses
  %i.blp = icmp eq ptr %.2148187.i, null          ; 2 uses
  br label %bb.ip

bb.ip:                                            ; preds = %blend_non_normal_pixel.exit.i212, %.preheader182.i
  %indvars.iv.i176 = phi i64 [ 0, %.preheader182.i ], [ %indvars.iv.next.i213, %blend_non_normal_pixel.exit.i212 ] ; 4 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %.4154186.i, i64 %indvars.iv.i176
  %i.blr = load i8, ptr %i.blq, align 1, !tbaa !18
  br i1 %i.blp, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bls = getelementptr inbounds nuw i8, ptr %.2148187.i, i64 %indvars.iv.i176
  %i.blt = load i8, ptr %i.bls, align 1, !tbaa !18
  %i.blu = call i8 @llvm.umulh.i8(i8 %i.blt, i8 %i.bem)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.sroa.6.0.i177 = phi i8 [ %i.blu, %bb.iq ], [ %i.bem, %bb.ip ]
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %.4159185.i, i64 %indvars.iv.i176 ; 14 uses
  %i.blw = load i32, ptr %i.bey, align 4, !tbaa !31
  %.sroa.6.0.insert.ext.i178 = zext i8 %.sroa.6.0.i177 to i32
  %.sroa.6.0.insert.shift.i179 = shl nuw i32 %.sroa.6.0.insert.ext.i178, 24
  %.sroa.5.0.insert.ext.i180 = zext i8 %i.blr to i32 ; 12 uses
  switch i32 %i.blw, label %blend_non_normal_pixel.exit.i212 [
    i32 1, label %bb.is
    i32 2, label %bb.it
    i32 3, label %bb.iu
    i32 4, label %bb.iv
  ]

bb.is:                                            ; preds = %bb.ir
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blv, i64 2
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !32
  %i.blz = zext i8 %i.bly to i32
  %i.bma = add nuw nsw i32 %i.blz, %.sroa.5.0.insert.ext.i180
  %spec.select.i.i222 = call i32 @llvm.umin.i32(i32 %i.bma, i32 255)
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blv, i64 1
  %i.bmc = load i8, ptr %i.bmb, align 1, !tbaa !33
  %i.bmd = zext i8 %i.bmc to i32
  %i.bme = add nuw nsw i32 %i.bmd, %.sroa.5.0.insert.ext.i180
  %i.bmf = call i32 @llvm.umin.i32(i32 %i.bme, i32 255)
  %i.bmg = load i8, ptr %i.blv, align 1, !tbaa !34
  %i.bmh = zext i8 %i.bmg to i32
  %i.bmi = add nuw nsw i32 %i.bmh, %.sroa.5.0.insert.ext.i180
  %i.bmj = call i32 @llvm.umin.i32(i32 %i.bmi, i32 255)
  br label %bb.iw

bb.it:                                            ; preds = %bb.ir
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.blv, i64 2
  %i.bml = load i8, ptr %i.bmk, align 1, !tbaa !32
  %i.bmm = zext i8 %i.bml to i32
  %i.bmn = sub nsw i32 %i.bmm, %.sroa.5.0.insert.ext.i180
  %spec.select60.i.i221 = call i32 @llvm.smax.i32(i32 %i.bmn, i32 0)
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.blv, i64 1
  %i.bmp = load i8, ptr %i.bmo, align 1, !tbaa !33
  %i.bmq = zext i8 %i.bmp to i32
  %i.bmr = sub nsw i32 %i.bmq, %.sroa.5.0.insert.ext.i180
  %i.bms = call i32 @llvm.smax.i32(i32 %i.bmr, i32 0)
  %i.bmt = load i8, ptr %i.blv, align 1, !tbaa !34
  %i.bmu = zext i8 %i.bmt to i32
  %i.bmv = sub nsw i32 %i.bmu, %.sroa.5.0.insert.ext.i180
  %i.bmw = call i32 @llvm.smax.i32(i32 %i.bmv, i32 0)
  br label %bb.iw

bb.iu:                                            ; preds = %bb.ir
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.blv, i64 2
  %i.bmy = load i8, ptr %i.bmx, align 1, !tbaa !32
  %i.bmz = zext i8 %i.bmy to i32
  %i.bna = mul nuw nsw i32 %i.bmz, %.sroa.5.0.insert.ext.i180
  %i.bnb = lshr i32 %i.bna, 8
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.blv, i64 1
  %i.bnd = load i8, ptr %i.bnc, align 1, !tbaa !33
  %i.bne = zext i8 %i.bnd to i32
  %i.bnf = mul nuw nsw i32 %i.bne, %.sroa.5.0.insert.ext.i180
  %i.bng = lshr i32 %i.bnf, 8
  %i.bnh = load i8, ptr %i.blv, align 1, !tbaa !34
  %i.bni = zext i8 %i.bnh to i32
  %i.bnj = mul nuw nsw i32 %i.bni, %.sroa.5.0.insert.ext.i180
  %i.bnk = lshr i32 %i.bnj, 8
  br label %bb.iw

bb.iv:                                            ; preds = %bb.ir
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.blv, i64 2
  %i.bnm = load i8, ptr %i.bnl, align 1, !tbaa !32
  %i.bnn = zext i8 %i.bnm to i32
  %i.bno = sub nsw i32 %i.bnn, %.sroa.5.0.insert.ext.i180
  %i.bnp = call i32 @llvm.abs.i32(i32 %i.bno, i1 true)
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.blv, i64 1
  %i.bnr = load i8, ptr %i.bnq, align 1, !tbaa !33
  %i.bns = zext i8 %i.bnr to i32
  %i.bnt = sub nsw i32 %i.bns, %.sroa.5.0.insert.ext.i180
  %i.bnu = call i32 @llvm.abs.i32(i32 %i.bnt, i1 true)
  %i.bnv = load i8, ptr %i.blv, align 1, !tbaa !34
  %i.bnw = zext i8 %i.bnv to i32
  %i.bnx = sub nsw i32 %i.bnw, %.sroa.5.0.insert.ext.i180
  %i.bny = call i32 @llvm.abs.i32(i32 %i.bnx, i1 true)
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu, %bb.it, %bb.is
  %.sroa.11.0.i.i181 = phi i32 [ %spec.select.i.i222, %bb.is ], [ %spec.select60.i.i221, %bb.it ], [ %i.bnb, %bb.iu ], [ %i.bnp, %bb.iv ]
  %.sroa.7.0.i.i182 = phi i32 [ %i.bmf, %bb.is ], [ %i.bms, %bb.it ], [ %i.bng, %bb.iu ], [ %i.bnu, %bb.iv ]
  %.sroa.01.0.i.i183 = phi i32 [ %i.bmj, %bb.is ], [ %i.bmw, %bb.it ], [ %i.bnk, %bb.iu ], [ %i.bny, %bb.iv ]
  %.sroa.11.0.insert.ext.i.i184 = shl nuw nsw i32 %.sroa.11.0.i.i181, 16
  %.sroa.11.0.insert.shift.i.i185 = and i32 %.sroa.11.0.insert.ext.i.i184, 16711680
  %.sroa.7.0.insert.ext.i.i187 = shl nuw nsw i32 %.sroa.7.0.i.i182, 8
  %.sroa.7.0.insert.shift.i.i188 = and i32 %.sroa.7.0.insert.ext.i.i187, 65280
  %.sroa.7.0.insert.insert.i.i189 = or disjoint i32 %.sroa.11.0.insert.shift.i.i185, %.sroa.6.0.insert.shift.i179
  %.sroa.7.0.insert.insert.i.i189.a = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i189, %.sroa.01.0.i.i183
  %.sroa.01.0.insert.insert.i.i190 = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i189.a, %.sroa.7.0.insert.shift.i.i188 ; 8 uses
  %i.bnz = load i32, ptr %i.blv, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i.i191 = trunc i32 %.sroa.01.0.insert.insert.i.i190 to i24
  %.sroa.654.0.extract.shift.i.i192 = lshr i32 %.sroa.01.0.insert.insert.i.i190, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i.i193 = lshr i32 %i.bnz, 24 ; 4 uses
  %i.boa = icmp ugt i32 %.sroa.01.0.insert.insert.i.i190, -50331649
  %i.bob = icmp ult i32 %i.bnz, 50331648
  %or.cond.i.i194 = select i1 %i.boa, i1 true, i1 %i.bob
  br i1 %or.cond.i.i194, label %lv_color_32_32_mix.exit.i206, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.sroa.018.0.extract.trunc.i.i195 = trunc i32 %i.bnz to i24
  %i.boc = icmp ult i32 %.sroa.01.0.insert.insert.i.i190, 50331648
  br i1 %i.boc, label %lv_color_32_32_mix.exit.i206, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.bod = icmp eq i32 %.sroa.6.0.extract.shift.i.i193, 255
  br i1 %i.bod, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.boe = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i190, i32 %i.bnz) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.i219 = trunc i32 %i.boe to i24
  %.sroa.5.0.extract.shift.i.i220 = lshr i32 %i.boe, 24
  br label %lv_color_32_32_mix.exit.i206

bb.ja:                                            ; preds = %bb.iy
  %i.bof = load i8, ptr %i.blj, align 1, !tbaa !19
  %i.bog = zext i8 %i.bof to i32
  %.not.i.i196 = icmp eq i32 %.sroa.6.0.extract.shift.i.i193, %i.bog
  %i.boh = load i8, ptr %i.blk, align 1
  %i.boi = zext i8 %i.boh to i32
  %.not77.i.i197 = icmp eq i32 %.sroa.654.0.extract.shift.i.i192, %i.boi
  %or.cond171.i = select i1 %.not.i.i196, i1 %.not77.i.i197, i1 false
  br i1 %or.cond171.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.boj = xor i32 %.sroa.654.0.extract.shift.i.i192, 255
  %i.bok = xor i32 %.sroa.6.0.extract.shift.i.i193, 255
  %i.bol = mul nuw nsw i32 %i.boj, %i.bok
  %i.bom = lshr i32 %i.bol, 8
  %i.bon = trunc nuw i32 %i.bom to i8
  %i.boo = xor i8 %i.bon, -1                      ; 2 uses
  store i8 %i.boo, ptr %i.blf, align 4, !tbaa !13
  %i.bop = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i.i192 to i16
  %.lhs.trunc.i.i198 = mul nuw i16 %i.bop, 255
  %.rhs.trunc.i.i199 = zext i8 %i.boo to i16
  %i.boq = udiv i16 %.lhs.trunc.i.i198, %.rhs.trunc.i.i199
  %i.bor = trunc i16 %i.boq to i8
  store i8 %i.bor, ptr %i.blg, align 1, !tbaa !14
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %i.bos = load i32, ptr %i.bld, align 4
  %i.bot = call zeroext i1 @lv_color32_eq(i32 %i.bnz, i32 %i.bos) #7
  br i1 %i.bot, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.bou = load i32, ptr %3, align 4
  %i.bov = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i190, i32 %i.bou) #7
  br i1 %i.bov, label %._crit_edge.i.i216, label %bb.je

._crit_edge.i.i216:                               ; preds = %bb.jd
  %.sroa.074.0.copyload.pre.i.i217 = load i24, ptr %i.ble, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i.i218 = load i8, ptr %i.bll, align 1, !tbaa !18
  br label %bb.jf

bb.je:                                            ; preds = %bb.jd, %bb.jc
  store i32 %.sroa.01.0.insert.insert.i.i190, ptr %3, align 4
  store i32 %i.bnz, ptr %i.bld, align 4
  %i.bow = load i8, ptr %i.blg, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.i200 = zext i8 %i.bow to i32
  %.sroa.654.0.insert.shift64.i.i201 = shl nuw i32 %.sroa.654.0.insert.ext63.i.i200, 24
  %.sroa.045.0.insert.ext51.i.i202 = and i32 %.sroa.01.0.insert.insert.i.i190, 16777215
  %.sroa.045.0.insert.insert53.i.i203 = or disjoint i32 %.sroa.654.0.insert.shift64.i.i201, %.sroa.045.0.insert.ext51.i.i202
  %i.box = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.i203, i32 %i.bnz) #7 ; 2 uses
  store i32 %i.box, ptr %i.ble, align 4, !tbaa !18
  %i.boy = load i8, ptr %i.blf, align 4, !tbaa !13 ; 2 uses
  store i8 %i.boy, ptr %i.bll, align 1, !tbaa !20
  %i.boz = trunc i32 %i.box to i24
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %._crit_edge.i.i216
  %.sroa.5.0.copyload.i.i204 = phi i8 [ %.sroa.5.0.copyload.pre.i.i218, %._crit_edge.i.i216 ], [ %i.boy, %bb.je ]
  %.sroa.074.0.copyload.i.i205 = phi i24 [ %.sroa.074.0.copyload.pre.i.i217, %._crit_edge.i.i216 ], [ %i.boz, %bb.je ]
  %i.bpa = zext i8 %.sroa.5.0.copyload.i.i204 to i32
  br label %lv_color_32_32_mix.exit.i206

lv_color_32_32_mix.exit.i206:                     ; preds = %bb.jf, %bb.iz, %bb.ix, %bb.iw
  %.sroa.074.0.i.i207 = phi i24 [ %.sroa.074.0.copyload.i.i205, %bb.jf ], [ %.sroa.045.0.extract.trunc.i.i191, %bb.iw ], [ %.sroa.074.0.extract.trunc.i.i219, %bb.iz ], [ %.sroa.018.0.extract.trunc.i.i195, %bb.ix ]
  %.sroa.5.0.i.i208 = phi i32 [ %i.bpa, %bb.jf ], [ %.sroa.654.0.extract.shift.i.i192, %bb.iw ], [ %.sroa.5.0.extract.shift.i.i220, %bb.iz ], [ %.sroa.6.0.extract.shift.i.i193, %bb.ix ]
  %.sroa.5.0.insert.shift.i.i209 = shl nuw i32 %.sroa.5.0.i.i208, 24
  %.sroa.074.0.insert.ext.i.i210 = zext i24 %.sroa.074.0.i.i207 to i32
  %.sroa.074.0.insert.insert.i.i211 = or disjoint i32 %.sroa.5.0.insert.shift.i.i209, %.sroa.074.0.insert.ext.i.i210
  store i32 %.sroa.074.0.insert.insert.i.i211, ptr %i.blv, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit.i212

blend_non_normal_pixel.exit.i212:                 ; preds = %lv_color_32_32_mix.exit.i206, %bb.ir
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i176, 1 ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next.i213, %wide.trip.count.i175
  br i1 %exitcond.not.i214, label %._crit_edge.i215, label %bb.ip, !llvm.loop !127

._crit_edge.i215:                                 ; preds = %blend_non_normal_pixel.exit.i212
  %i.bpb = getelementptr inbounds i8, ptr %.2148187.i, i64 %i.blm
  %.3149.i = select i1 %i.blp, ptr null, ptr %i.bpb
  %i.bpc = getelementptr inbounds nuw i8, ptr %.4159185.i, i64 %i.bln
  %i.bpd = getelementptr inbounds nuw i8, ptr %.4154186.i, i64 %i.blo
  %i.bpe = add nuw nsw i32 %.4188.i, 1            ; 2 uses
  %exitcond225.not.i = icmp eq i32 %i.bpe, %i.bek
  br i1 %exitcond225.not.i, label %._crit_edge189.split.i, label %.preheader182.i, !llvm.loop !128

._crit_edge189.split.i:                           ; preds = %._crit_edge.i215, %.preheader182.lr.ph.i, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %l8_image_blend.exit

bb.jg:                                            ; preds = %bb.a
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bpg = load i32, ptr %i.bpf, align 8, !tbaa !22 ; 10 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !23 ; 10 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bpk = load i8, ptr %i.bpj, align 8, !tbaa !24 ; 5 uses
  %i.bpl = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bpn = load i32, ptr %i.bpm, align 8, !tbaa !26 ; 5 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bpp = load ptr, ptr %i.bpo, align 8, !tbaa !27 ; 5 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bpr = load i32, ptr %i.bpq, align 8, !tbaa !28 ; 5 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !29 ; 4 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bpv = load i32, ptr %i.bpu, align 8, !tbaa !30 ; 3 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bpx = load i32, ptr %i.bpw, align 4, !tbaa !31
  %i.bpy = icmp eq i32 %i.bpx, 0
  br i1 %i.bpy, label %bb.jh, label %bb.kb

bb.jh:                                            ; preds = %bb.jg
  %i.bpz = icmp eq ptr %i.bpt, null               ; 3 uses
  %i.bqa = zext i8 %i.bpk to i32                  ; 2 uses
  %i.bqb = icmp ugt i8 %i.bpk, -4                 ; 2 uses
  %or.cond.i278 = select i1 %i.bpz, i1 %i.bqb, i1 false
  br i1 %or.cond.i278, label %.preheader178.i, label %bb.jm

.preheader178.i:                                  ; preds = %bb.jh
  %i.bqc = icmp sgt i32 %i.bpi, 0
  br i1 %i.bqc, label %.preheader.lr.ph.i292, label %l8_image_blend.exit

.preheader.lr.ph.i292:                            ; preds = %.preheader178.i
  %i.bqd = icmp sgt i32 %i.bpg, 0
  %i.bqe = zext i32 %i.bpn to i64
  %i.bqf = zext i32 %i.bpr to i64
  br i1 %i.bqd, label %.preheader.preheader.i293, label %l8_image_blend.exit

.preheader.preheader.i293:                        ; preds = %.preheader.lr.ph.i292
  %wide.trip.count259.i = zext nneg i32 %i.bpg to i64
  br label %.preheader.i294

.preheader.i294:                                  ; preds = %._crit_edge218.i, %.preheader.preheader.i293
  %.0221.i = phi i32 [ %i.brr, %._crit_edge218.i ], [ 0, %.preheader.preheader.i293 ]
  %.0152220.i = phi ptr [ %i.brq, %._crit_edge218.i ], [ %i.bpp, %.preheader.preheader.i293 ] ; 2 uses
  %.0157219.i = phi ptr [ %i.brp, %._crit_edge218.i ], [ %i.bpl, %.preheader.preheader.i293 ] ; 2 uses
  br label %bb.ji

bb.ji:                                            ; preds = %lv_color_8_32_mix.exit.i, %.preheader.i294
  %indvars.iv254.i = phi i64 [ 0, %.preheader.i294 ], [ %indvars.iv.next255.i, %lv_color_8_32_mix.exit.i ] ; 3 uses
  %i.bqg = getelementptr inbounds nuw [2 x i8], ptr %.0152220.i, i64 %indvars.iv254.i ; 2 uses
  %i.bqh = load i8, ptr %i.bqg, align 1, !tbaa !161 ; 4 uses
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %.0157219.i, i64 %indvars.iv254.i ; 7 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqg, i64 1
  %i.bqk = load i8, ptr %i.bqj, align 1, !tbaa !162 ; 4 uses
  %i.bql = zext i8 %i.bqk to i32
  %i.bqm = icmp eq i8 %i.bqk, 0
  br i1 %i.bqm, label %lv_color_8_32_mix.exit.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqi, i64 3
  store i8 -1, ptr %i.bqn, align 1, !tbaa !35
  %i.bqo = icmp ugt i8 %i.bqk, -4
  br i1 %i.bqo, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqi, i64 2
  store i8 %i.bqh, ptr %i.bqp, align 1, !tbaa !32
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqi, i64 1
  store i8 %i.bqh, ptr %i.bqq, align 1, !tbaa !33
  br label %.sink.split.i.i295

bb.jl:                                            ; preds = %bb.jj
  %i.bqr = xor i8 %i.bqk, -1
  %i.bqs = zext i8 %i.bqh to i32
  %i.bqt = mul nuw nsw i32 %i.bql, %i.bqs         ; 3 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqi, i64 2 ; 2 uses
  %i.bqv = load i8, ptr %i.bqu, align 1, !tbaa !32
  %i.bqw = zext i8 %i.bqv to i32
  %i.bqx = zext i8 %i.bqr to i32                  ; 3 uses
  %i.bqy = mul nuw nsw i32 %i.bqw, %i.bqx
  %i.bqz = add nuw nsw i32 %i.bqy, %i.bqt
  %i.bra = lshr i32 %i.bqz, 8
  %i.brb = trunc i32 %i.bra to i8
  store i8 %i.brb, ptr %i.bqu, align 1, !tbaa !32
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqi, i64 1 ; 2 uses
  %i.brd = load i8, ptr %i.brc, align 1, !tbaa !33
  %i.bre = zext i8 %i.brd to i32
  %i.brf = mul nuw nsw i32 %i.bre, %i.bqx
  %i.brg = add nuw nsw i32 %i.brf, %i.bqt
  %i.brh = lshr i32 %i.brg, 8
  %i.bri = trunc i32 %i.brh to i8
  store i8 %i.bri, ptr %i.brc, align 1, !tbaa !33
  %i.brj = load i8, ptr %i.bqi, align 1, !tbaa !34
  %i.brk = zext i8 %i.brj to i32
  %i.brl = mul nuw nsw i32 %i.brk, %i.bqx
  %i.brm = add nuw nsw i32 %i.brl, %i.bqt
end_hunk_4
begin_hunk_5_@lv_draw_sw_blend_image_to_argb8888:bb.a
bb.jz:                                            ; preds = %bb.jy
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvm, i64 2
  store i8 %i.bvl, ptr %i.bvz, align 1, !tbaa !32
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvm, i64 1
  store i8 %i.bvl, ptr %i.bwa, align 1, !tbaa !33
  br label %.sink.split.i172.i

bb.ka:                                            ; preds = %bb.jy
  %i.bwb = xor i32 %i.bvv, 255                    ; 3 uses
  %i.bwc = zext i8 %i.bvl to i32
  %i.bwd = mul nuw nsw i32 %i.bvv, %i.bwc         ; 3 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvm, i64 2 ; 2 uses
  %i.bwf = load i8, ptr %i.bwe, align 1, !tbaa !32
  %i.bwg = zext i8 %i.bwf to i32
  %i.bwh = mul nuw nsw i32 %i.bwb, %i.bwg
  %i.bwi = add nuw nsw i32 %i.bwh, %i.bwd
  %i.bwj = lshr i32 %i.bwi, 8
  %i.bwk = trunc nuw i32 %i.bwj to i8
  store i8 %i.bwk, ptr %i.bwe, align 1, !tbaa !32
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bvm, i64 1 ; 2 uses
  %i.bwm = load i8, ptr %i.bwl, align 1, !tbaa !33
  %i.bwn = zext i8 %i.bwm to i32
  %i.bwo = mul nuw nsw i32 %i.bwb, %i.bwn
  %i.bwp = add nuw nsw i32 %i.bwo, %i.bwd
  %i.bwq = lshr i32 %i.bwp, 8
  %i.bwr = trunc nuw i32 %i.bwq to i8
  store i8 %i.bwr, ptr %i.bwl, align 1, !tbaa !33
  %i.bws = load i8, ptr %i.bvm, align 1, !tbaa !34
  %i.bwt = zext i8 %i.bws to i32
  %i.bwu = mul nuw nsw i32 %i.bwb, %i.bwt
  %i.bwv = add nuw nsw i32 %i.bwu, %i.bwd
  %i.bww = lshr i32 %i.bwv, 8
  %i.bwx = trunc nuw i32 %i.bww to i8
  br label %.sink.split.i172.i

.sink.split.i172.i:                               ; preds = %bb.ka, %bb.jz
  %.sink.i173.i = phi i8 [ %i.bwx, %bb.ka ], [ %i.bvl, %bb.jz ]
  store i8 %.sink.i173.i, ptr %i.bvm, align 1, !tbaa !34
  br label %lv_color_8_32_mix.exit174.i

lv_color_8_32_mix.exit174.i:                      ; preds = %.sink.split.i172.i, %bb.jx
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next231.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %._crit_edge198.i, label %bb.jx, !llvm.loop !135

._crit_edge198.i:                                 ; preds = %lv_color_8_32_mix.exit174.i
  %i.bwy = getelementptr inbounds nuw i8, ptr %.3160199.i, i64 %i.bvh
  %i.bwz = getelementptr inbounds nuw i8, ptr %.3155200.i, i64 %i.bvi
  %i.bxa = getelementptr inbounds i8, ptr %.1149201.i, i64 %i.bvj
  %i.bxb = add nuw nsw i32 %.3202.i, 1            ; 2 uses
  %exitcond237.not.i = icmp eq i32 %i.bxb, %i.bpi
  br i1 %exitcond237.not.i, label %l8_image_blend.exit, label %.preheader185.i, !llvm.loop !136

bb.kb:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bxc = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.bxc, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bxd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.bxd, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bxe = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i8 -1, ptr %i.bxe, align 4, !tbaa !13
  %i.bxf = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 3 uses
  store i8 -1, ptr %i.bxf, align 1, !tbaa !14
  %i.bxg = icmp sgt i32 %i.bpi, 0
  br i1 %i.bxg, label %.preheader188.lr.ph.i, label %._crit_edge195.split.i

.preheader188.lr.ph.i:                            ; preds = %bb.kb
  %i.bxh = icmp sgt i32 %i.bpg, 0
  %i.bxi = zext i8 %i.bpk to i32
  %i.bxj = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bxk = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bxl = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.bxm = sext i32 %i.bpv to i64
  %i.bxn = zext i32 %i.bpn to i64
  %i.bxo = zext i32 %i.bpr to i64
  br i1 %i.bxh, label %.preheader188.preheader.i, label %._crit_edge195.split.i

.preheader188.preheader.i:                        ; preds = %.preheader188.lr.ph.i
  %wide.trip.count.i231 = zext nneg i32 %i.bpg to i64
  br label %.preheader188.i

.preheader188.i:                                  ; preds = %._crit_edge.i270, %.preheader188.preheader.i
  %.4194.i = phi i32 [ %i.cbm, %._crit_edge.i270 ], [ 0, %.preheader188.preheader.i ]
  %.2150193.i = phi ptr [ %.3151.i, %._crit_edge.i270 ], [ %i.bpt, %.preheader188.preheader.i ] ; 3 uses
  %.4156192.i = phi ptr [ %i.cbl, %._crit_edge.i270 ], [ %i.bpp, %.preheader188.preheader.i ] ; 2 uses
  %.4161191.i = phi ptr [ %i.cbk, %._crit_edge.i270 ], [ %i.bpl, %.preheader188.preheader.i ] ; 2 uses
  %i.bxp = icmp eq ptr %.2150193.i, null          ; 2 uses
  br label %bb.kc

bb.kc:                                            ; preds = %blend_non_normal_pixel.exit.i267, %.preheader188.i
  %indvars.iv.i232 = phi i64 [ 0, %.preheader188.i ], [ %indvars.iv.next.i268, %blend_non_normal_pixel.exit.i267 ] ; 4 uses
  %i.bxq = getelementptr inbounds nuw [2 x i8], ptr %.4156192.i, i64 %indvars.iv.i232 ; 2 uses
  %i.bxr = load i8, ptr %i.bxq, align 1, !tbaa !161
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxq, i64 1
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !162 ; 2 uses
  br i1 %i.bxp, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.bxu = call i8 @llvm.umulh.i8(i8 %i.bxt, i8 %i.bpk)
  %i.bxv = zext i8 %i.bxu to i32
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kc
  %i.bxw = zext i8 %i.bxt to i32
  %i.bxx = getelementptr inbounds nuw i8, ptr %.2150193.i, i64 %indvars.iv.i232
  %i.bxy = load i8, ptr %i.bxx, align 1, !tbaa !18
  %i.bxz = zext i8 %i.bxy to i32
  %i.bya = mul nuw nsw i32 %i.bxw, %i.bxi
  %i.byb = mul nuw nsw i32 %i.bya, %i.bxz
  %i.byc = lshr i32 %i.byb, 16
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.sroa.6.0.i233 = phi i32 [ %i.bxv, %bb.kd ], [ %i.byc, %bb.ke ]
  %i.byd = getelementptr inbounds nuw [4 x i8], ptr %.4161191.i, i64 %indvars.iv.i232 ; 14 uses
  %i.bye = load i32, ptr %i.bpw, align 4, !tbaa !31
  %.sroa.6.0.insert.shift.i234 = shl nuw i32 %.sroa.6.0.i233, 24
  %.sroa.5.0.insert.ext.i235 = zext i8 %i.bxr to i32 ; 12 uses
  switch i32 %i.bye, label %blend_non_normal_pixel.exit.i267 [
    i32 1, label %bb.kg
    i32 2, label %bb.kh
    i32 3, label %bb.ki
    i32 4, label %bb.kj
  ]

bb.kg:                                            ; preds = %bb.kf
  %i.byf = getelementptr inbounds nuw i8, ptr %i.byd, i64 2
  %i.byg = load i8, ptr %i.byf, align 1, !tbaa !32
  %i.byh = zext i8 %i.byg to i32
  %i.byi = add nuw nsw i32 %i.byh, %.sroa.5.0.insert.ext.i235
  %spec.select.i.i277 = call i32 @llvm.umin.i32(i32 %i.byi, i32 255)
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byd, i64 1
  %i.byk = load i8, ptr %i.byj, align 1, !tbaa !33
  %i.byl = zext i8 %i.byk to i32
  %i.bym = add nuw nsw i32 %i.byl, %.sroa.5.0.insert.ext.i235
  %i.byn = call i32 @llvm.umin.i32(i32 %i.bym, i32 255)
  %i.byo = load i8, ptr %i.byd, align 1, !tbaa !34
  %i.byp = zext i8 %i.byo to i32
  %i.byq = add nuw nsw i32 %i.byp, %.sroa.5.0.insert.ext.i235
  %i.byr = call i32 @llvm.umin.i32(i32 %i.byq, i32 255)
  br label %bb.kk

bb.kh:                                            ; preds = %bb.kf
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byd, i64 2
  %i.byt = load i8, ptr %i.bys, align 1, !tbaa !32
  %i.byu = zext i8 %i.byt to i32
  %i.byv = sub nsw i32 %i.byu, %.sroa.5.0.insert.ext.i235
  %spec.select60.i.i276 = call i32 @llvm.smax.i32(i32 %i.byv, i32 0)
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byd, i64 1
  %i.byx = load i8, ptr %i.byw, align 1, !tbaa !33
  %i.byy = zext i8 %i.byx to i32
  %i.byz = sub nsw i32 %i.byy, %.sroa.5.0.insert.ext.i235
  %i.bza = call i32 @llvm.smax.i32(i32 %i.byz, i32 0)
  %i.bzb = load i8, ptr %i.byd, align 1, !tbaa !34
  %i.bzc = zext i8 %i.bzb to i32
  %i.bzd = sub nsw i32 %i.bzc, %.sroa.5.0.insert.ext.i235
  %i.bze = call i32 @llvm.smax.i32(i32 %i.bzd, i32 0)
  br label %bb.kk

bb.ki:                                            ; preds = %bb.kf
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.byd, i64 2
  %i.bzg = load i8, ptr %i.bzf, align 1, !tbaa !32
  %i.bzh = zext i8 %i.bzg to i32
  %i.bzi = mul nuw nsw i32 %i.bzh, %.sroa.5.0.insert.ext.i235
  %i.bzj = lshr i32 %i.bzi, 8
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.byd, i64 1
  %i.bzl = load i8, ptr %i.bzk, align 1, !tbaa !33
  %i.bzm = zext i8 %i.bzl to i32
  %i.bzn = mul nuw nsw i32 %i.bzm, %.sroa.5.0.insert.ext.i235
  %i.bzo = lshr i32 %i.bzn, 8
  %i.bzp = load i8, ptr %i.byd, align 1, !tbaa !34
  %i.bzq = zext i8 %i.bzp to i32
  %i.bzr = mul nuw nsw i32 %i.bzq, %.sroa.5.0.insert.ext.i235
  %i.bzs = lshr i32 %i.bzr, 8
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kf
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.byd, i64 2
  %i.bzu = load i8, ptr %i.bzt, align 1, !tbaa !32
  %i.bzv = zext i8 %i.bzu to i32
  %i.bzw = sub nsw i32 %i.bzv, %.sroa.5.0.insert.ext.i235
  %i.bzx = call i32 @llvm.abs.i32(i32 %i.bzw, i1 true)
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.byd, i64 1
  %i.bzz = load i8, ptr %i.bzy, align 1, !tbaa !33
  %i.caa = zext i8 %i.bzz to i32
  %i.cab = sub nsw i32 %i.caa, %.sroa.5.0.insert.ext.i235
  %i.cac = call i32 @llvm.abs.i32(i32 %i.cab, i1 true)
  %i.cad = load i8, ptr %i.byd, align 1, !tbaa !34
  %i.cae = zext i8 %i.cad to i32
  %i.caf = sub nsw i32 %i.cae, %.sroa.5.0.insert.ext.i235
  %i.cag = call i32 @llvm.abs.i32(i32 %i.caf, i1 true)
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki, %bb.kh, %bb.kg
  %.sroa.11.0.i.i236 = phi i32 [ %spec.select.i.i277, %bb.kg ], [ %spec.select60.i.i276, %bb.kh ], [ %i.bzj, %bb.ki ], [ %i.bzx, %bb.kj ]
  %.sroa.7.0.i.i237 = phi i32 [ %i.byn, %bb.kg ], [ %i.bza, %bb.kh ], [ %i.bzo, %bb.ki ], [ %i.cac, %bb.kj ]
  %.sroa.01.0.i.i238 = phi i32 [ %i.byr, %bb.kg ], [ %i.bze, %bb.kh ], [ %i.bzs, %bb.ki ], [ %i.cag, %bb.kj ]
  %.sroa.11.0.insert.ext.i.i239 = shl nuw nsw i32 %.sroa.11.0.i.i236, 16
  %.sroa.11.0.insert.shift.i.i240 = and i32 %.sroa.11.0.insert.ext.i.i239, 16711680
  %.sroa.7.0.insert.ext.i.i242 = shl nuw nsw i32 %.sroa.7.0.i.i237, 8
  %.sroa.7.0.insert.shift.i.i243 = and i32 %.sroa.7.0.insert.ext.i.i242, 65280
  %.sroa.7.0.insert.insert.i.i244 = or disjoint i32 %.sroa.11.0.insert.shift.i.i240, %.sroa.6.0.insert.shift.i234
  %.sroa.7.0.insert.insert.i.i244.a = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i244, %.sroa.01.0.i.i238
  %.sroa.01.0.insert.insert.i.i245 = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i244.a, %.sroa.7.0.insert.shift.i.i243 ; 8 uses
  %i.cah = load i32, ptr %i.byd, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i.i246 = trunc i32 %.sroa.01.0.insert.insert.i.i245 to i24
  %.sroa.654.0.extract.shift.i.i247 = lshr i32 %.sroa.01.0.insert.insert.i.i245, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i.i248 = lshr i32 %i.cah, 24 ; 4 uses
  %i.cai = icmp ugt i32 %.sroa.01.0.insert.insert.i.i245, -50331649
  %i.caj = icmp ult i32 %i.cah, 50331648
  %or.cond.i.i249 = select i1 %i.cai, i1 true, i1 %i.caj
  br i1 %or.cond.i.i249, label %lv_color_32_32_mix.exit.i261, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %.sroa.018.0.extract.trunc.i.i250 = trunc i32 %i.cah to i24
  %i.cak = icmp ult i32 %.sroa.01.0.insert.insert.i.i245, 50331648
  br i1 %i.cak, label %lv_color_32_32_mix.exit.i261, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.cal = icmp eq i32 %.sroa.6.0.extract.shift.i.i248, 255
  br i1 %i.cal, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.cam = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i245, i32 %i.cah) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.i274 = trunc i32 %i.cam to i24
  %.sroa.5.0.extract.shift.i.i275 = lshr i32 %i.cam, 24
  br label %lv_color_32_32_mix.exit.i261

bb.ko:                                            ; preds = %bb.km
  %i.can = load i8, ptr %i.bxj, align 1, !tbaa !19
  %i.cao = zext i8 %i.can to i32
  %.not.i.i251 = icmp eq i32 %.sroa.6.0.extract.shift.i.i248, %i.cao
  %i.cap = load i8, ptr %i.bxk, align 1
  %i.caq = zext i8 %i.cap to i32
  %.not77.i.i252 = icmp eq i32 %.sroa.654.0.extract.shift.i.i247, %i.caq
  %or.cond177.i = select i1 %.not.i.i251, i1 %.not77.i.i252, i1 false
  br i1 %or.cond177.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.car = xor i32 %.sroa.654.0.extract.shift.i.i247, 255
  %i.cas = xor i32 %.sroa.6.0.extract.shift.i.i248, 255
  %i.cat = mul nuw nsw i32 %i.car, %i.cas
  %i.cau = lshr i32 %i.cat, 8
  %i.cav = trunc nuw i32 %i.cau to i8
  %i.caw = xor i8 %i.cav, -1                      ; 2 uses
  store i8 %i.caw, ptr %i.bxe, align 4, !tbaa !13
  %i.cax = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i.i247 to i16
  %.lhs.trunc.i.i253 = mul nuw i16 %i.cax, 255
  %.rhs.trunc.i.i254 = zext i8 %i.caw to i16
  %i.cay = udiv i16 %.lhs.trunc.i.i253, %.rhs.trunc.i.i254
  %i.caz = trunc i16 %i.cay to i8
  store i8 %i.caz, ptr %i.bxf, align 1, !tbaa !14
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.cba = load i32, ptr %i.bxc, align 4
  %i.cbb = call zeroext i1 @lv_color32_eq(i32 %i.cah, i32 %i.cba) #7
  br i1 %i.cbb, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.cbc = load i32, ptr %2, align 4
  %i.cbd = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i245, i32 %i.cbc) #7
  br i1 %i.cbd, label %._crit_edge.i.i271, label %bb.ks

._crit_edge.i.i271:                               ; preds = %bb.kr
  %.sroa.074.0.copyload.pre.i.i272 = load i24, ptr %i.bxd, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i.i273 = load i8, ptr %i.bxl, align 1, !tbaa !18
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  store i32 %.sroa.01.0.insert.insert.i.i245, ptr %2, align 4
  store i32 %i.cah, ptr %i.bxc, align 4
  %i.cbe = load i8, ptr %i.bxf, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.i255 = zext i8 %i.cbe to i32
  %.sroa.654.0.insert.shift64.i.i256 = shl nuw i32 %.sroa.654.0.insert.ext63.i.i255, 24
  %.sroa.045.0.insert.ext51.i.i257 = and i32 %.sroa.01.0.insert.insert.i.i245, 16777215
  %.sroa.045.0.insert.insert53.i.i258 = or disjoint i32 %.sroa.654.0.insert.shift64.i.i256, %.sroa.045.0.insert.ext51.i.i257
  %i.cbf = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.i258, i32 %i.cah) #7 ; 2 uses
  store i32 %i.cbf, ptr %i.bxd, align 4, !tbaa !18
  %i.cbg = load i8, ptr %i.bxe, align 4, !tbaa !13 ; 2 uses
  store i8 %i.cbg, ptr %i.bxl, align 1, !tbaa !20
  %i.cbh = trunc i32 %i.cbf to i24
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %._crit_edge.i.i271
  %.sroa.5.0.copyload.i.i259 = phi i8 [ %.sroa.5.0.copyload.pre.i.i273, %._crit_edge.i.i271 ], [ %i.cbg, %bb.ks ]
  %.sroa.074.0.copyload.i.i260 = phi i24 [ %.sroa.074.0.copyload.pre.i.i272, %._crit_edge.i.i271 ], [ %i.cbh, %bb.ks ]
  %i.cbi = zext i8 %.sroa.5.0.copyload.i.i259 to i32
  br label %lv_color_32_32_mix.exit.i261

lv_color_32_32_mix.exit.i261:                     ; preds = %bb.kt, %bb.kn, %bb.kl, %bb.kk
  %.sroa.074.0.i.i262 = phi i24 [ %.sroa.074.0.copyload.i.i260, %bb.kt ], [ %.sroa.045.0.extract.trunc.i.i246, %bb.kk ], [ %.sroa.074.0.extract.trunc.i.i274, %bb.kn ], [ %.sroa.018.0.extract.trunc.i.i250, %bb.kl ]
  %.sroa.5.0.i.i263 = phi i32 [ %i.cbi, %bb.kt ], [ %.sroa.654.0.extract.shift.i.i247, %bb.kk ], [ %.sroa.5.0.extract.shift.i.i275, %bb.kn ], [ %.sroa.6.0.extract.shift.i.i248, %bb.kl ]
  %.sroa.5.0.insert.shift.i.i264 = shl nuw i32 %.sroa.5.0.i.i263, 24
  %.sroa.074.0.insert.ext.i.i265 = zext i24 %.sroa.074.0.i.i262 to i32
  %.sroa.074.0.insert.insert.i.i266 = or disjoint i32 %.sroa.5.0.insert.shift.i.i264, %.sroa.074.0.insert.ext.i.i265
  store i32 %.sroa.074.0.insert.insert.i.i266, ptr %i.byd, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit.i267

blend_non_normal_pixel.exit.i267:                 ; preds = %lv_color_32_32_mix.exit.i261, %bb.kf
  %indvars.iv.next.i268 = add nuw nsw i64 %indvars.iv.i232, 1 ; 2 uses
  %exitcond.not.i269 = icmp eq i64 %indvars.iv.next.i268, %wide.trip.count.i231
  br i1 %exitcond.not.i269, label %._crit_edge.i270, label %bb.kc, !llvm.loop !137

._crit_edge.i270:                                 ; preds = %blend_non_normal_pixel.exit.i267
  %i.cbj = getelementptr inbounds i8, ptr %.2150193.i, i64 %i.bxm
  %.3151.i = select i1 %i.bxp, ptr null, ptr %i.cbj
  %i.cbk = getelementptr inbounds nuw i8, ptr %.4161191.i, i64 %i.bxn
  %i.cbl = getelementptr inbounds nuw i8, ptr %.4156192.i, i64 %i.bxo
  %i.cbm = add nuw nsw i32 %.4194.i, 1            ; 2 uses
  %exitcond229.not.i = icmp eq i32 %i.cbm, %i.bpi
  br i1 %exitcond229.not.i, label %._crit_edge195.split.i, label %.preheader188.i, !llvm.loop !138

._crit_edge195.split.i:                           ; preds = %._crit_edge.i270, %.preheader188.lr.ph.i, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %l8_image_blend.exit

bb.ku:                                            ; preds = %bb.a
  %i.cbn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cbo = load i32, ptr %i.cbn, align 8, !tbaa !22 ; 12 uses
  %i.cbp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cbq = load i32, ptr %i.cbp, align 4, !tbaa !23 ; 10 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cbs = load i8, ptr %i.cbr, align 8, !tbaa !24 ; 8 uses
  %i.cbt = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.cbu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cbv = load i32, ptr %i.cbu, align 8, !tbaa !26 ; 5 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cbx = load ptr, ptr %i.cbw, align 8, !tbaa !27 ; 5 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cbz = load i32, ptr %i.cby, align 8, !tbaa !28 ; 5 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ccb = load ptr, ptr %i.cca, align 8, !tbaa !29 ; 4 uses
  %i.ccc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ccd = load i32, ptr %i.ccc, align 8, !tbaa !30 ; 3 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !31
  %i.ccg = icmp eq i32 %i.ccf, 0
  br i1 %i.ccg, label %bb.kv, label %bb.lh

bb.kv:                                            ; preds = %bb.ku
  %i.cch = icmp eq ptr %i.ccb, null               ; 3 uses
  %i.cci = icmp ugt i8 %i.cbs, -4                 ; 2 uses
  %or.cond.i342 = select i1 %i.cch, i1 %i.cci, i1 false
  br i1 %or.cond.i342, label %.preheader176.i369, label %bb.kw

.preheader176.i369:                               ; preds = %bb.kv
  %i.ccj = icmp sgt i32 %i.cbq, 0
  br i1 %i.ccj, label %.preheader.lr.ph.i370, label %l8_image_blend.exit

.preheader.lr.ph.i370:                            ; preds = %.preheader176.i369
  %i.cck = icmp sgt i32 %i.cbo, 0
  %i.ccl = zext i32 %i.cbv to i64
  %i.ccm = zext i32 %i.cbz to i64
  br i1 %i.cck, label %.preheader.preheader.i371, label %l8_image_blend.exit

.preheader.preheader.i371:                        ; preds = %.preheader.lr.ph.i370
  %wide.trip.count259.i372 = zext nneg i32 %i.cbo to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count259.i372, 1
  %i.ccn = icmp eq i32 %i.cbo, 1
  %unroll_iter = and i64 %wide.trip.count259.i372, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod725 = trunc i32 %i.cbo to i1
  br label %.preheader.i373

.preheader.i373:                                  ; preds = %._crit_edge217.i, %.preheader.preheader.i371
  %.0220.i = phi ptr [ %i.cdq, %._crit_edge217.i ], [ %i.cbt, %.preheader.preheader.i371 ] ; 4 uses
  %.0136219.i = phi i32 [ %i.cds, %._crit_edge217.i ], [ 0, %.preheader.preheader.i371 ]
  %.0155218.i = phi ptr [ %i.cdr, %._crit_edge217.i ], [ %i.cbx, %.preheader.preheader.i371 ] ; 4 uses
  br i1 %i.ccn, label %.epil.preheader, label %.preheader.i373.new

.preheader.i373.new:                              ; preds = %.preheader.i373, %.preheader.i373.new
  %indvars.iv254.i374 = phi i64 [ %indvars.iv.next255.i375.1, %.preheader.i373.new ], [ 0, %.preheader.i373 ] ; 7 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i373.new ], [ 0, %.preheader.i373 ]
  %indvars256.i = trunc i64 %indvars.iv254.i374 to i8
  %i.cco = lshr i64 %indvars.iv254.i374, 3
  %i.ccp = and i64 %i.cco, 536870911
  %i.ccq = getelementptr inbounds nuw i8, ptr %.0155218.i, i64 %i.ccp
  %i.ccr = load i8, ptr %i.ccq, align 1, !tbaa !18
  %i.ccs = and i8 %indvars256.i, 6
  %i.cct = xor i8 %i.ccs, 7
  %i.ccu = lshr i8 %i.ccr, %i.cct
  %i.ccv = and i8 %i.ccu, 1
  %narrow166.i = sub nsw i8 0, %i.ccv
  %i.ccw = getelementptr inbounds nuw [4 x i8], ptr %.0220.i, i64 %indvars.iv254.i374
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ccw, i8 %narrow166.i, i64 4, i1 false)
  %indvars256.i.1 = trunc i64 %indvars.iv254.i374 to i8
  %i.ccx = lshr i64 %indvars.iv254.i374, 3
  %i.ccy = and i64 %i.ccx, 536870911
  %i.ccz = getelementptr inbounds nuw i8, ptr %.0155218.i, i64 %i.ccy
  %i.cda = load i8, ptr %i.ccz, align 1, !tbaa !18
  %i.cdb = and i8 %indvars256.i.1, 6
  %i.cdc = xor i8 %i.cdb, 6
  %i.cdd = lshr i8 %i.cda, %i.cdc
  %i.cde = and i8 %i.cdd, 1
  %narrow166.i.1 = sub nsw i8 0, %i.cde
  %i.cdf = getelementptr inbounds nuw [4 x i8], ptr %.0220.i, i64 %indvars.iv254.i374
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 4
  %indvars.iv.next255.i375.1 = add nuw nsw i64 %indvars.iv254.i374, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.cdg, i8 %narrow166.i.1, i64 4, i1 false)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge217.i.unr-lcssa, label %.preheader.i373.new, !llvm.loop !139

._crit_edge217.i.unr-lcssa:                       ; preds = %.preheader.i373.new
  br i1 %lcmp.mod.not, label %._crit_edge217.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge217.i.unr-lcssa, %.preheader.i373
  %indvars.iv254.i374.epil.init = phi i64 [ 0, %.preheader.i373 ], [ %indvars.iv.next255.i375.1, %._crit_edge217.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod725)
  %indvars256.i.epil = trunc i64 %indvars.iv254.i374.epil.init to i8
  %i.cdh = lshr i64 %indvars.iv254.i374.epil.init, 3
  %i.cdi = and i64 %i.cdh, 536870911
  %i.cdj = getelementptr inbounds nuw i8, ptr %.0155218.i, i64 %i.cdi
  %i.cdk = load i8, ptr %i.cdj, align 1, !tbaa !18
  %i.cdl = and i8 %indvars256.i.epil, 7
end_hunk_5
begin_hunk_6_@lv_draw_sw_blend_image_to_argb8888:bb.a
  br i1 %i.cig, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.cih = getelementptr inbounds nuw i8, ptr %i.chz, i64 2
  store i8 %narrow163.i, ptr %i.cih, align 1, !tbaa !32
  %i.cii = getelementptr inbounds nuw i8, ptr %i.chz, i64 1
  store i8 %narrow163.i, ptr %i.cii, align 1, !tbaa !33
  br label %.sink.split.i170.i

bb.lg:                                            ; preds = %bb.le
  %i.cij = xor i8 %i.cic, -1
  %i.cik = zext i8 %narrow163.i to i32
  %i.cil = mul nuw nsw i32 %i.cik, %i.cid         ; 3 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.chz, i64 2 ; 2 uses
  %i.cin = load i8, ptr %i.cim, align 1, !tbaa !32
  %i.cio = zext i8 %i.cin to i32
  %i.cip = zext i8 %i.cij to i32                  ; 3 uses
  %i.ciq = mul nuw nsw i32 %i.cio, %i.cip
  %i.cir = add nuw nsw i32 %i.ciq, %i.cil
  %i.cis = lshr i32 %i.cir, 8
  %i.cit = trunc i32 %i.cis to i8
  store i8 %i.cit, ptr %i.cim, align 1, !tbaa !32
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.chz, i64 1 ; 2 uses
  %i.civ = load i8, ptr %i.ciu, align 1, !tbaa !33
  %i.ciw = zext i8 %i.civ to i32
  %i.cix = mul nuw nsw i32 %i.ciw, %i.cip
  %i.ciy = add nuw nsw i32 %i.cix, %i.cil
  %i.ciz = lshr i32 %i.ciy, 8
  %i.cja = trunc i32 %i.ciz to i8
  store i8 %i.cja, ptr %i.ciu, align 1, !tbaa !33
  %i.cjb = load i8, ptr %i.chz, align 1, !tbaa !34
  %i.cjc = zext i8 %i.cjb to i32
  %i.cjd = mul nuw nsw i32 %i.cjc, %i.cip
  %i.cje = add nuw nsw i32 %i.cjd, %i.cil
  %i.cjf = lshr i32 %i.cje, 8
  %i.cjg = trunc i32 %i.cjf to i8
  br label %.sink.split.i170.i

.sink.split.i170.i:                               ; preds = %bb.lg, %bb.lf
  %.sink.i171.i = phi i8 [ %i.cjg, %bb.lg ], [ %narrow163.i, %bb.lf ]
  store i8 %.sink.i171.i, ptr %i.chz, align 1, !tbaa !34
  br label %lv_color_8_32_mix.exit172.i

lv_color_8_32_mix.exit172.i:                      ; preds = %.sink.split.i170.i, %bb.ld
  %indvars.iv.next231.i351 = add nuw nsw i64 %indvars.iv230.i350, 1 ; 2 uses
  %exitcond236.not.i352 = icmp eq i64 %indvars.iv.next231.i351, %wide.trip.count235.i348
  br i1 %exitcond236.not.i352, label %._crit_edge196.i, label %bb.ld, !llvm.loop !145

._crit_edge196.i:                                 ; preds = %lv_color_8_32_mix.exit172.i
  %i.cjh = getelementptr inbounds nuw i8, ptr %.3200.i, i64 %i.chn
  %i.cji = getelementptr inbounds nuw i8, ptr %.3158197.i, i64 %i.cho
  %i.cjj = getelementptr inbounds i8, ptr %.1152198.i, i64 %i.chp
  %i.cjk = add nuw nsw i32 %.3139199.i, 1         ; 2 uses
  %exitcond237.not.i353 = icmp eq i32 %i.cjk, %i.cbq
  br i1 %exitcond237.not.i353, label %l8_image_blend.exit, label %.preheader183.i349, !llvm.loop !146

bb.lh:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @lv_memset(ptr noundef nonnull %1, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.cjl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.cjl, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.cjm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.cjm, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.cjn = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store i8 -1, ptr %i.cjn, align 4, !tbaa !13
  %i.cjo = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 3 uses
  store i8 -1, ptr %i.cjo, align 1, !tbaa !14
  %i.cjp = icmp sgt i32 %i.cbq, 0
  br i1 %i.cjp, label %.preheader186.lr.ph.i, label %._crit_edge193.split.i

.preheader186.lr.ph.i:                            ; preds = %bb.lh
  %i.cjq = icmp sgt i32 %i.cbo, 0
  %i.cjr = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cjs = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cjt = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.cju = sext i32 %i.ccd to i64
  %i.cjv = zext i32 %i.cbv to i64
  %i.cjw = zext i32 %i.cbz to i64
  br i1 %i.cjq, label %.preheader186.preheader.i, label %._crit_edge193.split.i

.preheader186.preheader.i:                        ; preds = %.preheader186.lr.ph.i
  %wide.trip.count.i296 = zext nneg i32 %i.cbo to i64
  br label %.preheader186.i

.preheader186.i:                                  ; preds = %._crit_edge.i333, %.preheader186.preheader.i
  %.4192.i = phi ptr [ %i.cnr, %._crit_edge.i333 ], [ %i.cbt, %.preheader186.preheader.i ] ; 2 uses
  %.4140191.i = phi i32 [ %i.cnt, %._crit_edge.i333 ], [ 0, %.preheader186.preheader.i ]
  %.2153190.i = phi ptr [ %.3154.i, %._crit_edge.i333 ], [ %i.ccb, %.preheader186.preheader.i ] ; 3 uses
  %.4159189.i = phi ptr [ %i.cns, %._crit_edge.i333 ], [ %i.cbx, %.preheader186.preheader.i ] ; 2 uses
  %i.cjx = icmp eq ptr %.2153190.i, null          ; 2 uses
  br label %bb.li

bb.li:                                            ; preds = %blend_non_normal_pixel.exit.i330, %.preheader186.i
  %indvars.iv.i297 = phi i64 [ 0, %.preheader186.i ], [ %indvars.iv.next.i331, %blend_non_normal_pixel.exit.i330 ] ; 5 uses
  %indvars226.i = trunc i64 %indvars.iv.i297 to i32
  %i.cjy = lshr i64 %indvars.iv.i297, 3
  %i.cjz = and i64 %i.cjy, 536870911
  %i.cka = getelementptr inbounds nuw i8, ptr %.4159189.i, i64 %i.cjz
  %i.ckb = load i8, ptr %i.cka, align 1, !tbaa !18
  %i.ckc = zext i8 %i.ckb to i32
  %i.ckd = and i32 %indvars226.i, 7
  br i1 %i.cjx, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.cke = getelementptr inbounds nuw i8, ptr %.2153190.i, i64 %indvars.iv.i297
  %i.ckf = load i8, ptr %i.cke, align 1, !tbaa !18
  %i.ckg = call i8 @llvm.umulh.i8(i8 %i.ckf, i8 %i.cbs)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %.sroa.8.0.i = phi i8 [ %i.ckg, %bb.lj ], [ %i.cbs, %bb.li ]
  %i.ckh = getelementptr inbounds nuw [4 x i8], ptr %.4192.i, i64 %indvars.iv.i297 ; 14 uses
  %i.cki = load i32, ptr %i.cce, align 4, !tbaa !31
  %.sroa.8.0.insert.ext.i = zext i8 %.sroa.8.0.i to i32
  %.sroa.8.0.insert.shift.i = shl nuw i32 %.sroa.8.0.insert.ext.i, 24
  %i.ckj = lshr exact i32 128, %i.ckd
  %i.ckk = and i32 %i.ckj, %i.ckc
  %i.ckl = icmp eq i32 %i.ckk, 0
  %.sroa.5.0.insert.ext.i298 = select i1 %i.ckl, i32 0, i32 255 ; 12 uses
  switch i32 %i.cki, label %blend_non_normal_pixel.exit.i330 [
    i32 1, label %bb.ll
    i32 2, label %bb.lm
    i32 3, label %bb.ln
    i32 4, label %bb.lo
  ]

bb.ll:                                            ; preds = %bb.lk
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckh, i64 2
  %i.ckn = load i8, ptr %i.ckm, align 1, !tbaa !32
  %i.cko = zext i8 %i.ckn to i32
  %i.ckp = add nuw nsw i32 %.sroa.5.0.insert.ext.i298, %i.cko
  %spec.select.i.i341 = call i32 @llvm.umin.i32(i32 %i.ckp, i32 255)
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ckh, i64 1
  %i.ckr = load i8, ptr %i.ckq, align 1, !tbaa !33
  %i.cks = zext i8 %i.ckr to i32
  %i.ckt = add nuw nsw i32 %.sroa.5.0.insert.ext.i298, %i.cks
  %i.cku = call i32 @llvm.umin.i32(i32 %i.ckt, i32 255)
  %i.ckv = load i8, ptr %i.ckh, align 1, !tbaa !34
  %i.ckw = zext i8 %i.ckv to i32
  %i.ckx = add nuw nsw i32 %.sroa.5.0.insert.ext.i298, %i.ckw
  %i.cky = call i32 @llvm.umin.i32(i32 %i.ckx, i32 255)
  br label %bb.lp

bb.lm:                                            ; preds = %bb.lk
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.ckh, i64 2
  %i.cla = load i8, ptr %i.ckz, align 1, !tbaa !32
  %i.clb = zext i8 %i.cla to i32
  %i.clc = sub nsw i32 %i.clb, %.sroa.5.0.insert.ext.i298
  %spec.select60.i.i340 = call i32 @llvm.smax.i32(i32 %i.clc, i32 0)
  %i.cld = getelementptr inbounds nuw i8, ptr %i.ckh, i64 1
  %i.cle = load i8, ptr %i.cld, align 1, !tbaa !33
  %i.clf = zext i8 %i.cle to i32
  %i.clg = sub nsw i32 %i.clf, %.sroa.5.0.insert.ext.i298
  %i.clh = call i32 @llvm.smax.i32(i32 %i.clg, i32 0)
  %i.cli = load i8, ptr %i.ckh, align 1, !tbaa !34
  %i.clj = zext i8 %i.cli to i32
  %i.clk = sub nsw i32 %i.clj, %.sroa.5.0.insert.ext.i298
  %i.cll = call i32 @llvm.smax.i32(i32 %i.clk, i32 0)
  br label %bb.lp

bb.ln:                                            ; preds = %bb.lk
  %i.clm = getelementptr inbounds nuw i8, ptr %i.ckh, i64 2
  %i.cln = load i8, ptr %i.clm, align 1, !tbaa !32
  %i.clo = zext i8 %i.cln to i32
  %i.clp = mul nuw nsw i32 %.sroa.5.0.insert.ext.i298, %i.clo
  %i.clq = lshr i32 %i.clp, 8
  %i.clr = getelementptr inbounds nuw i8, ptr %i.ckh, i64 1
  %i.cls = load i8, ptr %i.clr, align 1, !tbaa !33
  %i.clt = zext i8 %i.cls to i32
  %i.clu = mul nuw nsw i32 %.sroa.5.0.insert.ext.i298, %i.clt
  %i.clv = lshr i32 %i.clu, 8
  %i.clw = load i8, ptr %i.ckh, align 1, !tbaa !34
  %i.clx = zext i8 %i.clw to i32
  %i.cly = mul nuw nsw i32 %.sroa.5.0.insert.ext.i298, %i.clx
  %i.clz = lshr i32 %i.cly, 8
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lk
  %i.cma = getelementptr inbounds nuw i8, ptr %i.ckh, i64 2
  %i.cmb = load i8, ptr %i.cma, align 1, !tbaa !32
  %i.cmc = zext i8 %i.cmb to i32
  %i.cmd = sub nsw i32 %i.cmc, %.sroa.5.0.insert.ext.i298
  %i.cme = call i32 @llvm.abs.i32(i32 %i.cmd, i1 true)
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.ckh, i64 1
  %i.cmg = load i8, ptr %i.cmf, align 1, !tbaa !33
  %i.cmh = zext i8 %i.cmg to i32
  %i.cmi = sub nsw i32 %i.cmh, %.sroa.5.0.insert.ext.i298
  %i.cmj = call i32 @llvm.abs.i32(i32 %i.cmi, i1 true)
  %i.cmk = load i8, ptr %i.ckh, align 1, !tbaa !34
  %i.cml = zext i8 %i.cmk to i32
  %i.cmm = sub nsw i32 %i.cml, %.sroa.5.0.insert.ext.i298
  %i.cmn = call i32 @llvm.abs.i32(i32 %i.cmm, i1 true)
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln, %bb.lm, %bb.ll
  %.sroa.11.0.i.i299 = phi i32 [ %spec.select.i.i341, %bb.ll ], [ %spec.select60.i.i340, %bb.lm ], [ %i.clq, %bb.ln ], [ %i.cme, %bb.lo ]
  %.sroa.7.0.i.i300 = phi i32 [ %i.cku, %bb.ll ], [ %i.clh, %bb.lm ], [ %i.clv, %bb.ln ], [ %i.cmj, %bb.lo ]
  %.sroa.01.0.i.i301 = phi i32 [ %i.cky, %bb.ll ], [ %i.cll, %bb.lm ], [ %i.clz, %bb.ln ], [ %i.cmn, %bb.lo ]
  %.sroa.11.0.insert.ext.i.i302 = shl nuw nsw i32 %.sroa.11.0.i.i299, 16
  %.sroa.11.0.insert.shift.i.i303 = and i32 %.sroa.11.0.insert.ext.i.i302, 16711680
  %.sroa.7.0.insert.ext.i.i305 = shl nuw nsw i32 %.sroa.7.0.i.i300, 8
  %.sroa.7.0.insert.shift.i.i306 = and i32 %.sroa.7.0.insert.ext.i.i305, 65280
  %.sroa.7.0.insert.insert.i.i307 = or disjoint i32 %.sroa.11.0.insert.shift.i.i303, %.sroa.8.0.insert.shift.i
  %.sroa.7.0.insert.insert.i.i307.a = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i307, %.sroa.01.0.i.i301
  %.sroa.01.0.insert.insert.i.i308 = add nuw nsw i32 %.sroa.7.0.insert.insert.i.i307.a, %.sroa.7.0.insert.shift.i.i306 ; 8 uses
  %i.cmo = load i32, ptr %i.ckh, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i.i309 = trunc i32 %.sroa.01.0.insert.insert.i.i308 to i24
  %.sroa.654.0.extract.shift.i.i310 = lshr i32 %.sroa.01.0.insert.insert.i.i308, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i.i311 = lshr i32 %i.cmo, 24 ; 4 uses
  %i.cmp = icmp ugt i32 %.sroa.01.0.insert.insert.i.i308, -50331649
  %i.cmq = icmp ult i32 %i.cmo, 50331648
  %or.cond.i.i312 = select i1 %i.cmp, i1 true, i1 %i.cmq
  br i1 %or.cond.i.i312, label %lv_color_32_32_mix.exit.i324, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %.sroa.018.0.extract.trunc.i.i313 = trunc i32 %i.cmo to i24
  %i.cmr = icmp ult i32 %.sroa.01.0.insert.insert.i.i308, 50331648
  br i1 %i.cmr, label %lv_color_32_32_mix.exit.i324, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.cms = icmp eq i32 %.sroa.6.0.extract.shift.i.i311, 255
  br i1 %i.cms, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.cmt = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i308, i32 %i.cmo) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.i338 = trunc i32 %i.cmt to i24
  %.sroa.5.0.extract.shift.i.i339 = lshr i32 %i.cmt, 24
  br label %lv_color_32_32_mix.exit.i324

bb.lt:                                            ; preds = %bb.lr
  %i.cmu = load i8, ptr %i.cjr, align 1, !tbaa !19
  %i.cmv = zext i8 %i.cmu to i32
  %.not.i.i314 = icmp eq i32 %.sroa.6.0.extract.shift.i.i311, %i.cmv
  %i.cmw = load i8, ptr %i.cjs, align 1
  %i.cmx = zext i8 %i.cmw to i32
  %.not77.i.i315 = icmp eq i32 %.sroa.654.0.extract.shift.i.i310, %i.cmx
  %or.cond175.i = select i1 %.not.i.i314, i1 %.not77.i.i315, i1 false
  br i1 %or.cond175.i, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.cmy = xor i32 %.sroa.654.0.extract.shift.i.i310, 255
  %i.cmz = xor i32 %.sroa.6.0.extract.shift.i.i311, 255
  %i.cna = mul nuw nsw i32 %i.cmy, %i.cmz
  %i.cnb = lshr i32 %i.cna, 8
  %i.cnc = trunc nuw i32 %i.cnb to i8
  %i.cnd = xor i8 %i.cnc, -1                      ; 2 uses
  store i8 %i.cnd, ptr %i.cjn, align 4, !tbaa !13
  %i.cne = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i.i310 to i16
  %.lhs.trunc.i.i316 = mul nuw i16 %i.cne, 255
  %.rhs.trunc.i.i317 = zext i8 %i.cnd to i16
  %i.cnf = udiv i16 %.lhs.trunc.i.i316, %.rhs.trunc.i.i317
  %i.cng = trunc i16 %i.cnf to i8
  store i8 %i.cng, ptr %i.cjo, align 1, !tbaa !14
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %i.cnh = load i32, ptr %i.cjl, align 4
  %i.cni = call zeroext i1 @lv_color32_eq(i32 %i.cmo, i32 %i.cnh) #7
  br i1 %i.cni, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.cnj = load i32, ptr %1, align 4
  %i.cnk = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i308, i32 %i.cnj) #7
  br i1 %i.cnk, label %._crit_edge.i.i335, label %bb.lx

._crit_edge.i.i335:                               ; preds = %bb.lw
  %.sroa.074.0.copyload.pre.i.i336 = load i24, ptr %i.cjm, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i.i337 = load i8, ptr %i.cjt, align 1, !tbaa !18
  br label %bb.ly

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  store i32 %.sroa.01.0.insert.insert.i.i308, ptr %1, align 4
  store i32 %i.cmo, ptr %i.cjl, align 4
  %i.cnl = load i8, ptr %i.cjo, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.i318 = zext i8 %i.cnl to i32
  %.sroa.654.0.insert.shift64.i.i319 = shl nuw i32 %.sroa.654.0.insert.ext63.i.i318, 24
  %.sroa.045.0.insert.ext51.i.i320 = and i32 %.sroa.01.0.insert.insert.i.i308, 16777215
  %.sroa.045.0.insert.insert53.i.i321 = or disjoint i32 %.sroa.654.0.insert.shift64.i.i319, %.sroa.045.0.insert.ext51.i.i320
  %i.cnm = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.i321, i32 %i.cmo) #7 ; 2 uses
  store i32 %i.cnm, ptr %i.cjm, align 4, !tbaa !18
  %i.cnn = load i8, ptr %i.cjn, align 4, !tbaa !13 ; 2 uses
  store i8 %i.cnn, ptr %i.cjt, align 1, !tbaa !20
  %i.cno = trunc i32 %i.cnm to i24
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %._crit_edge.i.i335
  %.sroa.5.0.copyload.i.i322 = phi i8 [ %.sroa.5.0.copyload.pre.i.i337, %._crit_edge.i.i335 ], [ %i.cnn, %bb.lx ]
  %.sroa.074.0.copyload.i.i323 = phi i24 [ %.sroa.074.0.copyload.pre.i.i336, %._crit_edge.i.i335 ], [ %i.cno, %bb.lx ]
  %i.cnp = zext i8 %.sroa.5.0.copyload.i.i322 to i32
  br label %lv_color_32_32_mix.exit.i324

lv_color_32_32_mix.exit.i324:                     ; preds = %bb.ly, %bb.ls, %bb.lq, %bb.lp
  %.sroa.074.0.i.i325 = phi i24 [ %.sroa.074.0.copyload.i.i323, %bb.ly ], [ %.sroa.045.0.extract.trunc.i.i309, %bb.lp ], [ %.sroa.074.0.extract.trunc.i.i338, %bb.ls ], [ %.sroa.018.0.extract.trunc.i.i313, %bb.lq ]
  %.sroa.5.0.i.i326 = phi i32 [ %i.cnp, %bb.ly ], [ %.sroa.654.0.extract.shift.i.i310, %bb.lp ], [ %.sroa.5.0.extract.shift.i.i339, %bb.ls ], [ %.sroa.6.0.extract.shift.i.i311, %bb.lq ]
  %.sroa.5.0.insert.shift.i.i327 = shl nuw i32 %.sroa.5.0.i.i326, 24
  %.sroa.074.0.insert.ext.i.i328 = zext i24 %.sroa.074.0.i.i325 to i32
  %.sroa.074.0.insert.insert.i.i329 = or disjoint i32 %.sroa.5.0.insert.shift.i.i327, %.sroa.074.0.insert.ext.i.i328
  store i32 %.sroa.074.0.insert.insert.i.i329, ptr %i.ckh, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit.i330

blend_non_normal_pixel.exit.i330:                 ; preds = %lv_color_32_32_mix.exit.i324, %bb.lk
  %indvars.iv.next.i331 = add nuw nsw i64 %indvars.iv.i297, 1 ; 2 uses
  %exitcond.not.i332 = icmp eq i64 %indvars.iv.next.i331, %wide.trip.count.i296
  br i1 %exitcond.not.i332, label %._crit_edge.i333, label %bb.li, !llvm.loop !147

._crit_edge.i333:                                 ; preds = %blend_non_normal_pixel.exit.i330
  %i.cnq = getelementptr inbounds i8, ptr %.2153190.i, i64 %i.cju
  %.3154.i = select i1 %i.cjx, ptr null, ptr %i.cnq
  %i.cnr = getelementptr inbounds nuw i8, ptr %.4192.i, i64 %i.cjv
  %i.cns = getelementptr inbounds nuw i8, ptr %.4159189.i, i64 %i.cjw
  %i.cnt = add nuw nsw i32 %.4140191.i, 1         ; 2 uses
  %exitcond229.not.i334 = icmp eq i32 %i.cnt, %i.cbq
  br i1 %exitcond229.not.i334, label %._crit_edge193.split.i, label %.preheader186.i, !llvm.loop !148

._crit_edge193.split.i:                           ; preds = %._crit_edge.i333, %.preheader186.lr.ph.i, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %l8_image_blend.exit

l8_image_blend.exit:                              ; preds = %._crit_edge196.i, %._crit_edge203.i, %._crit_edge210.i, %._crit_edge217.i, %._crit_edge198.i, %._crit_edge205.i, %._crit_edge212.i, %._crit_edge218.i, %._crit_edge192.i, %._crit_edge199.i, %._crit_edge206.i, %._crit_edge213.i, %._crit_edge193.split.i, %.preheader183.lr.ph.i, %bb.lc, %.preheader180.lr.ph.i, %.preheader181.i, %.preheader177.lr.ph.i, %.preheader178.i360, %.preheader.lr.ph.i370, %.preheader176.i369, %._crit_edge195.split.i, %.preheader185.lr.ph.i, %bb.jw, %.preheader182.lr.ph.i283, %.preheader183.i, %.preheader179.lr.ph.i286, %.preheader180.i, %.preheader.lr.ph.i292, %.preheader178.i, %._crit_edge189.split.i, %.preheader179.lr.ph.i, %bb.ij, %.preheader176.lr.ph.i, %.preheader177.i, %.preheader173.lr.ph.i, %.preheader174.i, %.preheader.lr.ph.i228, %.preheader172.i, %bb.a, %argb8888_image_blend.exit, %argb8888_premultiplied_image_blend.exit, %bb.cu, %bb.ct, %rgb565_swapped_image_blend.exit, %rgb565_image_blend.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.fr434 = freeze i8 %i.f                        ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.r, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.s, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  store i8 -1, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 9 uses
  store i8 -1, ptr %i.u, align 1, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %.preheader355

.preheader355:                                    ; preds = %bb.a
  %i.y = icmp sgt i32 %i.d, 0
  br i1 %i.y, label %.preheader354.lr.ph, label %.loopexit

.preheader354.lr.ph:                              ; preds = %.preheader355
  %i.z = icmp sgt i32 %i.b, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.ad = sext i32 %i.q to i64
  %i.ae = zext i32 %i.i to i64
  %i.af = zext i32 %i.m to i64
  br i1 %i.z, label %.preheader354.preheader, label %.loopexit

.preheader354.preheader:                          ; preds = %.preheader354.lr.ph
  %i.ag = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader354

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp eq ptr %i.o, null                  ; 3 uses
  %i.ai = zext i8 %.fr434 to i32                  ; 5 uses
  %i.aj = icmp ugt i8 %.fr434, -4                 ; 2 uses
  %or.cond = and i1 %i.ah, %i.aj
  br i1 %or.cond, label %bb.c, label %.loopexit350

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp eq i8 %1, 4
  %i.al = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %i.ak, label %bb.d, label %.preheader352

.preheader352:                                    ; preds = %bb.c
  br i1 %i.al, label %.preheader351.lr.ph, label %.loopexit

.preheader351.lr.ph:                              ; preds = %.preheader352
  %i.am = icmp sgt i32 %i.b, 0
  %i.an = zext i32 %i.i to i64
  %i.ao = zext i32 %i.m to i64
  br i1 %i.am, label %.preheader351.us.preheader, label %.loopexit

.preheader351.us.preheader:                       ; preds = %.preheader351.lr.ph
  %wide.trip.count472 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count472, 1
  %i.ap = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count472, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod587 = trunc i32 %i.b to i1
  br label %.preheader351.us

.preheader351.us:                                 ; preds = %.preheader351.us.preheader, %._crit_edge365.us
  %.1368.us = phi i32 [ %i.by, %._crit_edge365.us ], [ 0, %.preheader351.us.preheader ]
  %.1229367.us = phi ptr [ %i.bx, %._crit_edge365.us ], [ %i.k, %.preheader351.us.preheader ] ; 4 uses
  %.1235366.us = phi ptr [ %i.bw, %._crit_edge365.us ], [ %i.g, %.preheader351.us.preheader ] ; 4 uses
  br i1 %i.ap, label %.epil.preheader, label %.preheader351.us.new

.preheader351.us.new:                             ; preds = %.preheader351.us, %.preheader351.us.new
  %indvars.iv467 = phi i64 [ %indvars.iv.next468.1, %.preheader351.us.new ], [ 0, %.preheader351.us ] ; 3 uses
  %indvars.iv465 = phi i64 [ %indvars.iv.next466.1, %.preheader351.us.new ], [ 0, %.preheader351.us ] ; 3 uses
end_hunk_6
begin_hunk_7_@rgb888_image_blend:bb.a
bb.ac:                                            ; preds = %bb.aa
  %i.hm = load i8, ptr %i.gn, align 1, !tbaa !19
  %i.hn = zext i8 %i.hm to i32
  %.not.i280 = icmp eq i32 %.sroa.6.0.extract.shift.i277, %i.hn
  %i.ho = load i8, ptr %i.go, align 1
  %i.hp = zext i8 %i.ho to i32
  %.not77.i299 = icmp eq i32 %.sroa.654.0.extract.shift.i276, %i.hp
  %or.cond339 = select i1 %.not.i280, i1 %.not77.i299, i1 false
  br i1 %or.cond339, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = xor i32 %.sroa.654.0.extract.shift.i276, 255
  %i.hr = xor i32 %.sroa.6.0.extract.shift.i277, 255
  %i.hs = mul nuw nsw i32 %i.hr, %i.hq
  %i.ht = lshr i32 %i.hs, 8
  %i.hu = trunc nuw i32 %i.ht to i8
  %i.hv = xor i8 %i.hu, -1                        ; 2 uses
  store i8 %i.hv, ptr %i.t, align 4, !tbaa !13
  %i.hw = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i276 to i16
  %.lhs.trunc.i281 = mul nuw i16 %i.hw, 255
  %.rhs.trunc.i282 = zext i8 %i.hv to i16
  %i.hx = udiv i16 %.lhs.trunc.i281, %.rhs.trunc.i282
  %i.hy = trunc i16 %i.hx to i8
  store i8 %i.hy, ptr %i.u, align 1, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.hz = load i32, ptr %i.r, align 4
  %i.ia = call zeroext i1 @lv_color32_eq(i32 %i.hg, i32 %i.hz) #7
  br i1 %i.ia, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ib = load i32, ptr %2, align 4
  %i.ic = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert79, i32 %i.ib) #7
  br i1 %i.ic, label %._crit_edge.i294, label %bb.ag

._crit_edge.i294:                                 ; preds = %bb.af
  %.sroa.074.0.copyload.pre.i296 = load i24, ptr %i.s, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i298 = load i8, ptr %i.gp, align 1, !tbaa !18
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 %.sroa.071.0.insert.insert79, ptr %2, align 4
  store i32 %i.hg, ptr %i.r, align 4
  %i.id = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i283 = zext i8 %i.id to i32
  %.sroa.654.0.insert.shift64.i284 = shl nuw i32 %.sroa.654.0.insert.ext63.i283, 24
  %.sroa.045.0.insert.ext51.i285 = and i32 %.sroa.071.0.insert.insert79, 16777215
  %.sroa.045.0.insert.insert53.i286 = or disjoint i32 %.sroa.654.0.insert.shift64.i284, %.sroa.045.0.insert.ext51.i285
  %i.ie = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i286, i32 %i.hg) #7 ; 2 uses
  store i32 %i.ie, ptr %i.s, align 4, !tbaa !18
  %i.if = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.if, ptr %i.gp, align 1, !tbaa !20
  %i.ig = trunc i32 %i.ie to i24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i294
  %.sroa.5.0.copyload.i287 = phi i8 [ %.sroa.5.0.copyload.pre.i298, %._crit_edge.i294 ], [ %i.if, %bb.ag ]
  %.sroa.074.0.copyload.i288 = phi i24 [ %.sroa.074.0.copyload.pre.i296, %._crit_edge.i294 ], [ %i.ig, %bb.ag ]
  %i.ih = zext i8 %.sroa.5.0.copyload.i287 to i32
  br label %lv_color_32_32_mix.exit302

lv_color_32_32_mix.exit302:                       ; preds = %bb.y, %bb.z, %bb.ab, %bb.ah
  %.sroa.074.0.i289 = phi i24 [ %.sroa.074.0.copyload.i288, %bb.ah ], [ %.sroa.045.0.extract.trunc.i275, %bb.y ], [ %.sroa.074.0.extract.trunc.i300, %bb.ab ], [ %.sroa.018.0.extract.trunc.i279, %bb.z ]
  %.sroa.5.0.i290 = phi i32 [ %i.ih, %bb.ah ], [ %.sroa.654.0.extract.shift.i276, %bb.y ], [ %.sroa.5.0.extract.shift.i301, %bb.ab ], [ %.sroa.6.0.extract.shift.i277, %bb.z ]
  %.sroa.5.0.insert.shift.i291 = shl nuw i32 %.sroa.5.0.i290, 24
  %.sroa.074.0.insert.ext.i292 = zext i24 %.sroa.074.0.i289 to i32
  %.sroa.074.0.insert.insert.i293 = or disjoint i32 %.sroa.5.0.insert.shift.i291, %.sroa.074.0.insert.ext.i292
  store i32 %.sroa.074.0.insert.insert.i293, ptr %i.hd, align 1, !tbaa !18
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, %i.gt
  %exitcond519.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count518
  br i1 %exitcond519.not, label %._crit_edge425, label %bb.y, !llvm.loop !170

._crit_edge425:                                   ; preds = %lv_color_32_32_mix.exit302
  %i.ii = getelementptr inbounds nuw i8, ptr %.7241426, i64 %i.gq
  %i.ij = getelementptr inbounds nuw i8, ptr %.7427, i64 %i.gr
  %i.ik = getelementptr inbounds i8, ptr %.2225428, i64 %i.gs
  %i.il = add nuw nsw i32 %.4429, 1               ; 2 uses
  %exitcond520.not = icmp eq i32 %i.il, %i.d
  br i1 %exitcond520.not, label %.loopexit, label %.preheader, !llvm.loop !171

.preheader354:                                    ; preds = %.preheader354.preheader, %._crit_edge
  %.5362 = phi i32 [ %i.mf, %._crit_edge ], [ 0, %.preheader354.preheader ]
  %.3226361 = phi ptr [ %.4227, %._crit_edge ], [ %i.o, %.preheader354.preheader ] ; 3 uses
  %.8360 = phi ptr [ %i.me, %._crit_edge ], [ %i.k, %.preheader354.preheader ] ; 2 uses
  %.8242359 = phi ptr [ %i.md, %._crit_edge ], [ %i.g, %.preheader354.preheader ] ; 2 uses
  %i.im = icmp eq ptr %.3226361, null             ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader354, %blend_non_normal_pixel.exit
  %indvars.iv458 = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next459, %blend_non_normal_pixel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.8360, i64 %indvars.iv ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !18
  %i.is = load i8, ptr %i.in, align 1, !tbaa !18
  br i1 %i.im, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = getelementptr inbounds nuw i8, ptr %.3226361, i64 %indvars.iv458
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !18
  %i.iv = call i8 @llvm.umulh.i8(i8 %i.iu, i8 %.fr434)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.6.0 = phi i8 [ %i.iv, %bb.aj ], [ %.fr434, %bb.ai ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.8242359, i64 %indvars.iv458 ; 14 uses
  %i.ix = load i32, ptr %i.v, align 4, !tbaa !31
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.ip to i32    ; 4 uses
  %.sroa.4.0.insert.ext = zext i8 %i.ir to i32    ; 4 uses
  %.sroa.0.0.insert.ext = zext i8 %i.is to i32    ; 4 uses
  switch i32 %i.ix, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !32
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nuw nsw i32 %i.ja, %.sroa.5.0.insert.ext
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.jb, i32 255)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !33
  %i.je = zext i8 %i.jd to i32
  %i.jf = add nuw nsw i32 %i.je, %.sroa.4.0.insert.ext
  %i.jg = call i32 @llvm.umin.i32(i32 %i.jf, i32 255)
  %i.jh = load i8, ptr %i.iw, align 1, !tbaa !34
  %i.ji = zext i8 %i.jh to i32
  %i.jj = add nuw nsw i32 %i.ji, %.sroa.0.0.insert.ext
  %i.jk = call i32 @llvm.umin.i32(i32 %i.jj, i32 255)
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !32
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub nsw i32 %i.jn, %.sroa.5.0.insert.ext
  %spec.select60.i = call i32 @llvm.smax.i32(i32 %i.jo, i32 0)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !33
  %i.jr = zext i8 %i.jq to i32
  %i.js = sub nsw i32 %i.jr, %.sroa.4.0.insert.ext
  %i.jt = call i32 @llvm.smax.i32(i32 %i.js, i32 0)
  %i.ju = load i8, ptr %i.iw, align 1, !tbaa !34
  %i.jv = zext i8 %i.ju to i32
  %i.jw = sub nsw i32 %i.jv, %.sroa.0.0.insert.ext
  %i.jx = call i32 @llvm.smax.i32(i32 %i.jw, i32 0)
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !32
  %i.ka = zext i8 %i.jz to i32
  %i.kb = mul nuw nsw i32 %i.ka, %.sroa.5.0.insert.ext
  %i.kc = lshr i32 %i.kb, 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !33
  %i.kf = zext i8 %i.ke to i32
  %i.kg = mul nuw nsw i32 %i.kf, %.sroa.4.0.insert.ext
  %i.kh = lshr i32 %i.kg, 8
  %i.ki = load i8, ptr %i.iw, align 1, !tbaa !34
  %i.kj = zext i8 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.kj, %.sroa.0.0.insert.ext
  %i.kl = lshr i32 %i.kk, 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.km = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !32
  %i.ko = zext i8 %i.kn to i32
  %i.kp = sub nsw i32 %i.ko, %.sroa.5.0.insert.ext
  %i.kq = call i32 @llvm.abs.i32(i32 %i.kp, i1 true)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !33
  %i.kt = zext i8 %i.ks to i32
  %i.ku = sub nsw i32 %i.kt, %.sroa.4.0.insert.ext
  %i.kv = call i32 @llvm.abs.i32(i32 %i.ku, i1 true)
  %i.kw = load i8, ptr %i.iw, align 1, !tbaa !34
  %i.kx = zext i8 %i.kw to i32
  %i.ky = sub nsw i32 %i.kx, %.sroa.0.0.insert.ext
  %i.kz = call i32 @llvm.abs.i32(i32 %i.ky, i1 true)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.sroa.11.0.i = phi i32 [ %spec.select.i, %bb.al ], [ %spec.select60.i, %bb.am ], [ %i.kc, %bb.an ], [ %i.kq, %bb.ao ]
  %.sroa.7.0.i = phi i32 [ %i.jg, %bb.al ], [ %i.jt, %bb.am ], [ %i.kh, %bb.an ], [ %i.kv, %bb.ao ]
  %.sroa.01.0.i = phi i32 [ %i.jk, %bb.al ], [ %i.jx, %bb.am ], [ %i.kl, %bb.an ], [ %i.kz, %bb.ao ]
  %.sroa.11.0.insert.ext.i = shl nuw nsw i32 %.sroa.11.0.i, 16
  %.sroa.11.0.insert.shift.i = and i32 %.sroa.11.0.insert.ext.i, 16711680
  %.sroa.11.0.insert.insert.i = or disjoint i32 %.sroa.11.0.insert.shift.i, %.sroa.6.0.insert.shift
  %.sroa.7.0.insert.ext.i = shl nuw nsw i32 %.sroa.7.0.i, 8
  %.sroa.7.0.insert.shift.i = and i32 %.sroa.7.0.insert.ext.i, 65280
  %.sroa.7.0.insert.insert.i = or disjoint i32 %.sroa.11.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.01.0.insert.insert.i = add nuw nsw i32 %.sroa.7.0.insert.insert.i, %.sroa.01.0.i ; 8 uses
  %i.la = load i32, ptr %i.iw, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i303 = trunc i32 %.sroa.01.0.insert.insert.i to i24
  %.sroa.654.0.extract.shift.i304 = lshr i32 %.sroa.01.0.insert.insert.i, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i305 = lshr i32 %i.la, 24 ; 4 uses
  %i.lb = icmp ugt i32 %.sroa.01.0.insert.insert.i, -50331649
  %i.lc = icmp ult i32 %i.la, 50331648
  %or.cond.i306 = select i1 %i.lb, i1 true, i1 %i.lc
  br i1 %or.cond.i306, label %lv_color_32_32_mix.exit330, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.018.0.extract.trunc.i307 = trunc i32 %i.la to i24
  %i.ld = icmp ult i32 %.sroa.01.0.insert.insert.i, 50331648
  br i1 %i.ld, label %lv_color_32_32_mix.exit330, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.le = icmp eq i32 %.sroa.6.0.extract.shift.i305, 255
  br i1 %i.le, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lf = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i, i32 %i.la) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i328 = trunc i32 %i.lf to i24
  %.sroa.5.0.extract.shift.i329 = lshr i32 %i.lf, 24
  br label %lv_color_32_32_mix.exit330

bb.at:                                            ; preds = %bb.ar
  %i.lg = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.lh = zext i8 %i.lg to i32
  %.not.i308 = icmp eq i32 %.sroa.6.0.extract.shift.i305, %i.lh
  %i.li = load i8, ptr %i.ab, align 1
  %i.lj = zext i8 %i.li to i32
  %.not77.i327 = icmp eq i32 %.sroa.654.0.extract.shift.i304, %i.lj
  %or.cond342 = select i1 %.not.i308, i1 %.not77.i327, i1 false
  br i1 %or.cond342, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lk = xor i32 %.sroa.654.0.extract.shift.i304, 255
  %i.ll = xor i32 %.sroa.6.0.extract.shift.i305, 255
  %i.lm = mul nuw nsw i32 %i.lk, %i.ll
  %i.ln = lshr i32 %i.lm, 8
  %i.lo = trunc nuw i32 %i.ln to i8
  %i.lp = xor i8 %i.lo, -1                        ; 2 uses
  store i8 %i.lp, ptr %i.t, align 4, !tbaa !13
  %i.lq = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i304 to i16
  %.lhs.trunc.i309 = mul nuw i16 %i.lq, 255
  %.rhs.trunc.i310 = zext i8 %i.lp to i16
  %i.lr = udiv i16 %.lhs.trunc.i309, %.rhs.trunc.i310
  %i.ls = trunc i16 %i.lr to i8
  store i8 %i.ls, ptr %i.u, align 1, !tbaa !14
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.lt = load i32, ptr %i.r, align 4
  %i.lu = call zeroext i1 @lv_color32_eq(i32 %i.la, i32 %i.lt) #7
  br i1 %i.lu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lv = load i32, ptr %2, align 4
  %i.lw = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i, i32 %i.lv) #7
  br i1 %i.lw, label %._crit_edge.i322, label %bb.ax

._crit_edge.i322:                                 ; preds = %bb.aw
  %.sroa.074.0.copyload.pre.i324 = load i24, ptr %i.s, align 4, !tbaa !18
  %.sroa.5.0.copyload.pre.i326 = load i8, ptr %i.ac, align 1, !tbaa !18
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %.sroa.01.0.insert.insert.i, ptr %2, align 4
  store i32 %i.la, ptr %i.r, align 4
  %i.lx = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i311 = zext i8 %i.lx to i32
  %.sroa.654.0.insert.shift64.i312 = shl nuw i32 %.sroa.654.0.insert.ext63.i311, 24
  %.sroa.045.0.insert.ext51.i313 = and i32 %.sroa.01.0.insert.insert.i, 16777215
  %.sroa.045.0.insert.insert53.i314 = or disjoint i32 %.sroa.654.0.insert.shift64.i312, %.sroa.045.0.insert.ext51.i313
  %i.ly = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i314, i32 %i.la) #7 ; 2 uses
  store i32 %i.ly, ptr %i.s, align 4, !tbaa !18
  %i.lz = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.lz, ptr %i.ac, align 1, !tbaa !20
  %i.ma = trunc i32 %i.ly to i24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i322
  %.sroa.5.0.copyload.i315 = phi i8 [ %.sroa.5.0.copyload.pre.i326, %._crit_edge.i322 ], [ %i.lz, %bb.ax ]
  %.sroa.074.0.copyload.i316 = phi i24 [ %.sroa.074.0.copyload.pre.i324, %._crit_edge.i322 ], [ %i.ma, %bb.ax ]
  %i.mb = zext i8 %.sroa.5.0.copyload.i315 to i32
  br label %lv_color_32_32_mix.exit330

lv_color_32_32_mix.exit330:                       ; preds = %bb.ap, %bb.aq, %bb.as, %bb.ay
  %.sroa.074.0.i317 = phi i24 [ %.sroa.074.0.copyload.i316, %bb.ay ], [ %.sroa.045.0.extract.trunc.i303, %bb.ap ], [ %.sroa.074.0.extract.trunc.i328, %bb.as ], [ %.sroa.018.0.extract.trunc.i307, %bb.aq ]
  %.sroa.5.0.i318 = phi i32 [ %i.mb, %bb.ay ], [ %.sroa.654.0.extract.shift.i304, %bb.ap ], [ %.sroa.5.0.extract.shift.i329, %bb.as ], [ %.sroa.6.0.extract.shift.i305, %bb.aq ]
  %.sroa.5.0.insert.shift.i319 = shl nuw i32 %.sroa.5.0.i318, 24
  %.sroa.074.0.insert.ext.i320 = zext i24 %.sroa.074.0.i317 to i32
  %.sroa.074.0.insert.insert.i321 = or disjoint i32 %.sroa.5.0.insert.shift.i319, %.sroa.074.0.insert.ext.i320
  store i32 %.sroa.074.0.insert.insert.i321, ptr %i.iw, align 1, !tbaa !18
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.ak, %lv_color_32_32_mix.exit330
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ag
  %exitcond.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ai, !llvm.loop !172

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.mc = getelementptr inbounds i8, ptr %.3226361, i64 %i.ad
  %.4227 = select i1 %i.im, ptr null, ptr %i.mc
  %i.md = getelementptr inbounds nuw i8, ptr %.8242359, i64 %i.ae
  %i.me = getelementptr inbounds nuw i8, ptr %.8360, i64 %i.af
  %i.mf = add nuw nsw i32 %.5362, 1               ; 2 uses
  %exitcond463.not = icmp eq i32 %i.mf, %i.d
  br i1 %exitcond463.not, label %.loopexit, label %.preheader354, !llvm.loop !173

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge425, %bb.e, %.preheader352, %bb.d, %.preheader351.lr.ph, %.preheader347.lr.ph, %.preheader355, %.preheader354.lr.ph, %.preheader.lr.ph, %.loopexit346
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_color_mix32(i32, i32) local_unnamed_addr #2

declare zeroext i1 @lv_color32_eq(i32, i32) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!12 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !4, i64 12, !4, i64 13}
!13 = !{!12, !4, i64 12}
!14 = !{!12, !4, i64 13}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!4, !4, i64 0}
!19 = !{!12, !4, i64 7}
!20 = !{!12, !4, i64 11}
!21 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!22 = !{!21, !5, i64 8}
!23 = !{!21, !5, i64 12}
!24 = !{!21, !4, i64 56}
!25 = !{!21, !8, i64 0}
!26 = !{!21, !5, i64 16}
!27 = !{!21, !8, i64 40}
!28 = !{!21, !5, i64 48}
!29 = !{!21, !9, i64 24}
!30 = !{!21, !5, i64 32}
!31 = !{!21, !5, i64 60}
!32 = !{!11, !4, i64 2}
!33 = !{!11, !4, i64 1}
!34 = !{!11, !4, i64 0}
!35 = !{!11, !4, i64 3}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15, !17, !16}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !62}
!42 = distinct !{!42, !15, !17, !16}
!43 = distinct !{!43, !15, !16, !17}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15, !17, !16}
!46 = distinct !{!46, !15, !16, !17}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
end_hunk_7
