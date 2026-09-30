Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pred?download=true
loop-unroll.NumCompletelyUnrolled: 289
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 353
begin_hunk_0_@intra_pred_2_9:bb.a
  %i.iz = add nsw i32 %3, -1
  %i.ja = ashr i32 %i.iz, %i.dk
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !183
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
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge61 ], [ %i.bx, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge61 ], [ %i.bz, %bb.g ] ; 2 uses
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge61 ], [ %i.cb, %bb.g ] ; 4 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge61 ], [ %i.cd, %bb.g ] ; 5 uses
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
  %min.iters.check298 = icmp ult i32 %i.lg, 13
  br i1 %min.iters.check298, label %scalar.ph297.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph65
  %n.vec300 = and i64 %i.ln, 9223372036854775804  ; 3 uses
  %i.lo = shl i64 %n.vec300, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next303, %vector.body301 ] ; 2 uses
  %.idx335 = shl nuw i64 %index302, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %.idx335 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lp, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.lq, align 2, !tbaa !78
  %index.next303 = add nuw i64 %index302, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next303, %n.vec300
  br i1 %i.lr, label %middle.block304, label %vector.body301, !llvm.loop !224

middle.block304:                                  ; preds = %vector.body301
  %cmp.n305 = icmp eq i64 %i.ln, %n.vec300
  br i1 %cmp.n305, label %.loopexit42, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %.lr.ph65, %middle.block304
  %indvars.iv138.ph = phi i64 [ 0, %.lr.ph65 ], [ %i.lo, %middle.block304 ]
  br label %scalar.ph297

scalar.ph297:                                     ; preds = %scalar.ph297.preheader, %scalar.ph297
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %scalar.ph297 ], [ %indvars.iv138.ph, %scalar.ph297.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv138
  store i64 %i.le, ptr %i.ls, align 2, !tbaa !78
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %i.lt = icmp samesign ult i64 %indvars.iv.next139, %i.lj
  br i1 %i.lt, label %scalar.ph297, label %.loopexit42, !llvm.loop !225

.loopexit42:                                      ; preds = %scalar.ph297, %middle.block304, %bb.v, %bb.u
  %i.lu = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %i.ml = add i32 %i.cx, 3                        ; 2 uses
  br i1 %i.mk, label %.lr.ph68.preheader, label %.lr.ph72

.lr.ph68.preheader:                               ; preds = %.preheader39
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ml, i32 4) ; 4 uses
  %i.mm = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.mm to i64
  %i.mn = zext nneg i32 %smax to i64              ; 3 uses
  %i.mo = add nsw i64 %i.mn, -3                   ; 3 uses
  %min.iters.check314 = icmp ult i64 %i.mo, 128
  br i1 %min.iters.check314, label %.lr.ph68.preheader348, label %vector.scevcheck307

vector.scevcheck307:                              ; preds = %.lr.ph68.preheader
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
  br i1 %i.nh, label %.lr.ph68.preheader348, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck307
  %scevgep308 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ni = shl nuw i32 %smax, 1
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = getelementptr i8, ptr %i.a, i64 %i.nj
  %scevgep309 = getelementptr i8, ptr %i.nk, i64 4
  %i.nl = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.nm = add nsw i64 %i.nl, %i.nj
  %i.nn = mul i64 %i.ax, %i.nm
  %i.no = shl nsw i64 %i.ba, 1                    ; 2 uses
  %i.np = getelementptr i8, ptr %i.az, i64 %i.nn
  %i.nq = getelementptr i8, ptr %i.np, i64 %i.no
  %scevgep310 = getelementptr i8, ptr %i.nq, i64 -2 ; 4 uses
  %i.nr = add nsw i64 %i.nl, 8
  %i.ns = mul i64 %i.ax, %i.nr
  %i.nt = getelementptr i8, ptr %i.az, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 %i.no
  %scevgep311 = getelementptr i8, ptr %i.nu, i64 -2 ; 4 uses
  %i.nv = icmp ult ptr %scevgep310, %scevgep311
  %umin = select i1 %i.nv, ptr %scevgep310, ptr %scevgep311
  %i.nw = icmp ugt ptr %scevgep310, %scevgep311
  %umax = select i1 %i.nw, ptr %scevgep310, ptr %scevgep311
  %scevgep312 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep308, %scevgep312
  %bound1 = icmp ult ptr %umin, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph68.preheader348, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck
  %n.vec316 = and i64 %i.mo, -8                   ; 3 uses
  %i.nx = or disjoint i64 %n.vec316, 4
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next319, %vector.body317 ] ; 9 uses
  %i.ny = or disjoint i64 %index318, 4            ; 2 uses
  %i.nz = or disjoint i64 %index318, 5
  %i.oa = or disjoint i64 %index318, 6
  %i.ob = or disjoint i64 %index318, 7
  %i.oc = add i64 %index318, 8
  %i.od = add i64 %index318, 9
  %i.oe = add i64 %index318, 10
  %i.of = add i64 %index318, 11
  %i.og = mul nuw nsw i64 %i.ax, %i.ny
  %i.oh = mul nuw nsw i64 %i.ax, %i.nz
  %i.oi = mul nuw nsw i64 %i.ax, %i.oa
  %i.oj = mul nuw nsw i64 %i.ax, %i.ob
  %i.ok = mul nuw nsw i64 %i.ax, %i.oc
  %i.ol = mul nuw nsw i64 %i.ax, %i.od
  %i.om = mul nuw nsw i64 %i.ax, %i.oe
  %i.on = mul nuw nsw i64 %i.ax, %i.of
  %i.oo = getelementptr [2 x i8], ptr %i.be, i64 %i.og
  %i.op = getelementptr [2 x i8], ptr %i.be, i64 %i.oh
  %i.oq = getelementptr [2 x i8], ptr %i.be, i64 %i.oi
  %i.or = getelementptr [2 x i8], ptr %i.be, i64 %i.oj
  %i.os = getelementptr [2 x i8], ptr %i.be, i64 %i.ok
  %i.ot = getelementptr [2 x i8], ptr %i.be, i64 %i.ol
  %i.ou = getelementptr [2 x i8], ptr %i.be, i64 %i.om
  %i.ov = getelementptr [2 x i8], ptr %i.be, i64 %i.on
  %i.ow = getelementptr i8, ptr %i.oo, i64 -2
  %i.ox = getelementptr i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -2
  %i.oz = getelementptr i8, ptr %i.or, i64 -2
  %i.pa = getelementptr i8, ptr %i.os, i64 -2
  %i.pb = getelementptr i8, ptr %i.ot, i64 -2
  %i.pc = getelementptr i8, ptr %i.ou, i64 -2
  %i.pd = getelementptr i8, ptr %i.ov, i64 -2
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !82, !alias.scope !234
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !82, !alias.scope !234
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !82, !alias.scope !234
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !82, !alias.scope !234
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !82, !alias.scope !234
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !82, !alias.scope !234
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !82, !alias.scope !234
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !82, !alias.scope !234
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ny
  store <8 x i16> %i.pt, ptr %i.pu, align 2, !tbaa !82, !alias.scope !235, !noalias !234
  %index.next319 = add nuw i64 %index318, 8       ; 2 uses
  %i.pv = icmp eq i64 %index.next319, %n.vec316
  br i1 %i.pv, label %middle.block320, label %vector.body317, !llvm.loop !229

middle.block320:                                  ; preds = %vector.body317
  %cmp.n321 = icmp eq i64 %i.mo, %n.vec316
  br i1 %cmp.n321, label %._crit_edge69, label %.lr.ph68.preheader348

.lr.ph68.preheader348:                            ; preds = %vector.memcheck, %vector.scevcheck307, %.lr.ph68.preheader, %middle.block320
  %indvars.iv144.ph = phi i64 [ 4, %vector.memcheck ], [ 4, %vector.scevcheck307 ], [ 4, %.lr.ph68.preheader ], [ %i.nx, %middle.block320 ] ; 4 uses
  %i.pw = add nuw nsw i64 %i.mn, 1
  %i.px = sub nsw i64 %i.pw, %indvars.iv144.ph
  %i.py = sub nsw i64 %i.mn, %indvars.iv144.ph
  %xtraiter = and i64 %i.px, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol

.lr.ph68.prol:                                    ; preds = %.lr.ph68.preheader348, %.lr.ph68.prol
  %indvars.iv144.prol = phi i64 [ %indvars.iv.next145.prol, %.lr.ph68.prol ], [ %indvars.iv144.ph, %.lr.ph68.preheader348 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph68.prol ], [ 0, %.lr.ph68.preheader348 ]
  %i.pz = mul nuw nsw i64 %i.ax, %indvars.iv144.prol
  %i.qa = getelementptr [2 x i8], ptr %i.be, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv144.prol
  store i16 %i.qc, ptr %i.qd, align 2, !tbaa !82
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol, !llvm.loop !230

.lr.ph68.prol.loopexit:                           ; preds = %.lr.ph68.prol, %.lr.ph68.preheader348
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph68.preheader348 ], [ %indvars.iv.next145.prol, %.lr.ph68.prol ]
  %i.qe = icmp ult i64 %i.py, 3
  br i1 %i.qe, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.3, %.lr.ph68 ], [ %indvars.iv144.unr, %.lr.ph68.prol.loopexit ] ; 6 uses
  %i.qf = mul nuw nsw i64 %i.ax, %indvars.iv144
  %i.qg = getelementptr [2 x i8], ptr %i.be, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -2
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !82
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv144
  store i16 %i.qi, ptr %i.qj, align 2, !tbaa !82
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.qk = mul nuw nsw i64 %i.ax, %indvars.iv.next145
  %i.ql = getelementptr [2 x i8], ptr %i.be, i64 %i.qk
  %i.qm = getelementptr i8, ptr %i.ql, i64 -2
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !82
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next145
  store i16 %i.qn, ptr %i.qo, align 2, !tbaa !82
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %i.qp = mul nuw nsw i64 %i.ax, %indvars.iv.next145.1
  %i.qq = getelementptr [2 x i8], ptr %i.be, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next145.1
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !82
  %indvars.iv.next145.2 = add nuw nsw i64 %indvars.iv144, 3 ; 2 uses
  %i.qu = mul nuw nsw i64 %i.ax, %indvars.iv.next145.2
  %i.qv = getelementptr [2 x i8], ptr %i.be, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 -2
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !82
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next145.2
  store i16 %i.qx, ptr %i.qy, align 2, !tbaa !82
  %indvars.iv.next145.3 = add nuw nsw i64 %indvars.iv144, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next145.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge69, label %.lr.ph68, !llvm.loop !231

._crit_edge69:                                    ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68, %middle.block320
  %i.qz = icmp samesign ult i32 %i.cx, 4
  br i1 %i.qz, label %.lr.ph72, label %.loopexit38

.lr.ph72:                                         ; preds = %.preheader39, %._crit_edge69
  %.pn266 = sext i32 %i.ml to i64
  %.pn265 = mul nsw i64 %i.ax, %.pn266
  %.pn = getelementptr [2 x i8], ptr %i.be, i64 %.pn265
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.ra = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rb = sub nsw i32 4, %i.cx                    ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.rd = sext i32 %i.cx to i64
  %i.re = getelementptr inbounds [2 x i8], ptr %i.rc, i64 %i.rd ; 2 uses
  %i.rf = zext nneg i32 %i.rb to i64              ; 2 uses
  %i.rg = call i64 @llvm.umax.i64(i64 %i.rf, i64 4)
end_hunk_0
begin_hunk_1_@intra_pred_3_9:bb.a
  %i.jt = icmp samesign ult i64 %indvars.iv.next136, %i.jj
  br i1 %i.jt, label %bb.n, label %.loopexit48, !llvm.loop !16

.loopexit48:                                      ; preds = %bb.n, %bb.m, %bb.l
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
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge66 ], [ %i.cb, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge66 ], [ %i.cd, %bb.g ] ; 2 uses
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
  %min.iters.check333 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check333, label %scalar.ph332.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph70
  %n.vec335 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec335, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next338, %vector.body336 ] ; 2 uses
  %.idx370 = shl nuw i64 %index337, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx370 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next338 = add nuw i64 %index337, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next338, %n.vec335
  br i1 %i.lt, label %middle.block339, label %vector.body336, !llvm.loop !240

middle.block339:                                  ; preds = %vector.body336
  %cmp.n340 = icmp eq i64 %i.lp, %n.vec335
  br i1 %cmp.n340, label %.loopexit47, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %.lr.ph70, %middle.block339
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph70 ], [ %i.lq, %middle.block339 ]
  br label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332.preheader, %scalar.ph332
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph332 ], [ %indvars.iv141.ph, %scalar.ph332.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv141
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next142, %i.ll
  br i1 %i.lv, label %scalar.ph332, label %.loopexit47, !llvm.loop !241

.loopexit47:                                      ; preds = %scalar.ph332, %middle.block339, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.nc = icmp sgt i32 %i.db, 0
  %i.nd = add i32 %i.db, 7                        ; 2 uses
  br i1 %i.nc, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 8) ; 4 uses
  %i.ne = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ne to i64
  %i.nf = zext nneg i32 %smax to i64              ; 3 uses
  %i.ng = add nsw i64 %i.nf, -7                   ; 3 uses
  %min.iters.check349 = icmp ult i64 %i.ng, 128
  br i1 %min.iters.check349, label %.lr.ph73.preheader383, label %vector.scevcheck342

vector.scevcheck342:                              ; preds = %.lr.ph73.preheader
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
  br i1 %i.nz, label %.lr.ph73.preheader383, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck342
  %scevgep343 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.oa = shl nuw i32 %smax, 1
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr i8, ptr %i.a, i64 %i.ob
  %scevgep344 = getelementptr i8, ptr %i.oc, i64 4
  %i.od = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.oe = add nsw i64 %i.od, %i.ob
  %i.of = mul i64 %i.az, %i.oe
  %i.og = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.oh = getelementptr i8, ptr %i.bb, i64 %i.of
  %i.oi = getelementptr i8, ptr %i.oh, i64 %i.og
  %scevgep345 = getelementptr i8, ptr %i.oi, i64 -2 ; 4 uses
  %i.oj = add nsw i64 %i.od, 16
  %i.ok = mul i64 %i.az, %i.oj
  %i.ol = getelementptr i8, ptr %i.bb, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.ol, i64 %i.og
  %scevgep346 = getelementptr i8, ptr %i.om, i64 -2 ; 4 uses
  %i.on = icmp ult ptr %scevgep345, %scevgep346
  %umin = select i1 %i.on, ptr %scevgep345, ptr %scevgep346
  %i.oo = icmp ugt ptr %scevgep345, %scevgep346
  %umax = select i1 %i.oo, ptr %scevgep345, ptr %scevgep346
  %scevgep347 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep343, %scevgep347
  %bound1 = icmp ult ptr %umin, %scevgep344
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader383, label %vector.ph350

vector.ph350:                                     ; preds = %vector.memcheck
  %n.vec351 = and i64 %i.ng, -8                   ; 3 uses
  %i.op = add nsw i64 %n.vec351, 8
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next354, %vector.body352 ] ; 9 uses
  %i.oq = add nuw i64 %index353, 8                ; 2 uses
  %i.or = add i64 %index353, 9
  %i.os = add i64 %index353, 10
  %i.ot = add i64 %index353, 11
  %i.ou = add i64 %index353, 12
  %i.ov = add i64 %index353, 13
  %i.ow = add i64 %index353, 14
  %i.ox = add i64 %index353, 15
  %i.oy = mul nuw nsw i64 %i.az, %i.oq
  %i.oz = mul nuw nsw i64 %i.az, %i.or
  %i.pa = mul nuw nsw i64 %i.az, %i.os
  %i.pb = mul nuw nsw i64 %i.az, %i.ot
  %i.pc = mul nuw nsw i64 %i.az, %i.ou
  %i.pd = mul nuw nsw i64 %i.az, %i.ov
  %i.pe = mul nuw nsw i64 %i.az, %i.ow
  %i.pf = mul nuw nsw i64 %i.az, %i.ox
  %i.pg = getelementptr [2 x i8], ptr %i.bg, i64 %i.oy
  %i.ph = getelementptr [2 x i8], ptr %i.bg, i64 %i.oz
  %i.pi = getelementptr [2 x i8], ptr %i.bg, i64 %i.pa
  %i.pj = getelementptr [2 x i8], ptr %i.bg, i64 %i.pb
  %i.pk = getelementptr [2 x i8], ptr %i.bg, i64 %i.pc
  %i.pl = getelementptr [2 x i8], ptr %i.bg, i64 %i.pd
  %i.pm = getelementptr [2 x i8], ptr %i.bg, i64 %i.pe
  %i.pn = getelementptr [2 x i8], ptr %i.bg, i64 %i.pf
  %i.po = getelementptr i8, ptr %i.pg, i64 -2
  %i.pp = getelementptr i8, ptr %i.ph, i64 -2
  %i.pq = getelementptr i8, ptr %i.pi, i64 -2
  %i.pr = getelementptr i8, ptr %i.pj, i64 -2
  %i.ps = getelementptr i8, ptr %i.pk, i64 -2
  %i.pt = getelementptr i8, ptr %i.pl, i64 -2
  %i.pu = getelementptr i8, ptr %i.pm, i64 -2
  %i.pv = getelementptr i8, ptr %i.pn, i64 -2
  %i.pw = load i16, ptr %i.po, align 2, !tbaa !82, !alias.scope !250
  %i.px = load i16, ptr %i.pp, align 2, !tbaa !82, !alias.scope !250
  %i.py = load i16, ptr %i.pq, align 2, !tbaa !82, !alias.scope !250
  %i.pz = load i16, ptr %i.pr, align 2, !tbaa !82, !alias.scope !250
  %i.qa = load i16, ptr %i.ps, align 2, !tbaa !82, !alias.scope !250
  %i.qb = load i16, ptr %i.pt, align 2, !tbaa !82, !alias.scope !250
  %i.qc = load i16, ptr %i.pu, align 2, !tbaa !82, !alias.scope !250
  %i.qd = load i16, ptr %i.pv, align 2, !tbaa !82, !alias.scope !250
  %i.qe = insertelement <8 x i16> poison, i16 %i.pw, i64 0
  %i.qf = insertelement <8 x i16> %i.qe, i16 %i.px, i64 1
  %i.qg = insertelement <8 x i16> %i.qf, i16 %i.py, i64 2
  %i.qh = insertelement <8 x i16> %i.qg, i16 %i.pz, i64 3
  %i.qi = insertelement <8 x i16> %i.qh, i16 %i.qa, i64 4
  %i.qj = insertelement <8 x i16> %i.qi, i16 %i.qb, i64 5
  %i.qk = insertelement <8 x i16> %i.qj, i16 %i.qc, i64 6
  %i.ql = insertelement <8 x i16> %i.qk, i16 %i.qd, i64 7
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.oq
  store <8 x i16> %i.ql, ptr %i.qm, align 2, !tbaa !82, !alias.scope !251, !noalias !250
  %index.next354 = add nuw i64 %index353, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next354, %n.vec351
  br i1 %i.qn, label %middle.block355, label %vector.body352, !llvm.loop !245

middle.block355:                                  ; preds = %vector.body352
  %cmp.n356 = icmp eq i64 %i.ng, %n.vec351
  br i1 %cmp.n356, label %._crit_edge74, label %.lr.ph73.preheader383

.lr.ph73.preheader383:                            ; preds = %vector.memcheck, %vector.scevcheck342, %.lr.ph73.preheader, %middle.block355
  %indvars.iv147.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %vector.scevcheck342 ], [ 8, %.lr.ph73.preheader ], [ %i.op, %middle.block355 ] ; 4 uses
  %i.qo = add nuw nsw i64 %i.nf, 1
  %i.qp = sub nsw i64 %i.qo, %indvars.iv147.ph
  %i.qq = sub nsw i64 %i.nf, %indvars.iv147.ph
  %xtraiter = and i64 %i.qp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader383, %.lr.ph73.prol
  %indvars.iv147.prol = phi i64 [ %indvars.iv.next148.prol, %.lr.ph73.prol ], [ %indvars.iv147.ph, %.lr.ph73.preheader383 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader383 ]
  %i.qr = mul nuw nsw i64 %i.az, %indvars.iv147.prol
  %i.qs = getelementptr [2 x i8], ptr %i.bg, i64 %i.qr
  %i.qt = getelementptr i8, ptr %i.qs, i64 -2
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !82
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147.prol
  store i16 %i.qu, ptr %i.qv, align 2, !tbaa !82
  %indvars.iv.next148.prol = add nuw nsw i64 %indvars.iv147.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !246

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader383
  %indvars.iv147.unr = phi i64 [ %indvars.iv147.ph, %.lr.ph73.preheader383 ], [ %indvars.iv.next148.prol, %.lr.ph73.prol ]
  %i.qw = icmp ult i64 %i.qq, 3
  br i1 %i.qw, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.3, %.lr.ph73 ], [ %indvars.iv147.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.qx = mul nuw nsw i64 %i.az, %indvars.iv147
  %i.qy = getelementptr [2 x i8], ptr %i.bg, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 -2
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !82
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147
  store i16 %i.ra, ptr %i.rb, align 2, !tbaa !82
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.rc = mul nuw nsw i64 %i.az, %indvars.iv.next148
  %i.rd = getelementptr [2 x i8], ptr %i.bg, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 -2
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !82
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148
  store i16 %i.rf, ptr %i.rg, align 2, !tbaa !82
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %i.rh = mul nuw nsw i64 %i.az, %indvars.iv.next148.1
  %i.ri = getelementptr [2 x i8], ptr %i.bg, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 -2
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !82
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.1
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !82
  %indvars.iv.next148.2 = add nuw nsw i64 %indvars.iv147, 3 ; 2 uses
  %i.rm = mul nuw nsw i64 %i.az, %indvars.iv.next148.2
  %i.rn = getelementptr [2 x i8], ptr %i.bg, i64 %i.rm
  %i.ro = getelementptr i8, ptr %i.rn, i64 -2
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !82
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.2
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !82
  %indvars.iv.next148.3 = add nuw nsw i64 %indvars.iv147, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next148.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !247

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block355
  %i.rr = icmp samesign ult i32 %i.db, 8
  br i1 %i.rr, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn300 = sext i32 %i.nd to i64
  %.pn299 = mul nsw i64 %i.az, %.pn300
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn299
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.rs = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rt = sub nsw i32 8, %i.db                    ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.rv = sext i32 %i.db to i64
  %i.rw = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.rv ; 2 uses
  %i.rx = zext nneg i32 %i.rt to i64              ; 2 uses
  %i.ry = call i64 @llvm.umax.i64(i64 %i.rx, i64 4)
end_hunk_1
begin_hunk_2_@intra_pred_4_9:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bl, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.c, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge66, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge66 ], [ %i.cb, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge66 ], [ %i.cd, %bb.g ] ; 2 uses
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
  %min.iters.check339 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check339, label %scalar.ph338.preheader, label %vector.ph340

vector.ph340:                                     ; preds = %.lr.ph70
  %n.vec341 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec341, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next344, %vector.body342 ] ; 2 uses
  %.idx376 = shl nuw i64 %index343, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx376 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next344 = add nuw i64 %index343, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next344, %n.vec341
  br i1 %i.lt, label %middle.block345, label %vector.body342, !llvm.loop !256

middle.block345:                                  ; preds = %vector.body342
  %cmp.n346 = icmp eq i64 %i.lp, %n.vec341
  br i1 %cmp.n346, label %.loopexit47, label %scalar.ph338.preheader

scalar.ph338.preheader:                           ; preds = %.lr.ph70, %middle.block345
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph70 ], [ %i.lq, %middle.block345 ]
  br label %scalar.ph338

scalar.ph338:                                     ; preds = %scalar.ph338.preheader, %scalar.ph338
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph338 ], [ %indvars.iv141.ph, %scalar.ph338.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv141
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next142, %i.ll
  br i1 %i.lv, label %scalar.ph338, label %.loopexit47, !llvm.loop !257

.loopexit47:                                      ; preds = %scalar.ph338, %middle.block345, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.oi = icmp sgt i32 %i.db, 0
  %i.oj = add i32 %i.db, 15                       ; 2 uses
  br i1 %i.oi, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oj, i32 16) ; 4 uses
  %i.ok = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ok to i64
  %i.ol = zext nneg i32 %smax to i64              ; 3 uses
  %i.om = add nsw i64 %i.ol, -15                  ; 3 uses
  %min.iters.check355 = icmp ult i64 %i.om, 128
  br i1 %min.iters.check355, label %.lr.ph73.preheader389, label %vector.scevcheck348

vector.scevcheck348:                              ; preds = %.lr.ph73.preheader
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
  br i1 %i.pf, label %.lr.ph73.preheader389, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck348
  %scevgep349 = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.pg = shl nuw i32 %smax, 1
  %i.ph = zext i32 %i.pg to i64                   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.a, i64 %i.ph
  %scevgep350 = getelementptr i8, ptr %i.pi, i64 4
  %i.pj = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.pk = add nsw i64 %i.pj, %i.ph
  %i.pl = mul i64 %i.az, %i.pk
  %i.pm = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.pn = getelementptr i8, ptr %i.bb, i64 %i.pl
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.pm
  %scevgep351 = getelementptr i8, ptr %i.po, i64 -2 ; 4 uses
  %i.pp = add nsw i64 %i.pj, 32
  %i.pq = mul i64 %i.az, %i.pp
  %i.pr = getelementptr i8, ptr %i.bb, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.pm
  %scevgep352 = getelementptr i8, ptr %i.ps, i64 -2 ; 4 uses
  %i.pt = icmp ult ptr %scevgep351, %scevgep352
  %umin = select i1 %i.pt, ptr %scevgep351, ptr %scevgep352
  %i.pu = icmp ugt ptr %scevgep351, %scevgep352
  %umax = select i1 %i.pu, ptr %scevgep351, ptr %scevgep352
  %scevgep353 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep349, %scevgep353
  %bound1 = icmp ult ptr %umin, %scevgep350
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader389, label %vector.ph356

vector.ph356:                                     ; preds = %vector.memcheck
  %n.vec357 = and i64 %i.om, -8                   ; 3 uses
  %i.pv = add nsw i64 %n.vec357, 16
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next360, %vector.body358 ] ; 9 uses
  %i.pw = add nuw i64 %index359, 16               ; 2 uses
  %i.px = add i64 %index359, 17
  %i.py = add i64 %index359, 18
  %i.pz = add i64 %index359, 19
  %i.qa = add i64 %index359, 20
  %i.qb = add i64 %index359, 21
  %i.qc = add i64 %index359, 22
  %i.qd = add i64 %index359, 23
  %i.qe = mul nuw nsw i64 %i.az, %i.pw
  %i.qf = mul nuw nsw i64 %i.az, %i.px
  %i.qg = mul nuw nsw i64 %i.az, %i.py
  %i.qh = mul nuw nsw i64 %i.az, %i.pz
  %i.qi = mul nuw nsw i64 %i.az, %i.qa
  %i.qj = mul nuw nsw i64 %i.az, %i.qb
  %i.qk = mul nuw nsw i64 %i.az, %i.qc
  %i.ql = mul nuw nsw i64 %i.az, %i.qd
  %i.qm = getelementptr [2 x i8], ptr %i.bg, i64 %i.qe
  %i.qn = getelementptr [2 x i8], ptr %i.bg, i64 %i.qf
  %i.qo = getelementptr [2 x i8], ptr %i.bg, i64 %i.qg
  %i.qp = getelementptr [2 x i8], ptr %i.bg, i64 %i.qh
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qi
  %i.qr = getelementptr [2 x i8], ptr %i.bg, i64 %i.qj
  %i.qs = getelementptr [2 x i8], ptr %i.bg, i64 %i.qk
  %i.qt = getelementptr [2 x i8], ptr %i.bg, i64 %i.ql
  %i.qu = getelementptr i8, ptr %i.qm, i64 -2
  %i.qv = getelementptr i8, ptr %i.qn, i64 -2
  %i.qw = getelementptr i8, ptr %i.qo, i64 -2
  %i.qx = getelementptr i8, ptr %i.qp, i64 -2
  %i.qy = getelementptr i8, ptr %i.qq, i64 -2
  %i.qz = getelementptr i8, ptr %i.qr, i64 -2
  %i.ra = getelementptr i8, ptr %i.qs, i64 -2
  %i.rb = getelementptr i8, ptr %i.qt, i64 -2
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !82, !alias.scope !266
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !82, !alias.scope !266
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !82, !alias.scope !266
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !82, !alias.scope !266
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !82, !alias.scope !266
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !82, !alias.scope !266
  %i.ri = load i16, ptr %i.ra, align 2, !tbaa !82, !alias.scope !266
  %i.rj = load i16, ptr %i.rb, align 2, !tbaa !82, !alias.scope !266
  %i.rk = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 1
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 2
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 3
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 4
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 5
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 6
  %i.rr = insertelement <8 x i16> %i.rq, i16 %i.rj, i64 7
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.pw
  store <8 x i16> %i.rr, ptr %i.rs, align 2, !tbaa !82, !alias.scope !267, !noalias !266
  %index.next360 = add nuw i64 %index359, 8       ; 2 uses
  %i.rt = icmp eq i64 %index.next360, %n.vec357
  br i1 %i.rt, label %middle.block361, label %vector.body358, !llvm.loop !261

middle.block361:                                  ; preds = %vector.body358
  %cmp.n362 = icmp eq i64 %i.om, %n.vec357
  br i1 %cmp.n362, label %._crit_edge74, label %.lr.ph73.preheader389

.lr.ph73.preheader389:                            ; preds = %vector.memcheck, %vector.scevcheck348, %.lr.ph73.preheader, %middle.block361
  %indvars.iv147.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %vector.scevcheck348 ], [ 16, %.lr.ph73.preheader ], [ %i.pv, %middle.block361 ] ; 4 uses
  %i.ru = add nuw nsw i64 %i.ol, 1
  %i.rv = sub nsw i64 %i.ru, %indvars.iv147.ph
  %i.rw = sub nsw i64 %i.ol, %indvars.iv147.ph
  %xtraiter = and i64 %i.rv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader389, %.lr.ph73.prol
  %indvars.iv147.prol = phi i64 [ %indvars.iv.next148.prol, %.lr.ph73.prol ], [ %indvars.iv147.ph, %.lr.ph73.preheader389 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader389 ]
  %i.rx = mul nuw nsw i64 %i.az, %indvars.iv147.prol
  %i.ry = getelementptr [2 x i8], ptr %i.bg, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 -2
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !82
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147.prol
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !82
  %indvars.iv.next148.prol = add nuw nsw i64 %indvars.iv147.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !262

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader389
  %indvars.iv147.unr = phi i64 [ %indvars.iv147.ph, %.lr.ph73.preheader389 ], [ %indvars.iv.next148.prol, %.lr.ph73.prol ]
  %i.sc = icmp ult i64 %i.rw, 3
  br i1 %i.sc, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.3, %.lr.ph73 ], [ %indvars.iv147.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.sd = mul nuw nsw i64 %i.az, %indvars.iv147
  %i.se = getelementptr [2 x i8], ptr %i.bg, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -2
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !82
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv147
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !82
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.si = mul nuw nsw i64 %i.az, %indvars.iv.next148
  %i.sj = getelementptr [2 x i8], ptr %i.bg, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 -2
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !82
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !82
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %i.sn = mul nuw nsw i64 %i.az, %indvars.iv.next148.1
  %i.so = getelementptr [2 x i8], ptr %i.bg, i64 %i.sn
  %i.sp = getelementptr i8, ptr %i.so, i64 -2
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !82
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.1
  store i16 %i.sq, ptr %i.sr, align 2, !tbaa !82
  %indvars.iv.next148.2 = add nuw nsw i64 %indvars.iv147, 3 ; 2 uses
  %i.ss = mul nuw nsw i64 %i.az, %indvars.iv.next148.2
  %i.st = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 -2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !82
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next148.2
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !82
  %indvars.iv.next148.3 = add nuw nsw i64 %indvars.iv147, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next148.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !263

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block361
  %i.sx = icmp samesign ult i32 %i.db, 16
  br i1 %i.sx, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn306 = sext i32 %i.oj to i64
  %.pn305 = mul nsw i64 %i.az, %.pn306
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn305
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.sy = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.sz = sub nsw i32 16, %i.db                   ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.tb = sext i32 %i.db to i64
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.tb ; 2 uses
  %i.td = zext nneg i32 %i.sz to i64              ; 2 uses
  %i.te = call i64 @llvm.umax.i64(i64 %i.td, i64 4)
end_hunk_2
begin_hunk_3_@intra_pred_5_9:bb.a
.loopexit48:                                      ; preds = %scalar.ph380, %middle.block387, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
  br i1 %i.lw, label %.preheader46.preheader, label %.loopexit47

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
  br label %.loopexit47

.loopexit47:                                      ; preds = %.preheader46.preheader, %.loopexit48
  br i1 %.2738.i, label %.preheader45, label %.loopexit44

.preheader45:                                     ; preds = %.loopexit47
  %i.qu = icmp sgt i32 %i.db, 0
  %i.qv = add i32 %i.db, 31                       ; 2 uses
  br i1 %i.qu, label %.lr.ph74.preheader, label %.lr.ph78

.lr.ph74.preheader:                               ; preds = %.preheader45
  %smax = tail call i32 @llvm.smax.i32(i32 %i.qv, i32 32) ; 4 uses
  %i.qw = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.qw to i64
  %i.qx = zext nneg i32 %smax to i64              ; 3 uses
  %i.qy = add nsw i64 %i.qx, -31                  ; 3 uses
  %min.iters.check397 = icmp ult i64 %i.qy, 128
  br i1 %min.iters.check397, label %.lr.ph74.preheader431, label %vector.scevcheck390

vector.scevcheck390:                              ; preds = %.lr.ph74.preheader
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
  br i1 %i.rr, label %.lr.ph74.preheader431, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck390
  %scevgep391 = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.rs = shl nuw i32 %smax, 1
  %i.rt = zext i32 %i.rs to i64                   ; 2 uses
  %i.ru = getelementptr i8, ptr %i.a, i64 %i.rt
  %scevgep392 = getelementptr i8, ptr %i.ru, i64 4
  %i.rv = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.rw = add nsw i64 %i.rv, %i.rt
  %i.rx = mul i64 %i.az, %i.rw
  %i.ry = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.rz = getelementptr i8, ptr %i.bb, i64 %i.rx
  %i.sa = getelementptr i8, ptr %i.rz, i64 %i.ry
  %scevgep393 = getelementptr i8, ptr %i.sa, i64 -2 ; 4 uses
  %i.sb = add nsw i64 %i.rv, 64
  %i.sc = mul i64 %i.az, %i.sb
  %i.sd = getelementptr i8, ptr %i.bb, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.ry
  %scevgep394 = getelementptr i8, ptr %i.se, i64 -2 ; 4 uses
  %i.sf = icmp ult ptr %scevgep393, %scevgep394
  %umin = select i1 %i.sf, ptr %scevgep393, ptr %scevgep394
  %i.sg = icmp ugt ptr %scevgep393, %scevgep394
  %umax = select i1 %i.sg, ptr %scevgep393, ptr %scevgep394
  %scevgep395 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep391, %scevgep395
  %bound1 = icmp ult ptr %umin, %scevgep392
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph74.preheader431, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck
  %n.vec399 = and i64 %i.qy, -8                   ; 3 uses
  %i.sh = add nsw i64 %n.vec399, 32
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next402, %vector.body400 ] ; 9 uses
  %i.si = add nuw i64 %index401, 32               ; 2 uses
  %i.sj = add i64 %index401, 33
  %i.sk = add i64 %index401, 34
  %i.sl = add i64 %index401, 35
  %i.sm = add i64 %index401, 36
  %i.sn = add i64 %index401, 37
  %i.so = add i64 %index401, 38
  %i.sp = add i64 %index401, 39
  %i.sq = mul nuw nsw i64 %i.az, %i.si
  %i.sr = mul nuw nsw i64 %i.az, %i.sj
  %i.ss = mul nuw nsw i64 %i.az, %i.sk
  %i.st = mul nuw nsw i64 %i.az, %i.sl
  %i.su = mul nuw nsw i64 %i.az, %i.sm
  %i.sv = mul nuw nsw i64 %i.az, %i.sn
  %i.sw = mul nuw nsw i64 %i.az, %i.so
  %i.sx = mul nuw nsw i64 %i.az, %i.sp
  %i.sy = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.sz = getelementptr [2 x i8], ptr %i.bg, i64 %i.sr
  %i.ta = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.tb = getelementptr [2 x i8], ptr %i.bg, i64 %i.st
  %i.tc = getelementptr [2 x i8], ptr %i.bg, i64 %i.su
  %i.td = getelementptr [2 x i8], ptr %i.bg, i64 %i.sv
  %i.te = getelementptr [2 x i8], ptr %i.bg, i64 %i.sw
  %i.tf = getelementptr [2 x i8], ptr %i.bg, i64 %i.sx
  %i.tg = getelementptr i8, ptr %i.sy, i64 -2
  %i.th = getelementptr i8, ptr %i.sz, i64 -2
  %i.ti = getelementptr i8, ptr %i.ta, i64 -2
  %i.tj = getelementptr i8, ptr %i.tb, i64 -2
  %i.tk = getelementptr i8, ptr %i.tc, i64 -2
  %i.tl = getelementptr i8, ptr %i.td, i64 -2
  %i.tm = getelementptr i8, ptr %i.te, i64 -2
  %i.tn = getelementptr i8, ptr %i.tf, i64 -2
  %i.to = load i16, ptr %i.tg, align 2, !tbaa !82, !alias.scope !282
  %i.tp = load i16, ptr %i.th, align 2, !tbaa !82, !alias.scope !282
  %i.tq = load i16, ptr %i.ti, align 2, !tbaa !82, !alias.scope !282
  %i.tr = load i16, ptr %i.tj, align 2, !tbaa !82, !alias.scope !282
  %i.ts = load i16, ptr %i.tk, align 2, !tbaa !82, !alias.scope !282
  %i.tt = load i16, ptr %i.tl, align 2, !tbaa !82, !alias.scope !282
  %i.tu = load i16, ptr %i.tm, align 2, !tbaa !82, !alias.scope !282
  %i.tv = load i16, ptr %i.tn, align 2, !tbaa !82, !alias.scope !282
  %i.tw = insertelement <8 x i16> poison, i16 %i.to, i64 0
  %i.tx = insertelement <8 x i16> %i.tw, i16 %i.tp, i64 1
  %i.ty = insertelement <8 x i16> %i.tx, i16 %i.tq, i64 2
  %i.tz = insertelement <8 x i16> %i.ty, i16 %i.tr, i64 3
  %i.ua = insertelement <8 x i16> %i.tz, i16 %i.ts, i64 4
  %i.ub = insertelement <8 x i16> %i.ua, i16 %i.tt, i64 5
  %i.uc = insertelement <8 x i16> %i.ub, i16 %i.tu, i64 6
  %i.ud = insertelement <8 x i16> %i.uc, i16 %i.tv, i64 7
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.si
  store <8 x i16> %i.ud, ptr %i.ue, align 2, !tbaa !82, !alias.scope !283, !noalias !282
  %index.next402 = add nuw i64 %index401, 8       ; 2 uses
  %i.uf = icmp eq i64 %index.next402, %n.vec399
  br i1 %i.uf, label %middle.block403, label %vector.body400, !llvm.loop !277

middle.block403:                                  ; preds = %vector.body400
  %cmp.n404 = icmp eq i64 %i.qy, %n.vec399
  br i1 %cmp.n404, label %._crit_edge75, label %.lr.ph74.preheader431

.lr.ph74.preheader431:                            ; preds = %vector.memcheck, %vector.scevcheck390, %.lr.ph74.preheader, %middle.block403
  %indvars.iv149.ph = phi i64 [ 32, %vector.memcheck ], [ 32, %vector.scevcheck390 ], [ 32, %.lr.ph74.preheader ], [ %i.sh, %middle.block403 ] ; 4 uses
  %i.ug = add nuw nsw i64 %i.qx, 1
  %i.uh = sub nsw i64 %i.ug, %indvars.iv149.ph
  %i.ui = sub nsw i64 %i.qx, %indvars.iv149.ph
  %xtraiter = and i64 %i.uh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader431, %.lr.ph74.prol
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %.lr.ph74.prol ], [ %indvars.iv149.ph, %.lr.ph74.preheader431 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader431 ]
  %i.uj = mul nuw nsw i64 %i.az, %indvars.iv149.prol
  %i.uk = getelementptr [2 x i8], ptr %i.bg, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.uk, i64 -2
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !82
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv149.prol
  store i16 %i.um, ptr %i.un, align 2, !tbaa !82
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !278

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader431
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %.lr.ph74.preheader431 ], [ %indvars.iv.next150.prol, %.lr.ph74.prol ]
  %i.uo = icmp ult i64 %i.ui, 3
  br i1 %i.uo, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.3, %.lr.ph74 ], [ %indvars.iv149.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.up = mul nuw nsw i64 %i.az, %indvars.iv149
  %i.uq = getelementptr [2 x i8], ptr %i.bg, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 -2
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !82
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv149
  store i16 %i.us, ptr %i.ut, align 2, !tbaa !82
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.uu = mul nuw nsw i64 %i.az, %indvars.iv.next150
  %i.uv = getelementptr [2 x i8], ptr %i.bg, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 -2
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !82
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next150
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !82
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %i.uz = mul nuw nsw i64 %i.az, %indvars.iv.next150.1
  %i.va = getelementptr [2 x i8], ptr %i.bg, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.va, i64 -2
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !82
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next150.1
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !82
  %indvars.iv.next150.2 = add nuw nsw i64 %indvars.iv149, 3 ; 2 uses
  %i.ve = mul nuw nsw i64 %i.az, %indvars.iv.next150.2
  %i.vf = getelementptr [2 x i8], ptr %i.bg, i64 %i.ve
  %i.vg = getelementptr i8, ptr %i.vf, i64 -2
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !82
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next150.2
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !82
  %indvars.iv.next150.3 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next150.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge75, label %.lr.ph74, !llvm.loop !279

._crit_edge75:                                    ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %middle.block403
  %i.vj = icmp samesign ult i32 %i.db, 32
  br i1 %i.vj, label %.lr.ph78, label %.loopexit44

.lr.ph78:                                         ; preds = %.preheader45, %._crit_edge75
  %.pn348 = sext i32 %i.qv to i64
  %.pn347 = mul nsw i64 %i.az, %.pn348
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn347
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.vk = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.vl = sub nsw i32 32, %i.db                   ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.vn = sext i32 %i.db to i64
  %i.vo = getelementptr inbounds [2 x i8], ptr %i.vm, i64 %i.vn ; 2 uses
  %i.vp = zext nneg i32 %i.vl to i64              ; 2 uses
  %i.vq = call i64 @llvm.umax.i64(i64 %i.vp, i64 4)
end_hunk_3
begin_hunk_4_@intra_pred_2_10:bb.a
  %i.iz = add nsw i32 %3, -1
  %i.ja = ashr i32 %i.iz, %i.dk
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !183
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
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge60 ], [ %i.bx, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge60 ], [ %i.bz, %bb.g ] ; 2 uses
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge60 ], [ %i.cb, %bb.g ] ; 4 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge60 ], [ %i.cd, %bb.g ] ; 5 uses
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
  %min.iters.check297 = icmp ult i32 %i.lg, 13
  br i1 %min.iters.check297, label %scalar.ph296.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph64
  %n.vec299 = and i64 %i.ln, 9223372036854775804  ; 3 uses
  %i.lo = shl i64 %n.vec299, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next302, %vector.body300 ] ; 2 uses
  %.idx334 = shl nuw i64 %index301, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %.idx334 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lp, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.lq, align 2, !tbaa !78
  %index.next302 = add nuw i64 %index301, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next302, %n.vec299
  br i1 %i.lr, label %middle.block303, label %vector.body300, !llvm.loop !329

middle.block303:                                  ; preds = %vector.body300
  %cmp.n304 = icmp eq i64 %i.ln, %n.vec299
  br i1 %cmp.n304, label %.loopexit41, label %scalar.ph296.preheader

scalar.ph296.preheader:                           ; preds = %.lr.ph64, %middle.block303
  %indvars.iv137.ph = phi i64 [ 0, %.lr.ph64 ], [ %i.lo, %middle.block303 ]
  br label %scalar.ph296

scalar.ph296:                                     ; preds = %scalar.ph296.preheader, %scalar.ph296
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph296 ], [ %indvars.iv137.ph, %scalar.ph296.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv137
  store i64 %i.le, ptr %i.ls, align 2, !tbaa !78
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %i.lt = icmp samesign ult i64 %indvars.iv.next138, %i.lj
  br i1 %i.lt, label %scalar.ph296, label %.loopexit41, !llvm.loop !330

.loopexit41:                                      ; preds = %scalar.ph296, %middle.block303, %bb.v, %bb.u
  %i.lu = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %i.ml = add i32 %i.cx, 3                        ; 2 uses
  br i1 %i.mk, label %.lr.ph67.preheader, label %.lr.ph71

.lr.ph67.preheader:                               ; preds = %.preheader38
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ml, i32 4) ; 4 uses
  %i.mm = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.mm to i64
  %i.mn = zext nneg i32 %smax to i64              ; 3 uses
  %i.mo = add nsw i64 %i.mn, -3                   ; 3 uses
  %min.iters.check313 = icmp ult i64 %i.mo, 128
  br i1 %min.iters.check313, label %.lr.ph67.preheader347, label %vector.scevcheck306

vector.scevcheck306:                              ; preds = %.lr.ph67.preheader
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
  br i1 %i.nh, label %.lr.ph67.preheader347, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck306
  %scevgep307 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ni = shl nuw i32 %smax, 1
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = getelementptr i8, ptr %i.a, i64 %i.nj
  %scevgep308 = getelementptr i8, ptr %i.nk, i64 4
  %i.nl = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.nm = add nsw i64 %i.nl, %i.nj
  %i.nn = mul i64 %i.ax, %i.nm
  %i.no = shl nsw i64 %i.ba, 1                    ; 2 uses
  %i.np = getelementptr i8, ptr %i.az, i64 %i.nn
  %i.nq = getelementptr i8, ptr %i.np, i64 %i.no
  %scevgep309 = getelementptr i8, ptr %i.nq, i64 -2 ; 4 uses
  %i.nr = add nsw i64 %i.nl, 8
  %i.ns = mul i64 %i.ax, %i.nr
  %i.nt = getelementptr i8, ptr %i.az, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 %i.no
  %scevgep310 = getelementptr i8, ptr %i.nu, i64 -2 ; 4 uses
  %i.nv = icmp ult ptr %scevgep309, %scevgep310
  %umin = select i1 %i.nv, ptr %scevgep309, ptr %scevgep310
  %i.nw = icmp ugt ptr %scevgep309, %scevgep310
  %umax = select i1 %i.nw, ptr %scevgep309, ptr %scevgep310
  %scevgep311 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep307, %scevgep311
  %bound1 = icmp ult ptr %umin, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph67.preheader347, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck
  %n.vec315 = and i64 %i.mo, -8                   ; 3 uses
  %i.nx = or disjoint i64 %n.vec315, 4
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next318, %vector.body316 ] ; 9 uses
  %i.ny = or disjoint i64 %index317, 4            ; 2 uses
  %i.nz = or disjoint i64 %index317, 5
  %i.oa = or disjoint i64 %index317, 6
  %i.ob = or disjoint i64 %index317, 7
  %i.oc = add i64 %index317, 8
  %i.od = add i64 %index317, 9
  %i.oe = add i64 %index317, 10
  %i.of = add i64 %index317, 11
  %i.og = mul nuw nsw i64 %i.ax, %i.ny
  %i.oh = mul nuw nsw i64 %i.ax, %i.nz
  %i.oi = mul nuw nsw i64 %i.ax, %i.oa
  %i.oj = mul nuw nsw i64 %i.ax, %i.ob
  %i.ok = mul nuw nsw i64 %i.ax, %i.oc
  %i.ol = mul nuw nsw i64 %i.ax, %i.od
  %i.om = mul nuw nsw i64 %i.ax, %i.oe
  %i.on = mul nuw nsw i64 %i.ax, %i.of
  %i.oo = getelementptr [2 x i8], ptr %i.be, i64 %i.og
  %i.op = getelementptr [2 x i8], ptr %i.be, i64 %i.oh
  %i.oq = getelementptr [2 x i8], ptr %i.be, i64 %i.oi
  %i.or = getelementptr [2 x i8], ptr %i.be, i64 %i.oj
  %i.os = getelementptr [2 x i8], ptr %i.be, i64 %i.ok
  %i.ot = getelementptr [2 x i8], ptr %i.be, i64 %i.ol
  %i.ou = getelementptr [2 x i8], ptr %i.be, i64 %i.om
  %i.ov = getelementptr [2 x i8], ptr %i.be, i64 %i.on
  %i.ow = getelementptr i8, ptr %i.oo, i64 -2
  %i.ox = getelementptr i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -2
  %i.oz = getelementptr i8, ptr %i.or, i64 -2
  %i.pa = getelementptr i8, ptr %i.os, i64 -2
  %i.pb = getelementptr i8, ptr %i.ot, i64 -2
  %i.pc = getelementptr i8, ptr %i.ou, i64 -2
  %i.pd = getelementptr i8, ptr %i.ov, i64 -2
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !82, !alias.scope !339
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !82, !alias.scope !339
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !82, !alias.scope !339
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !82, !alias.scope !339
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !82, !alias.scope !339
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !82, !alias.scope !339
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !82, !alias.scope !339
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !82, !alias.scope !339
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ny
  store <8 x i16> %i.pt, ptr %i.pu, align 2, !tbaa !82, !alias.scope !340, !noalias !339
  %index.next318 = add nuw i64 %index317, 8       ; 2 uses
  %i.pv = icmp eq i64 %index.next318, %n.vec315
  br i1 %i.pv, label %middle.block319, label %vector.body316, !llvm.loop !334

middle.block319:                                  ; preds = %vector.body316
  %cmp.n320 = icmp eq i64 %i.mo, %n.vec315
  br i1 %cmp.n320, label %._crit_edge68, label %.lr.ph67.preheader347

.lr.ph67.preheader347:                            ; preds = %vector.memcheck, %vector.scevcheck306, %.lr.ph67.preheader, %middle.block319
  %indvars.iv143.ph = phi i64 [ 4, %vector.memcheck ], [ 4, %vector.scevcheck306 ], [ 4, %.lr.ph67.preheader ], [ %i.nx, %middle.block319 ] ; 4 uses
  %i.pw = add nuw nsw i64 %i.mn, 1
  %i.px = sub nsw i64 %i.pw, %indvars.iv143.ph
  %i.py = sub nsw i64 %i.mn, %indvars.iv143.ph
  %xtraiter = and i64 %i.px, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader347, %.lr.ph67.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %.lr.ph67.prol ], [ %indvars.iv143.ph, %.lr.ph67.preheader347 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader347 ]
  %i.pz = mul nuw nsw i64 %i.ax, %indvars.iv143.prol
  %i.qa = getelementptr [2 x i8], ptr %i.be, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143.prol
  store i16 %i.qc, ptr %i.qd, align 2, !tbaa !82
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !335

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader347
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %.lr.ph67.preheader347 ], [ %indvars.iv.next144.prol, %.lr.ph67.prol ]
  %i.qe = icmp ult i64 %i.py, 3
  br i1 %i.qe, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph67 ], [ %indvars.iv143.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.qf = mul nuw nsw i64 %i.ax, %indvars.iv143
  %i.qg = getelementptr [2 x i8], ptr %i.be, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -2
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !82
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143
  store i16 %i.qi, ptr %i.qj, align 2, !tbaa !82
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.qk = mul nuw nsw i64 %i.ax, %indvars.iv.next144
  %i.ql = getelementptr [2 x i8], ptr %i.be, i64 %i.qk
  %i.qm = getelementptr i8, ptr %i.ql, i64 -2
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !82
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144
  store i16 %i.qn, ptr %i.qo, align 2, !tbaa !82
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %i.qp = mul nuw nsw i64 %i.ax, %indvars.iv.next144.1
  %i.qq = getelementptr [2 x i8], ptr %i.be, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.1
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !82
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %i.qu = mul nuw nsw i64 %i.ax, %indvars.iv.next144.2
  %i.qv = getelementptr [2 x i8], ptr %i.be, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 -2
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !82
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.2
  store i16 %i.qx, ptr %i.qy, align 2, !tbaa !82
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge68, label %.lr.ph67, !llvm.loop !336

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block319
  %i.qz = icmp samesign ult i32 %i.cx, 4
  br i1 %i.qz, label %.lr.ph71, label %.loopexit37

.lr.ph71:                                         ; preds = %.preheader38, %._crit_edge68
  %.pn265 = sext i32 %i.ml to i64
  %.pn264 = mul nsw i64 %i.ax, %.pn265
  %.pn = getelementptr [2 x i8], ptr %i.be, i64 %.pn264
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.ra = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rb = sub nsw i32 4, %i.cx                    ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.rd = sext i32 %i.cx to i64
  %i.re = getelementptr inbounds [2 x i8], ptr %i.rc, i64 %i.rd ; 2 uses
  %i.rf = zext nneg i32 %i.rb to i64              ; 2 uses
  %i.rg = call i64 @llvm.umax.i64(i64 %i.rf, i64 4)
end_hunk_4
begin_hunk_5_@intra_pred_3_10:bb.a
  %i.jt = icmp samesign ult i64 %indvars.iv.next135, %i.jj
  br i1 %i.jt, label %bb.n, label %.loopexit47, !llvm.loop !29

.loopexit47:                                      ; preds = %bb.n, %bb.m, %bb.l
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
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ] ; 2 uses
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
  %min.iters.check332 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check332, label %scalar.ph331.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph69
  %n.vec334 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec334, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next337, %vector.body335 ] ; 2 uses
  %.idx369 = shl nuw i64 %index336, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx369 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next337 = add nuw i64 %index336, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next337, %n.vec334
  br i1 %i.lt, label %middle.block338, label %vector.body335, !llvm.loop !345

middle.block338:                                  ; preds = %vector.body335
  %cmp.n339 = icmp eq i64 %i.lp, %n.vec334
  br i1 %cmp.n339, label %.loopexit46, label %scalar.ph331.preheader

scalar.ph331.preheader:                           ; preds = %.lr.ph69, %middle.block338
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block338 ]
  br label %scalar.ph331

scalar.ph331:                                     ; preds = %scalar.ph331.preheader, %scalar.ph331
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph331 ], [ %indvars.iv140.ph, %scalar.ph331.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph331, label %.loopexit46, !llvm.loop !346

.loopexit46:                                      ; preds = %scalar.ph331, %middle.block338, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %.idx267 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx267
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx268 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx269 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx270 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.nc = icmp sgt i32 %i.db, 0
  %i.nd = add i32 %i.db, 7                        ; 2 uses
  br i1 %i.nc, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 8) ; 4 uses
  %i.ne = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ne to i64
  %i.nf = zext nneg i32 %smax to i64              ; 3 uses
  %i.ng = add nsw i64 %i.nf, -7                   ; 3 uses
  %min.iters.check348 = icmp ult i64 %i.ng, 128
  br i1 %min.iters.check348, label %.lr.ph72.preheader382, label %vector.scevcheck341

vector.scevcheck341:                              ; preds = %.lr.ph72.preheader
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
  br i1 %i.nz, label %.lr.ph72.preheader382, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck341
  %scevgep342 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.oa = shl nuw i32 %smax, 1
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr i8, ptr %i.a, i64 %i.ob
  %scevgep343 = getelementptr i8, ptr %i.oc, i64 4
  %i.od = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.oe = add nsw i64 %i.od, %i.ob
  %i.of = mul i64 %i.az, %i.oe
  %i.og = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.oh = getelementptr i8, ptr %i.bb, i64 %i.of
  %i.oi = getelementptr i8, ptr %i.oh, i64 %i.og
  %scevgep344 = getelementptr i8, ptr %i.oi, i64 -2 ; 4 uses
  %i.oj = add nsw i64 %i.od, 16
  %i.ok = mul i64 %i.az, %i.oj
  %i.ol = getelementptr i8, ptr %i.bb, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.ol, i64 %i.og
  %scevgep345 = getelementptr i8, ptr %i.om, i64 -2 ; 4 uses
  %i.on = icmp ult ptr %scevgep344, %scevgep345
  %umin = select i1 %i.on, ptr %scevgep344, ptr %scevgep345
  %i.oo = icmp ugt ptr %scevgep344, %scevgep345
  %umax = select i1 %i.oo, ptr %scevgep344, ptr %scevgep345
  %scevgep346 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep342, %scevgep346
  %bound1 = icmp ult ptr %umin, %scevgep343
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader382, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck
  %n.vec350 = and i64 %i.ng, -8                   ; 3 uses
  %i.op = add nsw i64 %n.vec350, 8
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next353, %vector.body351 ] ; 9 uses
  %i.oq = add nuw i64 %index352, 8                ; 2 uses
  %i.or = add i64 %index352, 9
  %i.os = add i64 %index352, 10
  %i.ot = add i64 %index352, 11
  %i.ou = add i64 %index352, 12
  %i.ov = add i64 %index352, 13
  %i.ow = add i64 %index352, 14
  %i.ox = add i64 %index352, 15
  %i.oy = mul nuw nsw i64 %i.az, %i.oq
  %i.oz = mul nuw nsw i64 %i.az, %i.or
  %i.pa = mul nuw nsw i64 %i.az, %i.os
  %i.pb = mul nuw nsw i64 %i.az, %i.ot
  %i.pc = mul nuw nsw i64 %i.az, %i.ou
  %i.pd = mul nuw nsw i64 %i.az, %i.ov
  %i.pe = mul nuw nsw i64 %i.az, %i.ow
  %i.pf = mul nuw nsw i64 %i.az, %i.ox
  %i.pg = getelementptr [2 x i8], ptr %i.bg, i64 %i.oy
  %i.ph = getelementptr [2 x i8], ptr %i.bg, i64 %i.oz
  %i.pi = getelementptr [2 x i8], ptr %i.bg, i64 %i.pa
  %i.pj = getelementptr [2 x i8], ptr %i.bg, i64 %i.pb
  %i.pk = getelementptr [2 x i8], ptr %i.bg, i64 %i.pc
  %i.pl = getelementptr [2 x i8], ptr %i.bg, i64 %i.pd
  %i.pm = getelementptr [2 x i8], ptr %i.bg, i64 %i.pe
  %i.pn = getelementptr [2 x i8], ptr %i.bg, i64 %i.pf
  %i.po = getelementptr i8, ptr %i.pg, i64 -2
  %i.pp = getelementptr i8, ptr %i.ph, i64 -2
  %i.pq = getelementptr i8, ptr %i.pi, i64 -2
  %i.pr = getelementptr i8, ptr %i.pj, i64 -2
  %i.ps = getelementptr i8, ptr %i.pk, i64 -2
  %i.pt = getelementptr i8, ptr %i.pl, i64 -2
  %i.pu = getelementptr i8, ptr %i.pm, i64 -2
  %i.pv = getelementptr i8, ptr %i.pn, i64 -2
  %i.pw = load i16, ptr %i.po, align 2, !tbaa !82, !alias.scope !355
  %i.px = load i16, ptr %i.pp, align 2, !tbaa !82, !alias.scope !355
  %i.py = load i16, ptr %i.pq, align 2, !tbaa !82, !alias.scope !355
  %i.pz = load i16, ptr %i.pr, align 2, !tbaa !82, !alias.scope !355
  %i.qa = load i16, ptr %i.ps, align 2, !tbaa !82, !alias.scope !355
  %i.qb = load i16, ptr %i.pt, align 2, !tbaa !82, !alias.scope !355
  %i.qc = load i16, ptr %i.pu, align 2, !tbaa !82, !alias.scope !355
  %i.qd = load i16, ptr %i.pv, align 2, !tbaa !82, !alias.scope !355
  %i.qe = insertelement <8 x i16> poison, i16 %i.pw, i64 0
  %i.qf = insertelement <8 x i16> %i.qe, i16 %i.px, i64 1
  %i.qg = insertelement <8 x i16> %i.qf, i16 %i.py, i64 2
  %i.qh = insertelement <8 x i16> %i.qg, i16 %i.pz, i64 3
  %i.qi = insertelement <8 x i16> %i.qh, i16 %i.qa, i64 4
  %i.qj = insertelement <8 x i16> %i.qi, i16 %i.qb, i64 5
  %i.qk = insertelement <8 x i16> %i.qj, i16 %i.qc, i64 6
  %i.ql = insertelement <8 x i16> %i.qk, i16 %i.qd, i64 7
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.oq
  store <8 x i16> %i.ql, ptr %i.qm, align 2, !tbaa !82, !alias.scope !356, !noalias !355
  %index.next353 = add nuw i64 %index352, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next353, %n.vec350
  br i1 %i.qn, label %middle.block354, label %vector.body351, !llvm.loop !350

middle.block354:                                  ; preds = %vector.body351
  %cmp.n355 = icmp eq i64 %i.ng, %n.vec350
  br i1 %cmp.n355, label %._crit_edge73, label %.lr.ph72.preheader382

.lr.ph72.preheader382:                            ; preds = %vector.memcheck, %vector.scevcheck341, %.lr.ph72.preheader, %middle.block354
  %indvars.iv146.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %vector.scevcheck341 ], [ 8, %.lr.ph72.preheader ], [ %i.op, %middle.block354 ] ; 4 uses
  %i.qo = add nuw nsw i64 %i.nf, 1
  %i.qp = sub nsw i64 %i.qo, %indvars.iv146.ph
  %i.qq = sub nsw i64 %i.nf, %indvars.iv146.ph
  %xtraiter = and i64 %i.qp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader382, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader382 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader382 ]
  %i.qr = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.qs = getelementptr [2 x i8], ptr %i.bg, i64 %i.qr
  %i.qt = getelementptr i8, ptr %i.qs, i64 -2
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !82
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.qu, ptr %i.qv, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !351

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader382
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader382 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.qw = icmp ult i64 %i.qq, 3
  br i1 %i.qw, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.qx = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.qy = getelementptr [2 x i8], ptr %i.bg, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 -2
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !82
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.ra, ptr %i.rb, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.rc = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.rd = getelementptr [2 x i8], ptr %i.bg, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 -2
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !82
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.rf, ptr %i.rg, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.rh = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.ri = getelementptr [2 x i8], ptr %i.bg, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 -2
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !82
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.rm = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.rn = getelementptr [2 x i8], ptr %i.bg, i64 %i.rm
  %i.ro = getelementptr i8, ptr %i.rn, i64 -2
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !82
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !352

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block354
  %i.rr = icmp samesign ult i32 %i.db, 8
  br i1 %i.rr, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn299 = sext i32 %i.nd to i64
  %.pn298 = mul nsw i64 %i.az, %.pn299
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn298
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.rs = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rt = sub nsw i32 8, %i.db                    ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.rv = sext i32 %i.db to i64
  %i.rw = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.rv ; 2 uses
  %i.rx = zext nneg i32 %i.rt to i64              ; 2 uses
  %i.ry = call i64 @llvm.umax.i64(i64 %i.rx, i64 4)
end_hunk_5
begin_hunk_6_@intra_pred_4_10:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bl, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.c, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ] ; 2 uses
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
  %min.iters.check338 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check338, label %scalar.ph337.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %.lr.ph69
  %n.vec340 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec340, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next343, %vector.body341 ] ; 2 uses
  %.idx375 = shl nuw i64 %index342, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx375 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next343 = add nuw i64 %index342, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next343, %n.vec340
  br i1 %i.lt, label %middle.block344, label %vector.body341, !llvm.loop !361

middle.block344:                                  ; preds = %vector.body341
  %cmp.n345 = icmp eq i64 %i.lp, %n.vec340
  br i1 %cmp.n345, label %.loopexit46, label %scalar.ph337.preheader

scalar.ph337.preheader:                           ; preds = %.lr.ph69, %middle.block344
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block344 ]
  br label %scalar.ph337

scalar.ph337:                                     ; preds = %scalar.ph337.preheader, %scalar.ph337
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph337 ], [ %indvars.iv140.ph, %scalar.ph337.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph337, label %.loopexit46, !llvm.loop !362

.loopexit46:                                      ; preds = %scalar.ph337, %middle.block344, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %.idx254 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx254
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx255 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx255
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx256 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx256
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx257 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx257
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx258 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx259 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx260 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx261 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx262 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx263 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx264 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx265 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.oi = icmp sgt i32 %i.db, 0
  %i.oj = add i32 %i.db, 15                       ; 2 uses
  br i1 %i.oi, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oj, i32 16) ; 4 uses
  %i.ok = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ok to i64
  %i.ol = zext nneg i32 %smax to i64              ; 3 uses
  %i.om = add nsw i64 %i.ol, -15                  ; 3 uses
  %min.iters.check354 = icmp ult i64 %i.om, 128
  br i1 %min.iters.check354, label %.lr.ph72.preheader388, label %vector.scevcheck347

vector.scevcheck347:                              ; preds = %.lr.ph72.preheader
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
  br i1 %i.pf, label %.lr.ph72.preheader388, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck347
  %scevgep348 = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.pg = shl nuw i32 %smax, 1
  %i.ph = zext i32 %i.pg to i64                   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.a, i64 %i.ph
  %scevgep349 = getelementptr i8, ptr %i.pi, i64 4
  %i.pj = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.pk = add nsw i64 %i.pj, %i.ph
  %i.pl = mul i64 %i.az, %i.pk
  %i.pm = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.pn = getelementptr i8, ptr %i.bb, i64 %i.pl
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.pm
  %scevgep350 = getelementptr i8, ptr %i.po, i64 -2 ; 4 uses
  %i.pp = add nsw i64 %i.pj, 32
  %i.pq = mul i64 %i.az, %i.pp
  %i.pr = getelementptr i8, ptr %i.bb, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.pm
  %scevgep351 = getelementptr i8, ptr %i.ps, i64 -2 ; 4 uses
  %i.pt = icmp ult ptr %scevgep350, %scevgep351
  %umin = select i1 %i.pt, ptr %scevgep350, ptr %scevgep351
  %i.pu = icmp ugt ptr %scevgep350, %scevgep351
  %umax = select i1 %i.pu, ptr %scevgep350, ptr %scevgep351
  %scevgep352 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep348, %scevgep352
  %bound1 = icmp ult ptr %umin, %scevgep349
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader388, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck
  %n.vec356 = and i64 %i.om, -8                   ; 3 uses
  %i.pv = add nsw i64 %n.vec356, 16
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next359, %vector.body357 ] ; 9 uses
  %i.pw = add nuw i64 %index358, 16               ; 2 uses
  %i.px = add i64 %index358, 17
  %i.py = add i64 %index358, 18
  %i.pz = add i64 %index358, 19
  %i.qa = add i64 %index358, 20
  %i.qb = add i64 %index358, 21
  %i.qc = add i64 %index358, 22
  %i.qd = add i64 %index358, 23
  %i.qe = mul nuw nsw i64 %i.az, %i.pw
  %i.qf = mul nuw nsw i64 %i.az, %i.px
  %i.qg = mul nuw nsw i64 %i.az, %i.py
  %i.qh = mul nuw nsw i64 %i.az, %i.pz
  %i.qi = mul nuw nsw i64 %i.az, %i.qa
  %i.qj = mul nuw nsw i64 %i.az, %i.qb
  %i.qk = mul nuw nsw i64 %i.az, %i.qc
  %i.ql = mul nuw nsw i64 %i.az, %i.qd
  %i.qm = getelementptr [2 x i8], ptr %i.bg, i64 %i.qe
  %i.qn = getelementptr [2 x i8], ptr %i.bg, i64 %i.qf
  %i.qo = getelementptr [2 x i8], ptr %i.bg, i64 %i.qg
  %i.qp = getelementptr [2 x i8], ptr %i.bg, i64 %i.qh
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qi
  %i.qr = getelementptr [2 x i8], ptr %i.bg, i64 %i.qj
  %i.qs = getelementptr [2 x i8], ptr %i.bg, i64 %i.qk
  %i.qt = getelementptr [2 x i8], ptr %i.bg, i64 %i.ql
  %i.qu = getelementptr i8, ptr %i.qm, i64 -2
  %i.qv = getelementptr i8, ptr %i.qn, i64 -2
  %i.qw = getelementptr i8, ptr %i.qo, i64 -2
  %i.qx = getelementptr i8, ptr %i.qp, i64 -2
  %i.qy = getelementptr i8, ptr %i.qq, i64 -2
  %i.qz = getelementptr i8, ptr %i.qr, i64 -2
  %i.ra = getelementptr i8, ptr %i.qs, i64 -2
  %i.rb = getelementptr i8, ptr %i.qt, i64 -2
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !82, !alias.scope !371
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !82, !alias.scope !371
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !82, !alias.scope !371
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !82, !alias.scope !371
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !82, !alias.scope !371
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !82, !alias.scope !371
  %i.ri = load i16, ptr %i.ra, align 2, !tbaa !82, !alias.scope !371
  %i.rj = load i16, ptr %i.rb, align 2, !tbaa !82, !alias.scope !371
  %i.rk = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 1
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 2
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 3
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 4
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 5
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 6
  %i.rr = insertelement <8 x i16> %i.rq, i16 %i.rj, i64 7
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.pw
  store <8 x i16> %i.rr, ptr %i.rs, align 2, !tbaa !82, !alias.scope !372, !noalias !371
  %index.next359 = add nuw i64 %index358, 8       ; 2 uses
  %i.rt = icmp eq i64 %index.next359, %n.vec356
  br i1 %i.rt, label %middle.block360, label %vector.body357, !llvm.loop !366

middle.block360:                                  ; preds = %vector.body357
  %cmp.n361 = icmp eq i64 %i.om, %n.vec356
  br i1 %cmp.n361, label %._crit_edge73, label %.lr.ph72.preheader388

.lr.ph72.preheader388:                            ; preds = %vector.memcheck, %vector.scevcheck347, %.lr.ph72.preheader, %middle.block360
  %indvars.iv146.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %vector.scevcheck347 ], [ 16, %.lr.ph72.preheader ], [ %i.pv, %middle.block360 ] ; 4 uses
  %i.ru = add nuw nsw i64 %i.ol, 1
  %i.rv = sub nsw i64 %i.ru, %indvars.iv146.ph
  %i.rw = sub nsw i64 %i.ol, %indvars.iv146.ph
  %xtraiter = and i64 %i.rv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader388, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader388 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader388 ]
  %i.rx = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.ry = getelementptr [2 x i8], ptr %i.bg, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 -2
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !82
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !367

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader388
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader388 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.sc = icmp ult i64 %i.rw, 3
  br i1 %i.sc, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.sd = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.se = getelementptr [2 x i8], ptr %i.bg, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -2
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !82
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.si = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.sj = getelementptr [2 x i8], ptr %i.bg, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 -2
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !82
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.sn = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.so = getelementptr [2 x i8], ptr %i.bg, i64 %i.sn
  %i.sp = getelementptr i8, ptr %i.so, i64 -2
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !82
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.sq, ptr %i.sr, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.ss = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.st = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 -2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !82
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !368

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block360
  %i.sx = icmp samesign ult i32 %i.db, 16
  br i1 %i.sx, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn305 = sext i32 %i.oj to i64
  %.pn304 = mul nsw i64 %i.az, %.pn305
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn304
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.sy = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.sz = sub nsw i32 16, %i.db                   ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.tb = sext i32 %i.db to i64
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.tb ; 2 uses
  %i.td = zext nneg i32 %i.sz to i64              ; 2 uses
  %i.te = call i64 @llvm.umax.i64(i64 %i.td, i64 4)
end_hunk_6
begin_hunk_7_@intra_pred_5_10:bb.a
.loopexit47:                                      ; preds = %scalar.ph379, %middle.block386, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %.idx268 = shl i64 %i.az, 5
  %i.oi = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.oj = getelementptr i8, ptr %i.oi, i64 -2
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !82
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !82
  %.idx269 = mul i64 %i.az, 34
  %i.om = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.on = getelementptr i8, ptr %i.om, i64 -2
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i16 %i.oo, ptr %i.op, align 4, !tbaa !82
  %.idx270 = mul i64 %i.az, 36
  %i.oq = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.or = getelementptr i8, ptr %i.oq, i64 -2
  %i.os = load i16, ptr %i.or, align 2, !tbaa !82
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %i.os, ptr %i.ot, align 2, !tbaa !82
  %.idx271 = mul i64 %i.az, 38
  %i.ou = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !82
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i16 %i.ow, ptr %i.ox, align 8, !tbaa !82
  %.idx272 = mul i64 %i.az, 40
  %i.oy = getelementptr i8, ptr %i.bg, i64 %.idx272
  %i.oz = getelementptr i8, ptr %i.oy, i64 -2
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !82
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !82
  %.idx273 = mul i64 %i.az, 42
  %i.pc = getelementptr i8, ptr %i.bg, i64 %.idx273
  %i.pd = getelementptr i8, ptr %i.pc, i64 -2
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !82
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !82
  %.idx274 = mul i64 %i.az, 44
  %i.pg = getelementptr i8, ptr %i.bg, i64 %.idx274
  %i.ph = getelementptr i8, ptr %i.pg, i64 -2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !82
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !82
  %.idx275 = mul i64 %i.az, 46
  %i.pk = getelementptr i8, ptr %i.bg, i64 %.idx275
  %i.pl = getelementptr i8, ptr %i.pk, i64 -2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i16 %i.pm, ptr %i.pn, align 16, !tbaa !82
  %.idx276 = mul i64 %i.az, 48
  %i.po = getelementptr i8, ptr %i.bg, i64 %.idx276
  %i.pp = getelementptr i8, ptr %i.po, i64 -2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !82
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !82
  %.idx277 = mul i64 %i.az, 50
  %i.ps = getelementptr i8, ptr %i.bg, i64 %.idx277
  %i.pt = getelementptr i8, ptr %i.ps, i64 -2
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !82
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i16 %i.pu, ptr %i.pv, align 4, !tbaa !82
  %.idx278 = mul i64 %i.az, 52
  %i.pw = getelementptr i8, ptr %i.bg, i64 %.idx278
  %i.px = getelementptr i8, ptr %i.pw, i64 -2
  %i.py = load i16, ptr %i.px, align 2, !tbaa !82
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !82
  %.idx279 = mul i64 %i.az, 54
  %i.qa = getelementptr i8, ptr %i.bg, i64 %.idx279
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.qc, ptr %i.qd, align 8, !tbaa !82
  %.idx280 = mul i64 %i.az, 56
  %i.qe = getelementptr i8, ptr %i.bg, i64 %.idx280
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %.idx281 = mul i64 %i.az, 58
  %i.qi = getelementptr i8, ptr %i.bg, i64 %.idx281
  %i.qj = getelementptr i8, ptr %i.qi, i64 -2
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 %i.qk, ptr %i.ql, align 4, !tbaa !82
  %.idx282 = mul i64 %i.az, 60
  %i.qm = getelementptr i8, ptr %i.bg, i64 %.idx282
  %i.qn = getelementptr i8, ptr %i.qm, i64 -2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !82
  %.idx283 = mul i64 %i.az, 62
  %i.qq = getelementptr i8, ptr %i.bg, i64 %.idx283
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 %i.qs, ptr %i.qt, align 16, !tbaa !82
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.qu = icmp sgt i32 %i.db, 0
  %i.qv = add i32 %i.db, 31                       ; 2 uses
  br i1 %i.qu, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.qv, i32 32) ; 4 uses
  %i.qw = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.qw to i64
  %i.qx = zext nneg i32 %smax to i64              ; 3 uses
  %i.qy = add nsw i64 %i.qx, -31                  ; 3 uses
  %min.iters.check396 = icmp ult i64 %i.qy, 128
  br i1 %min.iters.check396, label %.lr.ph73.preheader430, label %vector.scevcheck389

vector.scevcheck389:                              ; preds = %.lr.ph73.preheader
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
  br i1 %i.rr, label %.lr.ph73.preheader430, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck389
  %scevgep390 = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.rs = shl nuw i32 %smax, 1
  %i.rt = zext i32 %i.rs to i64                   ; 2 uses
  %i.ru = getelementptr i8, ptr %i.a, i64 %i.rt
  %scevgep391 = getelementptr i8, ptr %i.ru, i64 4
  %i.rv = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.rw = add nsw i64 %i.rv, %i.rt
  %i.rx = mul i64 %i.az, %i.rw
  %i.ry = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.rz = getelementptr i8, ptr %i.bb, i64 %i.rx
  %i.sa = getelementptr i8, ptr %i.rz, i64 %i.ry
  %scevgep392 = getelementptr i8, ptr %i.sa, i64 -2 ; 4 uses
  %i.sb = add nsw i64 %i.rv, 64
  %i.sc = mul i64 %i.az, %i.sb
  %i.sd = getelementptr i8, ptr %i.bb, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.ry
  %scevgep393 = getelementptr i8, ptr %i.se, i64 -2 ; 4 uses
  %i.sf = icmp ult ptr %scevgep392, %scevgep393
  %umin = select i1 %i.sf, ptr %scevgep392, ptr %scevgep393
  %i.sg = icmp ugt ptr %scevgep392, %scevgep393
  %umax = select i1 %i.sg, ptr %scevgep392, ptr %scevgep393
  %scevgep394 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep390, %scevgep394
  %bound1 = icmp ult ptr %umin, %scevgep391
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader430, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck
  %n.vec398 = and i64 %i.qy, -8                   ; 3 uses
  %i.sh = add nsw i64 %n.vec398, 32
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next401, %vector.body399 ] ; 9 uses
  %i.si = add nuw i64 %index400, 32               ; 2 uses
  %i.sj = add i64 %index400, 33
  %i.sk = add i64 %index400, 34
  %i.sl = add i64 %index400, 35
  %i.sm = add i64 %index400, 36
  %i.sn = add i64 %index400, 37
  %i.so = add i64 %index400, 38
  %i.sp = add i64 %index400, 39
  %i.sq = mul nuw nsw i64 %i.az, %i.si
  %i.sr = mul nuw nsw i64 %i.az, %i.sj
  %i.ss = mul nuw nsw i64 %i.az, %i.sk
  %i.st = mul nuw nsw i64 %i.az, %i.sl
  %i.su = mul nuw nsw i64 %i.az, %i.sm
  %i.sv = mul nuw nsw i64 %i.az, %i.sn
  %i.sw = mul nuw nsw i64 %i.az, %i.so
  %i.sx = mul nuw nsw i64 %i.az, %i.sp
  %i.sy = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.sz = getelementptr [2 x i8], ptr %i.bg, i64 %i.sr
  %i.ta = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.tb = getelementptr [2 x i8], ptr %i.bg, i64 %i.st
  %i.tc = getelementptr [2 x i8], ptr %i.bg, i64 %i.su
  %i.td = getelementptr [2 x i8], ptr %i.bg, i64 %i.sv
  %i.te = getelementptr [2 x i8], ptr %i.bg, i64 %i.sw
  %i.tf = getelementptr [2 x i8], ptr %i.bg, i64 %i.sx
  %i.tg = getelementptr i8, ptr %i.sy, i64 -2
  %i.th = getelementptr i8, ptr %i.sz, i64 -2
  %i.ti = getelementptr i8, ptr %i.ta, i64 -2
  %i.tj = getelementptr i8, ptr %i.tb, i64 -2
  %i.tk = getelementptr i8, ptr %i.tc, i64 -2
  %i.tl = getelementptr i8, ptr %i.td, i64 -2
  %i.tm = getelementptr i8, ptr %i.te, i64 -2
  %i.tn = getelementptr i8, ptr %i.tf, i64 -2
  %i.to = load i16, ptr %i.tg, align 2, !tbaa !82, !alias.scope !387
  %i.tp = load i16, ptr %i.th, align 2, !tbaa !82, !alias.scope !387
  %i.tq = load i16, ptr %i.ti, align 2, !tbaa !82, !alias.scope !387
  %i.tr = load i16, ptr %i.tj, align 2, !tbaa !82, !alias.scope !387
  %i.ts = load i16, ptr %i.tk, align 2, !tbaa !82, !alias.scope !387
  %i.tt = load i16, ptr %i.tl, align 2, !tbaa !82, !alias.scope !387
  %i.tu = load i16, ptr %i.tm, align 2, !tbaa !82, !alias.scope !387
  %i.tv = load i16, ptr %i.tn, align 2, !tbaa !82, !alias.scope !387
  %i.tw = insertelement <8 x i16> poison, i16 %i.to, i64 0
  %i.tx = insertelement <8 x i16> %i.tw, i16 %i.tp, i64 1
  %i.ty = insertelement <8 x i16> %i.tx, i16 %i.tq, i64 2
  %i.tz = insertelement <8 x i16> %i.ty, i16 %i.tr, i64 3
  %i.ua = insertelement <8 x i16> %i.tz, i16 %i.ts, i64 4
  %i.ub = insertelement <8 x i16> %i.ua, i16 %i.tt, i64 5
  %i.uc = insertelement <8 x i16> %i.ub, i16 %i.tu, i64 6
  %i.ud = insertelement <8 x i16> %i.uc, i16 %i.tv, i64 7
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.si
  store <8 x i16> %i.ud, ptr %i.ue, align 2, !tbaa !82, !alias.scope !388, !noalias !387
  %index.next401 = add nuw i64 %index400, 8       ; 2 uses
  %i.uf = icmp eq i64 %index.next401, %n.vec398
  br i1 %i.uf, label %middle.block402, label %vector.body399, !llvm.loop !382

middle.block402:                                  ; preds = %vector.body399
  %cmp.n403 = icmp eq i64 %i.qy, %n.vec398
  br i1 %cmp.n403, label %._crit_edge74, label %.lr.ph73.preheader430

.lr.ph73.preheader430:                            ; preds = %vector.memcheck, %vector.scevcheck389, %.lr.ph73.preheader, %middle.block402
  %indvars.iv148.ph = phi i64 [ 32, %vector.memcheck ], [ 32, %vector.scevcheck389 ], [ 32, %.lr.ph73.preheader ], [ %i.sh, %middle.block402 ] ; 4 uses
  %i.ug = add nuw nsw i64 %i.qx, 1
  %i.uh = sub nsw i64 %i.ug, %indvars.iv148.ph
  %i.ui = sub nsw i64 %i.qx, %indvars.iv148.ph
  %xtraiter = and i64 %i.uh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader430, %.lr.ph73.prol
  %indvars.iv148.prol = phi i64 [ %indvars.iv.next149.prol, %.lr.ph73.prol ], [ %indvars.iv148.ph, %.lr.ph73.preheader430 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader430 ]
  %i.uj = mul nuw nsw i64 %i.az, %indvars.iv148.prol
  %i.uk = getelementptr [2 x i8], ptr %i.bg, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.uk, i64 -2
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !82
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148.prol
  store i16 %i.um, ptr %i.un, align 2, !tbaa !82
  %indvars.iv.next149.prol = add nuw nsw i64 %indvars.iv148.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !383

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader430
  %indvars.iv148.unr = phi i64 [ %indvars.iv148.ph, %.lr.ph73.preheader430 ], [ %indvars.iv.next149.prol, %.lr.ph73.prol ]
  %i.uo = icmp ult i64 %i.ui, 3
  br i1 %i.uo, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.3, %.lr.ph73 ], [ %indvars.iv148.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.up = mul nuw nsw i64 %i.az, %indvars.iv148
  %i.uq = getelementptr [2 x i8], ptr %i.bg, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 -2
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !82
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148
  store i16 %i.us, ptr %i.ut, align 2, !tbaa !82
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.uu = mul nuw nsw i64 %i.az, %indvars.iv.next149
  %i.uv = getelementptr [2 x i8], ptr %i.bg, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 -2
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !82
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !82
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2 ; 2 uses
  %i.uz = mul nuw nsw i64 %i.az, %indvars.iv.next149.1
  %i.va = getelementptr [2 x i8], ptr %i.bg, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.va, i64 -2
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !82
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.1
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !82
  %indvars.iv.next149.2 = add nuw nsw i64 %indvars.iv148, 3 ; 2 uses
  %i.ve = mul nuw nsw i64 %i.az, %indvars.iv.next149.2
  %i.vf = getelementptr [2 x i8], ptr %i.bg, i64 %i.ve
  %i.vg = getelementptr i8, ptr %i.vf, i64 -2
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !82
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.2
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !82
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv148, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next149.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !384

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block402
  %i.vj = icmp samesign ult i32 %i.db, 32
  br i1 %i.vj, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn347 = sext i32 %i.qv to i64
  %.pn346 = mul nsw i64 %i.az, %.pn347
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn346
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.vk = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.vl = sub nsw i32 32, %i.db                   ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.vn = sext i32 %i.db to i64
  %i.vo = getelementptr inbounds [2 x i8], ptr %i.vm, i64 %i.vn ; 2 uses
  %i.vp = zext nneg i32 %i.vl to i64              ; 2 uses
  %i.vq = call i64 @llvm.umax.i64(i64 %i.vp, i64 4)
end_hunk_7
begin_hunk_8_@intra_pred_2_12:bb.a
  %i.iz = add nsw i32 %3, -1
  %i.ja = ashr i32 %i.iz, %i.dk
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !183
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
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge60 ], [ %i.bx, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge60 ], [ %i.bz, %bb.g ] ; 2 uses
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge60 ], [ %i.cb, %bb.g ] ; 4 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge60 ], [ %i.cd, %bb.g ] ; 5 uses
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
  %min.iters.check297 = icmp ult i32 %i.lg, 13
  br i1 %min.iters.check297, label %scalar.ph296.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph64
  %n.vec299 = and i64 %i.ln, 9223372036854775804  ; 3 uses
  %i.lo = shl i64 %n.vec299, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next302, %vector.body300 ] ; 2 uses
  %.idx334 = shl nuw i64 %index301, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %.idx334 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lp, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.lq, align 2, !tbaa !78
  %index.next302 = add nuw i64 %index301, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next302, %n.vec299
  br i1 %i.lr, label %middle.block303, label %vector.body300, !llvm.loop !434

middle.block303:                                  ; preds = %vector.body300
  %cmp.n304 = icmp eq i64 %i.ln, %n.vec299
  br i1 %cmp.n304, label %.loopexit41, label %scalar.ph296.preheader

scalar.ph296.preheader:                           ; preds = %.lr.ph64, %middle.block303
  %indvars.iv137.ph = phi i64 [ 0, %.lr.ph64 ], [ %i.lo, %middle.block303 ]
  br label %scalar.ph296

scalar.ph296:                                     ; preds = %scalar.ph296.preheader, %scalar.ph296
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph296 ], [ %indvars.iv137.ph, %scalar.ph296.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv137
  store i64 %i.le, ptr %i.ls, align 2, !tbaa !78
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %i.lt = icmp samesign ult i64 %indvars.iv.next138, %i.lj
  br i1 %i.lt, label %scalar.ph296, label %.loopexit41, !llvm.loop !435

.loopexit41:                                      ; preds = %scalar.ph296, %middle.block303, %bb.v, %bb.u
  %i.lu = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %i.ml = add i32 %i.cx, 3                        ; 2 uses
  br i1 %i.mk, label %.lr.ph67.preheader, label %.lr.ph71

.lr.ph67.preheader:                               ; preds = %.preheader38
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ml, i32 4) ; 4 uses
  %i.mm = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.mm to i64
  %i.mn = zext nneg i32 %smax to i64              ; 3 uses
  %i.mo = add nsw i64 %i.mn, -3                   ; 3 uses
  %min.iters.check313 = icmp ult i64 %i.mo, 128
  br i1 %min.iters.check313, label %.lr.ph67.preheader347, label %vector.scevcheck306

vector.scevcheck306:                              ; preds = %.lr.ph67.preheader
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
  br i1 %i.nh, label %.lr.ph67.preheader347, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck306
  %scevgep307 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ni = shl nuw i32 %smax, 1
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = getelementptr i8, ptr %i.a, i64 %i.nj
  %scevgep308 = getelementptr i8, ptr %i.nk, i64 4
  %i.nl = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.nm = add nsw i64 %i.nl, %i.nj
  %i.nn = mul i64 %i.ax, %i.nm
  %i.no = shl nsw i64 %i.ba, 1                    ; 2 uses
  %i.np = getelementptr i8, ptr %i.az, i64 %i.nn
  %i.nq = getelementptr i8, ptr %i.np, i64 %i.no
  %scevgep309 = getelementptr i8, ptr %i.nq, i64 -2 ; 4 uses
  %i.nr = add nsw i64 %i.nl, 8
  %i.ns = mul i64 %i.ax, %i.nr
  %i.nt = getelementptr i8, ptr %i.az, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 %i.no
  %scevgep310 = getelementptr i8, ptr %i.nu, i64 -2 ; 4 uses
  %i.nv = icmp ult ptr %scevgep309, %scevgep310
  %umin = select i1 %i.nv, ptr %scevgep309, ptr %scevgep310
  %i.nw = icmp ugt ptr %scevgep309, %scevgep310
  %umax = select i1 %i.nw, ptr %scevgep309, ptr %scevgep310
  %scevgep311 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep307, %scevgep311
  %bound1 = icmp ult ptr %umin, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph67.preheader347, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck
  %n.vec315 = and i64 %i.mo, -8                   ; 3 uses
  %i.nx = or disjoint i64 %n.vec315, 4
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next318, %vector.body316 ] ; 9 uses
  %i.ny = or disjoint i64 %index317, 4            ; 2 uses
  %i.nz = or disjoint i64 %index317, 5
  %i.oa = or disjoint i64 %index317, 6
  %i.ob = or disjoint i64 %index317, 7
  %i.oc = add i64 %index317, 8
  %i.od = add i64 %index317, 9
  %i.oe = add i64 %index317, 10
  %i.of = add i64 %index317, 11
  %i.og = mul nuw nsw i64 %i.ax, %i.ny
  %i.oh = mul nuw nsw i64 %i.ax, %i.nz
  %i.oi = mul nuw nsw i64 %i.ax, %i.oa
  %i.oj = mul nuw nsw i64 %i.ax, %i.ob
  %i.ok = mul nuw nsw i64 %i.ax, %i.oc
  %i.ol = mul nuw nsw i64 %i.ax, %i.od
  %i.om = mul nuw nsw i64 %i.ax, %i.oe
  %i.on = mul nuw nsw i64 %i.ax, %i.of
  %i.oo = getelementptr [2 x i8], ptr %i.be, i64 %i.og
  %i.op = getelementptr [2 x i8], ptr %i.be, i64 %i.oh
  %i.oq = getelementptr [2 x i8], ptr %i.be, i64 %i.oi
  %i.or = getelementptr [2 x i8], ptr %i.be, i64 %i.oj
  %i.os = getelementptr [2 x i8], ptr %i.be, i64 %i.ok
  %i.ot = getelementptr [2 x i8], ptr %i.be, i64 %i.ol
  %i.ou = getelementptr [2 x i8], ptr %i.be, i64 %i.om
  %i.ov = getelementptr [2 x i8], ptr %i.be, i64 %i.on
  %i.ow = getelementptr i8, ptr %i.oo, i64 -2
  %i.ox = getelementptr i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -2
  %i.oz = getelementptr i8, ptr %i.or, i64 -2
  %i.pa = getelementptr i8, ptr %i.os, i64 -2
  %i.pb = getelementptr i8, ptr %i.ot, i64 -2
  %i.pc = getelementptr i8, ptr %i.ou, i64 -2
  %i.pd = getelementptr i8, ptr %i.ov, i64 -2
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !82, !alias.scope !444
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !82, !alias.scope !444
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !82, !alias.scope !444
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !82, !alias.scope !444
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !82, !alias.scope !444
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !82, !alias.scope !444
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !82, !alias.scope !444
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !82, !alias.scope !444
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ny
  store <8 x i16> %i.pt, ptr %i.pu, align 2, !tbaa !82, !alias.scope !445, !noalias !444
  %index.next318 = add nuw i64 %index317, 8       ; 2 uses
  %i.pv = icmp eq i64 %index.next318, %n.vec315
  br i1 %i.pv, label %middle.block319, label %vector.body316, !llvm.loop !439

middle.block319:                                  ; preds = %vector.body316
  %cmp.n320 = icmp eq i64 %i.mo, %n.vec315
  br i1 %cmp.n320, label %._crit_edge68, label %.lr.ph67.preheader347

.lr.ph67.preheader347:                            ; preds = %vector.memcheck, %vector.scevcheck306, %.lr.ph67.preheader, %middle.block319
  %indvars.iv143.ph = phi i64 [ 4, %vector.memcheck ], [ 4, %vector.scevcheck306 ], [ 4, %.lr.ph67.preheader ], [ %i.nx, %middle.block319 ] ; 4 uses
  %i.pw = add nuw nsw i64 %i.mn, 1
  %i.px = sub nsw i64 %i.pw, %indvars.iv143.ph
  %i.py = sub nsw i64 %i.mn, %indvars.iv143.ph
  %xtraiter = and i64 %i.px, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader347, %.lr.ph67.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %.lr.ph67.prol ], [ %indvars.iv143.ph, %.lr.ph67.preheader347 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader347 ]
  %i.pz = mul nuw nsw i64 %i.ax, %indvars.iv143.prol
  %i.qa = getelementptr [2 x i8], ptr %i.be, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143.prol
  store i16 %i.qc, ptr %i.qd, align 2, !tbaa !82
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !440

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader347
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %.lr.ph67.preheader347 ], [ %indvars.iv.next144.prol, %.lr.ph67.prol ]
  %i.qe = icmp ult i64 %i.py, 3
  br i1 %i.qe, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph67 ], [ %indvars.iv143.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.qf = mul nuw nsw i64 %i.ax, %indvars.iv143
  %i.qg = getelementptr [2 x i8], ptr %i.be, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -2
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !82
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv143
  store i16 %i.qi, ptr %i.qj, align 2, !tbaa !82
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.qk = mul nuw nsw i64 %i.ax, %indvars.iv.next144
  %i.ql = getelementptr [2 x i8], ptr %i.be, i64 %i.qk
  %i.qm = getelementptr i8, ptr %i.ql, i64 -2
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !82
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144
  store i16 %i.qn, ptr %i.qo, align 2, !tbaa !82
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %i.qp = mul nuw nsw i64 %i.ax, %indvars.iv.next144.1
  %i.qq = getelementptr [2 x i8], ptr %i.be, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.1
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !82
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %i.qu = mul nuw nsw i64 %i.ax, %indvars.iv.next144.2
  %i.qv = getelementptr [2 x i8], ptr %i.be, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 -2
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !82
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next144.2
  store i16 %i.qx, ptr %i.qy, align 2, !tbaa !82
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge68, label %.lr.ph67, !llvm.loop !441

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block319
  %i.qz = icmp samesign ult i32 %i.cx, 4
  br i1 %i.qz, label %.lr.ph71, label %.loopexit37

.lr.ph71:                                         ; preds = %.preheader38, %._crit_edge68
  %.pn265 = sext i32 %i.ml to i64
  %.pn264 = mul nsw i64 %i.ax, %.pn265
  %.pn = getelementptr [2 x i8], ptr %i.be, i64 %.pn264
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.ra = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rb = sub nsw i32 4, %i.cx                    ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.rd = sext i32 %i.cx to i64
  %i.re = getelementptr inbounds [2 x i8], ptr %i.rc, i64 %i.rd ; 2 uses
  %i.rf = zext nneg i32 %i.rb to i64              ; 2 uses
  %i.rg = call i64 @llvm.umax.i64(i64 %i.rf, i64 4)
end_hunk_8
begin_hunk_9_@intra_pred_3_12:bb.a
  %i.jt = icmp samesign ult i64 %indvars.iv.next135, %i.jj
  br i1 %i.jt, label %bb.n, label %.loopexit47, !llvm.loop !42

.loopexit47:                                      ; preds = %bb.n, %bb.m, %bb.l
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
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ] ; 2 uses
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
  %min.iters.check332 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check332, label %scalar.ph331.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph69
  %n.vec334 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec334, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next337, %vector.body335 ] ; 2 uses
  %.idx369 = shl nuw i64 %index336, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx369 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next337 = add nuw i64 %index336, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next337, %n.vec334
  br i1 %i.lt, label %middle.block338, label %vector.body335, !llvm.loop !450

middle.block338:                                  ; preds = %vector.body335
  %cmp.n339 = icmp eq i64 %i.lp, %n.vec334
  br i1 %cmp.n339, label %.loopexit46, label %scalar.ph331.preheader

scalar.ph331.preheader:                           ; preds = %.lr.ph69, %middle.block338
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block338 ]
  br label %scalar.ph331

scalar.ph331:                                     ; preds = %scalar.ph331.preheader, %scalar.ph331
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph331 ], [ %indvars.iv140.ph, %scalar.ph331.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph331, label %.loopexit46, !llvm.loop !451

.loopexit46:                                      ; preds = %scalar.ph331, %middle.block338, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %.idx267 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx267
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx268 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx269 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx270 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.nc = icmp sgt i32 %i.db, 0
  %i.nd = add i32 %i.db, 7                        ; 2 uses
  br i1 %i.nc, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 8) ; 4 uses
  %i.ne = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ne to i64
  %i.nf = zext nneg i32 %smax to i64              ; 3 uses
  %i.ng = add nsw i64 %i.nf, -7                   ; 3 uses
  %min.iters.check348 = icmp ult i64 %i.ng, 128
  br i1 %min.iters.check348, label %.lr.ph72.preheader382, label %vector.scevcheck341

vector.scevcheck341:                              ; preds = %.lr.ph72.preheader
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
  br i1 %i.nz, label %.lr.ph72.preheader382, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck341
  %scevgep342 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.oa = shl nuw i32 %smax, 1
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr i8, ptr %i.a, i64 %i.ob
  %scevgep343 = getelementptr i8, ptr %i.oc, i64 4
  %i.od = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.oe = add nsw i64 %i.od, %i.ob
  %i.of = mul i64 %i.az, %i.oe
  %i.og = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.oh = getelementptr i8, ptr %i.bb, i64 %i.of
  %i.oi = getelementptr i8, ptr %i.oh, i64 %i.og
  %scevgep344 = getelementptr i8, ptr %i.oi, i64 -2 ; 4 uses
  %i.oj = add nsw i64 %i.od, 16
  %i.ok = mul i64 %i.az, %i.oj
  %i.ol = getelementptr i8, ptr %i.bb, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.ol, i64 %i.og
  %scevgep345 = getelementptr i8, ptr %i.om, i64 -2 ; 4 uses
  %i.on = icmp ult ptr %scevgep344, %scevgep345
  %umin = select i1 %i.on, ptr %scevgep344, ptr %scevgep345
  %i.oo = icmp ugt ptr %scevgep344, %scevgep345
  %umax = select i1 %i.oo, ptr %scevgep344, ptr %scevgep345
  %scevgep346 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep342, %scevgep346
  %bound1 = icmp ult ptr %umin, %scevgep343
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader382, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck
  %n.vec350 = and i64 %i.ng, -8                   ; 3 uses
  %i.op = add nsw i64 %n.vec350, 8
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next353, %vector.body351 ] ; 9 uses
  %i.oq = add nuw i64 %index352, 8                ; 2 uses
  %i.or = add i64 %index352, 9
  %i.os = add i64 %index352, 10
  %i.ot = add i64 %index352, 11
  %i.ou = add i64 %index352, 12
  %i.ov = add i64 %index352, 13
  %i.ow = add i64 %index352, 14
  %i.ox = add i64 %index352, 15
  %i.oy = mul nuw nsw i64 %i.az, %i.oq
  %i.oz = mul nuw nsw i64 %i.az, %i.or
  %i.pa = mul nuw nsw i64 %i.az, %i.os
  %i.pb = mul nuw nsw i64 %i.az, %i.ot
  %i.pc = mul nuw nsw i64 %i.az, %i.ou
  %i.pd = mul nuw nsw i64 %i.az, %i.ov
  %i.pe = mul nuw nsw i64 %i.az, %i.ow
  %i.pf = mul nuw nsw i64 %i.az, %i.ox
  %i.pg = getelementptr [2 x i8], ptr %i.bg, i64 %i.oy
  %i.ph = getelementptr [2 x i8], ptr %i.bg, i64 %i.oz
  %i.pi = getelementptr [2 x i8], ptr %i.bg, i64 %i.pa
  %i.pj = getelementptr [2 x i8], ptr %i.bg, i64 %i.pb
  %i.pk = getelementptr [2 x i8], ptr %i.bg, i64 %i.pc
  %i.pl = getelementptr [2 x i8], ptr %i.bg, i64 %i.pd
  %i.pm = getelementptr [2 x i8], ptr %i.bg, i64 %i.pe
  %i.pn = getelementptr [2 x i8], ptr %i.bg, i64 %i.pf
  %i.po = getelementptr i8, ptr %i.pg, i64 -2
  %i.pp = getelementptr i8, ptr %i.ph, i64 -2
  %i.pq = getelementptr i8, ptr %i.pi, i64 -2
  %i.pr = getelementptr i8, ptr %i.pj, i64 -2
  %i.ps = getelementptr i8, ptr %i.pk, i64 -2
  %i.pt = getelementptr i8, ptr %i.pl, i64 -2
  %i.pu = getelementptr i8, ptr %i.pm, i64 -2
  %i.pv = getelementptr i8, ptr %i.pn, i64 -2
  %i.pw = load i16, ptr %i.po, align 2, !tbaa !82, !alias.scope !460
  %i.px = load i16, ptr %i.pp, align 2, !tbaa !82, !alias.scope !460
  %i.py = load i16, ptr %i.pq, align 2, !tbaa !82, !alias.scope !460
  %i.pz = load i16, ptr %i.pr, align 2, !tbaa !82, !alias.scope !460
  %i.qa = load i16, ptr %i.ps, align 2, !tbaa !82, !alias.scope !460
  %i.qb = load i16, ptr %i.pt, align 2, !tbaa !82, !alias.scope !460
  %i.qc = load i16, ptr %i.pu, align 2, !tbaa !82, !alias.scope !460
  %i.qd = load i16, ptr %i.pv, align 2, !tbaa !82, !alias.scope !460
  %i.qe = insertelement <8 x i16> poison, i16 %i.pw, i64 0
  %i.qf = insertelement <8 x i16> %i.qe, i16 %i.px, i64 1
  %i.qg = insertelement <8 x i16> %i.qf, i16 %i.py, i64 2
  %i.qh = insertelement <8 x i16> %i.qg, i16 %i.pz, i64 3
  %i.qi = insertelement <8 x i16> %i.qh, i16 %i.qa, i64 4
  %i.qj = insertelement <8 x i16> %i.qi, i16 %i.qb, i64 5
  %i.qk = insertelement <8 x i16> %i.qj, i16 %i.qc, i64 6
  %i.ql = insertelement <8 x i16> %i.qk, i16 %i.qd, i64 7
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.oq
  store <8 x i16> %i.ql, ptr %i.qm, align 2, !tbaa !82, !alias.scope !461, !noalias !460
  %index.next353 = add nuw i64 %index352, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next353, %n.vec350
  br i1 %i.qn, label %middle.block354, label %vector.body351, !llvm.loop !455

middle.block354:                                  ; preds = %vector.body351
  %cmp.n355 = icmp eq i64 %i.ng, %n.vec350
  br i1 %cmp.n355, label %._crit_edge73, label %.lr.ph72.preheader382

.lr.ph72.preheader382:                            ; preds = %vector.memcheck, %vector.scevcheck341, %.lr.ph72.preheader, %middle.block354
  %indvars.iv146.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %vector.scevcheck341 ], [ 8, %.lr.ph72.preheader ], [ %i.op, %middle.block354 ] ; 4 uses
  %i.qo = add nuw nsw i64 %i.nf, 1
  %i.qp = sub nsw i64 %i.qo, %indvars.iv146.ph
  %i.qq = sub nsw i64 %i.nf, %indvars.iv146.ph
  %xtraiter = and i64 %i.qp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader382, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader382 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader382 ]
  %i.qr = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.qs = getelementptr [2 x i8], ptr %i.bg, i64 %i.qr
  %i.qt = getelementptr i8, ptr %i.qs, i64 -2
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !82
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.qu, ptr %i.qv, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !456

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader382
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader382 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.qw = icmp ult i64 %i.qq, 3
  br i1 %i.qw, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.qx = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.qy = getelementptr [2 x i8], ptr %i.bg, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 -2
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !82
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.ra, ptr %i.rb, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.rc = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.rd = getelementptr [2 x i8], ptr %i.bg, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 -2
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !82
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.rf, ptr %i.rg, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.rh = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.ri = getelementptr [2 x i8], ptr %i.bg, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 -2
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !82
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.rm = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.rn = getelementptr [2 x i8], ptr %i.bg, i64 %i.rm
  %i.ro = getelementptr i8, ptr %i.rn, i64 -2
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !82
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !457

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block354
  %i.rr = icmp samesign ult i32 %i.db, 8
  br i1 %i.rr, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn299 = sext i32 %i.nd to i64
  %.pn298 = mul nsw i64 %i.az, %.pn299
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn298
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.rs = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.rt = sub nsw i32 8, %i.db                    ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.rv = sext i32 %i.db to i64
  %i.rw = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.rv ; 2 uses
  %i.rx = zext nneg i32 %i.rt to i64              ; 2 uses
  %i.ry = call i64 @llvm.umax.i64(i64 %i.rx, i64 4)
end_hunk_9
begin_hunk_10_@intra_pred_4_12:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %i.bl, i8 -128, i64 128, i1 false)
  store i16 128, ptr %i.c, align 16, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cb, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.cd, %bb.g ] ; 2 uses
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
  %min.iters.check338 = icmp ult i32 %i.li, 13
  br i1 %min.iters.check338, label %scalar.ph337.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %.lr.ph69
  %n.vec340 = and i64 %i.lp, 9223372036854775804  ; 3 uses
  %i.lq = shl i64 %n.vec340, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next343, %vector.body341 ] ; 2 uses
  %.idx375 = shl nuw i64 %index342, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx375 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.lr, align 2, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ls, align 2, !tbaa !78
  %index.next343 = add nuw i64 %index342, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next343, %n.vec340
  br i1 %i.lt, label %middle.block344, label %vector.body341, !llvm.loop !466

middle.block344:                                  ; preds = %vector.body341
  %cmp.n345 = icmp eq i64 %i.lp, %n.vec340
  br i1 %cmp.n345, label %.loopexit46, label %scalar.ph337.preheader

scalar.ph337.preheader:                           ; preds = %.lr.ph69, %middle.block344
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lq, %middle.block344 ]
  br label %scalar.ph337

scalar.ph337:                                     ; preds = %scalar.ph337.preheader, %scalar.ph337
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph337 ], [ %indvars.iv140.ph, %scalar.ph337.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv140
  store i64 %i.lg, ptr %i.lu, align 2, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next141, %i.ll
  br i1 %i.lv, label %scalar.ph337, label %.loopexit46, !llvm.loop !467

.loopexit46:                                      ; preds = %scalar.ph337, %middle.block344, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %.idx254 = shl i64 %i.az, 3
  %i.mm = getelementptr i8, ptr %i.bg, i64 %.idx254
  %i.mn = getelementptr i8, ptr %i.mm, i64 -2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !82
  %.idx255 = mul i64 %i.az, 10
  %i.mq = getelementptr i8, ptr %i.bg, i64 %.idx255
  %i.mr = getelementptr i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !82
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.ms, ptr %i.mt, align 4, !tbaa !82
  %.idx256 = mul i64 %i.az, 12
  %i.mu = getelementptr i8, ptr %i.bg, i64 %.idx256
  %i.mv = getelementptr i8, ptr %i.mu, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !82
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !82
  %.idx257 = mul i64 %i.az, 14
  %i.my = getelementptr i8, ptr %i.bg, i64 %.idx257
  %i.mz = getelementptr i8, ptr %i.my, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !82
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.na, ptr %i.nb, align 16, !tbaa !82
  %.idx258 = shl i64 %i.az, 4
  %i.nc = getelementptr i8, ptr %i.bg, i64 %.idx258
  %i.nd = getelementptr i8, ptr %i.nc, i64 -2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !82
  %.idx259 = mul i64 %i.az, 18
  %i.ng = getelementptr i8, ptr %i.bg, i64 %.idx259
  %i.nh = getelementptr i8, ptr %i.ng, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !82
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.ni, ptr %i.nj, align 4, !tbaa !82
  %.idx260 = mul i64 %i.az, 20
  %i.nk = getelementptr i8, ptr %i.bg, i64 %.idx260
  %i.nl = getelementptr i8, ptr %i.nk, i64 -2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !82
  %.idx261 = mul i64 %i.az, 22
  %i.no = getelementptr i8, ptr %i.bg, i64 %.idx261
  %i.np = getelementptr i8, ptr %i.no, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !82
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !82
  %.idx262 = mul i64 %i.az, 24
  %i.ns = getelementptr i8, ptr %i.bg, i64 %.idx262
  %i.nt = getelementptr i8, ptr %i.ns, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !82
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !82
  %.idx263 = mul i64 %i.az, 26
  %i.nw = getelementptr i8, ptr %i.bg, i64 %.idx263
  %i.nx = getelementptr i8, ptr %i.nw, i64 -2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !82
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.ny, ptr %i.nz, align 4, !tbaa !82
  %.idx264 = mul i64 %i.az, 28
  %i.oa = getelementptr i8, ptr %i.bg, i64 %.idx264
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !82
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !82
  %.idx265 = mul i64 %i.az, 30
  %i.oe = getelementptr i8, ptr %i.bg, i64 %.idx265
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !82
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.og, ptr %i.oh, align 16, !tbaa !82
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.oi = icmp sgt i32 %i.db, 0
  %i.oj = add i32 %i.db, 15                       ; 2 uses
  br i1 %i.oi, label %.lr.ph72.preheader, label %.lr.ph76

.lr.ph72.preheader:                               ; preds = %.preheader43
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oj, i32 16) ; 4 uses
  %i.ok = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ok to i64
  %i.ol = zext nneg i32 %smax to i64              ; 3 uses
  %i.om = add nsw i64 %i.ol, -15                  ; 3 uses
  %min.iters.check354 = icmp ult i64 %i.om, 128
  br i1 %min.iters.check354, label %.lr.ph72.preheader388, label %vector.scevcheck347

vector.scevcheck347:                              ; preds = %.lr.ph72.preheader
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
  br i1 %i.pf, label %.lr.ph72.preheader388, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck347
  %scevgep348 = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.pg = shl nuw i32 %smax, 1
  %i.ph = zext i32 %i.pg to i64                   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.a, i64 %i.ph
  %scevgep349 = getelementptr i8, ptr %i.pi, i64 4
  %i.pj = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.pk = add nsw i64 %i.pj, %i.ph
  %i.pl = mul i64 %i.az, %i.pk
  %i.pm = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.pn = getelementptr i8, ptr %i.bb, i64 %i.pl
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.pm
  %scevgep350 = getelementptr i8, ptr %i.po, i64 -2 ; 4 uses
  %i.pp = add nsw i64 %i.pj, 32
  %i.pq = mul i64 %i.az, %i.pp
  %i.pr = getelementptr i8, ptr %i.bb, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.pm
  %scevgep351 = getelementptr i8, ptr %i.ps, i64 -2 ; 4 uses
  %i.pt = icmp ult ptr %scevgep350, %scevgep351
  %umin = select i1 %i.pt, ptr %scevgep350, ptr %scevgep351
  %i.pu = icmp ugt ptr %scevgep350, %scevgep351
  %umax = select i1 %i.pu, ptr %scevgep350, ptr %scevgep351
  %scevgep352 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep348, %scevgep352
  %bound1 = icmp ult ptr %umin, %scevgep349
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph72.preheader388, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck
  %n.vec356 = and i64 %i.om, -8                   ; 3 uses
  %i.pv = add nsw i64 %n.vec356, 16
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next359, %vector.body357 ] ; 9 uses
  %i.pw = add nuw i64 %index358, 16               ; 2 uses
  %i.px = add i64 %index358, 17
  %i.py = add i64 %index358, 18
  %i.pz = add i64 %index358, 19
  %i.qa = add i64 %index358, 20
  %i.qb = add i64 %index358, 21
  %i.qc = add i64 %index358, 22
  %i.qd = add i64 %index358, 23
  %i.qe = mul nuw nsw i64 %i.az, %i.pw
  %i.qf = mul nuw nsw i64 %i.az, %i.px
  %i.qg = mul nuw nsw i64 %i.az, %i.py
  %i.qh = mul nuw nsw i64 %i.az, %i.pz
  %i.qi = mul nuw nsw i64 %i.az, %i.qa
  %i.qj = mul nuw nsw i64 %i.az, %i.qb
  %i.qk = mul nuw nsw i64 %i.az, %i.qc
  %i.ql = mul nuw nsw i64 %i.az, %i.qd
  %i.qm = getelementptr [2 x i8], ptr %i.bg, i64 %i.qe
  %i.qn = getelementptr [2 x i8], ptr %i.bg, i64 %i.qf
  %i.qo = getelementptr [2 x i8], ptr %i.bg, i64 %i.qg
  %i.qp = getelementptr [2 x i8], ptr %i.bg, i64 %i.qh
  %i.qq = getelementptr [2 x i8], ptr %i.bg, i64 %i.qi
  %i.qr = getelementptr [2 x i8], ptr %i.bg, i64 %i.qj
  %i.qs = getelementptr [2 x i8], ptr %i.bg, i64 %i.qk
  %i.qt = getelementptr [2 x i8], ptr %i.bg, i64 %i.ql
  %i.qu = getelementptr i8, ptr %i.qm, i64 -2
  %i.qv = getelementptr i8, ptr %i.qn, i64 -2
  %i.qw = getelementptr i8, ptr %i.qo, i64 -2
  %i.qx = getelementptr i8, ptr %i.qp, i64 -2
  %i.qy = getelementptr i8, ptr %i.qq, i64 -2
  %i.qz = getelementptr i8, ptr %i.qr, i64 -2
  %i.ra = getelementptr i8, ptr %i.qs, i64 -2
  %i.rb = getelementptr i8, ptr %i.qt, i64 -2
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !82, !alias.scope !476
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !82, !alias.scope !476
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !82, !alias.scope !476
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !82, !alias.scope !476
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !82, !alias.scope !476
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !82, !alias.scope !476
  %i.ri = load i16, ptr %i.ra, align 2, !tbaa !82, !alias.scope !476
  %i.rj = load i16, ptr %i.rb, align 2, !tbaa !82, !alias.scope !476
  %i.rk = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 1
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 2
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 3
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 4
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 5
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 6
  %i.rr = insertelement <8 x i16> %i.rq, i16 %i.rj, i64 7
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.pw
  store <8 x i16> %i.rr, ptr %i.rs, align 2, !tbaa !82, !alias.scope !477, !noalias !476
  %index.next359 = add nuw i64 %index358, 8       ; 2 uses
  %i.rt = icmp eq i64 %index.next359, %n.vec356
  br i1 %i.rt, label %middle.block360, label %vector.body357, !llvm.loop !471

middle.block360:                                  ; preds = %vector.body357
  %cmp.n361 = icmp eq i64 %i.om, %n.vec356
  br i1 %cmp.n361, label %._crit_edge73, label %.lr.ph72.preheader388

.lr.ph72.preheader388:                            ; preds = %vector.memcheck, %vector.scevcheck347, %.lr.ph72.preheader, %middle.block360
  %indvars.iv146.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %vector.scevcheck347 ], [ 16, %.lr.ph72.preheader ], [ %i.pv, %middle.block360 ] ; 4 uses
  %i.ru = add nuw nsw i64 %i.ol, 1
  %i.rv = sub nsw i64 %i.ru, %indvars.iv146.ph
  %i.rw = sub nsw i64 %i.ol, %indvars.iv146.ph
  %xtraiter = and i64 %i.rv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader388, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader388 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader388 ]
  %i.rx = mul nuw nsw i64 %i.az, %indvars.iv146.prol
  %i.ry = getelementptr [2 x i8], ptr %i.bg, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 -2
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !82
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146.prol
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !82
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !472

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader388
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader388 ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.sc = icmp ult i64 %i.rw, 3
  br i1 %i.sc, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.sd = mul nuw nsw i64 %i.az, %indvars.iv146
  %i.se = getelementptr [2 x i8], ptr %i.bg, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -2
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !82
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv146
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !82
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.si = mul nuw nsw i64 %i.az, %indvars.iv.next147
  %i.sj = getelementptr [2 x i8], ptr %i.bg, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 -2
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !82
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !82
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.sn = mul nuw nsw i64 %i.az, %indvars.iv.next147.1
  %i.so = getelementptr [2 x i8], ptr %i.bg, i64 %i.sn
  %i.sp = getelementptr i8, ptr %i.so, i64 -2
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !82
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.1
  store i16 %i.sq, ptr %i.sr, align 2, !tbaa !82
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.ss = mul nuw nsw i64 %i.az, %indvars.iv.next147.2
  %i.st = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 -2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !82
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next147.2
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !82
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !473

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %middle.block360
  %i.sx = icmp samesign ult i32 %i.db, 16
  br i1 %i.sx, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn305 = sext i32 %i.oj to i64
  %.pn304 = mul nsw i64 %i.az, %.pn305
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn304
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.sy = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.sz = sub nsw i32 16, %i.db                   ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.tb = sext i32 %i.db to i64
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.tb ; 2 uses
  %i.td = zext nneg i32 %i.sz to i64              ; 2 uses
  %i.te = call i64 @llvm.umax.i64(i64 %i.td, i64 4)
end_hunk_10
begin_hunk_11_@intra_pred_5_12:bb.a
.loopexit47:                                      ; preds = %scalar.ph379, %middle.block386, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
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
  %.idx268 = shl i64 %i.az, 5
  %i.oi = getelementptr i8, ptr %i.bg, i64 %.idx268
  %i.oj = getelementptr i8, ptr %i.oi, i64 -2
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !82
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !82
  %.idx269 = mul i64 %i.az, 34
  %i.om = getelementptr i8, ptr %i.bg, i64 %.idx269
  %i.on = getelementptr i8, ptr %i.om, i64 -2
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i16 %i.oo, ptr %i.op, align 4, !tbaa !82
  %.idx270 = mul i64 %i.az, 36
  %i.oq = getelementptr i8, ptr %i.bg, i64 %.idx270
  %i.or = getelementptr i8, ptr %i.oq, i64 -2
  %i.os = load i16, ptr %i.or, align 2, !tbaa !82
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %i.os, ptr %i.ot, align 2, !tbaa !82
  %.idx271 = mul i64 %i.az, 38
  %i.ou = getelementptr i8, ptr %i.bg, i64 %.idx271
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !82
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i16 %i.ow, ptr %i.ox, align 8, !tbaa !82
  %.idx272 = mul i64 %i.az, 40
  %i.oy = getelementptr i8, ptr %i.bg, i64 %.idx272
  %i.oz = getelementptr i8, ptr %i.oy, i64 -2
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !82
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !82
  %.idx273 = mul i64 %i.az, 42
  %i.pc = getelementptr i8, ptr %i.bg, i64 %.idx273
  %i.pd = getelementptr i8, ptr %i.pc, i64 -2
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !82
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !82
  %.idx274 = mul i64 %i.az, 44
  %i.pg = getelementptr i8, ptr %i.bg, i64 %.idx274
  %i.ph = getelementptr i8, ptr %i.pg, i64 -2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !82
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !82
  %.idx275 = mul i64 %i.az, 46
  %i.pk = getelementptr i8, ptr %i.bg, i64 %.idx275
  %i.pl = getelementptr i8, ptr %i.pk, i64 -2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i16 %i.pm, ptr %i.pn, align 16, !tbaa !82
  %.idx276 = mul i64 %i.az, 48
  %i.po = getelementptr i8, ptr %i.bg, i64 %.idx276
  %i.pp = getelementptr i8, ptr %i.po, i64 -2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !82
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !82
  %.idx277 = mul i64 %i.az, 50
  %i.ps = getelementptr i8, ptr %i.bg, i64 %.idx277
  %i.pt = getelementptr i8, ptr %i.ps, i64 -2
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !82
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i16 %i.pu, ptr %i.pv, align 4, !tbaa !82
  %.idx278 = mul i64 %i.az, 52
  %i.pw = getelementptr i8, ptr %i.bg, i64 %.idx278
  %i.px = getelementptr i8, ptr %i.pw, i64 -2
  %i.py = load i16, ptr %i.px, align 2, !tbaa !82
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !82
  %.idx279 = mul i64 %i.az, 54
  %i.qa = getelementptr i8, ptr %i.bg, i64 %.idx279
  %i.qb = getelementptr i8, ptr %i.qa, i64 -2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !82
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.qc, ptr %i.qd, align 8, !tbaa !82
  %.idx280 = mul i64 %i.az, 56
  %i.qe = getelementptr i8, ptr %i.bg, i64 %.idx280
  %i.qf = getelementptr i8, ptr %i.qe, i64 -2
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !82
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !82
  %.idx281 = mul i64 %i.az, 58
  %i.qi = getelementptr i8, ptr %i.bg, i64 %.idx281
  %i.qj = getelementptr i8, ptr %i.qi, i64 -2
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 %i.qk, ptr %i.ql, align 4, !tbaa !82
  %.idx282 = mul i64 %i.az, 60
  %i.qm = getelementptr i8, ptr %i.bg, i64 %.idx282
  %i.qn = getelementptr i8, ptr %i.qm, i64 -2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !82
  %.idx283 = mul i64 %i.az, 62
  %i.qq = getelementptr i8, ptr %i.bg, i64 %.idx283
  %i.qr = getelementptr i8, ptr %i.qq, i64 -2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !82
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 %i.qs, ptr %i.qt, align 16, !tbaa !82
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.qu = icmp sgt i32 %i.db, 0
  %i.qv = add i32 %i.db, 31                       ; 2 uses
  br i1 %i.qu, label %.lr.ph73.preheader, label %.lr.ph77

.lr.ph73.preheader:                               ; preds = %.preheader44
  %smax = tail call i32 @llvm.smax.i32(i32 %i.qv, i32 32) ; 4 uses
  %i.qw = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.qw to i64
  %i.qx = zext nneg i32 %smax to i64              ; 3 uses
  %i.qy = add nsw i64 %i.qx, -31                  ; 3 uses
  %min.iters.check396 = icmp ult i64 %i.qy, 128
  br i1 %min.iters.check396, label %.lr.ph73.preheader430, label %vector.scevcheck389

vector.scevcheck389:                              ; preds = %.lr.ph73.preheader
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
  br i1 %i.rr, label %.lr.ph73.preheader430, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck389
  %scevgep390 = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.rs = shl nuw i32 %smax, 1
  %i.rt = zext i32 %i.rs to i64                   ; 2 uses
  %i.ru = getelementptr i8, ptr %i.a, i64 %i.rt
  %scevgep391 = getelementptr i8, ptr %i.ru, i64 4
  %i.rv = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.rw = add nsw i64 %i.rv, %i.rt
  %i.rx = mul i64 %i.az, %i.rw
  %i.ry = shl nsw i64 %i.bc, 1                    ; 2 uses
  %i.rz = getelementptr i8, ptr %i.bb, i64 %i.rx
  %i.sa = getelementptr i8, ptr %i.rz, i64 %i.ry
  %scevgep392 = getelementptr i8, ptr %i.sa, i64 -2 ; 4 uses
  %i.sb = add nsw i64 %i.rv, 64
  %i.sc = mul i64 %i.az, %i.sb
  %i.sd = getelementptr i8, ptr %i.bb, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.ry
  %scevgep393 = getelementptr i8, ptr %i.se, i64 -2 ; 4 uses
  %i.sf = icmp ult ptr %scevgep392, %scevgep393
  %umin = select i1 %i.sf, ptr %scevgep392, ptr %scevgep393
  %i.sg = icmp ugt ptr %scevgep392, %scevgep393
  %umax = select i1 %i.sg, ptr %scevgep392, ptr %scevgep393
  %scevgep394 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep390, %scevgep394
  %bound1 = icmp ult ptr %umin, %scevgep391
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.preheader430, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck
  %n.vec398 = and i64 %i.qy, -8                   ; 3 uses
  %i.sh = add nsw i64 %n.vec398, 32
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next401, %vector.body399 ] ; 9 uses
  %i.si = add nuw i64 %index400, 32               ; 2 uses
  %i.sj = add i64 %index400, 33
  %i.sk = add i64 %index400, 34
  %i.sl = add i64 %index400, 35
  %i.sm = add i64 %index400, 36
  %i.sn = add i64 %index400, 37
  %i.so = add i64 %index400, 38
  %i.sp = add i64 %index400, 39
  %i.sq = mul nuw nsw i64 %i.az, %i.si
  %i.sr = mul nuw nsw i64 %i.az, %i.sj
  %i.ss = mul nuw nsw i64 %i.az, %i.sk
  %i.st = mul nuw nsw i64 %i.az, %i.sl
  %i.su = mul nuw nsw i64 %i.az, %i.sm
  %i.sv = mul nuw nsw i64 %i.az, %i.sn
  %i.sw = mul nuw nsw i64 %i.az, %i.so
  %i.sx = mul nuw nsw i64 %i.az, %i.sp
  %i.sy = getelementptr [2 x i8], ptr %i.bg, i64 %i.sq
  %i.sz = getelementptr [2 x i8], ptr %i.bg, i64 %i.sr
  %i.ta = getelementptr [2 x i8], ptr %i.bg, i64 %i.ss
  %i.tb = getelementptr [2 x i8], ptr %i.bg, i64 %i.st
  %i.tc = getelementptr [2 x i8], ptr %i.bg, i64 %i.su
  %i.td = getelementptr [2 x i8], ptr %i.bg, i64 %i.sv
  %i.te = getelementptr [2 x i8], ptr %i.bg, i64 %i.sw
  %i.tf = getelementptr [2 x i8], ptr %i.bg, i64 %i.sx
  %i.tg = getelementptr i8, ptr %i.sy, i64 -2
  %i.th = getelementptr i8, ptr %i.sz, i64 -2
  %i.ti = getelementptr i8, ptr %i.ta, i64 -2
  %i.tj = getelementptr i8, ptr %i.tb, i64 -2
  %i.tk = getelementptr i8, ptr %i.tc, i64 -2
  %i.tl = getelementptr i8, ptr %i.td, i64 -2
  %i.tm = getelementptr i8, ptr %i.te, i64 -2
  %i.tn = getelementptr i8, ptr %i.tf, i64 -2
  %i.to = load i16, ptr %i.tg, align 2, !tbaa !82, !alias.scope !492
  %i.tp = load i16, ptr %i.th, align 2, !tbaa !82, !alias.scope !492
  %i.tq = load i16, ptr %i.ti, align 2, !tbaa !82, !alias.scope !492
  %i.tr = load i16, ptr %i.tj, align 2, !tbaa !82, !alias.scope !492
  %i.ts = load i16, ptr %i.tk, align 2, !tbaa !82, !alias.scope !492
  %i.tt = load i16, ptr %i.tl, align 2, !tbaa !82, !alias.scope !492
  %i.tu = load i16, ptr %i.tm, align 2, !tbaa !82, !alias.scope !492
  %i.tv = load i16, ptr %i.tn, align 2, !tbaa !82, !alias.scope !492
  %i.tw = insertelement <8 x i16> poison, i16 %i.to, i64 0
  %i.tx = insertelement <8 x i16> %i.tw, i16 %i.tp, i64 1
  %i.ty = insertelement <8 x i16> %i.tx, i16 %i.tq, i64 2
  %i.tz = insertelement <8 x i16> %i.ty, i16 %i.tr, i64 3
  %i.ua = insertelement <8 x i16> %i.tz, i16 %i.ts, i64 4
  %i.ub = insertelement <8 x i16> %i.ua, i16 %i.tt, i64 5
  %i.uc = insertelement <8 x i16> %i.ub, i16 %i.tu, i64 6
  %i.ud = insertelement <8 x i16> %i.uc, i16 %i.tv, i64 7
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.si
  store <8 x i16> %i.ud, ptr %i.ue, align 2, !tbaa !82, !alias.scope !493, !noalias !492
  %index.next401 = add nuw i64 %index400, 8       ; 2 uses
  %i.uf = icmp eq i64 %index.next401, %n.vec398
  br i1 %i.uf, label %middle.block402, label %vector.body399, !llvm.loop !487

middle.block402:                                  ; preds = %vector.body399
  %cmp.n403 = icmp eq i64 %i.qy, %n.vec398
  br i1 %cmp.n403, label %._crit_edge74, label %.lr.ph73.preheader430

.lr.ph73.preheader430:                            ; preds = %vector.memcheck, %vector.scevcheck389, %.lr.ph73.preheader, %middle.block402
  %indvars.iv148.ph = phi i64 [ 32, %vector.memcheck ], [ 32, %vector.scevcheck389 ], [ 32, %.lr.ph73.preheader ], [ %i.sh, %middle.block402 ] ; 4 uses
  %i.ug = add nuw nsw i64 %i.qx, 1
  %i.uh = sub nsw i64 %i.ug, %indvars.iv148.ph
  %i.ui = sub nsw i64 %i.qx, %indvars.iv148.ph
  %xtraiter = and i64 %i.uh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader430, %.lr.ph73.prol
  %indvars.iv148.prol = phi i64 [ %indvars.iv.next149.prol, %.lr.ph73.prol ], [ %indvars.iv148.ph, %.lr.ph73.preheader430 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader430 ]
  %i.uj = mul nuw nsw i64 %i.az, %indvars.iv148.prol
  %i.uk = getelementptr [2 x i8], ptr %i.bg, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.uk, i64 -2
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !82
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148.prol
  store i16 %i.um, ptr %i.un, align 2, !tbaa !82
  %indvars.iv.next149.prol = add nuw nsw i64 %indvars.iv148.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !488

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader430
  %indvars.iv148.unr = phi i64 [ %indvars.iv148.ph, %.lr.ph73.preheader430 ], [ %indvars.iv.next149.prol, %.lr.ph73.prol ]
  %i.uo = icmp ult i64 %i.ui, 3
  br i1 %i.uo, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.3, %.lr.ph73 ], [ %indvars.iv148.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.up = mul nuw nsw i64 %i.az, %indvars.iv148
  %i.uq = getelementptr [2 x i8], ptr %i.bg, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 -2
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !82
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv148
  store i16 %i.us, ptr %i.ut, align 2, !tbaa !82
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.uu = mul nuw nsw i64 %i.az, %indvars.iv.next149
  %i.uv = getelementptr [2 x i8], ptr %i.bg, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 -2
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !82
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !82
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2 ; 2 uses
  %i.uz = mul nuw nsw i64 %i.az, %indvars.iv.next149.1
  %i.va = getelementptr [2 x i8], ptr %i.bg, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.va, i64 -2
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !82
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.1
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !82
  %indvars.iv.next149.2 = add nuw nsw i64 %indvars.iv148, 3 ; 2 uses
  %i.ve = mul nuw nsw i64 %i.az, %indvars.iv.next149.2
  %i.vf = getelementptr [2 x i8], ptr %i.bg, i64 %i.ve
  %i.vg = getelementptr i8, ptr %i.vf, i64 -2
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !82
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.next149.2
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !82
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv148, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next149.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !489

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block402
  %i.vj = icmp samesign ult i32 %i.db, 32
  br i1 %i.vj, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn347 = sext i32 %i.qv to i64
  %.pn346 = mul nsw i64 %i.az, %.pn347
  %.pn = getelementptr [2 x i8], ptr %i.bg, i64 %.pn346
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -2
  %.in.in = load i16, ptr %.in.in.in, align 2, !tbaa !82
  %.in = zext i16 %.in.in to i64
  %i.vk = mul nuw i64 %.in, 281479271743489       ; 2 uses
  %i.vl = sub nsw i32 32, %i.db                   ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.vn = sext i32 %i.db to i64
  %i.vo = getelementptr inbounds [2 x i8], ptr %i.vm, i64 %i.vn ; 2 uses
  %i.vp = zext nneg i32 %i.vl to i64              ; 2 uses
  %i.vq = call i64 @llvm.umax.i64(i64 %i.vp, i64 4)
end_hunk_11
begin_hunk_12_@intra_pred_2_8:bb.a
.lr.ph54:                                         ; preds = %bb.m
  %i.ja = add nsw i32 %3, -1
  %i.jb = ashr i32 %i.ja, %i.dl
  %i.jc = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !183
  %i.je = mul nsw i32 %i.jb, %i.bh
  %i.jf = add i32 %i.je, %i.ix
  %i.jg = zext nneg i32 %.spec.select.i to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph54, %bb.n
  %indvars.iv131 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next132, %bb.n ] ; 2 uses
  %.0726.i52 = phi i32 [ 0, %.lr.ph54 ], [ %i.jp, %bb.n ]
  %i.jh = trunc nuw nsw i64 %indvars.iv131 to i32
  %i.ji = add i32 %i.jf, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [12 x i8], ptr %i.jd, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 10
  %i.jm = load i8, ptr %i.jl, align 2, !tbaa !185
  %i.jn = icmp eq i8 %i.jm, 0
  %i.jo = zext i1 %i.jn to i32
  %i.jp = or i32 %.0726.i52, %i.jo                ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %i.jq = icmp samesign ult i64 %indvars.iv.next132, %i.jg
  br i1 %i.jq, label %bb.n, label %.loopexit42, !llvm.loop !55

.loopexit42:                                      ; preds = %bb.n, %bb.m, %bb.l
  %.1727.i = phi i32 [ %i.ce, %bb.l ], [ 0, %bb.m ], [ %i.jp, %bb.n ]
  %or.cond11.i = select i1 %i.cr, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge60

bb.o:                                             ; preds = %.loopexit42
  %i.jr = ashr i32 %i.de, %i.dl                   ; 2 uses
  %i.js = sub nsw i32 %i.bh, %i.jr
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.js) ; 2 uses
  %i.jt = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.jt, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.o
  %i.ju = add nsw i32 %3, -1
  %i.jv = ashr i32 %i.ju, %i.dl
  %i.jw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !183
  %i.jy = mul nsw i32 %i.jv, %i.bh
  %i.jz = add i32 %i.jy, %i.jr
  %i.ka = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph59, %bb.p
  %indvars.iv134 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next135, %bb.p ] ; 2 uses
  %.0723.i57 = phi i32 [ 0, %.lr.ph59 ], [ %i.kj, %bb.p ]
  %i.kb = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.kc = add i32 %i.jz, %i.kb
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [12 x i8], ptr %i.jx, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 10
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !185
  %i.kh = icmp eq i8 %i.kg, 0
  %i.ki = zext i1 %i.kh to i32
  %i.kj = or i32 %.0723.i57, %i.ki                ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %i.kk = icmp samesign ult i64 %indvars.iv.next135, %i.ka
  br i1 %i.kk, label %bb.p, label %._crit_edge60.loopexit, !llvm.loop !56

._crit_edge60.loopexit:                           ; preds = %bb.p
  %i.kl = icmp ne i32 %i.kj, 0
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %bb.o, %._crit_edge60.loopexit, %.loopexit42
  %.1724.i = phi i1 [ %i.cr, %.loopexit42 ], [ false, %bb.o ], [ %i.kl, %._crit_edge60.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bj, i8 -128, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.c, i8 -128, i64 65, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge60, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge60 ], [ %i.by, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge60 ], [ %i.ca, %bb.g ] ; 2 uses
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge60 ], [ %i.cc, %bb.g ] ; 4 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge60 ], [ %i.ce, %bb.g ] ; 5 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge60 ], [ %i.cr, %bb.g ] ; 5 uses
  %i.km = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.km, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kn = xor i64 %i.ax, -1
  %i.ko = getelementptr inbounds i8, ptr %i.bf, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !78  ; 2 uses
  store i8 %i.kp, ptr %i.a, align 16, !tbaa !78
  store i8 %i.kp, ptr %i.c, align 16, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kq = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.kq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kr = sub nsw i64 0, %i.ax
  %i.ks = getelementptr inbounds i8, ptr %i.bf, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 1
  store i32 %i.kt, ptr %i.bk, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit41

bb.v:                                             ; preds = %bb.u
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.kv = sub nsw i64 0, %i.ax
  %i.kw = getelementptr inbounds i8, ptr %i.bf, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 1
  store i32 %i.ky, ptr %i.ku, align 1
  %i.kz = add nsw i32 %i.dg, 3
  %i.la = sext i32 %i.kz to i64
  %i.lb = sub nsw i64 %i.la, %i.ax
  %i.lc = getelementptr inbounds i8, ptr %i.bf, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !78
  %i.le = zext i8 %i.ld to i32
  %i.lf = mul nuw i32 %i.le, 16843009             ; 2 uses
  %i.lg = icmp slt i32 %i.dg, 4
  br i1 %i.lg, label %.lr.ph64, label %.loopexit41

.lr.ph64:                                         ; preds = %bb.v
  %i.lh = sub nsw i32 4, %i.dg                    ; 2 uses
  %i.li = sext i32 %i.dg to i64
  %i.lj = getelementptr inbounds i8, ptr %i.ku, i64 %i.li ; 2 uses
  %i.lk = zext nneg i32 %i.lh to i64              ; 2 uses
  %i.ll = call i64 @llvm.umax.i64(i64 %i.lk, i64 4)
  %i.lm = add nsw i64 %i.ll, -1
  %i.ln = lshr i64 %i.lm, 2
  %i.lo = add nuw nsw i64 %i.ln, 1                ; 2 uses
  %min.iters.check296 = icmp ult i32 %i.lh, 29
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph64
  %n.vec298 = and i64 %i.lo, 9223372036854775800  ; 3 uses
  %i.lp = shl i64 %n.vec298, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next301, %vector.body299 ] ; 2 uses
  %i.lq = shl nuw i64 %index300, 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.lr, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat, ptr %i.ls, align 1, !tbaa !78
  %index.next301 = add nuw i64 %index300, 8       ; 2 uses
  %i.lt = icmp eq i64 %index.next301, %n.vec298
  br i1 %i.lt, label %middle.block302, label %vector.body299, !llvm.loop !539

middle.block302:                                  ; preds = %vector.body299
  %cmp.n303 = icmp eq i64 %i.lo, %n.vec298
  br i1 %cmp.n303, label %.loopexit41, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %.lr.ph64, %middle.block302
  %indvars.iv137.ph = phi i64 [ 0, %.lr.ph64 ], [ %i.lp, %middle.block302 ]
  br label %scalar.ph295

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph295 ], [ %indvars.iv137.ph, %scalar.ph295.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 %indvars.iv137
  store i32 %i.lf, ptr %i.lu, align 1, !tbaa !78
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next138, %i.lk
  br i1 %i.lv, label %scalar.ph295, label %.loopexit41, !llvm.loop !540

.loopexit41:                                      ; preds = %scalar.ph295, %middle.block302, %bb.v, %bb.u
  %i.lw = icmp ne i32 %.2734.i, 0                 ; 4 uses
  br i1 %i.lw, label %.preheader39.preheader, label %.loopexit40

.preheader39.preheader:                           ; preds = %.loopexit41
  %i.lx = getelementptr i8, ptr %i.bf, i64 -1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !78
  store i8 %i.ly, ptr %i.bj, align 1, !tbaa !78
  %i.lz = getelementptr i8, ptr %i.bf, i64 %i.ax
  %i.ma = getelementptr i8, ptr %i.lz, i64 -1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !78
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.mb, ptr %i.mc, align 2, !tbaa !78
  %i.md = shl nsw i64 %i.ax, 1
  %i.me = getelementptr i8, ptr %i.bf, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !78
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !78
  %i.mi = mul nsw i64 %i.ax, 3
  %i.mj = getelementptr i8, ptr %i.bf, i64 %i.mi
  %i.mk = getelementptr i8, ptr %i.mj, i64 -1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !78
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ml, ptr %i.mm, align 4, !tbaa !78
  br label %.loopexit40

.loopexit40:                                      ; preds = %.preheader39.preheader, %.loopexit41
  br i1 %.2738.i, label %.preheader38, label %.loopexit37

.preheader38:                                     ; preds = %.loopexit40
  %i.mn = icmp sgt i32 %i.cy, 0
  %i.mo = add i32 %i.cy, 3                        ; 2 uses
  br i1 %i.mn, label %iter.check, label %.lr.ph71

iter.check:                                       ; preds = %.preheader38
  %smax = call i32 @llvm.smax.i32(i32 %i.mo, i32 4) ; 2 uses
  %i.mp = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.mp to i64
  %i.mq = zext nneg i32 %smax to i64              ; 3 uses
  %i.mr = add nsw i64 %i.mq, -3                   ; 7 uses
  %min.iters.check308 = icmp ugt i64 %i.mr, 7
  %ident.check306.not = icmp eq i32 %i.aw, 1
  %or.cond339 = select i1 %min.iters.check308, i1 %ident.check306.not, i1 false
  br i1 %or.cond339, label %vector.memcheck, label %.lr.ph67.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ms = or disjoint i64 %i.b, 2
  %i.mt = add i64 %i.ba, %i.bd
  %i.mu = add i64 %i.mt, %i.bb
  %i.mv = sub i64 %i.mu, %i.ms
  %diff.check = icmp ugt i64 %i.mv, -32
  br i1 %diff.check, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check309 = icmp ult i64 %i.mr, 32
  br i1 %min.iters.check309, label %vec.epilog.ph, label %vector.ph310

vector.ph310:                                     ; preds = %vector.main.loop.iter.check
  %i.mw = and i64 %i.mr, 24
  %n.vec311 = and i64 %i.mr, -32                  ; 4 uses
  %i.mx = or disjoint i64 %n.vec311, 4
  br label %vector.body312

vector.body312:                                   ; preds = %vector.ph310, %vector.body312
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next315, %vector.body312 ] ; 2 uses
  %i.my = or disjoint i64 %index313, 4            ; 2 uses
  %i.mz = getelementptr i8, ptr %i.bf, i64 %i.my  ; 2 uses
  %i.na = getelementptr i8, ptr %i.mz, i64 -1
  %i.nb = getelementptr i8, ptr %i.mz, i64 15
  %wide.load = load <16 x i8>, ptr %i.na, align 1, !tbaa !78
  %wide.load314 = load <16 x i8>, ptr %i.nb, align 1, !tbaa !78
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.my ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <16 x i8> %wide.load, ptr %i.nc, align 1, !tbaa !78
  store <16 x i8> %wide.load314, ptr %i.nd, align 1, !tbaa !78
  %index.next315 = add nuw i64 %index313, 32      ; 2 uses
  %i.ne = icmp eq i64 %index.next315, %n.vec311
  br i1 %i.ne, label %middle.block316, label %vector.body312, !llvm.loop !541

middle.block316:                                  ; preds = %vector.body312
  %cmp.n317 = icmp eq i64 %i.mr, %n.vec311
  br i1 %cmp.n317, label %._crit_edge68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block316
  %min.epilog.iters.check = icmp eq i64 %i.mw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph67.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec311, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec319 = and i64 %i.mr, -8                   ; 3 uses
  %i.nf = or disjoint i64 %n.vec319, 4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next322, %vec.epilog.vector.body ] ; 2 uses
  %i.ng = or disjoint i64 %index320, 4            ; 2 uses
  %i.nh = getelementptr i8, ptr %i.bf, i64 %i.ng
  %i.ni = getelementptr i8, ptr %i.nh, i64 -1
  %wide.load321 = load <8 x i8>, ptr %i.ni, align 1, !tbaa !78
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ng
  store <8 x i8> %wide.load321, ptr %i.nj, align 1, !tbaa !78
  %index.next322 = add nuw i64 %index320, 8       ; 2 uses
  %i.nk = icmp eq i64 %index.next322, %n.vec319
  br i1 %i.nk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !542

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n323 = icmp eq i64 %i.mr, %n.vec319
  br i1 %cmp.n323, label %._crit_edge68, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv143.ph = phi i64 [ 4, %iter.check ], [ 4, %vector.memcheck ], [ %i.mx, %vec.epilog.iter.check ], [ %i.nf, %vec.epilog.middle.block ] ; 4 uses
  %i.nl = add nuw nsw i64 %i.mq, 1
  %i.nm = sub nsw i64 %i.nl, %indvars.iv143.ph
  %i.nn = sub nsw i64 %i.mq, %indvars.iv143.ph
  %xtraiter = and i64 %i.nm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader, %.lr.ph67.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %.lr.ph67.prol ], [ %indvars.iv143.ph, %.lr.ph67.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader ]
  %i.no = mul nsw i64 %indvars.iv143.prol, %i.ax
  %i.np = getelementptr i8, ptr %i.bf, i64 %i.no
  %i.nq = getelementptr i8, ptr %i.np, i64 -1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !78
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv143.prol
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !78
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !543

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %.lr.ph67.preheader ], [ %indvars.iv.next144.prol, %.lr.ph67.prol ]
  %i.nt = icmp ult i64 %i.nn, 3
  br i1 %i.nt, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph67 ], [ %indvars.iv143.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.nu = mul nsw i64 %indvars.iv143, %i.ax
  %i.nv = getelementptr i8, ptr %i.bf, i64 %i.nu
  %i.nw = getelementptr i8, ptr %i.nv, i64 -1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !78
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv143
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !78
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.nz = mul nsw i64 %indvars.iv.next144, %i.ax
  %i.oa = getelementptr i8, ptr %i.bf, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.oa, i64 -1
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !78
  %i.od = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next144
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !78
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %i.oe = mul nsw i64 %indvars.iv.next144.1, %i.ax
  %i.of = getelementptr i8, ptr %i.bf, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 -1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !78
  %i.oi = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next144.1
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !78
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %i.oj = mul nsw i64 %indvars.iv.next144.2, %i.ax
  %i.ok = getelementptr i8, ptr %i.bf, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 -1
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !78
  %i.on = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next144.2
  store i8 %i.om, ptr %i.on, align 1, !tbaa !78
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge68, label %.lr.ph67, !llvm.loop !544

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %vec.epilog.middle.block, %middle.block316
  %i.oo = icmp samesign ult i32 %i.cy, 4
  br i1 %i.oo, label %.lr.ph71, label %.loopexit37

.lr.ph71:                                         ; preds = %.preheader38, %._crit_edge68
  %.pn264 = sext i32 %i.mo to i64
  %.pn263 = mul nsw i64 %.pn264, %i.ax
  %.pn = getelementptr i8, ptr %i.bf, i64 %.pn263
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -1
  %.in.in = load i8, ptr %.in.in.in, align 1, !tbaa !78
  %.in = zext i8 %.in.in to i32
  %i.op = mul nuw i32 %.in, 16843009              ; 2 uses
  %i.oq = sub nsw i32 4, %i.cy                    ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.os = sext i32 %i.cy to i64
  %i.ot = getelementptr inbounds i8, ptr %i.or, i64 %i.os ; 2 uses
  %i.ou = zext nneg i32 %i.oq to i64              ; 2 uses
  %i.ov = call i64 @llvm.umax.i64(i64 %i.ou, i64 4)
  %i.ow = add nsw i64 %i.ov, -1
  %i.ox = lshr i64 %i.ow, 2
  %i.oy = add nuw nsw i64 %i.ox, 1                ; 2 uses
  %min.iters.check326 = icmp ult i32 %i.oq, 29
  br i1 %min.iters.check326, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph71
  %n.vec328 = and i64 %i.oy, 9223372036854775800  ; 3 uses
  %i.oz = shl i64 %n.vec328, 2
  %broadcast.splatinsert329 = insertelement <4 x i32> poison, i32 %i.op, i64 0
  %broadcast.splat330 = shufflevector <4 x i32> %broadcast.splatinsert329, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph327
  %index332 = phi i64 [ 0, %vector.ph327 ], [ %index.next333, %vector.body331 ] ; 2 uses
  %i.pa = shl nuw i64 %index332, 2
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.pa ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  store <4 x i32> %broadcast.splat330, ptr %i.pb, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat330, ptr %i.pc, align 1, !tbaa !78
  %index.next333 = add nuw i64 %index332, 8       ; 2 uses
  %i.pd = icmp eq i64 %index.next333, %n.vec328
  br i1 %i.pd, label %middle.block334, label %vector.body331, !llvm.loop !545

middle.block334:                                  ; preds = %vector.body331
  %cmp.n335 = icmp eq i64 %i.oy, %n.vec328
  br i1 %cmp.n335, label %.loopexit37, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.lr.ph71, %middle.block334
  %indvars.iv146.ph = phi i64 [ 0, %.lr.ph71 ], [ %i.oz, %middle.block334 ]
  br label %scalar.ph325

scalar.ph325:                                     ; preds = %scalar.ph325.preheader, %scalar.ph325
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %scalar.ph325 ], [ %indvars.iv146.ph, %scalar.ph325.preheader ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ot, i64 %indvars.iv146
  store i32 %i.op, ptr %i.pe, align 1, !tbaa !78
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %i.pf = icmp samesign ult i64 %indvars.iv.next147, %i.ou
  br i1 %i.pf, label %scalar.ph325, label %.loopexit37, !llvm.loop !546

.loopexit37:                                      ; preds = %scalar.ph325, %middle.block334, %._crit_edge68, %.loopexit40
  br i1 %i.dj, label %bb.w, label %.loopexit27

bb.w:                                             ; preds = %.loopexit37
  %or.cond13.i = or i1 %.2738.i, %i.lw            ; 2 uses
  %or.cond15.i = or i1 %or.cond13.i, %i.km        ; 2 uses
  %or.cond17.i = or i1 %or.cond15.i, %i.kq
  %or.cond19.i = select i1 %or.cond17.i, i1 true, i1 %.2725.i
  br i1 %or.cond19.i, label %bb.x, label %.loopexit27.thread

bb.x:                                             ; preds = %bb.w
  %i.pg = icmp slt i32 %i.da, %i.dc
  %i.ph = sub nsw i32 %i.dc, %2
  %i.pi = ashr i32 %i.ph, %i.k                    ; 2 uses
  %i.pj = select i1 %i.pg, i32 8, i32 %i.pi
  %i.pk = icmp slt i32 %i.ct, %i.cv
  %i.pl = sub nsw i32 %i.cv, %3
  %i.pm = ashr i32 %i.pl, %i.n                    ; 2 uses
  %i.pn = select i1 %i.pk, i32 8, i32 %i.pm
  %i.po = icmp slt i32 %i.de, %i.dc
  %i.pp = select i1 %i.po, i32 4, i32 %i.pi
  %.0721.i = select i1 %.2725.i, i32 %i.pj, i32 %i.pp ; 8 uses
  %i.pq = icmp slt i32 %i.cw, %i.cv
  %i.pr = select i1 %i.pq, i32 4, i32 %i.pm
  %.0720.i = select i1 %.2738.i, i32 %i.pn, i32 %i.pr ; 7 uses
  br i1 %or.cond15.i, label %.preheader34, label %.preheader36

end_hunk_12
begin_hunk_13_@intra_pred_3_8:bb.a
  br i1 %i.ju, label %bb.n, label %.loopexit47, !llvm.loop !55

.loopexit47:                                      ; preds = %bb.n, %bb.m, %bb.l
  %.1727.i = phi i32 [ %i.ci, %bb.l ], [ 0, %bb.m ], [ %i.jt, %bb.n ]
  %or.cond11.i = select i1 %i.cv, i1 %.not800.i, i1 false
  br i1 %or.cond11.i, label %bb.o, label %._crit_edge65

bb.o:                                             ; preds = %.loopexit47
  %i.jv = ashr i32 %i.di, %i.dp                   ; 2 uses
  %i.jw = sub nsw i32 %i.bj, %i.jv
  %.spec.select821.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.jw) ; 2 uses
  %i.jx = icmp sgt i32 %.spec.select821.i, 0
  br i1 %i.jx, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.o
  %i.jy = add nsw i32 %3, -1
  %i.jz = ashr i32 %i.jy, %i.dp
  %i.ka = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !183
  %i.kc = mul nsw i32 %i.jz, %i.bj
  %i.kd = add i32 %i.kc, %i.jv
  %i.ke = zext nneg i32 %.spec.select821.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph64, %bb.p
  %indvars.iv137 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next138, %bb.p ] ; 2 uses
  %.0723.i62 = phi i32 [ 0, %.lr.ph64 ], [ %i.kn, %bb.p ]
  %i.kf = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.kg = add i32 %i.kd, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [12 x i8], ptr %i.kb, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 10
  %i.kk = load i8, ptr %i.kj, align 2, !tbaa !185
  %i.kl = icmp eq i8 %i.kk, 0
  %i.km = zext i1 %i.kl to i32
  %i.kn = or i32 %.0723.i62, %i.km                ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %i.ko = icmp samesign ult i64 %indvars.iv.next138, %i.ke
  br i1 %i.ko, label %bb.p, label %._crit_edge65.loopexit, !llvm.loop !56

._crit_edge65.loopexit:                           ; preds = %bb.p
  %i.kp = icmp ne i32 %i.kn, 0
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.o, %._crit_edge65.loopexit, %.loopexit47
  %.1724.i = phi i1 [ %i.cv, %.loopexit47 ], [ false, %bb.o ], [ %i.kp, %._crit_edge65.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bl, i8 -128, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.d, i8 -128, i64 65, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cc, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.ce, %bb.g ] ; 2 uses
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge65 ], [ %i.cg, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge65 ], [ %i.ci, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge65 ], [ %i.cv, %bb.g ] ; 5 uses
  %i.kq = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kr = xor i64 %i.az, -1
  %i.ks = getelementptr inbounds i8, ptr %i.bh, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !78  ; 2 uses
  store i8 %i.kt, ptr %i.a, align 16, !tbaa !78
  store i8 %i.kt, ptr %i.d, align 16, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ku = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.ku, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kv = sub nsw i64 0, %i.az
  %i.kw = getelementptr inbounds i8, ptr %i.bh, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 1
  store i64 %i.kx, ptr %i.bm, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit46

bb.v:                                             ; preds = %bb.u
  %i.ky = getelementptr inbounds nuw i8, ptr %i.d, i64 9 ; 2 uses
  %i.kz = sub nsw i64 0, %i.az
  %i.la = getelementptr inbounds i8, ptr %i.bh, i64 %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i64, ptr %i.lb, align 1
  store i64 %i.lc, ptr %i.ky, align 1
  %i.ld = add nsw i32 %i.dk, 7
  %i.le = sext i32 %i.ld to i64
  %i.lf = sub nsw i64 %i.le, %i.az
  %i.lg = getelementptr inbounds i8, ptr %i.bh, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !78
  %i.li = zext i8 %i.lh to i32
  %i.lj = mul nuw i32 %i.li, 16843009             ; 2 uses
  %i.lk = icmp slt i32 %i.dk, 8
  br i1 %i.lk, label %.lr.ph69, label %.loopexit46

.lr.ph69:                                         ; preds = %bb.v
  %i.ll = sub nsw i32 8, %i.dk                    ; 2 uses
  %i.lm = sext i32 %i.dk to i64
  %i.ln = getelementptr inbounds i8, ptr %i.ky, i64 %i.lm ; 2 uses
  %i.lo = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.lp = call i64 @llvm.umax.i64(i64 %i.lo, i64 4)
  %i.lq = add nsw i64 %i.lp, -1
  %i.lr = lshr i64 %i.lq, 2
  %i.ls = add nuw nsw i64 %i.lr, 1                ; 2 uses
  %min.iters.check327 = icmp ult i32 %i.ll, 29
  br i1 %min.iters.check327, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph69
  %n.vec329 = and i64 %i.ls, 9223372036854775800  ; 3 uses
  %i.lt = shl i64 %n.vec329, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next332, %vector.body330 ] ; 2 uses
  %i.lu = shl nuw i64 %index331, 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.lv, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat, ptr %i.lw, align 1, !tbaa !78
  %index.next332 = add nuw i64 %index331, 8       ; 2 uses
  %i.lx = icmp eq i64 %index.next332, %n.vec329
  br i1 %i.lx, label %middle.block333, label %vector.body330, !llvm.loop !551

middle.block333:                                  ; preds = %vector.body330
  %cmp.n334 = icmp eq i64 %i.ls, %n.vec329
  br i1 %cmp.n334, label %.loopexit46, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph69, %middle.block333
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lt, %middle.block333 ]
  br label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.preheader, %scalar.ph326
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph326 ], [ %indvars.iv140.ph, %scalar.ph326.preheader ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 %indvars.iv140
  store i32 %i.lj, ptr %i.ly, align 1, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lz = icmp samesign ult i64 %indvars.iv.next141, %i.lo
  br i1 %i.lz, label %scalar.ph326, label %.loopexit46, !llvm.loop !552

.loopexit46:                                      ; preds = %scalar.ph326, %middle.block333, %bb.v, %bb.u
  %i.ma = icmp ne i32 %.2734.i, 0                 ; 4 uses
  br i1 %i.ma, label %.preheader44.preheader, label %.loopexit45

.preheader44.preheader:                           ; preds = %.loopexit46
  %i.mb = getelementptr i8, ptr %i.bh, i64 -1
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !78
  store i8 %i.mc, ptr %i.bl, align 1, !tbaa !78
  %i.md = getelementptr i8, ptr %i.bh, i64 %i.az
  %i.me = getelementptr i8, ptr %i.md, i64 -1
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !78
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.mf, ptr %i.mg, align 2, !tbaa !78
  %i.mh = shl nsw i64 %i.az, 1
  %i.mi = getelementptr i8, ptr %i.bh, i64 %i.mh
  %i.mj = getelementptr i8, ptr %i.mi, i64 -1
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !78
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !78
  %i.mm = mul nsw i64 %i.az, 3
  %i.mn = getelementptr i8, ptr %i.bh, i64 %i.mm
  %i.mo = getelementptr i8, ptr %i.mn, i64 -1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !78
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.mp, ptr %i.mq, align 4, !tbaa !78
  %i.mr = shl nsw i64 %i.az, 2
  %i.ms = getelementptr i8, ptr %i.bh, i64 %i.mr
  %i.mt = getelementptr i8, ptr %i.ms, i64 -1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !78
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !78
  %i.mw = mul nsw i64 %i.az, 5
  %i.mx = getelementptr i8, ptr %i.bh, i64 %i.mw
  %i.my = getelementptr i8, ptr %i.mx, i64 -1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !78
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.mz, ptr %i.na, align 2, !tbaa !78
  %i.nb = mul nsw i64 %i.az, 6
  %i.nc = getelementptr i8, ptr %i.bh, i64 %i.nb
  %i.nd = getelementptr i8, ptr %i.nc, i64 -1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !78
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !78
  %i.ng = mul nsw i64 %i.az, 7
  %i.nh = getelementptr i8, ptr %i.bh, i64 %i.ng
  %i.ni = getelementptr i8, ptr %i.nh, i64 -1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !78
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.nj, ptr %i.nk, align 8, !tbaa !78
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.nl = icmp sgt i32 %i.dc, 0
  %i.nm = add i32 %i.dc, 7                        ; 2 uses
  br i1 %i.nl, label %iter.check, label %.lr.ph76

iter.check:                                       ; preds = %.preheader43
  %smax = call i32 @llvm.smax.i32(i32 %i.nm, i32 8) ; 2 uses
  %i.nn = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.nn to i64
  %i.no = zext nneg i32 %smax to i64              ; 3 uses
  %i.np = add nsw i64 %i.no, -7                   ; 7 uses
  %min.iters.check339 = icmp ugt i64 %i.np, 7
  %ident.check337.not = icmp eq i32 %i.ay, 1
  %or.cond370 = select i1 %min.iters.check339, i1 %ident.check337.not, i1 false
  br i1 %or.cond370, label %vector.memcheck, label %.lr.ph72.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.nq = or disjoint i64 %i.b, 2
  %i.nr = add i64 %i.bc, %i.bf
  %i.ns = add i64 %i.nr, %i.bd
  %i.nt = sub i64 %i.ns, %i.nq
  %diff.check = icmp ugt i64 %i.nt, -32
  br i1 %diff.check, label %.lr.ph72.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check340 = icmp ult i64 %i.np, 32
  br i1 %min.iters.check340, label %vec.epilog.ph, label %vector.ph341

vector.ph341:                                     ; preds = %vector.main.loop.iter.check
  %i.nu = and i64 %i.np, 24
  %n.vec342 = and i64 %i.np, -32                  ; 4 uses
  %i.nv = or disjoint i64 %n.vec342, 8
  br label %vector.body343

vector.body343:                                   ; preds = %vector.ph341, %vector.body343
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next346, %vector.body343 ] ; 2 uses
  %i.nw = or disjoint i64 %index344, 8            ; 2 uses
  %i.nx = getelementptr i8, ptr %i.bh, i64 %i.nw  ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 -1
  %i.nz = getelementptr i8, ptr %i.nx, i64 15
  %wide.load = load <16 x i8>, ptr %i.ny, align 1, !tbaa !78
  %wide.load345 = load <16 x i8>, ptr %i.nz, align 1, !tbaa !78
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.nw ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <16 x i8> %wide.load, ptr %i.oa, align 1, !tbaa !78
  store <16 x i8> %wide.load345, ptr %i.ob, align 1, !tbaa !78
  %index.next346 = add nuw i64 %index344, 32      ; 2 uses
  %i.oc = icmp eq i64 %index.next346, %n.vec342
  br i1 %i.oc, label %middle.block347, label %vector.body343, !llvm.loop !553

middle.block347:                                  ; preds = %vector.body343
  %cmp.n348 = icmp eq i64 %i.np, %n.vec342
  br i1 %cmp.n348, label %._crit_edge73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block347
  %min.epilog.iters.check = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph72.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec342, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec350 = and i64 %i.np, -8                   ; 3 uses
  %i.od = add nsw i64 %n.vec350, 8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index351 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next353, %vec.epilog.vector.body ] ; 2 uses
  %i.oe = add nuw i64 %index351, 8                ; 2 uses
  %i.of = getelementptr i8, ptr %i.bh, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 -1
  %wide.load352 = load <8 x i8>, ptr %i.og, align 1, !tbaa !78
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.oe
  store <8 x i8> %wide.load352, ptr %i.oh, align 1, !tbaa !78
  %index.next353 = add nuw i64 %index351, 8       ; 2 uses
  %i.oi = icmp eq i64 %index.next353, %n.vec350
  br i1 %i.oi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n354 = icmp eq i64 %i.np, %n.vec350
  br i1 %cmp.n354, label %._crit_edge73, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv146.ph = phi i64 [ 8, %iter.check ], [ 8, %vector.memcheck ], [ %i.nv, %vec.epilog.iter.check ], [ %i.od, %vec.epilog.middle.block ] ; 4 uses
  %i.oj = add nuw nsw i64 %i.no, 1
  %i.ok = sub nsw i64 %i.oj, %indvars.iv146.ph
  %i.ol = sub nsw i64 %i.no, %indvars.iv146.ph
  %xtraiter = and i64 %i.ok, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader ]
  %i.om = mul nsw i64 %indvars.iv146.prol, %i.az
  %i.on = getelementptr i8, ptr %i.bh, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.on, i64 -1
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !78
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv146.prol
  store i8 %i.op, ptr %i.oq, align 1, !tbaa !78
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !555

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.or = icmp ult i64 %i.ol, 3
  br i1 %i.or, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.os = mul nsw i64 %indvars.iv146, %i.az
  %i.ot = getelementptr i8, ptr %i.bh, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 -1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !78
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv146
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !78
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.ox = mul nsw i64 %indvars.iv.next147, %i.az
  %i.oy = getelementptr i8, ptr %i.bh, i64 %i.ox
  %i.oz = getelementptr i8, ptr %i.oy, i64 -1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !78
  %i.pb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next147
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !78
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.pc = mul nsw i64 %indvars.iv.next147.1, %i.az
  %i.pd = getelementptr i8, ptr %i.bh, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 -1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !78
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next147.1
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !78
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.ph = mul nsw i64 %indvars.iv.next147.2, %i.az
  %i.pi = getelementptr i8, ptr %i.bh, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 -1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !78
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next147.2
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !78
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !556

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %vec.epilog.middle.block, %middle.block347
  %i.pm = icmp samesign ult i32 %i.dc, 8
  br i1 %i.pm, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn294 = sext i32 %i.nm to i64
  %.pn293 = mul nsw i64 %.pn294, %i.az
  %.pn = getelementptr i8, ptr %i.bh, i64 %.pn293
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -1
  %.in.in = load i8, ptr %.in.in.in, align 1, !tbaa !78
  %.in = zext i8 %.in.in to i32
  %i.pn = mul nuw i32 %.in, 16843009              ; 2 uses
  %i.po = sub nsw i32 8, %i.dc                    ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.pq = sext i32 %i.dc to i64
  %i.pr = getelementptr inbounds i8, ptr %i.pp, i64 %i.pq ; 2 uses
  %i.ps = zext nneg i32 %i.po to i64              ; 2 uses
  %i.pt = call i64 @llvm.umax.i64(i64 %i.ps, i64 4)
  %i.pu = add nsw i64 %i.pt, -1
  %i.pv = lshr i64 %i.pu, 2
  %i.pw = add nuw nsw i64 %i.pv, 1                ; 2 uses
  %min.iters.check357 = icmp ult i32 %i.po, 29
  br i1 %min.iters.check357, label %scalar.ph356.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %.lr.ph76
  %n.vec359 = and i64 %i.pw, 9223372036854775800  ; 3 uses
  %i.px = shl i64 %n.vec359, 2
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %i.pn, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph358
  %index363 = phi i64 [ 0, %vector.ph358 ], [ %index.next364, %vector.body362 ] ; 2 uses
  %i.py = shl nuw i64 %index363, 2
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.py ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  store <4 x i32> %broadcast.splat361, ptr %i.pz, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat361, ptr %i.qa, align 1, !tbaa !78
  %index.next364 = add nuw i64 %index363, 8       ; 2 uses
  %i.qb = icmp eq i64 %index.next364, %n.vec359
  br i1 %i.qb, label %middle.block365, label %vector.body362, !llvm.loop !557

middle.block365:                                  ; preds = %vector.body362
  %cmp.n366 = icmp eq i64 %i.pw, %n.vec359
  br i1 %cmp.n366, label %.loopexit42, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %.lr.ph76, %middle.block365
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph76 ], [ %i.px, %middle.block365 ]
  br label %scalar.ph356

scalar.ph356:                                     ; preds = %scalar.ph356.preheader, %scalar.ph356
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph356 ], [ %indvars.iv149.ph, %scalar.ph356.preheader ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pr, i64 %indvars.iv149
  store i32 %i.pn, ptr %i.qc, align 1, !tbaa !78
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %i.qd = icmp samesign ult i64 %indvars.iv.next150, %i.ps
  br i1 %i.qd, label %scalar.ph356, label %.loopexit42, !llvm.loop !558

.loopexit42:                                      ; preds = %scalar.ph356, %middle.block365, %._crit_edge73, %.loopexit45
  br i1 %i.dn, label %bb.w, label %.loopexit32

bb.w:                                             ; preds = %.loopexit42
  %or.cond13.i = or i1 %.2738.i, %i.ma            ; 2 uses
  %or.cond15.i = or i1 %or.cond13.i, %i.kq        ; 2 uses
  %or.cond17.i = or i1 %or.cond15.i, %i.ku
  %or.cond19.i = select i1 %or.cond17.i, i1 true, i1 %.2725.i
  br i1 %or.cond19.i, label %bb.x, label %.loopexit32.thread

bb.x:                                             ; preds = %bb.w
  %i.qe = icmp slt i32 %i.de, %i.dg
  %i.qf = sub nsw i32 %i.dg, %2
  %i.qg = ashr i32 %i.qf, %i.m                    ; 2 uses
  %i.qh = select i1 %i.qe, i32 16, i32 %i.qg
  %i.qi = icmp slt i32 %i.cx, %i.cz
  %i.qj = sub nsw i32 %i.cz, %3
  %i.qk = ashr i32 %i.qj, %i.p                    ; 2 uses
  %i.ql = select i1 %i.qi, i32 16, i32 %i.qk
  %i.qm = icmp slt i32 %i.di, %i.dg
  %i.qn = select i1 %i.qm, i32 8, i32 %i.qg
  %.0721.i = select i1 %.2725.i, i32 %i.qh, i32 %i.qn ; 8 uses
  %i.qo = icmp slt i32 %i.da, %i.cz
  %i.qp = select i1 %i.qo, i32 8, i32 %i.qk
  %.0720.i = select i1 %.2738.i, i32 %i.ql, i32 %i.qp ; 7 uses
  br i1 %or.cond15.i, label %.preheader39, label %.preheader41

end_hunk_13
begin_hunk_14_@intra_pred_4_8:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bl, i8 -128, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.d, i8 -128, i64 65, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge65, %bb.g
  %.2738.i = phi i1 [ %.1737.i, %._crit_edge65 ], [ %i.cc, %bb.g ] ; 7 uses
  %.2734.i = phi i32 [ %.1733.i, %._crit_edge65 ], [ %i.ce, %bb.g ] ; 2 uses
  %.1730.i = phi i32 [ %.0729.i, %._crit_edge65 ], [ %i.cg, %bb.g ] ; 2 uses
  %.2728.i = phi i32 [ %.1727.i, %._crit_edge65 ], [ %i.ci, %bb.g ] ; 2 uses
  %.2725.i = phi i1 [ %.1724.i, %._crit_edge65 ], [ %i.cv, %bb.g ] ; 5 uses
  %i.kq = icmp ne i32 %.1730.i, 0                 ; 3 uses
  br i1 %i.kq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kr = xor i64 %i.az, -1
  %i.ks = getelementptr inbounds i8, ptr %i.bh, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !78  ; 2 uses
  store i8 %i.kt, ptr %i.a, align 16, !tbaa !78
  store i8 %i.kt, ptr %i.d, align 16, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ku = icmp ne i32 %.2728.i, 0                 ; 3 uses
  br i1 %i.ku, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kv = sub nsw i64 0, %i.az
  %i.kw = getelementptr inbounds i8, ptr %i.bh, i64 %i.kv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull align 1 dereferenceable(16) %i.kw, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.2725.i, label %bb.v, label %.loopexit46

bb.v:                                             ; preds = %bb.u
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 17 ; 2 uses
  %i.ky = sub nsw i64 0, %i.az
  %i.kz = getelementptr inbounds i8, ptr %i.bh, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kx, ptr noundef nonnull align 1 dereferenceable(16) %i.la, i64 16, i1 false)
  %i.lb = add nsw i32 %i.dk, 15
  %i.lc = sext i32 %i.lb to i64
  %i.ld = sub nsw i64 %i.lc, %i.az
  %i.le = getelementptr inbounds i8, ptr %i.bh, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !78
  %i.lg = zext i8 %i.lf to i32
  %i.lh = mul nuw i32 %i.lg, 16843009             ; 2 uses
  %i.li = icmp slt i32 %i.dk, 16
  br i1 %i.li, label %.lr.ph69, label %.loopexit46

.lr.ph69:                                         ; preds = %bb.v
  %i.lj = sub nsw i32 16, %i.dk                   ; 2 uses
  %i.lk = sext i32 %i.dk to i64
  %i.ll = getelementptr inbounds i8, ptr %i.kx, i64 %i.lk ; 2 uses
  %i.lm = zext nneg i32 %i.lj to i64              ; 2 uses
  %i.ln = call i64 @llvm.umax.i64(i64 %i.lm, i64 4)
  %i.lo = add nsw i64 %i.ln, -1
  %i.lp = lshr i64 %i.lo, 2
  %i.lq = add nuw nsw i64 %i.lp, 1                ; 2 uses
  %min.iters.check326 = icmp ult i32 %i.lj, 29
  br i1 %min.iters.check326, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph69
  %n.vec328 = and i64 %i.lq, 9223372036854775800  ; 3 uses
  %i.lr = shl i64 %n.vec328, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lh, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next331, %vector.body329 ] ; 2 uses
  %i.ls = shl nuw i64 %index330, 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.lt, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat, ptr %i.lu, align 1, !tbaa !78
  %index.next331 = add nuw i64 %index330, 8       ; 2 uses
  %i.lv = icmp eq i64 %index.next331, %n.vec328
  br i1 %i.lv, label %middle.block332, label %vector.body329, !llvm.loop !563

middle.block332:                                  ; preds = %vector.body329
  %cmp.n333 = icmp eq i64 %i.lq, %n.vec328
  br i1 %cmp.n333, label %.loopexit46, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.lr.ph69, %middle.block332
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph69 ], [ %i.lr, %middle.block332 ]
  br label %scalar.ph325

scalar.ph325:                                     ; preds = %scalar.ph325.preheader, %scalar.ph325
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph325 ], [ %indvars.iv140.ph, %scalar.ph325.preheader ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv140
  store i32 %i.lh, ptr %i.lw, align 1, !tbaa !78
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %i.lx = icmp samesign ult i64 %indvars.iv.next141, %i.lm
  br i1 %i.lx, label %scalar.ph325, label %.loopexit46, !llvm.loop !564

.loopexit46:                                      ; preds = %scalar.ph325, %middle.block332, %bb.v, %bb.u
  %i.ly = icmp ne i32 %.2734.i, 0                 ; 4 uses
  br i1 %i.ly, label %.preheader44.preheader, label %.loopexit45

.preheader44.preheader:                           ; preds = %.loopexit46
  %i.lz = getelementptr i8, ptr %i.bh, i64 -1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !78
  store i8 %i.ma, ptr %i.bl, align 1, !tbaa !78
  %i.mb = getelementptr i8, ptr %i.bh, i64 %i.az
  %i.mc = getelementptr i8, ptr %i.mb, i64 -1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !78
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.md, ptr %i.me, align 2, !tbaa !78
  %i.mf = shl nsw i64 %i.az, 1
  %i.mg = getelementptr i8, ptr %i.bh, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 -1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !78
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !78
  %i.mk = mul nsw i64 %i.az, 3
  %i.ml = getelementptr i8, ptr %i.bh, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 -1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !78
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.mn, ptr %i.mo, align 4, !tbaa !78
  %i.mp = shl nsw i64 %i.az, 2
  %i.mq = getelementptr i8, ptr %i.bh, i64 %i.mp
  %i.mr = getelementptr i8, ptr %i.mq, i64 -1
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !78
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !78
  %i.mu = mul nsw i64 %i.az, 5
  %i.mv = getelementptr i8, ptr %i.bh, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 -1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !78
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.mx, ptr %i.my, align 2, !tbaa !78
  %i.mz = mul nsw i64 %i.az, 6
  %i.na = getelementptr i8, ptr %i.bh, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.na, i64 -1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !78
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !78
  %i.ne = mul nsw i64 %i.az, 7
  %i.nf = getelementptr i8, ptr %i.bh, i64 %i.ne
  %i.ng = getelementptr i8, ptr %i.nf, i64 -1
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !78
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.nh, ptr %i.ni, align 8, !tbaa !78
  %i.nj = shl nsw i64 %i.az, 3
  %i.nk = getelementptr i8, ptr %i.bh, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.nk, i64 -1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !78
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !78
  %i.no = mul nsw i64 %i.az, 9
  %i.np = getelementptr i8, ptr %i.bh, i64 %i.no
  %i.nq = getelementptr i8, ptr %i.np, i64 -1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !78
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.nr, ptr %i.ns, align 2, !tbaa !78
  %i.nt = mul nsw i64 %i.az, 10
  %i.nu = getelementptr i8, ptr %i.bh, i64 %i.nt
  %i.nv = getelementptr i8, ptr %i.nu, i64 -1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !78
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !78
  %i.ny = mul nsw i64 %i.az, 11
  %i.nz = getelementptr i8, ptr %i.bh, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 -1
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !78
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ob, ptr %i.oc, align 4, !tbaa !78
  %i.od = mul nsw i64 %i.az, 12
  %i.oe = getelementptr i8, ptr %i.bh, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 -1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !78
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !78
  %i.oi = mul nsw i64 %i.az, 13
  %i.oj = getelementptr i8, ptr %i.bh, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 -1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !78
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.ol, ptr %i.om, align 2, !tbaa !78
  %i.on = mul nsw i64 %i.az, 14
  %i.oo = getelementptr i8, ptr %i.bh, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 -1
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !78
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !78
  %i.os = mul nsw i64 %i.az, 15
  %i.ot = getelementptr i8, ptr %i.bh, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 -1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !78
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.ov, ptr %i.ow, align 16, !tbaa !78
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader44.preheader, %.loopexit46
  br i1 %.2738.i, label %.preheader43, label %.loopexit42

.preheader43:                                     ; preds = %.loopexit45
  %i.ox = icmp sgt i32 %i.dc, 0
  %i.oy = add i32 %i.dc, 15                       ; 2 uses
  br i1 %i.ox, label %iter.check, label %.lr.ph76

iter.check:                                       ; preds = %.preheader43
  %smax = call i32 @llvm.smax.i32(i32 %i.oy, i32 16) ; 2 uses
  %i.oz = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.oz to i64
  %i.pa = zext nneg i32 %smax to i64              ; 3 uses
  %i.pb = add nsw i64 %i.pa, -15                  ; 7 uses
  %min.iters.check338 = icmp ugt i64 %i.pb, 7
  %ident.check336.not = icmp eq i32 %i.ay, 1
  %or.cond369 = select i1 %min.iters.check338, i1 %ident.check336.not, i1 false
  br i1 %or.cond369, label %vector.memcheck, label %.lr.ph72.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.pc = or disjoint i64 %i.b, 2
  %i.pd = add i64 %i.bc, %i.bf
  %i.pe = add i64 %i.pd, %i.bd
  %i.pf = sub i64 %i.pe, %i.pc
  %diff.check = icmp ugt i64 %i.pf, -32
  br i1 %diff.check, label %.lr.ph72.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check339 = icmp ult i64 %i.pb, 32
  br i1 %min.iters.check339, label %vec.epilog.ph, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check
  %i.pg = and i64 %i.pb, 24
  %n.vec341 = and i64 %i.pb, -32                  ; 4 uses
  %i.ph = or disjoint i64 %n.vec341, 16
  br label %vector.body342

vector.body342:                                   ; preds = %vector.ph340, %vector.body342
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next345, %vector.body342 ] ; 2 uses
  %i.pi = or disjoint i64 %index343, 16           ; 2 uses
  %i.pj = getelementptr i8, ptr %i.bh, i64 %i.pi  ; 2 uses
  %i.pk = getelementptr i8, ptr %i.pj, i64 -1
  %i.pl = getelementptr i8, ptr %i.pj, i64 15
  %wide.load = load <16 x i8>, ptr %i.pk, align 1, !tbaa !78
  %wide.load344 = load <16 x i8>, ptr %i.pl, align 1, !tbaa !78
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.pi ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store <16 x i8> %wide.load, ptr %i.pm, align 1, !tbaa !78
  store <16 x i8> %wide.load344, ptr %i.pn, align 1, !tbaa !78
  %index.next345 = add nuw i64 %index343, 32      ; 2 uses
  %i.po = icmp eq i64 %index.next345, %n.vec341
  br i1 %i.po, label %middle.block346, label %vector.body342, !llvm.loop !565

middle.block346:                                  ; preds = %vector.body342
  %cmp.n347 = icmp eq i64 %i.pb, %n.vec341
  br i1 %cmp.n347, label %._crit_edge73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block346
  %min.epilog.iters.check = icmp eq i64 %i.pg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph72.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec341, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec349 = and i64 %i.pb, -8                   ; 3 uses
  %i.pp = add nsw i64 %n.vec349, 16
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index350 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next352, %vec.epilog.vector.body ] ; 2 uses
  %i.pq = add nuw i64 %index350, 16               ; 2 uses
  %i.pr = getelementptr i8, ptr %i.bh, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 -1
  %wide.load351 = load <8 x i8>, ptr %i.ps, align 1, !tbaa !78
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.pq
  store <8 x i8> %wide.load351, ptr %i.pt, align 1, !tbaa !78
  %index.next352 = add nuw i64 %index350, 8       ; 2 uses
  %i.pu = icmp eq i64 %index.next352, %n.vec349
  br i1 %i.pu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !566

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n353 = icmp eq i64 %i.pb, %n.vec349
  br i1 %cmp.n353, label %._crit_edge73, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv146.ph = phi i64 [ 16, %iter.check ], [ 16, %vector.memcheck ], [ %i.ph, %vec.epilog.iter.check ], [ %i.pp, %vec.epilog.middle.block ] ; 4 uses
  %i.pv = add nuw nsw i64 %i.pa, 1
  %i.pw = sub nsw i64 %i.pv, %indvars.iv146.ph
  %i.px = sub nsw i64 %i.pa, %indvars.iv146.ph
  %xtraiter = and i64 %i.pw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader, %.lr.ph72.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.lr.ph72.prol ], [ %indvars.iv146.ph, %.lr.ph72.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph72.prol ], [ 0, %.lr.ph72.preheader ]
  %i.py = mul nsw i64 %indvars.iv146.prol, %i.az
  %i.pz = getelementptr i8, ptr %i.bh, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.pz, i64 -1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !78
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv146.prol
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !78
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol, !llvm.loop !567

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %.lr.ph72.preheader ], [ %indvars.iv.next147.prol, %.lr.ph72.prol ]
  %i.qd = icmp ult i64 %i.px, 3
  br i1 %i.qd, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %.lr.ph72 ], [ %indvars.iv146.unr, %.lr.ph72.prol.loopexit ] ; 6 uses
  %i.qe = mul nsw i64 %indvars.iv146, %i.az
  %i.qf = getelementptr i8, ptr %i.bh, i64 %i.qe
  %i.qg = getelementptr i8, ptr %i.qf, i64 -1
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !78
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv146
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !78
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.qj = mul nsw i64 %indvars.iv.next147, %i.az
  %i.qk = getelementptr i8, ptr %i.bh, i64 %i.qj
  %i.ql = getelementptr i8, ptr %i.qk, i64 -1
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !78
  %i.qn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next147
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !78
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.qo = mul nsw i64 %indvars.iv.next147.1, %i.az
  %i.qp = getelementptr i8, ptr %i.bh, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 -1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !78
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next147.1
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !78
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.qt = mul nsw i64 %indvars.iv.next147.2, %i.az
  %i.qu = getelementptr i8, ptr %i.bh, i64 %i.qt
  %i.qv = getelementptr i8, ptr %i.qu, i64 -1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !78
  %i.qx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next147.2
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !78
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73, label %.lr.ph72, !llvm.loop !568

._crit_edge73:                                    ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %vec.epilog.middle.block, %middle.block346
  %i.qy = icmp samesign ult i32 %i.dc, 16
  br i1 %i.qy, label %.lr.ph76, label %.loopexit42

.lr.ph76:                                         ; preds = %.preheader43, %._crit_edge73
  %.pn293 = sext i32 %i.oy to i64
  %.pn292 = mul nsw i64 %.pn293, %i.az
  %.pn = getelementptr i8, ptr %i.bh, i64 %.pn292
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -1
  %.in.in = load i8, ptr %.in.in.in, align 1, !tbaa !78
  %.in = zext i8 %.in.in to i32
  %i.qz = mul nuw i32 %.in, 16843009              ; 2 uses
  %i.ra = sub nsw i32 16, %i.dc                   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.rc = sext i32 %i.dc to i64
  %i.rd = getelementptr inbounds i8, ptr %i.rb, i64 %i.rc ; 2 uses
  %i.re = zext nneg i32 %i.ra to i64              ; 2 uses
  %i.rf = call i64 @llvm.umax.i64(i64 %i.re, i64 4)
  %i.rg = add nsw i64 %i.rf, -1
  %i.rh = lshr i64 %i.rg, 2
  %i.ri = add nuw nsw i64 %i.rh, 1                ; 2 uses
  %min.iters.check356 = icmp ult i32 %i.ra, 29
  br i1 %min.iters.check356, label %scalar.ph355.preheader, label %vector.ph357

vector.ph357:                                     ; preds = %.lr.ph76
  %n.vec358 = and i64 %i.ri, 9223372036854775800  ; 3 uses
  %i.rj = shl i64 %n.vec358, 2
  %broadcast.splatinsert359 = insertelement <4 x i32> poison, i32 %i.qz, i64 0
  %broadcast.splat360 = shufflevector <4 x i32> %broadcast.splatinsert359, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph357
  %index362 = phi i64 [ 0, %vector.ph357 ], [ %index.next363, %vector.body361 ] ; 2 uses
  %i.rk = shl nuw i64 %index362, 2
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rk ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store <4 x i32> %broadcast.splat360, ptr %i.rl, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat360, ptr %i.rm, align 1, !tbaa !78
  %index.next363 = add nuw i64 %index362, 8       ; 2 uses
  %i.rn = icmp eq i64 %index.next363, %n.vec358
  br i1 %i.rn, label %middle.block364, label %vector.body361, !llvm.loop !569

middle.block364:                                  ; preds = %vector.body361
  %cmp.n365 = icmp eq i64 %i.ri, %n.vec358
  br i1 %cmp.n365, label %.loopexit42, label %scalar.ph355.preheader

scalar.ph355.preheader:                           ; preds = %.lr.ph76, %middle.block364
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph76 ], [ %i.rj, %middle.block364 ]
  br label %scalar.ph355

scalar.ph355:                                     ; preds = %scalar.ph355.preheader, %scalar.ph355
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph355 ], [ %indvars.iv149.ph, %scalar.ph355.preheader ] ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rd, i64 %indvars.iv149
  store i32 %i.qz, ptr %i.ro, align 1, !tbaa !78
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %i.rp = icmp samesign ult i64 %indvars.iv.next150, %i.re
  br i1 %i.rp, label %scalar.ph355, label %.loopexit42, !llvm.loop !570

.loopexit42:                                      ; preds = %scalar.ph355, %middle.block364, %._crit_edge73, %.loopexit45
  br i1 %i.dn, label %bb.w, label %.loopexit32

bb.w:                                             ; preds = %.loopexit42
  %or.cond13.i = or i1 %.2738.i, %i.ly            ; 2 uses
  %or.cond15.i = or i1 %or.cond13.i, %i.kq        ; 2 uses
  %or.cond17.i = or i1 %or.cond15.i, %i.ku
  %or.cond19.i = select i1 %or.cond17.i, i1 true, i1 %.2725.i
  br i1 %or.cond19.i, label %bb.x, label %.loopexit32.thread

bb.x:                                             ; preds = %bb.w
  %i.rq = load i32, ptr %i.df, align 8, !tbaa !173 ; 3 uses
  %i.rr = icmp slt i32 %i.de, %i.rq
  %i.rs = sub nsw i32 %i.rq, %2
  %i.rt = ashr i32 %i.rs, %i.m                    ; 2 uses
  %i.ru = select i1 %i.rr, i32 32, i32 %i.rt
  %i.rv = load i32, ptr %i.cy, align 4, !tbaa !172 ; 3 uses
  %i.rw = icmp slt i32 %i.cx, %i.rv
  %i.rx = sub nsw i32 %i.rv, %3
  %i.ry = ashr i32 %i.rx, %i.p                    ; 2 uses
  %i.rz = select i1 %i.rw, i32 32, i32 %i.ry
  %i.sa = icmp slt i32 %i.di, %i.rq
  %i.sb = select i1 %i.sa, i32 16, i32 %i.rt
  %.0721.i = select i1 %.2725.i, i32 %i.ru, i32 %i.sb ; 8 uses
  %i.sc = icmp slt i32 %i.da, %i.rv
  %i.sd = select i1 %i.sc, i32 16, i32 %i.ry
  %.0720.i = select i1 %.2738.i, i32 %i.rz, i32 %i.sd ; 7 uses
end_hunk_14
begin_hunk_15_@intra_pred_5_8:bb.a
.loopexit47:                                      ; preds = %scalar.ph351, %middle.block358, %bb.v, %bb.u
  %i.ly = icmp ne i32 %.2734.i, 0                 ; 4 uses
  br i1 %i.ly, label %.preheader45.preheader, label %.loopexit46

.preheader45.preheader:                           ; preds = %.loopexit47
  %i.lz = getelementptr i8, ptr %i.bh, i64 -1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !78
  store i8 %i.ma, ptr %i.bl, align 1, !tbaa !78
  %i.mb = getelementptr i8, ptr %i.bh, i64 %i.az
  %i.mc = getelementptr i8, ptr %i.mb, i64 -1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !78
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.md, ptr %i.me, align 2, !tbaa !78
  %i.mf = shl nsw i64 %i.az, 1
  %i.mg = getelementptr i8, ptr %i.bh, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 -1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !78
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !78
  %i.mk = mul nsw i64 %i.az, 3
  %i.ml = getelementptr i8, ptr %i.bh, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 -1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !78
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.mn, ptr %i.mo, align 4, !tbaa !78
  %i.mp = shl nsw i64 %i.az, 2
  %i.mq = getelementptr i8, ptr %i.bh, i64 %i.mp
  %i.mr = getelementptr i8, ptr %i.mq, i64 -1
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !78
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !78
  %i.mu = mul nsw i64 %i.az, 5
  %i.mv = getelementptr i8, ptr %i.bh, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 -1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !78
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.mx, ptr %i.my, align 2, !tbaa !78
  %i.mz = mul nsw i64 %i.az, 6
  %i.na = getelementptr i8, ptr %i.bh, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.na, i64 -1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !78
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !78
  %i.ne = mul nsw i64 %i.az, 7
  %i.nf = getelementptr i8, ptr %i.bh, i64 %i.ne
  %i.ng = getelementptr i8, ptr %i.nf, i64 -1
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !78
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.nh, ptr %i.ni, align 8, !tbaa !78
  %i.nj = shl nsw i64 %i.az, 3
  %i.nk = getelementptr i8, ptr %i.bh, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.nk, i64 -1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !78
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !78
  %i.no = mul nsw i64 %i.az, 9
  %i.np = getelementptr i8, ptr %i.bh, i64 %i.no
  %i.nq = getelementptr i8, ptr %i.np, i64 -1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !78
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.nr, ptr %i.ns, align 2, !tbaa !78
  %i.nt = mul nsw i64 %i.az, 10
  %i.nu = getelementptr i8, ptr %i.bh, i64 %i.nt
  %i.nv = getelementptr i8, ptr %i.nu, i64 -1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !78
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !78
  %i.ny = mul nsw i64 %i.az, 11
  %i.nz = getelementptr i8, ptr %i.bh, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 -1
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !78
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ob, ptr %i.oc, align 4, !tbaa !78
  %i.od = mul nsw i64 %i.az, 12
  %i.oe = getelementptr i8, ptr %i.bh, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 -1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !78
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !78
  %i.oi = mul nsw i64 %i.az, 13
  %i.oj = getelementptr i8, ptr %i.bh, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 -1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !78
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.ol, ptr %i.om, align 2, !tbaa !78
  %i.on = mul nsw i64 %i.az, 14
  %i.oo = getelementptr i8, ptr %i.bh, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 -1
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !78
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !78
  %i.os = mul nsw i64 %i.az, 15
  %i.ot = getelementptr i8, ptr %i.bh, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 -1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !78
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.ov, ptr %i.ow, align 16, !tbaa !78
  %i.ox = shl nsw i64 %i.az, 4
  %i.oy = getelementptr i8, ptr %i.bh, i64 %i.ox
  %i.oz = getelementptr i8, ptr %i.oy, i64 -1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !78
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !78
  %i.pc = mul nsw i64 %i.az, 17
  %i.pd = getelementptr i8, ptr %i.bh, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 -1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !78
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.pf, ptr %i.pg, align 2, !tbaa !78
  %i.ph = mul nsw i64 %i.az, 18
  %i.pi = getelementptr i8, ptr %i.bh, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 -1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !78
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !78
  %i.pm = mul nsw i64 %i.az, 19
  %i.pn = getelementptr i8, ptr %i.bh, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 -1
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !78
  %i.pq = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %i.pp, ptr %i.pq, align 4, !tbaa !78
  %i.pr = mul nsw i64 %i.az, 20
  %i.ps = getelementptr i8, ptr %i.bh, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !78
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !78
  %i.pw = mul nsw i64 %i.az, 21
  %i.px = getelementptr i8, ptr %i.bh, i64 %i.pw
  %i.py = getelementptr i8, ptr %i.px, i64 -1
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !78
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.pz, ptr %i.qa, align 2, !tbaa !78
  %i.qb = mul nsw i64 %i.az, 22
  %i.qc = getelementptr i8, ptr %i.bh, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 -1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !78
  %i.qf = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !78
  %i.qg = mul nsw i64 %i.az, 23
  %i.qh = getelementptr i8, ptr %i.bh, i64 %i.qg
  %i.qi = getelementptr i8, ptr %i.qh, i64 -1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !78
  %i.qk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.qj, ptr %i.qk, align 8, !tbaa !78
  %i.ql = mul nsw i64 %i.az, 24
  %i.qm = getelementptr i8, ptr %i.bh, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 -1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !78
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !78
  %i.qq = mul nsw i64 %i.az, 25
  %i.qr = getelementptr i8, ptr %i.bh, i64 %i.qq
  %i.qs = getelementptr i8, ptr %i.qr, i64 -1
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !78
  %i.qu = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 %i.qt, ptr %i.qu, align 2, !tbaa !78
  %i.qv = mul nsw i64 %i.az, 26
  %i.qw = getelementptr i8, ptr %i.bh, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 -1
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !78
  %i.qz = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !78
  %i.ra = mul nsw i64 %i.az, 27
  %i.rb = getelementptr i8, ptr %i.bh, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.rb, i64 -1
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !78
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 %i.rd, ptr %i.re, align 4, !tbaa !78
  %i.rf = mul nsw i64 %i.az, 28
  %i.rg = getelementptr i8, ptr %i.bh, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !78
  %i.rj = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !78
  %i.rk = mul nsw i64 %i.az, 29
  %i.rl = getelementptr i8, ptr %i.bh, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rl, i64 -1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !78
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i8 %i.rn, ptr %i.ro, align 2, !tbaa !78
  %i.rp = mul nsw i64 %i.az, 30
  %i.rq = getelementptr i8, ptr %i.bh, i64 %i.rp
  %i.rr = getelementptr i8, ptr %i.rq, i64 -1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !78
  %i.rt = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !78
  %i.ru = mul nsw i64 %i.az, 31
  %i.rv = getelementptr i8, ptr %i.bh, i64 %i.ru
  %i.rw = getelementptr i8, ptr %i.rv, i64 -1
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !78
  %i.ry = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.rx, ptr %i.ry, align 16, !tbaa !78
  br label %.loopexit46

.loopexit46:                                      ; preds = %.preheader45.preheader, %.loopexit47
  br i1 %.2738.i, label %.preheader44, label %.loopexit43

.preheader44:                                     ; preds = %.loopexit46
  %i.rz = icmp sgt i32 %i.dc, 0
  %i.sa = add i32 %i.dc, 31                       ; 2 uses
  br i1 %i.rz, label %iter.check, label %.lr.ph77

iter.check:                                       ; preds = %.preheader44
  %smax = call i32 @llvm.smax.i32(i32 %i.sa, i32 32) ; 2 uses
  %i.sb = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.sb to i64
  %i.sc = zext nneg i32 %smax to i64              ; 3 uses
  %i.sd = add nsw i64 %i.sc, -31                  ; 7 uses
  %min.iters.check364 = icmp ugt i64 %i.sd, 7
  %ident.check362.not = icmp eq i32 %i.ay, 1
  %or.cond395 = select i1 %min.iters.check364, i1 %ident.check362.not, i1 false
  br i1 %or.cond395, label %vector.memcheck, label %.lr.ph73.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.se = or disjoint i64 %i.b, 2
  %i.sf = add i64 %i.bc, %i.bf
  %i.sg = add i64 %i.sf, %i.bd
  %i.sh = sub i64 %i.sg, %i.se
  %diff.check = icmp ugt i64 %i.sh, -32
  br i1 %diff.check, label %.lr.ph73.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check365 = icmp ult i64 %i.sd, 32
  br i1 %min.iters.check365, label %vec.epilog.ph, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check
  %i.si = and i64 %i.sd, 24
  %n.vec367 = and i64 %i.sd, -32                  ; 4 uses
  %i.sj = add nsw i64 %n.vec367, 32
  br label %vector.body368

vector.body368:                                   ; preds = %vector.ph366, %vector.body368
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next371, %vector.body368 ] ; 2 uses
  %i.sk = add nuw i64 %index369, 32               ; 2 uses
  %i.sl = getelementptr i8, ptr %i.bh, i64 %i.sk  ; 2 uses
  %i.sm = getelementptr i8, ptr %i.sl, i64 -1
  %i.sn = getelementptr i8, ptr %i.sl, i64 15
  %wide.load = load <16 x i8>, ptr %i.sm, align 1, !tbaa !78
  %wide.load370 = load <16 x i8>, ptr %i.sn, align 1, !tbaa !78
  %i.so = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.sk ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  store <16 x i8> %wide.load, ptr %i.so, align 1, !tbaa !78
  store <16 x i8> %wide.load370, ptr %i.sp, align 1, !tbaa !78
  %index.next371 = add nuw i64 %index369, 32      ; 2 uses
  %i.sq = icmp eq i64 %index.next371, %n.vec367
  br i1 %i.sq, label %middle.block372, label %vector.body368, !llvm.loop !577

middle.block372:                                  ; preds = %vector.body368
  %cmp.n373 = icmp eq i64 %i.sd, %n.vec367
  br i1 %cmp.n373, label %._crit_edge74, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block372
  %min.epilog.iters.check = icmp eq i64 %i.si, 0
  br i1 %min.epilog.iters.check, label %.lr.ph73.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec367, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec375 = and i64 %i.sd, -8                   ; 3 uses
  %i.sr = add nsw i64 %n.vec375, 32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next378, %vec.epilog.vector.body ] ; 2 uses
  %i.ss = add nuw i64 %index376, 32               ; 2 uses
  %i.st = getelementptr i8, ptr %i.bh, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 -1
  %wide.load377 = load <8 x i8>, ptr %i.su, align 1, !tbaa !78
  %i.sv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ss
  store <8 x i8> %wide.load377, ptr %i.sv, align 1, !tbaa !78
  %index.next378 = add nuw i64 %index376, 8       ; 2 uses
  %i.sw = icmp eq i64 %index.next378, %n.vec375
  br i1 %i.sw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !578

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n379 = icmp eq i64 %i.sd, %n.vec375
  br i1 %cmp.n379, label %._crit_edge74, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv148.ph = phi i64 [ 32, %iter.check ], [ 32, %vector.memcheck ], [ %i.sj, %vec.epilog.iter.check ], [ %i.sr, %vec.epilog.middle.block ] ; 4 uses
  %i.sx = add nuw nsw i64 %i.sc, 1
  %i.sy = sub nsw i64 %i.sx, %indvars.iv148.ph
  %i.sz = sub nsw i64 %i.sc, %indvars.iv148.ph
  %xtraiter = and i64 %i.sy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader, %.lr.ph73.prol
  %indvars.iv148.prol = phi i64 [ %indvars.iv.next149.prol, %.lr.ph73.prol ], [ %indvars.iv148.ph, %.lr.ph73.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader ]
  %i.ta = mul nsw i64 %indvars.iv148.prol, %i.az
  %i.tb = getelementptr i8, ptr %i.bh, i64 %i.ta
  %i.tc = getelementptr i8, ptr %i.tb, i64 -1
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !78
  %i.te = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv148.prol
  store i8 %i.td, ptr %i.te, align 1, !tbaa !78
  %indvars.iv.next149.prol = add nuw nsw i64 %indvars.iv148.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !579

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %indvars.iv148.unr = phi i64 [ %indvars.iv148.ph, %.lr.ph73.preheader ], [ %indvars.iv.next149.prol, %.lr.ph73.prol ]
  %i.tf = icmp ult i64 %i.sz, 3
  br i1 %i.tf, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.3, %.lr.ph73 ], [ %indvars.iv148.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.tg = mul nsw i64 %indvars.iv148, %i.az
  %i.th = getelementptr i8, ptr %i.bh, i64 %i.tg
  %i.ti = getelementptr i8, ptr %i.th, i64 -1
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !78
  %i.tk = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv148
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !78
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.tl = mul nsw i64 %indvars.iv.next149, %i.az
  %i.tm = getelementptr i8, ptr %i.bh, i64 %i.tl
  %i.tn = getelementptr i8, ptr %i.tm, i64 -1
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !78
  %i.tp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next149
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !78
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2 ; 2 uses
  %i.tq = mul nsw i64 %indvars.iv.next149.1, %i.az
  %i.tr = getelementptr i8, ptr %i.bh, i64 %i.tq
  %i.ts = getelementptr i8, ptr %i.tr, i64 -1
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !78
  %i.tu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next149.1
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !78
  %indvars.iv.next149.2 = add nuw nsw i64 %indvars.iv148, 3 ; 2 uses
  %i.tv = mul nsw i64 %indvars.iv.next149.2, %i.az
  %i.tw = getelementptr i8, ptr %i.bh, i64 %i.tv
  %i.tx = getelementptr i8, ptr %i.tw, i64 -1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !78
  %i.tz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next149.2
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !78
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv148, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next149.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74, label %.lr.ph73, !llvm.loop !580

._crit_edge74:                                    ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %vec.epilog.middle.block, %middle.block372
  %i.ua = icmp samesign ult i32 %i.dc, 32
  br i1 %i.ua, label %.lr.ph77, label %.loopexit43

.lr.ph77:                                         ; preds = %.preheader44, %._crit_edge74
  %.pn319 = sext i32 %i.sa to i64
  %.pn318 = mul nsw i64 %.pn319, %i.az
  %.pn = getelementptr i8, ptr %i.bh, i64 %.pn318
  %.in.in.in = getelementptr i8, ptr %.pn, i64 -1
  %.in.in = load i8, ptr %.in.in.in, align 1, !tbaa !78
  %.in = zext i8 %.in.in to i32
  %i.ub = mul nuw i32 %.in, 16843009              ; 2 uses
  %i.uc = sub nsw i32 32, %i.dc                   ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  %i.ue = sext i32 %i.dc to i64
  %i.uf = getelementptr inbounds i8, ptr %i.ud, i64 %i.ue ; 2 uses
  %i.ug = zext nneg i32 %i.uc to i64              ; 2 uses
  %i.uh = call i64 @llvm.umax.i64(i64 %i.ug, i64 4)
  %i.ui = add nsw i64 %i.uh, -1
  %i.uj = lshr i64 %i.ui, 2
  %i.uk = add nuw nsw i64 %i.uj, 1                ; 2 uses
  %min.iters.check382 = icmp ult i32 %i.uc, 29
  br i1 %min.iters.check382, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph77
  %n.vec384 = and i64 %i.uk, 9223372036854775800  ; 3 uses
  %i.ul = shl i64 %n.vec384, 2
  %broadcast.splatinsert385 = insertelement <4 x i32> poison, i32 %i.ub, i64 0
  %broadcast.splat386 = shufflevector <4 x i32> %broadcast.splatinsert385, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph383
  %index388 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body387 ] ; 2 uses
  %i.um = shl nuw i64 %index388, 2
  %i.un = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.um ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store <4 x i32> %broadcast.splat386, ptr %i.un, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat386, ptr %i.uo, align 1, !tbaa !78
  %index.next389 = add nuw i64 %index388, 8       ; 2 uses
  %i.up = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.up, label %middle.block390, label %vector.body387, !llvm.loop !581

middle.block390:                                  ; preds = %vector.body387
  %cmp.n391 = icmp eq i64 %i.uk, %n.vec384
  br i1 %cmp.n391, label %.loopexit43, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph77, %middle.block390
  %indvars.iv151.ph = phi i64 [ 0, %.lr.ph77 ], [ %i.ul, %middle.block390 ]
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381.preheader, %scalar.ph381
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %scalar.ph381 ], [ %indvars.iv151.ph, %scalar.ph381.preheader ] ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uf, i64 %indvars.iv151
  store i32 %i.ub, ptr %i.uq, align 1, !tbaa !78
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %i.ur = icmp samesign ult i64 %indvars.iv.next152, %i.ug
  br i1 %i.ur, label %scalar.ph381, label %.loopexit43, !llvm.loop !582

.loopexit43:                                      ; preds = %scalar.ph381, %middle.block390, %._crit_edge74, %.loopexit46
  br i1 %i.dn, label %bb.w, label %.loopexit33

bb.w:                                             ; preds = %.loopexit43
  %or.cond13.i = or i1 %.2738.i, %i.ly            ; 2 uses
  %or.cond15.i = or i1 %or.cond13.i, %i.kq        ; 2 uses
  %or.cond17.i = or i1 %or.cond15.i, %i.ku
  %or.cond19.i = select i1 %or.cond17.i, i1 true, i1 %.2725.i
  br i1 %or.cond19.i, label %bb.x, label %.loopexit33.thread

bb.x:                                             ; preds = %bb.w
  %i.us = load i32, ptr %i.df, align 8, !tbaa !173 ; 3 uses
  %i.ut = icmp slt i32 %i.de, %i.us
  %i.uu = sub nsw i32 %i.us, %2
  %i.uv = ashr i32 %i.uu, %i.m                    ; 2 uses
  %i.uw = select i1 %i.ut, i32 64, i32 %i.uv
  %i.ux = load i32, ptr %i.cy, align 4, !tbaa !172 ; 3 uses
  %i.uy = icmp slt i32 %i.cx, %i.ux
  %i.uz = sub nsw i32 %i.ux, %3
  %i.va = ashr i32 %i.uz, %i.p                    ; 2 uses
  %i.vb = select i1 %i.uy, i32 64, i32 %i.va
  %i.vc = icmp slt i32 %i.di, %i.us
  %i.vd = select i1 %i.vc, i32 32, i32 %i.uv
  %.0721.i = select i1 %.2725.i, i32 %i.uw, i32 %i.vd ; 8 uses
  %i.ve = icmp slt i32 %i.da, %i.ux
  %i.vf = select i1 %i.ve, i32 32, i32 %i.va
  %.0720.i = select i1 %.2738.i, i32 %i.vb, i32 %i.vf ; 7 uses
end_hunk_15
