Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_hotpixels?download=true
inline.NumInlined: 19
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@process:bb.a

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1112.i.2 = phi i32 [ %i.pw, %bb.af ], [ %.0111123.i.2, %bb.ae ] ; 2 uses
  %indvars.iv.next.i36.2 = add nuw nsw i64 %indvars.iv.i35.2, 1
  %i.px = icmp samesign ult i64 %indvars.iv.i35.2, 19
  %i.py = icmp slt i32 %.1112.i.2, 4
  %i.pz = select i1 %i.px, i1 %i.py, i1 false
  br i1 %i.pz, label %bb.ae, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.qa = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !65
  %i.qc = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  %i.qd = insertelement <2 x i32> <i32 603, i32 poison>, i32 %i.ev, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %indvars.iv.i35.3 = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next.i36.3, %bb.ak ] ; 3 uses
  %.0111123.i.3 = phi i32 [ 0, %bb.ah ], [ %.1112.i.3, %bb.ak ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.3
  %i.qf = load <2 x i32>, ptr %i.qe, align 8, !tbaa !103 ; 3 uses
  %i.qg = add <2 x i32> %i.qd, %i.qf
  %i.qh = srem <2 x i32> %i.qg, splat (i32 6)     ; 2 uses
  %i.qi = extractelement <2 x i32> %i.qh, i64 1
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.qj
  %i.ql = extractelement <2 x i32> %i.qh, i64 0
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.qk, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !65
  %i.qp = icmp eq i8 %i.qb, %i.qo
  br i1 %i.qp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.qq = sext i32 %.0111123.i.3 to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.qq ; 2 uses
  %i.qs = extractelement <2 x i32> %i.qf, i64 0
  store i32 %i.qs, ptr %i.qr, align 8, !tbaa !103
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qu = extractelement <2 x i32> %i.qf, i64 1
  store i32 %i.qu, ptr %i.qt, align 4, !tbaa !103
  %i.qv = add nsw i32 %.0111123.i.3, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1112.i.3 = phi i32 [ %i.qv, %bb.aj ], [ %.0111123.i.3, %bb.ai ] ; 2 uses
  %indvars.iv.next.i36.3 = add nuw nsw i64 %indvars.iv.i35.3, 1
  %i.qw = icmp samesign ult i64 %indvars.iv.i35.3, 19
  %i.qx = icmp slt i32 %.1112.i.3, 4
  %i.qy = select i1 %i.qw, i1 %i.qx, i1 false
  br i1 %i.qy, label %bb.ai, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qz = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !65
  %i.rb = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.rc = insertelement <2 x i32> <i32 604, i32 poison>, i32 %i.ev, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %indvars.iv.i35.4 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next.i36.4, %bb.ao ] ; 3 uses
  %.0111123.i.4 = phi i32 [ 0, %bb.al ], [ %.1112.i.4, %bb.ao ] ; 3 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.4
  %i.re = load <2 x i32>, ptr %i.rd, align 8, !tbaa !103 ; 3 uses
  %i.rf = add <2 x i32> %i.rc, %i.re
  %i.rg = srem <2 x i32> %i.rf, splat (i32 6)     ; 2 uses
  %i.rh = extractelement <2 x i32> %i.rg, i64 1
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.ri
  %i.rk = extractelement <2 x i32> %i.rg, i64 0
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds i8, ptr %i.rj, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !65
  %i.ro = icmp eq i8 %i.ra, %i.rn
  br i1 %i.ro, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.rp = sext i32 %.0111123.i.4 to i64
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rp ; 2 uses
  %i.rr = extractelement <2 x i32> %i.re, i64 0
  store i32 %i.rr, ptr %i.rq, align 8, !tbaa !103
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.rt = extractelement <2 x i32> %i.re, i64 1
  store i32 %i.rt, ptr %i.rs, align 4, !tbaa !103
  %i.ru = add nsw i32 %.0111123.i.4, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1112.i.4 = phi i32 [ %i.ru, %bb.an ], [ %.0111123.i.4, %bb.am ] ; 2 uses
  %indvars.iv.next.i36.4 = add nuw nsw i64 %indvars.iv.i35.4, 1
  %i.rv = icmp samesign ult i64 %indvars.iv.i35.4, 19
  %i.rw = icmp slt i32 %.1112.i.4, 4
  %i.rx = select i1 %i.rv, i1 %i.rw, i1 false
  br i1 %i.rx, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ry = getelementptr inbounds nuw i8, ptr %i.et, i64 5
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !65
  %i.sa = getelementptr inbounds nuw i8, ptr %i.eu, i64 160
  %i.sb = insertelement <2 x i32> <i32 605, i32 poison>, i32 %i.ev, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %indvars.iv.i35.5 = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next.i36.5, %bb.as ] ; 3 uses
  %.0111123.i.5 = phi i32 [ 0, %bb.ap ], [ %.1112.i.5, %bb.as ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.5
  %i.sd = load <2 x i32>, ptr %i.sc, align 8, !tbaa !103 ; 3 uses
  %i.se = add <2 x i32> %i.sb, %i.sd
  %i.sf = srem <2 x i32> %i.se, splat (i32 6)     ; 2 uses
  %i.sg = extractelement <2 x i32> %i.sf, i64 1
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.sh
  %i.sj = extractelement <2 x i32> %i.sf, i64 0
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds i8, ptr %i.si, i64 %i.sk
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !65
  %i.sn = icmp eq i8 %i.rz, %i.sm
  br i1 %i.sn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.so = sext i32 %.0111123.i.5 to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.so ; 2 uses
  %i.sq = extractelement <2 x i32> %i.sd, i64 0
  store i32 %i.sq, ptr %i.sp, align 8, !tbaa !103
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.ss = extractelement <2 x i32> %i.sd, i64 1
  store i32 %i.ss, ptr %i.sr, align 4, !tbaa !103
  %i.st = add nsw i32 %.0111123.i.5, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1112.i.5 = phi i32 [ %i.st, %bb.ar ], [ %.0111123.i.5, %bb.aq ] ; 2 uses
  %indvars.iv.next.i36.5 = add nuw nsw i64 %indvars.iv.i35.5, 1
  %i.su = icmp samesign ult i64 %indvars.iv.i35.5, 19
  %i.sv = icmp slt i32 %.1112.i.5, 4
  %i.sw = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %i.sw, label %bb.aq, label %bb.at

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, 6
  br i1 %exitcond173.not.i, label %bb.j, label %.preheader121.i

bb.au:                                            ; preds = %bb.aw, %.preheader121.i
  %indvars.iv.i35 = phi i64 [ 0, %.preheader121.i ], [ %indvars.iv.next.i36, %bb.aw ] ; 3 uses
  %.0111123.i = phi i32 [ 0, %.preheader121.i ], [ %.1112.i, %bb.aw ] ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35
  %i.sy = load <2 x i32>, ptr %i.sx, align 8, !tbaa !103 ; 3 uses
  %i.sz = add <2 x i32> %i.ex, %i.sy
  %i.ta = srem <2 x i32> %i.sz, splat (i32 6)     ; 2 uses
  %i.tb = extractelement <2 x i32> %i.ta, i64 1
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.tc
  %i.te = extractelement <2 x i32> %i.ta, i64 0
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.td, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !65
  %i.ti = icmp eq i8 %i.ew, %i.th
  br i1 %i.ti, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.tj = sext i32 %.0111123.i to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.tj ; 2 uses
  %i.tl = extractelement <2 x i32> %i.sy, i64 0
  store i32 %i.tl, ptr %i.tk, align 8, !tbaa !103
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  %i.tn = extractelement <2 x i32> %i.sy, i64 1
  store i32 %i.tn, ptr %i.tm, align 4, !tbaa !103
  %i.to = add nsw i32 %.0111123.i, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1112.i = phi i32 [ %i.to, %bb.av ], [ %.0111123.i, %bb.au ] ; 2 uses
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  %i.tp = icmp samesign ult i64 %indvars.iv.i35, 19
  %i.tq = icmp slt i32 %.1112.i, 4
  %i.tr = select i1 %i.tp, i1 %i.tq, i1 false
  br i1 %i.tr, label %bb.au, label %bb.z

_process_xtrans.exit:                             ; preds = %._crit_edge.split.us160.i, %._crit_edge.split.us.us.us.i50, %bb.j, %.lr.ph142.i
  %.0109.lcssa.i = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph142.i ], [ %.3.us.us.us.i48, %._crit_edge.split.us.us.us.i50 ], [ %.3.us158.i, %._crit_edge.split.us160.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_process_monochrome.exit

bb.ax:                                            ; preds = %bb.h
  %i.ts = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !99 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !100 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !45
  %.not.i54 = icmp eq i32 %i.tx, 0
  %i.ty = select i1 %.not.i54, i32 4, i32 3       ; 4 uses
  %i.tz = load i32, ptr %i.l, align 4, !tbaa !98  ; 2 uses
  %i.ua = add i32 %i.tz, -2
  %i.ub = icmp sgt i32 %i.tz, 4
  br i1 %i.ub, label %.lr.ph112.i, label %_process_monochrome.exit

.lr.ph112.i:                                      ; preds = %bb.ax
  %i.uc = load i32, ptr %i.i, align 4, !tbaa !97  ; 7 uses
  %i.ud = shl i32 %i.uc, 1                        ; 2 uses
  %i.ue = sext i32 %i.uc to i64                   ; 4 uses
  %i.uf = add i32 %i.uc, -2                       ; 2 uses
  %i.ug = icmp sgt i32 %i.uc, 4
  %i.uh = sub nsw i32 0, %i.ud
  %i.ui = sext i32 %i.uh to i64                   ; 4 uses
  %6 = sext i32 %i.ud to i64                      ; 5 uses
  br i1 %i.ug, label %.lr.ph112.split.us.i, label %_process_monochrome.exit

.lr.ph112.split.us.i:                             ; preds = %.lr.ph112.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !46
  %.fr.i55 = freeze i32 %i.uk
  %.not94.i = icmp eq i32 %.fr.i55, 0
  %wide.trip.count152.i = zext i32 %i.ua to i64   ; 3 uses
  br i1 %.not94.i, label %.lr.ph108.us.us.i.preheader, label %.lr.ph108.us.preheader.i

.lr.ph108.us.us.i.preheader:                      ; preds = %.lr.ph112.split.us.i
  %i.ul = shl nuw nsw i64 %i.ue, 3                ; 4 uses
  %i.um = getelementptr i8, ptr %3, i64 %i.ul
  %scevgep = getelementptr i8, ptr %i.um, i64 8   ; 3 uses
  %i.un = shl nuw nsw i64 %wide.trip.count152.i, 2
  %i.uo = add nsw i64 %i.un, -4
  %i.up = mul i64 %i.uo, %i.ue                    ; 3 uses
  %i.uq = add nsw i32 %i.uc, -5
  %i.ur = zext i32 %i.uq to i64
  %i.us = shl nuw nsw i64 %i.ur, 2                ; 3 uses
  %i.ut = getelementptr i8, ptr %3, i64 %i.up
  %i.uu = getelementptr i8, ptr %i.ut, i64 %i.us
  %scevgep141 = getelementptr i8, ptr %i.uu, i64 12 ; 3 uses
  %i.uv = shl nsw i64 %6, 2                       ; 4 uses
  %i.uw = getelementptr i8, ptr %2, i64 %i.ul
  %i.ux = getelementptr i8, ptr %i.uw, i64 %i.uv
  %scevgep142 = getelementptr i8, ptr %i.ux, i64 8
  %i.uy = getelementptr i8, ptr %2, i64 %i.up
  %i.uz = getelementptr i8, ptr %i.uy, i64 %i.uv
  %i.va = getelementptr i8, ptr %i.uz, i64 %i.us
  %scevgep143 = getelementptr i8, ptr %i.va, i64 12
  %scevgep144 = getelementptr i8, ptr %2, i64 %i.ul
  %7 = add i64 %i.up, %i.us                       ; 2 uses
  %i.vb = getelementptr i8, ptr %2, i64 %7
  %scevgep145 = getelementptr i8, ptr %i.vb, i64 20
  %i.vc = add nuw nsw i64 %i.ul, 8
  %i.vd = sub nsw i64 %i.vc, %i.uv
  %scevgep146 = getelementptr i8, ptr %2, i64 %i.vd
  %i.ve = add i64 %7, 12
  %i.vf = sub i64 %i.ve, %i.uv
  %scevgep147 = getelementptr i8, ptr %2, i64 %i.vf
  %i.vg = add nsw i32 %i.uc, -4                   ; 3 uses
  %i.vh = zext i32 %i.vg to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.vg, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep143
  %bound1 = icmp ult ptr %scevgep142, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  %bound0148 = icmp ult ptr %scevgep, %scevgep145
  %bound1149 = icmp ult ptr %scevgep144, %scevgep141
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx = or i1 %found.conflict, %found.conflict150
  %bound0151 = icmp ult ptr %scevgep, %scevgep147
  %bound1152 = icmp ult ptr %scevgep146, %scevgep141
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx, %found.conflict153
  %min.iters.check156 = icmp ult i32 %i.vg, 16
  %i.vi = and i64 %i.vh, 8
  %n.vec158 = and i64 %i.vh, 4294967280           ; 5 uses
  %i.vj = trunc nuw i64 %n.vec158 to i32
  %i.vk = or disjoint i32 %i.vj, 2
  %i.vl = shl nuw nsw i64 %n.vec158, 2            ; 2 uses
  %broadcast.splatinsert159 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat160 = shufflevector <8 x float> %broadcast.splatinsert159, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.tv, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert163 = insertelement <8 x i32> poison, i32 %i.ty, i64 0
  %broadcast.splat164 = shufflevector <8 x i32> %broadcast.splatinsert163, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n180 = icmp eq i64 %n.vec158, %i.vh
  %min.epilog.iters.check.not.not = icmp eq i64 %i.vi, 0
  %n.vec184 = and i64 %i.vh, 4294967288           ; 4 uses
  %i.vm = trunc nuw i64 %n.vec184 to i32
  %i.vn = or disjoint i32 %i.vm, 2
  %i.vo = shl nuw nsw i64 %n.vec184, 2            ; 2 uses
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %i.tv, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <8 x i32> poison, i32 %i.ty, i64 0
  %broadcast.splat190 = shufflevector <8 x i32> %broadcast.splatinsert189, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n202 = icmp eq i64 %n.vec184, %i.vh
  br label %iter.check

.lr.ph108.us.preheader.i:                         ; preds = %.lr.ph112.split.us.i
  %wide.trip.count.i56 = zext nneg i32 %i.uf to i64
  br label %.lr.ph108.us.i

iter.check:                                       ; preds = %.lr.ph108.us.us.i.preheader, %._crit_edge.split.us.us.us.i66
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %._crit_edge.split.us.us.us.i66 ], [ 2, %.lr.ph108.us.us.i.preheader ] ; 2 uses
  %.085109.us.us.i = phi i32 [ %.388.us.us.us.i.lcssa, %._crit_edge.split.us.us.us.i66 ], [ 0, %.lr.ph108.us.us.i.preheader ] ; 4 uses
  %i.vp = mul nuw nsw i64 %indvars.iv149.i, %i.ue ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 6 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.vp
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  br i1 %conflict.rdx154, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph157

vector.ph157:                                     ; preds = %vector.main.loop.iter.check
  %i.vu = getelementptr i8, ptr %i.vt, i64 %i.vl
  %i.vv = getelementptr i8, ptr %i.vr, i64 %i.vl
  %i.vw = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.085109.us.us.i, i64 0
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph157
  %index166 = phi i64 [ 0, %vector.ph157 ], [ %index.next178, %vector.body165 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.vw, %vector.ph157 ], [ %predphi, %vector.body165 ]
  %vec.phi167 = phi <8 x i32> [ zeroinitializer, %vector.ph157 ], [ %predphi177, %vector.body165 ]
  %i.vx = shl i64 %index166, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vt, i64 %i.vx ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.vr, i64 %i.vx ; 8 uses
  %i.vy = getelementptr i8, ptr %next.gep168, i64 32
  %wide.load = load <8 x float>, ptr %next.gep168, align 4, !tbaa !47, !alias.scope !104 ; 2 uses
  %wide.load169 = load <8 x float>, ptr %i.vy, align 4, !tbaa !47, !alias.scope !104 ; 2 uses
  %i.vz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat160 ; 5 uses
  %i.wa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load169, %broadcast.splat160 ; 5 uses
  %i.wb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat162 ; 4 uses
  %i.wc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load169, %broadcast.splat162 ; 4 uses
  %i.wd = getelementptr i8, ptr %next.gep168, i64 -8
  %i.we = getelementptr i8, ptr %next.gep168, i64 24
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wd, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %wide.masked.load170 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.we, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.wf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load ; 3 uses
  %i.wg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load170 ; 3 uses
  %i.wh = zext <8 x i1> %i.wf to <8 x i32>
  %i.wi = zext <8 x i1> %i.wg to <8 x i32>
  %i.wj = getelementptr [4 x i8], ptr %next.gep168, i64 %i.ui ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wj, i64 32
  %wide.masked.load171 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wj, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !105 ; 3 uses
  %wide.masked.load172 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wk, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !105 ; 3 uses
  %i.wl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load171 ; 2 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load172 ; 2 uses
  %i.wn = select <8 x i1> %i.wf, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.wo = select <8 x i1> %i.wg, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.wp = select <8 x i1> %i.wl, <8 x i32> %i.wn, <8 x i32> %i.wh
  %i.wq = select <8 x i1> %i.wm, <8 x i32> %i.wo, <8 x i32> %i.wi
  %i.wr = getelementptr i8, ptr %next.gep168, i64 8
  %i.ws = getelementptr i8, ptr %next.gep168, i64 40
  %wide.masked.load173 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wr, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %wide.masked.load174 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ws, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.wt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load173 ; 2 uses
  %i.wu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load174 ; 2 uses
  %i.wv = zext <8 x i1> %i.wt to <8 x i32>
  %i.ww = zext <8 x i1> %i.wu to <8 x i32>
  %i.wx = add nuw nsw <8 x i32> %i.wp, %i.wv
  %i.wy = add nuw nsw <8 x i32> %i.wq, %i.ww
  %i.wz = getelementptr [4 x i8], ptr %next.gep168, i64 %6 ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wz, i64 32
  %wide.masked.load175 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wz, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !106 ; 3 uses
  %wide.masked.load176 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.xa, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !106 ; 3 uses
  %i.xb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load175 ; 2 uses
  %i.xc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load176 ; 2 uses
  %i.xd = zext <8 x i1> %i.xb to <8 x i32>
  %i.xe = zext <8 x i1> %i.xc to <8 x i32>
  %i.xf = add nuw nsw <8 x i32> %i.wx, %i.xd
  %i.xg = add nuw nsw <8 x i32> %i.wy, %i.xe
  %i.xh = icmp samesign uge <8 x i32> %i.xf, %broadcast.splat164
  %i.xi = icmp samesign uge <8 x i32> %i.xg, %broadcast.splat164
  %i.xj = select <8 x i1> %i.vz, <8 x i1> %i.xh, <8 x i1> zeroinitializer ; 2 uses
  %i.xk = select <8 x i1> %i.wa, <8 x i1> %i.xi, <8 x i1> zeroinitializer ; 2 uses
  %i.xl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, zeroinitializer
  %i.xm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load170, zeroinitializer
  %i.xn = and <8 x i1> %i.wf, %i.xl
  %i.xo = and <8 x i1> %i.wg, %i.xm
  %i.xp = select nsz <8 x i1> %i.xn, <8 x float> %wide.masked.load, <8 x float> zeroinitializer ; 2 uses
  %i.xq = select nsz <8 x i1> %i.xo, <8 x float> %wide.masked.load170, <8 x float> zeroinitializer ; 2 uses
  %i.xr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load171, %i.xp
  %i.xs = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load172, %i.xq
  %i.xt = and <8 x i1> %i.wl, %i.xr
  %i.xu = and <8 x i1> %i.wm, %i.xs
  %i.xv = select nsz <8 x i1> %i.xt, <8 x float> %wide.masked.load171, <8 x float> %i.xp ; 2 uses
  %i.xw = select nsz <8 x i1> %i.xu, <8 x float> %wide.masked.load172, <8 x float> %i.xq ; 2 uses
  %i.xx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load173, %i.xv
  %i.xy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load174, %i.xw
  %i.xz = and <8 x i1> %i.wt, %i.xx
  %i.ya = and <8 x i1> %i.wu, %i.xy
  %i.yb = select nsz <8 x i1> %i.xz, <8 x float> %wide.masked.load173, <8 x float> %i.xv ; 2 uses
  %i.yc = select nsz <8 x i1> %i.ya, <8 x float> %wide.masked.load174, <8 x float> %i.xw ; 2 uses
  %i.yd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load175, %i.yb
  %i.ye = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load176, %i.yc
  %i.yf = select <8 x i1> %i.xb, <8 x i1> %i.yd, <8 x i1> zeroinitializer
  %i.yg = select <8 x i1> %i.xc, <8 x i1> %i.ye, <8 x i1> zeroinitializer
  %i.yh = select nsz <8 x i1> %i.yf, <8 x float> %wide.masked.load175, <8 x float> %i.yb
  %i.yi = select nsz <8 x i1> %i.yg, <8 x float> %wide.masked.load176, <8 x float> %i.yc
  %i.yj = getelementptr i8, ptr %next.gep, i64 32
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yh, ptr align 4 %next.gep, <8 x i1> %i.xj), !tbaa !47, !alias.scope !107, !noalias !108
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yi, ptr align 4 %i.yj, <8 x i1> %i.xk), !tbaa !47, !alias.scope !107, !noalias !108
  %i.yk = zext <8 x i1> %i.xj to <8 x i32>
  %predphi = add <8 x i32> %vec.phi, %i.yk        ; 2 uses
  %i.yl = zext <8 x i1> %i.xk to <8 x i32>
  %predphi177 = add <8 x i32> %vec.phi167, %i.yl  ; 2 uses
  %index.next178 = add nuw i64 %index166, 16      ; 2 uses
  %i.ym = icmp eq i64 %index.next178, %n.vec158
  br i1 %i.ym, label %middle.block179, label %vector.body165, !llvm.loop !94

middle.block179:                                  ; preds = %vector.body165
  %bin.rdx = add <8 x i32> %predphi177, %predphi
  %i.yn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  br i1 %cmp.n180, label %._crit_edge.split.us.us.us.i66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block179
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec158, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.yn, %vec.epilog.iter.check ], [ %.085109.us.us.i, %vector.main.loop.iter.check ]
  %i.yo = getelementptr i8, ptr %i.vt, i64 %i.vo
  %i.yp = getelementptr i8, ptr %i.vr, i64 %i.vo
  %i.yq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi192 = phi <8 x i32> [ %i.yq, %vec.epilog.ph ], [ %predphi200, %vec.epilog.vector.body ]
  %i.yr = shl i64 %index191, 2                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.vt, i64 %i.yr
  %next.gep194 = getelementptr i8, ptr %i.vr, i64 %i.yr ; 5 uses
  %wide.load195 = load <8 x float>, ptr %next.gep194, align 4, !tbaa !47, !alias.scope !104 ; 2 uses
  %i.ys = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load195, %broadcast.splat186 ; 5 uses
  %i.yt = fmul reassoc nsz arcp contract afn <8 x float> %wide.load195, %broadcast.splat188 ; 4 uses
  %i.yu = getelementptr i8, ptr %next.gep194, i64 -8
  %wide.masked.load196 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yu, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.yv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yt, %wide.masked.load196 ; 3 uses
  %i.yw = zext <8 x i1> %i.yv to <8 x i32>
  %i.yx = getelementptr [4 x i8], ptr %next.gep194, i64 %i.ui
  %wide.masked.load197 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yx, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !105 ; 3 uses
  %i.yy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yt, %wide.masked.load197 ; 2 uses
  %i.yz = select <8 x i1> %i.yv, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.za = select <8 x i1> %i.yy, <8 x i32> %i.yz, <8 x i32> %i.yw
  %i.zb = getelementptr i8, ptr %next.gep194, i64 8
  %wide.masked.load198 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zb, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.zc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yt, %wide.masked.load198 ; 2 uses
  %i.zd = zext <8 x i1> %i.zc to <8 x i32>
  %i.ze = add nuw nsw <8 x i32> %i.za, %i.zd
  %i.zf = getelementptr [4 x i8], ptr %next.gep194, i64 %6
  %wide.masked.load199 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zf, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !106 ; 3 uses
end_hunk_0
