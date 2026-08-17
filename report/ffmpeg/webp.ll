inline.NumInlined: 78
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@vp8_lossless_decode_frame:bb.a

.preheader91.i:                                   ; preds = %bb.al
  %i.rr = load ptr, ptr %i.gz, align 8, !tbaa !153 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 108
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !112
  %i.ru = icmp sgt i32 %i.rt, 0
  br i1 %i.ru, label %.lr.ph96.i, label %._crit_edge97.i

.lr.ph96.i:                                       ; preds = %.preheader91.i
  %i.rv = sub nuw nsw i32 32, %i.rl
  %i.rw = lshr i32 -1, %i.rv
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i122, %.lr.ph96.i
  %i.rx = phi ptr [ %i.rr, %.lr.ph96.i ], [ %i.tq, %._crit_edge.i122 ] ; 5 uses
  %.07995.i = phi i32 [ 0, %.lr.ph96.i ], [ %i.tr, %._crit_edge.i122 ] ; 3 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !103
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 64
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !54 ; 3 uses
  %i.sb = mul nsw i32 %i.sa, %.07995.i
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr %i.ry, i64 %i.sc
  %i.se = sext i32 %i.sa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr align 1 %i.sd, i64 %i.se, i1 false)
  %i.sf = shl nsw i32 %i.sa, 3                    ; 2 uses
  %or.cond.i.i121 = icmp ult i32 %i.sf, 2147483135
  %i.sg = add nuw nsw i32 %i.sf, 8
  %i.sh = select i1 %or.cond.i.i121, i32 %i.sg, i32 8 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.rx, i64 104
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !113
  %i.sk = icmp sgt i32 %i.sj, 0
  br i1 %i.sk, label %.lr.ph.preheader.i123, label %._crit_edge.i122

.lr.ph.preheader.i123:                            ; preds = %bb.am
  %i.sl = call i32 @llvm.umin.i32(i32 %i.sh, i32 16)
  br label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %.lr.ph.i124, %.lr.ph.preheader.i123
  %indvars.iv.i125 = phi i64 [ 0, %.lr.ph.preheader.i123 ], [ %indvars.iv.next.i126, %.lr.ph.i124 ] ; 2 uses
  %i.sm = phi ptr [ %i.rx, %.lr.ph.preheader.i123 ], [ %i.tl, %.lr.ph.i124 ] ; 2 uses
  %.07494.i = phi i32 [ 0, %.lr.ph.preheader.i123 ], [ %.175.i, %.lr.ph.i124 ]
  %.sroa.5.092.i = phi i32 [ %i.sl, %.lr.ph.preheader.i123 ], [ %.sroa.5.1.i, %.lr.ph.i124 ] ; 3 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !103
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !54
  %i.sq = mul nsw i32 %i.sp, %.07995.i
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds i8, ptr %i.sn, i64 %i.sr
  %i.st = shl nuw nsw i64 %indvars.iv.i125, 2
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.st
  %i.sv = lshr i32 %.sroa.5.092.i, 3
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 1, !tbaa !62
  %i.sz = and i32 %.sroa.5.092.i, 7
  %i.ta = lshr i32 %i.sy, %i.sz
  %i.tb = and i32 %i.ta, %i.rw
  %i.tc = add i32 %.sroa.5.092.i, %i.rl           ; 2 uses
  %i.td = call i32 @llvm.umin.i32(i32 %i.sh, i32 %i.tc)
  %i.te = trunc nuw nsw i32 %i.tb to i8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.su, i64 2
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !62
  %i.tg = add nsw i32 %.07494.i, 1                ; 2 uses
  %i.th = load i32, ptr %i.hg, align 8, !tbaa !150
  %i.ti = shl nuw i32 1, %i.th
  %i.tj = icmp eq i32 %i.tg, %i.ti                ; 2 uses
  %i.tk = add i32 %i.td, 24
  %minmaxop.i = select i1 %i.tj, i32 %i.tk, i32 %i.tc
  %.sroa.5.1.i = call i32 @llvm.umin.i32(i32 %minmaxop.i, i32 %i.sh)
  %.175.i = select i1 %i.tj, i32 0, i32 %i.tg
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i125, 1 ; 2 uses
  %i.tl = load ptr, ptr %i.gz, align 8, !tbaa !153 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 104
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !113
  %i.to = sext i32 %i.tn to i64
  %i.tp = icmp slt i64 %indvars.iv.next.i126, %i.to
  br i1 %i.tp, label %.lr.ph.i124, label %._crit_edge.i122, !llvm.loop !165

._crit_edge.i122:                                 ; preds = %.lr.ph.i124, %bb.am
  %i.tq = phi ptr [ %i.rx, %bb.am ], [ %i.tl, %.lr.ph.i124 ] ; 2 uses
  %i.tr = add nuw nsw i32 %.07995.i, 1            ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 108
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !112
  %i.tu = icmp slt i32 %i.tr, %i.tt
  br i1 %i.tu, label %bb.am, label %._crit_edge97.i, !llvm.loop !166

._crit_edge97.i:                                  ; preds = %._crit_edge.i122, %.preheader91.i
  call void @av_free(ptr noundef nonnull %i.rq) #12
  %i.tv = load i32, ptr %i.br, align 8, !tbaa !52
  store i32 %i.tv, ptr %i.bs, align 4, !tbaa !149
  %.pre188 = load ptr, ptr %i.gz, align 8, !tbaa !153
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge97.i, %bb.ak
  %i.tw = phi ptr [ %.pre188, %._crit_edge97.i ], [ %.pre189, %bb.ak ] ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 108
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !112 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 104
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !113 ; 3 uses
  %i.ub = mul nsw i32 %i.ua, %i.ty
  %i.uc = icmp sgt i32 %i.ub, 300
  br i1 %i.uc, label %bb.ao, label %.preheader90.i

.preheader90.i:                                   ; preds = %bb.an
  %i.ud = icmp sgt i32 %i.ty, 0
  %i.ue = icmp sgt i32 %i.ua, 0
  %or.cond = and i1 %i.ud, %i.ue
  br i1 %or.cond, label %.preheader89.i, label %apply_predictor_transform.exit

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.uf = load ptr, ptr %i.hh, align 8, !tbaa !153 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 104
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !113
  %i.ui = shl nsw i32 %i.uh, 2                    ; 3 uses
  %i.uj = icmp ult i32 %i.ui, 1025
  br i1 %i.uj, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 1051) #12
  call void @abort() #13
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.uk = load ptr, ptr %i.uf, align 8, !tbaa !103
  %i.ul = zext nneg i32 %i.ui to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.uk, i64 %i.ul, i1 false)
  %i.um = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ul
  %i.un = sub nuw nsw i32 1024, %i.ui
  %i.uo = zext nneg i32 %i.un to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.um, i8 0, i64 %i.uo, i1 false)
  %i.up = icmp sgt i32 %i.ty, 0
  %i.uq = icmp sgt i32 %i.ua, 0
  %or.cond.i119 = and i1 %i.up, %i.uq
  br i1 %or.cond.i119, label %.preheader.i120, label %._crit_edge106.i

.preheader.i120:                                  ; preds = %bb.aq, %._crit_edge104.i
  %i.ur = phi ptr [ %i.vp, %._crit_edge104.i ], [ %i.tw, %bb.aq ] ; 3 uses
  %.180105.i = phi i32 [ %i.vq, %._crit_edge104.i ], [ 0, %bb.aq ] ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 104
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !113
  %i.uu = icmp sgt i32 %i.ut, 0
  br i1 %i.uu, label %.lr.ph103.i, label %._crit_edge104.i

.lr.ph103.i:                                      ; preds = %.preheader.i120, %.lr.ph103.i
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i, %.lr.ph103.i ], [ 0, %.preheader.i120 ] ; 2 uses
  %i.uv = phi ptr [ %i.vk, %.lr.ph103.i ], [ %i.ur, %.preheader.i120 ] ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !103
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 64
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !54
  %i.uz = mul nsw i32 %i.uy, %.180105.i
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds i8, ptr %i.uw, i64 %i.va
  %i.vc = shl nuw nsw i64 %indvars.iv113.i, 2
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.vc ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 2
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !62
  %i.vg = zext i8 %i.vf to i64
  %i.vh = shl nuw nsw i64 %i.vg, 2
  %i.vi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vh
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !62
  store i32 %i.vj, ptr %i.vd, align 4, !tbaa !62
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 2 uses
  %i.vk = load ptr, ptr %i.gz, align 8, !tbaa !153 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 104
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !113
  %i.vn = sext i32 %i.vm to i64
  %i.vo = icmp slt i64 %indvars.iv.next114.i, %i.vn
  br i1 %i.vo, label %.lr.ph103.i, label %._crit_edge104.i, !llvm.loop !167

._crit_edge104.i:                                 ; preds = %.lr.ph103.i, %.preheader.i120
  %i.vp = phi ptr [ %i.ur, %.preheader.i120 ], [ %i.vk, %.lr.ph103.i ] ; 2 uses
  %i.vq = add nuw nsw i32 %.180105.i, 1           ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 108
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !112
  %i.vt = icmp slt i32 %i.vq, %i.vs
  br i1 %i.vt, label %.preheader.i120, label %._crit_edge106.i, !llvm.loop !168

._crit_edge106.i:                                 ; preds = %._crit_edge104.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %apply_predictor_transform.exit

.preheader89.i:                                   ; preds = %.preheader90.i, %._crit_edge100.i
  %i.vu = phi ptr [ %i.wx, %._crit_edge100.i ], [ %i.tw, %.preheader90.i ] ; 3 uses
  %.281101.i = phi i32 [ %i.wy, %._crit_edge100.i ], [ 0, %.preheader90.i ] ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 104
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !113
  %i.vx = icmp sgt i32 %i.vw, 0
  br i1 %i.vx, label %.lr.ph99.i, label %._crit_edge100.i

.lr.ph99.i:                                       ; preds = %.preheader89.i, %bb.as
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %bb.as ], [ 0, %.preheader89.i ] ; 2 uses
  %i.vy = phi ptr [ %i.ws, %bb.as ], [ %i.vu, %.preheader89.i ] ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !103
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 64
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !54
  %i.wc = mul nsw i32 %i.wb, %.281101.i
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds i8, ptr %i.vz, i64 %i.wd
  %i.wf = shl nuw nsw i64 %indvars.iv110.i, 2
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wf ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 2
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !62
  %i.wj = zext i8 %i.wi to i32                    ; 2 uses
  %i.wk = load ptr, ptr %i.hh, align 8, !tbaa !153 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 104
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !113
  %.not.i118 = icmp sgt i32 %i.wm, %i.wj
  br i1 %.not.i118, label %bb.ar, label %6

6:                                                ; preds = %.lr.ph99.i
  store i32 0, ptr %i.wg, align 1, !tbaa !62
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph99.i
  %i.wn = load ptr, ptr %i.wk, align 8, !tbaa !103
  %i.wo = shl nuw nsw i32 %i.wj, 2
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !62
  store i32 %i.wr, ptr %i.wg, align 4, !tbaa !62
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %6
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %i.ws = load ptr, ptr %i.gz, align 8, !tbaa !153 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 104
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !113
  %i.wv = sext i32 %i.wu to i64
  %i.ww = icmp slt i64 %indvars.iv.next111.i, %i.wv
  br i1 %i.ww, label %.lr.ph99.i, label %._crit_edge100.i, !llvm.loop !169

._crit_edge100.i:                                 ; preds = %bb.as, %.preheader89.i
  %i.wx = phi ptr [ %i.vu, %.preheader89.i ], [ %i.ws, %bb.as ] ; 2 uses
  %i.wy = add nuw nsw i32 %.281101.i, 1           ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 108
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !112
  %i.xb = icmp slt i32 %i.wy, %i.xa
  br i1 %i.xb, label %.preheader89.i, label %apply_predictor_transform.exit, !llvm.loop !170

apply_predictor_transform.exit:                   ; preds = %._crit_edge100.i, %._crit_edge.i112, %._crit_edge.i104, %._crit_edge.i, %._crit_edge106.i, %.preheader90.i, %.preheader.lr.ph.i110, %bb.aj, %.preheader.lr.ph.i102, %bb.ai, %.preheader.lr.ph.i, %bb.ah, %bb.ag
  %i.xc = icmp sgt i64 %indvars.iv, 1
  br i1 %i.xc, label %bb.ag, label %._crit_edge162, !llvm.loop !171

._crit_edge162:                                   ; preds = %apply_predictor_transform.exit, %bb.af
  store i32 1, ptr %2, align 4, !tbaa !54
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.xd, align 8, !tbaa !123
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !172
  %i.xg = or i32 %i.xf, 34
  store i32 %i.xg, ptr %i.xe, align 4, !tbaa !172
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.u, %bb.s, %bb.al, %.loopexit39.i, %bb.q, %bb.ae, %._crit_edge162
  %.6 = phi i32 [ %4, %._crit_edge162 ], [ %i.hb, %bb.ae ], [ -12, %bb.al ], [ -1094995529, %bb.q ], [ -1094995529, %.loopexit39.i ], [ %i.ex, %bb.u ], [ %i.dy, %bb.s ], [ %i.fp, %bb.z ]
  %i.xh = getelementptr inbounds nuw i8, ptr %i.d, i64 6688 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.d, i64 6712
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !173
  call void @av_free(ptr noundef %i.xj) #12
  %i.xk = load i32, ptr %i.xh, align 8, !tbaa !174
  %.not.i127 = icmp eq i32 %i.xk, 0
  br i1 %.not.i127, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.thread
  %i.xl = getelementptr inbounds nuw i8, ptr %i.d, i64 6740
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !155
  %.not15.i = icmp eq i32 %i.xm, 0
  br i1 %.not15.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.xn = getelementptr inbounds nuw i8, ptr %i.d, i64 6696
  call void @av_frame_free(ptr noundef nonnull %i.xn) #12
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.thread
  %i.xo = getelementptr inbounds nuw i8, ptr %i.d, i64 6728 ; 7 uses
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !175 ; 2 uses
  %.not16.i = icmp eq ptr %i.xp, null
  br i1 %.not16.i, label %image_ctx_free.exit, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.av
  %i.xq = getelementptr inbounds nuw i8, ptr %i.d, i64 6720 ; 2 uses
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !176
  %i.xs = icmp sgt i32 %i.xr, 0
  br i1 %i.xs, label %.preheader.i129, label %._crit_edge.i128

.preheader.i129:                                  ; preds = %.preheader17.i, %.preheader.i129
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131, %.preheader.i129 ], [ 0, %.preheader17.i ] ; 2 uses
  %i.xt = mul nuw nsw i64 %indvars.iv.i130, 5     ; 5 uses
  %i.xu = load ptr, ptr %i.xo, align 8, !tbaa !175
  %i.xv = getelementptr inbounds nuw [40 x i8], ptr %i.xu, i64 %i.xt
  call void @ff_vlc_free(ptr noundef %i.xv) #12
  %i.xw = load ptr, ptr %i.xo, align 8, !tbaa !175
  %i.xx = getelementptr inbounds nuw [40 x i8], ptr %i.xw, i64 %i.xt
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 40
  call void @ff_vlc_free(ptr noundef nonnull %i.xy) #12
  %i.xz = load ptr, ptr %i.xo, align 8, !tbaa !175
  %i.ya = getelementptr inbounds nuw [40 x i8], ptr %i.xz, i64 %i.xt
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 80
  call void @ff_vlc_free(ptr noundef nonnull %i.yb) #12
  %i.yc = load ptr, ptr %i.xo, align 8, !tbaa !175
  %i.yd = getelementptr inbounds nuw [40 x i8], ptr %i.yc, i64 %i.xt
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 120
  call void @ff_vlc_free(ptr noundef nonnull %i.ye) #12
  %i.yf = load ptr, ptr %i.xo, align 8, !tbaa !175
  %i.yg = getelementptr inbounds nuw [40 x i8], ptr %i.yf, i64 %i.xt
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 160
  call void @ff_vlc_free(ptr noundef nonnull %i.yh) #12
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %i.yi = load i32, ptr %i.xq, align 8, !tbaa !176
  %i.yj = sext i32 %i.yi to i64
  %i.yk = icmp slt i64 %indvars.iv.next.i131, %i.yj
  br i1 %i.yk, label %.preheader.i129, label %._crit_edge.loopexit.i132, !llvm.loop !177

._crit_edge.loopexit.i132:                        ; preds = %.preheader.i129
  %.pre.i133 = load ptr, ptr %i.xo, align 8, !tbaa !175
  br label %._crit_edge.i128

._crit_edge.i128:                                 ; preds = %._crit_edge.loopexit.i132, %.preheader17.i
  %i.yl = phi ptr [ %.pre.i133, %._crit_edge.loopexit.i132 ], [ %i.xp, %.preheader17.i ]
  call void @av_free(ptr noundef %i.yl) #12
  br label %image_ctx_free.exit

image_ctx_free.exit:                              ; preds = %bb.av, %._crit_edge.i128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xh, i8 0, i64 56, i1 false)
  %i.ym = getelementptr inbounds nuw i8, ptr %i.d, i64 6744 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.d, i64 6768
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !173
  call void @av_free(ptr noundef %i.yo) #12
  %i.yp = load i32, ptr %i.ym, align 8, !tbaa !174
  %.not.i127.1 = icmp eq i32 %i.yp, 0
  br i1 %.not.i127.1, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %image_ctx_free.exit
  %i.yq = getelementptr inbounds nuw i8, ptr %i.d, i64 6796
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !155
  %.not15.i.1 = icmp eq i32 %i.yr, 0
  br i1 %.not15.i.1, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ys = getelementptr inbounds nuw i8, ptr %i.d, i64 6752
  call void @av_frame_free(ptr noundef nonnull %i.ys) #12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %image_ctx_free.exit
  %i.yt = getelementptr inbounds nuw i8, ptr %i.d, i64 6784 ; 7 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !175 ; 2 uses
  %.not16.i.1 = icmp eq ptr %i.yu, null
  br i1 %.not16.i.1, label %image_ctx_free.exit.1, label %.preheader17.i.1

.preheader17.i.1:                                 ; preds = %bb.ay
  %i.yv = getelementptr inbounds nuw i8, ptr %i.d, i64 6776 ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !176
  %i.yx = icmp sgt i32 %i.yw, 0
  br i1 %i.yx, label %.preheader.i129.1, label %._crit_edge.i128.1

.preheader.i129.1:                                ; preds = %.preheader17.i.1, %.preheader.i129.1
  %indvars.iv.i130.1 = phi i64 [ %indvars.iv.next.i131.1, %.preheader.i129.1 ], [ 0, %.preheader17.i.1 ] ; 2 uses
  %i.yy = mul nuw nsw i64 %indvars.iv.i130.1, 5   ; 5 uses
  %i.yz = load ptr, ptr %i.yt, align 8, !tbaa !175
  %i.za = getelementptr inbounds nuw [40 x i8], ptr %i.yz, i64 %i.yy
  call void @ff_vlc_free(ptr noundef %i.za) #12
  %i.zb = load ptr, ptr %i.yt, align 8, !tbaa !175
  %i.zc = getelementptr inbounds nuw [40 x i8], ptr %i.zb, i64 %i.yy
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 40
  call void @ff_vlc_free(ptr noundef nonnull %i.zd) #12
  %i.ze = load ptr, ptr %i.yt, align 8, !tbaa !175
  %i.zf = getelementptr inbounds nuw [40 x i8], ptr %i.ze, i64 %i.yy
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 80
  call void @ff_vlc_free(ptr noundef nonnull %i.zg) #12
  %i.zh = load ptr, ptr %i.yt, align 8, !tbaa !175
  %i.zi = getelementptr inbounds nuw [40 x i8], ptr %i.zh, i64 %i.yy
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 120
  call void @ff_vlc_free(ptr noundef nonnull %i.zj) #12
  %i.zk = load ptr, ptr %i.yt, align 8, !tbaa !175
  %i.zl = getelementptr inbounds nuw [40 x i8], ptr %i.zk, i64 %i.yy
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 160
  call void @ff_vlc_free(ptr noundef nonnull %i.zm) #12
  %indvars.iv.next.i131.1 = add nuw nsw i64 %indvars.iv.i130.1, 1 ; 2 uses
  %i.zn = load i32, ptr %i.yv, align 8, !tbaa !176
  %i.zo = sext i32 %i.zn to i64
  %i.zp = icmp slt i64 %indvars.iv.next.i131.1, %i.zo
  br i1 %i.zp, label %.preheader.i129.1, label %._crit_edge.loopexit.i132.1, !llvm.loop !177

._crit_edge.loopexit.i132.1:                      ; preds = %.preheader.i129.1
  %.pre.i133.1 = load ptr, ptr %i.yt, align 8, !tbaa !175
  br label %._crit_edge.i128.1

._crit_edge.i128.1:                               ; preds = %._crit_edge.loopexit.i132.1, %.preheader17.i.1
  %i.zq = phi ptr [ %.pre.i133.1, %._crit_edge.loopexit.i132.1 ], [ %i.yu, %.preheader17.i.1 ]
  call void @av_free(ptr noundef %i.zq) #12
  br label %image_ctx_free.exit.1

image_ctx_free.exit.1:                            ; preds = %._crit_edge.i128.1, %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ym, i8 0, i64 56, i1 false)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.d, i64 6800 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.d, i64 6824
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !173
  call void @av_free(ptr noundef %i.zt) #12
  %i.zu = load i32, ptr %i.zr, align 8, !tbaa !174
  %.not.i127.2 = icmp eq i32 %i.zu, 0
  br i1 %.not.i127.2, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %image_ctx_free.exit.1
  %i.zv = getelementptr inbounds nuw i8, ptr %i.d, i64 6852
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !155
  %.not15.i.2 = icmp eq i32 %i.zw, 0
  br i1 %.not15.i.2, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.zx = getelementptr inbounds nuw i8, ptr %i.d, i64 6808
  call void @av_frame_free(ptr noundef nonnull %i.zx) #12
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %image_ctx_free.exit.1
  %i.zy = getelementptr inbounds nuw i8, ptr %i.d, i64 6840 ; 7 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !175 ; 2 uses
  %.not16.i.2 = icmp eq ptr %i.zz, null
  br i1 %.not16.i.2, label %image_ctx_free.exit.2, label %.preheader17.i.2

.preheader17.i.2:                                 ; preds = %bb.bb
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.d, i64 6832 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !176
end_hunk_0
