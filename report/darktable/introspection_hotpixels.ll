Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_hotpixels?download=true
inline.NumInlined: 19
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@process:bb.a
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
  %i.ul = add nsw i64 %i.uk, -4
  %i.um = mul i64 %i.ul, %i.uc                    ; 4 uses
  %i.un = add nsw i32 %i.ua, -5
  %i.uo = zext i32 %i.un to i64
  %i.up = shl nuw nsw i64 %i.uo, 2                ; 4 uses
  %6 = add i64 %i.um, %i.up
  %7 = add i64 %6, 12
  %8 = sext i32 %i.ub to i64
  %9 = shl nsw i64 %8, 2                          ; 2 uses
  %10 = sub i64 %7, %9
  %scevgep = getelementptr i8, ptr %2, i64 %10
  %i.uq = shl nuw nsw i64 %i.uc, 3                ; 4 uses
  %11 = add nuw nsw i64 %i.uq, 8
  %12 = sub nsw i64 %11, %9
  %scevgep148 = getelementptr i8, ptr %2, i64 %12
  %13 = getelementptr i8, ptr %2, i64 %i.um
  %14 = getelementptr i8, ptr %13, i64 %i.up
  %scevgep149 = getelementptr i8, ptr %14, i64 20
  %scevgep150 = getelementptr i8, ptr %2, i64 %i.uq
  %15 = shl nuw nsw i64 %i.uh, 2                  ; 2 uses
  %i.ur = getelementptr i8, ptr %2, i64 %i.um
  %16 = getelementptr i8, ptr %i.ur, i64 %15
  %17 = getelementptr i8, ptr %16, i64 %i.up
  %scevgep151.a = getelementptr i8, ptr %17, i64 12
  %18 = getelementptr i8, ptr %2, i64 %i.uq
  %i.us = getelementptr i8, ptr %18, i64 %15
  %scevgep152.a = getelementptr i8, ptr %i.us, i64 8
  %i.ut = getelementptr i8, ptr %3, i64 %i.um
  %i.uu = getelementptr i8, ptr %i.ut, i64 %i.up
  %scevgep153 = getelementptr i8, ptr %i.uu, i64 12 ; 3 uses
  %i.uv = getelementptr i8, ptr %3, i64 %i.uq
  %scevgep154 = getelementptr i8, ptr %i.uv, i64 8 ; 3 uses
  %i.uw = add nsw i32 %i.ua, -4                   ; 3 uses
  %i.ux = zext i32 %i.uw to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.uw, 8
  %bound0 = icmp ult ptr %scevgep154, %scevgep151.a
  %bound1 = icmp ult ptr %scevgep152.a, %scevgep153
  %found.conflict = and i1 %bound0, %bound1
  %bound0155 = icmp ult ptr %scevgep154, %scevgep149
  %bound1156 = icmp ult ptr %scevgep150, %scevgep153
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx = or i1 %found.conflict, %found.conflict157
  %bound0158 = icmp ult ptr %scevgep154, %scevgep
  %bound1159 = icmp ult ptr %scevgep148, %scevgep153
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx, %found.conflict160
  %min.iters.check162 = icmp ult i32 %i.uw, 16
  %i.uy = and i64 %i.ux, 8
  %n.vec = and i64 %i.ux, 4294967280              ; 5 uses
  %i.uz = trunc nuw i64 %n.vec to i32
  %i.va = or disjoint i32 %i.uz, 2
  %i.vb = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %broadcast.splatinsert164 = insertelement <8 x float> poison, float %i.tr, i64 0
  %broadcast.splat165 = shufflevector <8 x float> %broadcast.splatinsert164, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert166 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat167 = shufflevector <8 x float> %broadcast.splatinsert166, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert168 = insertelement <8 x i32> poison, i32 %i.tw, i64 0
  %broadcast.splat169 = shufflevector <8 x i32> %broadcast.splatinsert168, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ux
  %min.epilog.iters.check.not.not = icmp eq i64 %i.uy, 0
  %n.vec183 = and i64 %i.ux, 4294967288           ; 4 uses
  %i.vc = trunc nuw i64 %n.vec183 to i32
  %i.vd = or disjoint i32 %i.vc, 2
  %i.ve = shl nuw nsw i64 %n.vec183, 2            ; 2 uses
  %broadcast.splatinsert184 = insertelement <8 x float> poison, float %i.tr, i64 0
  %broadcast.splat185 = shufflevector <8 x float> %broadcast.splatinsert184, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert186 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat187 = shufflevector <8 x float> %broadcast.splatinsert186, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <8 x i32> poison, i32 %i.tw, i64 0
  %broadcast.splat189 = shufflevector <8 x i32> %broadcast.splatinsert188, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n201 = icmp eq i64 %n.vec183, %i.ux
  br label %iter.check

.lr.ph109.us.preheader.i:                         ; preds = %.lr.ph113.split.us.i
  %wide.trip.count.i56 = zext nneg i32 %i.ud to i64
  br label %.lr.ph109.us.i

iter.check:                                       ; preds = %.lr.ph109.us.us.i.preheader, %._crit_edge.split.us.us.us.i66
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %._crit_edge.split.us.us.us.i66 ], [ 2, %.lr.ph109.us.us.i.preheader ] ; 2 uses
  %.085110.us.us.i = phi i32 [ %.388.us.us.us.i.lcssa, %._crit_edge.split.us.us.us.i66 ], [ 0, %.lr.ph109.us.us.i.preheader ] ; 4 uses
  %i.vf = mul nuw nsw i64 %indvars.iv150.i, %i.uc ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 6 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.vf
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  br i1 %conflict.rdx161, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check162, label %vec.epilog.ph, label %vector.ph163

vector.ph163:                                     ; preds = %vector.main.loop.iter.check
  %i.vk = getelementptr i8, ptr %i.vj, i64 %i.vb
  %i.vl = getelementptr i8, ptr %i.vh, i64 %i.vb
  %i.vm = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.085110.us.us.i, i64 0
  br label %vector.body170

vector.body170:                                   ; preds = %vector.ph163, %vector.body170
  %index = phi i64 [ 0, %vector.ph163 ], [ %index.next, %vector.body170 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.vm, %vector.ph163 ], [ %predphi, %vector.body170 ]
  %vec.phi171 = phi <8 x i32> [ zeroinitializer, %vector.ph163 ], [ %predphi181, %vector.body170 ]
  %i.vn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vj, i64 %i.vn ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.vh, i64 %i.vn ; 8 uses
  %i.vo = getelementptr i8, ptr %next.gep172, i64 32
  %wide.load = load <8 x float>, ptr %next.gep172, align 4, !tbaa !94, !alias.scope !97 ; 2 uses
  %wide.load173 = load <8 x float>, ptr %i.vo, align 4, !tbaa !94, !alias.scope !97 ; 2 uses
  %i.vp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat165 ; 5 uses
  %i.vq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load173, %broadcast.splat165 ; 5 uses
  %i.vr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat167 ; 4 uses
  %i.vs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load173, %broadcast.splat167 ; 4 uses
  %i.vt = getelementptr i8, ptr %next.gep172, i64 -8
  %i.vu = getelementptr i8, ptr %next.gep172, i64 24
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.vt, <8 x i1> %i.vp, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %wide.masked.load174 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.vu, <8 x i1> %i.vq, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.vv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vr, %wide.masked.load ; 3 uses
  %i.vw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vs, %wide.masked.load174 ; 3 uses
  %i.vx = zext <8 x i1> %i.vv to <8 x i32>
  %i.vy = zext <8 x i1> %i.vw to <8 x i32>
  %i.vz = getelementptr [4 x i8], ptr %next.gep172, i64 %i.ug ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 32
  %wide.masked.load175 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.vz, <8 x i1> %i.vp, <8 x float> poison), !tbaa !94, !alias.scope !98 ; 3 uses
  %wide.masked.load176 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wa, <8 x i1> %i.vq, <8 x float> poison), !tbaa !94, !alias.scope !98 ; 3 uses
  %i.wb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vr, %wide.masked.load175 ; 2 uses
  %i.wc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vs, %wide.masked.load176 ; 2 uses
  %i.wd = select <8 x i1> %i.vv, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.we = select <8 x i1> %i.vw, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.wf = select <8 x i1> %i.wb, <8 x i32> %i.wd, <8 x i32> %i.vx
  %i.wg = select <8 x i1> %i.wc, <8 x i32> %i.we, <8 x i32> %i.vy
  %i.wh = getelementptr i8, ptr %next.gep172, i64 8
  %i.wi = getelementptr i8, ptr %next.gep172, i64 40
  %wide.masked.load177 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wh, <8 x i1> %i.vp, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %wide.masked.load178 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wi, <8 x i1> %i.vq, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vr, %wide.masked.load177 ; 2 uses
  %i.wk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vs, %wide.masked.load178 ; 2 uses
  %i.wl = zext <8 x i1> %i.wj to <8 x i32>
  %i.wm = zext <8 x i1> %i.wk to <8 x i32>
  %i.wn = add nuw nsw <8 x i32> %i.wf, %i.wl
  %i.wo = add nuw nsw <8 x i32> %i.wg, %i.wm
  %i.wp = getelementptr [4 x i8], ptr %next.gep172, i64 %i.uh ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 32
  %wide.masked.load179 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wp, <8 x i1> %i.vp, <8 x float> poison), !tbaa !94, !alias.scope !99 ; 3 uses
  %wide.masked.load180 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wq, <8 x i1> %i.vq, <8 x float> poison), !tbaa !94, !alias.scope !99 ; 3 uses
  %i.wr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vr, %wide.masked.load179 ; 2 uses
  %i.ws = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vs, %wide.masked.load180 ; 2 uses
  %i.wt = zext <8 x i1> %i.wr to <8 x i32>
  %i.wu = zext <8 x i1> %i.ws to <8 x i32>
  %i.wv = add nuw nsw <8 x i32> %i.wn, %i.wt
  %i.ww = add nuw nsw <8 x i32> %i.wo, %i.wu
  %i.wx = icmp samesign uge <8 x i32> %i.wv, %broadcast.splat169
  %i.wy = icmp samesign uge <8 x i32> %i.ww, %broadcast.splat169
  %i.wz = select <8 x i1> %i.vp, <8 x i1> %i.wx, <8 x i1> zeroinitializer ; 2 uses
  %i.xa = select <8 x i1> %i.vq, <8 x i1> %i.wy, <8 x i1> zeroinitializer ; 2 uses
  %i.xb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, zeroinitializer
  %i.xc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load174, zeroinitializer
  %i.xd = and <8 x i1> %i.vv, %i.xb
  %i.xe = and <8 x i1> %i.vw, %i.xc
  %i.xf = select nsz <8 x i1> %i.xd, <8 x float> %wide.masked.load, <8 x float> zeroinitializer ; 2 uses
  %i.xg = select nsz <8 x i1> %i.xe, <8 x float> %wide.masked.load174, <8 x float> zeroinitializer ; 2 uses
  %i.xh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load175, %i.xf
  %i.xi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load176, %i.xg
  %i.xj = and <8 x i1> %i.wb, %i.xh
  %i.xk = and <8 x i1> %i.wc, %i.xi
  %i.xl = select nsz <8 x i1> %i.xj, <8 x float> %wide.masked.load175, <8 x float> %i.xf ; 2 uses
  %i.xm = select nsz <8 x i1> %i.xk, <8 x float> %wide.masked.load176, <8 x float> %i.xg ; 2 uses
  %i.xn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load177, %i.xl
  %i.xo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load178, %i.xm
  %i.xp = and <8 x i1> %i.wj, %i.xn
  %i.xq = and <8 x i1> %i.wk, %i.xo
  %i.xr = select nsz <8 x i1> %i.xp, <8 x float> %wide.masked.load177, <8 x float> %i.xl ; 2 uses
  %i.xs = select nsz <8 x i1> %i.xq, <8 x float> %wide.masked.load178, <8 x float> %i.xm ; 2 uses
  %i.xt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load179, %i.xr
  %i.xu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load180, %i.xs
  %i.xv = select <8 x i1> %i.wr, <8 x i1> %i.xt, <8 x i1> zeroinitializer
  %i.xw = select <8 x i1> %i.ws, <8 x i1> %i.xu, <8 x i1> zeroinitializer
  %i.xx = select nsz <8 x i1> %i.xv, <8 x float> %wide.masked.load179, <8 x float> %i.xr
  %i.xy = select nsz <8 x i1> %i.xw, <8 x float> %wide.masked.load180, <8 x float> %i.xs
  %i.xz = getelementptr i8, ptr %next.gep, i64 32
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.xx, ptr align 4 %next.gep, <8 x i1> %i.wz), !tbaa !94, !alias.scope !100, !noalias !101
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.xy, ptr align 4 %i.xz, <8 x i1> %i.xa), !tbaa !94, !alias.scope !100, !noalias !101
  %i.ya = zext <8 x i1> %i.wz to <8 x i32>
  %predphi = add <8 x i32> %vec.phi, %i.ya        ; 2 uses
  %i.yb = zext <8 x i1> %i.xa to <8 x i32>
  %predphi181 = add <8 x i32> %vec.phi171, %i.yb  ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.yc = icmp eq i64 %index.next, %n.vec
  br i1 %i.yc, label %middle.block182, label %vector.body170, !llvm.loop !89

middle.block182:                                  ; preds = %vector.body170
  %bin.rdx = add <8 x i32> %predphi181, %predphi
  %i.yd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.i66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block182
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.yd, %vec.epilog.iter.check ], [ %.085110.us.us.i, %vector.main.loop.iter.check ]
  %i.ye = getelementptr i8, ptr %i.vj, i64 %i.ve
  %i.yf = getelementptr i8, ptr %i.vh, i64 %i.ve
  %i.yg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next200, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi191 = phi <8 x i32> [ %i.yg, %vec.epilog.ph ], [ %predphi199, %vec.epilog.vector.body ]
  %i.yh = shl i64 %index190, 2                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.vj, i64 %i.yh
  %next.gep193 = getelementptr i8, ptr %i.vh, i64 %i.yh ; 5 uses
  %wide.load194 = load <8 x float>, ptr %next.gep193, align 4, !tbaa !94, !alias.scope !97 ; 2 uses
  %i.yi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load194, %broadcast.splat185 ; 5 uses
  %i.yj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %broadcast.splat187 ; 4 uses
  %i.yk = getelementptr i8, ptr %next.gep193, i64 -8
  %wide.masked.load195 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yk, <8 x i1> %i.yi, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.yl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yj, %wide.masked.load195 ; 3 uses
  %i.ym = zext <8 x i1> %i.yl to <8 x i32>
  %i.yn = getelementptr [4 x i8], ptr %next.gep193, i64 %i.ug
  %wide.masked.load196 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yn, <8 x i1> %i.yi, <8 x float> poison), !tbaa !94, !alias.scope !98 ; 3 uses
  %i.yo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yj, %wide.masked.load196 ; 2 uses
  %i.yp = select <8 x i1> %i.yl, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.yq = select <8 x i1> %i.yo, <8 x i32> %i.yp, <8 x i32> %i.ym
  %i.yr = getelementptr i8, ptr %next.gep193, i64 8
  %wide.masked.load197 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yr, <8 x i1> %i.yi, <8 x float> poison), !tbaa !94, !alias.scope !97 ; 3 uses
  %i.ys = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yj, %wide.masked.load197 ; 2 uses
  %i.yt = zext <8 x i1> %i.ys to <8 x i32>
  %i.yu = add nuw nsw <8 x i32> %i.yq, %i.yt
  %i.yv = getelementptr [4 x i8], ptr %next.gep193, i64 %i.uh
  %wide.masked.load198 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yv, <8 x i1> %i.yi, <8 x float> poison), !tbaa !94, !alias.scope !99 ; 3 uses
  %i.yw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yj, %wide.masked.load198 ; 2 uses
  %i.yx = zext <8 x i1> %i.yw to <8 x i32>
  %i.yy = add nuw nsw <8 x i32> %i.yu, %i.yx
  %i.yz = icmp samesign uge <8 x i32> %i.yy, %broadcast.splat189
  %i.za = select <8 x i1> %i.yi, <8 x i1> %i.yz, <8 x i1> zeroinitializer ; 2 uses
  %i.zb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load195, zeroinitializer
  %i.zc = and <8 x i1> %i.yl, %i.zb
  %i.zd = select nsz <8 x i1> %i.zc, <8 x float> %wide.masked.load195, <8 x float> zeroinitializer ; 2 uses
  %i.ze = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load196, %i.zd
end_hunk_0
begin_hunk_1_@get_p:bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.12) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.10) #17
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.15) #17
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.14) #17
  %.not7 = icmp eq i32 %i.d, 0
  %. = select i1 %.not7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ %., %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcngettext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !14, i64 8, !8, i64 16, !8, i64 20}
!16 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!17 = !{!"dt_pthread_mutex_t", !7, i64 0}
!18 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!19 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8}
!21 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!22 = !{!"", !21, i64 0, !8, i64 8}
!23 = !{!"", !20, i64 0, !22, i64 16}
!24 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!25 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!26 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!27 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !12, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !13, i64 608, !15, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !16, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !17, i64 712, !11, i64 752, !11, i64 760, !18, i64 768, !18, i64 776, !11, i64 784, !23, i64 792, !24, i64 824, !24, i64 832, !24, i64 840, !24, i64 848, !24, i64 856, !24, i64 864, !24, i64 872, !8, i64 880, !24, i64 888, !24, i64 896, !24, i64 904, !25, i64 912, !25, i64 920, !24, i64 928, !24, i64 936, !8, i64 944, !26, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !24, i64 1096, !11, i64 1104, !8, i64 1112}
!28 = !{!27, !11, i64 704}
!29 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!30 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!31 = !{!"dt_dev_histogram_collection_params_t", !30, i64 0, !8, i64 8}
!32 = !{!"float", !7, i64 0}
!33 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !32, i64 16}
!34 = !{!"short", !7, i64 0}
!35 = !{!"", !34, i64 0, !34, i64 2}
!36 = !{!"", !8, i64 0, !7, i64 16}
!37 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !35, i64 48, !36, i64 64, !7, i64 96, !8, i64 112}
!38 = !{!"p1 float", !11, i64 0}
!39 = !{!"dt_dev_distorted_mask_cache_t", !38, i64 0, !33, i64 8, !14, i64 32, !14, i64 40}
!40 = !{!"dt_dev_pixelpipe_iop_t", !21, i64 0, !29, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !31, i64 40, !13, i64 56, !15, i64 64, !7, i64 88, !32, i64 104, !8, i64 108, !8, i64 112, !14, i64 120, !8, i64 128, !8, i64 132, !33, i64 136, !33, i64 156, !33, i64 176, !33, i64 196, !8, i64 216, !8, i64 220, !37, i64 224, !37, i64 352, !7, i64 480, !8, i64 516, !19, i64 520, !39, i64 528, !39, i64 576}
!41 = !{!40, !11, i64 16}
!42 = !{!"dt_iop_hotpixels_data_t", !8, i64 0, !32, i64 4, !32, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!43 = !{!42, !8, i64 24}
!44 = !{!42, !8, i64 20}
!45 = !{!42, !32, i64 4}
!46 = !{!42, !32, i64 8}
!47 = !{!42, !8, i64 12}
!48 = !{!42, !8, i64 16}
!49 = !{!40, !29, i64 8}
!50 = !{!"any p2 pointer", !11, i64 0}
!51 = !{!"p1 long", !11, i64 0}
!52 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !11, i64 0}
!53 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !14, i64 8, !14, i64 16, !50, i64 24, !51, i64 32, !52, i64 40, !51, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !8, i64 80, !14, i64 88, !14, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!54 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !11, i64 0}
!55 = !{!"p1 _ZTS6_GList", !11, i64 0}
!56 = !{!"p1 omnipotent char", !11, i64 0}
!57 = !{!"dt_dev_detail_mask_t", !33, i64 0, !14, i64 24, !38, i64 32}
!58 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!59 = !{!"double", !7, i64 0}
!60 = !{!"dt_image_geoloc_t", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!62 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!63 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !14, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !32, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !14, i64 1448, !14, i64 1456, !14, i64 1464, !14, i64 1472, !8, i64 1480, !37, i64 1488, !7, i64 1616, !56, i64 1656, !8, i64 1664, !8, i64 1668, !58, i64 1672, !60, i64 1680, !61, i64 1704, !34, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !32, i64 1756, !32, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !55, i64 1856, !62, i64 1864, !8, i64 1872, !8, i64 1876}
!64 = !{!"dt_dev_pixelpipe_t", !53, i64 0, !8, i64 120, !14, i64 128, !38, i64 136, !8, i64 144, !8, i64 148, !32, i64 152, !8, i64 156, !8, i64 160, !37, i64 176, !54, i64 304, !54, i64 312, !54, i64 320, !54, i64 328, !55, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !56, i64 360, !14, i64 368, !8, i64 376, !8, i64 380, !32, i64 384, !7, i64 388, !14, i64 416, !17, i64 424, !17, i64 464, !17, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !57, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !63, i64 656, !8, i64 2544, !56, i64 2552, !8, i64 2560, !55, i64 2568, !55, i64 2576, !55, i64 2584, !8, i64 2592, !38, i64 2600, !14, i64 2608, !7, i64 2616, !7, i64 2632}
!65 = !{!64, !8, i64 184}
!66 = !{!7, !7, i64 0}
!67 = !{!27, !16, i64 664}
!68 = !{!64, !8, i64 644}
!69 = !{!"p1 _ZTS16_GtkToggleButton", !11, i64 0}
!70 = !{!"p1 _ZTS9_GtkLabel", !11, i64 0}
!71 = !{!"dt_iop_hotpixels_gui_data_t", !24, i64 0, !24, i64 8, !69, i64 16, !69, i64 24, !70, i64 32, !8, i64 40}
!72 = !{!71, !8, i64 40}
!73 = !{!63, !8, i64 1428}
!74 = !{!27, !8, i64 488}
!75 = !{!"dt_iop_hotpixels_params_t", !32, i64 0, !32, i64 4, !8, i64 8, !8, i64 12}
!76 = !{!75, !8, i64 12}
!77 = !{!75, !8, i64 8}
!78 = !{!71, !69, i64 16}
!79 = !{!71, !69, i64 24}
!80 = !{!71, !70, i64 32}
!81 = !{!27, !24, i64 824}
!82 = distinct !{!82, !95}
!83 = distinct !{!83, !95}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !84}
!89 = distinct !{!89, !102, !103}
!90 = distinct !{!90, !102, !103}
!91 = distinct !{!91, !102}
!92 = !{!33, !8, i64 8}
!93 = !{!33, !8, i64 12}
!94 = !{!32, !32, i64 0}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!8, !8, i64 0}
!97 = !{!85}
!98 = !{!86}
!99 = !{!87}
!100 = !{!88}
!101 = !{!87, !85, !86}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = !{!"branch_weights", i32 8, i32 8}
!105 = !{!"p1 _ZTS15dt_masks_form_t", !11, i64 0}
!106 = !{!"p1 _ZTS19dt_masks_form_gui_t", !11, i64 0}
!107 = !{!"dt_dev_proxy_exposure_t", !21, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!108 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!109 = !{!"", !108, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!110 = !{!"", !108, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!111 = !{!"", !107, i64 0, !21, i64 40, !109, i64 48, !110, i64 120}
!112 = !{!"dt_dev_chroma_t", !21, i64 0, !21, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!113 = !{!"", !21, i64 0, !21, i64 8, !11, i64 16}
!114 = !{!"", !24, i64 0, !24, i64 8, !8, i64 16, !8, i64 20, !32, i64 24, !32, i64 28, !8, i64 32}
!115 = !{!"", !24, i64 0, !24, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !32, i64 28}
!116 = !{!"", !24, i64 0, !24, i64 8}
!117 = !{!"", !24, i64 0, !8, i64 8}
!118 = !{!"", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!119 = !{!"dt_dev_viewport_t", !24, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !32, i64 68, !32, i64 72, !32, i64 76, !29, i64 80, !24, i64 88, !16, i64 96}
!120 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !59, i64 24, !59, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !59, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !21, i64 88, !29, i64 96, !63, i64 112, !8, i64 2000, !8, i64 2004, !17, i64 2008, !8, i64 2048, !55, i64 2056, !8, i64 2064, !21, i64 2072, !8, i64 2080, !55, i64 2088, !55, i64 2096, !8, i64 2104, !55, i64 2112, !55, i64 2120, !13, i64 2128, !13, i64 2136, !8, i64 2144, !8, i64 2148, !55, i64 2152, !105, i64 2160, !106, i64 2168, !55, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !32, i64 2196, !32, i64 2200, !21, i64 2208, !8, i64 2216, !111, i64 2224, !112, i64 2384, !113, i64 2496, !114, i64 2520, !115, i64 2560, !116, i64 2592, !117, i64 2608, !118, i64 2624, !24, i64 2664, !24, i64 2672, !119, i64 2680, !119, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !55, i64 2904, !8, i64 2912, !16, i64 2920}
!121 = !{!120, !8, i64 0}
!122 = !{!42, !8, i64 0}
!123 = !{!75, !32, i64 0}
!124 = !{!75, !32, i64 4}
!125 = !{!40, !8, i64 32}
!126 = !{!27, !11, i64 680}
!127 = !{!11, !11, i64 0}
!128 = !{!71, !24, i64 0}
!129 = !{!71, !24, i64 8}
!130 = !{!"dt_codepath_t", !8, i64 0}
!131 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!132 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!133 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!134 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!135 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!136 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!137 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!138 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!139 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!140 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!141 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!142 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!143 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!144 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!145 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!146 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!147 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!148 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!149 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!150 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!151 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!152 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!153 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!154 = !{!"_Bool", !7, i64 0}
!155 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!156 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!157 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!158 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!159 = !{!"", !153, i64 0, !17, i64 8, !7, i64 48, !154, i64 96, !154, i64 97, !155, i64 104, !156, i64 112, !157, i64 120, !158, i64 128, !158, i64 136, !158, i64 144}
!160 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!161 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!162 = !{!"dt_sys_resources_t", !14, i64 0, !14, i64 8, !13, i64 16, !13, i64 24, !8, i64 32}
!163 = !{!"dt_backthumb_t", !59, i64 0, !59, i64 8, !8, i64 16, !8, i64 20}
!164 = !{!"dt_gimp_t", !8, i64 0, !56, i64 8, !56, i64 16, !8, i64 24, !8, i64 28}
!165 = !{!"dt_splash_t", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !8, i64 32}
!166 = !{!"darktable_t", !130, i64 0, !8, i64 4, !8, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !131, i64 48, !132, i64 56, !16, i64 64, !133, i64 72, !134, i64 80, !135, i64 88, !136, i64 96, !137, i64 104, !138, i64 112, !139, i64 120, !140, i64 128, !141, i64 136, !142, i64 144, !143, i64 152, !144, i64 160, !145, i64 168, !146, i64 176, !147, i64 184, !148, i64 192, !149, i64 200, !150, i64 208, !151, i64 216, !152, i64 224, !7, i64 232, !17, i64 2792, !17, i64 2832, !17, i64 2872, !17, i64 2912, !17, i64 2952, !17, i64 2992, !56, i64 3032, !56, i64 3040, !56, i64 3048, !56, i64 3056, !56, i64 3064, !56, i64 3072, !56, i64 3080, !56, i64 3088, !56, i64 3096, !56, i64 3104, !56, i64 3112, !56, i64 3120, !56, i64 3128, !159, i64 3136, !55, i64 3288, !59, i64 3296, !55, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !160, i64 3520, !161, i64 3528, !162, i64 3536, !163, i64 3576, !164, i64 3600, !165, i64 3632, !8, i64 3672}
!167 = !{!166, !137, i64 104}
!168 = !{!"p1 _ZTS24dt_introspection_field_t", !11, i64 0}
!169 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !56, i64 8, !14, i64 16, !168, i64 24, !14, i64 32, !14, i64 40}
!170 = !{!169, !8, i64 0}
end_hunk_1
