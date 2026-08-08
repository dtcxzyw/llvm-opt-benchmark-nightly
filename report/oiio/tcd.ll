inline.NumInlined: 112
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@opj_tcd_update_tile_data:bb.a
  %.not53.i = icmp eq i32 %i.m, 0
  br i1 %.not53.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.f
  %.04461.i.us = phi ptr [ %i.ap, %bb.f ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.04660.i.us = phi ptr [ %i.ao, %bb.f ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.04859.i.us = phi i32 [ %i.an, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %.05058.i.us = phi i32 [ %i.aq, %bb.f ], [ 0, %.lr.ph.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.04660.i.us, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !113  ; 2 uses
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.o, 7
  %.not.i.us = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not.i.us to i32
  %spec.select.i.us = add nuw nsw i32 %i.p, %i.r  ; 2 uses
  %i.s = icmp eq i32 %spec.select.i.us, 3
  %spec.store.select.i.us = select i1 %i.s, i32 4, i32 %spec.select.i.us ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04461.i.us, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %.04461.i.us, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !96
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [192 x i8], ptr %i.u, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !156
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !157
  %i.ad = sub i32 %i.aa, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %i.ai = sub i32 %i.af, %i.ah                    ; 2 uses
  %.not54.i.us = icmp eq i32 %i.af, %i.ah
  br i1 %.not54.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.split.us
  %mul.i.us = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ad, i32 %i.ai)
  %mul.ov.i.us = extractvalue { i32, i1 } %mul.i.us, 1
  br i1 %mul.ov.i.us, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.split.us
  %i.aj = mul i32 %i.ai, %i.ad                    ; 2 uses
  %.not55.i.us = icmp eq i32 %spec.store.select.i.us, 0
  br i1 %.not55.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %mul56.i.us = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select.i.us, i32 %i.aj)
  %mul.ov57.i.us = extractvalue { i32, i1 } %mul56.i.us, 1
  br i1 %mul.ov57.i.us, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = mul i32 %i.aj, %spec.store.select.i.us  ; 2 uses
  %i.al = xor i32 %.04859.i.us, -1
  %i.am = icmp ugt i32 %i.ak, %i.al
  br i1 %i.am, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = add i32 %i.ak, %.04859.i.us             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04660.i.us, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.04461.i.us, i64 112
  %i.aq = add nuw i32 %.05058.i.us, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.aq, %i.d
  br i1 %exitcond.not.i.us, label %opj_tcd_get_decoded_tile_size.exit, label %.lr.ph.i.split.us, !llvm.loop !158

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.k
  %.04461.i = phi ptr [ %i.bt, %bb.k ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.04660.i = phi ptr [ %i.bs, %bb.k ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.04859.i = phi i32 [ %i.br, %bb.k ], [ 0, %.lr.ph.i ] ; 2 uses
  %.05058.i = phi i32 [ %i.bu, %bb.k ], [ 0, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.04660.i, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %i.at = lshr i32 %i.as, 3
  %i.au = and i32 %i.as, 7
  %.not.i = icmp ne i32 %i.au, 0
  %i.av = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %i.at, %i.av   ; 2 uses
  %i.aw = icmp eq i32 %spec.select.i, 3
  %spec.store.select.i = select i1 %i.aw, i32 4, i32 %spec.select.i ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04461.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.04461.i, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !96
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [192 x i8], ptr %i.ay, i64 %i.bb ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -192
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -184
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !100
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !97
  %i.bh = sub nsw i32 %i.bf, %i.bg                ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 -180
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 -188
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = sub i32 %i.bj, %i.bl                    ; 2 uses
  %.not54.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not54.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.split
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.bh, i32 %i.bm)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.split
  %i.bn = mul i32 %i.bm, %i.bh                    ; 2 uses
  %.not55.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not55.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %mul56.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select.i, i32 %i.bn)
  %mul.ov57.i = extractvalue { i32, i1 } %mul56.i, 1
  br i1 %mul.ov57.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = mul i32 %i.bn, %spec.store.select.i     ; 2 uses
  %i.bp = xor i32 %.04859.i, -1
  %i.bq = icmp ugt i32 %i.bo, %i.bp
  br i1 %i.bq, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add i32 %i.bo, %.04859.i                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04660.i, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %.04461.i, i64 112
  %i.bu = add nuw i32 %.05058.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond.not.i, label %opj_tcd_get_decoded_tile_size.exit, label %.lr.ph.i.split, !llvm.loop !158

opj_tcd_get_decoded_tile_size.exit:               ; preds = %bb.k, %bb.f
  %.2.i = phi i32 [ %i.an, %bb.f ], [ %i.br, %bb.k ] ; 2 uses
  %i.bv = icmp ne i32 %.2.i, -1
  %i.bw = icmp ule i32 %.2.i, %2
  %or.cond.not = and i1 %i.bv, %i.bw              ; 2 uses
  %.mux = zext i1 %or.cond.not to i32
  br i1 %or.cond.not, label %.lr.ph210, label %opj_tcd_get_decoded_tile_size.exit.thread

.lr.ph210:                                        ; preds = %opj_tcd_get_decoded_tile_size.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !7
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph210, %.loopexit
  %.0102209 = phi ptr [ %1, %.lr.ph210 ], [ %.1, %.loopexit ] ; 16 uses
  %.0122208 = phi i32 [ 0, %.lr.ph210 ], [ %i.nk, %.loopexit ]
  %.0129207 = phi ptr [ %i.cd, %.lr.ph210 ], [ %i.nj, %.loopexit ] ; 4 uses
  %.0130206 = phi ptr [ %i.by, %.lr.ph210 ], [ %i.ni, %.loopexit ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0130206, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !113 ; 2 uses
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = and i32 %i.cg, 7
  %i.cj = getelementptr inbounds nuw i8, ptr %.0129207, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0130206, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !86
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [192 x i8], ptr %i.ck, i64 %i.cn ; 4 uses
  %i.cp = load i32, ptr %i.ce, align 8, !tbaa !155
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load <2 x i32>, ptr %i.cq, align 8, !tbaa !3
  %i.cs = load <2 x i32>, ptr %i.co, align 8, !tbaa !3
  %i.ct = sub nsw <2 x i32> %i.cr, %i.cs          ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0129207, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !96
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [192 x i8], ptr %i.ck, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !100
  %i.db = load i32, ptr %i.cy, align 8, !tbaa !97
  %i.dc = extractelement <2 x i32> %i.ct, i64 0
  %i.dd = add i32 %i.dc, %i.db
  %i.de = sub i32 %i.da, %i.dd
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 184
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  %i.dh = load <2 x i32>, ptr %i.df, align 8, !tbaa !3
  %i.di = load <2 x i32>, ptr %i.dg, align 8, !tbaa !3
  %i.dj = sub <2 x i32> %i.dh, %i.di
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i64 [ 80, %bb.n ], [ 48, %bb.m ]
  %.0121 = phi i32 [ 0, %bb.n ], [ %i.de, %bb.m ] ; 5 uses
  %i.dk = phi <2 x i32> [ %i.dj, %bb.n ], [ %i.ct, %bb.m ] ; 4 uses
  %i.dl = extractelement <2 x i32> %i.dk, i64 0   ; 30 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0129207, i64 %.sink
  %.0118 = load ptr, ptr %i.dm, align 8, !tbaa !264 ; 6 uses
  %.not136 = icmp ne i32 %i.ci, 0
  %i.dn = zext i1 %.not136 to i32
  %spec.select = add nuw nsw i32 %i.ch, %i.dn     ; 2 uses
  %3 = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %3, i32 4, i32 %spec.select
  switch i32 %spec.store.select, label %.loopexit [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 4, label %.preheader153
  ]

.preheader153:                                    ; preds = %bb.o
  %4 = extractelement <2 x i32> %i.dk, i64 1      ; 4 uses
  %.not212 = icmp eq i32 %4, 0
  br i1 %.not212, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader153
  %5 = zext i32 %i.dl to i64                      ; 6 uses
  %6 = shl nuw nsw i64 %5, 2                      ; 5 uses
  %7 = add i32 %i.dl, %.0121
  %8 = zext i32 %7 to i64                         ; 5 uses
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %9 = icmp ult i32 %4, 4
  br i1 %9, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %4, -4
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %.0130206, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !194
  %.not138 = icmp eq i32 %i.dp, 0
  %i.dq = extractelement <2 x i32> %i.dk, i64 1   ; 3 uses
  %.not219.a = icmp eq i32 %i.dq, 0               ; 2 uses
  br i1 %.not138, label %.preheader146, label %.preheader147

.preheader147:                                    ; preds = %bb.p
  br i1 %.not219.a, label %.loopexit, label %.preheader143.lr.ph

.preheader143.lr.ph:                              ; preds = %.preheader147
  %.not218 = icmp eq i32 %i.dl, 0
  %i.dr = zext i32 %.0121 to i64
  br i1 %.not218, label %.loopexit, label %.preheader143.us.preheader

.preheader143.us.preheader:                       ; preds = %.preheader143.lr.ph
  %i.ds = add i32 %i.dl, -1
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = zext i32 %i.dl to i64                   ; 2 uses
  %min.iters.check314 = icmp ult i32 %i.dl, 8
  %n.vec316 = and i64 %i.dv, 4294967288           ; 5 uses
  %i.dw = shl nuw nsw i64 %n.vec316, 2
  %i.dx = trunc nuw i64 %n.vec316 to i32
  %cmp.n325 = icmp eq i64 %n.vec316, %i.dv
  br label %.preheader143.us

.preheader143.us:                                 ; preds = %.preheader143.us.preheader, %._crit_edge.us192
  %.0109190.us = phi ptr [ %i.fv, %._crit_edge.us192 ], [ %.0118, %.preheader143.us.preheader ] ; 6 uses
  %.0113189.us = phi ptr [ %.lcssa292, %._crit_edge.us192 ], [ %.0102209, %.preheader143.us.preheader ] ; 6 uses
  %.0124188.us = phi i32 [ %i.fw, %._crit_edge.us192 ], [ 0, %.preheader143.us.preheader ]
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.preheader143.us
  %scevgep306.a = getelementptr i8, ptr %.0113189.us, i64 1
  %scevgep307.a = getelementptr i8, ptr %scevgep306.a, i64 %i.dt
  %scevgep308.a = getelementptr i8, ptr %.0109190.us, i64 4
  %scevgep309 = getelementptr i8, ptr %scevgep308.a, i64 %i.du
  %bound0310 = icmp ult ptr %.0113189.us, %scevgep309
  %bound1311 = icmp ult ptr %.0109190.us, %scevgep307.a
  %found.conflict312 = and i1 %bound0310, %bound1311
  br i1 %found.conflict312, label %scalar.ph313.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck305
  %i.dy = getelementptr i8, ptr %.0109190.us, i64 %i.dw ; 2 uses
  %i.dz = getelementptr i8, ptr %.0113189.us, i64 %n.vec316 ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next323, %vector.body317 ] ; 3 uses
  %i.ea = shl i64 %index318, 2
  %next.gep319.a = getelementptr i8, ptr %.0109190.us, i64 %i.ea ; 2 uses
  %next.gep320 = getelementptr i8, ptr %.0113189.us, i64 %index318 ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep319.a, i64 16
  %wide.load321.a = load <4 x i32>, ptr %next.gep319.a, align 4, !tbaa !3, !alias.scope !276
  %wide.load322 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !3, !alias.scope !276
  %i.ec = trunc <4 x i32> %wide.load321.a to <4 x i8>
  %i.ed = trunc <4 x i32> %wide.load322 to <4 x i8>
  %i.ee = getelementptr i8, ptr %next.gep320, i64 4
  store <4 x i8> %i.ec, ptr %next.gep320, align 1, !tbaa !31, !alias.scope !279, !noalias !276
  store <4 x i8> %i.ed, ptr %i.ee, align 1, !tbaa !31, !alias.scope !279, !noalias !276
  %index.next323 = add nuw i64 %index318, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next323, %n.vec316
  br i1 %i.ef, label %middle.block324, label %vector.body317, !llvm.loop !281

middle.block324:                                  ; preds = %vector.body317
  br i1 %cmp.n325, label %._crit_edge.us192, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %vector.memcheck305, %.preheader143.us, %middle.block324
  %.1110184.us.ph = phi ptr [ %.0109190.us, %vector.memcheck305 ], [ %.0109190.us, %.preheader143.us ], [ %i.dy, %middle.block324 ] ; 2 uses
  %.1114183.us.ph = phi ptr [ %.0113189.us, %vector.memcheck305 ], [ %.0113189.us, %.preheader143.us ], [ %i.dz, %middle.block324 ] ; 2 uses
  %.0131182.us.ph = phi i32 [ 0, %vector.memcheck305 ], [ 0, %.preheader143.us ], [ %i.dx, %middle.block324 ] ; 4 uses
  %i.eg = sub i32 %i.dl, %.0131182.us.ph
  %xtraiter401 = and i32 %i.eg, 7                 ; 2 uses
  %lcmp.mod402.not = icmp eq i32 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %scalar.ph313.prol.loopexit, label %scalar.ph313.prol

scalar.ph313.prol:                                ; preds = %scalar.ph313.preheader, %scalar.ph313.prol
  %.1110184.us.prol = phi ptr [ %i.eh, %scalar.ph313.prol ], [ %.1110184.us.ph, %scalar.ph313.preheader ] ; 2 uses
  %.1114183.us.prol = phi ptr [ %i.ek, %scalar.ph313.prol ], [ %.1114183.us.ph, %scalar.ph313.preheader ] ; 2 uses
  %.0131182.us.prol = phi i32 [ %i.el, %scalar.ph313.prol ], [ %.0131182.us.ph, %scalar.ph313.preheader ]
  %prol.iter403 = phi i32 [ %prol.iter403.next, %scalar.ph313.prol ], [ 0, %scalar.ph313.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.1110184.us.prol, i64 4 ; 3 uses
  %i.ei = load i32, ptr %.1110184.us.prol, align 4, !tbaa !3
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.1114183.us.prol, i64 1 ; 3 uses
  store i8 %i.ej, ptr %.1114183.us.prol, align 1, !tbaa !31
  %i.el = add nuw i32 %.0131182.us.prol, 1        ; 2 uses
  %prol.iter403.next = add i32 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i32 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %scalar.ph313.prol.loopexit, label %scalar.ph313.prol, !llvm.loop !282

scalar.ph313.prol.loopexit:                       ; preds = %scalar.ph313.prol, %scalar.ph313.preheader
  %.lcssa386.unr.a = phi ptr [ poison, %scalar.ph313.preheader ], [ %i.eh, %scalar.ph313.prol ]
  %.lcssa385.unr = phi ptr [ poison, %scalar.ph313.preheader ], [ %i.ek, %scalar.ph313.prol ]
  %.1110184.us.unr = phi ptr [ %.1110184.us.ph, %scalar.ph313.preheader ], [ %i.eh, %scalar.ph313.prol ]
  %.1114183.us.unr = phi ptr [ %.1114183.us.ph, %scalar.ph313.preheader ], [ %i.ek, %scalar.ph313.prol ]
  %.0131182.us.unr = phi i32 [ %.0131182.us.ph, %scalar.ph313.preheader ], [ %i.el, %scalar.ph313.prol ]
  %i.em = sub i32 %.0131182.us.ph, %i.dl
  %i.en = icmp ugt i32 %i.em, -8
  br i1 %i.en, label %._crit_edge.us192, label %scalar.ph313

scalar.ph313:                                     ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313
  %.1110184.us = phi ptr [ %i.fq, %scalar.ph313 ], [ %.1110184.us.unr, %scalar.ph313.prol.loopexit ] ; 9 uses
  %.1114183.us = phi ptr [ %i.ft, %scalar.ph313 ], [ %.1114183.us.unr, %scalar.ph313.prol.loopexit ] ; 9 uses
  %.0131182.us = phi i32 [ %i.fu, %scalar.ph313 ], [ %.0131182.us.unr, %scalar.ph313.prol.loopexit ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 4
  %i.ep = load i32, ptr %.1110184.us, align 4, !tbaa !3
  %i.eq = trunc i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 1
  store i8 %i.eq, ptr %.1114183.us, align 1, !tbaa !31
  %i.es = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 8
  %i.et = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eu = trunc i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 2
  store i8 %i.eu, ptr %i.er, align 1, !tbaa !31
  %i.ew = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 12
  %i.ex = load i32, ptr %i.es, align 4, !tbaa !3
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 3
  store i8 %i.ey, ptr %i.ev, align 1, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 16
  %i.fb = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 4
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !31
  %i.fe = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 20
  %i.ff = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 5
  store i8 %i.fg, ptr %i.fd, align 1, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 24
  %i.fj = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fk = trunc i32 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 6
  store i8 %i.fk, ptr %i.fh, align 1, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 28
  %i.fn = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 7
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !31
  %i.fq = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 32 ; 2 uses
  %i.fr = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 8 ; 2 uses
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !31
  %i.fu = add nuw i32 %.0131182.us, 8             ; 2 uses
  %exitcond246.not.7 = icmp eq i32 %i.fu, %i.dl
  br i1 %exitcond246.not.7, label %._crit_edge.us192, label %scalar.ph313, !llvm.loop !283

._crit_edge.us192:                                ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313, %middle.block324
  %.lcssa293.a = phi ptr [ %i.dy, %middle.block324 ], [ %.lcssa386.unr.a, %scalar.ph313.prol.loopexit ], [ %i.fq, %scalar.ph313 ]
  %.lcssa292 = phi ptr [ %i.dz, %middle.block324 ], [ %.lcssa385.unr, %scalar.ph313.prol.loopexit ], [ %i.ft, %scalar.ph313 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.lcssa293.a, i64 %i.dr
  %i.fw = add nuw i32 %.0124188.us, 1             ; 2 uses
  %exitcond247.not = icmp eq i32 %i.fw, %i.dq
  br i1 %exitcond247.not, label %.loopexit, label %.preheader143.us, !llvm.loop !284

.preheader146:                                    ; preds = %bb.p
  br i1 %.not219.a, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader146
  %.not220 = icmp eq i32 %i.dl, 0
  %i.fx = zext i32 %.0121 to i64
  br i1 %.not220, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.fy = add i32 %i.dl, -1
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = shl nuw nsw i64 %i.fz, 2
  %i.gb = zext i32 %i.dl to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.dl, 8
  %n.vec = and i64 %i.gb, 4294967288              ; 5 uses
  %i.gc = shl nuw nsw i64 %n.vec, 2
  %i.gd = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.gb
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us204
  %.2111202.us = phi ptr [ %i.ib, %._crit_edge.us204 ], [ %.0118, %.preheader.us.preheader ] ; 6 uses
  %.2115201.us = phi ptr [ %.lcssa294, %._crit_edge.us204 ], [ %.0102209, %.preheader.us.preheader ] ; 6 uses
  %.1125200.us = phi i32 [ %i.ic, %._crit_edge.us204 ], [ 0, %.preheader.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %.2115201.us, i64 1
  %scevgep298.a = getelementptr i8, ptr %scevgep, i64 %i.fz
  %scevgep299.a = getelementptr i8, ptr %.2111202.us, i64 4
  %scevgep300 = getelementptr i8, ptr %scevgep299.a, i64 %i.ga
  %bound0 = icmp ult ptr %.2115201.us, %scevgep300
  %bound1 = icmp ult ptr %.2111202.us, %scevgep298.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ge = getelementptr i8, ptr %.2111202.us, i64 %i.gc ; 2 uses
  %i.gf = getelementptr i8, ptr %.2115201.us, i64 %n.vec ; 2 uses
  br label %vector.body

end_hunk_0
begin_hunk_1_@opj_tcd_update_tile_data:bb.a
  %i.jl = load i32, ptr %i.jg, align 4, !tbaa !3
  %i.jm = trunc i32 %i.jl to i16
  store i16 %i.jm, ptr %i.jj, align 2
  %i.jn = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 4
  %i.jo = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 12
  %i.jp = load i32, ptr %i.jk, align 4, !tbaa !3
  %i.jq = trunc i32 %i.jp to i16
  store i16 %i.jq, ptr %i.jn, align 2
  %i.jr = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 6
  %i.js = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 16
  %i.jt = load i32, ptr %i.jo, align 4, !tbaa !3
  %i.ju = trunc i32 %i.jt to i16
  store i16 %i.ju, ptr %i.jr, align 2
  %i.jv = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 20
  %i.jx = load i32, ptr %i.js, align 4, !tbaa !3
  %i.jy = trunc i32 %i.jx to i16
  store i16 %i.jy, ptr %i.jv, align 2
  %i.jz = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 10
  %i.ka = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 24
  %i.kb = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.kc = trunc i32 %i.kb to i16
  store i16 %i.kc, ptr %i.jz, align 2
  %i.kd = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 12
  %i.ke = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 28
  %i.kf = load i32, ptr %i.ka, align 4, !tbaa !3
  %i.kg = trunc i32 %i.kf to i16
  store i16 %i.kg, ptr %i.kd, align 2
  %i.kh = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 14
  %i.ki = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 32 ; 2 uses
  %i.kj = load i32, ptr %i.ke, align 4, !tbaa !3
  %i.kk = trunc i32 %i.kj to i16
  store i16 %i.kk, ptr %i.kh, align 2
  %i.kl = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 16 ; 2 uses
  %i.km = add nuw i32 %.2133159.us, 8             ; 2 uses
  %exitcond242.not.7 = icmp eq i32 %i.km, %i.dl
  br i1 %exitcond242.not.7, label %._crit_edge.us, label %scalar.ph361, !llvm.loop !301

._crit_edge.us:                                   ; preds = %scalar.ph361.prol.loopexit, %scalar.ph361, %middle.block372
  %.lcssa289.a = phi ptr [ %i.iq, %middle.block372 ], [ %.lcssa382.unr.a, %scalar.ph361.prol.loopexit ], [ %i.ki, %scalar.ph361 ]
  %.lcssa288 = phi ptr [ %i.ip, %middle.block372 ], [ %.lcssa381.unr, %scalar.ph361.prol.loopexit ], [ %i.kl, %scalar.ph361 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.lcssa289.a, i64 %i.ig
  %i.ko = add nuw i32 %.2126165.us, 1             ; 2 uses
  %exitcond243.not = icmp eq i32 %i.ko, %i.if
  br i1 %exitcond243.not, label %.loopexit, label %.preheader145.us, !llvm.loop !302

.preheader149:                                    ; preds = %bb.q
  br i1 %.not215.a, label %.loopexit, label %.preheader144.lr.ph

.preheader144.lr.ph:                              ; preds = %.preheader149
  %.not216 = icmp eq i32 %i.dl, 0
  %i.kp = zext i32 %.0121 to i64
  br i1 %.not216, label %.loopexit, label %.preheader144.us.preheader

.preheader144.us.preheader:                       ; preds = %.preheader144.lr.ph
  %i.kq = add i32 %i.dl, -1
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %i.ks = shl nuw nsw i64 %i.kr, 1
  %i.kt = shl nuw nsw i64 %i.kr, 2
  %i.ku = zext i32 %i.dl to i64                   ; 2 uses
  %min.iters.check338 = icmp ult i32 %i.dl, 8
  %n.vec340 = and i64 %i.ku, 4294967288           ; 5 uses
  %i.kv = shl nuw nsw i64 %n.vec340, 1
  %i.kw = shl nuw nsw i64 %n.vec340, 2
  %i.kx = trunc nuw i64 %n.vec340 to i32
  %cmp.n349 = icmp eq i64 %n.vec340, %i.ku
  br label %.preheader144.us

.preheader144.us:                                 ; preds = %.preheader144.us.preheader, %._crit_edge.us180
  %.2178.us = phi ptr [ %.lcssa290, %._crit_edge.us180 ], [ %.0102209, %.preheader144.us.preheader ] ; 6 uses
  %.2107177.us = phi ptr [ %i.mw, %._crit_edge.us180 ], [ %.0118, %.preheader144.us.preheader ] ; 6 uses
  %.3127176.us = phi i32 [ %i.mx, %._crit_edge.us180 ], [ 0, %.preheader144.us.preheader ]
  br i1 %min.iters.check338, label %scalar.ph337.preheader, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.preheader144.us
  %scevgep330.a = getelementptr i8, ptr %.2178.us, i64 2
  %scevgep331.a = getelementptr i8, ptr %scevgep330.a, i64 %i.ks
  %scevgep332.a = getelementptr i8, ptr %.2107177.us, i64 4
  %scevgep333 = getelementptr i8, ptr %scevgep332.a, i64 %i.kt
  %bound0334 = icmp ult ptr %.2178.us, %scevgep333
  %bound1335 = icmp ult ptr %.2107177.us, %scevgep331.a
  %found.conflict336 = and i1 %bound0334, %bound1335
  br i1 %found.conflict336, label %scalar.ph337.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck329
  %i.ky = getelementptr i8, ptr %.2178.us, i64 %i.kv ; 2 uses
  %i.kz = getelementptr i8, ptr %.2107177.us, i64 %i.kw ; 2 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next347, %vector.body341 ] ; 3 uses
  %i.la = shl i64 %index342, 1
  %next.gep343.a = getelementptr i8, ptr %.2178.us, i64 %i.la ; 2 uses
  %i.lb = shl i64 %index342, 2
  %next.gep344 = getelementptr i8, ptr %.2107177.us, i64 %i.lb ; 2 uses
  %i.lc = getelementptr i8, ptr %next.gep344, i64 16
  %wide.load345.a = load <4 x i32>, ptr %next.gep344, align 4, !tbaa !3, !alias.scope !303
  %wide.load346 = load <4 x i32>, ptr %i.lc, align 4, !tbaa !3, !alias.scope !303
  %i.ld = trunc <4 x i32> %wide.load345.a to <4 x i16>
  %i.le = trunc <4 x i32> %wide.load346 to <4 x i16>
  %i.lf = getelementptr i8, ptr %next.gep343.a, i64 8
  store <4 x i16> %i.ld, ptr %next.gep343.a, align 2, !alias.scope !306, !noalias !303
  store <4 x i16> %i.le, ptr %i.lf, align 2, !alias.scope !306, !noalias !303
  %index.next347 = add nuw i64 %index342, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next347, %n.vec340
  br i1 %i.lg, label %middle.block348, label %vector.body341, !llvm.loop !308

middle.block348:                                  ; preds = %vector.body341
  br i1 %cmp.n349, label %._crit_edge.us180, label %scalar.ph337.preheader

scalar.ph337.preheader:                           ; preds = %vector.memcheck329, %.preheader144.us, %middle.block348
  %.3172.us.ph = phi ptr [ %.2178.us, %vector.memcheck329 ], [ %.2178.us, %.preheader144.us ], [ %i.ky, %middle.block348 ] ; 2 uses
  %.3108171.us.ph = phi ptr [ %.2107177.us, %vector.memcheck329 ], [ %.2107177.us, %.preheader144.us ], [ %i.kz, %middle.block348 ] ; 2 uses
  %.3134170.us.ph = phi i32 [ 0, %vector.memcheck329 ], [ 0, %.preheader144.us ], [ %i.kx, %middle.block348 ] ; 4 uses
  %i.lh = sub i32 %i.dl, %.3134170.us.ph
  %xtraiter398 = and i32 %i.lh, 7                 ; 2 uses
  %lcmp.mod399.not = icmp eq i32 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %scalar.ph337.prol.loopexit, label %scalar.ph337.prol

scalar.ph337.prol:                                ; preds = %scalar.ph337.preheader, %scalar.ph337.prol
  %.3172.us.prol = phi ptr [ %i.ll, %scalar.ph337.prol ], [ %.3172.us.ph, %scalar.ph337.preheader ] ; 2 uses
  %.3108171.us.prol = phi ptr [ %i.li, %scalar.ph337.prol ], [ %.3108171.us.ph, %scalar.ph337.preheader ] ; 2 uses
  %.3134170.us.prol = phi i32 [ %i.lm, %scalar.ph337.prol ], [ %.3134170.us.ph, %scalar.ph337.preheader ]
  %prol.iter400 = phi i32 [ %prol.iter400.next, %scalar.ph337.prol ], [ 0, %scalar.ph337.preheader ]
  %i.li = getelementptr inbounds nuw i8, ptr %.3108171.us.prol, i64 4 ; 3 uses
  %i.lj = load i32, ptr %.3108171.us.prol, align 4, !tbaa !3
  %i.lk = trunc i32 %i.lj to i16
  store i16 %i.lk, ptr %.3172.us.prol, align 2
  %i.ll = getelementptr inbounds nuw i8, ptr %.3172.us.prol, i64 2 ; 3 uses
  %i.lm = add nuw i32 %.3134170.us.prol, 1        ; 2 uses
  %prol.iter400.next = add i32 %prol.iter400, 1   ; 2 uses
  %prol.iter400.cmp.not = icmp eq i32 %prol.iter400.next, %xtraiter398
  br i1 %prol.iter400.cmp.not, label %scalar.ph337.prol.loopexit, label %scalar.ph337.prol, !llvm.loop !309

scalar.ph337.prol.loopexit:                       ; preds = %scalar.ph337.prol, %scalar.ph337.preheader
  %.lcssa384.unr = phi ptr [ poison, %scalar.ph337.preheader ], [ %i.li, %scalar.ph337.prol ]
  %.lcssa383.unr = phi ptr [ poison, %scalar.ph337.preheader ], [ %i.ll, %scalar.ph337.prol ]
  %.3172.us.unr = phi ptr [ %.3172.us.ph, %scalar.ph337.preheader ], [ %i.ll, %scalar.ph337.prol ]
  %.3108171.us.unr = phi ptr [ %.3108171.us.ph, %scalar.ph337.preheader ], [ %i.li, %scalar.ph337.prol ]
  %.3134170.us.unr = phi i32 [ %.3134170.us.ph, %scalar.ph337.preheader ], [ %i.lm, %scalar.ph337.prol ]
  %i.ln = sub i32 %.3134170.us.ph, %i.dl
  %i.lo = icmp ugt i32 %i.ln, -8
  br i1 %i.lo, label %._crit_edge.us180, label %scalar.ph337

scalar.ph337:                                     ; preds = %scalar.ph337.prol.loopexit, %scalar.ph337
  %.3172.us = phi ptr [ %i.mu, %scalar.ph337 ], [ %.3172.us.unr, %scalar.ph337.prol.loopexit ] ; 9 uses
  %.3108171.us = phi ptr [ %i.mr, %scalar.ph337 ], [ %.3108171.us.unr, %scalar.ph337.prol.loopexit ] ; 9 uses
  %.3134170.us = phi i32 [ %i.mv, %scalar.ph337 ], [ %.3134170.us.unr, %scalar.ph337.prol.loopexit ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 4
  %i.lq = load i32, ptr %.3108171.us, align 4, !tbaa !3
  %i.lr = trunc i32 %i.lq to i16
  store i16 %i.lr, ptr %.3172.us, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %.3172.us, i64 2
  %i.lt = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 8
  %i.lu = load i32, ptr %i.lp, align 4, !tbaa !3
  %i.lv = trunc i32 %i.lu to i16
  store i16 %i.lv, ptr %i.ls, align 2
  %i.lw = getelementptr inbounds nuw i8, ptr %.3172.us, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 12
  %i.ly = load i32, ptr %i.lt, align 4, !tbaa !3
  %i.lz = trunc i32 %i.ly to i16
  store i16 %i.lz, ptr %i.lw, align 2
  %i.ma = getelementptr inbounds nuw i8, ptr %.3172.us, i64 6
  %i.mb = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 16
  %i.mc = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.md = trunc i32 %i.mc to i16
  store i16 %i.md, ptr %i.ma, align 2
  %i.me = getelementptr inbounds nuw i8, ptr %.3172.us, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 20
  %i.mg = load i32, ptr %i.mb, align 4, !tbaa !3
  %i.mh = trunc i32 %i.mg to i16
  store i16 %i.mh, ptr %i.me, align 2
  %i.mi = getelementptr inbounds nuw i8, ptr %.3172.us, i64 10
  %i.mj = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 24
  %i.mk = load i32, ptr %i.mf, align 4, !tbaa !3
  %i.ml = trunc i32 %i.mk to i16
  store i16 %i.ml, ptr %i.mi, align 2
  %i.mm = getelementptr inbounds nuw i8, ptr %.3172.us, i64 12
  %i.mn = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 28
  %i.mo = load i32, ptr %i.mj, align 4, !tbaa !3
  %i.mp = trunc i32 %i.mo to i16
  store i16 %i.mp, ptr %i.mm, align 2
  %i.mq = getelementptr inbounds nuw i8, ptr %.3172.us, i64 14
  %i.mr = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 32 ; 2 uses
  %i.ms = load i32, ptr %i.mn, align 4, !tbaa !3
  %i.mt = trunc i32 %i.ms to i16
  store i16 %i.mt, ptr %i.mq, align 2
  %i.mu = getelementptr inbounds nuw i8, ptr %.3172.us, i64 16 ; 2 uses
  %i.mv = add nuw i32 %.3134170.us, 8             ; 2 uses
  %exitcond244.not.7 = icmp eq i32 %i.mv, %i.dl
  br i1 %exitcond244.not.7, label %._crit_edge.us180, label %scalar.ph337, !llvm.loop !310

._crit_edge.us180:                                ; preds = %scalar.ph337.prol.loopexit, %scalar.ph337, %middle.block348
  %.lcssa291 = phi ptr [ %i.kz, %middle.block348 ], [ %.lcssa384.unr, %scalar.ph337.prol.loopexit ], [ %i.mr, %scalar.ph337 ]
  %.lcssa290 = phi ptr [ %i.ky, %middle.block348 ], [ %.lcssa383.unr, %scalar.ph337.prol.loopexit ], [ %i.mu, %scalar.ph337 ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.lcssa291, i64 %i.kp
  %i.mx = add nuw i32 %.3127176.us, 1             ; 2 uses
  %exitcond245.not = icmp eq i32 %i.mx, %i.if
  br i1 %exitcond245.not, label %.loopexit, label %.preheader144.us, !llvm.loop !311

bb.r:                                             ; preds = %bb.r, %.lr.ph.new
  %.0158 = phi ptr [ %.0118, %.lr.ph.new ], [ %i.nf, %bb.r ] ; 2 uses
  %.0100157 = phi ptr [ %.0102209, %.lr.ph.new ], [ %i.ne, %bb.r ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0100157, ptr align 4 %.0158, i64 %6, i1 false)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.0100157, i64 %5 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.0158, i64 %8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.my, ptr align 4 %i.mz, i64 %6, i1 false)
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %5 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.na, ptr align 4 %i.nb, i64 %6, i1 false)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %5 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nc, ptr align 4 %i.nd, i64 %6, i1 false)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %5 ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %8 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit380.unr-lcssa, label %bb.r, !llvm.loop !312

.loopexit.loopexit380.unr-lcssa:                  ; preds = %bb.r
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit380.unr-lcssa, %.lr.ph
  %.0158.epil.init = phi ptr [ %.0118, %.lr.ph ], [ %i.nf, %.loopexit.loopexit380.unr-lcssa ]
  %.0100157.epil.init = phi ptr [ %.0102209, %.lr.ph ], [ %i.ne, %.loopexit.loopexit380.unr-lcssa ]
  %lcmp.mod395 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod395)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0158.epil = phi ptr [ %.0158.epil.init, %.epil.preheader ], [ %i.nh, %bb.s ] ; 2 uses
  %.0100157.epil = phi ptr [ %.0100157.epil.init, %.epil.preheader ], [ %i.ng, %bb.s ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0100157.epil, ptr align 4 %.0158.epil, i64 %6, i1 false)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.0100157.epil, i64 %5 ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.0158.epil, i64 %8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.s, !llvm.loop !313

.loopexit:                                        ; preds = %.loopexit.loopexit380.unr-lcssa, %bb.s, %._crit_edge.us, %._crit_edge.us180, %._crit_edge.us192, %._crit_edge.us204, %.preheader144.lr.ph, %.preheader145.lr.ph, %.preheader.lr.ph, %.preheader143.lr.ph, %.preheader153, %.preheader151, %.preheader149, %.preheader147, %.preheader146, %bb.o
  %.1 = phi ptr [ %.0102209, %bb.o ], [ %.lcssa294, %._crit_edge.us204 ], [ %.lcssa290, %._crit_edge.us180 ], [ %.lcssa288, %._crit_edge.us ], [ %.0102209, %.preheader144.lr.ph ], [ %.0102209, %.preheader146 ], [ %.0102209, %.preheader143.lr.ph ], [ %.0102209, %.preheader147 ], [ %.lcssa292, %._crit_edge.us192 ], [ %.0102209, %.preheader149 ], [ %.0102209, %.preheader145.lr.ph ], [ %.0102209, %.preheader151 ], [ %.0102209, %.preheader.lr.ph ], [ %.0102209, %.preheader153 ], [ %i.ne, %.loopexit.loopexit380.unr-lcssa ], [ %i.ng, %bb.s ]
  %i.ni = getelementptr inbounds nuw i8, ptr %.0130206, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.0129207, i64 112
  %i.nk = add nuw i32 %.0122208, 1                ; 2 uses
  %i.nl = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !21
  %i.no = icmp ult i32 %i.nk, %i.nn
  br i1 %i.no, label %bb.l, label %opj_tcd_get_decoded_tile_size.exit.thread, !llvm.loop !314

opj_tcd_get_decoded_tile_size.exit.thread:        ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.d, %bb.b, %.loopexit, %opj_tcd_get_decoded_tile_size.exit, %bb.a
  %.0101 = phi i32 [ %.mux, %opj_tcd_get_decoded_tile_size.exit ], [ 1, %.loopexit ], [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @opj_tcd_get_encoder_input_buffer_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.025 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.01924 = phi ptr [ %i.ah, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.02023 = phi ptr [ %i.ag, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.02122 = phi i64 [ %i.af, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.02023, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %i.n = lshr i32 %i.m, 3
  %i.o = and i32 %i.m, 7
  %.not = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.n, %i.p       ; 2 uses
  %i.q = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %i.q, i32 4, i32 %spec.select
  %i.r = zext nneg i32 %spec.store.select to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01924, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92
  %i.u = load i32, ptr %.01924, align 8, !tbaa !89
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.01924, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %.01924, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !91
  %i.ab = sub nsw i32 %i.y, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.w
  %i.ae = mul i64 %i.ad, %i.r
  %i.af = add i64 %i.ae, %.02122                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02023, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01924, i64 112
  %i.ai = add nuw i32 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !315

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.021.lcssa = phi i64 [ 0, %bb.a ], [ %i.af, %.lr.ph ]
  ret i64 %.021.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @opj_tcd_copy_tile_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not26.i = icmp eq i32 %i.d, 0
  br i1 %.not26.i, label %opj_tcd_get_encoder_input_buffer_size.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.01924.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.k, %.lr.ph.preheader.i ] ; 5 uses
  %.02023.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.02122.i = phi i64 [ %i.af, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.02023.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %i.n = lshr i32 %i.m, 3
  %i.o = and i32 %i.m, 7
  %.not.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %i.n, %i.p     ; 2 uses
  %i.q = icmp eq i32 %spec.select.i, 3
  %spec.store.select.i = select i1 %i.q, i32 4, i32 %spec.select.i
  %i.r = zext nneg i32 %spec.store.select.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01924.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92
  %i.u = load i32, ptr %.01924.i, align 8, !tbaa !89
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.01924.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %.01924.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !91
  %i.ab = sub nsw i32 %i.y, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.w
  %i.ae = mul i64 %i.ad, %i.r
  %i.af = add i64 %i.ae, %.02122.i                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02023.i, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01924.i, i64 112
  %i.ai = add nuw i32 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, %i.d
  br i1 %exitcond.not.i, label %opj_tcd_get_encoder_input_buffer_size.exit.thread, label %.lr.ph.i, !llvm.loop !315

opj_tcd_get_encoder_input_buffer_size.exit:       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  %spec.select146 = zext i1 %.not to i32
  br label %.loopexit85

opj_tcd_get_encoder_input_buffer_size.exit.thread: ; preds = %.lr.ph.i
  %.not136 = icmp eq i64 %i.af, %2
  br i1 %.not136, label %.lr.ph113.preheader, label %.loopexit85

.lr.ph113.preheader:                              ; preds = %opj_tcd_get_encoder_input_buffer_size.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !7
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %.loopexit
  %.066112 = phi ptr [ %.167, %.loopexit ], [ %1, %.lr.ph113.preheader ] ; 28 uses
  %.069111 = phi ptr [ %i.ik, %.loopexit ], [ %i.ap, %.lr.ph113.preheader ] ; 8 uses
  %.070110 = phi ptr [ %i.ij, %.loopexit ], [ %i.ak, %.lr.ph113.preheader ] ; 4 uses
  %.071109 = phi i32 [ %i.il, %.loopexit ], [ 0, %.lr.ph113.preheader ]
  %.066112216 = ptrtoaddr ptr %.066112 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.070110, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %i.as = lshr i32 %i.ar, 3
  %i.at = and i32 %i.ar, 7
  %i.au = getelementptr inbounds nuw i8, ptr %.069111, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !92
  %i.aw = load i32, ptr %.069111, align 8, !tbaa !89
  %i.ax = sub i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.069111, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !93
  %i.bb = getelementptr inbounds nuw i8, ptr %.069111, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !91
  %i.bd = sub i32 %i.ba, %i.bc
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = mul nsw i64 %i.be, %i.ay                ; 31 uses
  %.not75 = icmp ne i32 %i.at, 0
  %i.bg = zext i1 %.not75 to i32
  %spec.select = add nuw nsw i32 %i.as, %i.bg     ; 2 uses
  %3 = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %3, i32 4, i32 %spec.select
  switch i32 %spec.store.select, label %.loopexit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph113
  %i.bh = getelementptr inbounds nuw i8, ptr %.069111, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.070110, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !194
  %.not77 = icmp eq i32 %i.bk, 0
  %.not119 = icmp eq i64 %i.bf, 0                 ; 2 uses
  br i1 %.not77, label %.preheader, label %.preheader78

.preheader78:                                     ; preds = %bb.b
  br i1 %.not119, label %.loopexit, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader78
  %min.iters.check168 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check168, label %.lr.ph102.preheader235, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph102.preheader
  %i.bl = shl nsw i64 %i.be, 2
  %i.bm = mul i64 %i.bl, %i.ay
  %scevgep162 = getelementptr i8, ptr %i.bi, i64 %i.bm
  %scevgep163 = getelementptr i8, ptr %.066112, i64 %i.bf
  %bound0164 = icmp ult ptr %i.bi, %scevgep163
  %bound1165 = icmp ult ptr %.066112, %scevgep162
  %found.conflict166 = and i1 %bound0164, %bound1165
  br i1 %found.conflict166, label %.lr.ph102.preheader235, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck161
  %n.vec170 = and i64 %i.bf, -8                   ; 5 uses
  %i.bn = shl i64 %n.vec170, 2
  %i.bo = getelementptr i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr i8, ptr %.066112, i64 %n.vec170 ; 2 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next177, %vector.body171 ] ; 3 uses
  %i.bq = shl i64 %index172, 2
  %next.gep173 = getelementptr i8, ptr %i.bi, i64 %i.bq ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.066112, i64 %index172 ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep174, i64 4
  %wide.load175 = load <4 x i8>, ptr %next.gep174, align 1, !tbaa !31, !alias.scope !316
  %wide.load176 = load <4 x i8>, ptr %i.br, align 1, !tbaa !31, !alias.scope !316
  %i.bs = sext <4 x i8> %wide.load175 to <4 x i32>
  %i.bt = sext <4 x i8> %wide.load176 to <4 x i32>
  %i.bu = getelementptr i8, ptr %next.gep173, i64 16
  store <4 x i32> %i.bs, ptr %next.gep173, align 4, !tbaa !3, !alias.scope !319, !noalias !316
  store <4 x i32> %i.bt, ptr %i.bu, align 4, !tbaa !3, !alias.scope !319, !noalias !316
  %index.next177 = add nuw i64 %index172, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.bv, label %middle.block178, label %vector.body171, !llvm.loop !321

middle.block178:                                  ; preds = %vector.body171
  %cmp.n179 = icmp eq i64 %i.bf, %n.vec170
  br i1 %cmp.n179, label %.loopexit, label %.lr.ph102.preheader235

.lr.ph102.preheader235:                           ; preds = %vector.memcheck161, %.lr.ph102.preheader, %middle.block178
  %.060101.ph = phi ptr [ %i.bi, %vector.memcheck161 ], [ %i.bi, %.lr.ph102.preheader ], [ %i.bo, %middle.block178 ] ; 2 uses
  %.062100.ph = phi ptr [ %.066112, %vector.memcheck161 ], [ %.066112, %.lr.ph102.preheader ], [ %i.bp, %middle.block178 ] ; 2 uses
  %.07299.ph = phi i64 [ 0, %vector.memcheck161 ], [ 0, %.lr.ph102.preheader ], [ %n.vec170, %middle.block178 ] ; 3 uses
  %xtraiter248 = and i64 %i.bf, 7                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.lr.ph102.prol.loopexit, label %.lr.ph102.prol

.lr.ph102.prol:                                   ; preds = %.lr.ph102.preheader235, %.lr.ph102.prol
  %.060101.prol = phi ptr [ %i.bz, %.lr.ph102.prol ], [ %.060101.ph, %.lr.ph102.preheader235 ] ; 2 uses
  %.062100.prol = phi ptr [ %i.bw, %.lr.ph102.prol ], [ %.062100.ph, %.lr.ph102.preheader235 ] ; 2 uses
  %.07299.prol = phi i64 [ %i.ca, %.lr.ph102.prol ], [ %.07299.ph, %.lr.ph102.preheader235 ]
  %prol.iter250 = phi i64 [ %prol.iter250.next, %.lr.ph102.prol ], [ 0, %.lr.ph102.preheader235 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.062100.prol, i64 1 ; 3 uses
  %i.bx = load i8, ptr %.062100.prol, align 1, !tbaa !31
  %i.by = sext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.060101.prol, i64 4 ; 2 uses
  store i32 %i.by, ptr %.060101.prol, align 4, !tbaa !3
  %i.ca = add nuw i64 %.07299.prol, 1             ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %.lr.ph102.prol.loopexit, label %.lr.ph102.prol, !llvm.loop !322

.lr.ph102.prol.loopexit:                          ; preds = %.lr.ph102.prol, %.lr.ph102.preheader235
  %.lcssa245.unr = phi ptr [ poison, %.lr.ph102.preheader235 ], [ %i.bw, %.lr.ph102.prol ]
  %.060101.unr = phi ptr [ %.060101.ph, %.lr.ph102.preheader235 ], [ %i.bz, %.lr.ph102.prol ]
  %.062100.unr = phi ptr [ %.062100.ph, %.lr.ph102.preheader235 ], [ %i.bw, %.lr.ph102.prol ]
  %.07299.unr = phi i64 [ %.07299.ph, %.lr.ph102.preheader235 ], [ %i.ca, %.lr.ph102.prol ]
  %i.cb = sub i64 %.07299.ph, %i.bf
  %i.cc = icmp ugt i64 %i.cb, -8
  br i1 %i.cc, label %.loopexit, label %.lr.ph102

.preheader:                                       ; preds = %bb.b
  br i1 %.not119, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check, label %.lr.ph107.preheader234, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.preheader
  %i.cd = shl nsw i64 %i.be, 2
  %i.ce = mul i64 %i.cd, %i.ay
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.ce
  %scevgep156 = getelementptr i8, ptr %.066112, i64 %i.bf
  %bound0 = icmp ult ptr %i.bi, %scevgep156
  %bound1 = icmp ult ptr %.066112, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph107.preheader234, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, -8                      ; 5 uses
  %i.cf = shl i64 %n.vec, 2
  %i.cg = getelementptr i8, ptr %i.bi, i64 %i.cf
  %i.ch = getelementptr i8, ptr %.066112, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.ci ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.066112, i64 %index ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep157, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep157, align 1, !tbaa !31, !alias.scope !323
  %wide.load158 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !31, !alias.scope !323
  %i.ck = zext <4 x i8> %wide.load to <4 x i32>
  %i.cl = zext <4 x i8> %wide.load158 to <4 x i32>
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ck, ptr %next.gep, align 4, !tbaa !3, !alias.scope !326, !noalias !323
  store <4 x i32> %i.cl, ptr %i.cm, align 4, !tbaa !3, !alias.scope !326, !noalias !323
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph107.preheader234

.lr.ph107.preheader234:                           ; preds = %vector.memcheck, %.lr.ph107.preheader, %middle.block
  %.161106.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph107.preheader ], [ %i.cg, %middle.block ] ; 2 uses
  %.163105.ph = phi ptr [ %.066112, %vector.memcheck ], [ %.066112, %.lr.ph107.preheader ], [ %i.ch, %middle.block ] ; 2 uses
  %.173104.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter251 = and i64 %i.bf, 7                 ; 2 uses
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader234, %.lr.ph107.prol
  %.161106.prol = phi ptr [ %i.cr, %.lr.ph107.prol ], [ %.161106.ph, %.lr.ph107.preheader234 ] ; 2 uses
  %.163105.prol = phi ptr [ %i.co, %.lr.ph107.prol ], [ %.163105.ph, %.lr.ph107.preheader234 ] ; 2 uses
  %.173104.prol = phi i64 [ %i.cs, %.lr.ph107.prol ], [ %.173104.ph, %.lr.ph107.preheader234 ]
  %prol.iter253 = phi i64 [ %prol.iter253.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader234 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.163105.prol, i64 1 ; 3 uses
  %i.cp = load i8, ptr %.163105.prol, align 1, !tbaa !31
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.161106.prol, i64 4 ; 2 uses
  store i32 %i.cq, ptr %.161106.prol, align 4, !tbaa !3
  %i.cs = add nuw i64 %.173104.prol, 1            ; 2 uses
  %prol.iter253.next = add i64 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i64 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !329

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader234
  %.lcssa246.unr = phi ptr [ poison, %.lr.ph107.preheader234 ], [ %i.co, %.lr.ph107.prol ]
  %.161106.unr = phi ptr [ %.161106.ph, %.lr.ph107.preheader234 ], [ %i.cr, %.lr.ph107.prol ]
  %.163105.unr = phi ptr [ %.163105.ph, %.lr.ph107.preheader234 ], [ %i.co, %.lr.ph107.prol ]
  %.173104.unr = phi i64 [ %.173104.ph, %.lr.ph107.preheader234 ], [ %i.cs, %.lr.ph107.prol ]
  %i.ct = sub i64 %.173104.ph, %i.bf
  %i.cu = icmp ugt i64 %i.ct, -8
  br i1 %i.cu, label %.loopexit, label %.lr.ph107

.lr.ph102:                                        ; preds = %.lr.ph102.prol.loopexit, %.lr.ph102
  %.060101 = phi ptr [ %i.ea, %.lr.ph102 ], [ %.060101.unr, %.lr.ph102.prol.loopexit ] ; 9 uses
  %.062100 = phi ptr [ %i.dx, %.lr.ph102 ], [ %.062100.unr, %.lr.ph102.prol.loopexit ] ; 9 uses
  %.07299 = phi i64 [ %i.eb, %.lr.ph102 ], [ %.07299.unr, %.lr.ph102.prol.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.062100, i64 1
  %i.cw = load i8, ptr %.062100, align 1, !tbaa !31
  %i.cx = sext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.060101, i64 4
  store i32 %i.cx, ptr %.060101, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %.062100, i64 2
  %i.da = load i8, ptr %i.cv, align 1, !tbaa !31
  %i.db = sext i8 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %.060101, i64 8
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %.062100, i64 3
  %i.de = load i8, ptr %i.cz, align 1, !tbaa !31
  %i.df = sext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %.060101, i64 12
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3
  %i.dh = getelementptr inbounds nuw i8, ptr %.062100, i64 4
  %i.di = load i8, ptr %i.dd, align 1, !tbaa !31
  %i.dj = sext i8 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %.060101, i64 16
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %.062100, i64 5
  %i.dm = load i8, ptr %i.dh, align 1, !tbaa !31
  %i.dn = sext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %.060101, i64 20
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw i8, ptr %.062100, i64 6
  %i.dq = load i8, ptr %i.dl, align 1, !tbaa !31
  %i.dr = sext i8 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %.060101, i64 24
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !3
  %i.dt = getelementptr inbounds nuw i8, ptr %.062100, i64 7
  %i.du = load i8, ptr %i.dp, align 1, !tbaa !31
  %i.dv = sext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %.060101, i64 28
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !3
  %i.dx = getelementptr inbounds nuw i8, ptr %.062100, i64 8 ; 2 uses
  %i.dy = load i8, ptr %i.dt, align 1, !tbaa !31
  %i.dz = sext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.060101, i64 32
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !3
  %i.eb = add nuw i64 %.07299, 8                  ; 2 uses
  %exitcond131.not.7 = icmp eq i64 %i.eb, %i.bf
  br i1 %exitcond131.not.7, label %.loopexit, label %.lr.ph102, !llvm.loop !330

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.161106 = phi ptr [ %i.fh, %.lr.ph107 ], [ %.161106.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.163105 = phi ptr [ %i.fe, %.lr.ph107 ], [ %.163105.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.173104 = phi i64 [ %i.fi, %.lr.ph107 ], [ %.173104.unr, %.lr.ph107.prol.loopexit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.163105, i64 1
  %i.ed = load i8, ptr %.163105, align 1, !tbaa !31
  %i.ee = zext i8 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.161106, i64 4
  store i32 %i.ee, ptr %.161106, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw i8, ptr %.163105, i64 2
  %i.eh = load i8, ptr %i.ec, align 1, !tbaa !31
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.161106, i64 8
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %.163105, i64 3
  %i.el = load i8, ptr %i.eg, align 1, !tbaa !31
  %i.em = zext i8 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %.161106, i64 12
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %.163105, i64 4
  %i.ep = load i8, ptr %i.ek, align 1, !tbaa !31
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %.161106, i64 16
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !3
  %i.es = getelementptr inbounds nuw i8, ptr %.163105, i64 5
  %i.et = load i8, ptr %i.eo, align 1, !tbaa !31
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %.161106, i64 20
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !3
  %i.ew = getelementptr inbounds nuw i8, ptr %.163105, i64 6
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !31
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %.161106, i64 24
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !3
  %i.fa = getelementptr inbounds nuw i8, ptr %.163105, i64 7
  %i.fb = load i8, ptr %i.ew, align 1, !tbaa !31
  %i.fc = zext i8 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %.161106, i64 28
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !3
  %i.fe = getelementptr inbounds nuw i8, ptr %.163105, i64 8 ; 2 uses
  %i.ff = load i8, ptr %i.fa, align 1, !tbaa !31
  %i.fg = zext i8 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %.161106, i64 32
  store i32 %i.fg, ptr %i.fd, align 4, !tbaa !3
  %i.fi = add nuw i64 %.173104, 8                 ; 2 uses
  %exitcond132.not.7 = icmp eq i64 %i.fi, %i.bf
  br i1 %exitcond132.not.7, label %.loopexit, label %.lr.ph107, !llvm.loop !331

bb.c:                                             ; preds = %.lr.ph113
  %i.fj = getelementptr inbounds nuw i8, ptr %.069111, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !53 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.070110, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !194
  %.not76 = icmp eq i32 %i.fm, 0
  %.not117 = icmp eq i64 %i.bf, 0                 ; 2 uses
  br i1 %.not76, label %.preheader80, label %.preheader82

.preheader82:                                     ; preds = %bb.c
  br i1 %.not117, label %.loopexit, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.preheader82
  %min.iters.check200 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check200, label %.lr.ph92.preheader239, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph92.preheader
  %n.vec202 = and i64 %i.bf, -8                   ; 5 uses
  %i.fn = shl i64 %n.vec202, 1
  %i.fo = getelementptr i8, ptr %.066112, i64 %i.fn ; 2 uses
  %i.fp = shl i64 %n.vec202, 2
  %i.fq = getelementptr i8, ptr %i.fk, i64 %i.fp
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next209, %vector.body203 ] ; 3 uses
  %i.fr = shl i64 %index204, 1
  %next.gep205 = getelementptr i8, ptr %.066112, i64 %i.fr ; 2 uses
  %i.fs = shl i64 %index204, 2
  %next.gep206 = getelementptr i8, ptr %i.fk, i64 %i.fs ; 2 uses
  %i.ft = getelementptr i8, ptr %next.gep205, i64 8
  %wide.load207 = load <4 x i16>, ptr %next.gep205, align 2, !tbaa !332
  %wide.load208 = load <4 x i16>, ptr %i.ft, align 2, !tbaa !332
  %i.fu = sext <4 x i16> %wide.load207 to <4 x i32>
  %i.fv = sext <4 x i16> %wide.load208 to <4 x i32>
  %i.fw = getelementptr i8, ptr %next.gep206, i64 16
  store <4 x i32> %i.fu, ptr %next.gep206, align 4, !tbaa !3
  store <4 x i32> %i.fv, ptr %i.fw, align 4, !tbaa !3
  %index.next209 = add nuw i64 %index204, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.fx, label %middle.block210, label %vector.body203, !llvm.loop !333

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.bf, %n.vec202
  br i1 %cmp.n211, label %.loopexit, label %.lr.ph92.preheader239

.lr.ph92.preheader239:                            ; preds = %.lr.ph92.preheader, %middle.block210
  %.05791.ph = phi ptr [ %.066112, %.lr.ph92.preheader ], [ %i.fo, %middle.block210 ]
  %.05890.ph = phi ptr [ %i.fk, %.lr.ph92.preheader ], [ %i.fq, %middle.block210 ]
  %.27489.ph = phi i64 [ 0, %.lr.ph92.preheader ], [ %n.vec202, %middle.block210 ]
  br label %.lr.ph92

.preheader80:                                     ; preds = %bb.c
  br i1 %.not117, label %.loopexit, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %.preheader80
  %min.iters.check184 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check184, label %.lr.ph97.preheader237, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph97.preheader
  %n.vec186 = and i64 %i.bf, -8                   ; 5 uses
  %i.fy = shl i64 %n.vec186, 1
  %i.fz = getelementptr i8, ptr %.066112, i64 %i.fy ; 2 uses
  %i.ga = shl i64 %n.vec186, 2
  %i.gb = getelementptr i8, ptr %i.fk, i64 %i.ga
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next193, %vector.body187 ] ; 3 uses
  %i.gc = shl i64 %index188, 1
  %next.gep189 = getelementptr i8, ptr %.066112, i64 %i.gc ; 2 uses
  %i.gd = shl i64 %index188, 2
  %next.gep190 = getelementptr i8, ptr %i.fk, i64 %i.gd ; 2 uses
  %i.ge = getelementptr i8, ptr %next.gep189, i64 8
  %wide.load191 = load <4 x i16>, ptr %next.gep189, align 2, !tbaa !332
  %wide.load192 = load <4 x i16>, ptr %i.ge, align 2, !tbaa !332
  %i.gf = zext <4 x i16> %wide.load191 to <4 x i32>
  %i.gg = zext <4 x i16> %wide.load192 to <4 x i32>
  %i.gh = getelementptr i8, ptr %next.gep190, i64 16
  store <4 x i32> %i.gf, ptr %next.gep190, align 4, !tbaa !3
  store <4 x i32> %i.gg, ptr %i.gh, align 4, !tbaa !3
  %index.next193 = add nuw i64 %index188, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next193, %n.vec186
  br i1 %i.gi, label %middle.block194, label %vector.body187, !llvm.loop !334

middle.block194:                                  ; preds = %vector.body187
  %cmp.n195 = icmp eq i64 %i.bf, %n.vec186
  br i1 %cmp.n195, label %.loopexit, label %.lr.ph97.preheader237

.lr.ph97.preheader237:                            ; preds = %.lr.ph97.preheader, %middle.block194
  %.196.ph = phi ptr [ %.066112, %.lr.ph97.preheader ], [ %i.fz, %middle.block194 ]
  %.15995.ph = phi ptr [ %i.fk, %.lr.ph97.preheader ], [ %i.gb, %middle.block194 ]
  %.394.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec186, %middle.block194 ]
  br label %.lr.ph97

.lr.ph92:                                         ; preds = %.lr.ph92.preheader239, %.lr.ph92
  %.05791 = phi ptr [ %i.gj, %.lr.ph92 ], [ %.05791.ph, %.lr.ph92.preheader239 ] ; 2 uses
  %.05890 = phi ptr [ %i.gm, %.lr.ph92 ], [ %.05890.ph, %.lr.ph92.preheader239 ] ; 2 uses
  %.27489 = phi i64 [ %i.gn, %.lr.ph92 ], [ %.27489.ph, %.lr.ph92.preheader239 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.05791, i64 2 ; 2 uses
  %i.gk = load i16, ptr %.05791, align 2, !tbaa !332
  %i.gl = sext i16 %i.gk to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %.05890, i64 4
  store i32 %i.gl, ptr %.05890, align 4, !tbaa !3
  %i.gn = add nuw i64 %.27489, 1                  ; 2 uses
  %exitcond129.not = icmp eq i64 %i.gn, %i.bf
  br i1 %exitcond129.not, label %.loopexit, label %.lr.ph92, !llvm.loop !335

.lr.ph97:                                         ; preds = %.lr.ph97.preheader237, %.lr.ph97
  %.196 = phi ptr [ %i.go, %.lr.ph97 ], [ %.196.ph, %.lr.ph97.preheader237 ] ; 2 uses
  %.15995 = phi ptr [ %i.gr, %.lr.ph97 ], [ %.15995.ph, %.lr.ph97.preheader237 ] ; 2 uses
  %.394 = phi i64 [ %i.gs, %.lr.ph97 ], [ %.394.ph, %.lr.ph97.preheader237 ]
  %i.go = getelementptr inbounds nuw i8, ptr %.196, i64 2 ; 2 uses
  %i.gp = load i16, ptr %.196, align 2, !tbaa !332
  %i.gq = zext i16 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %.15995, i64 4
  store i32 %i.gq, ptr %.15995, align 4, !tbaa !3
  %i.gs = add nuw i64 %.394, 1                    ; 2 uses
  %exitcond130.not = icmp eq i64 %i.gs, %i.bf
  br i1 %exitcond130.not, label %.loopexit, label %.lr.ph97, !llvm.loop !336

bb.d:                                             ; preds = %.lr.ph113
  %.not115 = icmp eq i64 %i.bf, 0
  br i1 %.not115, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.gt = getelementptr inbounds nuw i8, ptr %.069111, i64 48
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !53 ; 4 uses
  %min.iters.check218 = icmp ult i64 %i.bf, 8
  %i.gv = ptrtoaddr ptr %i.gu to i64
  %i.gw = sub i64 %.066112216, %i.gv
  %diff.check = icmp ugt i64 %i.gw, -32
  %or.cond = select i1 %min.iters.check218, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader241, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.preheader
  %n.vec220 = and i64 %i.bf, -8                   ; 4 uses
  %i.gx = shl i64 %n.vec220, 2                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gu, i64 %i.gx
  %i.gz = getelementptr i8, ptr %.066112, i64 %i.gx ; 2 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %i.ha = shl i64 %index222, 2                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.gu, i64 %i.ha ; 2 uses
  %next.gep224 = getelementptr i8, ptr %.066112, i64 %i.ha ; 2 uses
  %i.hb = getelementptr i8, ptr %next.gep224, i64 16
  %wide.load225 = load <4 x i32>, ptr %next.gep224, align 4, !tbaa !3
  %wide.load226 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !3
  %i.hc = getelementptr i8, ptr %next.gep223, i64 16
  store <4 x i32> %wide.load225, ptr %next.gep223, align 4, !tbaa !3
  store <4 x i32> %wide.load226, ptr %i.hc, align 4, !tbaa !3
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.hd, label %middle.block228, label %vector.body221, !llvm.loop !337

middle.block228:                                  ; preds = %vector.body221
  %cmp.n229 = icmp eq i64 %i.bf, %n.vec220
  br i1 %cmp.n229, label %.loopexit, label %.lr.ph.preheader241

.lr.ph.preheader241:                              ; preds = %.lr.ph.preheader, %middle.block228
  %.088.ph = phi ptr [ %i.gu, %.lr.ph.preheader ], [ %i.gy, %middle.block228 ] ; 2 uses
  %.05687.ph = phi ptr [ %.066112, %.lr.ph.preheader ], [ %i.gz, %middle.block228 ] ; 2 uses
  %.486.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec220, %middle.block228 ] ; 3 uses
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader241, %.lr.ph.prol
  %.088.prol = phi ptr [ %i.hg, %.lr.ph.prol ], [ %.088.ph, %.lr.ph.preheader241 ] ; 2 uses
  %.05687.prol = phi ptr [ %i.he, %.lr.ph.prol ], [ %.05687.ph, %.lr.ph.preheader241 ] ; 2 uses
  %.486.prol = phi i64 [ %i.hh, %.lr.ph.prol ], [ %.486.ph, %.lr.ph.preheader241 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader241 ]
  %i.he = getelementptr inbounds nuw i8, ptr %.05687.prol, i64 4 ; 3 uses
  %i.hf = load i32, ptr %.05687.prol, align 4, !tbaa !3
  %i.hg = getelementptr inbounds nuw i8, ptr %.088.prol, i64 4 ; 2 uses
  store i32 %i.hf, ptr %.088.prol, align 4, !tbaa !3
  %i.hh = add nuw i64 %.486.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !338

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader241
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader241 ], [ %i.he, %.lr.ph.prol ]
  %.088.unr = phi ptr [ %.088.ph, %.lr.ph.preheader241 ], [ %i.hg, %.lr.ph.prol ]
  %.05687.unr = phi ptr [ %.05687.ph, %.lr.ph.preheader241 ], [ %i.he, %.lr.ph.prol ]
  %.486.unr = phi i64 [ %.486.ph, %.lr.ph.preheader241 ], [ %i.hh, %.lr.ph.prol ]
  %i.hi = sub i64 %.486.ph, %i.bf
  %i.hj = icmp ugt i64 %i.hi, -8
  br i1 %i.hj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.088 = phi ptr [ %i.ih, %.lr.ph ], [ %.088.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.05687 = phi ptr [ %i.if, %.lr.ph ], [ %.05687.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.486 = phi i64 [ %i.ii, %.lr.ph ], [ %.486.unr, %.lr.ph.prol.loopexit ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.05687, i64 4
  %i.hl = load i32, ptr %.05687, align 4, !tbaa !3
  %i.hm = getelementptr inbounds nuw i8, ptr %.088, i64 4
  store i32 %i.hl, ptr %.088, align 4, !tbaa !3
  %i.hn = getelementptr inbounds nuw i8, ptr %.05687, i64 8
  %i.ho = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hp = getelementptr inbounds nuw i8, ptr %.088, i64 8
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !3
  %i.hq = getelementptr inbounds nuw i8, ptr %.05687, i64 12
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hs = getelementptr inbounds nuw i8, ptr %.088, i64 12
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !3
  %i.ht = getelementptr inbounds nuw i8, ptr %.05687, i64 16
  %i.hu = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hv = getelementptr inbounds nuw i8, ptr %.088, i64 16
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw i8, ptr %.05687, i64 20
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hy = getelementptr inbounds nuw i8, ptr %.088, i64 20
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !3
  %i.hz = getelementptr inbounds nuw i8, ptr %.05687, i64 24
  %i.ia = load i32, ptr %i.hw, align 4, !tbaa !3
  %i.ib = getelementptr inbounds nuw i8, ptr %.088, i64 24
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !3
  %i.ic = getelementptr inbounds nuw i8, ptr %.05687, i64 28
  %i.id = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ie = getelementptr inbounds nuw i8, ptr %.088, i64 28
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !3
  %i.if = getelementptr inbounds nuw i8, ptr %.05687, i64 32 ; 2 uses
  %i.ig = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.ih = getelementptr inbounds nuw i8, ptr %.088, i64 32
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !3
  %i.ii = add nuw i64 %.486, 8                    ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.ii, %i.bf
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !339

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph92, %.lr.ph97, %.lr.ph102.prol.loopexit, %.lr.ph102, %.lr.ph107.prol.loopexit, %.lr.ph107, %middle.block228, %middle.block210, %middle.block194, %middle.block178, %middle.block, %bb.d, %.preheader82, %.preheader80, %.preheader78, %.preheader, %.lr.ph113
  %.167 = phi ptr [ %.066112, %.lr.ph113 ], [ %i.fe, %.lr.ph107 ], [ %i.go, %.lr.ph97 ], [ %i.gj, %.lr.ph92 ], [ %i.dx, %.lr.ph102 ], [ %.066112, %.preheader ], [ %.066112, %.preheader78 ], [ %.066112, %.preheader80 ], [ %.066112, %.preheader82 ], [ %.066112, %bb.d ], [ %i.ch, %middle.block ], [ %i.bp, %middle.block178 ], [ %i.fz, %middle.block194 ], [ %i.fo, %middle.block210 ], [ %i.gz, %middle.block228 ], [ %.lcssa246.unr, %.lr.ph107.prol.loopexit ], [ %.lcssa245.unr, %.lr.ph102.prol.loopexit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.if, %.lr.ph ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.070110, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %.069111, i64 112
  %i.il = add nuw i32 %.071109, 1                 ; 2 uses
  %i.im = load i32, ptr %i.c, align 8, !tbaa !21
  %i.in = icmp ult i32 %i.il, %i.im
  br i1 %i.in, label %.lr.ph113, label %.loopexit85, !llvm.loop !340

.loopexit85:                                      ; preds = %.loopexit, %opj_tcd_get_encoder_input_buffer_size.exit, %opj_tcd_get_encoder_input_buffer_size.exit.thread
  %.065 = phi i32 [ 0, %opj_tcd_get_encoder_input_buffer_size.exit.thread ], [ %spec.select146, %opj_tcd_get_encoder_input_buffer_size.exit ], [ 1, %.loopexit ]
  ret i32 %.065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @opj_tcd_is_band_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %i.c = load i32, ptr %0, align 8, !tbaa !108
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !109
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ 1, %bb.a ], [ %i.j, %bb.b ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @opj_tcd_is_subband_area_of_interest(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = zext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds nuw [1080 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %i.m, i64 %i.e ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.e ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !239
  %i.w = load i32, ptr %i.s, align 8, !tbaa !88
  %i.x = zext i32 %i.v to i64
  %i.y = zext i32 %i.w to i64                     ; 3 uses
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = udiv i64 %i.aa, %i.y
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call noundef i32 @llvm.umax.i32(i32 %i.t, i32 %i.ac) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !240
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !90
  %i.ak = zext i32 %i.ah to i64
  %i.al = zext i32 %i.aj to i64                   ; 3 uses
  %i.am = add nsw i64 %i.al, -1                   ; 2 uses
  %i.an = add nsw i64 %i.am, %i.ak
  %i.ao = udiv i64 %i.an, %i.al
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = tail call noundef i32 @llvm.umax.i32(i32 %i.af, i32 %i.ap) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load i32, ptr %i.at, align 8, !tbaa !241
  %i.av = zext i32 %i.au to i64
  %i.aw = add nsw i64 %i.z, %i.av
  %i.ax = udiv i64 %i.aw, %i.y
end_hunk_1
