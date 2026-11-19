Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_hotpixels?download=true
inline.NumInlined: 19
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@process:bb.a
  store i32 %i.pr, ptr %i.pq, align 8, !tbaa !96
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.pt = extractelement <2 x i32> %i.pe, i64 1
  store i32 %i.pt, ptr %i.ps, align 4, !tbaa !96
  %i.pu = add nsw i32 %.0111123.i.2, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1112.i.2 = phi i32 [ %i.pu, %bb.af ], [ %.0111123.i.2, %bb.ae ] ; 2 uses
  %indvars.iv.next.i36.2 = add nuw nsw i64 %indvars.iv.i35.2, 1
  %i.pv = icmp samesign ult i64 %indvars.iv.i35.2, 19
  %i.pw = icmp slt i32 %.1112.i.2, 4
  %i.px = select i1 %i.pv, i1 %i.pw, i1 false
  br i1 %i.px, label %bb.ae, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.py = getelementptr inbounds nuw i8, ptr %i.er, i64 3
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !66
  %i.qa = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.qb = insertelement <2 x i32> <i32 603, i32 poison>, i32 %i.et, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %indvars.iv.i35.3 = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next.i36.3, %bb.ak ] ; 3 uses
  %.0111123.i.3 = phi i32 [ 0, %bb.ah ], [ %.1112.i.3, %bb.ak ] ; 3 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.3
  %i.qd = load <2 x i32>, ptr %i.qc, align 8, !tbaa !96 ; 3 uses
  %i.qe = add <2 x i32> %i.qb, %i.qd
  %i.qf = srem <2 x i32> %i.qe, splat (i32 6)     ; 2 uses
  %i.qg = extractelement <2 x i32> %i.qf, i64 1
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [6 x i8], ptr %i.em, i64 %i.qh
  %i.qj = extractelement <2 x i32> %i.qf, i64 0
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds i8, ptr %i.qi, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !66
  %i.qn = icmp eq i8 %i.pz, %i.qm
  br i1 %i.qn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.qo = sext i32 %.0111123.i.3 to i64
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %i.qo ; 2 uses
  %i.qq = extractelement <2 x i32> %i.qd, i64 0
  store i32 %i.qq, ptr %i.qp, align 8, !tbaa !96
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.qs = extractelement <2 x i32> %i.qd, i64 1
  store i32 %i.qs, ptr %i.qr, align 4, !tbaa !96
  %i.qt = add nsw i32 %.0111123.i.3, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1112.i.3 = phi i32 [ %i.qt, %bb.aj ], [ %.0111123.i.3, %bb.ai ] ; 2 uses
  %indvars.iv.next.i36.3 = add nuw nsw i64 %indvars.iv.i35.3, 1
  %i.qu = icmp samesign ult i64 %indvars.iv.i35.3, 19
  %i.qv = icmp slt i32 %.1112.i.3, 4
  %i.qw = select i1 %i.qu, i1 %i.qv, i1 false
  br i1 %i.qw, label %bb.ai, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qx = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !66
  %i.qz = getelementptr inbounds nuw i8, ptr %i.es, i64 128
  %i.ra = insertelement <2 x i32> <i32 604, i32 poison>, i32 %i.et, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %indvars.iv.i35.4 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next.i36.4, %bb.ao ] ; 3 uses
  %.0111123.i.4 = phi i32 [ 0, %bb.al ], [ %.1112.i.4, %bb.ao ] ; 3 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.4
  %i.rc = load <2 x i32>, ptr %i.rb, align 8, !tbaa !96 ; 3 uses
  %i.rd = add <2 x i32> %i.ra, %i.rc
  %i.re = srem <2 x i32> %i.rd, splat (i32 6)     ; 2 uses
  %i.rf = extractelement <2 x i32> %i.re, i64 1
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [6 x i8], ptr %i.em, i64 %i.rg
  %i.ri = extractelement <2 x i32> %i.re, i64 0
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds i8, ptr %i.rh, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !66
  %i.rm = icmp eq i8 %i.qy, %i.rl
  br i1 %i.rm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.rn = sext i32 %.0111123.i.4 to i64
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.rn ; 2 uses
  %i.rp = extractelement <2 x i32> %i.rc, i64 0
  store i32 %i.rp, ptr %i.ro, align 8, !tbaa !96
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = extractelement <2 x i32> %i.rc, i64 1
  store i32 %i.rr, ptr %i.rq, align 4, !tbaa !96
  %i.rs = add nsw i32 %.0111123.i.4, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1112.i.4 = phi i32 [ %i.rs, %bb.an ], [ %.0111123.i.4, %bb.am ] ; 2 uses
  %indvars.iv.next.i36.4 = add nuw nsw i64 %indvars.iv.i35.4, 1
  %i.rt = icmp samesign ult i64 %indvars.iv.i35.4, 19
  %i.ru = icmp slt i32 %.1112.i.4, 4
  %i.rv = select i1 %i.rt, i1 %i.ru, i1 false
  br i1 %i.rv, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rw = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !66
  %i.ry = getelementptr inbounds nuw i8, ptr %i.es, i64 160
  %i.rz = insertelement <2 x i32> <i32 605, i32 poison>, i32 %i.et, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %indvars.iv.i35.5 = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next.i36.5, %bb.as ] ; 3 uses
  %.0111123.i.5 = phi i32 [ 0, %bb.ap ], [ %.1112.i.5, %bb.as ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.5
  %i.sb = load <2 x i32>, ptr %i.sa, align 8, !tbaa !96 ; 3 uses
  %i.sc = add <2 x i32> %i.rz, %i.sb
  %i.sd = srem <2 x i32> %i.sc, splat (i32 6)     ; 2 uses
  %i.se = extractelement <2 x i32> %i.sd, i64 1
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [6 x i8], ptr %i.em, i64 %i.sf
  %i.sh = extractelement <2 x i32> %i.sd, i64 0
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds i8, ptr %i.sg, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !66
  %i.sl = icmp eq i8 %i.rx, %i.sk
  br i1 %i.sl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.sm = sext i32 %.0111123.i.5 to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.sm ; 2 uses
  %i.so = extractelement <2 x i32> %i.sb, i64 0
  store i32 %i.so, ptr %i.sn, align 8, !tbaa !96
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sq = extractelement <2 x i32> %i.sb, i64 1
  store i32 %i.sq, ptr %i.sp, align 4, !tbaa !96
  %i.sr = add nsw i32 %.0111123.i.5, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1112.i.5 = phi i32 [ %i.sr, %bb.ar ], [ %.0111123.i.5, %bb.aq ] ; 2 uses
  %indvars.iv.next.i36.5 = add nuw nsw i64 %indvars.iv.i35.5, 1
  %i.ss = icmp samesign ult i64 %indvars.iv.i35.5, 19
  %i.st = icmp slt i32 %.1112.i.5, 4
  %i.su = select i1 %i.ss, i1 %i.st, i1 false
  br i1 %i.su, label %bb.aq, label %bb.at

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next172.i = add nuw nsw i64 %indvars.iv171.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next172.i, 6
  br i1 %exitcond174.not.i, label %bb.j, label %.preheader121.i

bb.au:                                            ; preds = %bb.aw, %.preheader121.i
  %indvars.iv.i35 = phi i64 [ 0, %.preheader121.i ], [ %indvars.iv.next.i36, %bb.aw ] ; 3 uses
  %.0111123.i = phi i32 [ 0, %.preheader121.i ], [ %.1112.i, %bb.aw ] ; 3 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35
  %i.sw = load <2 x i32>, ptr %i.sv, align 8, !tbaa !96 ; 3 uses
  %i.sx = add <2 x i32> %i.ev, %i.sw
  %i.sy = srem <2 x i32> %i.sx, splat (i32 6)     ; 2 uses
  %i.sz = extractelement <2 x i32> %i.sy, i64 1
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [6 x i8], ptr %i.em, i64 %i.ta
  %i.tc = extractelement <2 x i32> %i.sy, i64 0
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds i8, ptr %i.tb, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !66
  %i.tg = icmp eq i8 %i.eu, %i.tf
  br i1 %i.tg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.th = sext i32 %.0111123.i to i64
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.th ; 2 uses
  %i.tj = extractelement <2 x i32> %i.sw, i64 0
  store i32 %i.tj, ptr %i.ti, align 8, !tbaa !96
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tl = extractelement <2 x i32> %i.sw, i64 1
  store i32 %i.tl, ptr %i.tk, align 4, !tbaa !96
  %i.tm = add nsw i32 %.0111123.i, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1112.i = phi i32 [ %i.tm, %bb.av ], [ %.0111123.i, %bb.au ] ; 2 uses
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  %i.tn = icmp samesign ult i64 %indvars.iv.i35, 19
  %i.to = icmp slt i32 %.1112.i, 4
  %i.tp = select i1 %i.tn, i1 %i.to, i1 false
  br i1 %i.tp, label %bb.au, label %bb.z

_process_xtrans.exit:                             ; preds = %._crit_edge.split.us162.i, %._crit_edge.split.us.us.us.i50, %bb.j, %.lr.ph143.i
  %.0109.lcssa.i = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph143.i ], [ %.3.us.us.us.i48, %._crit_edge.split.us.us.us.i50 ], [ %.3.us161.i, %._crit_edge.split.us162.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_process_monochrome.exit

bb.ax:                                            ; preds = %bb.h
  %i.tq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !45 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !46 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !47
  %.not.i54 = icmp eq i32 %i.tv, 0
  %i.tw = select i1 %.not.i54, i32 4, i32 3       ; 4 uses
  %i.tx = load i32, ptr %i.l, align 4, !tbaa !93  ; 2 uses
  %i.ty = add i32 %i.tx, -2
  %i.tz = icmp sgt i32 %i.tx, 4
  br i1 %i.tz, label %.lr.ph113.i, label %_process_monochrome.exit

.lr.ph113.i:                                      ; preds = %bb.ax
  %i.ua = load i32, ptr %i.i, align 4, !tbaa !92  ; 7 uses
  %i.ub = shl i32 %i.ua, 1                        ; 3 uses
  %i.uc = sext i32 %i.ua to i64                   ; 4 uses
  %i.ud = add nsw i32 %i.ua, -2                   ; 2 uses
  %i.ue = icmp sgt i32 %i.ua, 4
  %i.uf = sub nsw i32 0, %i.ub
  %i.ug = sext i32 %i.uf to i64                   ; 4 uses
  %i.uh = zext i32 %i.ub to i64                   ; 5 uses
  br i1 %i.ue, label %.lr.ph113.split.us.i, label %_process_monochrome.exit

.lr.ph113.split.us.i:                             ; preds = %.lr.ph113.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !48
  %.fr.i55 = freeze i32 %i.uj
  %.not94.i = icmp eq i32 %.fr.i55, 0
  %wide.trip.count153.i = zext i32 %i.ty to i64   ; 3 uses
  br i1 %.not94.i, label %.lr.ph109.us.us.i.preheader, label %.lr.ph109.us.preheader.i

.lr.ph109.us.us.i.preheader:                      ; preds = %.lr.ph113.split.us.i
  %i.uk = shl nuw nsw i64 %wide.trip.count153.i, 2
  %6 = add nsw i64 %i.uk, -4
  %7 = mul i64 %6, %i.uc                          ; 4 uses
  %i.ul = add nsw i32 %i.ua, -5
  %i.um = zext i32 %i.ul to i64
  %i.un = shl nuw nsw i64 %i.um, 2                ; 4 uses
  %i.uo = add i64 %7, %i.un
  %i.up = add i64 %i.uo, 12
  %i.uq = sext i32 %i.ub to i64
  %i.ur = shl nsw i64 %i.uq, 2                    ; 2 uses
  %i.us = sub i64 %i.up, %i.ur
  %scevgep = getelementptr i8, ptr %2, i64 %i.us
  %8 = shl nuw nsw i64 %i.uc, 3                   ; 4 uses
  %i.ut = add nuw nsw i64 %8, 8
  %i.uu = sub nsw i64 %i.ut, %i.ur
  %scevgep148 = getelementptr i8, ptr %2, i64 %i.uu
  %i.uv = getelementptr i8, ptr %2, i64 %7
  %i.uw = getelementptr i8, ptr %i.uv, i64 %i.un
  %scevgep149 = getelementptr i8, ptr %i.uw, i64 20
  %scevgep150 = getelementptr i8, ptr %2, i64 %8
  %i.ux = shl nuw nsw i64 %i.uh, 2                ; 2 uses
  %9 = getelementptr i8, ptr %2, i64 %7
  %10 = getelementptr i8, ptr %9, i64 %i.ux
  %i.uy = getelementptr i8, ptr %10, i64 %i.un
  %scevgep151.a = getelementptr i8, ptr %i.uy, i64 12
  %i.uz = getelementptr i8, ptr %2, i64 %8
  %i.va = getelementptr i8, ptr %i.uz, i64 %i.ux
  %scevgep152 = getelementptr i8, ptr %i.va, i64 8
  %i.vb = getelementptr i8, ptr %3, i64 %7
  %i.vc = getelementptr i8, ptr %i.vb, i64 %i.un
  %scevgep153 = getelementptr i8, ptr %i.vc, i64 12 ; 3 uses
  %i.vd = getelementptr i8, ptr %3, i64 %8
  %scevgep154 = getelementptr i8, ptr %i.vd, i64 8 ; 3 uses
  %i.ve = add nsw i32 %i.ua, -4                   ; 3 uses
  %i.vf = zext i32 %i.ve to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.ve, 8
  %bound0 = icmp ult ptr %scevgep154, %scevgep151.a
  %bound1 = icmp ult ptr %scevgep152, %scevgep153
  %found.conflict = and i1 %bound0, %bound1
  %bound0155 = icmp ult ptr %scevgep154, %scevgep149
  %bound1156 = icmp ult ptr %scevgep150, %scevgep153
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx = or i1 %found.conflict, %found.conflict157
  %bound0158 = icmp ult ptr %scevgep154, %scevgep
  %bound1159 = icmp ult ptr %scevgep148, %scevgep153
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx, %found.conflict160
  %min.iters.check162 = icmp ult i32 %i.ve, 16
  %i.vg = and i64 %i.vf, 8
  %n.vec = and i64 %i.vf, 4294967280              ; 5 uses
  %i.vh = trunc nuw i64 %n.vec to i32
  %i.vi = or disjoint i32 %i.vh, 2
  %i.vj = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %broadcast.splatinsert164 = insertelement <8 x float> poison, float %i.tr, i64 0
  %broadcast.splat165 = shufflevector <8 x float> %broadcast.splatinsert164, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert166 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat167 = shufflevector <8 x float> %broadcast.splatinsert166, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert168 = insertelement <8 x i32> poison, i32 %i.tw, i64 0
  %broadcast.splat169 = shufflevector <8 x i32> %broadcast.splatinsert168, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.vf
  %min.epilog.iters.check.not.not = icmp eq i64 %i.vg, 0
  %n.vec183 = and i64 %i.vf, 4294967288           ; 4 uses
  %i.vk = trunc nuw i64 %n.vec183 to i32
  %i.vl = or disjoint i32 %i.vk, 2
  %i.vm = shl nuw nsw i64 %n.vec183, 2            ; 2 uses
  %broadcast.splatinsert184 = insertelement <8 x float> poison, float %i.tr, i64 0
  %broadcast.splat185 = shufflevector <8 x float> %broadcast.splatinsert184, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert186 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat187 = shufflevector <8 x float> %broadcast.splatinsert186, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <8 x i32> poison, i32 %i.tw, i64 0
  %broadcast.splat189 = shufflevector <8 x i32> %broadcast.splatinsert188, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n201 = icmp eq i64 %n.vec183, %i.vf
  br label %iter.check

.lr.ph109.us.preheader.i:                         ; preds = %.lr.ph113.split.us.i
  %wide.trip.count.i56 = zext nneg i32 %i.ud to i64
  br label %.lr.ph109.us.i

iter.check:                                       ; preds = %.lr.ph109.us.us.i.preheader, %._crit_edge.split.us.us.us.i66
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %._crit_edge.split.us.us.us.i66 ], [ 2, %.lr.ph109.us.us.i.preheader ] ; 2 uses
  %.085110.us.us.i = phi i32 [ %.388.us.us.us.i.lcssa, %._crit_edge.split.us.us.us.i66 ], [ 0, %.lr.ph109.us.us.i.preheader ] ; 4 uses
  %i.vn = mul nuw nsw i64 %indvars.iv150.i, %i.uc ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8 ; 6 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.vn
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  br i1 %conflict.rdx161, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check162, label %vec.epilog.ph, label %vector.ph163

vector.ph163:                                     ; preds = %vector.main.loop.iter.check
  %i.vs = getelementptr i8, ptr %i.vr, i64 %i.vj
  %i.vt = getelementptr i8, ptr %i.vp, i64 %i.vj
  %i.vu = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.085110.us.us.i, i64 0
  br label %vector.body170

vector.body170:                                   ; preds = %vector.ph163, %vector.body170
  %index = phi i64 [ 0, %vector.ph163 ], [ %index.next, %vector.body170 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.vu, %vector.ph163 ], [ %predphi, %vector.body170 ]
  %vec.phi171 = phi <8 x i32> [ zeroinitializer, %vector.ph163 ], [ %predphi181, %vector.body170 ]
  %i.vv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vr, i64 %i.vv ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.vp, i64 %i.vv ; 8 uses
  %i.vw = getelementptr i8, ptr %next.gep172, i64 32
  %wide.load = load <8 x float>, ptr %next.gep172, align 4, !tbaa !94, !alias.scope !97 ; 2 uses
  %wide.load173 = load <8 x float>, ptr %i.vw, align 4, !tbaa !94, !alias.scope !97 ; 2 uses
  %i.vx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat165 ; 5 uses
  %i.vy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load173, %broadcast.splat165 ; 5 uses
  %i.vz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat167 ; 4 uses
  %i.wa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load173, %broadcast.splat167 ; 4 uses
  %i.wb = getelementptr i8, ptr %next.gep172, i64 -8
  %i.wc = getelementptr i8, ptr %next.gep172, i64 24
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wb, <8 x i1> %i.vx, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %wide.masked.load174 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wc, <8 x i1> %i.vy, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.wd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vz, %wide.masked.load ; 3 uses
  %i.we = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wa, %wide.masked.load174 ; 3 uses
  %i.wf = zext <8 x i1> %i.wd to <8 x i32>
  %i.wg = zext <8 x i1> %i.we to <8 x i32>
  %i.wh = getelementptr [4 x i8], ptr %next.gep172, i64 %i.ug ; 2 uses
  %i.wi = getelementptr i8, ptr %i.wh, i64 32
  %wide.masked.load175 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wh, <8 x i1> %i.vx, <8 x float> poison), !tbaa !94, !alias.scope !98 ; 3 uses
  %wide.masked.load176 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wi, <8 x i1> %i.vy, <8 x float> poison), !tbaa !94, !alias.scope !98 ; 3 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vz, %wide.masked.load175 ; 2 uses
  %i.wk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wa, %wide.masked.load176 ; 2 uses
  %i.wl = select <8 x i1> %i.wd, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.wm = select <8 x i1> %i.we, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.wn = select <8 x i1> %i.wj, <8 x i32> %i.wl, <8 x i32> %i.wf
  %i.wo = select <8 x i1> %i.wk, <8 x i32> %i.wm, <8 x i32> %i.wg
  %i.wp = getelementptr i8, ptr %next.gep172, i64 8
  %i.wq = getelementptr i8, ptr %next.gep172, i64 40
  %wide.masked.load177 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wp, <8 x i1> %i.vx, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %wide.masked.load178 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wq, <8 x i1> %i.vy, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.wr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vz, %wide.masked.load177 ; 2 uses
  %i.ws = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wa, %wide.masked.load178 ; 2 uses
  %i.wt = zext <8 x i1> %i.wr to <8 x i32>
  %i.wu = zext <8 x i1> %i.ws to <8 x i32>
  %i.wv = add nuw nsw <8 x i32> %i.wn, %i.wt
  %i.ww = add nuw nsw <8 x i32> %i.wo, %i.wu
  %i.wx = getelementptr [4 x i8], ptr %next.gep172, i64 %i.uh ; 2 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 32
  %wide.masked.load179 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wx, <8 x i1> %i.vx, <8 x float> poison), !tbaa !94, !alias.scope !99 ; 3 uses
  %wide.masked.load180 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wy, <8 x i1> %i.vy, <8 x float> poison), !tbaa !94, !alias.scope !99 ; 3 uses
  %i.wz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vz, %wide.masked.load179 ; 2 uses
  %i.xa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wa, %wide.masked.load180 ; 2 uses
  %i.xb = zext <8 x i1> %i.wz to <8 x i32>
  %i.xc = zext <8 x i1> %i.xa to <8 x i32>
  %i.xd = add nuw nsw <8 x i32> %i.wv, %i.xb
  %i.xe = add nuw nsw <8 x i32> %i.ww, %i.xc
  %i.xf = icmp samesign uge <8 x i32> %i.xd, %broadcast.splat169
  %i.xg = icmp samesign uge <8 x i32> %i.xe, %broadcast.splat169
  %i.xh = select <8 x i1> %i.vx, <8 x i1> %i.xf, <8 x i1> zeroinitializer ; 2 uses
  %i.xi = select <8 x i1> %i.vy, <8 x i1> %i.xg, <8 x i1> zeroinitializer ; 2 uses
  %i.xj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, zeroinitializer
  %i.xk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load174, zeroinitializer
  %i.xl = and <8 x i1> %i.wd, %i.xj
  %i.xm = and <8 x i1> %i.we, %i.xk
  %i.xn = select nsz <8 x i1> %i.xl, <8 x float> %wide.masked.load, <8 x float> zeroinitializer ; 2 uses
  %i.xo = select nsz <8 x i1> %i.xm, <8 x float> %wide.masked.load174, <8 x float> zeroinitializer ; 2 uses
  %i.xp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load175, %i.xn
  %i.xq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load176, %i.xo
  %i.xr = and <8 x i1> %i.wj, %i.xp
  %i.xs = and <8 x i1> %i.wk, %i.xq
  %i.xt = select nsz <8 x i1> %i.xr, <8 x float> %wide.masked.load175, <8 x float> %i.xn ; 2 uses
  %i.xu = select nsz <8 x i1> %i.xs, <8 x float> %wide.masked.load176, <8 x float> %i.xo ; 2 uses
  %i.xv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load177, %i.xt
  %i.xw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load178, %i.xu
  %i.xx = and <8 x i1> %i.wr, %i.xv
  %i.xy = and <8 x i1> %i.ws, %i.xw
  %i.xz = select nsz <8 x i1> %i.xx, <8 x float> %wide.masked.load177, <8 x float> %i.xt ; 2 uses
  %i.ya = select nsz <8 x i1> %i.xy, <8 x float> %wide.masked.load178, <8 x float> %i.xu ; 2 uses
  %i.yb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load179, %i.xz
  %i.yc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load180, %i.ya
  %i.yd = select <8 x i1> %i.wz, <8 x i1> %i.yb, <8 x i1> zeroinitializer
  %i.ye = select <8 x i1> %i.xa, <8 x i1> %i.yc, <8 x i1> zeroinitializer
  %i.yf = select nsz <8 x i1> %i.yd, <8 x float> %wide.masked.load179, <8 x float> %i.xz
  %i.yg = select nsz <8 x i1> %i.ye, <8 x float> %wide.masked.load180, <8 x float> %i.ya
  %i.yh = getelementptr i8, ptr %next.gep, i64 32
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yf, ptr align 4 %next.gep, <8 x i1> %i.xh), !tbaa !94, !alias.scope !100, !noalias !101
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yg, ptr align 4 %i.yh, <8 x i1> %i.xi), !tbaa !94, !alias.scope !100, !noalias !101
  %i.yi = zext <8 x i1> %i.xh to <8 x i32>
  %predphi = add <8 x i32> %vec.phi, %i.yi        ; 2 uses
  %i.yj = zext <8 x i1> %i.xi to <8 x i32>
  %predphi181 = add <8 x i32> %vec.phi171, %i.yj  ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.yk = icmp eq i64 %index.next, %n.vec
  br i1 %i.yk, label %middle.block182, label %vector.body170, !llvm.loop !89

middle.block182:                                  ; preds = %vector.body170
  %bin.rdx = add <8 x i32> %predphi181, %predphi
  %i.yl = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.i66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block182
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.yl, %vec.epilog.iter.check ], [ %.085110.us.us.i, %vector.main.loop.iter.check ]
  %i.ym = getelementptr i8, ptr %i.vr, i64 %i.vm
  %i.yn = getelementptr i8, ptr %i.vp, i64 %i.vm
  %i.yo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next200, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi191 = phi <8 x i32> [ %i.yo, %vec.epilog.ph ], [ %predphi199, %vec.epilog.vector.body ]
  %i.yp = shl i64 %index190, 2                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.vr, i64 %i.yp
  %next.gep193 = getelementptr i8, ptr %i.vp, i64 %i.yp ; 5 uses
  %wide.load194 = load <8 x float>, ptr %next.gep193, align 4, !tbaa !94, !alias.scope !97 ; 2 uses
  %i.yq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load194, %broadcast.splat185 ; 5 uses
  %i.yr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %broadcast.splat187 ; 4 uses
  %i.ys = getelementptr i8, ptr %next.gep193, i64 -8
  %wide.masked.load195 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ys, <8 x i1> %i.yq, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.yt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yr, %wide.masked.load195 ; 3 uses
  %i.yu = zext <8 x i1> %i.yt to <8 x i32>
  %i.yv = getelementptr [4 x i8], ptr %next.gep193, i64 %i.ug
  %wide.masked.load196 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yv, <8 x i1> %i.yq, <8 x float> poison), !tbaa !94, !alias.scope !98 ; 3 uses
  %i.yw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yr, %wide.masked.load196 ; 2 uses
  %i.yx = select <8 x i1> %i.yt, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.yy = select <8 x i1> %i.yw, <8 x i32> %i.yx, <8 x i32> %i.yu
  %i.yz = getelementptr i8, ptr %next.gep193, i64 8
  %wide.masked.load197 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yz, <8 x i1> %i.yq, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.za = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yr, %wide.masked.load197 ; 2 uses
  %i.zb = zext <8 x i1> %i.za to <8 x i32>
  %i.zc = add nuw nsw <8 x i32> %i.yy, %i.zb
  %i.zd = getelementptr [4 x i8], ptr %next.gep193, i64 %i.uh
  %wide.masked.load198 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zd, <8 x i1> %i.yq, <8 x float> poison), !tbaa !94, !alias.scope !99 ; 3 uses
  %i.ze = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yr, %wide.masked.load198 ; 2 uses
  %i.zf = zext <8 x i1> %i.ze to <8 x i32>
  %i.zg = add nuw nsw <8 x i32> %i.zc, %i.zf
  %i.zh = icmp samesign uge <8 x i32> %i.zg, %broadcast.splat189
  %i.zi = select <8 x i1> %i.yq, <8 x i1> %i.zh, <8 x i1> zeroinitializer ; 2 uses
end_hunk_0
