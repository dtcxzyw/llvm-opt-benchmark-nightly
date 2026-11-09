Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_headphone?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@activate:bb.a
  %i.kc = getelementptr i8, ptr %i.ig, i64 %.idx379.i ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 -8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !49
  %i.kf = fmul nsz float %i.ch, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv356.i
  store float %i.kf, ptr %i.kg, align 4, !tbaa !49
  %i.kh = getelementptr i8, ptr %i.kc, i64 -4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !49
  %i.kj = fmul nsz float %i.ch, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv356.i
  store float %i.kj, ptr %i.kk, align 4, !tbaa !49
  %indvars.iv.next357.i = add nuw nsw i64 %indvars.iv356.i, 1 ; 3 uses
  %i.kl = sub nuw nsw i64 %i.iz, %indvars.iv.next357.i
  %.idx379.i.1 = shl nuw nsw i64 %i.kl, 3
  %i.km = getelementptr i8, ptr %i.ig, i64 %.idx379.i.1 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 -8
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !49
  %i.kp = fmul nsz float %i.ch, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next357.i
  store float %i.kp, ptr %i.kq, align 4, !tbaa !49
  %i.kr = getelementptr i8, ptr %i.km, i64 -4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !49
  %i.kt = fmul nsz float %i.ch, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next357.i
  store float %i.kt, ptr %i.ku, align 4, !tbaa !49
  %indvars.iv.next357.i.1 = add nuw nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %exitcond360.not.i.1 = icmp eq i64 %indvars.iv.next357.i.1, %i.iz
  br i1 %exitcond360.not.i.1, label %.thread294.i, label %.lr.ph329.i, !llvm.loop !105

bb.ar:                                            ; preds = %bb.ap
  %i.kv = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.kw = shl i32 %i.il, %i.da
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.kx
  %i.kz = load ptr, ptr %i.ho, align 8, !tbaa !55
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.kx
  %i.lb = load ptr, ptr %i.hp, align 8, !tbaa !55 ; 11 uses
  %i.lc = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 11 uses
  %i.ld = icmp sgt i32 %i.hx, 0
  br i1 %i.ld, label %.lr.ph325.preheader.i, label %._crit_edge326.i

.lr.ph325.preheader.i:                            ; preds = %bb.ar
  %wide.trip.count354.i = zext nneg i32 %i.hx to i64 ; 6 uses
  %min.iters.check267 = icmp ult i32 %i.hx, 16
  br i1 %min.iters.check267, label %.lr.ph325.i.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph325.preheader.i
  %i.le = shl nuw nsw i64 %wide.trip.count354.i, 3 ; 2 uses
  %i.lf = add nsw i64 %i.le, -4                   ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lb, i64 %i.lf  ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lc, i64 %i.lf  ; 2 uses
  %i.li = getelementptr i8, ptr %i.ig, i64 %i.le  ; 2 uses
  %bound0269 = icmp ult ptr %i.lb, %i.lh
  %bound1270 = icmp ult ptr %i.lc, %i.lg
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0272 = icmp ult ptr %i.lb, %i.li
  %bound1273 = icmp ult ptr %i.ig, %i.lg
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %found.conflict271, %found.conflict274
  %bound0276 = icmp ult ptr %i.lc, %i.li
  %bound1277 = icmp ult ptr %i.ig, %i.lh
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  br i1 %conflict.rdx279, label %.lr.ph325.i.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck268
  %n.vec281 = and i64 %wide.trip.count354.i, 2147483644 ; 3 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next289, %vector.body284 ] ; 7 uses
  %i.lj = or disjoint i64 %index285, 1            ; 2 uses
  %i.lk = or disjoint i64 %index285, 2            ; 2 uses
  %i.ll = or disjoint i64 %index285, 3            ; 2 uses
  %i.lm = shl nuw nsw i64 %index285, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.lm
  %wide.vec286 = load <8 x float>, ptr %i.ln, align 4, !tbaa !49, !alias.scope !136 ; 2 uses
  %strided.vec287 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec288 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.lo = fmul nsz <4 x float> %broadcast.splat283, %strided.vec287 ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index285
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lj
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lk
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ll
  %i.lt = extractelement <4 x float> %i.lo, i64 0
  store float %i.lt, ptr %i.lp, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lu = extractelement <4 x float> %i.lo, i64 1
  store float %i.lu, ptr %i.lq, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lv = extractelement <4 x float> %i.lo, i64 2
  store float %i.lv, ptr %i.lr, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lw = extractelement <4 x float> %i.lo, i64 3
  store float %i.lw, ptr %i.ls, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lx = fmul nsz <4 x float> %broadcast.splat283, %strided.vec288 ; 4 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %index285
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lj
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lk
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ll
  %i.mc = extractelement <4 x float> %i.lx, i64 0
  store float %i.mc, ptr %i.ly, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.md = extractelement <4 x float> %i.lx, i64 1
  store float %i.md, ptr %i.lz, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.me = extractelement <4 x float> %i.lx, i64 2
  store float %i.me, ptr %i.ma, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.mf = extractelement <4 x float> %i.lx, i64 3
  store float %i.mf, ptr %i.mb, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %index.next289 = add nuw i64 %index285, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next289, %n.vec281
  br i1 %i.mg, label %middle.block290, label %vector.body284, !llvm.loop !110

middle.block290:                                  ; preds = %vector.body284
  %cmp.n291 = icmp eq i64 %n.vec281, %wide.trip.count354.i
  br i1 %cmp.n291, label %._crit_edge326.i, label %.lr.ph325.i.preheader

.lr.ph325.i.preheader:                            ; preds = %vector.memcheck268, %.lr.ph325.preheader.i, %middle.block290
  %indvars.iv351.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph325.preheader.i ], [ %n.vec281, %middle.block290 ] ; 6 uses
  %xtraiter443 = and i64 %wide.trip.count354.i, 1
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.lr.ph325.i.prol.loopexit, label %.lr.ph325.i.prol

.lr.ph325.i.prol:                                 ; preds = %.lr.ph325.i.preheader
  %.idx.i.prol = shl nuw nsw i64 %indvars.iv351.i.ph, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.prol ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !49
  %i.mj = fmul nsz float %i.ch, %i.mi
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv351.i.ph
  store float %i.mj, ptr %i.mk, align 4, !tbaa !65
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !49
  %i.mn = fmul nsz float %i.ch, %i.mm
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv351.i.ph
  store float %i.mn, ptr %i.mo, align 4, !tbaa !65
  %indvars.iv.next352.i.prol = or disjoint i64 %indvars.iv351.i.ph, 1
  br label %.lr.ph325.i.prol.loopexit

.lr.ph325.i.prol.loopexit:                        ; preds = %.lr.ph325.i.prol, %.lr.ph325.i.preheader
  %indvars.iv351.i.unr = phi i64 [ %indvars.iv351.i.ph, %.lr.ph325.i.preheader ], [ %indvars.iv.next352.i.prol, %.lr.ph325.i.prol ]
  %i.mp = add nsw i64 %wide.trip.count354.i, -1
  %i.mq = icmp eq i64 %indvars.iv351.i.ph, %i.mp
  br i1 %i.mq, label %._crit_edge326.i, label %.lr.ph325.i

.lr.ph325.i:                                      ; preds = %.lr.ph325.i.prol.loopexit, %.lr.ph325.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i.1, %.lr.ph325.i ], [ %indvars.iv351.i.unr, %.lr.ph325.i.prol.loopexit ] ; 5 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv351.i, 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !49
  %i.mt = fmul nsz float %i.ch, %i.ms
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv351.i
  store float %i.mt, ptr %i.mu, align 4, !tbaa !65
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !49
  %i.mx = fmul nsz float %i.ch, %i.mw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv351.i
  store float %i.mx, ptr %i.my, align 4, !tbaa !65
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 3 uses
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next352.i, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.1 ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !49
  %i.nb = fmul nsz float %i.ch, %i.na
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.next352.i
  store float %i.nb, ptr %i.nc, align 4, !tbaa !65
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !49
  %i.nf = fmul nsz float %i.ch, %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next352.i
  store float %i.nf, ptr %i.ng, align 4, !tbaa !65
  %indvars.iv.next352.i.1 = add nuw nsw i64 %indvars.iv351.i, 2 ; 2 uses
  %exitcond355.not.i.1 = icmp eq i64 %indvars.iv.next352.i.1, %wide.trip.count354.i
  br i1 %exitcond355.not.i.1, label %._crit_edge326.i, label %.lr.ph325.i, !llvm.loop !111

._crit_edge326.i:                                 ; preds = %.lr.ph325.i.prol.loopexit, %.lr.ph325.i, %middle.block290, %bb.ar
  %i.nh = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ni = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.nh(ptr noundef %i.ni, ptr noundef %i.ky, ptr noundef %i.lb, i64 noundef 8) #8, !inline_history !112
  %i.nj = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.nk = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.nj(ptr noundef %i.nk, ptr noundef %i.la, ptr noundef %i.lc, i64 noundef 8) #8, !inline_history !112
  br label %.thread294.i

bb.as:                                            ; preds = %bb.an
  %i.nl = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !34
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 76
  %i.np = load i32, ptr %i.no, align 4, !tbaa !44 ; 13 uses
  %i.nq = icmp sgt i32 %i.np, 1
  br i1 %i.nq, label %.lr.ph322.i, label %.thread294.i

.lr.ph322.i:                                      ; preds = %bb.as
  %i.nr = lshr i32 %i.np, 1
  %i.ns = icmp sgt i32 %i.hx, 0                   ; 2 uses
  %i.nt = zext nneg i32 %i.np to i64              ; 3 uses
  %wide.trip.count349.i = zext nneg i32 %i.nr to i64
  %wide.trip.count.i = zext i32 %i.hx to i64      ; 8 uses
  %i.nu = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.nv = sub nsw i32 0, %i.np
  %i.nw = add i32 %i.hx, -1
  %i.nx = mul i32 %i.np, %i.nw
  %i.ny = sext i32 %i.nv to i64
  %i.nz = mul nsw i64 %i.ny, -4
  %scevgep = getelementptr i8, ptr %i.ig, i64 4
  %2 = add i32 %i.hx, -1
  %3 = mul i32 %i.np, %2
  %i.oa = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.ob = add nsw i64 %i.oa, -4
  %i.oc = sub nsw i32 0, %i.np
  %i.od = sext i32 %i.oc to i64
  %i.oe = mul i64 %i.ob, %i.od
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.of = icmp eq i32 %i.hx, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod442 = trunc i32 %i.hx to i1
  %min.iters.check334 = icmp ult i32 %i.hx, 32
  %i.og = trunc i64 %i.nu to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.np, i32 %i.og) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.oh = icmp ugt i64 %i.nu, 4294967295
  %invariant.op = or i1 %mul.overflow, %i.oh
  %mul294 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.nz, i64 %i.nu) ; 2 uses
  %mul.result295 = extractvalue { i64, i1 } %mul294, 0
  %mul.overflow296 = extractvalue { i64, i1 } %mul294, 1
  %i.oi = sub i64 0, %mul.result295
  %n.vec356 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n363 = icmp eq i64 %n.vec356, %wide.trip.count.i
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.i, %.lr.ph322.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph322.i ], [ %indvars.iv.next347.i, %.loopexit.i ] ; 5 uses
  %indvars.iv346.i.tr = trunc i64 %indvars.iv346.i to i32
  %i.oj = shl i32 %indvars.iv346.i.tr, 1
  %i.ok = add i32 %i.oj, %i.nx                    ; 3 uses
  %i.ol = sext i32 %i.ok to i64
  %i.om = shl nsw i64 %i.ol, 2
  %scevgep293 = getelementptr i8, ptr %scevgep, i64 %i.om ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv346.i
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !25
  %i.op = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.hk, i32 noundef %i.oo) #8 ; 4 uses
  %i.oq = icmp slt i32 %i.op, 0
  br i1 %i.oq, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.or = trunc i32 %i.op to i8
  %i.os = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv346.i
  store i8 %i.or, ptr %i.os, align 1, !tbaa !31
  %i.ot = shl nuw nsw i64 %indvars.iv346.i, 1     ; 2 uses
  %i.ou = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ow = load ptr, ptr %i.ht, align 8, !tbaa !53 ; 2 uses
  %i.ox = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.oy = mul i32 %i.ox, %i.op
  %i.oz = sext i32 %i.oy to i64                   ; 3 uses
  %i.pa = getelementptr [4 x i8], ptr %i.ow, i64 %i.oz ; 5 uses
  %i.pb = load ptr, ptr %i.hu, align 8, !tbaa !53 ; 2 uses
  %i.pc = getelementptr [4 x i8], ptr %i.pb, i64 %i.oz ; 5 uses
  br i1 %i.ns, label %.lr.ph319.preheader.i, label %.loopexit.i

.lr.ph319.preheader.i:                            ; preds = %bb.av
  %i.pd = trunc nuw nsw i64 %i.ot to i32          ; 6 uses
  br i1 %min.iters.check334, label %.lr.ph319.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph319.preheader.i
  %i.pe = sub i32 %i.ok, %mul.result
  %i.pf = icmp sgt i32 %i.pe, %i.ok
  %.reass = or i1 %i.pf, %invariant.op
  %i.pg = getelementptr i8, ptr %scevgep293, i64 %i.oi
  %i.ph = icmp ugt ptr %i.pg, %scevgep293
  %i.pi = or i1 %i.ph, %mul.overflow296
  %i.pj = or i1 %.reass, %i.pi
  br i1 %i.pj, label %.lr.ph319.i.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %vector.scevcheck
  %i.pk = add nsw i64 %i.oz, %wide.trip.count.i
  %i.pl = shl nsw i64 %i.pk, 2                    ; 2 uses
  %i.pm = getelementptr i8, ptr %i.ow, i64 %i.pl  ; 3 uses
  %i.pn = getelementptr i8, ptr %i.pb, i64 %i.pl  ; 3 uses
  %i.po = add i32 %3, %i.pd
  %i.pp = sext i32 %i.po to i64
  %i.pq = shl nsw i64 %i.pp, 2                    ; 3 uses
  %4 = add i64 %i.oe, %i.pq                       ; 2 uses
  %5 = getelementptr i8, ptr %i.ig, i64 %4
  %i.pr = getelementptr i8, ptr %5, i64 4         ; 4 uses
  %i.ps = getelementptr i8, ptr %i.ig, i64 %i.pq
  %i.pt = getelementptr i8, ptr %i.ps, i64 4      ; 4 uses
  %i.pu = icmp ult ptr %i.pr, %i.pt
  %i.pv = select i1 %i.pu, ptr %i.pr, ptr %i.pt   ; 2 uses
  %i.pw = icmp ugt ptr %i.pr, %i.pt
  %i.px = select i1 %i.pw, ptr %i.pr, ptr %i.pt
  %i.py = getelementptr i8, ptr %i.px, i64 4      ; 2 uses
  %i.pz = getelementptr i8, ptr %i.ig, i64 %4     ; 4 uses
  %i.qa = getelementptr i8, ptr %i.ig, i64 %i.pq  ; 4 uses
  %i.qb = icmp ult ptr %i.pz, %i.qa
  %i.qc = select i1 %i.qb, ptr %i.pz, ptr %i.qa   ; 2 uses
  %i.qd = icmp ugt ptr %i.pz, %i.qa
  %i.qe = select i1 %i.qd, ptr %i.pz, ptr %i.qa
  %i.qf = getelementptr i8, ptr %i.qe, i64 4      ; 2 uses
  %bound0336 = icmp ult ptr %i.pa, %i.pn
  %bound1337 = icmp ult ptr %i.pc, %i.pm
  %found.conflict338 = and i1 %bound0336, %bound1337
  %bound0339 = icmp ult ptr %i.pa, %i.py
  %bound1340 = icmp ult ptr %i.pv, %i.pm
  %found.conflict341 = and i1 %bound0339, %bound1340
  %conflict.rdx342 = or i1 %found.conflict338, %found.conflict341
  %bound0343 = icmp ult ptr %i.pa, %i.qf
  %bound1344 = icmp ult ptr %i.qc, %i.pm
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx342, %found.conflict345
  %bound0347 = icmp ult ptr %i.pc, %i.py
  %bound1348 = icmp ult ptr %i.pv, %i.pn
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %conflict.rdx346, %found.conflict349
  %bound0351 = icmp ult ptr %i.pc, %i.qf
  %bound1352 = icmp ult ptr %i.qc, %i.pn
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %conflict.rdx350, %found.conflict353
  br i1 %conflict.rdx354, label %.lr.ph319.i.preheader, label %vector.body359

vector.body359:                                   ; preds = %vector.memcheck335, %vector.body359
  %index360 = phi i64 [ %index.next361, %vector.body359 ], [ 0, %vector.memcheck335 ] ; 4 uses
  %i.qg = trunc i64 %index360 to i32              ; 4 uses
  %i.qh = xor i32 %i.qg, -1
  %i.qi = xor i32 %i.qg, -2
  %i.qj = xor i32 %i.qg, -3
  %i.qk = xor i32 %i.qg, -4
  %i.ql = add i32 %i.hx, %i.qh
  %i.qm = add i32 %i.hx, %i.qi
  %i.qn = add i32 %i.hx, %i.qj
  %i.qo = add i32 %i.hx, %i.qk
  %i.qp = mul i32 %i.ql, %i.np
  %i.qq = mul i32 %i.qm, %i.np
  %i.qr = mul i32 %i.qn, %i.np
  %i.qs = mul i32 %i.qo, %i.np
  %i.qt = add nsw i32 %i.qp, %i.pd
  %i.qu = add nsw i32 %i.qq, %i.pd
  %i.qv = add nsw i32 %i.qr, %i.pd
  %i.qw = add nsw i32 %i.qs, %i.pd
  %i.qx = sext i32 %i.qt to i64
  %i.qy = sext i32 %i.qu to i64
  %i.qz = sext i32 %i.qv to i64
  %i.ra = sext i32 %i.qw to i64
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.qx ; 2 uses
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.qy ; 2 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.qz ; 2 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ra ; 2 uses
  %i.rf = load float, ptr %i.rb, align 4, !tbaa !49, !alias.scope !140
  %i.rg = load float, ptr %i.rc, align 4, !tbaa !49, !alias.scope !140
  %i.rh = load float, ptr %i.rd, align 4, !tbaa !49, !alias.scope !140
  %i.ri = load float, ptr %i.re, align 4, !tbaa !49, !alias.scope !140
  %i.rj = insertelement <4 x float> poison, float %i.rf, i64 0
  %i.rk = insertelement <4 x float> %i.rj, float %i.rg, i64 1
  %i.rl = insertelement <4 x float> %i.rk, float %i.rh, i64 2
  %i.rm = insertelement <4 x float> %i.rl, float %i.ri, i64 3
  %i.rn = fmul nsz <4 x float> %broadcast.splat358, %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %index360
  store <4 x float> %i.rn, ptr %i.ro, align 4, !tbaa !49, !alias.scope !141, !noalias !142
  %i.rp = getelementptr i8, ptr %i.rb, i64 4
  %i.rq = getelementptr i8, ptr %i.rc, i64 4
  %i.rr = getelementptr i8, ptr %i.rd, i64 4
  %i.rs = getelementptr i8, ptr %i.re, i64 4
  %i.rt = load float, ptr %i.rp, align 4, !tbaa !49, !alias.scope !143
  %i.ru = load float, ptr %i.rq, align 4, !tbaa !49, !alias.scope !143
  %i.rv = load float, ptr %i.rr, align 4, !tbaa !49, !alias.scope !143
  %i.rw = load float, ptr %i.rs, align 4, !tbaa !49, !alias.scope !143
  %i.rx = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.ry = insertelement <4 x float> %i.rx, float %i.ru, i64 1
  %i.rz = insertelement <4 x float> %i.ry, float %i.rv, i64 2
  %i.sa = insertelement <4 x float> %i.rz, float %i.rw, i64 3
  %i.sb = fmul nsz <4 x float> %broadcast.splat358, %i.sa
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %index360
  store <4 x float> %i.sb, ptr %i.sc, align 4, !tbaa !49, !alias.scope !144, !noalias !145
  %index.next361 = add nuw i64 %index360, 4       ; 2 uses
  %i.sd = icmp eq i64 %index.next361, %n.vec356
  br i1 %i.sd, label %middle.block362, label %vector.body359, !llvm.loop !118

middle.block362:                                  ; preds = %vector.body359
  br i1 %cmp.n363, label %.loopexit.i, label %.lr.ph319.i.preheader

.lr.ph319.i.preheader:                            ; preds = %vector.memcheck335, %vector.scevcheck, %.lr.ph319.preheader.i, %middle.block362
  %indvars.iv341.i.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph319.preheader.i ], [ %n.vec356, %middle.block362 ]
  br label %.lr.ph319.i

.lr.ph319.i:                                      ; preds = %.lr.ph319.i.preheader, %.lr.ph319.i
  %indvars.iv341.i = phi i64 [ %indvars.iv.next342.i, %.lr.ph319.i ], [ %indvars.iv341.i.ph, %.lr.ph319.i.preheader ] ; 4 uses
  %i.se = trunc i64 %indvars.iv341.i to i32
  %i.sf = xor i32 %i.se, -1
  %i.sg = add i32 %i.hx, %i.sf
  %i.sh = mul i32 %i.sg, %i.np
  %i.si = add nsw i32 %i.sh, %i.pd
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.sj ; 2 uses
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !49
  %i.sm = fmul nsz float %i.ch, %i.sl
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv341.i
  store float %i.sm, ptr %i.sn, align 4, !tbaa !49
  %i.so = getelementptr i8, ptr %i.sk, i64 4
  %i.sp = load float, ptr %i.so, align 4, !tbaa !49
  %i.sq = fmul nsz float %i.ch, %i.sp
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv341.i
  store float %i.sq, ptr %i.sr, align 4, !tbaa !49
  %indvars.iv.next342.i = add nuw nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %exitcond345.not.i = icmp eq i64 %indvars.iv.next342.i, %wide.trip.count.i
  br i1 %exitcond345.not.i, label %.loopexit.i, label %.lr.ph319.i, !llvm.loop !119

bb.aw:                                            ; preds = %bb.au
  %i.ss = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.st = shl i32 %i.op, %i.da
  %i.su = sext i32 %i.st to i64                   ; 2 uses
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.su
  %i.sw = load ptr, ptr %i.ho, align 8, !tbaa !55
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.sw, i64 %i.su
  %i.sy = load ptr, ptr %i.hp, align 8, !tbaa !55 ; 4 uses
  %i.sz = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 4 uses
  br i1 %i.ns, label %.lr.ph316.preheader.i, label %._crit_edge.i

.lr.ph316.preheader.i:                            ; preds = %bb.aw
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ot ; 3 uses
  br i1 %i.of, label %.lr.ph316.i.epil.preheader, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.lr.ph316.preheader.i, %.lr.ph316.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph316.i ], [ 0, %.lr.ph316.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph316.i ], [ 0, %.lr.ph316.preheader.i ]
  %i.ta = mul nuw nsw i64 %indvars.iv.i, %i.nt
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.ta ; 2 uses
  %i.tb = load float, ptr %gep.i, align 4, !tbaa !49
  %i.tc = fmul nsz float %i.ch, %i.tb
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %indvars.iv.i
  store float %i.tc, ptr %i.td, align 4, !tbaa !65
  %i.te = getelementptr i8, ptr %gep.i, i64 4
  %i.tf = load float, ptr %i.te, align 4, !tbaa !49
  %i.tg = fmul nsz float %i.ch, %i.tf
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.i
  store float %i.tg, ptr %i.th, align 4, !tbaa !65
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ti = mul nuw nsw i64 %indvars.iv.next.i, %i.nt
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.ti ; 2 uses
  %i.tj = load float, ptr %gep.i.1, align 4, !tbaa !49
  %i.tk = fmul nsz float %i.ch, %i.tj
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %indvars.iv.next.i
  store float %i.tk, ptr %i.tl, align 4, !tbaa !65
  %i.tm = getelementptr i8, ptr %gep.i.1, i64 4
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !49
  %i.to = fmul nsz float %i.ch, %i.tn
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.next.i
  store float %i.to, ptr %i.tp, align 4, !tbaa !65
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph316.i, !llvm.loop !120

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph316.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph316.i.epil.preheader

.lr.ph316.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph316.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph316.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod442)
  %i.tq = mul nuw nsw i64 %indvars.iv.i.epil.init, %i.nt
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.tq ; 2 uses
  %i.tr = load float, ptr %gep.i.epil, align 4, !tbaa !49
  %i.ts = fmul nsz float %i.ch, %i.tr
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %indvars.iv.i.epil.init
  store float %i.ts, ptr %i.tt, align 4, !tbaa !65
  %i.tu = getelementptr i8, ptr %gep.i.epil, i64 4
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !49
  %i.tw = fmul nsz float %i.ch, %i.tv
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.i.epil.init
  store float %i.tw, ptr %i.tx, align 4, !tbaa !65
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph316.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.aw
  %i.ty = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.tz = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.ty(ptr noundef %i.tz, ptr noundef %i.sv, ptr noundef %i.sy, i64 noundef 8) #8, !inline_history !112
  %i.ua = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ub = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.ua(ptr noundef %i.ub, ptr noundef %i.sx, ptr noundef %i.sz, i64 noundef 8) #8, !inline_history !112
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph319.i, %middle.block362, %._crit_edge.i, %bb.av, %bb.at
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  br i1 %exitcond350.not.i, label %.thread294.i, label %bb.at, !llvm.loop !121

.thread294.i:                                     ; preds = %.loopexit.i, %.lr.ph329.i.prol.loopexit, %.lr.ph329.i, %middle.block, %bb.as, %._crit_edge326.i, %bb.aq, %bb.ao
  call void @av_frame_free(ptr noundef nonnull %i.c) #8
  %i.uc = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.ud = sext i32 %i.uc to i64
  %i.ue = icmp slt i64 %indvars.iv.next362.i, %i.ud
  br i1 %i.ue, label %bb.am, label %.sink.split, !llvm.loop !122

.loopexit:                                        ; preds = %bb.am, %bb.ak, %bb.ae, %bb.ah, %bb.z, %.thread.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.af, %bb.aj, %bb.ai
end_hunk_0
begin_hunk_1_@headphone_convolute:bb.a
  store i32 %.0100.lcssa, ptr %i.j, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @headphone_fast_convolute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 15 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !73     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = sext i32 %2 to i64                       ; 13 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.h
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !43   ; 7 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47
  %i.ab = add i32 %i.aa, -1                       ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.h
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !55 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.h
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.h
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.h
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.h
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.h
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !48 ; 6 uses
  %i.az = sitofp nsz i32 %i.ay to float
  %i.ba = fdiv nsz float 1.000000e+00, %i.az      ; 4 uses
  %i.bb = load i32, ptr %i.i, align 4, !tbaa !25  ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %i.w, i64 %i.h ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 5 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !68 ; 5 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.be) ; 4 uses
  %i.bf = icmp sgt i32 %., 0
  br i1 %i.bf, label %.lr.ph.preheader, label %.preheader154

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %. to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bg = icmp eq i32 %., 1
  br i1 %i.bg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader154.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader154, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader154.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader154.loopexit.unr-lcssa ]
  %.0147155.epil.init = phi i32 [ %i.bb, %.lr.ph.preheader ], [ %i.cf, %.preheader154.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod319 = trunc i32 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %i.bh = sext i32 %.0147155.epil.init to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !49
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.epil
  store float %i.bj, ptr %i.bk, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !49
  %i.bl = add nsw i32 %.0147155.epil.init, 1
  %i.bm = and i32 %i.bl, %i.ab
  br label %.preheader154

.preheader154:                                    ; preds = %.lr.ph.epil.preheader, %.preheader154.loopexit.unr-lcssa, %bb.a
  %.0147.lcssa = phi i32 [ %i.bb, %bb.a ], [ %i.cf, %.preheader154.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.epil.preheader ] ; 4 uses
  %i.bn = icmp slt i32 %i.u, %i.be
  br i1 %i.bn, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %.preheader154
  %i.bo = sext i32 %i.u to i64                    ; 2 uses
  %i.bp = sub i32 %i.be, %i.u
  %xtraiter320 = and i32 %i.bp, 3                 ; 2 uses
  %lcmp.mod321.not = icmp eq i32 %xtraiter320, 0
  br i1 %lcmp.mod321.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol

.lr.ph158.prol:                                   ; preds = %.lr.ph158.preheader, %.lr.ph158.prol
  %indvars.iv184.prol = phi i64 [ %indvars.iv.next185.prol, %.lr.ph158.prol ], [ %i.bo, %.lr.ph158.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph158.prol ], [ 0, %.lr.ph158.preheader ]
  %.idx221.prol = shl nsw i64 %indvars.iv184.prol, 3
  %i.bq = getelementptr inbounds i8, ptr %i.bc, i64 %.idx221.prol
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !49
  %indvars.iv.next185.prol = add nsw i64 %indvars.iv184.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter320
  br i1 %prol.iter.cmp.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol, !llvm.loop !160

.lr.ph158.prol.loopexit:                          ; preds = %.lr.ph158.prol, %.lr.ph158.preheader
  %indvars.iv184.unr = phi i64 [ %i.bo, %.lr.ph158.preheader ], [ %indvars.iv.next185.prol, %.lr.ph158.prol ]
  %i.br = sub i32 %i.u, %i.be
  %i.bs = icmp ugt i32 %i.br, -4
  br i1 %i.bs, label %._crit_edge, label %.lr.ph158

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0147155 = phi i32 [ %i.bb, %.lr.ph.preheader.new ], [ %i.cf, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bt = sext i32 %.0147155 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bt ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !49
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx
  store float %i.bv, ptr %i.bw, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !49
  %i.bx = add nsw i32 %.0147155, 1
  %i.by = and i32 %i.bx, %i.ab                    ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bz ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !49
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store float %i.cb, ptr %i.cd, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.ca, align 4, !tbaa !49
  %i.ce = add nsw i32 %i.by, 1
  %i.cf = and i32 %i.ce, %i.ab                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader154.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !161

.lr.ph158:                                        ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %.lr.ph158 ], [ %indvars.iv184.unr, %.lr.ph158.prol.loopexit ] ; 5 uses
  %.idx221 = shl nsw i64 %indvars.iv184, 3
  %i.cg = getelementptr inbounds i8, ptr %i.bc, i64 %.idx221
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !49
  %indvars.iv.next185 = shl i64 %indvars.iv184, 3
  %i.ch = getelementptr i8, ptr %i.bc, i64 %indvars.iv.next185
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !49
  %indvars.iv.next185.1 = shl i64 %indvars.iv184, 3
  %i.cj = getelementptr i8, ptr %i.bc, i64 %indvars.iv.next185.1
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store float 0.000000e+00, ptr %i.ck, align 4, !tbaa !49
  %indvars.iv.next185.2 = shl i64 %indvars.iv184, 3
  %i.cl = getelementptr i8, ptr %i.bc, i64 %indvars.iv.next185.2
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !49
  %indvars.iv.next185.3 = add nsw i64 %indvars.iv184, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next185.3 to i32
  %exitcond186.not.3 = icmp eq i32 %i.be, %lftr.wideiv.3
  br i1 %exitcond186.not.3, label %._crit_edge, label %.lr.ph158, !llvm.loop !162

._crit_edge:                                      ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158, %.preheader154
  %i.cn = sext i32 %i.ay to i64
  %i.co = shl nsw i64 %i.cn, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.co, i1 false)
  %i.cp = icmp sgt i32 %i.y, 0
  br i1 %i.cp, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.cs = icmp sgt i32 %i.ay, 0
  %i.ct = getelementptr i8, ptr %i.b, i64 56      ; 5 uses
  %i.cu = zext nneg i32 %i.y to i64               ; 8 uses
  %wide.trip.count205 = zext nneg i32 %i.y to i64
  %wide.trip.count195 = zext i32 %i.ay to i64     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 60
  %i.cv = shl nsw i64 %i.h, 2
  %i.cw = shl nuw nsw i64 %wide.trip.count195, 3  ; 4 uses
  %scevgep271 = getelementptr i8, ptr %i.ae, i64 %i.cw
  %scevgep272 = getelementptr i8, ptr %i.ae, i64 4
  %scevgep273 = getelementptr i8, ptr %i.ak, i64 %i.cw ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.ak, i64 4 ; 2 uses
  %i.cx = add nsw i64 %i.cw, -4                   ; 2 uses
  %scevgep275 = getelementptr i8, ptr %i.ae, i64 %i.cx
  %scevgep276 = getelementptr i8, ptr %i.ak, i64 %i.cx ; 2 uses
  %min.iters.check278 = icmp ult i32 %i.ay, 5
  %bound0280 = icmp ult ptr %i.ak, %scevgep275
  %bound1281 = icmp ult ptr %i.ae, %scevgep276
  %found.conflict282 = and i1 %bound0280, %bound1281
  %bound0287 = icmp ult ptr %scevgep274, %scevgep271
  %bound1288 = icmp ult ptr %scevgep272, %scevgep273
  %found.conflict289 = and i1 %bound0287, %bound1288
  %invariant.op = or i1 %found.conflict282, %found.conflict289
  %i.cy = and i64 %wide.trip.count195, 3          ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = select i1 %i.cz, i64 4, i64 %i.cy
  %n.vec296 = sub nsw i64 %wide.trip.count195, %i.da ; 2 uses
  %ident.check.not = icmp eq i32 %i.y, 1
  %invariant.gep338.a = getelementptr i8, ptr %i.w, i64 %i.cv
  %bound0240 = icmp ult ptr %i.bc, %scevgep
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %.loopexit
  %indvars.iv202 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next203, %.loopexit ] ; 6 uses
  %i.db = load i32, ptr %i.cq, align 4, !tbaa !79
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp eq i64 %indvars.iv202, %i.dc
  br i1 %i.dd, label %.preheader152, label %bb.c

.preheader152:                                    ; preds = %bb.b
  %i.de = load i32, ptr %i.bd, align 8, !tbaa !68 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %.preheader152
  %wide.trip.count200 = zext nneg i32 %i.de to i64 ; 7 uses
  %invariant.gep227 = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv202 ; 5 uses
  %min.iters.check = icmp ugt i32 %i.de, 8
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph167.preheader314

vector.memcheck:                                  ; preds = %.lr.ph167.preheader
  %i.dg = shl nuw nsw i64 %wide.trip.count200, 3
  %gep339 = getelementptr i8, ptr %invariant.gep338.a, i64 %i.dg
  %i.dh = getelementptr i8, ptr %gep339, i64 -4   ; 2 uses
  %i.di = add nuw i64 %indvars.iv202, %wide.trip.count200
  %i.dj = shl i64 %i.di, 2
  %i.dk = getelementptr i8, ptr %i.v, i64 %i.dj
  %bound0 = icmp ult ptr %i.bc, %i.dk
  %bound1 = icmp ult ptr %invariant.gep227, %i.dh
  %found.conflict = and i1 %bound0, %bound1
  %bound1241 = icmp ult ptr %i.ct, %i.dh
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx = or i1 %found.conflict, %found.conflict242
  br i1 %conflict.rdx, label %.lr.ph167.preheader314, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dl = and i64 %wide.trip.count200, 3          ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = select i1 %i.dm, i64 4, i64 %i.dl
  %n.vec = sub nsw i64 %wide.trip.count200, %i.dn ; 2 uses
  %i.do = load float, ptr %i.ct, align 8, !tbaa !78, !alias.scope !178
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.do, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %index
  %wide.load = load <4 x float>, ptr %i.dp, align 4, !tbaa !49, !alias.scope !179
  %i.dq = shl nuw nsw i64 %index, 3
  %i.dr = shl i64 %index, 3
  %i.ds = shl i64 %index, 3
  %i.dt = shl i64 %index, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dq ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ds
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %wide.vec = load <8 x float>, ptr %i.du, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.eb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %strided.vec) ; 4 uses
  %i.ec = extractelement <4 x float> %i.eb, i64 0
  store float %i.ec, ptr %i.du, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %i.ed = extractelement <4 x float> %i.eb, i64 1
  store float %i.ed, ptr %i.dw, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %i.ee = extractelement <4 x float> %i.eb, i64 2
  store float %i.ee, ptr %i.dy, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %i.ef = extractelement <4 x float> %i.eb, i64 3
  store float %i.ef, ptr %i.ea, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %.lr.ph167.preheader314, label %vector.body, !llvm.loop !167

.lr.ph167.preheader314:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph167.preheader
  %indvars.iv197.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph167.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.eh = sub nsw i64 %wide.trip.count200, %indvars.iv197.ph
  %xtraiter327 = and i64 %i.eh, 1
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.lr.ph167.prol.loopexit, label %.lr.ph167.prol

.lr.ph167.prol:                                   ; preds = %.lr.ph167.preheader314
  %i.ei = mul nuw nsw i64 %indvars.iv197.ph, %i.cu
  %gep228.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %i.ei
  %i.ej = load float, ptr %gep228.prol, align 4, !tbaa !49
  %i.ek = load float, ptr %i.ct, align 8, !tbaa !78
  %.idx222.prol = shl nuw nsw i64 %indvars.iv197.ph, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx222.prol ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !49
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %i.ej, float %i.ek, float %i.em)
  store float %i.en, ptr %i.el, align 4, !tbaa !49
  %indvars.iv.next198.prol = add nuw nsw i64 %indvars.iv197.ph, 1
  br label %.lr.ph167.prol.loopexit

.lr.ph167.prol.loopexit:                          ; preds = %.lr.ph167.prol, %.lr.ph167.preheader314
  %indvars.iv197.unr = phi i64 [ %indvars.iv197.ph, %.lr.ph167.preheader314 ], [ %indvars.iv.next198.prol, %.lr.ph167.prol ]
  %i.eo = add nsw i64 %wide.trip.count200, -1
  %i.ep = icmp eq i64 %indvars.iv197.ph, %i.eo
  br i1 %i.ep, label %.loopexit, label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.prol.loopexit, %.lr.ph167
  %indvars.iv197 = phi i64 [ %indvars.iv.next198.1, %.lr.ph167 ], [ %indvars.iv197.unr, %.lr.ph167.prol.loopexit ] ; 4 uses
  %i.eq = mul nuw nsw i64 %indvars.iv197, %i.cu
  %gep228 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %i.eq
  %i.er = load float, ptr %gep228, align 4, !tbaa !49
  %i.es = load float, ptr %i.ct, align 8, !tbaa !78
  %.idx222 = shl nuw nsw i64 %indvars.iv197, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx222 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !49
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %i.er, float %i.es, float %i.eu)
  store float %i.ev, ptr %i.et, align 4, !tbaa !49
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.ew = mul nuw nsw i64 %indvars.iv.next198, %i.cu
  %gep228.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %i.ew
  %i.ex = load float, ptr %gep228.1, align 4, !tbaa !49
  %i.ey = load float, ptr %i.ct, align 8, !tbaa !78
  %.idx222.1 = shl nuw nsw i64 %indvars.iv.next198, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx222.1 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !49
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.ey, float %i.fa)
  store float %i.fb, ptr %i.ez, align 4, !tbaa !49
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %exitcond201.not.1 = icmp eq i64 %indvars.iv.next198.1, %wide.trip.count200
  br i1 %exitcond201.not.1, label %.loopexit, label %.lr.ph167, !llvm.loop !168

bb.c:                                             ; preds = %bb.b
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv202
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !31
  %i.fe = zext i8 %i.fd to i32
  %i.ff = mul i32 %i.ay, %i.fe
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.l, i64 %i.fg ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.co, i1 false)
  %i.fi = load i32, ptr %i.bd, align 8, !tbaa !68 ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph161.preheader, label %._crit_edge162

.lr.ph161.preheader:                              ; preds = %bb.c
  %wide.trip.count190 = zext nneg i32 %i.fi to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv202 ; 5 uses
  %xtraiter322 = and i64 %wide.trip.count190, 3   ; 3 uses
  %i.fk = icmp ult i32 %i.fi, 4
  br i1 %i.fk, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter325 = and i64 %wide.trip.count190, 2147483644
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %indvars.iv187 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %indvars.iv.next188.3, %.lr.ph161 ] ; 6 uses
  %niter326 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter326.next.3, %.lr.ph161 ]
  %i.fl = mul nuw nsw i64 %indvars.iv187, %i.cu
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fl
  %i.fm = load float, ptr %gep, align 4, !tbaa !49
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv187
  store float %i.fm, ptr %i.fn, align 4, !tbaa !65
  %indvars.iv.next188 = or disjoint i64 %indvars.iv187, 1 ; 2 uses
  %i.fo = mul nuw nsw i64 %indvars.iv.next188, %i.cu
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fo
  %i.fp = load float, ptr %gep.1, align 4, !tbaa !49
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next188
  store float %i.fp, ptr %i.fq, align 4, !tbaa !65
  %indvars.iv.next188.1 = or disjoint i64 %indvars.iv187, 2 ; 2 uses
  %i.fr = mul nuw nsw i64 %indvars.iv.next188.1, %i.cu
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fr
  %i.fs = load float, ptr %gep.2, align 4, !tbaa !49
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next188.1
  store float %i.fs, ptr %i.ft, align 4, !tbaa !65
  %indvars.iv.next188.2 = or disjoint i64 %indvars.iv187, 3 ; 2 uses
  %i.fu = mul nuw nsw i64 %indvars.iv.next188.2, %i.cu
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fu
  %i.fv = load float, ptr %gep.3, align 4, !tbaa !49
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next188.2
  store float %i.fv, ptr %i.fw, align 4, !tbaa !65
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %niter326.next.3 = add i64 %niter326, 4         ; 2 uses
  %niter326.ncmp.3 = icmp eq i64 %niter326.next.3, %unroll_iter325
  br i1 %niter326.ncmp.3, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !169

._crit_edge162.loopexit.unr-lcssa:                ; preds = %.lr.ph161
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next188.3, %._crit_edge162.loopexit.unr-lcssa ]
  %lcmp.mod324 = icmp ne i64 %xtraiter322, 0
  tail call void @llvm.assume(i1 %lcmp.mod324)
  br label %.lr.ph161.epil

.lr.ph161.epil:                                   ; preds = %.lr.ph161.epil, %.lr.ph161.epil.preheader
  %indvars.iv187.epil = phi i64 [ %indvars.iv187.epil.init, %.lr.ph161.epil.preheader ], [ %indvars.iv.next188.epil, %.lr.ph161.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph161.epil.preheader ], [ %epil.iter.next, %.lr.ph161.epil ]
  %i.fx = mul nuw nsw i64 %indvars.iv187.epil, %i.cu
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fx
  %i.fy = load float, ptr %gep.epil, align 4, !tbaa !49
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv187.epil
  store float %i.fy, ptr %i.fz, align 4, !tbaa !65
  %indvars.iv.next188.epil = add nuw nsw i64 %indvars.iv187.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter322
  br i1 %epil.iter.cmp.not, label %._crit_edge162, label %.lr.ph161.epil, !llvm.loop !170

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.epil, %bb.c
  tail call void %i.at(ptr noundef %i.aq, ptr noundef %i.ae, ptr noundef %i.ah, i64 noundef 8) #8
  br i1 %i.cs, label %.lr.ph165.preheader, label %.loopexit

.lr.ph165.preheader:                              ; preds = %._crit_edge162
  br i1 %min.iters.check278, label %.lr.ph165.preheader315, label %vector.memcheck279

vector.memcheck279:                               ; preds = %.lr.ph165.preheader
  %i.ga = shl nsw i64 %i.fg, 3                    ; 2 uses
  %4 = add nsw i64 %i.ga, %i.cw                   ; 2 uses
  %5 = getelementptr i8, ptr %i.l, i64 %4
  %i.gb = getelementptr i8, ptr %5, i64 -4
  %i.gc = getelementptr i8, ptr %i.l, i64 %i.ga
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %i.ge = getelementptr i8, ptr %i.l, i64 %4
  %bound0283 = icmp ult ptr %i.ak, %i.gb
  %bound1284 = icmp ult ptr %i.fh, %scevgep276
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx290.reass = or i1 %found.conflict285, %invariant.op
  %bound0291 = icmp ult ptr %scevgep274, %i.ge
  %bound1292 = icmp ult ptr %i.gd, %scevgep273
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290.reass, %found.conflict293
  br i1 %conflict.rdx294, label %.lr.ph165.preheader315, label %vector.body297

vector.body297:                                   ; preds = %vector.memcheck279, %vector.body297
  %index298 = phi i64 [ %index.next310, %vector.body297 ], [ 0, %vector.memcheck279 ] ; 4 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %index298
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index298
  %wide.vec299 = load <8 x float>, ptr %i.gg, align 4, !tbaa !49 ; 2 uses
  %strided.vec300 = shufflevector <8 x float> %wide.vec299, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec301 = shufflevector <8 x float> %wide.vec299, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.vec302 = load <8 x float>, ptr %i.gf, align 4, !tbaa !65, !alias.scope !182 ; 3 uses
  %strided.vec303 = shufflevector <8 x float> %wide.vec302, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec305 = shufflevector <8 x float> %wide.vec302, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec306 = shufflevector <8 x float> %wide.vec302, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.gh = fneg nsz <4 x float> %strided.vec306
  %i.gi = fmul nsz <4 x float> %strided.vec301, %i.gh
  %i.gj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec300, <4 x float> %strided.vec303, <4 x float> %i.gi)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index298 ; 2 uses
  %wide.vec307 = load <8 x float>, ptr %i.gk, align 4, !tbaa !49 ; 2 uses
  %strided.vec308 = shufflevector <8 x float> %wide.vec307, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec309 = shufflevector <8 x float> %wide.vec307, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gl = fadd nsz <4 x float> %strided.vec308, %i.gj
  %i.gm = fmul nsz <4 x float> %strided.vec301, %strided.vec305
  %i.gn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec300, <4 x float> %strided.vec306, <4 x float> %i.gm)
  %i.go = fadd nsz <4 x float> %strided.vec309, %i.gn
  %interleaved.vec = shufflevector <4 x float> %i.gl, <4 x float> %i.go, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.gk, align 4, !tbaa !49
  %index.next310 = add nuw i64 %index298, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next310, %n.vec296
  br i1 %i.gp, label %.lr.ph165.preheader315, label %vector.body297, !llvm.loop !173

.lr.ph165.preheader315:                           ; preds = %vector.body297, %vector.memcheck279, %.lr.ph165.preheader
  %indvars.iv192.ph = phi i64 [ 0, %vector.memcheck279 ], [ 0, %.lr.ph165.preheader ], [ %n.vec296, %vector.body297 ]
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader315, %.lr.ph165
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph165 ], [ %indvars.iv192.ph, %.lr.ph165.preheader315 ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv192 ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv192 ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !65 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !183 ; 2 uses
  %i.gv = load float, ptr %i.gq, align 4, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !183 ; 2 uses
  %i.gy = fneg nsz float %i.gx
  %i.gz = fmul nsz float %i.gu, %i.gy
  %i.ha = tail call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.gv, float %i.gz)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv192 ; 3 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !65
  %i.hd = fadd nsz float %i.hc, %i.ha
  store float %i.hd, ptr %i.hb, align 4, !tbaa !65
  %i.he = load float, ptr %i.gq, align 4, !tbaa !65
  %i.hf = fmul nsz float %i.gu, %i.he
  %i.hg = tail call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.gx, float %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !183
  %i.hj = fadd nsz float %i.hi, %i.hg
  store float %i.hj, ptr %i.hh, align 4, !tbaa !183
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %.loopexit, label %.lr.ph165, !llvm.loop !174

.loopexit:                                        ; preds = %.lr.ph165, %.lr.ph167.prol.loopexit, %.lr.ph167, %._crit_edge162, %.preheader152
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge172, label %bb.b, !llvm.loop !175

._crit_edge172:                                   ; preds = %.loopexit, %._crit_edge
  tail call void %i.aw(ptr noundef %i.an, ptr noundef %i.ae, ptr noundef %i.ak, i64 noundef 8) #8
  %i.hk = load i32, ptr %i.bd, align 8, !tbaa !68 ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph175, label %.preheader

.preheader:                                       ; preds = %bb.e, %._crit_edge172
  %.lcssa = phi i32 [ %i.hk, %._crit_edge172 ], [ %i.ia, %bb.e ]
  %i.hm = icmp sgt i32 %i.u, 1
  br i1 %i.hm, label %.lr.ph178.preheader, label %._crit_edge179

.lr.ph178.preheader:                              ; preds = %.preheader
  %i.hn = add nsw i32 %i.u, -1                    ; 3 uses
  %i.ho = sext i32 %.lcssa to i64
  %wide.trip.count213 = zext nneg i32 %i.hn to i64 ; 2 uses
  %invariant.gep229 = getelementptr [8 x i8], ptr %i.ae, i64 %i.ho ; 3 uses
  %xtraiter330 = and i64 %wide.trip.count213, 1
  %i.hp = icmp eq i32 %i.hn, 1
  br i1 %i.hp, label %.lr.ph178.epil.preheader, label %.lr.ph178.preheader.new

.lr.ph178.preheader.new:                          ; preds = %.lr.ph178.preheader
  %unroll_iter334 = and i64 %wide.trip.count213, 2147483646
  br label %.lr.ph178

.lr.ph175:                                        ; preds = %._crit_edge172, %bb.e
  %i.hq = phi i32 [ %i.ia, %bb.e ], [ %i.hk, %._crit_edge172 ]
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %bb.e ], [ 0, %._crit_edge172 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv207
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !65
  %.idx223 = shl nuw nsw i64 %indvars.iv207, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx223 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !49
  %i.hv = tail call nsz float @llvm.fmuladd.f32(float %i.hs, float %i.ba, float %i.hu) ; 2 uses
  store float %i.hv, ptr %i.ht, align 4, !tbaa !49
  %i.hw = tail call nsz float @llvm.fabs.f32(float %i.hv)
  %i.hx = fcmp nsz ogt float %i.hw, 1.000000e+00
  br i1 %i.hx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph175
  %i.hy = load i32, ptr %i.o, align 4, !tbaa !25
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.o, align 4, !tbaa !25
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph175, %bb.d
  %i.ia = phi i32 [ %i.hq, %.lr.ph175 ], [ %.pre, %bb.d ] ; 3 uses
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp slt i64 %indvars.iv.next208, %i.ib
  br i1 %i.ic, label %.lr.ph175, label %.preheader, !llvm.loop !176

.lr.ph178:                                        ; preds = %.lr.ph178, %.lr.ph178.preheader.new
  %indvars.iv210 = phi i64 [ 0, %.lr.ph178.preheader.new ], [ %indvars.iv.next211.1, %.lr.ph178 ] ; 4 uses
  %niter335 = phi i64 [ 0, %.lr.ph178.preheader.new ], [ %niter335.next.1, %.lr.ph178 ]
  %i.id = trunc i64 %indvars.iv210 to i32
  %i.ie = add i32 %.0147.lcssa, %i.id
  %i.if = and i32 %i.ie, %i.ab
  %gep230 = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv210
  %i.ig = load float, ptr %gep230, align 4, !tbaa !65
  %i.ih = sext i32 %i.if to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ih ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !49
  %i.ik = tail call nsz float @llvm.fmuladd.f32(float %i.ig, float %i.ba, float %i.ij)
  store float %i.ik, ptr %i.ii, align 4, !tbaa !49
  %indvars.iv.next211 = or disjoint i64 %indvars.iv210, 1 ; 2 uses
  %i.il = trunc i64 %indvars.iv.next211 to i32
  %i.im = add i32 %.0147.lcssa, %i.il
  %i.in = and i32 %i.im, %i.ab
  %gep230.1 = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv.next211
  %i.io = load float, ptr %gep230.1, align 4, !tbaa !65
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ip ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !49
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.io, float %i.ba, float %i.ir)
  store float %i.is, ptr %i.iq, align 4, !tbaa !49
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter335.next.1 = add i64 %niter335, 2         ; 2 uses
  %niter335.ncmp.1 = icmp eq i64 %niter335.next.1, %unroll_iter334
  br i1 %niter335.ncmp.1, label %._crit_edge179.loopexit.unr-lcssa, label %.lr.ph178, !llvm.loop !177

._crit_edge179.loopexit.unr-lcssa:                ; preds = %.lr.ph178
  %lcmp.mod332.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod332.not, label %._crit_edge179, label %.lr.ph178.epil.preheader

.lr.ph178.epil.preheader:                         ; preds = %._crit_edge179.loopexit.unr-lcssa, %.lr.ph178.preheader
  %indvars.iv210.epil.init = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next211.1, %._crit_edge179.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod333 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod333)
  %i.it = trunc i64 %indvars.iv210.epil.init to i32
  %i.iu = add i32 %.0147.lcssa, %i.it
  %i.iv = and i32 %i.iu, %i.ab
  %gep230.epil = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv210.epil.init
  %i.iw = load float, ptr %gep230.epil, align 4, !tbaa !65
  %i.ix = sext i32 %i.iv to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ix ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !49
  %i.ja = tail call nsz float @llvm.fmuladd.f32(float %i.iw, float %i.ba, float %i.iz)
  store float %i.ja, ptr %i.iy, align 4, !tbaa !49
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.lr.ph178.epil.preheader, %._crit_edge179.loopexit.unr-lcssa, %.preheader
  store i32 %.0147.lcssa, ptr %i.i, align 4, !tbaa !25
  ret i32 0
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

end_hunk_1
