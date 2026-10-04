Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pred?download=true
loop-unroll.NumCompletelyUnrolled: 289
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 353
begin_hunk_0_@intra_pred_2_9:bb.a
  %i.jd = mul nsw i32 %i.ja, %i.bg
  %i.je = add i32 %i.jd, %i.iw
  %i.jf = zext nneg i32 %.spec.select.i to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph55, %bb.n
  %indvars.iv132 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next133, %bb.n ] ; 2 uses
  %.0726.i53 = phi i32 [ 0, %.lr.ph55 ], [ %i.jo, %bb.n ]
  %i.jg = trunc nuw nsw i64 %indvars.iv132 to i32
  %i.jh = add i32 %i.je, %i.jg
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.jc, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 10
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !185
  %i.jm = icmp eq i8 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %i.jo = or i32 %.0726.i53, %i.jn                ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %i.jp = icmp samesign ult i64 %indvars.iv.next133, %i.jf
  br i1 %i.jp, label %bb.n, label %.loopexit43, !llvm.loop !16

.loopexit43:                                      ; preds = %bb.n, %bb.m, %bb.l
  %.1727.i = phi i32 [ %i.cd, %bb.l ], [ 0, %bb.m ], [ %i.jo, %bb.n ]
  %or.cond11.i = select i1 %i.cq, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge61

bb.o:                                             ; preds = %.loopexit43
  %i.jq = ashr i32 %i.dd, %i.dk                   ; 2 uses
  %i.jr = sub nsw i32 %i.bg, %i.jq
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.jr) ; 2 uses
  %i.js = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.js, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %bb.o
  %i.jt = add nsw i32 %3, -1
  %i.ju = ashr i32 %i.jt, %i.dk
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !183
  %i.jx = mul nsw i32 %i.ju, %i.bg
  %i.jy = add i32 %i.jx, %i.jq
  %i.jz = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph60, %bb.p
  %indvars.iv135 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next136, %bb.p ] ; 2 uses
  %.0723.i58 = phi i32 [ 0, %.lr.ph60 ], [ %i.ki, %bb.p ]
  %i.ka = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.kb = add i32 %i.jy, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [12 x i8], ptr %i.jw, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 10
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !185
  %i.kg = icmp eq i8 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %i.ki = or i32 %.0723.i58, %i.kh                ; 2 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next136, %i.jz
  br i1 %i.kj, label %bb.p, label %._crit_edge61.loopexit, !llvm.loop !17

._crit_edge61.loopexit:                           ; preds = %bb.p
  %i.kk = icmp ne i32 %i.ki, 0
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.o, %._crit_edge61.loopexit, %.loopexit43
  %.1724.i = phi i1 [ %i.cq, %.loopexit43 ], [ false, %bb.o ], [ %i.kk, %._crit_edge61.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bi, i8 -128, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bj, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.b, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge61, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge61 ], [ %i.bx, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge61 ], [ %i.bz, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge61 ], [ %i.cb, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge61 ], [ %i.cd, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge61 ], [ %i.cq, %bb.g ] ; 5 uses
  %i.kl = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.km = xor i64 %i.ax, -1
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ko, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ko, ptr %i.b, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kp = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kq = sub nsw i64 0, %i.ax
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.kq
  %i.ks = load i64, ptr %i.kr, align 2
  store i64 %i.ks, ptr %i.bj, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit42

bb.v:                                             ; preds = %bb.u
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.ku = sub nsw i64 0, %i.ax
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i64, ptr %i.kw, align 2
  store i64 %i.kx, ptr %i.kt, align 2
  %i.ky = add nsw i32 %i.df, 3
  %i.kz = sext i32 %i.ky to i64
  %i.la = sub nsw i64 %i.kz, %i.ax
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !82
  %i.ld = zext i16 %i.lc to i64
  %i.le = mul nuw i64 %i.ld, 281479271743489      ; 2 uses
  %i.lf = icmp slt i32 %i.df, 4
  br i1 %i.lf, label %.lr.ph65, label %.loopexit42

.lr.ph65:                                         ; preds = %bb.v
  %i.lg = sub nsw i32 4, %i.df                    ; 2 uses
  %i.lh = sext i32 %i.df to i64
  %i.li = getelementptr inbounds [2 x i8], ptr %i.kt, i64 %i.lh ; 2 uses
  %i.lj = zext nneg i32 %i.lg to i64              ; 2 uses
  %i.lk = tail call i64 @llvm.umax.i64(i64 %i.lj, i64 4)
  %i.ll = add nsw i64 %i.lk, -1
  %i.lm = lshr i64 %i.ll, 2
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 2 uses
  %min.iters.check293 = icmp ult i32 %i.lg, 13
  br i1 %min.iters.check293, label %scalar.ph292.preheader, label %vector.ph294

vector.ph294:                                     ; preds = %.lr.ph65
  %n.vec295 = and i64 %i.ln, 9223372036854775804  ; 3 uses
  %i.lo = shl i64 %n.vec295, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph294
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next298, %vector.body296 ] ; 2 uses
  %.idx330 = shl nuw i64 %index297, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %.idx330 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lp, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.lq, align 2, !tbaa !78
  %index.next298 = add nuw i64 %index297, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next298, %n.vec295
  br i1 %i.lr, label %middle.block299, label %vector.body296, !llvm.loop !224

middle.block299:                                  ; preds = %vector.body296
  %cmp.n300 = icmp eq i64 %i.ln, %n.vec295
  br i1 %cmp.n300, label %.loopexit42, label %scalar.ph292.preheader

scalar.ph292.preheader:                           ; preds = %.lr.ph65, %middle.block299
  %indvars.iv138.ph = phi i64 [ 0, %.lr.ph65 ], [ %i.lo, %middle.block299 ]
  br label %scalar.ph292

scalar.ph292:                                     ; preds = %scalar.ph292.preheader, %scalar.ph292
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %scalar.ph292 ], [ %indvars.iv138.ph, %scalar.ph292.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv138
  store i64 %i.le, ptr %i.ls, align 2, !tbaa !78
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %i.lt = icmp samesign ult i64 %indvars.iv.next139, %i.lj
  br i1 %i.lt, label %scalar.ph292, label %.loopexit42, !llvm.loop !225

.loopexit42:                                      ; preds = %scalar.ph292, %middle.block299, %bb.v, %bb.u
  %i.lu = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lu, label %.preheader40.preheader, label %.loopexit41

.preheader40.preheader:                           ; preds = %.loopexit42
  %i.lv = getelementptr i8, ptr %i.be, i64 -2
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !82
  store i16 %i.lw, ptr %i.bi, align 2, !tbaa !82
  %i.lx = getelementptr [2 x i8], ptr %i.be, i64 %i.ax
  %i.ly = getelementptr i8, ptr %i.lx, i64 -2
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !82
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.lz, ptr %i.ma, align 4, !tbaa !82
  %i.mb = and i64 %i.aw, -2
  %i.mc = getelementptr [2 x i8], ptr %i.be, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 -2
  %i.me = load i16, ptr %i.md, align 2, !tbaa !82
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.me, ptr %i.mf, align 2, !tbaa !82
  %.idx = mul i64 %i.ax, 6
  %i.mg = getelementptr i8, ptr %i.be, i64 %.idx
  %i.mh = getelementptr i8, ptr %i.mg, i64 -2
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !82
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mi, ptr %i.mj, align 8, !tbaa !82
  br label %.loopexit41

.loopexit41:                                      ; preds = %.preheader40.preheader, %.loopexit42
  br i1 %.2738.i, label %.preheader39, label %.loopexit38

.preheader39:                                     ; preds = %.loopexit41
  %i.mk = icmp sgt i32 %i.cx, 0
  %i.ml = add i32 %i.cx, 3                        ; 3 uses
  br i1 %i.mk, label %.lr.ph68.preheader, label %.lr.ph72

.lr.ph68.preheader:                               ; preds = %.preheader39
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ml, i32 4) ; 4 uses
  %i.mm = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.mm to i64
  %i.mn = zext nneg i32 %smax to i64              ; 3 uses
  %i.mo = add nsw i64 %i.mn, -3                   ; 2 uses
  %min.iters.check309 = icmp slt i32 %i.ml, 131
  br i1 %min.iters.check309, label %.lr.ph68.preheader343, label %vector.scevcheck302

vector.scevcheck302:                              ; preds = %.lr.ph68.preheader
  %i.mp = zext nneg i32 %smax to i64
  %i.mq = add nsw i64 %i.mp, -4
  %i.mr = and i64 %i.aw, -2
  %i.ms = mul i64 %i.ax, -2
  %i.mt = shl nsw i64 %i.bc, 1
  %i.mu = add nsw i64 %i.mt, 8
  %i.mv = mul i64 %i.ax, %i.mu
  %i.mw = shl nsw i64 %i.ba, 1
  %i.mx = getelementptr i8, ptr %i.az, i64 %i.mv
  %i.my = getelementptr i8, ptr %i.mx, i64 %i.mw
  %scevgep = getelementptr i8, ptr %i.my, i64 -2  ; 4 uses
  %i.mz = icmp slt i32 %i.av, 0                   ; 2 uses
  %i.na = select i1 %i.mz, i64 %i.ms, i64 %i.mr
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.na, i64 %i.mq) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.nb = sub i64 0, %mul.result
  %i.nc = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.nd = getelementptr i8, ptr %scevgep, i64 %i.nb
  %i.ne = icmp ult ptr %i.nc, %scevgep
  %i.nf = icmp ugt ptr %i.nd, %scevgep
  %i.ng = select i1 %i.mz, i1 %i.nf, i1 %i.ne
  %i.nh = or i1 %i.ng, %mul.overflow
  br i1 %i.nh, label %.lr.ph68.preheader343, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck302
  %scevgep303 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.ni = getelementptr i8, ptr %i.a, i64 %6
  %scevgep304 = getelementptr i8, ptr %i.ni, i64 4
  %i.nj = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.nk = add nsw i64 %i.nj, %6
  %i.nl = mul i64 %i.ax, %i.nk
  %i.nm = shl nsw i64 %i.ba, 1                    ; 2 uses
  %i.nn = getelementptr i8, ptr %i.az, i64 %i.nl
  %i.no = getelementptr i8, ptr %i.nn, i64 %i.nm
  %scevgep305 = getelementptr i8, ptr %i.no, i64 -2 ; 4 uses
  %i.np = add nsw i64 %i.nj, 8
  %i.nq = mul i64 %i.ax, %i.np
  %i.nr = getelementptr i8, ptr %i.az, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 %i.nm
  %scevgep306 = getelementptr i8, ptr %i.ns, i64 -2 ; 4 uses
  %i.nt = icmp ult ptr %scevgep305, %scevgep306
  %umin = select i1 %i.nt, ptr %scevgep305, ptr %scevgep306
  %i.nu = icmp ugt ptr %scevgep305, %scevgep306
  %umax = select i1 %i.nu, ptr %scevgep305, ptr %scevgep306
  %scevgep307 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep303, %scevgep307
  %bound1 = icmp ult ptr %umin, %scevgep304
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph68.preheader343, label %vector.ph310

vector.ph310:                                     ; preds = %vector.memcheck
  %n.vec311 = and i64 %i.mo, -8                   ; 3 uses
  %i.nv = or disjoint i64 %n.vec311, 4
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next314, %vector.body312 ] ; 9 uses
  %i.nw = or disjoint i64 %index313, 4            ; 2 uses
  %i.nx = or disjoint i64 %index313, 5
  %i.ny = or disjoint i64 %index313, 6
  %i.nz = or disjoint i64 %index313, 7
  %i.oa = add i64 %index313, 8
  %i.ob = add i64 %index313, 9
  %i.oc = add i64 %index313, 10
  %i.od = add i64 %index313, 11
  %i.oe = mul nuw nsw i64 %i.ax, %i.nw
  %i.of = mul nuw nsw i64 %i.ax, %i.nx
  %i.og = mul nuw nsw i64 %i.ax, %i.ny
  %i.oh = mul nuw nsw i64 %i.ax, %i.nz
  %i.oi = mul nuw nsw i64 %i.ax, %i.oa
  %i.oj = mul nuw nsw i64 %i.ax, %i.ob
  %i.ok = mul nuw nsw i64 %i.ax, %i.oc
  %i.ol = mul nuw nsw i64 %i.ax, %i.od
  %i.om = getelementptr [2 x i8], ptr %i.be, i64 %i.oe
  %i.on = getelementptr [2 x i8], ptr %i.be, i64 %i.of
  %i.oo = getelementptr [2 x i8], ptr %i.be, i64 %i.og
  %i.op = getelementptr [2 x i8], ptr %i.be, i64 %i.oh
  %i.oq = getelementptr [2 x i8], ptr %i.be, i64 %i.oi
  %i.or = getelementptr [2 x i8], ptr %i.be, i64 %i.oj
  %i.os = getelementptr [2 x i8], ptr %i.be, i64 %i.ok
  %i.ot = getelementptr [2 x i8], ptr %i.be, i64 %i.ol
  %i.ou = getelementptr i8, ptr %i.om, i64 -2
  %i.ov = getelementptr i8, ptr %i.on, i64 -2
  %i.ow = getelementptr i8, ptr %i.oo, i64 -2
  %i.ox = getelementptr i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -2
  %i.oz = getelementptr i8, ptr %i.or, i64 -2
  %i.pa = getelementptr i8, ptr %i.os, i64 -2
  %i.pb = getelementptr i8, ptr %i.ot, i64 -2
  %i.pc = load i16, ptr %i.ou, align 2, !tbaa !82, !alias.scope !234
  %i.pd = load i16, ptr %i.ov, align 2, !tbaa !82, !alias.scope !234
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !82, !alias.scope !234
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !82, !alias.scope !234
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !82, !alias.scope !234
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !82, !alias.scope !234
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !82, !alias.scope !234
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !82, !alias.scope !234
  %i.pk = insertelement <8 x i16> poison, i16 %i.pc, i64 0
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 1
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 2
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 3
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 4
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 5
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 6
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 7
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.nw
  store <8 x i16> %i.pr, ptr %i.ps, align 2, !tbaa !82, !alias.scope !235, !noalias !234
  %index.next314 = add nuw i64 %index313, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next314, %n.vec311
  br i1 %i.pt, label %middle.block315, label %vector.body312, !llvm.loop !229

middle.block315:                                  ; preds = %vector.body312
  %cmp.n316 = icmp eq i64 %i.mo, %n.vec311
  br i1 %cmp.n316, label %._crit_edge69, label %.lr.ph68.preheader343

.lr.ph68.preheader343:                            ; preds = %vector.memcheck, %vector.scevcheck302, %.lr.ph68.preheader, %middle.block315
  %indvars.iv144.ph = phi i64 [ 4, %vector.memcheck ], [ 4, %vector.scevcheck302 ], [ 4, %.lr.ph68.preheader ], [ %i.nv, %middle.block315 ] ; 4 uses
  %i.pu = add nuw nsw i64 %i.mn, 1
  %i.pv = sub nsw i64 %i.pu, %indvars.iv144.ph
  %i.pw = sub nsw i64 %i.mn, %indvars.iv144.ph
  %xtraiter = and i64 %i.pv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol

.lr.ph68.prol:                                    ; preds = %.lr.ph68.preheader343, %.lr.ph68.prol
  %indvars.iv144.prol = phi i64 [ %indvars.iv.next145.prol, %.lr.ph68.prol ], [ %indvars.iv144.ph, %.lr.ph68.preheader343 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph68.prol ], [ 0, %.lr.ph68.preheader343 ]
  %i.px = mul nuw nsw i64 %i.ax, %indvars.iv144.prol
  %i.py = getelementptr [2 x i8], ptr %i.be, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 -2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !82
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv144.prol
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !82
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol, !llvm.loop !230

.lr.ph68.prol.loopexit:                           ; preds = %.lr.ph68.prol, %.lr.ph68.preheader343
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph68.preheader343 ], [ %indvars.iv.next145.prol, %.lr.ph68.prol ]
  %i.qc = icmp ult i64 %i.pw, 3
  br i1 %i.qc, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.3, %.lr.ph68 ], [ %indvars.iv144.unr, %.lr.ph68.prol.loopexit ] ; 6 uses
  %i.qd = mul nuw nsw i64 %i.ax, %indvars.iv144
  %i.qe = getelementptr [2 x i8], ptr %i.be, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv144
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.qi = mul nuw nsw i64 %i.ax, %indvars.iv.next145
  %i.qj = getelementptr [2 x i8], ptr %i.be, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 -2
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !82
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next145
  store i16 %i.ql, ptr %i.qm, align 2, !tbaa !82
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %i.qn = mul nuw nsw i64 %i.ax, %indvars.iv.next145.1
  %i.qo = getelementptr [2 x i8], ptr %i.be, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 -2
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !82
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next145.1
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !82
  %indvars.iv.next145.2 = add nuw nsw i64 %indvars.iv144, 3 ; 2 uses
  %i.qs = mul nuw nsw i64 %i.ax, %indvars.iv.next145.2
  %i.qt = getelementptr [2 x i8], ptr %i.be, i64 %i.qs
  %i.qu = getelementptr i8, ptr %i.qt, i64 -2
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !82
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next145.2
  store i16 %i.qv, ptr %i.qw, align 2, !tbaa !82
  %indvars.iv.next145.3 = add nuw nsw i64 %indvars.iv144, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next145.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge69, label %.lr.ph68, !llvm.loop !231

._crit_edge69:                                    ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68, %middle.block315
  %i.qx = icmp samesign ult i32 %i.cx, 4
  br i1 %i.qx, label %.lr.ph72, label %.loopexit38

.lr.ph72:                                         ; preds = %.preheader39, %._crit_edge69
  %.pn261 = sext i32 %i.ml to i64
  %.pn260 = mul nsw i64 %i.ax, %.pn261
  %.pn = getelementptr [2 x i8], ptr %i.be, i64 %.pn260
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.qy = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.qz = sub nsw i32 4, %i.cx                    ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.rb = sext i32 %i.cx to i64
  %i.rc = getelementptr inbounds [2 x i8], ptr %i.ra, i64 %i.rb ; 2 uses
  %i.rd = zext nneg i32 %i.qz to i64              ; 2 uses
  %i.re = call i64 @llvm.umax.i64(i64 %i.rd, i64 4)
  %i.rf = add nsw i64 %i.re, -1
  %i.rg = lshr i64 %i.rf, 2
  %i.rh = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %min.iters.check319 = icmp ult i32 %i.qz, 13
  br i1 %min.iters.check319, label %scalar.ph318.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph72
  %n.vec321 = and i64 %i.rh, 9223372036854775804  ; 3 uses
  %i.ri = shl i64 %n.vec321, 2
  %broadcast.splatinsert322 = insertelement <2 x i64> poison, i64 %i.qy, i64 0
  %broadcast.splat323 = shufflevector <2 x i64> %broadcast.splatinsert322, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph320
  %index325 = phi i64 [ 0, %vector.ph320 ], [ %index.next326, %vector.body324 ] ; 2 uses
  %.idx331 = shl nuw i64 %index325, 3
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.idx331 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store <2 x i64> %broadcast.splat323, ptr %i.rj, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat323, ptr %i.rk, align 2, !tbaa !78
  %index.next326 = add nuw i64 %index325, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next326, %n.vec321
  br i1 %i.rl, label %middle.block327, label %vector.body324, !llvm.loop !232

middle.block327:                                  ; preds = %vector.body324
  %cmp.n328 = icmp eq i64 %i.rh, %n.vec321
  br i1 %cmp.n328, label %.loopexit38, label %scalar.ph318.preheader

scalar.ph318.preheader:                           ; preds = %.lr.ph72, %middle.block327
  %indvars.iv147.ph = phi i64 [ 0, %.lr.ph72 ], [ %i.ri, %middle.block327 ]
  br label %scalar.ph318

scalar.ph318:                                     ; preds = %scalar.ph318.preheader, %scalar.ph318
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %scalar.ph318 ], [ %indvars.iv147.ph, %scalar.ph318.preheader ] ; 2 uses
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.rc, i64 %indvars.iv147
  store i64 %i.qy, ptr %i.rm, align 2, !tbaa !78
end_hunk_0
begin_hunk_1_@intra_pred_3_9:bb.a
  %.1727.i = phi i32 [ %i.ch, %bb.l ], [ 0, %bb.m ], [ %i.js, %bb.n ]
  %or.cond11.i = select i1 %i.cu, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge66

bb.o:                                             ; preds = %.loopexit48
  %i.ju = ashr i32 %i.dh, %i.do                   ; 2 uses
  %i.jv = sub nsw i32 %i.bi, %i.ju
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.jv) ; 2 uses
  %i.jw = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.jw, label %.lr.ph65, label %._crit_edge66

.lr.ph65:                                         ; preds = %bb.o
  %i.jx = add nsw i32 %3, -1
  %i.jy = ashr i32 %i.jx, %i.do
  %i.jz = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !183
  %i.kb = mul nsw i32 %i.jy, %i.bi
  %i.kc = add i32 %i.kb, %i.ju
  %i.kd = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph65, %bb.p
  %indvars.iv138 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next139, %bb.p ] ; 2 uses
  %.0723.i63 = phi i32 [ 0, %.lr.ph65 ], [ %i.km, %bb.p ]
  %i.ke = trunc nuw nsw i64 %indvars.iv138 to i32
  %i.kf = add i32 %i.kc, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [12 x i8], ptr %i.ka, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 10
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !185
  %i.kk = icmp eq i8 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %i.km = or i32 %.0723.i63, %i.kl                ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %i.kn = icmp samesign ult i64 %indvars.iv.next139, %i.kd
  br i1 %i.kn, label %bb.p, label %._crit_edge66.loopexit, !llvm.loop !17

._crit_edge66.loopexit:                           ; preds = %bb.p
  %i.ko = icmp ne i32 %i.km, 0
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.o, %._crit_edge66.loopexit, %.loopexit48
  %.1724.i = phi i1 [ %i.cu, %.loopexit48 ], [ false, %bb.o ], [ %i.ko, %._crit_edge66.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bk, i8 -128, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bl, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.c, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge66, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge66 ], [ %i.cb, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge66 ], [ %i.cd, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge66 ], [ %i.cf, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge66 ], [ %i.ch, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge66 ], [ %i.cu, %bb.g ] ; 5 uses
  %i.kp = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kq = xor i64 %i.az, -1
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ks, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ks, ptr %i.c, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kt = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ku = sub nsw i64 0, %i.az
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bl, ptr noundef nonnull align 2 dereferenceable(16) %i.kv, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit47

bb.v:                                             ; preds = %bb.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 2 uses
  %i.kx = sub nsw i64 0, %i.az
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.kw, ptr noundef nonnull align 2 dereferenceable(16) %i.kz, i64 16, i1 false)
  %i.la = add nsw i32 %i.dj, 7
  %i.lb = sext i32 %i.la to i64
  %i.lc = sub nsw i64 %i.lb, %i.az
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !82
  %i.lf = zext i16 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, 281479271743489      ; 2 uses
  %i.lh = icmp slt i32 %i.dj, 8
  br i1 %i.lh, label %.lr.ph70, label %.loopexit47

.lr.ph70:                                         ; preds = %bb.v
  %i.li = sub nsw i32 8, %i.dj                    ; 2 uses
  %i.lj = sext i32 %i.dj to i64
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.lj ; 2 uses
  %i.ll = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lm = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 4)
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check329 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph70
  %n.vec331 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec331, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next334, %vector.body332 ] ; 2 uses
  %.idx366 = shl nuw i64 %index333, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx366 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next334 = add nuw i64 %index333, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next334, %n.vec331
  br i1 %i.lt, label %middle.block335, label %vector.body332, !llvm.loop !240

middle.block335:                                  ; preds = %vector.body332
  %cmp.n336 = icmp eq i64 %i.lp, %n.vec331
  br i1 %cmp.n336, label %.loopexit47, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %.lr.ph70, %middle.block335
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph70 ], [ %i.lq, %middle.block335 ]
  br label %scalar.ph328

scalar.ph328:                                     ; preds = %scalar.ph328.preheader, %scalar.ph328
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph328 ], [ %indvars.iv141.ph, %scalar.ph328.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv141
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next142, %i.ll
  br i1 %i.lv, label %scalar.ph328, label %.loopexit47, !llvm.loop !241

.loopexit47:                                      ; preds = %scalar.ph328, %middle.block335, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lw, label %.preheader45.preheader, label %.loopexit46

.preheader45.preheader:                           ; preds = %.loopexit47
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx269 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx270 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx271 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx272 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx272
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.nc = icmp sgt i32 %i.db, 0
  %i.nd = add i32 %i.db, 7                        ; 3 uses
  br i1 %i.nc, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 8) ; 4 uses
  %i.ne = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ne to i64
  %i.nf = zext nneg i32 %smax to i64              ; 3 uses
  %i.ng = add nsw i64 %i.nf, -7                   ; 2 uses
  %min.iters.check345 = icmp slt i32 %i.nd, 135
  br i1 %min.iters.check345, label %.lr.ph73.preheader379, label %vector.scevcheck338

vector.scevcheck338:                              ; preds = %.lr.ph73.preheader
  %i.nh = zext nneg i32 %smax to i64
  %i.ni = add nsw i64 %i.nh, -8
  %i.nj = and i64 %i.ay, -2
  %i.nk = mul i64 %i.az, -2
  %i.nl = shl nsw i64 %i.be, 1
  %i.nm = add nsw i64 %i.nl, 16
  %i.nn = mul i64 %i.az, %i.nm
  %i.no = shl nsw i64 %i.bc, 1
  %i.np = getelementptr i8, ptr %i.bb, i64 %i.nn
  %i.nq = getelementptr i8, ptr %i.np, i64 %i.no
  %scevgep = getelementptr i8, ptr %i.nq, i64 -2  ; 4 uses
  %i.nr = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.ns = select i1 %i.nr, i64 %i.nk, i64 %i.nj
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ns, i64 %i.ni) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.nt = sub i64 0, %mul.result
  %i.nu = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.nv = getelementptr i8, ptr %scevgep, i64 %i.nt
  %i.nw = icmp ult ptr %i.nu, %scevgep
  %i.nx = icmp ugt ptr %i.nv, %scevgep
  %i.ny = select i1 %i.nr, i1 %i.nx, i1 %i.nw
  %i.nz = or i1 %i.ny, %mul.overflow
  br i1 %i.nz, label %.lr.ph73.preheader379, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck338
  %scevgep339 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.oa = getelementptr i8, ptr %i.a, i64 %6
  %scevgep340 = getelementptr i8, ptr %i.oa, i64 4
  %i.ob = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.oc = add nsw i64 %i.ob, %6
  %i.od = mul i64 %i.az, %i.oc
  %i.oe = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.of = getelementptr i8, ptr %i.bb, i64 %i.od
  %i.og = getelementptr i8, ptr %i.of, i64 %i.oe
  %scevgep341 = getelementptr i8, ptr %i.og, i64 -2 ; 4 uses
  %i.oh = add nsw i64 %i.ob, 16
  %i.oi = mul i64 %i.az, %i.oh
  %i.oj = getelementptr i8, ptr %i.bb, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 %i.oe
  %scevgep342 = getelementptr i8, ptr %i.ok, i64 -2 ; 4 uses
  %i.ol = icmp ult ptr %scevgep341, %scevgep342
  %umin = select i1 %i.ol, ptr %scevgep341, ptr %scevgep342
  %i.om = icmp ugt ptr %scevgep341, %scevgep342
  %umax = select i1 %i.om, ptr %scevgep341, ptr %scevgep342
  %scevgep343 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep339, %scevgep343
  %bound1 = icmp ult ptr %umin, %scevgep340
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader379, label %vector.ph346

vector.ph346:                                     ; preds = %vector.memcheck
  %n.vec347 = and i64 %i.ng, -8                   ; 3 uses
  %i.on = add nsw i64 %n.vec347, 8
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next350, %vector.body348 ] ; 9 uses
  %i.oo = add nuw i64 %index349, 8                ; 2 uses
  %i.op = add i64 %index349, 9
  %i.oq = add i64 %index349, 10
  %i.or = add i64 %index349, 11
  %i.os = add i64 %index349, 12
  %i.ot = add i64 %index349, 13
  %i.ou = add i64 %index349, 14
  %i.ov = add i64 %index349, 15
  %i.ow = mul nuw nsw i64 %i.az, %i.oo
  %i.ox = mul nuw nsw i64 %i.az, %i.op
  %i.oy = mul nuw nsw i64 %i.az, %i.oq
  %i.oz = mul nuw nsw i64 %i.az, %i.or
  %i.pa = mul nuw nsw i64 %i.az, %i.os
  %i.pb = mul nuw nsw i64 %i.az, %i.ot
  %i.pc = mul nuw nsw i64 %i.az, %i.ou
  %i.pd = mul nuw nsw i64 %i.az, %i.ov
  %i.pe = getelementptr [2 x i8], ptr %i.bg, i64 %i.ow
  %i.pf = getelementptr [2 x i8], ptr %i.bg, i64 %i.ox
  %i.pg = getelementptr [2 x i8], ptr %i.bg, i64 %i.oy
  %i.ph = getelementptr [2 x i8], ptr %i.bg, i64 %i.oz
  %i.pi = getelementptr [2 x i8], ptr %i.bg, i64 %i.pa
  %i.pj = getelementptr [2 x i8], ptr %i.bg, i64 %i.pb
  %i.pk = getelementptr [2 x i8], ptr %i.bg, i64 %i.pc
  %i.pl = getelementptr [2 x i8], ptr %i.bg, i64 %i.pd
  %i.pm = getelementptr i8, ptr %i.pe, i64 -2
  %i.pn = getelementptr i8, ptr %i.pf, i64 -2
  %i.po = getelementptr i8, ptr %i.pg, i64 -2
  %i.pp = getelementptr i8, ptr %i.ph, i64 -2
  %i.pq = getelementptr i8, ptr %i.pi, i64 -2
  %i.pr = getelementptr i8, ptr %i.pj, i64 -2
  %i.ps = getelementptr i8, ptr %i.pk, i64 -2
  %i.pt = getelementptr i8, ptr %i.pl, i64 -2
  %i.pu = load i16, ptr %i.pm, align 2, !tbaa !82, !alias.scope !250
  %i.pv = load i16, ptr %i.pn, align 2, !tbaa !82, !alias.scope !250
  %i.pw = load i16, ptr %i.po, align 2, !tbaa !82, !alias.scope !250
  %i.px = load i16, ptr %i.pp, align 2, !tbaa !82, !alias.scope !250
  %i.py = load i16, ptr %i.pq, align 2, !tbaa !82, !alias.scope !250
  %i.pz = load i16, ptr %i.pr, align 2, !tbaa !82, !alias.scope !250
  %i.qa = load i16, ptr %i.ps, align 2, !tbaa !82, !alias.scope !250
  %i.qb = load i16, ptr %i.pt, align 2, !tbaa !82, !alias.scope !250
  %i.qc = insertelement <8 x i16> poison, i16 %i.pu, i64 0
  %i.qd = insertelement <8 x i16> %i.qc, i16 %i.pv, i64 1
  %i.qe = insertelement <8 x i16> %i.qd, i16 %i.pw, i64 2
  %i.qf = insertelement <8 x i16> %i.qe, i16 %i.px, i64 3
  %i.qg = insertelement <8 x i16> %i.qf, i16 %i.py, i64 4
  %i.qh = insertelement <8 x i16> %i.qg, i16 %i.pz, i64 5
  %i.qi = insertelement <8 x i16> %i.qh, i16 %i.qa, i64 6
  %i.qj = insertelement <8 x i16> %i.qi, i16 %i.qb, i64 7
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.oo
  store <8 x i16> %i.qj, ptr %i.qk, align 2, !tbaa !82, !alias.scope !251, !noalias !250
  %index.next350 = add nuw i64 %index349, 8       ; 2 uses
  %i.ql = icmp eq i64 %index.next350, %n.vec347
  br i1 %i.ql, label %middle.block351, label %vector.body348, !llvm.loop !245

middle.block351:                                  ; preds = %vector.body348
  %cmp.n352 = icmp eq i64 %i.ng, %n.vec347
  br i1 %cmp.n352, label %._crit_edge74, label %.lr.ph73.preheader379

.lr.ph73.preheader379:                            ; preds = %vector.memcheck, %vector.scevcheck338, %.lr.ph73.preheader, %middle.block351
  %indvars.iv147.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %vector.scevcheck338 ], [ 8, %.lr.ph73.preheader ], [ %i.on, %middle.block351 ] ; 4 uses
  %i.qm = add nuw nsw i64 %i.nf, 1
  %i.qn = sub nsw i64 %i.qm, %indvars.iv147.ph
  %i.qo = sub nsw i64 %i.nf, %indvars.iv147.ph
  %xtraiter = and i64 %i.qn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader379, %.lr.ph73.prol
  %indvars.iv147.prol = phi i64 [ %indvars.iv.next148.prol, %.lr.ph73.prol ], [ %indvars.iv147.ph, %.lr.ph73.preheader379 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader379 ]
  %i.qp = mul nuw nsw i64 %i.az, %indvars.iv147.prol
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147.prol
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !82
  %indvars.iv.next148.prol = add nuw nsw i64 %indvars.iv147.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !246

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader379
  %indvars.iv147.unr = phi i64 [ %indvars.iv147.ph, %.lr.ph73.preheader379 ], [ %indvars.iv.next148.prol, %.lr.ph73.prol ]
  %i.qu = icmp ult i64 %i.qo, 3
  br i1 %i.qu, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.3, %.lr.ph73 ], [ %indvars.iv147.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.qv = mul nuw nsw i64 %i.az, %indvars.iv147
  %i.qw = getelementptr [2 x i8], ptr %i.bg, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 -2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !82
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !82
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.ra = mul nuw nsw i64 %i.az, %indvars.iv.next148
  %i.rb = getelementptr [2 x i8], ptr %i.bg, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.rb, i64 -2
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !82
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148
  store i16 %i.rd, ptr %i.re, align 2, !tbaa !82
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %i.rf = mul nuw nsw i64 %i.az, %indvars.iv.next148.1
  %i.rg = getelementptr [2 x i8], ptr %i.bg, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -2
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !82
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.1
  store i16 %i.ri, ptr %i.rj, align 2, !tbaa !82
  %indvars.iv.next148.2 = add nuw nsw i64 %indvars.iv147, 3 ; 2 uses
  %i.rk = mul nuw nsw i64 %i.az, %indvars.iv.next148.2
  %i.rl = getelementptr [2 x i8], ptr %i.bg, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rl, i64 -2
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !82
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.2
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !82
  %indvars.iv.next148.3 = add nuw nsw i64 %indvars.iv147, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next148.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !247

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block351
  %i.rp = icmp samesign ult i32 %i.db, 8
  br i1 %i.rp, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn296 = sext i32 %i.nd to i64
  %.pn295 = mul nsw i64 %i.az, %.pn296
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn295
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.rq = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rr = sub nsw i32 8, %i.db                    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.rt = sext i32 %i.db to i64
  %i.ru = getelementptr inbounds [2 x i8], ptr %i.rs, i64 %i.rt ; 2 uses
  %i.rv = zext nneg i32 %i.rr to i64              ; 2 uses
  %i.rw = call i64 @llvm.umax.i64(i64 %i.rv, i64 4)
  %i.rx = add nsw i64 %i.rw, -1
  %i.ry = lshr i64 %i.rx, 2
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %min.iters.check355 = icmp ult i32 %i.rr, 13
  br i1 %min.iters.check355, label %scalar.ph354.preheader, label %vector.ph356

vector.ph356:                                     ; preds = %.lr.ph77
  %n.vec357 = and i64 %i.rz, 9223372036854775804  ; 3 uses
  %i.sa = shl i64 %n.vec357, 2
  %broadcast.splatinsert358 = insertelement <2 x i64> poison, i64 %i.rq, i64 0
  %broadcast.splat359 = shufflevector <2 x i64> %broadcast.splatinsert358, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph356
  %index361 = phi i64 [ 0, %vector.ph356 ], [ %index.next362, %vector.body360 ] ; 2 uses
  %.idx367 = shl nuw i64 %index361, 3
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx367 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store <2 x i64> %broadcast.splat359, ptr %i.sb, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat359, ptr %i.sc, align 2, !tbaa !78
  %index.next362 = add nuw i64 %index361, 4       ; 2 uses
  %i.sd = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.sd, label %middle.block363, label %vector.body360, !llvm.loop !248

middle.block363:                                  ; preds = %vector.body360
  %cmp.n364 = icmp eq i64 %i.rz, %n.vec357
  br i1 %cmp.n364, label %.loopexit43, label %scalar.ph354.preheader

scalar.ph354.preheader:                           ; preds = %.lr.ph77, %middle.block363
  %indvars.iv150.ph = phi i64 [ 0, %.lr.ph77 ], [ %i.sa, %middle.block363 ]
  br label %scalar.ph354

scalar.ph354:                                     ; preds = %scalar.ph354.preheader, %scalar.ph354
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %scalar.ph354 ], [ %indvars.iv150.ph, %scalar.ph354.preheader ] ; 2 uses
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %indvars.iv150
  store i64 %i.rq, ptr %i.se, align 2, !tbaa !78
end_hunk_1
begin_hunk_2_@intra_pred_4_9:bb.a
bb.q:                                             ; preds = %._crit_edge66, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge66 ], [ %i.cb, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge66 ], [ %i.cd, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge66 ], [ %i.cf, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge66 ], [ %i.ch, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge66 ], [ %i.cu, %bb.g ] ; 5 uses
  %i.kp = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kq = xor i64 %i.az, -1
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ks, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ks, ptr %i.c, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kt = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ku = sub nsw i64 0, %i.az
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.bl, ptr noundef nonnull align 2 dereferenceable(32) %i.kv, i64 32, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit47

bb.v:                                             ; preds = %bb.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 2 uses
  %i.kx = sub nsw i64 0, %i.az
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.kw, ptr noundef nonnull align 2 dereferenceable(32) %i.kz, i64 32, i1 false)
  %i.la = add nsw i32 %i.dj, 15
  %i.lb = sext i32 %i.la to i64
  %i.lc = sub nsw i64 %i.lb, %i.az
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !82
  %i.lf = zext i16 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, 281479271743489      ; 2 uses
  %i.lh = icmp slt i32 %i.dj, 16
  br i1 %i.lh, label %.lr.ph70, label %.loopexit47

.lr.ph70:                                         ; preds = %bb.v
  %i.li = sub nsw i32 16, %i.dj                   ; 2 uses
  %i.lj = sext i32 %i.dj to i64
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.lj ; 2 uses
  %i.ll = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lm = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 4)
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check335 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check335, label %scalar.ph334.preheader, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph70
  %n.vec337 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec337, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next340, %vector.body338 ] ; 2 uses
  %.idx372 = shl nuw i64 %index339, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx372 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next340 = add nuw i64 %index339, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next340, %n.vec337
  br i1 %i.lt, label %middle.block341, label %vector.body338, !llvm.loop !256

middle.block341:                                  ; preds = %vector.body338
  %cmp.n342 = icmp eq i64 %i.lp, %n.vec337
  br i1 %cmp.n342, label %.loopexit47, label %scalar.ph334.preheader

scalar.ph334.preheader:                           ; preds = %.lr.ph70, %middle.block341
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph70 ], [ %i.lq, %middle.block341 ]
  br label %scalar.ph334

scalar.ph334:                                     ; preds = %scalar.ph334.preheader, %scalar.ph334
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph334 ], [ %indvars.iv141.ph, %scalar.ph334.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv141
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next142, %i.ll
  br i1 %i.lv, label %scalar.ph334, label %.loopexit47, !llvm.loop !257

.loopexit47:                                      ; preds = %scalar.ph334, %middle.block341, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lw, label %.preheader45.preheader, label %.loopexit46

.preheader45.preheader:                           ; preds = %.loopexit47
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx256 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx256
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx257 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx257
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx258 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx259 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx260 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx261 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx262 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx263 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx264 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx265 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx266 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx266
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx267 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx267
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.oi = icmp sgt i32 %i.db, 0
  %i.oj = add i32 %i.db, 15                       ; 3 uses
  br i1 %i.oi, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oj, i32 16) ; 4 uses
  %i.ok = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ok to i64
  %i.ol = zext nneg i32 %smax to i64              ; 3 uses
  %i.om = add nsw i64 %i.ol, -15                  ; 2 uses
  %min.iters.check351 = icmp slt i32 %i.oj, 143
  br i1 %min.iters.check351, label %.lr.ph73.preheader385, label %vector.scevcheck344

vector.scevcheck344:                              ; preds = %.lr.ph73.preheader
  %i.on = zext nneg i32 %smax to i64
  %i.oo = add nsw i64 %i.on, -16
  %i.op = and i64 %i.ay, -2
  %i.oq = mul i64 %i.az, -2
  %i.or = shl nsw i64 %i.be, 1
  %i.os = add nsw i64 %i.or, 32
  %i.ot = mul i64 %i.az, %i.os
  %i.ou = shl nsw i64 %i.bc, 1
  %i.ov = getelementptr i8, ptr %i.bb, i64 %i.ot
  %i.ow = getelementptr i8, ptr %i.ov, i64 %i.ou
  %scevgep = getelementptr i8, ptr %i.ow, i64 -2  ; 4 uses
  %i.ox = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.oy = select i1 %i.ox, i64 %i.oq, i64 %i.op
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.oy, i64 %i.oo) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.oz = sub i64 0, %mul.result
  %i.pa = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.pb = getelementptr i8, ptr %scevgep, i64 %i.oz
  %i.pc = icmp ult ptr %i.pa, %scevgep
  %i.pd = icmp ugt ptr %i.pb, %scevgep
  %i.pe = select i1 %i.ox, i1 %i.pd, i1 %i.pc
  %i.pf = or i1 %i.pe, %mul.overflow
  br i1 %i.pf, label %.lr.ph73.preheader385, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck344
  %scevgep345 = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.pg = getelementptr i8, ptr %i.a, i64 %6
  %scevgep346 = getelementptr i8, ptr %i.pg, i64 4
  %i.ph = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.pi = add nsw i64 %i.ph, %6
  %i.pj = mul i64 %i.az, %i.pi
  %i.pk = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.pl = getelementptr i8, ptr %i.bb, i64 %i.pj
  %i.pm = getelementptr i8, ptr %i.pl, i64 %i.pk
  %scevgep347 = getelementptr i8, ptr %i.pm, i64 -2 ; 4 uses
  %i.pn = add nsw i64 %i.ph, 32
  %i.po = mul i64 %i.az, %i.pn
  %i.pp = getelementptr i8, ptr %i.bb, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.pk
  %scevgep348 = getelementptr i8, ptr %i.pq, i64 -2 ; 4 uses
  %i.pr = icmp ult ptr %scevgep347, %scevgep348
  %umin = select i1 %i.pr, ptr %scevgep347, ptr %scevgep348
  %i.ps = icmp ugt ptr %scevgep347, %scevgep348
  %umax = select i1 %i.ps, ptr %scevgep347, ptr %scevgep348
  %scevgep349 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep345, %scevgep349
  %bound1 = icmp ult ptr %umin, %scevgep346
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader385, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck
  %n.vec353 = and i64 %i.om, -8                   ; 3 uses
  %i.pt = add nsw i64 %n.vec353, 16
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next356, %vector.body354 ] ; 9 uses
  %i.pu = add nuw i64 %index355, 16               ; 2 uses
  %i.pv = add i64 %index355, 17
  %i.pw = add i64 %index355, 18
  %i.px = add i64 %index355, 19
  %i.py = add i64 %index355, 20
  %i.pz = add i64 %index355, 21
  %i.qa = add i64 %index355, 22
  %i.qb = add i64 %index355, 23
  %i.qc = mul nuw nsw i64 %i.az, %i.pu
  %i.qd = mul nuw nsw i64 %i.az, %i.pv
  %i.qe = mul nuw nsw i64 %i.az, %i.pw
  %i.qf = mul nuw nsw i64 %i.az, %i.px
  %i.qg = mul nuw nsw i64 %i.az, %i.py
  %i.qh = mul nuw nsw i64 %i.az, %i.pz
  %i.qi = mul nuw nsw i64 %i.az, %i.qa
  %i.qj = mul nuw nsw i64 %i.az, %i.qb
  %i.qk = getelementptr [2 x i8], ptr %i.bg, i64 %i.qc
  %i.ql = getelementptr [2 x i8], ptr %i.bg, i64 %i.qd
  %i.qm = getelementptr [2 x i8], ptr %i.bg, i64 %i.qe
  %i.qn = getelementptr [2 x i8], ptr %i.bg, i64 %i.qf
  %i.qo = getelementptr [2 x i8], ptr %i.bg, i64 %i.qg
  %i.qp = getelementptr [2 x i8], ptr %i.bg, i64 %i.qh
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qi
  %i.qr = getelementptr [2 x i8], ptr %i.bg, i64 %i.qj
  %i.qs = getelementptr i8, ptr %i.qk, i64 -2
  %i.qt = getelementptr i8, ptr %i.ql, i64 -2
  %i.qu = getelementptr i8, ptr %i.qm, i64 -2
  %i.qv = getelementptr i8, ptr %i.qn, i64 -2
  %i.qw = getelementptr i8, ptr %i.qo, i64 -2
  %i.qx = getelementptr i8, ptr %i.qp, i64 -2
  %i.qy = getelementptr i8, ptr %i.qq, i64 -2
  %i.qz = getelementptr i8, ptr %i.qr, i64 -2
  %i.ra = load i16, ptr %i.qs, align 2, !tbaa !82, !alias.scope !266
  %i.rb = load i16, ptr %i.qt, align 2, !tbaa !82, !alias.scope !266
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !82, !alias.scope !266
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !82, !alias.scope !266
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !82, !alias.scope !266
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !82, !alias.scope !266
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !82, !alias.scope !266
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !82, !alias.scope !266
  %i.ri = insertelement <8 x i16> poison, i16 %i.ra, i64 0
  %i.rj = insertelement <8 x i16> %i.ri, i16 %i.rb, i64 1
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 2
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 3
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 4
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 5
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 6
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 7
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.pu
  store <8 x i16> %i.rp, ptr %i.rq, align 2, !tbaa !82, !alias.scope !267, !noalias !266
  %index.next356 = add nuw i64 %index355, 8       ; 2 uses
  %i.rr = icmp eq i64 %index.next356, %n.vec353
  br i1 %i.rr, label %middle.block357, label %vector.body354, !llvm.loop !261

middle.block357:                                  ; preds = %vector.body354
  %cmp.n358 = icmp eq i64 %i.om, %n.vec353
  br i1 %cmp.n358, label %._crit_edge74, label %.lr.ph73.preheader385

.lr.ph73.preheader385:                            ; preds = %vector.memcheck, %vector.scevcheck344, %.lr.ph73.preheader, %middle.block357
  %indvars.iv147.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %vector.scevcheck344 ], [ 16, %.lr.ph73.preheader ], [ %i.pt, %middle.block357 ] ; 4 uses
  %i.rs = add nuw nsw i64 %i.ol, 1
  %i.rt = sub nsw i64 %i.rs, %indvars.iv147.ph
  %i.ru = sub nsw i64 %i.ol, %indvars.iv147.ph
  %xtraiter = and i64 %i.rt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader385, %.lr.ph73.prol
  %indvars.iv147.prol = phi i64 [ %indvars.iv.next148.prol, %.lr.ph73.prol ], [ %indvars.iv147.ph, %.lr.ph73.preheader385 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader385 ]
  %i.rv = mul nuw nsw i64 %i.az, %indvars.iv147.prol
  %i.rw = getelementptr [2 x i8], ptr %i.bg, i64 %i.rv
  %i.rx = getelementptr i8, ptr %i.rw, i64 -2
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !82
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147.prol
  store i16 %i.ry, ptr %i.rz, align 2, !tbaa !82
  %indvars.iv.next148.prol = add nuw nsw i64 %indvars.iv147.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !262

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader385
  %indvars.iv147.unr = phi i64 [ %indvars.iv147.ph, %.lr.ph73.preheader385 ], [ %indvars.iv.next148.prol, %.lr.ph73.prol ]
  %i.sa = icmp ult i64 %i.ru, 3
  br i1 %i.sa, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.3, %.lr.ph73 ], [ %indvars.iv147.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.sb = mul nuw nsw i64 %i.az, %indvars.iv147
  %i.sc = getelementptr [2 x i8], ptr %i.bg, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 -2
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !82
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !82
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.sg = mul nuw nsw i64 %i.az, %indvars.iv.next148
  %i.sh = getelementptr [2 x i8], ptr %i.bg, i64 %i.sg
  %i.si = getelementptr i8, ptr %i.sh, i64 -2
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !82
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148
  store i16 %i.sj, ptr %i.sk, align 2, !tbaa !82
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %i.sl = mul nuw nsw i64 %i.az, %indvars.iv.next148.1
  %i.sm = getelementptr [2 x i8], ptr %i.bg, i64 %i.sl
  %i.sn = getelementptr i8, ptr %i.sm, i64 -2
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !82
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.1
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !82
  %indvars.iv.next148.2 = add nuw nsw i64 %indvars.iv147, 3 ; 2 uses
  %i.sq = mul nuw nsw i64 %i.az, %indvars.iv.next148.2
  %i.sr = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.ss = getelementptr i8, ptr %i.sr, i64 -2
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !82
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.2
  store i16 %i.st, ptr %i.su, align 2, !tbaa !82
  %indvars.iv.next148.3 = add nuw nsw i64 %indvars.iv147, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next148.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !263

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block357
  %i.sv = icmp samesign ult i32 %i.db, 16
  br i1 %i.sv, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn302 = sext i32 %i.oj to i64
  %.pn301 = mul nsw i64 %i.az, %.pn302
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn301
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.sw = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.sx = sub nsw i32 16, %i.db                   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.sz = sext i32 %i.db to i64
  %i.ta = getelementptr inbounds [2 x i8], ptr %i.sy, i64 %i.sz ; 2 uses
  %i.tb = zext nneg i32 %i.sx to i64              ; 2 uses
  %i.tc = call i64 @llvm.umax.i64(i64 %i.tb, i64 4)
  %i.td = add nsw i64 %i.tc, -1
  %i.te = lshr i64 %i.td, 2
  %i.tf = add nuw nsw i64 %i.te, 1                ; 2 uses
  %min.iters.check361 = icmp ult i32 %i.sx, 13
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %.lr.ph77
  %n.vec363 = and i64 %i.tf, 9223372036854775804  ; 3 uses
  %i.tg = shl i64 %n.vec363, 2
  %broadcast.splatinsert364 = insertelement <2 x i64> poison, i64 %i.sw, i64 0
  %broadcast.splat365 = shufflevector <2 x i64> %broadcast.splatinsert364, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph362
  %index367 = phi i64 [ 0, %vector.ph362 ], [ %index.next368, %vector.body366 ] ; 2 uses
  %.idx373 = shl nuw i64 %index367, 3
  %i.th = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.idx373 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x i64> %broadcast.splat365, ptr %i.th, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat365, ptr %i.ti, align 2, !tbaa !78
  %index.next368 = add nuw i64 %index367, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.tj, label %middle.block369, label %vector.body366, !llvm.loop !264

middle.block369:                                  ; preds = %vector.body366
  %cmp.n370 = icmp eq i64 %i.tf, %n.vec363
  br i1 %cmp.n370, label %.loopexit43, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %.lr.ph77, %middle.block369
  %indvars.iv150.ph = phi i64 [ 0, %.lr.ph77 ], [ %i.tg, %middle.block369 ]
  br label %scalar.ph360

scalar.ph360:                                     ; preds = %scalar.ph360.preheader, %scalar.ph360
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %scalar.ph360 ], [ %indvars.iv150.ph, %scalar.ph360.preheader ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.ta, i64 %indvars.iv150
  store i64 %i.sw, ptr %i.tk, align 2, !tbaa !78
end_hunk_2
begin_hunk_3_@intra_pred_5_9:bb.a
.preheader46.preheader:                           ; preds = %.loopexit48
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx258 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx259 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx260 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx261 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx262 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx263 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx264 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx265 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx266 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx266
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx267 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx267
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx268 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx269 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  %.idx270 = shl i64 %i.az, 5
  %i.oi = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.oj = getelementptr i8, ptr %i.oi, i64 -2
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !82
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !82
  %.idx271 = mul i64 %i.az, 34
  %i.om = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.on = getelementptr i8, ptr %i.om, i64 -2
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i16 %i.oo, ptr %i.op, align 4, !tbaa !82
  %.idx272 = mul i64 %i.az, 36
  %i.oq = getelementptr i8, ptr %i.bg, i64 %.idx272
  %i.or = getelementptr i8, ptr %i.oq, i64 -2
  %i.os = load i16, ptr %i.or, align 2, !tbaa !82
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %i.os, ptr %i.ot, align 2, !tbaa !82
  %.idx273 = mul i64 %i.az, 38
  %i.ou = getelementptr i8, ptr %i.bg, i64 %.idx273
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !82
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i16 %i.ow, ptr %i.ox, align 8, !tbaa !82
  %.idx274 = mul i64 %i.az, 40
  %i.oy = getelementptr i8, ptr %i.bg, i64 %.idx274
  %i.oz = getelementptr i8, ptr %i.oy, i64 -2
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !82
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !82
  %.idx275 = mul i64 %i.az, 42
  %i.pc = getelementptr i8, ptr %i.bg, i64 %.idx275
  %i.pd = getelementptr i8, ptr %i.pc, i64 -2
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !82
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !82
  %.idx276 = mul i64 %i.az, 44
  %i.pg = getelementptr i8, ptr %i.bg, i64 %.idx276
  %i.ph = getelementptr i8, ptr %i.pg, i64 -2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !82
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !82
  %.idx277 = mul i64 %i.az, 46
  %i.pk = getelementptr i8, ptr %i.bg, i64 %.idx277
  %i.pl = getelementptr i8, ptr %i.pk, i64 -2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i16 %i.pm, ptr %i.pn, align 16, !tbaa !82
  %.idx278 = mul i64 %i.az, 48
  %i.po = getelementptr i8, ptr %i.bg, i64 %.idx278
  %i.pp = getelementptr i8, ptr %i.po, i64 -2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !82
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !82
  %.idx279 = mul i64 %i.az, 50
  %i.ps = getelementptr i8, ptr %i.bg, i64 %.idx279
  %i.pt = getelementptr i8, ptr %i.ps, i64 -2
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !82
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i16 %i.pu, ptr %i.pv, align 4, !tbaa !82
  %.idx280 = mul i64 %i.az, 52
  %i.pw = getelementptr i8, ptr %i.bg, i64 %.idx280
  %i.px = getelementptr i8, ptr %i.pw, i64 -2
  %i.py = load i16, ptr %i.px, align 2, !tbaa !82
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !82
  %.idx281 = mul i64 %i.az, 54
  %i.qa = getelementptr i8, ptr %i.bg, i64 %.idx281
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.qc, ptr %i.qd, align 8, !tbaa !82
  %.idx282 = mul i64 %i.az, 56
  %i.qe = getelementptr i8, ptr %i.bg, i64 %.idx282
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %.idx283 = mul i64 %i.az, 58
  %i.qi = getelementptr i8, ptr %i.bg, i64 %.idx283
  %i.qj = getelementptr i8, ptr %i.qi, i64 -2
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 %i.qk, ptr %i.ql, align 4, !tbaa !82
  %.idx284 = mul i64 %i.az, 60
  %i.qm = getelementptr i8, ptr %i.bg, i64 %.idx284
  %i.qn = getelementptr i8, ptr %i.qm, i64 -2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !82
  %.idx285 = mul i64 %i.az, 62
  %i.qq = getelementptr i8, ptr %i.bg, i64 %.idx285
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 %i.qs, ptr %i.qt, align 16, !tbaa !82
  br label %.loopexit47

.loopexit47:                                      ; preds = %.preheader46.preheader, %.loopexit48
  br i1 %.2738.i, label %.preheader45, label %.loopexit44

.preheader45:                                     ; preds = %.loopexit47
  %i.qu = icmp sgt i32 %i.db, 0
  %i.qv = add i32 %i.db, 31                       ; 3 uses
  br i1 %i.qu, label %.lr.ph74.preheader, label %.lr.ph78

.lr.ph74.preheader:                               ; preds = %.preheader45
  %smax = tail call i32 @llvm.smax.i32(i32 %i.qv, i32 32) ; 4 uses
  %i.qw = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.qw to i64
  %i.qx = zext nneg i32 %smax to i64              ; 3 uses
  %i.qy = add nsw i64 %i.qx, -31                  ; 2 uses
  %min.iters.check393 = icmp slt i32 %i.qv, 159
  br i1 %min.iters.check393, label %.lr.ph74.preheader427, label %vector.scevcheck386

vector.scevcheck386:                              ; preds = %.lr.ph74.preheader
  %i.qz = zext nneg i32 %smax to i64
  %i.ra = add nsw i64 %i.qz, -32
  %i.rb = and i64 %i.ay, -2
  %i.rc = mul i64 %i.az, -2
  %i.rd = shl nsw i64 %i.be, 1
  %i.re = add nsw i64 %i.rd, 64
  %i.rf = mul i64 %i.az, %i.re
  %i.rg = shl nsw i64 %i.bc, 1
  %i.rh = getelementptr i8, ptr %i.bb, i64 %i.rf
  %i.ri = getelementptr i8, ptr %i.rh, i64 %i.rg
  %scevgep = getelementptr i8, ptr %i.ri, i64 -2  ; 4 uses
  %i.rj = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.rk = select i1 %i.rj, i64 %i.rc, i64 %i.rb
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.rk, i64 %i.ra) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.rl = sub i64 0, %mul.result
  %i.rm = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.rn = getelementptr i8, ptr %scevgep, i64 %i.rl
  %i.ro = icmp ult ptr %i.rm, %scevgep
  %i.rp = icmp ugt ptr %i.rn, %scevgep
  %i.rq = select i1 %i.rj, i1 %i.rp, i1 %i.ro
  %i.rr = or i1 %i.rq, %mul.overflow
  br i1 %i.rr, label %.lr.ph74.preheader427, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck386
  %scevgep387 = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.rs = getelementptr i8, ptr %i.a, i64 %6
  %scevgep388 = getelementptr i8, ptr %i.rs, i64 4
  %i.rt = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.ru = add nsw i64 %i.rt, %6
  %i.rv = mul i64 %i.az, %i.ru
  %i.rw = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.rx = getelementptr i8, ptr %i.bb, i64 %i.rv
  %i.ry = getelementptr i8, ptr %i.rx, i64 %i.rw
  %scevgep389 = getelementptr i8, ptr %i.ry, i64 -2 ; 4 uses
  %i.rz = add nsw i64 %i.rt, 64
  %i.sa = mul i64 %i.az, %i.rz
  %i.sb = getelementptr i8, ptr %i.bb, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 %i.rw
  %scevgep390 = getelementptr i8, ptr %i.sc, i64 -2 ; 4 uses
  %i.sd = icmp ult ptr %scevgep389, %scevgep390
  %umin = select i1 %i.sd, ptr %scevgep389, ptr %scevgep390
  %i.se = icmp ugt ptr %scevgep389, %scevgep390
  %umax = select i1 %i.se, ptr %scevgep389, ptr %scevgep390
  %scevgep391 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep387, %scevgep391
  %bound1 = icmp ult ptr %umin, %scevgep388
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph74.preheader427, label %vector.ph394

vector.ph394:                                     ; preds = %vector.memcheck
  %n.vec395 = and i64 %i.qy, -8                   ; 3 uses
  %i.sf = add nsw i64 %n.vec395, 32
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph394
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next398, %vector.body396 ] ; 9 uses
  %i.sg = add nuw i64 %index397, 32               ; 2 uses
  %i.sh = add i64 %index397, 33
  %i.si = add i64 %index397, 34
  %i.sj = add i64 %index397, 35
  %i.sk = add i64 %index397, 36
  %i.sl = add i64 %index397, 37
  %i.sm = add i64 %index397, 38
  %i.sn = add i64 %index397, 39
  %i.so = mul nuw nsw i64 %i.az, %i.sg
  %i.sp = mul nuw nsw i64 %i.az, %i.sh
  %i.sq = mul nuw nsw i64 %i.az, %i.si
  %i.sr = mul nuw nsw i64 %i.az, %i.sj
  %i.ss = mul nuw nsw i64 %i.az, %i.sk
  %i.st = mul nuw nsw i64 %i.az, %i.sl
  %i.su = mul nuw nsw i64 %i.az, %i.sm
  %i.sv = mul nuw nsw i64 %i.az, %i.sn
  %i.sw = getelementptr [2 x i8], ptr %i.bg, i64 %i.so
  %i.sx = getelementptr [2 x i8], ptr %i.bg, i64 %i.sp
  %i.sy = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.sz = getelementptr [2 x i8], ptr %i.bg, i64 %i.sr
  %i.ta = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.tb = getelementptr [2 x i8], ptr %i.bg, i64 %i.st
  %i.tc = getelementptr [2 x i8], ptr %i.bg, i64 %i.su
  %i.td = getelementptr [2 x i8], ptr %i.bg, i64 %i.sv
  %i.te = getelementptr i8, ptr %i.sw, i64 -2
  %i.tf = getelementptr i8, ptr %i.sx, i64 -2
  %i.tg = getelementptr i8, ptr %i.sy, i64 -2
  %i.th = getelementptr i8, ptr %i.sz, i64 -2
  %i.ti = getelementptr i8, ptr %i.ta, i64 -2
  %i.tj = getelementptr i8, ptr %i.tb, i64 -2
  %i.tk = getelementptr i8, ptr %i.tc, i64 -2
  %i.tl = getelementptr i8, ptr %i.td, i64 -2
  %i.tm = load i16, ptr %i.te, align 2, !tbaa !82, !alias.scope !282
  %i.tn = load i16, ptr %i.tf, align 2, !tbaa !82, !alias.scope !282
  %i.to = load i16, ptr %i.tg, align 2, !tbaa !82, !alias.scope !282
  %i.tp = load i16, ptr %i.th, align 2, !tbaa !82, !alias.scope !282
  %i.tq = load i16, ptr %i.ti, align 2, !tbaa !82, !alias.scope !282
  %i.tr = load i16, ptr %i.tj, align 2, !tbaa !82, !alias.scope !282
  %i.ts = load i16, ptr %i.tk, align 2, !tbaa !82, !alias.scope !282
  %i.tt = load i16, ptr %i.tl, align 2, !tbaa !82, !alias.scope !282
  %i.tu = insertelement <8 x i16> poison, i16 %i.tm, i64 0
  %i.tv = insertelement <8 x i16> %i.tu, i16 %i.tn, i64 1
  %i.tw = insertelement <8 x i16> %i.tv, i16 %i.to, i64 2
  %i.tx = insertelement <8 x i16> %i.tw, i16 %i.tp, i64 3
  %i.ty = insertelement <8 x i16> %i.tx, i16 %i.tq, i64 4
  %i.tz = insertelement <8 x i16> %i.ty, i16 %i.tr, i64 5
  %i.ua = insertelement <8 x i16> %i.tz, i16 %i.ts, i64 6
  %i.ub = insertelement <8 x i16> %i.ua, i16 %i.tt, i64 7
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.sg
  store <8 x i16> %i.ub, ptr %i.uc, align 2, !tbaa !82, !alias.scope !283, !noalias !282
  %index.next398 = add nuw i64 %index397, 8       ; 2 uses
  %i.ud = icmp eq i64 %index.next398, %n.vec395
  br i1 %i.ud, label %middle.block399, label %vector.body396, !llvm.loop !277

middle.block399:                                  ; preds = %vector.body396
  %cmp.n400 = icmp eq i64 %i.qy, %n.vec395
  br i1 %cmp.n400, label %._crit_edge75, label %.lr.ph74.preheader427

.lr.ph74.preheader427:                            ; preds = %vector.memcheck, %vector.scevcheck386, %.lr.ph74.preheader, %middle.block399
  %indvars.iv149.ph = phi i64 [ 32, %vector.memcheck ], [ 32, %vector.scevcheck386 ], [ 32, %.lr.ph74.preheader ], [ %i.sf, %middle.block399 ] ; 4 uses
  %i.ue = add nuw nsw i64 %i.qx, 1
  %i.uf = sub nsw i64 %i.ue, %indvars.iv149.ph
  %i.ug = sub nsw i64 %i.qx, %indvars.iv149.ph
  %xtraiter = and i64 %i.uf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader427, %.lr.ph74.prol
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %.lr.ph74.prol ], [ %indvars.iv149.ph, %.lr.ph74.preheader427 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader427 ]
  %i.uh = mul nuw nsw i64 %i.az, %indvars.iv149.prol
  %i.ui = getelementptr [2 x i8], ptr %i.bg, i64 %i.uh
  %i.uj = getelementptr i8, ptr %i.ui, i64 -2
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !82
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv149.prol
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !82
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !278

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader427
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %.lr.ph74.preheader427 ], [ %indvars.iv.next150.prol, %.lr.ph74.prol ]
  %i.um = icmp ult i64 %i.ug, 3
  br i1 %i.um, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.3, %.lr.ph74 ], [ %indvars.iv149.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.un = mul nuw nsw i64 %i.az, %indvars.iv149
  %i.uo = getelementptr [2 x i8], ptr %i.bg, i64 %i.un
  %i.up = getelementptr i8, ptr %i.uo, i64 -2
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !82
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv149
  store i16 %i.uq, ptr %i.ur, align 2, !tbaa !82
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.us = mul nuw nsw i64 %i.az, %indvars.iv.next150
  %i.ut = getelementptr [2 x i8], ptr %i.bg, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.ut, i64 -2
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !82
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next150
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !82
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %i.ux = mul nuw nsw i64 %i.az, %indvars.iv.next150.1
  %i.uy = getelementptr [2 x i8], ptr %i.bg, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 -2
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !82
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next150.1
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !82
  %indvars.iv.next150.2 = add nuw nsw i64 %indvars.iv149, 3 ; 2 uses
  %i.vc = mul nuw nsw i64 %i.az, %indvars.iv.next150.2
  %i.vd = getelementptr [2 x i8], ptr %i.bg, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 -2
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !82
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next150.2
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !82
  %indvars.iv.next150.3 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next150.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge75, label %.lr.ph74, !llvm.loop !279

._crit_edge75:                                    ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %middle.block399
  %i.vh = icmp samesign ult i32 %i.db, 32
  br i1 %i.vh, label %.lr.ph78, label %.loopexit44

.lr.ph78:                                         ; preds = %.preheader45, %._crit_edge75
  %.pn344 = sext i32 %i.qv to i64
  %.pn343 = mul nsw i64 %i.az, %.pn344
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn343
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.vi = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.vj = sub nsw i32 32, %i.db                   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.vl = sext i32 %i.db to i64
  %i.vm = getelementptr inbounds [2 x i8], ptr %i.vk, i64 %i.vl ; 2 uses
  %i.vn = zext nneg i32 %i.vj to i64              ; 2 uses
  %i.vo = call i64 @llvm.umax.i64(i64 %i.vn, i64 4)
  %i.vp = add nsw i64 %i.vo, -1
  %i.vq = lshr i64 %i.vp, 2
  %i.vr = add nuw nsw i64 %i.vq, 1                ; 2 uses
  %min.iters.check403 = icmp ult i32 %i.vj, 13
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %.lr.ph78
  %n.vec405 = and i64 %i.vr, 9223372036854775804  ; 3 uses
  %i.vs = shl i64 %n.vec405, 2
  %broadcast.splatinsert406 = insertelement <2 x i64> poison, i64 %i.vi, i64 0
  %broadcast.splat407 = shufflevector <2 x i64> %broadcast.splatinsert406, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next410, %vector.body408 ] ; 2 uses
  %.idx415 = shl nuw i64 %index409, 3
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx415 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store <2 x i64> %broadcast.splat407, ptr %i.vt, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat407, ptr %i.vu, align 2, !tbaa !78
  %index.next410 = add nuw i64 %index409, 4       ; 2 uses
  %i.vv = icmp eq i64 %index.next410, %n.vec405
  br i1 %i.vv, label %middle.block411, label %vector.body408, !llvm.loop !280

middle.block411:                                  ; preds = %vector.body408
  %cmp.n412 = icmp eq i64 %i.vr, %n.vec405
  br i1 %cmp.n412, label %.loopexit44, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %.lr.ph78, %middle.block411
  %indvars.iv152.ph = phi i64 [ 0, %.lr.ph78 ], [ %i.vs, %middle.block411 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %scalar.ph402 ], [ %indvars.iv152.ph, %scalar.ph402.preheader ] ; 2 uses
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.vm, i64 %indvars.iv152
  store i64 %i.vi, ptr %i.vw, align 2, !tbaa !78
end_hunk_3
begin_hunk_4_@intra_pred_2_10:bb.a
  %i.jd = mul nsw i32 %i.ja, %i.bg
  %i.je = add i32 %i.jd, %i.iw
  %i.jf = zext nneg i32 %.spec.select.i to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph54, %bb.n
  %indvars.iv131 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next132, %bb.n ] ; 2 uses
  %.0726.i52 = phi i32 [ 0, %.lr.ph54 ], [ %i.jo, %bb.n ]
  %i.jg = trunc nuw nsw i64 %indvars.iv131 to i32
  %i.jh = add i32 %i.je, %i.jg
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.jc, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 10
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !185
  %i.jm = icmp eq i8 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %i.jo = or i32 %.0726.i52, %i.jn                ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %i.jp = icmp samesign ult i64 %indvars.iv.next132, %i.jf
  br i1 %i.jp, label %bb.n, label %.loopexit42, !llvm.loop !29

.loopexit42:                                      ; preds = %bb.n, %bb.m, %bb.l
  %.1727.i = phi i32 [ %i.cd, %bb.l ], [ 0, %bb.m ], [ %i.jo, %bb.n ]
  %or.cond11.i = select i1 %i.cq, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge60

bb.o:                                             ; preds = %.loopexit42
  %i.jq = ashr i32 %i.dd, %i.dk                   ; 2 uses
  %i.jr = sub nsw i32 %i.bg, %i.jq
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.jr) ; 2 uses
  %i.js = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.js, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.o
  %i.jt = add nsw i32 %3, -1
  %i.ju = ashr i32 %i.jt, %i.dk
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !183
  %i.jx = mul nsw i32 %i.ju, %i.bg
  %i.jy = add i32 %i.jx, %i.jq
  %i.jz = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph59, %bb.p
  %indvars.iv134 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next135, %bb.p ] ; 2 uses
  %.0723.i57 = phi i32 [ 0, %.lr.ph59 ], [ %i.ki, %bb.p ]
  %i.ka = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.kb = add i32 %i.jy, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [12 x i8], ptr %i.jw, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 10
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !185
  %i.kg = icmp eq i8 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %i.ki = or i32 %.0723.i57, %i.kh                ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next135, %i.jz
  br i1 %i.kj, label %bb.p, label %._crit_edge60.loopexit, !llvm.loop !30

._crit_edge60.loopexit:                           ; preds = %bb.p
  %i.kk = icmp ne i32 %i.ki, 0
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %bb.o, %._crit_edge60.loopexit, %.loopexit42
  %.1724.i = phi i1 [ %i.cq, %.loopexit42 ], [ false, %bb.o ], [ %i.kk, %._crit_edge60.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bi, i8 -128, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bj, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.b, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge60, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge60 ], [ %i.bx, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge60 ], [ %i.bz, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge60 ], [ %i.cb, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge60 ], [ %i.cd, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge60 ], [ %i.cq, %bb.g ] ; 5 uses
  %i.kl = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.km = xor i64 %i.ax, -1
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ko, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ko, ptr %i.b, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kp = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kq = sub nsw i64 0, %i.ax
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.kq
  %i.ks = load i64, ptr %i.kr, align 2
  store i64 %i.ks, ptr %i.bj, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit41

bb.v:                                             ; preds = %bb.u
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.ku = sub nsw i64 0, %i.ax
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i64, ptr %i.kw, align 2
  store i64 %i.kx, ptr %i.kt, align 2
  %i.ky = add nsw i32 %i.df, 3
  %i.kz = sext i32 %i.ky to i64
  %i.la = sub nsw i64 %i.kz, %i.ax
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !82
  %i.ld = zext i16 %i.lc to i64
  %i.le = mul nuw i64 %i.ld, 281479271743489      ; 2 uses
  %i.lf = icmp slt i32 %i.df, 4
  br i1 %i.lf, label %.lr.ph64, label %.loopexit41

.lr.ph64:                                         ; preds = %bb.v
  %i.lg = sub nsw i32 4, %i.df                    ; 2 uses
  %i.lh = sext i32 %i.df to i64
  %i.li = getelementptr inbounds [2 x i8], ptr %i.kt, i64 %i.lh ; 2 uses
  %i.lj = zext nneg i32 %i.lg to i64              ; 2 uses
  %i.lk = tail call i64 @llvm.umax.i64(i64 %i.lj, i64 4)
  %i.ll = add nsw i64 %i.lk, -1
  %i.lm = lshr i64 %i.ll, 2
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 2 uses
  %min.iters.check292 = icmp ult i32 %i.lg, 13
  br i1 %min.iters.check292, label %scalar.ph291.preheader, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph64
  %n.vec294 = and i64 %i.ln, 9223372036854775804  ; 3 uses
  %i.lo = shl i64 %n.vec294, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next297, %vector.body295 ] ; 2 uses
  %.idx329 = shl nuw i64 %index296, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %.idx329 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lp, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.lq, align 2, !tbaa !78
  %index.next297 = add nuw i64 %index296, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next297, %n.vec294
  br i1 %i.lr, label %middle.block298, label %vector.body295, !llvm.loop !329

middle.block298:                                  ; preds = %vector.body295
  %cmp.n299 = icmp eq i64 %i.ln, %n.vec294
  br i1 %cmp.n299, label %.loopexit41, label %scalar.ph291.preheader

scalar.ph291.preheader:                           ; preds = %.lr.ph64, %middle.block298
  %indvars.iv137.ph = phi i64 [ 0, %.lr.ph64 ], [ %i.lo, %middle.block298 ]
  br label %scalar.ph291

scalar.ph291:                                     ; preds = %scalar.ph291.preheader, %scalar.ph291
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph291 ], [ %indvars.iv137.ph, %scalar.ph291.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv137
  store i64 %i.le, ptr %i.ls, align 2, !tbaa !78
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %i.lt = icmp samesign ult i64 %indvars.iv.next138, %i.lj
  br i1 %i.lt, label %scalar.ph291, label %.loopexit41, !llvm.loop !330

.loopexit41:                                      ; preds = %scalar.ph291, %middle.block298, %bb.v, %bb.u
  %i.lu = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lu, label %.preheader39.preheader, label %.loopexit40

.preheader39.preheader:                           ; preds = %.loopexit41
  %i.lv = getelementptr i8, ptr %i.be, i64 -2
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !82
  store i16 %i.lw, ptr %i.bi, align 2, !tbaa !82
  %i.lx = getelementptr [2 x i8], ptr %i.be, i64 %i.ax
  %i.ly = getelementptr i8, ptr %i.lx, i64 -2
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !82
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.lz, ptr %i.ma, align 4, !tbaa !82
  %i.mb = and i64 %i.aw, -2
  %i.mc = getelementptr [2 x i8], ptr %i.be, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 -2
  %i.me = load i16, ptr %i.md, align 2, !tbaa !82
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.me, ptr %i.mf, align 2, !tbaa !82
  %.idx = mul i64 %i.ax, 6
  %i.mg = getelementptr i8, ptr %i.be, i64 %.idx
  %i.mh = getelementptr i8, ptr %i.mg, i64 -2
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !82
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mi, ptr %i.mj, align 8, !tbaa !82
  br label %.loopexit40

.loopexit40:                                      ; preds = %.preheader39.preheader, %.loopexit41
  br i1 %.2738.i, label %.preheader38, label %.loopexit37

.preheader38:                                     ; preds = %.loopexit40
  %i.mk = icmp sgt i32 %i.cx, 0
  %i.ml = add i32 %i.cx, 3                        ; 3 uses
  br i1 %i.mk, label %.lr.ph67.preheader, label %.lr.ph71

.lr.ph67.preheader:                               ; preds = %.preheader38
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ml, i32 4) ; 4 uses
  %i.mm = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.mm to i64
  %i.mn = zext nneg i32 %smax to i64              ; 3 uses
  %i.mo = add nsw i64 %i.mn, -3                   ; 2 uses
  %min.iters.check308 = icmp slt i32 %i.ml, 131
  br i1 %min.iters.check308, label %.lr.ph67.preheader342, label %vector.scevcheck301

vector.scevcheck301:                              ; preds = %.lr.ph67.preheader
  %i.mp = zext nneg i32 %smax to i64
  %i.mq = add nsw i64 %i.mp, -4
  %i.mr = and i64 %i.aw, -2
  %i.ms = mul i64 %i.ax, -2
  %i.mt = shl nsw i64 %i.bc, 1
  %i.mu = add nsw i64 %i.mt, 8
  %i.mv = mul i64 %i.ax, %i.mu
  %i.mw = shl nsw i64 %i.ba, 1
  %i.mx = getelementptr i8, ptr %i.az, i64 %i.mv
  %i.my = getelementptr i8, ptr %i.mx, i64 %i.mw
  %scevgep = getelementptr i8, ptr %i.my, i64 -2  ; 4 uses
  %i.mz = icmp slt i32 %i.av, 0                   ; 2 uses
  %i.na = select i1 %i.mz, i64 %i.ms, i64 %i.mr
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.na, i64 %i.mq) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.nb = sub i64 0, %mul.result
  %i.nc = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.nd = getelementptr i8, ptr %scevgep, i64 %i.nb
  %i.ne = icmp ult ptr %i.nc, %scevgep
  %i.nf = icmp ugt ptr %i.nd, %scevgep
  %i.ng = select i1 %i.mz, i1 %i.nf, i1 %i.ne
  %i.nh = or i1 %i.ng, %mul.overflow
  br i1 %i.nh, label %.lr.ph67.preheader342, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck301
  %scevgep302 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.ni = getelementptr i8, ptr %i.a, i64 %6
  %scevgep303 = getelementptr i8, ptr %i.ni, i64 4
  %i.nj = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.nk = add nsw i64 %i.nj, %6
  %i.nl = mul i64 %i.ax, %i.nk
  %i.nm = shl nsw i64 %i.ba, 1                    ; 2 uses
  %i.nn = getelementptr i8, ptr %i.az, i64 %i.nl
  %i.no = getelementptr i8, ptr %i.nn, i64 %i.nm
  %scevgep304 = getelementptr i8, ptr %i.no, i64 -2 ; 4 uses
  %i.np = add nsw i64 %i.nj, 8
  %i.nq = mul i64 %i.ax, %i.np
  %i.nr = getelementptr i8, ptr %i.az, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 %i.nm
  %scevgep305 = getelementptr i8, ptr %i.ns, i64 -2 ; 4 uses
  %i.nt = icmp ult ptr %scevgep304, %scevgep305
  %umin = select i1 %i.nt, ptr %scevgep304, ptr %scevgep305
  %i.nu = icmp ugt ptr %scevgep304, %scevgep305
  %umax = select i1 %i.nu, ptr %scevgep304, ptr %scevgep305
  %scevgep306 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep302, %scevgep306
  %bound1 = icmp ult ptr %umin, %scevgep303
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph67.preheader342, label %vector.ph309

vector.ph309:                                     ; preds = %vector.memcheck
  %n.vec310 = and i64 %i.mo, -8                   ; 3 uses
  %i.nv = or disjoint i64 %n.vec310, 4
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next313, %vector.body311 ] ; 9 uses
  %i.nw = or disjoint i64 %index312, 4            ; 2 uses
  %i.nx = or disjoint i64 %index312, 5
  %i.ny = or disjoint i64 %index312, 6
  %i.nz = or disjoint i64 %index312, 7
  %i.oa = add i64 %index312, 8
  %i.ob = add i64 %index312, 9
  %i.oc = add i64 %index312, 10
  %i.od = add i64 %index312, 11
  %i.oe = mul nuw nsw i64 %i.ax, %i.nw
  %i.of = mul nuw nsw i64 %i.ax, %i.nx
  %i.og = mul nuw nsw i64 %i.ax, %i.ny
  %i.oh = mul nuw nsw i64 %i.ax, %i.nz
  %i.oi = mul nuw nsw i64 %i.ax, %i.oa
  %i.oj = mul nuw nsw i64 %i.ax, %i.ob
  %i.ok = mul nuw nsw i64 %i.ax, %i.oc
  %i.ol = mul nuw nsw i64 %i.ax, %i.od
  %i.om = getelementptr [2 x i8], ptr %i.be, i64 %i.oe
  %i.on = getelementptr [2 x i8], ptr %i.be, i64 %i.of
  %i.oo = getelementptr [2 x i8], ptr %i.be, i64 %i.og
  %i.op = getelementptr [2 x i8], ptr %i.be, i64 %i.oh
  %i.oq = getelementptr [2 x i8], ptr %i.be, i64 %i.oi
  %i.or = getelementptr [2 x i8], ptr %i.be, i64 %i.oj
  %i.os = getelementptr [2 x i8], ptr %i.be, i64 %i.ok
  %i.ot = getelementptr [2 x i8], ptr %i.be, i64 %i.ol
  %i.ou = getelementptr i8, ptr %i.om, i64 -2
  %i.ov = getelementptr i8, ptr %i.on, i64 -2
  %i.ow = getelementptr i8, ptr %i.oo, i64 -2
  %i.ox = getelementptr i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -2
  %i.oz = getelementptr i8, ptr %i.or, i64 -2
  %i.pa = getelementptr i8, ptr %i.os, i64 -2
  %i.pb = getelementptr i8, ptr %i.ot, i64 -2
  %i.pc = load i16, ptr %i.ou, align 2, !tbaa !82, !alias.scope !339
  %i.pd = load i16, ptr %i.ov, align 2, !tbaa !82, !alias.scope !339
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !82, !alias.scope !339
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !82, !alias.scope !339
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !82, !alias.scope !339
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !82, !alias.scope !339
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !82, !alias.scope !339
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !82, !alias.scope !339
  %i.pk = insertelement <8 x i16> poison, i16 %i.pc, i64 0
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 1
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 2
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 3
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 4
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 5
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 6
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 7
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.nw
  store <8 x i16> %i.pr, ptr %i.ps, align 2, !tbaa !82, !alias.scope !340, !noalias !339
  %index.next313 = add nuw i64 %index312, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next313, %n.vec310
  br i1 %i.pt, label %middle.block314, label %vector.body311, !llvm.loop !334

middle.block314:                                  ; preds = %vector.body311
  %cmp.n315 = icmp eq i64 %i.mo, %n.vec310
  br i1 %cmp.n315, label %._crit_edge68, label %.lr.ph67.preheader342

.lr.ph67.preheader342:                            ; preds = %vector.memcheck, %vector.scevcheck301, %.lr.ph67.preheader, %middle.block314
  %indvars.iv143.ph = phi i64 [ 4, %vector.memcheck ], [ 4, %vector.scevcheck301 ], [ 4, %.lr.ph67.preheader ], [ %i.nv, %middle.block314 ] ; 4 uses
  %i.pu = add nuw nsw i64 %i.mn, 1
  %i.pv = sub nsw i64 %i.pu, %indvars.iv143.ph
  %i.pw = sub nsw i64 %i.mn, %indvars.iv143.ph
  %xtraiter = and i64 %i.pv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader342, %.lr.ph67.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %.lr.ph67.prol ], [ %indvars.iv143.ph, %.lr.ph67.preheader342 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader342 ]
  %i.px = mul nuw nsw i64 %i.ax, %indvars.iv143.prol
  %i.py = getelementptr [2 x i8], ptr %i.be, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 -2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !82
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143.prol
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !82
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !335

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader342
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %.lr.ph67.preheader342 ], [ %indvars.iv.next144.prol, %.lr.ph67.prol ]
  %i.qc = icmp ult i64 %i.pw, 3
  br i1 %i.qc, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph67 ], [ %indvars.iv143.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.qd = mul nuw nsw i64 %i.ax, %indvars.iv143
  %i.qe = getelementptr [2 x i8], ptr %i.be, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.qi = mul nuw nsw i64 %i.ax, %indvars.iv.next144
  %i.qj = getelementptr [2 x i8], ptr %i.be, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 -2
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !82
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144
  store i16 %i.ql, ptr %i.qm, align 2, !tbaa !82
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %i.qn = mul nuw nsw i64 %i.ax, %indvars.iv.next144.1
  %i.qo = getelementptr [2 x i8], ptr %i.be, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 -2
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !82
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.1
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !82
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %i.qs = mul nuw nsw i64 %i.ax, %indvars.iv.next144.2
  %i.qt = getelementptr [2 x i8], ptr %i.be, i64 %i.qs
  %i.qu = getelementptr i8, ptr %i.qt, i64 -2
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !82
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.2
  store i16 %i.qv, ptr %i.qw, align 2, !tbaa !82
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge68, label %.lr.ph67, !llvm.loop !336

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block314
  %i.qx = icmp samesign ult i32 %i.cx, 4
  br i1 %i.qx, label %.lr.ph71, label %.loopexit37

.lr.ph71:                                         ; preds = %.preheader38, %._crit_edge68
  %.pn260 = sext i32 %i.ml to i64
  %.pn259 = mul nsw i64 %i.ax, %.pn260
  %.pn = getelementptr [2 x i8], ptr %i.be, i64 %.pn259
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.qy = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.qz = sub nsw i32 4, %i.cx                    ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.rb = sext i32 %i.cx to i64
  %i.rc = getelementptr inbounds [2 x i8], ptr %i.ra, i64 %i.rb ; 2 uses
  %i.rd = zext nneg i32 %i.qz to i64              ; 2 uses
  %i.re = call i64 @llvm.umax.i64(i64 %i.rd, i64 4)
  %i.rf = add nsw i64 %i.re, -1
  %i.rg = lshr i64 %i.rf, 2
  %i.rh = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %min.iters.check318 = icmp ult i32 %i.qz, 13
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph71
  %n.vec320 = and i64 %i.rh, 9223372036854775804  ; 3 uses
  %i.ri = shl i64 %n.vec320, 2
  %broadcast.splatinsert321 = insertelement <2 x i64> poison, i64 %i.qy, i64 0
  %broadcast.splat322 = shufflevector <2 x i64> %broadcast.splatinsert321, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph319
  %index324 = phi i64 [ 0, %vector.ph319 ], [ %index.next325, %vector.body323 ] ; 2 uses
  %.idx330 = shl nuw i64 %index324, 3
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.idx330 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store <2 x i64> %broadcast.splat322, ptr %i.rj, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat322, ptr %i.rk, align 2, !tbaa !78
  %index.next325 = add nuw i64 %index324, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next325, %n.vec320
  br i1 %i.rl, label %middle.block326, label %vector.body323, !llvm.loop !337

middle.block326:                                  ; preds = %vector.body323
  %cmp.n327 = icmp eq i64 %i.rh, %n.vec320
  br i1 %cmp.n327, label %.loopexit37, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %.lr.ph71, %middle.block326
  %indvars.iv146.ph = phi i64 [ 0, %.lr.ph71 ], [ %i.ri, %middle.block326 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %scalar.ph317 ], [ %indvars.iv146.ph, %scalar.ph317.preheader ] ; 2 uses
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.rc, i64 %indvars.iv146
  store i64 %i.qy, ptr %i.rm, align 2, !tbaa !78
end_hunk_4
begin_hunk_5_@intra_pred_3_10:bb.a
  %.1727.i = phi i32 [ %i.ch, %bb.l ], [ 0, %bb.m ], [ %i.js, %bb.n ]
  %or.cond11.i = select i1 %i.cu, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge65

bb.o:                                             ; preds = %.loopexit47
  %i.ju = ashr i32 %i.dh, %i.do                   ; 2 uses
  %i.jv = sub nsw i32 %i.bi, %i.ju
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.jv) ; 2 uses
  %i.jw = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.jw, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.o
  %i.jx = add nsw i32 %3, -1
  %i.jy = ashr i32 %i.jx, %i.do
  %i.jz = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !183
  %i.kb = mul nsw i32 %i.jy, %i.bi
  %i.kc = add i32 %i.kb, %i.ju
  %i.kd = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph64, %bb.p
  %indvars.iv137 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next138, %bb.p ] ; 2 uses
  %.0723.i62 = phi i32 [ 0, %.lr.ph64 ], [ %i.km, %bb.p ]
  %i.ke = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.kf = add i32 %i.kc, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [12 x i8], ptr %i.ka, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 10
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !185
  %i.kk = icmp eq i8 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %i.km = or i32 %.0723.i62, %i.kl                ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %i.kn = icmp samesign ult i64 %indvars.iv.next138, %i.kd
  br i1 %i.kn, label %bb.p, label %._crit_edge65.loopexit, !llvm.loop !30

._crit_edge65.loopexit:                           ; preds = %bb.p
  %i.ko = icmp ne i32 %i.km, 0
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.o, %._crit_edge65.loopexit, %.loopexit47
  %.1724.i = phi i1 [ %i.cu, %.loopexit47 ], [ false, %bb.o ], [ %i.ko, %._crit_edge65.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bk, i8 -128, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bl, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.c, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge65 ], [ %i.cf, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge65 ], [ %i.ch, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge65 ], [ %i.cu, %bb.g ] ; 5 uses
  %i.kp = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kq = xor i64 %i.az, -1
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ks, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ks, ptr %i.c, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kt = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ku = sub nsw i64 0, %i.az
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bl, ptr noundef nonnull align 2 dereferenceable(16) %i.kv, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit46

bb.v:                                             ; preds = %bb.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 2 uses
  %i.kx = sub nsw i64 0, %i.az
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.kw, ptr noundef nonnull align 2 dereferenceable(16) %i.kz, i64 16, i1 false)
  %i.la = add nsw i32 %i.dj, 7
  %i.lb = sext i32 %i.la to i64
  %i.lc = sub nsw i64 %i.lb, %i.az
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !82
  %i.lf = zext i16 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, 281479271743489      ; 2 uses
  %i.lh = icmp slt i32 %i.dj, 8
  br i1 %i.lh, label %.lr.ph69, label %.loopexit46

.lr.ph69:                                         ; preds = %bb.v
  %i.li = sub nsw i32 8, %i.dj                    ; 2 uses
  %i.lj = sext i32 %i.dj to i64
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.lj ; 2 uses
  %i.ll = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lm = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 4)
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check328 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check328, label %scalar.ph327.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %.lr.ph69
  %n.vec330 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec330, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph329
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next333, %vector.body331 ] ; 2 uses
  %.idx365 = shl nuw i64 %index332, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx365 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next333 = add nuw i64 %index332, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next333, %n.vec330
  br i1 %i.lt, label %middle.block334, label %vector.body331, !llvm.loop !345

middle.block334:                                  ; preds = %vector.body331
  %cmp.n335 = icmp eq i64 %i.lp, %n.vec330
  br i1 %cmp.n335, label %.loopexit46, label %scalar.ph327.preheader

scalar.ph327.preheader:                           ; preds = %.lr.ph69, %middle.block334
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block334 ]
  br label %scalar.ph327

scalar.ph327:                                     ; preds = %scalar.ph327.preheader, %scalar.ph327
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph327 ], [ %indvars.iv140.ph, %scalar.ph327.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph327, label %.loopexit46, !llvm.loop !346

.loopexit46:                                      ; preds = %scalar.ph327, %middle.block334, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lw, label %.preheader44.preheader, label %.loopexit45

.preheader44.preheader:                           ; preds = %.loopexit46
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx268 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx269 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx270 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx271 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.nc = icmp sgt i32 %i.db, 0
  %i.nd = add i32 %i.db, 7                        ; 3 uses
  br i1 %i.nc, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 8) ; 4 uses
  %i.ne = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ne to i64
  %i.nf = zext nneg i32 %smax to i64              ; 3 uses
  %i.ng = add nsw i64 %i.nf, -7                   ; 2 uses
  %min.iters.check344 = icmp slt i32 %i.nd, 135
  br i1 %min.iters.check344, label %.lr.ph72.preheader378, label %vector.scevcheck337

vector.scevcheck337:                              ; preds = %.lr.ph72.preheader
  %i.nh = zext nneg i32 %smax to i64
  %i.ni = add nsw i64 %i.nh, -8
  %i.nj = and i64 %i.ay, -2
  %i.nk = mul i64 %i.az, -2
  %i.nl = shl nsw i64 %i.be, 1
  %i.nm = add nsw i64 %i.nl, 16
  %i.nn = mul i64 %i.az, %i.nm
  %i.no = shl nsw i64 %i.bc, 1
  %i.np = getelementptr i8, ptr %i.bb, i64 %i.nn
  %i.nq = getelementptr i8, ptr %i.np, i64 %i.no
  %scevgep = getelementptr i8, ptr %i.nq, i64 -2  ; 4 uses
  %i.nr = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.ns = select i1 %i.nr, i64 %i.nk, i64 %i.nj
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ns, i64 %i.ni) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.nt = sub i64 0, %mul.result
  %i.nu = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.nv = getelementptr i8, ptr %scevgep, i64 %i.nt
  %i.nw = icmp ult ptr %i.nu, %scevgep
  %i.nx = icmp ugt ptr %i.nv, %scevgep
  %i.ny = select i1 %i.nr, i1 %i.nx, i1 %i.nw
  %i.nz = or i1 %i.ny, %mul.overflow
  br i1 %i.nz, label %.lr.ph72.preheader378, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck337
  %scevgep338 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.oa = getelementptr i8, ptr %i.a, i64 %6
  %scevgep339 = getelementptr i8, ptr %i.oa, i64 4
  %i.ob = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.oc = add nsw i64 %i.ob, %6
  %i.od = mul i64 %i.az, %i.oc
  %i.oe = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.of = getelementptr i8, ptr %i.bb, i64 %i.od
  %i.og = getelementptr i8, ptr %i.of, i64 %i.oe
  %scevgep340 = getelementptr i8, ptr %i.og, i64 -2 ; 4 uses
  %i.oh = add nsw i64 %i.ob, 16
  %i.oi = mul i64 %i.az, %i.oh
  %i.oj = getelementptr i8, ptr %i.bb, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 %i.oe
  %scevgep341 = getelementptr i8, ptr %i.ok, i64 -2 ; 4 uses
  %i.ol = icmp ult ptr %scevgep340, %scevgep341
  %umin = select i1 %i.ol, ptr %scevgep340, ptr %scevgep341
  %i.om = icmp ugt ptr %scevgep340, %scevgep341
  %umax = select i1 %i.om, ptr %scevgep340, ptr %scevgep341
  %scevgep342 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep338, %scevgep342
  %bound1 = icmp ult ptr %umin, %scevgep339
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader378, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck
  %n.vec346 = and i64 %i.ng, -8                   ; 3 uses
  %i.on = add nsw i64 %n.vec346, 8
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next349, %vector.body347 ] ; 9 uses
  %i.oo = add nuw i64 %index348, 8                ; 2 uses
  %i.op = add i64 %index348, 9
  %i.oq = add i64 %index348, 10
  %i.or = add i64 %index348, 11
  %i.os = add i64 %index348, 12
  %i.ot = add i64 %index348, 13
  %i.ou = add i64 %index348, 14
  %i.ov = add i64 %index348, 15
  %i.ow = mul nuw nsw i64 %i.az, %i.oo
  %i.ox = mul nuw nsw i64 %i.az, %i.op
  %i.oy = mul nuw nsw i64 %i.az, %i.oq
  %i.oz = mul nuw nsw i64 %i.az, %i.or
  %i.pa = mul nuw nsw i64 %i.az, %i.os
  %i.pb = mul nuw nsw i64 %i.az, %i.ot
  %i.pc = mul nuw nsw i64 %i.az, %i.ou
  %i.pd = mul nuw nsw i64 %i.az, %i.ov
  %i.pe = getelementptr [2 x i8], ptr %i.bg, i64 %i.ow
  %i.pf = getelementptr [2 x i8], ptr %i.bg, i64 %i.ox
  %i.pg = getelementptr [2 x i8], ptr %i.bg, i64 %i.oy
  %i.ph = getelementptr [2 x i8], ptr %i.bg, i64 %i.oz
  %i.pi = getelementptr [2 x i8], ptr %i.bg, i64 %i.pa
  %i.pj = getelementptr [2 x i8], ptr %i.bg, i64 %i.pb
  %i.pk = getelementptr [2 x i8], ptr %i.bg, i64 %i.pc
  %i.pl = getelementptr [2 x i8], ptr %i.bg, i64 %i.pd
  %i.pm = getelementptr i8, ptr %i.pe, i64 -2
  %i.pn = getelementptr i8, ptr %i.pf, i64 -2
  %i.po = getelementptr i8, ptr %i.pg, i64 -2
  %i.pp = getelementptr i8, ptr %i.ph, i64 -2
  %i.pq = getelementptr i8, ptr %i.pi, i64 -2
  %i.pr = getelementptr i8, ptr %i.pj, i64 -2
  %i.ps = getelementptr i8, ptr %i.pk, i64 -2
  %i.pt = getelementptr i8, ptr %i.pl, i64 -2
  %i.pu = load i16, ptr %i.pm, align 2, !tbaa !82, !alias.scope !355
  %i.pv = load i16, ptr %i.pn, align 2, !tbaa !82, !alias.scope !355
  %i.pw = load i16, ptr %i.po, align 2, !tbaa !82, !alias.scope !355
  %i.px = load i16, ptr %i.pp, align 2, !tbaa !82, !alias.scope !355
  %i.py = load i16, ptr %i.pq, align 2, !tbaa !82, !alias.scope !355
  %i.pz = load i16, ptr %i.pr, align 2, !tbaa !82, !alias.scope !355
  %i.qa = load i16, ptr %i.ps, align 2, !tbaa !82, !alias.scope !355
  %i.qb = load i16, ptr %i.pt, align 2, !tbaa !82, !alias.scope !355
  %i.qc = insertelement <8 x i16> poison, i16 %i.pu, i64 0
  %i.qd = insertelement <8 x i16> %i.qc, i16 %i.pv, i64 1
  %i.qe = insertelement <8 x i16> %i.qd, i16 %i.pw, i64 2
  %i.qf = insertelement <8 x i16> %i.qe, i16 %i.px, i64 3
  %i.qg = insertelement <8 x i16> %i.qf, i16 %i.py, i64 4
  %i.qh = insertelement <8 x i16> %i.qg, i16 %i.pz, i64 5
  %i.qi = insertelement <8 x i16> %i.qh, i16 %i.qa, i64 6
  %i.qj = insertelement <8 x i16> %i.qi, i16 %i.qb, i64 7
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.oo
  store <8 x i16> %i.qj, ptr %i.qk, align 2, !tbaa !82, !alias.scope !356, !noalias !355
  %index.next349 = add nuw i64 %index348, 8       ; 2 uses
  %i.ql = icmp eq i64 %index.next349, %n.vec346
  br i1 %i.ql, label %middle.block350, label %vector.body347, !llvm.loop !350

middle.block350:                                  ; preds = %vector.body347
  %cmp.n351 = icmp eq i64 %i.ng, %n.vec346
  br i1 %cmp.n351, label %._crit_edge73, label %.lr.ph72.preheader378

.lr.ph72.preheader378:                            ; preds = %vector.memcheck, %vector.scevcheck337, %.lr.ph72.preheader, %middle.block350
  %indvars.iv146.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %vector.scevcheck337 ], [ 8, %.lr.ph72.preheader ], [ %i.on, %middle.block350 ] ; 4 uses
  %i.qm = add nuw nsw i64 %i.nf, 1
  %i.qn = sub nsw i64 %i.qm, %indvars.iv146.ph
  %i.qo = sub nsw i64 %i.nf, %indvars.iv146.ph
  %xtraiter = and i64 %i.qn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader378, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader378 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader378 ]
  %i.qp = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !351

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader378
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader378 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.qu = icmp ult i64 %i.qo, 3
  br i1 %i.qu, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.qv = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.qw = getelementptr [2 x i8], ptr %i.bg, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 -2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !82
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.ra = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.rb = getelementptr [2 x i8], ptr %i.bg, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.rb, i64 -2
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !82
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.rd, ptr %i.re, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.rf = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.rg = getelementptr [2 x i8], ptr %i.bg, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -2
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !82
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.ri, ptr %i.rj, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.rk = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.rl = getelementptr [2 x i8], ptr %i.bg, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rl, i64 -2
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !82
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !352

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block350
  %i.rp = icmp samesign ult i32 %i.db, 8
  br i1 %i.rp, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn295 = sext i32 %i.nd to i64
  %.pn294 = mul nsw i64 %i.az, %.pn295
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn294
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.rq = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rr = sub nsw i32 8, %i.db                    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.rt = sext i32 %i.db to i64
  %i.ru = getelementptr inbounds [2 x i8], ptr %i.rs, i64 %i.rt ; 2 uses
  %i.rv = zext nneg i32 %i.rr to i64              ; 2 uses
  %i.rw = call i64 @llvm.umax.i64(i64 %i.rv, i64 4)
  %i.rx = add nsw i64 %i.rw, -1
  %i.ry = lshr i64 %i.rx, 2
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %min.iters.check354 = icmp ult i32 %i.rr, 13
  br i1 %min.iters.check354, label %scalar.ph353.preheader, label %vector.ph355

vector.ph355:                                     ; preds = %.lr.ph76
  %n.vec356 = and i64 %i.rz, 9223372036854775804  ; 3 uses
  %i.sa = shl i64 %n.vec356, 2
  %broadcast.splatinsert357 = insertelement <2 x i64> poison, i64 %i.rq, i64 0
  %broadcast.splat358 = shufflevector <2 x i64> %broadcast.splatinsert357, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph355
  %index360 = phi i64 [ 0, %vector.ph355 ], [ %index.next361, %vector.body359 ] ; 2 uses
  %.idx366 = shl nuw i64 %index360, 3
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx366 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store <2 x i64> %broadcast.splat358, ptr %i.sb, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat358, ptr %i.sc, align 2, !tbaa !78
  %index.next361 = add nuw i64 %index360, 4       ; 2 uses
  %i.sd = icmp eq i64 %index.next361, %n.vec356
  br i1 %i.sd, label %middle.block362, label %vector.body359, !llvm.loop !353

middle.block362:                                  ; preds = %vector.body359
  %cmp.n363 = icmp eq i64 %i.rz, %n.vec356
  br i1 %cmp.n363, label %.loopexit42, label %scalar.ph353.preheader

scalar.ph353.preheader:                           ; preds = %.lr.ph76, %middle.block362
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph76 ], [ %i.sa, %middle.block362 ]
  br label %scalar.ph353

scalar.ph353:                                     ; preds = %scalar.ph353.preheader, %scalar.ph353
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph353 ], [ %indvars.iv149.ph, %scalar.ph353.preheader ] ; 2 uses
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %indvars.iv149
  store i64 %i.rq, ptr %i.se, align 2, !tbaa !78
end_hunk_5
begin_hunk_6_@intra_pred_4_10:bb.a
bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge65 ], [ %i.cf, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge65 ], [ %i.ch, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge65 ], [ %i.cu, %bb.g ] ; 5 uses
  %i.kp = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kq = xor i64 %i.az, -1
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ks, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ks, ptr %i.c, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kt = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ku = sub nsw i64 0, %i.az
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.bl, ptr noundef nonnull align 2 dereferenceable(32) %i.kv, i64 32, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit46

bb.v:                                             ; preds = %bb.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 2 uses
  %i.kx = sub nsw i64 0, %i.az
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.kw, ptr noundef nonnull align 2 dereferenceable(32) %i.kz, i64 32, i1 false)
  %i.la = add nsw i32 %i.dj, 15
  %i.lb = sext i32 %i.la to i64
  %i.lc = sub nsw i64 %i.lb, %i.az
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !82
  %i.lf = zext i16 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, 281479271743489      ; 2 uses
  %i.lh = icmp slt i32 %i.dj, 16
  br i1 %i.lh, label %.lr.ph69, label %.loopexit46

.lr.ph69:                                         ; preds = %bb.v
  %i.li = sub nsw i32 16, %i.dj                   ; 2 uses
  %i.lj = sext i32 %i.dj to i64
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.lj ; 2 uses
  %i.ll = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lm = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 4)
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check334 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check334, label %scalar.ph333.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph69
  %n.vec336 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec336, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next339, %vector.body337 ] ; 2 uses
  %.idx371 = shl nuw i64 %index338, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx371 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next339 = add nuw i64 %index338, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next339, %n.vec336
  br i1 %i.lt, label %middle.block340, label %vector.body337, !llvm.loop !361

middle.block340:                                  ; preds = %vector.body337
  %cmp.n341 = icmp eq i64 %i.lp, %n.vec336
  br i1 %cmp.n341, label %.loopexit46, label %scalar.ph333.preheader

scalar.ph333.preheader:                           ; preds = %.lr.ph69, %middle.block340
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block340 ]
  br label %scalar.ph333

scalar.ph333:                                     ; preds = %scalar.ph333.preheader, %scalar.ph333
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph333 ], [ %indvars.iv140.ph, %scalar.ph333.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph333, label %.loopexit46, !llvm.loop !362

.loopexit46:                                      ; preds = %scalar.ph333, %middle.block340, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lw, label %.preheader44.preheader, label %.loopexit45

.preheader44.preheader:                           ; preds = %.loopexit46
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx255 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx255
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx256 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx256
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx257 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx257
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx258 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx259 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx260 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx261 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx262 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx263 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx264 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx265 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx266 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx266
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.oi = icmp sgt i32 %i.db, 0
  %i.oj = add i32 %i.db, 15                       ; 3 uses
  br i1 %i.oi, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oj, i32 16) ; 4 uses
  %i.ok = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ok to i64
  %i.ol = zext nneg i32 %smax to i64              ; 3 uses
  %i.om = add nsw i64 %i.ol, -15                  ; 2 uses
  %min.iters.check350 = icmp slt i32 %i.oj, 143
  br i1 %min.iters.check350, label %.lr.ph72.preheader384, label %vector.scevcheck343

vector.scevcheck343:                              ; preds = %.lr.ph72.preheader
  %i.on = zext nneg i32 %smax to i64
  %i.oo = add nsw i64 %i.on, -16
  %i.op = and i64 %i.ay, -2
  %i.oq = mul i64 %i.az, -2
  %i.or = shl nsw i64 %i.be, 1
  %i.os = add nsw i64 %i.or, 32
  %i.ot = mul i64 %i.az, %i.os
  %i.ou = shl nsw i64 %i.bc, 1
  %i.ov = getelementptr i8, ptr %i.bb, i64 %i.ot
  %i.ow = getelementptr i8, ptr %i.ov, i64 %i.ou
  %scevgep = getelementptr i8, ptr %i.ow, i64 -2  ; 4 uses
  %i.ox = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.oy = select i1 %i.ox, i64 %i.oq, i64 %i.op
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.oy, i64 %i.oo) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.oz = sub i64 0, %mul.result
  %i.pa = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.pb = getelementptr i8, ptr %scevgep, i64 %i.oz
  %i.pc = icmp ult ptr %i.pa, %scevgep
  %i.pd = icmp ugt ptr %i.pb, %scevgep
  %i.pe = select i1 %i.ox, i1 %i.pd, i1 %i.pc
  %i.pf = or i1 %i.pe, %mul.overflow
  br i1 %i.pf, label %.lr.ph72.preheader384, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck343
  %scevgep344 = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.pg = getelementptr i8, ptr %i.a, i64 %6
  %scevgep345 = getelementptr i8, ptr %i.pg, i64 4
  %i.ph = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.pi = add nsw i64 %i.ph, %6
  %i.pj = mul i64 %i.az, %i.pi
  %i.pk = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.pl = getelementptr i8, ptr %i.bb, i64 %i.pj
  %i.pm = getelementptr i8, ptr %i.pl, i64 %i.pk
  %scevgep346 = getelementptr i8, ptr %i.pm, i64 -2 ; 4 uses
  %i.pn = add nsw i64 %i.ph, 32
  %i.po = mul i64 %i.az, %i.pn
  %i.pp = getelementptr i8, ptr %i.bb, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.pk
  %scevgep347 = getelementptr i8, ptr %i.pq, i64 -2 ; 4 uses
  %i.pr = icmp ult ptr %scevgep346, %scevgep347
  %umin = select i1 %i.pr, ptr %scevgep346, ptr %scevgep347
  %i.ps = icmp ugt ptr %scevgep346, %scevgep347
  %umax = select i1 %i.ps, ptr %scevgep346, ptr %scevgep347
  %scevgep348 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep344, %scevgep348
  %bound1 = icmp ult ptr %umin, %scevgep345
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader384, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck
  %n.vec352 = and i64 %i.om, -8                   ; 3 uses
  %i.pt = add nsw i64 %n.vec352, 16
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next355, %vector.body353 ] ; 9 uses
  %i.pu = add nuw i64 %index354, 16               ; 2 uses
  %i.pv = add i64 %index354, 17
  %i.pw = add i64 %index354, 18
  %i.px = add i64 %index354, 19
  %i.py = add i64 %index354, 20
  %i.pz = add i64 %index354, 21
  %i.qa = add i64 %index354, 22
  %i.qb = add i64 %index354, 23
  %i.qc = mul nuw nsw i64 %i.az, %i.pu
  %i.qd = mul nuw nsw i64 %i.az, %i.pv
  %i.qe = mul nuw nsw i64 %i.az, %i.pw
  %i.qf = mul nuw nsw i64 %i.az, %i.px
  %i.qg = mul nuw nsw i64 %i.az, %i.py
  %i.qh = mul nuw nsw i64 %i.az, %i.pz
  %i.qi = mul nuw nsw i64 %i.az, %i.qa
  %i.qj = mul nuw nsw i64 %i.az, %i.qb
  %i.qk = getelementptr [2 x i8], ptr %i.bg, i64 %i.qc
  %i.ql = getelementptr [2 x i8], ptr %i.bg, i64 %i.qd
  %i.qm = getelementptr [2 x i8], ptr %i.bg, i64 %i.qe
  %i.qn = getelementptr [2 x i8], ptr %i.bg, i64 %i.qf
  %i.qo = getelementptr [2 x i8], ptr %i.bg, i64 %i.qg
  %i.qp = getelementptr [2 x i8], ptr %i.bg, i64 %i.qh
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qi
  %i.qr = getelementptr [2 x i8], ptr %i.bg, i64 %i.qj
  %i.qs = getelementptr i8, ptr %i.qk, i64 -2
  %i.qt = getelementptr i8, ptr %i.ql, i64 -2
  %i.qu = getelementptr i8, ptr %i.qm, i64 -2
  %i.qv = getelementptr i8, ptr %i.qn, i64 -2
  %i.qw = getelementptr i8, ptr %i.qo, i64 -2
  %i.qx = getelementptr i8, ptr %i.qp, i64 -2
  %i.qy = getelementptr i8, ptr %i.qq, i64 -2
  %i.qz = getelementptr i8, ptr %i.qr, i64 -2
  %i.ra = load i16, ptr %i.qs, align 2, !tbaa !82, !alias.scope !371
  %i.rb = load i16, ptr %i.qt, align 2, !tbaa !82, !alias.scope !371
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !82, !alias.scope !371
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !82, !alias.scope !371
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !82, !alias.scope !371
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !82, !alias.scope !371
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !82, !alias.scope !371
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !82, !alias.scope !371
  %i.ri = insertelement <8 x i16> poison, i16 %i.ra, i64 0
  %i.rj = insertelement <8 x i16> %i.ri, i16 %i.rb, i64 1
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 2
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 3
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 4
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 5
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 6
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 7
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.pu
  store <8 x i16> %i.rp, ptr %i.rq, align 2, !tbaa !82, !alias.scope !372, !noalias !371
  %index.next355 = add nuw i64 %index354, 8       ; 2 uses
  %i.rr = icmp eq i64 %index.next355, %n.vec352
  br i1 %i.rr, label %middle.block356, label %vector.body353, !llvm.loop !366

middle.block356:                                  ; preds = %vector.body353
  %cmp.n357 = icmp eq i64 %i.om, %n.vec352
  br i1 %cmp.n357, label %._crit_edge73, label %.lr.ph72.preheader384

.lr.ph72.preheader384:                            ; preds = %vector.memcheck, %vector.scevcheck343, %.lr.ph72.preheader, %middle.block356
  %indvars.iv146.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %vector.scevcheck343 ], [ 16, %.lr.ph72.preheader ], [ %i.pt, %middle.block356 ] ; 4 uses
  %i.rs = add nuw nsw i64 %i.ol, 1
  %i.rt = sub nsw i64 %i.rs, %indvars.iv146.ph
  %i.ru = sub nsw i64 %i.ol, %indvars.iv146.ph
  %xtraiter = and i64 %i.rt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader384, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader384 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader384 ]
  %i.rv = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.rw = getelementptr [2 x i8], ptr %i.bg, i64 %i.rv
  %i.rx = getelementptr i8, ptr %i.rw, i64 -2
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !82
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.ry, ptr %i.rz, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !367

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader384
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader384 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.sa = icmp ult i64 %i.ru, 3
  br i1 %i.sa, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.sb = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.sc = getelementptr [2 x i8], ptr %i.bg, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 -2
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !82
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.sg = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.sh = getelementptr [2 x i8], ptr %i.bg, i64 %i.sg
  %i.si = getelementptr i8, ptr %i.sh, i64 -2
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !82
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.sj, ptr %i.sk, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.sl = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.sm = getelementptr [2 x i8], ptr %i.bg, i64 %i.sl
  %i.sn = getelementptr i8, ptr %i.sm, i64 -2
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !82
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.sq = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.sr = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.ss = getelementptr i8, ptr %i.sr, i64 -2
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !82
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.st, ptr %i.su, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !368

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block356
  %i.sv = icmp samesign ult i32 %i.db, 16
  br i1 %i.sv, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn301 = sext i32 %i.oj to i64
  %.pn300 = mul nsw i64 %i.az, %.pn301
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn300
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.sw = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.sx = sub nsw i32 16, %i.db                   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.sz = sext i32 %i.db to i64
  %i.ta = getelementptr inbounds [2 x i8], ptr %i.sy, i64 %i.sz ; 2 uses
  %i.tb = zext nneg i32 %i.sx to i64              ; 2 uses
  %i.tc = call i64 @llvm.umax.i64(i64 %i.tb, i64 4)
  %i.td = add nsw i64 %i.tc, -1
  %i.te = lshr i64 %i.td, 2
  %i.tf = add nuw nsw i64 %i.te, 1                ; 2 uses
  %min.iters.check360 = icmp ult i32 %i.sx, 13
  br i1 %min.iters.check360, label %scalar.ph359.preheader, label %vector.ph361

vector.ph361:                                     ; preds = %.lr.ph76
  %n.vec362 = and i64 %i.tf, 9223372036854775804  ; 3 uses
  %i.tg = shl i64 %n.vec362, 2
  %broadcast.splatinsert363 = insertelement <2 x i64> poison, i64 %i.sw, i64 0
  %broadcast.splat364 = shufflevector <2 x i64> %broadcast.splatinsert363, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph361
  %index366 = phi i64 [ 0, %vector.ph361 ], [ %index.next367, %vector.body365 ] ; 2 uses
  %.idx372 = shl nuw i64 %index366, 3
  %i.th = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.idx372 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x i64> %broadcast.splat364, ptr %i.th, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat364, ptr %i.ti, align 2, !tbaa !78
  %index.next367 = add nuw i64 %index366, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next367, %n.vec362
  br i1 %i.tj, label %middle.block368, label %vector.body365, !llvm.loop !369

middle.block368:                                  ; preds = %vector.body365
  %cmp.n369 = icmp eq i64 %i.tf, %n.vec362
  br i1 %cmp.n369, label %.loopexit42, label %scalar.ph359.preheader

scalar.ph359.preheader:                           ; preds = %.lr.ph76, %middle.block368
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph76 ], [ %i.tg, %middle.block368 ]
  br label %scalar.ph359

scalar.ph359:                                     ; preds = %scalar.ph359.preheader, %scalar.ph359
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph359 ], [ %indvars.iv149.ph, %scalar.ph359.preheader ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.ta, i64 %indvars.iv149
  store i64 %i.sw, ptr %i.tk, align 2, !tbaa !78
end_hunk_6
begin_hunk_7_@intra_pred_5_10:bb.a
.preheader45.preheader:                           ; preds = %.loopexit47
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx257 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx257
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx258 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx259 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx260 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx261 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx262 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx263 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx264 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx265 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx266 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx266
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx267 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx267
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx268 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  %.idx269 = shl i64 %i.az, 5
  %i.oi = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.oj = getelementptr i8, ptr %i.oi, i64 -2
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !82
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !82
  %.idx270 = mul i64 %i.az, 34
  %i.om = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.on = getelementptr i8, ptr %i.om, i64 -2
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i16 %i.oo, ptr %i.op, align 4, !tbaa !82
  %.idx271 = mul i64 %i.az, 36
  %i.oq = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.or = getelementptr i8, ptr %i.oq, i64 -2
  %i.os = load i16, ptr %i.or, align 2, !tbaa !82
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %i.os, ptr %i.ot, align 2, !tbaa !82
  %.idx272 = mul i64 %i.az, 38
  %i.ou = getelementptr i8, ptr %i.bg, i64 %.idx272
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !82
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i16 %i.ow, ptr %i.ox, align 8, !tbaa !82
  %.idx273 = mul i64 %i.az, 40
  %i.oy = getelementptr i8, ptr %i.bg, i64 %.idx273
  %i.oz = getelementptr i8, ptr %i.oy, i64 -2
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !82
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !82
  %.idx274 = mul i64 %i.az, 42
  %i.pc = getelementptr i8, ptr %i.bg, i64 %.idx274
  %i.pd = getelementptr i8, ptr %i.pc, i64 -2
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !82
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !82
  %.idx275 = mul i64 %i.az, 44
  %i.pg = getelementptr i8, ptr %i.bg, i64 %.idx275
  %i.ph = getelementptr i8, ptr %i.pg, i64 -2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !82
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !82
  %.idx276 = mul i64 %i.az, 46
  %i.pk = getelementptr i8, ptr %i.bg, i64 %.idx276
  %i.pl = getelementptr i8, ptr %i.pk, i64 -2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i16 %i.pm, ptr %i.pn, align 16, !tbaa !82
  %.idx277 = mul i64 %i.az, 48
  %i.po = getelementptr i8, ptr %i.bg, i64 %.idx277
  %i.pp = getelementptr i8, ptr %i.po, i64 -2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !82
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !82
  %.idx278 = mul i64 %i.az, 50
  %i.ps = getelementptr i8, ptr %i.bg, i64 %.idx278
  %i.pt = getelementptr i8, ptr %i.ps, i64 -2
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !82
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i16 %i.pu, ptr %i.pv, align 4, !tbaa !82
  %.idx279 = mul i64 %i.az, 52
  %i.pw = getelementptr i8, ptr %i.bg, i64 %.idx279
  %i.px = getelementptr i8, ptr %i.pw, i64 -2
  %i.py = load i16, ptr %i.px, align 2, !tbaa !82
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !82
  %.idx280 = mul i64 %i.az, 54
  %i.qa = getelementptr i8, ptr %i.bg, i64 %.idx280
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.qc, ptr %i.qd, align 8, !tbaa !82
  %.idx281 = mul i64 %i.az, 56
  %i.qe = getelementptr i8, ptr %i.bg, i64 %.idx281
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %.idx282 = mul i64 %i.az, 58
  %i.qi = getelementptr i8, ptr %i.bg, i64 %.idx282
  %i.qj = getelementptr i8, ptr %i.qi, i64 -2
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 %i.qk, ptr %i.ql, align 4, !tbaa !82
  %.idx283 = mul i64 %i.az, 60
  %i.qm = getelementptr i8, ptr %i.bg, i64 %.idx283
  %i.qn = getelementptr i8, ptr %i.qm, i64 -2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !82
  %.idx284 = mul i64 %i.az, 62
  %i.qq = getelementptr i8, ptr %i.bg, i64 %.idx284
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 %i.qs, ptr %i.qt, align 16, !tbaa !82
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.qu = icmp sgt i32 %i.db, 0
  %i.qv = add i32 %i.db, 31                       ; 3 uses
  br i1 %i.qu, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.qv, i32 32) ; 4 uses
  %i.qw = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.qw to i64
  %i.qx = zext nneg i32 %smax to i64              ; 3 uses
  %i.qy = add nsw i64 %i.qx, -31                  ; 2 uses
  %min.iters.check392 = icmp slt i32 %i.qv, 159
  br i1 %min.iters.check392, label %.lr.ph73.preheader426, label %vector.scevcheck385

vector.scevcheck385:                              ; preds = %.lr.ph73.preheader
  %i.qz = zext nneg i32 %smax to i64
  %i.ra = add nsw i64 %i.qz, -32
  %i.rb = and i64 %i.ay, -2
  %i.rc = mul i64 %i.az, -2
  %i.rd = shl nsw i64 %i.be, 1
  %i.re = add nsw i64 %i.rd, 64
  %i.rf = mul i64 %i.az, %i.re
  %i.rg = shl nsw i64 %i.bc, 1
  %i.rh = getelementptr i8, ptr %i.bb, i64 %i.rf
  %i.ri = getelementptr i8, ptr %i.rh, i64 %i.rg
  %scevgep = getelementptr i8, ptr %i.ri, i64 -2  ; 4 uses
  %i.rj = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.rk = select i1 %i.rj, i64 %i.rc, i64 %i.rb
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.rk, i64 %i.ra) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.rl = sub i64 0, %mul.result
  %i.rm = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.rn = getelementptr i8, ptr %scevgep, i64 %i.rl
  %i.ro = icmp ult ptr %i.rm, %scevgep
  %i.rp = icmp ugt ptr %i.rn, %scevgep
  %i.rq = select i1 %i.rj, i1 %i.rp, i1 %i.ro
  %i.rr = or i1 %i.rq, %mul.overflow
  br i1 %i.rr, label %.lr.ph73.preheader426, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck385
  %scevgep386 = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.rs = getelementptr i8, ptr %i.a, i64 %6
  %scevgep387 = getelementptr i8, ptr %i.rs, i64 4
  %i.rt = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.ru = add nsw i64 %i.rt, %6
  %i.rv = mul i64 %i.az, %i.ru
  %i.rw = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.rx = getelementptr i8, ptr %i.bb, i64 %i.rv
  %i.ry = getelementptr i8, ptr %i.rx, i64 %i.rw
  %scevgep388 = getelementptr i8, ptr %i.ry, i64 -2 ; 4 uses
  %i.rz = add nsw i64 %i.rt, 64
  %i.sa = mul i64 %i.az, %i.rz
  %i.sb = getelementptr i8, ptr %i.bb, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 %i.rw
  %scevgep389 = getelementptr i8, ptr %i.sc, i64 -2 ; 4 uses
  %i.sd = icmp ult ptr %scevgep388, %scevgep389
  %umin = select i1 %i.sd, ptr %scevgep388, ptr %scevgep389
  %i.se = icmp ugt ptr %scevgep388, %scevgep389
  %umax = select i1 %i.se, ptr %scevgep388, ptr %scevgep389
  %scevgep390 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep386, %scevgep390
  %bound1 = icmp ult ptr %umin, %scevgep387
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader426, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck
  %n.vec394 = and i64 %i.qy, -8                   ; 3 uses
  %i.sf = add nsw i64 %n.vec394, 32
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph393
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next397, %vector.body395 ] ; 9 uses
  %i.sg = add nuw i64 %index396, 32               ; 2 uses
  %i.sh = add i64 %index396, 33
  %i.si = add i64 %index396, 34
  %i.sj = add i64 %index396, 35
  %i.sk = add i64 %index396, 36
  %i.sl = add i64 %index396, 37
  %i.sm = add i64 %index396, 38
  %i.sn = add i64 %index396, 39
  %i.so = mul nuw nsw i64 %i.az, %i.sg
  %i.sp = mul nuw nsw i64 %i.az, %i.sh
  %i.sq = mul nuw nsw i64 %i.az, %i.si
  %i.sr = mul nuw nsw i64 %i.az, %i.sj
  %i.ss = mul nuw nsw i64 %i.az, %i.sk
  %i.st = mul nuw nsw i64 %i.az, %i.sl
  %i.su = mul nuw nsw i64 %i.az, %i.sm
  %i.sv = mul nuw nsw i64 %i.az, %i.sn
  %i.sw = getelementptr [2 x i8], ptr %i.bg, i64 %i.so
  %i.sx = getelementptr [2 x i8], ptr %i.bg, i64 %i.sp
  %i.sy = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.sz = getelementptr [2 x i8], ptr %i.bg, i64 %i.sr
  %i.ta = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.tb = getelementptr [2 x i8], ptr %i.bg, i64 %i.st
  %i.tc = getelementptr [2 x i8], ptr %i.bg, i64 %i.su
  %i.td = getelementptr [2 x i8], ptr %i.bg, i64 %i.sv
  %i.te = getelementptr i8, ptr %i.sw, i64 -2
  %i.tf = getelementptr i8, ptr %i.sx, i64 -2
  %i.tg = getelementptr i8, ptr %i.sy, i64 -2
  %i.th = getelementptr i8, ptr %i.sz, i64 -2
  %i.ti = getelementptr i8, ptr %i.ta, i64 -2
  %i.tj = getelementptr i8, ptr %i.tb, i64 -2
  %i.tk = getelementptr i8, ptr %i.tc, i64 -2
  %i.tl = getelementptr i8, ptr %i.td, i64 -2
  %i.tm = load i16, ptr %i.te, align 2, !tbaa !82, !alias.scope !387
  %i.tn = load i16, ptr %i.tf, align 2, !tbaa !82, !alias.scope !387
  %i.to = load i16, ptr %i.tg, align 2, !tbaa !82, !alias.scope !387
  %i.tp = load i16, ptr %i.th, align 2, !tbaa !82, !alias.scope !387
  %i.tq = load i16, ptr %i.ti, align 2, !tbaa !82, !alias.scope !387
  %i.tr = load i16, ptr %i.tj, align 2, !tbaa !82, !alias.scope !387
  %i.ts = load i16, ptr %i.tk, align 2, !tbaa !82, !alias.scope !387
  %i.tt = load i16, ptr %i.tl, align 2, !tbaa !82, !alias.scope !387
  %i.tu = insertelement <8 x i16> poison, i16 %i.tm, i64 0
  %i.tv = insertelement <8 x i16> %i.tu, i16 %i.tn, i64 1
  %i.tw = insertelement <8 x i16> %i.tv, i16 %i.to, i64 2
  %i.tx = insertelement <8 x i16> %i.tw, i16 %i.tp, i64 3
  %i.ty = insertelement <8 x i16> %i.tx, i16 %i.tq, i64 4
  %i.tz = insertelement <8 x i16> %i.ty, i16 %i.tr, i64 5
  %i.ua = insertelement <8 x i16> %i.tz, i16 %i.ts, i64 6
  %i.ub = insertelement <8 x i16> %i.ua, i16 %i.tt, i64 7
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.sg
  store <8 x i16> %i.ub, ptr %i.uc, align 2, !tbaa !82, !alias.scope !388, !noalias !387
  %index.next397 = add nuw i64 %index396, 8       ; 2 uses
  %i.ud = icmp eq i64 %index.next397, %n.vec394
  br i1 %i.ud, label %middle.block398, label %vector.body395, !llvm.loop !382

middle.block398:                                  ; preds = %vector.body395
  %cmp.n399 = icmp eq i64 %i.qy, %n.vec394
  br i1 %cmp.n399, label %._crit_edge74, label %.lr.ph73.preheader426

.lr.ph73.preheader426:                            ; preds = %vector.memcheck, %vector.scevcheck385, %.lr.ph73.preheader, %middle.block398
  %indvars.iv148.ph = phi i64 [ 32, %vector.memcheck ], [ 32, %vector.scevcheck385 ], [ 32, %.lr.ph73.preheader ], [ %i.sf, %middle.block398 ] ; 4 uses
  %i.ue = add nuw nsw i64 %i.qx, 1
  %i.uf = sub nsw i64 %i.ue, %indvars.iv148.ph
  %i.ug = sub nsw i64 %i.qx, %indvars.iv148.ph
  %xtraiter = and i64 %i.uf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader426, %.lr.ph73.prol
  %indvars.iv148.prol = phi i64 [ %indvars.iv.next149.prol, %.lr.ph73.prol ], [ %indvars.iv148.ph, %.lr.ph73.preheader426 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader426 ]
  %i.uh = mul nuw nsw i64 %i.az, %indvars.iv148.prol
  %i.ui = getelementptr [2 x i8], ptr %i.bg, i64 %i.uh
  %i.uj = getelementptr i8, ptr %i.ui, i64 -2
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !82
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148.prol
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !82
  %indvars.iv.next149.prol = add nuw nsw i64 %indvars.iv148.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !383

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader426
  %indvars.iv148.unr = phi i64 [ %indvars.iv148.ph, %.lr.ph73.preheader426 ], [ %indvars.iv.next149.prol, %.lr.ph73.prol ]
  %i.um = icmp ult i64 %i.ug, 3
  br i1 %i.um, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.3, %.lr.ph73 ], [ %indvars.iv148.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.un = mul nuw nsw i64 %i.az, %indvars.iv148
  %i.uo = getelementptr [2 x i8], ptr %i.bg, i64 %i.un
  %i.up = getelementptr i8, ptr %i.uo, i64 -2
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !82
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148
  store i16 %i.uq, ptr %i.ur, align 2, !tbaa !82
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.us = mul nuw nsw i64 %i.az, %indvars.iv.next149
  %i.ut = getelementptr [2 x i8], ptr %i.bg, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.ut, i64 -2
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !82
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !82
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2 ; 2 uses
  %i.ux = mul nuw nsw i64 %i.az, %indvars.iv.next149.1
  %i.uy = getelementptr [2 x i8], ptr %i.bg, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 -2
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !82
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.1
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !82
  %indvars.iv.next149.2 = add nuw nsw i64 %indvars.iv148, 3 ; 2 uses
  %i.vc = mul nuw nsw i64 %i.az, %indvars.iv.next149.2
  %i.vd = getelementptr [2 x i8], ptr %i.bg, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 -2
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !82
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.2
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !82
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv148, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next149.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !384

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block398
  %i.vh = icmp samesign ult i32 %i.db, 32
  br i1 %i.vh, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn343 = sext i32 %i.qv to i64
  %.pn342 = mul nsw i64 %i.az, %.pn343
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn342
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.vi = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.vj = sub nsw i32 32, %i.db                   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.vl = sext i32 %i.db to i64
  %i.vm = getelementptr inbounds [2 x i8], ptr %i.vk, i64 %i.vl ; 2 uses
  %i.vn = zext nneg i32 %i.vj to i64              ; 2 uses
  %i.vo = call i64 @llvm.umax.i64(i64 %i.vn, i64 4)
  %i.vp = add nsw i64 %i.vo, -1
  %i.vq = lshr i64 %i.vp, 2
  %i.vr = add nuw nsw i64 %i.vq, 1                ; 2 uses
  %min.iters.check402 = icmp ult i32 %i.vj, 13
  br i1 %min.iters.check402, label %scalar.ph401.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %.lr.ph77
  %n.vec404 = and i64 %i.vr, 9223372036854775804  ; 3 uses
  %i.vs = shl i64 %n.vec404, 2
  %broadcast.splatinsert405 = insertelement <2 x i64> poison, i64 %i.vi, i64 0
  %broadcast.splat406 = shufflevector <2 x i64> %broadcast.splatinsert405, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph403
  %index408 = phi i64 [ 0, %vector.ph403 ], [ %index.next409, %vector.body407 ] ; 2 uses
  %.idx414 = shl nuw i64 %index408, 3
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx414 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store <2 x i64> %broadcast.splat406, ptr %i.vt, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat406, ptr %i.vu, align 2, !tbaa !78
  %index.next409 = add nuw i64 %index408, 4       ; 2 uses
  %i.vv = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.vv, label %middle.block410, label %vector.body407, !llvm.loop !385

middle.block410:                                  ; preds = %vector.body407
  %cmp.n411 = icmp eq i64 %i.vr, %n.vec404
  br i1 %cmp.n411, label %.loopexit43, label %scalar.ph401.preheader

scalar.ph401.preheader:                           ; preds = %.lr.ph77, %middle.block410
  %indvars.iv151.ph = phi i64 [ 0, %.lr.ph77 ], [ %i.vs, %middle.block410 ]
  br label %scalar.ph401

scalar.ph401:                                     ; preds = %scalar.ph401.preheader, %scalar.ph401
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %scalar.ph401 ], [ %indvars.iv151.ph, %scalar.ph401.preheader ] ; 2 uses
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.vm, i64 %indvars.iv151
  store i64 %i.vi, ptr %i.vw, align 2, !tbaa !78
end_hunk_7
begin_hunk_8_@intra_pred_2_12:bb.a
  %i.jd = mul nsw i32 %i.ja, %i.bg
  %i.je = add i32 %i.jd, %i.iw
  %i.jf = zext nneg i32 %.spec.select.i to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph54, %bb.n
  %indvars.iv131 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next132, %bb.n ] ; 2 uses
  %.0726.i52 = phi i32 [ 0, %.lr.ph54 ], [ %i.jo, %bb.n ]
  %i.jg = trunc nuw nsw i64 %indvars.iv131 to i32
  %i.jh = add i32 %i.je, %i.jg
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.jc, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 10
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !185
  %i.jm = icmp eq i8 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %i.jo = or i32 %.0726.i52, %i.jn                ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %i.jp = icmp samesign ult i64 %indvars.iv.next132, %i.jf
  br i1 %i.jp, label %bb.n, label %.loopexit42, !llvm.loop !42

.loopexit42:                                      ; preds = %bb.n, %bb.m, %bb.l
  %.1727.i = phi i32 [ %i.cd, %bb.l ], [ 0, %bb.m ], [ %i.jo, %bb.n ]
  %or.cond11.i = select i1 %i.cq, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge60

bb.o:                                             ; preds = %.loopexit42
  %i.jq = ashr i32 %i.dd, %i.dk                   ; 2 uses
  %i.jr = sub nsw i32 %i.bg, %i.jq
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.jr) ; 2 uses
  %i.js = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.js, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.o
  %i.jt = add nsw i32 %3, -1
  %i.ju = ashr i32 %i.jt, %i.dk
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !183
  %i.jx = mul nsw i32 %i.ju, %i.bg
  %i.jy = add i32 %i.jx, %i.jq
  %i.jz = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph59, %bb.p
  %indvars.iv134 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next135, %bb.p ] ; 2 uses
  %.0723.i57 = phi i32 [ 0, %.lr.ph59 ], [ %i.ki, %bb.p ]
  %i.ka = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.kb = add i32 %i.jy, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [12 x i8], ptr %i.jw, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 10
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !185
  %i.kg = icmp eq i8 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %i.ki = or i32 %.0723.i57, %i.kh                ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next135, %i.jz
  br i1 %i.kj, label %bb.p, label %._crit_edge60.loopexit, !llvm.loop !43

._crit_edge60.loopexit:                           ; preds = %bb.p
  %i.kk = icmp ne i32 %i.ki, 0
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %bb.o, %._crit_edge60.loopexit, %.loopexit42
  %.1724.i = phi i1 [ %i.cq, %.loopexit42 ], [ false, %bb.o ], [ %i.kk, %._crit_edge60.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bi, i8 -128, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bj, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.b, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge60, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge60 ], [ %i.bx, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge60 ], [ %i.bz, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge60 ], [ %i.cb, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge60 ], [ %i.cd, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge60 ], [ %i.cq, %bb.g ] ; 5 uses
  %i.kl = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.km = xor i64 %i.ax, -1
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ko, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ko, ptr %i.b, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kp = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kq = sub nsw i64 0, %i.ax
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.kq
  %i.ks = load i64, ptr %i.kr, align 2
  store i64 %i.ks, ptr %i.bj, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit41

bb.v:                                             ; preds = %bb.u
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.ku = sub nsw i64 0, %i.ax
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i64, ptr %i.kw, align 2
  store i64 %i.kx, ptr %i.kt, align 2
  %i.ky = add nsw i32 %i.df, 3
  %i.kz = sext i32 %i.ky to i64
  %i.la = sub nsw i64 %i.kz, %i.ax
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !82
  %i.ld = zext i16 %i.lc to i64
  %i.le = mul nuw i64 %i.ld, 281479271743489      ; 2 uses
  %i.lf = icmp slt i32 %i.df, 4
  br i1 %i.lf, label %.lr.ph64, label %.loopexit41

.lr.ph64:                                         ; preds = %bb.v
  %i.lg = sub nsw i32 4, %i.df                    ; 2 uses
  %i.lh = sext i32 %i.df to i64
  %i.li = getelementptr inbounds [2 x i8], ptr %i.kt, i64 %i.lh ; 2 uses
  %i.lj = zext nneg i32 %i.lg to i64              ; 2 uses
  %i.lk = tail call i64 @llvm.umax.i64(i64 %i.lj, i64 4)
  %i.ll = add nsw i64 %i.lk, -1
  %i.lm = lshr i64 %i.ll, 2
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 2 uses
  %min.iters.check292 = icmp ult i32 %i.lg, 13
  br i1 %min.iters.check292, label %scalar.ph291.preheader, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph64
  %n.vec294 = and i64 %i.ln, 9223372036854775804  ; 3 uses
  %i.lo = shl i64 %n.vec294, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next297, %vector.body295 ] ; 2 uses
  %.idx329 = shl nuw i64 %index296, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %.idx329 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lp, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.lq, align 2, !tbaa !78
  %index.next297 = add nuw i64 %index296, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next297, %n.vec294
  br i1 %i.lr, label %middle.block298, label %vector.body295, !llvm.loop !434

middle.block298:                                  ; preds = %vector.body295
  %cmp.n299 = icmp eq i64 %i.ln, %n.vec294
  br i1 %cmp.n299, label %.loopexit41, label %scalar.ph291.preheader

scalar.ph291.preheader:                           ; preds = %.lr.ph64, %middle.block298
  %indvars.iv137.ph = phi i64 [ 0, %.lr.ph64 ], [ %i.lo, %middle.block298 ]
  br label %scalar.ph291

scalar.ph291:                                     ; preds = %scalar.ph291.preheader, %scalar.ph291
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph291 ], [ %indvars.iv137.ph, %scalar.ph291.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv137
  store i64 %i.le, ptr %i.ls, align 2, !tbaa !78
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %i.lt = icmp samesign ult i64 %indvars.iv.next138, %i.lj
  br i1 %i.lt, label %scalar.ph291, label %.loopexit41, !llvm.loop !435

.loopexit41:                                      ; preds = %scalar.ph291, %middle.block298, %bb.v, %bb.u
  %i.lu = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lu, label %.preheader39.preheader, label %.loopexit40

.preheader39.preheader:                           ; preds = %.loopexit41
  %i.lv = getelementptr i8, ptr %i.be, i64 -2
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !82
  store i16 %i.lw, ptr %i.bi, align 2, !tbaa !82
  %i.lx = getelementptr [2 x i8], ptr %i.be, i64 %i.ax
  %i.ly = getelementptr i8, ptr %i.lx, i64 -2
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !82
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.lz, ptr %i.ma, align 4, !tbaa !82
  %i.mb = and i64 %i.aw, -2
  %i.mc = getelementptr [2 x i8], ptr %i.be, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 -2
  %i.me = load i16, ptr %i.md, align 2, !tbaa !82
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.me, ptr %i.mf, align 2, !tbaa !82
  %.idx = mul i64 %i.ax, 6
  %i.mg = getelementptr i8, ptr %i.be, i64 %.idx
  %i.mh = getelementptr i8, ptr %i.mg, i64 -2
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !82
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mi, ptr %i.mj, align 8, !tbaa !82
  br label %.loopexit40

.loopexit40:                                      ; preds = %.preheader39.preheader, %.loopexit41
  br i1 %.2738.i, label %.preheader38, label %.loopexit37

.preheader38:                                     ; preds = %.loopexit40
  %i.mk = icmp sgt i32 %i.cx, 0
  %i.ml = add i32 %i.cx, 3                        ; 3 uses
  br i1 %i.mk, label %.lr.ph67.preheader, label %.lr.ph71

.lr.ph67.preheader:                               ; preds = %.preheader38
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ml, i32 4) ; 4 uses
  %i.mm = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.mm to i64
  %i.mn = zext nneg i32 %smax to i64              ; 3 uses
  %i.mo = add nsw i64 %i.mn, -3                   ; 2 uses
  %min.iters.check308 = icmp slt i32 %i.ml, 131
  br i1 %min.iters.check308, label %.lr.ph67.preheader342, label %vector.scevcheck301

vector.scevcheck301:                              ; preds = %.lr.ph67.preheader
  %i.mp = zext nneg i32 %smax to i64
  %i.mq = add nsw i64 %i.mp, -4
  %i.mr = and i64 %i.aw, -2
  %i.ms = mul i64 %i.ax, -2
  %i.mt = shl nsw i64 %i.bc, 1
  %i.mu = add nsw i64 %i.mt, 8
  %i.mv = mul i64 %i.ax, %i.mu
  %i.mw = shl nsw i64 %i.ba, 1
  %i.mx = getelementptr i8, ptr %i.az, i64 %i.mv
  %i.my = getelementptr i8, ptr %i.mx, i64 %i.mw
  %scevgep = getelementptr i8, ptr %i.my, i64 -2  ; 4 uses
  %i.mz = icmp slt i32 %i.av, 0                   ; 2 uses
  %i.na = select i1 %i.mz, i64 %i.ms, i64 %i.mr
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.na, i64 %i.mq) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.nb = sub i64 0, %mul.result
  %i.nc = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.nd = getelementptr i8, ptr %scevgep, i64 %i.nb
  %i.ne = icmp ult ptr %i.nc, %scevgep
  %i.nf = icmp ugt ptr %i.nd, %scevgep
  %i.ng = select i1 %i.mz, i1 %i.nf, i1 %i.ne
  %i.nh = or i1 %i.ng, %mul.overflow
  br i1 %i.nh, label %.lr.ph67.preheader342, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck301
  %scevgep302 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.ni = getelementptr i8, ptr %i.a, i64 %6
  %scevgep303 = getelementptr i8, ptr %i.ni, i64 4
  %i.nj = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.nk = add nsw i64 %i.nj, %6
  %i.nl = mul i64 %i.ax, %i.nk
  %i.nm = shl nsw i64 %i.ba, 1                    ; 2 uses
  %i.nn = getelementptr i8, ptr %i.az, i64 %i.nl
  %i.no = getelementptr i8, ptr %i.nn, i64 %i.nm
  %scevgep304 = getelementptr i8, ptr %i.no, i64 -2 ; 4 uses
  %i.np = add nsw i64 %i.nj, 8
  %i.nq = mul i64 %i.ax, %i.np
  %i.nr = getelementptr i8, ptr %i.az, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 %i.nm
  %scevgep305 = getelementptr i8, ptr %i.ns, i64 -2 ; 4 uses
  %i.nt = icmp ult ptr %scevgep304, %scevgep305
  %umin = select i1 %i.nt, ptr %scevgep304, ptr %scevgep305
  %i.nu = icmp ugt ptr %scevgep304, %scevgep305
  %umax = select i1 %i.nu, ptr %scevgep304, ptr %scevgep305
  %scevgep306 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep302, %scevgep306
  %bound1 = icmp ult ptr %umin, %scevgep303
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph67.preheader342, label %vector.ph309

vector.ph309:                                     ; preds = %vector.memcheck
  %n.vec310 = and i64 %i.mo, -8                   ; 3 uses
  %i.nv = or disjoint i64 %n.vec310, 4
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next313, %vector.body311 ] ; 9 uses
  %i.nw = or disjoint i64 %index312, 4            ; 2 uses
  %i.nx = or disjoint i64 %index312, 5
  %i.ny = or disjoint i64 %index312, 6
  %i.nz = or disjoint i64 %index312, 7
  %i.oa = add i64 %index312, 8
  %i.ob = add i64 %index312, 9
  %i.oc = add i64 %index312, 10
  %i.od = add i64 %index312, 11
  %i.oe = mul nuw nsw i64 %i.ax, %i.nw
  %i.of = mul nuw nsw i64 %i.ax, %i.nx
  %i.og = mul nuw nsw i64 %i.ax, %i.ny
  %i.oh = mul nuw nsw i64 %i.ax, %i.nz
  %i.oi = mul nuw nsw i64 %i.ax, %i.oa
  %i.oj = mul nuw nsw i64 %i.ax, %i.ob
  %i.ok = mul nuw nsw i64 %i.ax, %i.oc
  %i.ol = mul nuw nsw i64 %i.ax, %i.od
  %i.om = getelementptr [2 x i8], ptr %i.be, i64 %i.oe
  %i.on = getelementptr [2 x i8], ptr %i.be, i64 %i.of
  %i.oo = getelementptr [2 x i8], ptr %i.be, i64 %i.og
  %i.op = getelementptr [2 x i8], ptr %i.be, i64 %i.oh
  %i.oq = getelementptr [2 x i8], ptr %i.be, i64 %i.oi
  %i.or = getelementptr [2 x i8], ptr %i.be, i64 %i.oj
  %i.os = getelementptr [2 x i8], ptr %i.be, i64 %i.ok
  %i.ot = getelementptr [2 x i8], ptr %i.be, i64 %i.ol
  %i.ou = getelementptr i8, ptr %i.om, i64 -2
  %i.ov = getelementptr i8, ptr %i.on, i64 -2
  %i.ow = getelementptr i8, ptr %i.oo, i64 -2
  %i.ox = getelementptr i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -2
  %i.oz = getelementptr i8, ptr %i.or, i64 -2
  %i.pa = getelementptr i8, ptr %i.os, i64 -2
  %i.pb = getelementptr i8, ptr %i.ot, i64 -2
  %i.pc = load i16, ptr %i.ou, align 2, !tbaa !82, !alias.scope !444
  %i.pd = load i16, ptr %i.ov, align 2, !tbaa !82, !alias.scope !444
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !82, !alias.scope !444
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !82, !alias.scope !444
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !82, !alias.scope !444
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !82, !alias.scope !444
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !82, !alias.scope !444
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !82, !alias.scope !444
  %i.pk = insertelement <8 x i16> poison, i16 %i.pc, i64 0
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 1
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 2
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 3
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 4
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 5
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 6
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 7
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.nw
  store <8 x i16> %i.pr, ptr %i.ps, align 2, !tbaa !82, !alias.scope !445, !noalias !444
  %index.next313 = add nuw i64 %index312, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next313, %n.vec310
  br i1 %i.pt, label %middle.block314, label %vector.body311, !llvm.loop !439

middle.block314:                                  ; preds = %vector.body311
  %cmp.n315 = icmp eq i64 %i.mo, %n.vec310
  br i1 %cmp.n315, label %._crit_edge68, label %.lr.ph67.preheader342

.lr.ph67.preheader342:                            ; preds = %vector.memcheck, %vector.scevcheck301, %.lr.ph67.preheader, %middle.block314
  %indvars.iv143.ph = phi i64 [ 4, %vector.memcheck ], [ 4, %vector.scevcheck301 ], [ 4, %.lr.ph67.preheader ], [ %i.nv, %middle.block314 ] ; 4 uses
  %i.pu = add nuw nsw i64 %i.mn, 1
  %i.pv = sub nsw i64 %i.pu, %indvars.iv143.ph
  %i.pw = sub nsw i64 %i.mn, %indvars.iv143.ph
  %xtraiter = and i64 %i.pv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader342, %.lr.ph67.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %.lr.ph67.prol ], [ %indvars.iv143.ph, %.lr.ph67.preheader342 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader342 ]
  %i.px = mul nuw nsw i64 %i.ax, %indvars.iv143.prol
  %i.py = getelementptr [2 x i8], ptr %i.be, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 -2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !82
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143.prol
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !82
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !440

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader342
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %.lr.ph67.preheader342 ], [ %indvars.iv.next144.prol, %.lr.ph67.prol ]
  %i.qc = icmp ult i64 %i.pw, 3
  br i1 %i.qc, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph67 ], [ %indvars.iv143.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.qd = mul nuw nsw i64 %i.ax, %indvars.iv143
  %i.qe = getelementptr [2 x i8], ptr %i.be, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.qi = mul nuw nsw i64 %i.ax, %indvars.iv.next144
  %i.qj = getelementptr [2 x i8], ptr %i.be, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 -2
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !82
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144
  store i16 %i.ql, ptr %i.qm, align 2, !tbaa !82
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %i.qn = mul nuw nsw i64 %i.ax, %indvars.iv.next144.1
  %i.qo = getelementptr [2 x i8], ptr %i.be, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 -2
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !82
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.1
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !82
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %i.qs = mul nuw nsw i64 %i.ax, %indvars.iv.next144.2
  %i.qt = getelementptr [2 x i8], ptr %i.be, i64 %i.qs
  %i.qu = getelementptr i8, ptr %i.qt, i64 -2
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !82
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.2
  store i16 %i.qv, ptr %i.qw, align 2, !tbaa !82
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge68, label %.lr.ph67, !llvm.loop !441

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block314
  %i.qx = icmp samesign ult i32 %i.cx, 4
  br i1 %i.qx, label %.lr.ph71, label %.loopexit37

.lr.ph71:                                         ; preds = %.preheader38, %._crit_edge68
  %.pn260 = sext i32 %i.ml to i64
  %.pn259 = mul nsw i64 %i.ax, %.pn260
  %.pn = getelementptr [2 x i8], ptr %i.be, i64 %.pn259
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.qy = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.qz = sub nsw i32 4, %i.cx                    ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.rb = sext i32 %i.cx to i64
  %i.rc = getelementptr inbounds [2 x i8], ptr %i.ra, i64 %i.rb ; 2 uses
  %i.rd = zext nneg i32 %i.qz to i64              ; 2 uses
  %i.re = call i64 @llvm.umax.i64(i64 %i.rd, i64 4)
  %i.rf = add nsw i64 %i.re, -1
  %i.rg = lshr i64 %i.rf, 2
  %i.rh = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %min.iters.check318 = icmp ult i32 %i.qz, 13
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph71
  %n.vec320 = and i64 %i.rh, 9223372036854775804  ; 3 uses
  %i.ri = shl i64 %n.vec320, 2
  %broadcast.splatinsert321 = insertelement <2 x i64> poison, i64 %i.qy, i64 0
  %broadcast.splat322 = shufflevector <2 x i64> %broadcast.splatinsert321, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph319
  %index324 = phi i64 [ 0, %vector.ph319 ], [ %index.next325, %vector.body323 ] ; 2 uses
  %.idx330 = shl nuw i64 %index324, 3
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.idx330 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store <2 x i64> %broadcast.splat322, ptr %i.rj, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat322, ptr %i.rk, align 2, !tbaa !78
  %index.next325 = add nuw i64 %index324, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next325, %n.vec320
  br i1 %i.rl, label %middle.block326, label %vector.body323, !llvm.loop !442

middle.block326:                                  ; preds = %vector.body323
  %cmp.n327 = icmp eq i64 %i.rh, %n.vec320
  br i1 %cmp.n327, label %.loopexit37, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %.lr.ph71, %middle.block326
  %indvars.iv146.ph = phi i64 [ 0, %.lr.ph71 ], [ %i.ri, %middle.block326 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %scalar.ph317 ], [ %indvars.iv146.ph, %scalar.ph317.preheader ] ; 2 uses
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.rc, i64 %indvars.iv146
  store i64 %i.qy, ptr %i.rm, align 2, !tbaa !78
end_hunk_8
begin_hunk_9_@intra_pred_3_12:bb.a
  %.1727.i = phi i32 [ %i.ch, %bb.l ], [ 0, %bb.m ], [ %i.js, %bb.n ]
  %or.cond11.i = select i1 %i.cu, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge65

bb.o:                                             ; preds = %.loopexit47
  %i.ju = ashr i32 %i.dh, %i.do                   ; 2 uses
  %i.jv = sub nsw i32 %i.bi, %i.ju
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.jv) ; 2 uses
  %i.jw = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.jw, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.o
  %i.jx = add nsw i32 %3, -1
  %i.jy = ashr i32 %i.jx, %i.do
  %i.jz = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !183
  %i.kb = mul nsw i32 %i.jy, %i.bi
  %i.kc = add i32 %i.kb, %i.ju
  %i.kd = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph64, %bb.p
  %indvars.iv137 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next138, %bb.p ] ; 2 uses
  %.0723.i62 = phi i32 [ 0, %.lr.ph64 ], [ %i.km, %bb.p ]
  %i.ke = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.kf = add i32 %i.kc, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [12 x i8], ptr %i.ka, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 10
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !185
  %i.kk = icmp eq i8 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %i.km = or i32 %.0723.i62, %i.kl                ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %i.kn = icmp samesign ult i64 %indvars.iv.next138, %i.kd
  br i1 %i.kn, label %bb.p, label %._crit_edge65.loopexit, !llvm.loop !43

._crit_edge65.loopexit:                           ; preds = %bb.p
  %i.ko = icmp ne i32 %i.km, 0
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.o, %._crit_edge65.loopexit, %.loopexit47
  %.1724.i = phi i1 [ %i.cu, %.loopexit47 ], [ false, %bb.o ], [ %i.ko, %._crit_edge65.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bk, i8 -128, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bl, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.c, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge65 ], [ %i.cf, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge65 ], [ %i.ch, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge65 ], [ %i.cu, %bb.g ] ; 5 uses
  %i.kp = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kq = xor i64 %i.az, -1
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ks, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ks, ptr %i.c, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kt = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ku = sub nsw i64 0, %i.az
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bl, ptr noundef nonnull align 2 dereferenceable(16) %i.kv, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit46

bb.v:                                             ; preds = %bb.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 2 uses
  %i.kx = sub nsw i64 0, %i.az
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.kw, ptr noundef nonnull align 2 dereferenceable(16) %i.kz, i64 16, i1 false)
  %i.la = add nsw i32 %i.dj, 7
  %i.lb = sext i32 %i.la to i64
  %i.lc = sub nsw i64 %i.lb, %i.az
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !82
  %i.lf = zext i16 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, 281479271743489      ; 2 uses
  %i.lh = icmp slt i32 %i.dj, 8
  br i1 %i.lh, label %.lr.ph69, label %.loopexit46

.lr.ph69:                                         ; preds = %bb.v
  %i.li = sub nsw i32 8, %i.dj                    ; 2 uses
  %i.lj = sext i32 %i.dj to i64
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.lj ; 2 uses
  %i.ll = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lm = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 4)
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check328 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check328, label %scalar.ph327.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %.lr.ph69
  %n.vec330 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec330, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph329
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next333, %vector.body331 ] ; 2 uses
  %.idx365 = shl nuw i64 %index332, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx365 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next333 = add nuw i64 %index332, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next333, %n.vec330
  br i1 %i.lt, label %middle.block334, label %vector.body331, !llvm.loop !450

middle.block334:                                  ; preds = %vector.body331
  %cmp.n335 = icmp eq i64 %i.lp, %n.vec330
  br i1 %cmp.n335, label %.loopexit46, label %scalar.ph327.preheader

scalar.ph327.preheader:                           ; preds = %.lr.ph69, %middle.block334
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block334 ]
  br label %scalar.ph327

scalar.ph327:                                     ; preds = %scalar.ph327.preheader, %scalar.ph327
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph327 ], [ %indvars.iv140.ph, %scalar.ph327.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph327, label %.loopexit46, !llvm.loop !451

.loopexit46:                                      ; preds = %scalar.ph327, %middle.block334, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lw, label %.preheader44.preheader, label %.loopexit45

.preheader44.preheader:                           ; preds = %.loopexit46
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx268 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx269 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx270 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx271 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.nc = icmp sgt i32 %i.db, 0
  %i.nd = add i32 %i.db, 7                        ; 3 uses
  br i1 %i.nc, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 8) ; 4 uses
  %i.ne = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ne to i64
  %i.nf = zext nneg i32 %smax to i64              ; 3 uses
  %i.ng = add nsw i64 %i.nf, -7                   ; 2 uses
  %min.iters.check344 = icmp slt i32 %i.nd, 135
  br i1 %min.iters.check344, label %.lr.ph72.preheader378, label %vector.scevcheck337

vector.scevcheck337:                              ; preds = %.lr.ph72.preheader
  %i.nh = zext nneg i32 %smax to i64
  %i.ni = add nsw i64 %i.nh, -8
  %i.nj = and i64 %i.ay, -2
  %i.nk = mul i64 %i.az, -2
  %i.nl = shl nsw i64 %i.be, 1
  %i.nm = add nsw i64 %i.nl, 16
  %i.nn = mul i64 %i.az, %i.nm
  %i.no = shl nsw i64 %i.bc, 1
  %i.np = getelementptr i8, ptr %i.bb, i64 %i.nn
  %i.nq = getelementptr i8, ptr %i.np, i64 %i.no
  %scevgep = getelementptr i8, ptr %i.nq, i64 -2  ; 4 uses
  %i.nr = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.ns = select i1 %i.nr, i64 %i.nk, i64 %i.nj
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ns, i64 %i.ni) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.nt = sub i64 0, %mul.result
  %i.nu = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.nv = getelementptr i8, ptr %scevgep, i64 %i.nt
  %i.nw = icmp ult ptr %i.nu, %scevgep
  %i.nx = icmp ugt ptr %i.nv, %scevgep
  %i.ny = select i1 %i.nr, i1 %i.nx, i1 %i.nw
  %i.nz = or i1 %i.ny, %mul.overflow
  br i1 %i.nz, label %.lr.ph72.preheader378, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck337
  %scevgep338 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.oa = getelementptr i8, ptr %i.a, i64 %6
  %scevgep339 = getelementptr i8, ptr %i.oa, i64 4
  %i.ob = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.oc = add nsw i64 %i.ob, %6
  %i.od = mul i64 %i.az, %i.oc
  %i.oe = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.of = getelementptr i8, ptr %i.bb, i64 %i.od
  %i.og = getelementptr i8, ptr %i.of, i64 %i.oe
  %scevgep340 = getelementptr i8, ptr %i.og, i64 -2 ; 4 uses
  %i.oh = add nsw i64 %i.ob, 16
  %i.oi = mul i64 %i.az, %i.oh
  %i.oj = getelementptr i8, ptr %i.bb, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 %i.oe
  %scevgep341 = getelementptr i8, ptr %i.ok, i64 -2 ; 4 uses
  %i.ol = icmp ult ptr %scevgep340, %scevgep341
  %umin = select i1 %i.ol, ptr %scevgep340, ptr %scevgep341
  %i.om = icmp ugt ptr %scevgep340, %scevgep341
  %umax = select i1 %i.om, ptr %scevgep340, ptr %scevgep341
  %scevgep342 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep338, %scevgep342
  %bound1 = icmp ult ptr %umin, %scevgep339
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader378, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck
  %n.vec346 = and i64 %i.ng, -8                   ; 3 uses
  %i.on = add nsw i64 %n.vec346, 8
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next349, %vector.body347 ] ; 9 uses
  %i.oo = add nuw i64 %index348, 8                ; 2 uses
  %i.op = add i64 %index348, 9
  %i.oq = add i64 %index348, 10
  %i.or = add i64 %index348, 11
  %i.os = add i64 %index348, 12
  %i.ot = add i64 %index348, 13
  %i.ou = add i64 %index348, 14
  %i.ov = add i64 %index348, 15
  %i.ow = mul nuw nsw i64 %i.az, %i.oo
  %i.ox = mul nuw nsw i64 %i.az, %i.op
  %i.oy = mul nuw nsw i64 %i.az, %i.oq
  %i.oz = mul nuw nsw i64 %i.az, %i.or
  %i.pa = mul nuw nsw i64 %i.az, %i.os
  %i.pb = mul nuw nsw i64 %i.az, %i.ot
  %i.pc = mul nuw nsw i64 %i.az, %i.ou
  %i.pd = mul nuw nsw i64 %i.az, %i.ov
  %i.pe = getelementptr [2 x i8], ptr %i.bg, i64 %i.ow
  %i.pf = getelementptr [2 x i8], ptr %i.bg, i64 %i.ox
  %i.pg = getelementptr [2 x i8], ptr %i.bg, i64 %i.oy
  %i.ph = getelementptr [2 x i8], ptr %i.bg, i64 %i.oz
  %i.pi = getelementptr [2 x i8], ptr %i.bg, i64 %i.pa
  %i.pj = getelementptr [2 x i8], ptr %i.bg, i64 %i.pb
  %i.pk = getelementptr [2 x i8], ptr %i.bg, i64 %i.pc
  %i.pl = getelementptr [2 x i8], ptr %i.bg, i64 %i.pd
  %i.pm = getelementptr i8, ptr %i.pe, i64 -2
  %i.pn = getelementptr i8, ptr %i.pf, i64 -2
  %i.po = getelementptr i8, ptr %i.pg, i64 -2
  %i.pp = getelementptr i8, ptr %i.ph, i64 -2
  %i.pq = getelementptr i8, ptr %i.pi, i64 -2
  %i.pr = getelementptr i8, ptr %i.pj, i64 -2
  %i.ps = getelementptr i8, ptr %i.pk, i64 -2
  %i.pt = getelementptr i8, ptr %i.pl, i64 -2
  %i.pu = load i16, ptr %i.pm, align 2, !tbaa !82, !alias.scope !460
  %i.pv = load i16, ptr %i.pn, align 2, !tbaa !82, !alias.scope !460
  %i.pw = load i16, ptr %i.po, align 2, !tbaa !82, !alias.scope !460
  %i.px = load i16, ptr %i.pp, align 2, !tbaa !82, !alias.scope !460
  %i.py = load i16, ptr %i.pq, align 2, !tbaa !82, !alias.scope !460
  %i.pz = load i16, ptr %i.pr, align 2, !tbaa !82, !alias.scope !460
  %i.qa = load i16, ptr %i.ps, align 2, !tbaa !82, !alias.scope !460
  %i.qb = load i16, ptr %i.pt, align 2, !tbaa !82, !alias.scope !460
  %i.qc = insertelement <8 x i16> poison, i16 %i.pu, i64 0
  %i.qd = insertelement <8 x i16> %i.qc, i16 %i.pv, i64 1
  %i.qe = insertelement <8 x i16> %i.qd, i16 %i.pw, i64 2
  %i.qf = insertelement <8 x i16> %i.qe, i16 %i.px, i64 3
  %i.qg = insertelement <8 x i16> %i.qf, i16 %i.py, i64 4
  %i.qh = insertelement <8 x i16> %i.qg, i16 %i.pz, i64 5
  %i.qi = insertelement <8 x i16> %i.qh, i16 %i.qa, i64 6
  %i.qj = insertelement <8 x i16> %i.qi, i16 %i.qb, i64 7
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.oo
  store <8 x i16> %i.qj, ptr %i.qk, align 2, !tbaa !82, !alias.scope !461, !noalias !460
  %index.next349 = add nuw i64 %index348, 8       ; 2 uses
  %i.ql = icmp eq i64 %index.next349, %n.vec346
  br i1 %i.ql, label %middle.block350, label %vector.body347, !llvm.loop !455

middle.block350:                                  ; preds = %vector.body347
  %cmp.n351 = icmp eq i64 %i.ng, %n.vec346
  br i1 %cmp.n351, label %._crit_edge73, label %.lr.ph72.preheader378

.lr.ph72.preheader378:                            ; preds = %vector.memcheck, %vector.scevcheck337, %.lr.ph72.preheader, %middle.block350
  %indvars.iv146.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %vector.scevcheck337 ], [ 8, %.lr.ph72.preheader ], [ %i.on, %middle.block350 ] ; 4 uses
  %i.qm = add nuw nsw i64 %i.nf, 1
  %i.qn = sub nsw i64 %i.qm, %indvars.iv146.ph
  %i.qo = sub nsw i64 %i.nf, %indvars.iv146.ph
  %xtraiter = and i64 %i.qn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader378, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader378 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader378 ]
  %i.qp = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !456

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader378
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader378 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.qu = icmp ult i64 %i.qo, 3
  br i1 %i.qu, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.qv = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.qw = getelementptr [2 x i8], ptr %i.bg, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 -2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !82
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.ra = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.rb = getelementptr [2 x i8], ptr %i.bg, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.rb, i64 -2
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !82
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.rd, ptr %i.re, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.rf = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.rg = getelementptr [2 x i8], ptr %i.bg, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -2
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !82
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.ri, ptr %i.rj, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.rk = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.rl = getelementptr [2 x i8], ptr %i.bg, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rl, i64 -2
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !82
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !457

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block350
  %i.rp = icmp samesign ult i32 %i.db, 8
  br i1 %i.rp, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn295 = sext i32 %i.nd to i64
  %.pn294 = mul nsw i64 %i.az, %.pn295
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn294
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.rq = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rr = sub nsw i32 8, %i.db                    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.rt = sext i32 %i.db to i64
  %i.ru = getelementptr inbounds [2 x i8], ptr %i.rs, i64 %i.rt ; 2 uses
  %i.rv = zext nneg i32 %i.rr to i64              ; 2 uses
  %i.rw = call i64 @llvm.umax.i64(i64 %i.rv, i64 4)
  %i.rx = add nsw i64 %i.rw, -1
  %i.ry = lshr i64 %i.rx, 2
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %min.iters.check354 = icmp ult i32 %i.rr, 13
  br i1 %min.iters.check354, label %scalar.ph353.preheader, label %vector.ph355

vector.ph355:                                     ; preds = %.lr.ph76
  %n.vec356 = and i64 %i.rz, 9223372036854775804  ; 3 uses
  %i.sa = shl i64 %n.vec356, 2
  %broadcast.splatinsert357 = insertelement <2 x i64> poison, i64 %i.rq, i64 0
  %broadcast.splat358 = shufflevector <2 x i64> %broadcast.splatinsert357, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph355
  %index360 = phi i64 [ 0, %vector.ph355 ], [ %index.next361, %vector.body359 ] ; 2 uses
  %.idx366 = shl nuw i64 %index360, 3
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx366 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store <2 x i64> %broadcast.splat358, ptr %i.sb, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat358, ptr %i.sc, align 2, !tbaa !78
  %index.next361 = add nuw i64 %index360, 4       ; 2 uses
  %i.sd = icmp eq i64 %index.next361, %n.vec356
  br i1 %i.sd, label %middle.block362, label %vector.body359, !llvm.loop !458

middle.block362:                                  ; preds = %vector.body359
  %cmp.n363 = icmp eq i64 %i.rz, %n.vec356
  br i1 %cmp.n363, label %.loopexit42, label %scalar.ph353.preheader

scalar.ph353.preheader:                           ; preds = %.lr.ph76, %middle.block362
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph76 ], [ %i.sa, %middle.block362 ]
  br label %scalar.ph353

scalar.ph353:                                     ; preds = %scalar.ph353.preheader, %scalar.ph353
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph353 ], [ %indvars.iv149.ph, %scalar.ph353.preheader ] ; 2 uses
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %indvars.iv149
  store i64 %i.rq, ptr %i.se, align 2, !tbaa !78
end_hunk_9
begin_hunk_10_@intra_pred_4_12:bb.a
bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 6 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ]
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge65 ], [ %i.cf, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge65 ], [ %i.ch, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge65 ], [ %i.cu, %bb.g ] ; 5 uses
  %i.kp = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kq = xor i64 %i.az, -1
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !82 ; 2 uses
  store i16 %i.ks, ptr %i.a, align 16, !tbaa !82
  store i16 %i.ks, ptr %i.c, align 16, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kt = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ku = sub nsw i64 0, %i.az
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.bl, ptr noundef nonnull align 2 dereferenceable(32) %i.kv, i64 32, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit46

bb.v:                                             ; preds = %bb.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 2 uses
  %i.kx = sub nsw i64 0, %i.az
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.kw, ptr noundef nonnull align 2 dereferenceable(32) %i.kz, i64 32, i1 false)
  %i.la = add nsw i32 %i.dj, 15
  %i.lb = sext i32 %i.la to i64
  %i.lc = sub nsw i64 %i.lb, %i.az
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !82
  %i.lf = zext i16 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, 281479271743489      ; 2 uses
  %i.lh = icmp slt i32 %i.dj, 16
  br i1 %i.lh, label %.lr.ph69, label %.loopexit46

.lr.ph69:                                         ; preds = %bb.v
  %i.li = sub nsw i32 16, %i.dj                   ; 2 uses
  %i.lj = sext i32 %i.dj to i64
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.lj ; 2 uses
  %i.ll = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lm = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 4)
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check334 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check334, label %scalar.ph333.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph69
  %n.vec336 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec336, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next339, %vector.body337 ] ; 2 uses
  %.idx371 = shl nuw i64 %index338, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx371 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next339 = add nuw i64 %index338, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next339, %n.vec336
  br i1 %i.lt, label %middle.block340, label %vector.body337, !llvm.loop !466

middle.block340:                                  ; preds = %vector.body337
  %cmp.n341 = icmp eq i64 %i.lp, %n.vec336
  br i1 %cmp.n341, label %.loopexit46, label %scalar.ph333.preheader

scalar.ph333.preheader:                           ; preds = %.lr.ph69, %middle.block340
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block340 ]
  br label %scalar.ph333

scalar.ph333:                                     ; preds = %scalar.ph333.preheader, %scalar.ph333
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph333 ], [ %indvars.iv140.ph, %scalar.ph333.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph333, label %.loopexit46, !llvm.loop !467

.loopexit46:                                      ; preds = %scalar.ph333, %middle.block340, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 5 uses
  br i1 %i.lw, label %.preheader44.preheader, label %.loopexit45

.preheader44.preheader:                           ; preds = %.loopexit46
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx255 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx255
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx256 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx256
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx257 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx257
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx258 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx259 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx260 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx261 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx262 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx263 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx264 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx265 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx266 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx266
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.oi = icmp sgt i32 %i.db, 0
  %i.oj = add i32 %i.db, 15                       ; 3 uses
  br i1 %i.oi, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oj, i32 16) ; 4 uses
  %i.ok = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ok to i64
  %i.ol = zext nneg i32 %smax to i64              ; 3 uses
  %i.om = add nsw i64 %i.ol, -15                  ; 2 uses
  %min.iters.check350 = icmp slt i32 %i.oj, 143
  br i1 %min.iters.check350, label %.lr.ph72.preheader384, label %vector.scevcheck343

vector.scevcheck343:                              ; preds = %.lr.ph72.preheader
  %i.on = zext nneg i32 %smax to i64
  %i.oo = add nsw i64 %i.on, -16
  %i.op = and i64 %i.ay, -2
  %i.oq = mul i64 %i.az, -2
  %i.or = shl nsw i64 %i.be, 1
  %i.os = add nsw i64 %i.or, 32
  %i.ot = mul i64 %i.az, %i.os
  %i.ou = shl nsw i64 %i.bc, 1
  %i.ov = getelementptr i8, ptr %i.bb, i64 %i.ot
  %i.ow = getelementptr i8, ptr %i.ov, i64 %i.ou
  %scevgep = getelementptr i8, ptr %i.ow, i64 -2  ; 4 uses
  %i.ox = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.oy = select i1 %i.ox, i64 %i.oq, i64 %i.op
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.oy, i64 %i.oo) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.oz = sub i64 0, %mul.result
  %i.pa = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.pb = getelementptr i8, ptr %scevgep, i64 %i.oz
  %i.pc = icmp ult ptr %i.pa, %scevgep
  %i.pd = icmp ugt ptr %i.pb, %scevgep
  %i.pe = select i1 %i.ox, i1 %i.pd, i1 %i.pc
  %i.pf = or i1 %i.pe, %mul.overflow
  br i1 %i.pf, label %.lr.ph72.preheader384, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck343
  %scevgep344 = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.pg = getelementptr i8, ptr %i.a, i64 %6
  %scevgep345 = getelementptr i8, ptr %i.pg, i64 4
  %i.ph = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.pi = add nsw i64 %i.ph, %6
  %i.pj = mul i64 %i.az, %i.pi
  %i.pk = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.pl = getelementptr i8, ptr %i.bb, i64 %i.pj
  %i.pm = getelementptr i8, ptr %i.pl, i64 %i.pk
  %scevgep346 = getelementptr i8, ptr %i.pm, i64 -2 ; 4 uses
  %i.pn = add nsw i64 %i.ph, 32
  %i.po = mul i64 %i.az, %i.pn
  %i.pp = getelementptr i8, ptr %i.bb, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.pk
  %scevgep347 = getelementptr i8, ptr %i.pq, i64 -2 ; 4 uses
  %i.pr = icmp ult ptr %scevgep346, %scevgep347
  %umin = select i1 %i.pr, ptr %scevgep346, ptr %scevgep347
  %i.ps = icmp ugt ptr %scevgep346, %scevgep347
  %umax = select i1 %i.ps, ptr %scevgep346, ptr %scevgep347
  %scevgep348 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep344, %scevgep348
  %bound1 = icmp ult ptr %umin, %scevgep345
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader384, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck
  %n.vec352 = and i64 %i.om, -8                   ; 3 uses
  %i.pt = add nsw i64 %n.vec352, 16
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next355, %vector.body353 ] ; 9 uses
  %i.pu = add nuw i64 %index354, 16               ; 2 uses
  %i.pv = add i64 %index354, 17
  %i.pw = add i64 %index354, 18
  %i.px = add i64 %index354, 19
  %i.py = add i64 %index354, 20
  %i.pz = add i64 %index354, 21
  %i.qa = add i64 %index354, 22
  %i.qb = add i64 %index354, 23
  %i.qc = mul nuw nsw i64 %i.az, %i.pu
  %i.qd = mul nuw nsw i64 %i.az, %i.pv
  %i.qe = mul nuw nsw i64 %i.az, %i.pw
  %i.qf = mul nuw nsw i64 %i.az, %i.px
  %i.qg = mul nuw nsw i64 %i.az, %i.py
  %i.qh = mul nuw nsw i64 %i.az, %i.pz
  %i.qi = mul nuw nsw i64 %i.az, %i.qa
  %i.qj = mul nuw nsw i64 %i.az, %i.qb
  %i.qk = getelementptr [2 x i8], ptr %i.bg, i64 %i.qc
  %i.ql = getelementptr [2 x i8], ptr %i.bg, i64 %i.qd
  %i.qm = getelementptr [2 x i8], ptr %i.bg, i64 %i.qe
  %i.qn = getelementptr [2 x i8], ptr %i.bg, i64 %i.qf
  %i.qo = getelementptr [2 x i8], ptr %i.bg, i64 %i.qg
  %i.qp = getelementptr [2 x i8], ptr %i.bg, i64 %i.qh
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qi
  %i.qr = getelementptr [2 x i8], ptr %i.bg, i64 %i.qj
  %i.qs = getelementptr i8, ptr %i.qk, i64 -2
  %i.qt = getelementptr i8, ptr %i.ql, i64 -2
  %i.qu = getelementptr i8, ptr %i.qm, i64 -2
  %i.qv = getelementptr i8, ptr %i.qn, i64 -2
  %i.qw = getelementptr i8, ptr %i.qo, i64 -2
  %i.qx = getelementptr i8, ptr %i.qp, i64 -2
  %i.qy = getelementptr i8, ptr %i.qq, i64 -2
  %i.qz = getelementptr i8, ptr %i.qr, i64 -2
  %i.ra = load i16, ptr %i.qs, align 2, !tbaa !82, !alias.scope !476
  %i.rb = load i16, ptr %i.qt, align 2, !tbaa !82, !alias.scope !476
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !82, !alias.scope !476
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !82, !alias.scope !476
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !82, !alias.scope !476
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !82, !alias.scope !476
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !82, !alias.scope !476
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !82, !alias.scope !476
  %i.ri = insertelement <8 x i16> poison, i16 %i.ra, i64 0
  %i.rj = insertelement <8 x i16> %i.ri, i16 %i.rb, i64 1
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 2
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 3
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 4
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 5
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 6
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 7
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.pu
  store <8 x i16> %i.rp, ptr %i.rq, align 2, !tbaa !82, !alias.scope !477, !noalias !476
  %index.next355 = add nuw i64 %index354, 8       ; 2 uses
  %i.rr = icmp eq i64 %index.next355, %n.vec352
  br i1 %i.rr, label %middle.block356, label %vector.body353, !llvm.loop !471

middle.block356:                                  ; preds = %vector.body353
  %cmp.n357 = icmp eq i64 %i.om, %n.vec352
  br i1 %cmp.n357, label %._crit_edge73, label %.lr.ph72.preheader384

.lr.ph72.preheader384:                            ; preds = %vector.memcheck, %vector.scevcheck343, %.lr.ph72.preheader, %middle.block356
  %indvars.iv146.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %vector.scevcheck343 ], [ 16, %.lr.ph72.preheader ], [ %i.pt, %middle.block356 ] ; 4 uses
  %i.rs = add nuw nsw i64 %i.ol, 1
  %i.rt = sub nsw i64 %i.rs, %indvars.iv146.ph
  %i.ru = sub nsw i64 %i.ol, %indvars.iv146.ph
  %xtraiter = and i64 %i.rt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader384, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader384 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader384 ]
  %i.rv = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.rw = getelementptr [2 x i8], ptr %i.bg, i64 %i.rv
  %i.rx = getelementptr i8, ptr %i.rw, i64 -2
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !82
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.ry, ptr %i.rz, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !472

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader384
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader384 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.sa = icmp ult i64 %i.ru, 3
  br i1 %i.sa, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.sb = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.sc = getelementptr [2 x i8], ptr %i.bg, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 -2
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !82
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.sg = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.sh = getelementptr [2 x i8], ptr %i.bg, i64 %i.sg
  %i.si = getelementptr i8, ptr %i.sh, i64 -2
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !82
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.sj, ptr %i.sk, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.sl = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.sm = getelementptr [2 x i8], ptr %i.bg, i64 %i.sl
  %i.sn = getelementptr i8, ptr %i.sm, i64 -2
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !82
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.sq = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.sr = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.ss = getelementptr i8, ptr %i.sr, i64 -2
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !82
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.st, ptr %i.su, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !473

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block356
  %i.sv = icmp samesign ult i32 %i.db, 16
  br i1 %i.sv, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn301 = sext i32 %i.oj to i64
  %.pn300 = mul nsw i64 %i.az, %.pn301
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn300
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.sw = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.sx = sub nsw i32 16, %i.db                   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.sz = sext i32 %i.db to i64
  %i.ta = getelementptr inbounds [2 x i8], ptr %i.sy, i64 %i.sz ; 2 uses
  %i.tb = zext nneg i32 %i.sx to i64              ; 2 uses
  %i.tc = call i64 @llvm.umax.i64(i64 %i.tb, i64 4)
  %i.td = add nsw i64 %i.tc, -1
  %i.te = lshr i64 %i.td, 2
  %i.tf = add nuw nsw i64 %i.te, 1                ; 2 uses
  %min.iters.check360 = icmp ult i32 %i.sx, 13
  br i1 %min.iters.check360, label %scalar.ph359.preheader, label %vector.ph361

vector.ph361:                                     ; preds = %.lr.ph76
  %n.vec362 = and i64 %i.tf, 9223372036854775804  ; 3 uses
  %i.tg = shl i64 %n.vec362, 2
  %broadcast.splatinsert363 = insertelement <2 x i64> poison, i64 %i.sw, i64 0
  %broadcast.splat364 = shufflevector <2 x i64> %broadcast.splatinsert363, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph361
  %index366 = phi i64 [ 0, %vector.ph361 ], [ %index.next367, %vector.body365 ] ; 2 uses
  %.idx372 = shl nuw i64 %index366, 3
  %i.th = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.idx372 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x i64> %broadcast.splat364, ptr %i.th, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat364, ptr %i.ti, align 2, !tbaa !78
  %index.next367 = add nuw i64 %index366, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next367, %n.vec362
  br i1 %i.tj, label %middle.block368, label %vector.body365, !llvm.loop !474

middle.block368:                                  ; preds = %vector.body365
  %cmp.n369 = icmp eq i64 %i.tf, %n.vec362
  br i1 %cmp.n369, label %.loopexit42, label %scalar.ph359.preheader

scalar.ph359.preheader:                           ; preds = %.lr.ph76, %middle.block368
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph76 ], [ %i.tg, %middle.block368 ]
  br label %scalar.ph359

scalar.ph359:                                     ; preds = %scalar.ph359.preheader, %scalar.ph359
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph359 ], [ %indvars.iv149.ph, %scalar.ph359.preheader ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.ta, i64 %indvars.iv149
  store i64 %i.sw, ptr %i.tk, align 2, !tbaa !78
end_hunk_10
begin_hunk_11_@intra_pred_5_12:bb.a
.preheader45.preheader:                           ; preds = %.loopexit47
  %i.lx = getelementptr i8, ptr %i.bg, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !82
  store i16 %i.ly, ptr %i.bk, align 2, !tbaa !82
  %i.lz = getelementptr [2 x i8], ptr %i.bg, i64 %i.az
  %i.ma = getelementptr i8, ptr %i.lz, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.mb, ptr %i.mc, align 4, !tbaa !82
  %i.md = and i64 %i.ay, -2
  %i.me = getelementptr [2 x i8], ptr %i.bg, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !82
  %.idx = mul i64 %i.az, 6
  %i.mi = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !82
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !82
  %.idx257 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx257
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx258 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx259 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx260 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx261 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx262 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx263 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx264 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx265 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx266 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx266
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx267 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx267
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx268 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  %.idx269 = shl i64 %i.az, 5
  %i.oi = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.oj = getelementptr i8, ptr %i.oi, i64 -2
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !82
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !82
  %.idx270 = mul i64 %i.az, 34
  %i.om = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.on = getelementptr i8, ptr %i.om, i64 -2
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i16 %i.oo, ptr %i.op, align 4, !tbaa !82
  %.idx271 = mul i64 %i.az, 36
  %i.oq = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.or = getelementptr i8, ptr %i.oq, i64 -2
  %i.os = load i16, ptr %i.or, align 2, !tbaa !82
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %i.os, ptr %i.ot, align 2, !tbaa !82
  %.idx272 = mul i64 %i.az, 38
  %i.ou = getelementptr i8, ptr %i.bg, i64 %.idx272
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !82
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i16 %i.ow, ptr %i.ox, align 8, !tbaa !82
  %.idx273 = mul i64 %i.az, 40
  %i.oy = getelementptr i8, ptr %i.bg, i64 %.idx273
  %i.oz = getelementptr i8, ptr %i.oy, i64 -2
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !82
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !82
  %.idx274 = mul i64 %i.az, 42
  %i.pc = getelementptr i8, ptr %i.bg, i64 %.idx274
  %i.pd = getelementptr i8, ptr %i.pc, i64 -2
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !82
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !82
  %.idx275 = mul i64 %i.az, 44
  %i.pg = getelementptr i8, ptr %i.bg, i64 %.idx275
  %i.ph = getelementptr i8, ptr %i.pg, i64 -2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !82
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !82
  %.idx276 = mul i64 %i.az, 46
  %i.pk = getelementptr i8, ptr %i.bg, i64 %.idx276
  %i.pl = getelementptr i8, ptr %i.pk, i64 -2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i16 %i.pm, ptr %i.pn, align 16, !tbaa !82
  %.idx277 = mul i64 %i.az, 48
  %i.po = getelementptr i8, ptr %i.bg, i64 %.idx277
  %i.pp = getelementptr i8, ptr %i.po, i64 -2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !82
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !82
  %.idx278 = mul i64 %i.az, 50
  %i.ps = getelementptr i8, ptr %i.bg, i64 %.idx278
  %i.pt = getelementptr i8, ptr %i.ps, i64 -2
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !82
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i16 %i.pu, ptr %i.pv, align 4, !tbaa !82
  %.idx279 = mul i64 %i.az, 52
  %i.pw = getelementptr i8, ptr %i.bg, i64 %.idx279
  %i.px = getelementptr i8, ptr %i.pw, i64 -2
  %i.py = load i16, ptr %i.px, align 2, !tbaa !82
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !82
  %.idx280 = mul i64 %i.az, 54
  %i.qa = getelementptr i8, ptr %i.bg, i64 %.idx280
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.qc, ptr %i.qd, align 8, !tbaa !82
  %.idx281 = mul i64 %i.az, 56
  %i.qe = getelementptr i8, ptr %i.bg, i64 %.idx281
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %.idx282 = mul i64 %i.az, 58
  %i.qi = getelementptr i8, ptr %i.bg, i64 %.idx282
  %i.qj = getelementptr i8, ptr %i.qi, i64 -2
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 %i.qk, ptr %i.ql, align 4, !tbaa !82
  %.idx283 = mul i64 %i.az, 60
  %i.qm = getelementptr i8, ptr %i.bg, i64 %.idx283
  %i.qn = getelementptr i8, ptr %i.qm, i64 -2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !82
  %.idx284 = mul i64 %i.az, 62
  %i.qq = getelementptr i8, ptr %i.bg, i64 %.idx284
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 %i.qs, ptr %i.qt, align 16, !tbaa !82
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.qu = icmp sgt i32 %i.db, 0
  %i.qv = add i32 %i.db, 31                       ; 3 uses
  br i1 %i.qu, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.qv, i32 32) ; 4 uses
  %i.qw = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.qw to i64
  %i.qx = zext nneg i32 %smax to i64              ; 3 uses
  %i.qy = add nsw i64 %i.qx, -31                  ; 2 uses
  %min.iters.check392 = icmp slt i32 %i.qv, 159
  br i1 %min.iters.check392, label %.lr.ph73.preheader426, label %vector.scevcheck385

vector.scevcheck385:                              ; preds = %.lr.ph73.preheader
  %i.qz = zext nneg i32 %smax to i64
  %i.ra = add nsw i64 %i.qz, -32
  %i.rb = and i64 %i.ay, -2
  %i.rc = mul i64 %i.az, -2
  %i.rd = shl nsw i64 %i.be, 1
  %i.re = add nsw i64 %i.rd, 64
  %i.rf = mul i64 %i.az, %i.re
  %i.rg = shl nsw i64 %i.bc, 1
  %i.rh = getelementptr i8, ptr %i.bb, i64 %i.rf
  %i.ri = getelementptr i8, ptr %i.rh, i64 %i.rg
  %scevgep = getelementptr i8, ptr %i.ri, i64 -2  ; 4 uses
  %i.rj = icmp slt i32 %i.ax, 0                   ; 2 uses
  %i.rk = select i1 %i.rj, i64 %i.rc, i64 %i.rb
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.rk, i64 %i.ra) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.rl = sub i64 0, %mul.result
  %i.rm = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.rn = getelementptr i8, ptr %scevgep, i64 %i.rl
  %i.ro = icmp ult ptr %i.rm, %scevgep
  %i.rp = icmp ugt ptr %i.rn, %scevgep
  %i.rq = select i1 %i.rj, i1 %i.rp, i1 %i.ro
  %i.rr = or i1 %i.rq, %mul.overflow
  br i1 %i.rr, label %.lr.ph73.preheader426, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck385
  %scevgep386 = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %5 = shl nuw i32 %smax, 1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.rs = getelementptr i8, ptr %i.a, i64 %6
  %scevgep387 = getelementptr i8, ptr %i.rs, i64 4
  %i.rt = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.ru = add nsw i64 %i.rt, %6
  %i.rv = mul i64 %i.az, %i.ru
  %i.rw = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.rx = getelementptr i8, ptr %i.bb, i64 %i.rv
  %i.ry = getelementptr i8, ptr %i.rx, i64 %i.rw
  %scevgep388 = getelementptr i8, ptr %i.ry, i64 -2 ; 4 uses
  %i.rz = add nsw i64 %i.rt, 64
  %i.sa = mul i64 %i.az, %i.rz
  %i.sb = getelementptr i8, ptr %i.bb, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 %i.rw
  %scevgep389 = getelementptr i8, ptr %i.sc, i64 -2 ; 4 uses
  %i.sd = icmp ult ptr %scevgep388, %scevgep389
  %umin = select i1 %i.sd, ptr %scevgep388, ptr %scevgep389
  %i.se = icmp ugt ptr %scevgep388, %scevgep389
  %umax = select i1 %i.se, ptr %scevgep388, ptr %scevgep389
  %scevgep390 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep386, %scevgep390
  %bound1 = icmp ult ptr %umin, %scevgep387
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader426, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck
  %n.vec394 = and i64 %i.qy, -8                   ; 3 uses
  %i.sf = add nsw i64 %n.vec394, 32
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph393
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next397, %vector.body395 ] ; 9 uses
  %i.sg = add nuw i64 %index396, 32               ; 2 uses
  %i.sh = add i64 %index396, 33
  %i.si = add i64 %index396, 34
  %i.sj = add i64 %index396, 35
  %i.sk = add i64 %index396, 36
  %i.sl = add i64 %index396, 37
  %i.sm = add i64 %index396, 38
  %i.sn = add i64 %index396, 39
  %i.so = mul nuw nsw i64 %i.az, %i.sg
  %i.sp = mul nuw nsw i64 %i.az, %i.sh
  %i.sq = mul nuw nsw i64 %i.az, %i.si
  %i.sr = mul nuw nsw i64 %i.az, %i.sj
  %i.ss = mul nuw nsw i64 %i.az, %i.sk
  %i.st = mul nuw nsw i64 %i.az, %i.sl
  %i.su = mul nuw nsw i64 %i.az, %i.sm
  %i.sv = mul nuw nsw i64 %i.az, %i.sn
  %i.sw = getelementptr [2 x i8], ptr %i.bg, i64 %i.so
  %i.sx = getelementptr [2 x i8], ptr %i.bg, i64 %i.sp
  %i.sy = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.sz = getelementptr [2 x i8], ptr %i.bg, i64 %i.sr
  %i.ta = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.tb = getelementptr [2 x i8], ptr %i.bg, i64 %i.st
  %i.tc = getelementptr [2 x i8], ptr %i.bg, i64 %i.su
  %i.td = getelementptr [2 x i8], ptr %i.bg, i64 %i.sv
  %i.te = getelementptr i8, ptr %i.sw, i64 -2
  %i.tf = getelementptr i8, ptr %i.sx, i64 -2
  %i.tg = getelementptr i8, ptr %i.sy, i64 -2
  %i.th = getelementptr i8, ptr %i.sz, i64 -2
  %i.ti = getelementptr i8, ptr %i.ta, i64 -2
  %i.tj = getelementptr i8, ptr %i.tb, i64 -2
  %i.tk = getelementptr i8, ptr %i.tc, i64 -2
  %i.tl = getelementptr i8, ptr %i.td, i64 -2
  %i.tm = load i16, ptr %i.te, align 2, !tbaa !82, !alias.scope !492
  %i.tn = load i16, ptr %i.tf, align 2, !tbaa !82, !alias.scope !492
  %i.to = load i16, ptr %i.tg, align 2, !tbaa !82, !alias.scope !492
  %i.tp = load i16, ptr %i.th, align 2, !tbaa !82, !alias.scope !492
  %i.tq = load i16, ptr %i.ti, align 2, !tbaa !82, !alias.scope !492
  %i.tr = load i16, ptr %i.tj, align 2, !tbaa !82, !alias.scope !492
  %i.ts = load i16, ptr %i.tk, align 2, !tbaa !82, !alias.scope !492
  %i.tt = load i16, ptr %i.tl, align 2, !tbaa !82, !alias.scope !492
  %i.tu = insertelement <8 x i16> poison, i16 %i.tm, i64 0
  %i.tv = insertelement <8 x i16> %i.tu, i16 %i.tn, i64 1
  %i.tw = insertelement <8 x i16> %i.tv, i16 %i.to, i64 2
  %i.tx = insertelement <8 x i16> %i.tw, i16 %i.tp, i64 3
  %i.ty = insertelement <8 x i16> %i.tx, i16 %i.tq, i64 4
  %i.tz = insertelement <8 x i16> %i.ty, i16 %i.tr, i64 5
  %i.ua = insertelement <8 x i16> %i.tz, i16 %i.ts, i64 6
  %i.ub = insertelement <8 x i16> %i.ua, i16 %i.tt, i64 7
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.sg
  store <8 x i16> %i.ub, ptr %i.uc, align 2, !tbaa !82, !alias.scope !493, !noalias !492
  %index.next397 = add nuw i64 %index396, 8       ; 2 uses
  %i.ud = icmp eq i64 %index.next397, %n.vec394
  br i1 %i.ud, label %middle.block398, label %vector.body395, !llvm.loop !487

middle.block398:                                  ; preds = %vector.body395
  %cmp.n399 = icmp eq i64 %i.qy, %n.vec394
  br i1 %cmp.n399, label %._crit_edge74, label %.lr.ph73.preheader426

.lr.ph73.preheader426:                            ; preds = %vector.memcheck, %vector.scevcheck385, %.lr.ph73.preheader, %middle.block398
  %indvars.iv148.ph = phi i64 [ 32, %vector.memcheck ], [ 32, %vector.scevcheck385 ], [ 32, %.lr.ph73.preheader ], [ %i.sf, %middle.block398 ] ; 4 uses
  %i.ue = add nuw nsw i64 %i.qx, 1
  %i.uf = sub nsw i64 %i.ue, %indvars.iv148.ph
  %i.ug = sub nsw i64 %i.qx, %indvars.iv148.ph
  %xtraiter = and i64 %i.uf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader426, %.lr.ph73.prol
  %indvars.iv148.prol = phi i64 [ %indvars.iv.next149.prol, %.lr.ph73.prol ], [ %indvars.iv148.ph, %.lr.ph73.preheader426 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader426 ]
  %i.uh = mul nuw nsw i64 %i.az, %indvars.iv148.prol
  %i.ui = getelementptr [2 x i8], ptr %i.bg, i64 %i.uh
  %i.uj = getelementptr i8, ptr %i.ui, i64 -2
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !82
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148.prol
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !82
  %indvars.iv.next149.prol = add nuw nsw i64 %indvars.iv148.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !488

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader426
  %indvars.iv148.unr = phi i64 [ %indvars.iv148.ph, %.lr.ph73.preheader426 ], [ %indvars.iv.next149.prol, %.lr.ph73.prol ]
  %i.um = icmp ult i64 %i.ug, 3
  br i1 %i.um, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.3, %.lr.ph73 ], [ %indvars.iv148.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.un = mul nuw nsw i64 %i.az, %indvars.iv148
  %i.uo = getelementptr [2 x i8], ptr %i.bg, i64 %i.un
  %i.up = getelementptr i8, ptr %i.uo, i64 -2
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !82
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148
  store i16 %i.uq, ptr %i.ur, align 2, !tbaa !82
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.us = mul nuw nsw i64 %i.az, %indvars.iv.next149
  %i.ut = getelementptr [2 x i8], ptr %i.bg, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.ut, i64 -2
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !82
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !82
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2 ; 2 uses
  %i.ux = mul nuw nsw i64 %i.az, %indvars.iv.next149.1
  %i.uy = getelementptr [2 x i8], ptr %i.bg, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 -2
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !82
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.1
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !82
  %indvars.iv.next149.2 = add nuw nsw i64 %indvars.iv148, 3 ; 2 uses
  %i.vc = mul nuw nsw i64 %i.az, %indvars.iv.next149.2
  %i.vd = getelementptr [2 x i8], ptr %i.bg, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 -2
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !82
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.2
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !82
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv148, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next149.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !489

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block398
  %i.vh = icmp samesign ult i32 %i.db, 32
  br i1 %i.vh, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn343 = sext i32 %i.qv to i64
  %.pn342 = mul nsw i64 %i.az, %.pn343
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn342
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.vi = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.vj = sub nsw i32 32, %i.db                   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.vl = sext i32 %i.db to i64
  %i.vm = getelementptr inbounds [2 x i8], ptr %i.vk, i64 %i.vl ; 2 uses
  %i.vn = zext nneg i32 %i.vj to i64              ; 2 uses
  %i.vo = call i64 @llvm.umax.i64(i64 %i.vn, i64 4)
  %i.vp = add nsw i64 %i.vo, -1
  %i.vq = lshr i64 %i.vp, 2
  %i.vr = add nuw nsw i64 %i.vq, 1                ; 2 uses
  %min.iters.check402 = icmp ult i32 %i.vj, 13
  br i1 %min.iters.check402, label %scalar.ph401.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %.lr.ph77
  %n.vec404 = and i64 %i.vr, 9223372036854775804  ; 3 uses
  %i.vs = shl i64 %n.vec404, 2
  %broadcast.splatinsert405 = insertelement <2 x i64> poison, i64 %i.vi, i64 0
  %broadcast.splat406 = shufflevector <2 x i64> %broadcast.splatinsert405, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph403
  %index408 = phi i64 [ 0, %vector.ph403 ], [ %index.next409, %vector.body407 ] ; 2 uses
  %.idx414 = shl nuw i64 %index408, 3
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx414 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store <2 x i64> %broadcast.splat406, ptr %i.vt, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat406, ptr %i.vu, align 2, !tbaa !78
  %index.next409 = add nuw i64 %index408, 4       ; 2 uses
  %i.vv = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.vv, label %middle.block410, label %vector.body407, !llvm.loop !490

middle.block410:                                  ; preds = %vector.body407
  %cmp.n411 = icmp eq i64 %i.vr, %n.vec404
  br i1 %cmp.n411, label %.loopexit43, label %scalar.ph401.preheader

scalar.ph401.preheader:                           ; preds = %.lr.ph77, %middle.block410
  %indvars.iv151.ph = phi i64 [ 0, %.lr.ph77 ], [ %i.vs, %middle.block410 ]
  br label %scalar.ph401

scalar.ph401:                                     ; preds = %scalar.ph401.preheader, %scalar.ph401
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %scalar.ph401 ], [ %indvars.iv151.ph, %scalar.ph401.preheader ] ; 2 uses
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.vm, i64 %indvars.iv151
  store i64 %i.vi, ptr %i.vw, align 2, !tbaa !78
end_hunk_11
