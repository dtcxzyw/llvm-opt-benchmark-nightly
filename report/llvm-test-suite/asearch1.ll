loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@asearch1:bb.a
  %i.ax = sub nsw i64 %i.aw, %i.au                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %i.ax, -8                      ; 3 uses
  %i.ay = add nsw i64 %n.vec, %i.au
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = add i64 %index, %i.au                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bd, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block
  %indvars.iv.ph = phi i64 [ %i.au, %.lr.ph225 ], [ %i.ay, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %.preheader213
  %.not223314 = phi i1 [ true, %.preheader213 ], [ false, %middle.block ], [ false, %scalar.ph ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 49152 ; 4 uses
  %i.bg = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.bf, i32 noundef 49152) #9 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph264, label %.loopexit212

.lr.ph264:                                        ; preds = %.preheader
  %sext = shl i64 %i.n, 32
  %i.bi = ashr exact i64 %sext, 32
  %i.bj = zext i32 %2 to i64                      ; 12 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bj ; 5 uses
  %.not197226 = icmp ugt i32 %i.ap, %i.aq         ; 4 uses
  %i.bm = zext i32 %i.aq to i64                   ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bm ; 2 uses
  %i.bp = xor i32 %i.o, -1
  %i.bq = zext i32 %i.ap to i64                   ; 24 uses
  %i.br = or disjoint i32 %i.aq, 1                ; 4 uses
  %i.bs = add i32 %2, -1                          ; 3 uses
  %i.bt = add i32 %2, 1
  %umax341 = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bm)
  %i.bu = add nuw nsw i64 %umax341, 1
  %i.bv = sub nsw i64 %i.bu, %i.bj                ; 3 uses
  %i.bw = add i32 %2, -1                          ; 6 uses
  %i.bx = add i32 %2, 1
  %i.by = add i32 %2, 1
  %umax407 = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bm)
  %i.bz = add nuw nsw i64 %umax407, 1
  %i.ca = sub nsw i64 %i.bz, %i.bj                ; 3 uses
  %i.cb = add i32 %2, -1                          ; 3 uses
  %i.cc = add i32 %2, 1
  %i.cd = add i32 %2, -1                          ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check427 = icmp ult i32 %i.cd, 7
  %invariant.op = sub i32 -2, %2
  %invariant.op462 = sub i32 -2, %2
  %invariant.op464 = sub i32 -2, %2
  %n.vec430 = and i64 %i.cf, 8589934588           ; 3 uses
  %i.cg = add nuw nsw i64 %n.vec430, %i.bq
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n445 = icmp eq i64 %i.cf, %n.vec430
  %min.iters.check409 = icmp ult i64 %i.ca, 8
  %n.vec412 = and i64 %i.ca, -8                   ; 3 uses
  %i.ch = add nsw i64 %n.vec412, %i.bj
  %cmp.n419 = icmp eq i64 %i.ca, %n.vec412
  %i.ci = add i32 %2, -1                          ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check387 = icmp ult i32 %i.ci, 7
  %invariant.op466 = sub i32 -2, %2
  %invariant.op468 = sub i32 -2, %2
  %invariant.op470 = sub i32 -2, %2
  %n.vec390 = and i64 %i.ck, 8589934588           ; 3 uses
  %i.cl = add nuw nsw i64 %n.vec390, %i.bq
  %broadcast.splatinsert395 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat396 = shufflevector <4 x i32> %broadcast.splatinsert395, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n405 = icmp eq i64 %i.ck, %n.vec390
  %i.cm = add i32 %2, -1                          ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check361 = icmp ult i32 %i.cm, 7
  %invariant.op472 = sub i32 -2, %2
  %invariant.op474 = sub i32 -2, %2
  %invariant.op476 = sub i32 -2, %2
  %n.vec364 = and i64 %i.co, 8589934588           ; 3 uses
  %i.cp = add nuw nsw i64 %n.vec364, %i.bq
  %broadcast.splatinsert369 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat370 = shufflevector <4 x i32> %broadcast.splatinsert369, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n379 = icmp eq i64 %i.co, %n.vec364
  %min.iters.check343 = icmp ult i64 %i.bv, 8
  %n.vec346 = and i64 %i.bv, -8                   ; 3 uses
  %i.cq = add nsw i64 %n.vec346, %i.bj
  %cmp.n353 = icmp eq i64 %i.bv, %n.vec346
  %i.cr = add i32 %2, -1                          ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check322 = icmp ult i32 %i.cr, 7
  %invariant.op478 = sub i32 -2, %2
  %invariant.op480 = sub i32 -2, %2
  %invariant.op482 = sub i32 -2, %2
  %n.vec325 = and i64 %i.ct, 8589934588           ; 3 uses
  %i.cu = add nuw nsw i64 %n.vec325, %i.bq
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat331 = shufflevector <4 x i32> %broadcast.splatinsert330, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n339 = icmp eq i64 %i.ct, %n.vec325
  br label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.at, ptr %i.cv, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.at, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.av
  br i1 %.not.not, label %scalar.ph, label %.preheader, !llvm.loop !16

bb.j:                                             ; preds = %.lr.ph264, %bb.aa
  %i.cx = phi i32 [ %i.bg, %.lr.ph264 ], [ %i.qi, %bb.aa ] ; 3 uses
  %.0263 = phi i32 [ 0, %.lr.ph264 ], [ %.3.lcssa, %bb.aa ] ; 2 uses
  %.0177262 = phi i32 [ 49152, %.lr.ph264 ], [ %spec.store.select1, %bb.aa ] ; 2 uses
  %i.cy = add nuw nsw i32 %i.cx, 49152            ; 5 uses
  %i.cz = icmp samesign ult i32 %i.cx, 49152      ; 2 uses
  br i1 %i.cz, label %bb.k, label %.lr.ph258.preheader

bb.k:                                             ; preds = %bb.j
  %i.da = zext nneg i32 %i.cx to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.da
  %i.dc = call ptr @strncpy(ptr noundef nonnull %i.db, ptr noundef nonnull %0, i64 noundef %i.bi) #9 ; 0 uses
  %i.dd = add i32 %i.cy, %i.o                     ; 3 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.de
  store i8 0, ptr %i.df, align 1, !tbaa !8
  %i.dg = icmp ugt i32 %i.dd, 49152
  br i1 %i.dg, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.j, %bb.k
  %.0173317 = phi i32 [ %i.dd, %bb.k ], [ %i.cy, %bb.j ]
  %.pre = load i32, ptr @Init1, align 4, !tbaa !4
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %.loopexit
  %i.dh = phi i32 [ %i.px, %.loopexit ], [ %.pre, %.lr.ph258.preheader ] ; 4 uses
  %.3256 = phi i32 [ %.5, %.loopexit ], [ %.0263, %.lr.ph258.preheader ] ; 2 uses
  %.2176255 = phi i32 [ %i.jr, %.loopexit ], [ 49152, %.lr.ph258.preheader ] ; 4 uses
  %.1178254 = phi i32 [ %.3180, %.loopexit ], [ %.0177262, %.lr.ph258.preheader ] ; 3 uses
  %i.di = or disjoint i32 %.2176255, 1            ; 2 uses
  %i.dj = zext i32 %.2176255 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !8
  %i.dm = sext i8 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4  ; 6 uses
  %i.dp = load i32, ptr %i.bk, align 4, !tbaa !4  ; 3 uses
  %i.dq = and i32 %i.dp, %i.dh
  %i.dr = lshr i32 %i.dp, 1
  %i.ds = and i32 %i.dr, %i.do                    ; 2 uses
  %i.dt = or i32 %i.ds, %i.dq                     ; 2 uses
  store i32 %i.dt, ptr %i.bl, align 4, !tbaa !4
  br i1 %.not197226, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph258
  %i.du = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.dv = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.dw = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.scevcheck421

vector.scevcheck421:                              ; preds = %.lr.ph229
  %.reass = add i32 %i.dv, %invariant.op
  %i.dx = icmp ult i32 %.reass, %i.cb
  %.reass463 = add i32 %i.du, %invariant.op462
  %i.dy = icmp ult i32 %.reass463, %i.cb
  %.reass465 = add i32 %i.dw, %invariant.op464
  %i.dz = icmp ult i32 %.reass465, %i.cb
  %i.ea = or i1 %i.dx, %i.dy
  %i.eb = or i1 %i.ea, %i.dz
  br i1 %i.eb, label %scalar.ph426.preheader, label %vector.memcheck424

vector.memcheck424:                               ; preds = %vector.scevcheck421
  %i.ec = sub i32 %i.cc, %i.dv
  %i.ed = zext i32 %i.ec to i64
  %i.ee = sub nsw i64 %i.bq, %i.ed
  %3 = shl nsw i64 %i.ee, 2
  %4 = add nsw i64 %3, -1
  %diff.check425 = icmp ult i64 %4, 15
  br i1 %diff.check425, label %scalar.ph426.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck424
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat434 = shufflevector <4 x i32> %broadcast.splatinsert433, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph428
  %index438 = phi i64 [ 0, %vector.ph428 ], [ %index.next443, %vector.body437 ] ; 2 uses
  %i.ef = add i64 %index438, %i.bq                ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ef
  %wide.load439 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !4 ; 2 uses
  %i.eh = and <4 x i32> %wide.load439, %broadcast.splat432
  %i.ei = lshr <4 x i32> %wide.load439, splat (i32 1)
  %i.ej = and <4 x i32> %i.ei, %broadcast.splat434
  %i.ek = trunc nuw i64 %i.ef to i32              ; 3 uses
  %i.el = sub i32 %i.ek, %i.du
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.em
  %wide.load440 = load <4 x i32>, ptr %i.en, align 4, !tbaa !4
  %i.eo = sub i32 %i.ek, %i.dv
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ep
  %wide.load441 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !4
  %i.er = sub i32 %i.ek, %i.dw
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.es
  %wide.load442 = load <4 x i32>, ptr %i.et, align 4, !tbaa !4
  %i.eu = or <4 x i32> %wide.load442, %wide.load441
  %i.ev = lshr <4 x i32> %i.eu, splat (i32 1)
  %i.ew = and <4 x i32> %i.ev, %broadcast.splat436
  %i.ex = or <4 x i32> %wide.load440, %i.eh
  %i.ey = or <4 x i32> %i.ex, %i.ej
  %i.ez = or <4 x i32> %i.ey, %i.ew
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ef
  store <4 x i32> %i.ez, ptr %i.fa, align 4, !tbaa !4
  %index.next443 = add nuw i64 %index438, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next443, %n.vec430
  br i1 %i.fb, label %middle.block444, label %vector.body437, !llvm.loop !17

middle.block444:                                  ; preds = %vector.body437
  br i1 %cmp.n445, label %._crit_edge230.loopexit, label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %vector.memcheck424, %vector.scevcheck421, %.lr.ph229, %middle.block444
  %indvars.iv268.ph = phi i64 [ %i.bq, %vector.memcheck424 ], [ %i.bq, %vector.scevcheck421 ], [ %i.bq, %.lr.ph229 ], [ %i.cg, %middle.block444 ]
  br label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.preheader, %scalar.ph426
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %scalar.ph426 ], [ %indvars.iv268.ph, %scalar.ph426.preheader ] ; 4 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv268
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = and i32 %i.fd, %i.dh
  %i.ff = lshr i32 %i.fd, 1
  %i.fg = and i32 %i.ff, %i.do
  %i.fh = trunc nuw i64 %indvars.iv268 to i32     ; 3 uses
  %i.fi = sub i32 %i.fh, %i.du
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = sub i32 %i.fh, %i.dv
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = sub i32 %i.fh, %i.dw
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.fu = or i32 %i.ft, %i.fp
  %i.fv = lshr i32 %i.fu, 1
  %i.fw = and i32 %i.fv, %i.q
  %i.fx = or i32 %i.fl, %i.fe
  %i.fy = or i32 %i.fx, %i.fg
  %i.fz = or i32 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv268
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next269 to i32
  %exitcond271 = icmp eq i32 %i.br, %lftr.wideiv
  br i1 %exitcond271, label %._crit_edge230.loopexit, label %scalar.ph426, !llvm.loop !18

._crit_edge230.loopexit:                          ; preds = %scalar.ph426, %middle.block444
  %.pre293 = load i32, ptr %i.bl, align 4, !tbaa !4
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.lr.ph258
  %i.gb = phi i32 [ %.pre293, %._crit_edge230.loopexit ], [ %i.dt, %.lr.ph258 ] ; 2 uses
  %i.gc = and i32 %i.gb, %i.r
  %.not198 = icmp eq i32 %i.gc, 0
  br i1 %.not198, label %.loopexit211, label %bb.l

bb.l:                                             ; preds = %._crit_edge230
  %i.gd = add nsw i32 %.3256, 1                   ; 3 uses
  %i.ge = load i32, ptr @AND, align 4, !tbaa !4
  switch i32 %i.ge, label %.thread [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.gf = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.gg = load i32, ptr @endposition, align 4, !tbaa !4 ; 2 uses
  %i.gh = and i32 %i.gg, %i.gf
  %i.gi = icmp eq i32 %i.gh, %i.gg
  br i1 %i.gi, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %i.gj = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.gk = load i32, ptr @endposition, align 4, !tbaa !4
  %i.gl = and i32 %i.gk, %i.gj
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n
  %i.go = phi i32 [ 0, %bb.l ], [ %i.gn, %bb.n ], [ 0, %bb.m ]
  %i.gp = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not199 = icmp eq i32 %i.go, %i.gp
  br i1 %.not199, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m
  %i.gq = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not200 = icmp eq i32 %i.gq, 0
  br i1 %.not200, label %bb.p, label %.loopexit212.sink.split

bb.p:                                             ; preds = %bb.o
  %i.gr = icmp slt i32 %.1178254, %i.cy
  br i1 %i.gr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gs = sub i32 %.2176255, %i.o
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.1178254, i32 noundef %i.gs, i32 noundef %i.gd) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.thread
  %i.gt = sub i32 %i.di, %i.o                     ; 2 uses
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !4
  br i1 %.not223314, label %._crit_edge235, label %.lr.ph234

.lr.ph234:                                        ; preds = %bb.r
  %i.gu = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  br i1 %min.iters.check409, label %scalar.ph408.preheader, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph234
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.gu, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph410
  %index416 = phi i64 [ 0, %vector.ph410 ], [ %index.next417, %vector.body415 ] ; 2 uses
  %i.gv = add i64 %index416, %i.bj                ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x i32> %broadcast.splat414, ptr %i.gw, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat414, ptr %i.gx, align 4, !tbaa !4
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <4 x i32> %broadcast.splat414, ptr %i.gy, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat414, ptr %i.gz, align 4, !tbaa !4
  %index.next417 = add nuw i64 %index416, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.ha, label %middle.block418, label %vector.body415, !llvm.loop !19

middle.block418:                                  ; preds = %vector.body415
  br i1 %cmp.n419, label %._crit_edge235.loopexit, label %scalar.ph408.preheader

scalar.ph408.preheader:                           ; preds = %.lr.ph234, %middle.block418
  %indvars.iv272.ph = phi i64 [ %i.bj, %.lr.ph234 ], [ %i.ch, %middle.block418 ]
  br label %scalar.ph408

scalar.ph408:                                     ; preds = %scalar.ph408.preheader, %scalar.ph408
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph408 ], [ %indvars.iv272.ph, %scalar.ph408.preheader ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv272
  store i32 %i.gu, ptr %i.hb, align 4, !tbaa !4
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv272
  store i32 %i.gu, ptr %i.hc, align 4, !tbaa !4
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %.not201.not = icmp samesign ult i64 %indvars.iv272, %i.bm
  br i1 %.not201.not, label %scalar.ph408, label %._crit_edge235.loopexit, !llvm.loop !20

._crit_edge235.loopexit:                          ; preds = %scalar.ph408, %middle.block418
  %.pre294 = load i32, ptr %i.bk, align 4, !tbaa !4 ; 2 uses
  %.pre301 = lshr i32 %.pre294, 1
  %.pre303 = and i32 %.pre301, %i.do
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %._crit_edge235.loopexit, %bb.r
  %.pre-phi304 = phi i32 [ %.pre303, %._crit_edge235.loopexit ], [ %i.ds, %bb.r ]
  %i.hd = phi i32 [ %.pre294, %._crit_edge235.loopexit ], [ %i.dp, %bb.r ]
  %i.he = load i32, ptr @Init1, align 4, !tbaa !4 ; 5 uses
  %i.hf = and i32 %i.hd, %i.he
  %i.hg = or i32 %.pre-phi304, %i.hf
  %i.hh = and i32 %i.hg, %i.ao                    ; 2 uses
  store i32 %i.hh, ptr %i.bl, align 4, !tbaa !4
  br i1 %.not197226, label %.loopexit211, label %.lr.ph239

.lr.ph239:                                        ; preds = %._crit_edge235
  %i.hi = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.hj = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.hk = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check387, label %scalar.ph386.preheader, label %vector.scevcheck381

vector.scevcheck381:                              ; preds = %.lr.ph239
  %.reass467 = add i32 %i.hj, %invariant.op466
  %i.hl = icmp ult i32 %.reass467, %i.bw
  %.reass469 = add i32 %i.hi, %invariant.op468
  %i.hm = icmp ult i32 %.reass469, %i.bw
  %.reass471 = add i32 %i.hk, %invariant.op470
  %i.hn = icmp ult i32 %.reass471, %i.bw
  %i.ho = or i1 %i.hl, %i.hm
  %i.hp = or i1 %i.ho, %i.hn
  br i1 %i.hp, label %scalar.ph386.preheader, label %vector.memcheck384

vector.memcheck384:                               ; preds = %vector.scevcheck381
  %i.hq = sub i32 %i.by, %i.hj
  %i.hr = zext i32 %i.hq to i64
  %i.hs = sub nsw i64 %i.bq, %i.hr
  %5 = shl nsw i64 %i.hs, 2
  %6 = add nsw i64 %5, -1
  %diff.check385 = icmp ult i64 %6, 15
  br i1 %diff.check385, label %scalar.ph386.preheader, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck384
  %broadcast.splatinsert391 = insertelement <4 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat392 = shufflevector <4 x i32> %broadcast.splatinsert391, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert393 = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat394 = shufflevector <4 x i32> %broadcast.splatinsert393, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph388
  %index398 = phi i64 [ 0, %vector.ph388 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %i.ht = add i64 %index398, %i.bq                ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ht
  %wide.load399 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !4 ; 2 uses
  %i.hv = and <4 x i32> %wide.load399, %broadcast.splat392
  %i.hw = lshr <4 x i32> %wide.load399, splat (i32 1)
  %i.hx = and <4 x i32> %i.hw, %broadcast.splat394
  %i.hy = trunc nuw i64 %i.ht to i32              ; 3 uses
  %i.hz = sub i32 %i.hy, %i.hi
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ia
  %wide.load400 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !4
  %i.ic = sub i32 %i.hy, %i.hj
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.id
  %wide.load401 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !4
  %i.if = sub i32 %i.hy, %i.hk
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ig
  %wide.load402 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !4
  %i.ii = or <4 x i32> %wide.load402, %wide.load401
  %i.ij = lshr <4 x i32> %i.ii, splat (i32 1)
  %i.ik = and <4 x i32> %i.ij, %broadcast.splat396
  %i.il = or <4 x i32> %wide.load400, %i.hv
  %i.im = or <4 x i32> %i.il, %i.hx
  %i.in = or <4 x i32> %i.im, %i.ik
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht
  store <4 x i32> %i.in, ptr %i.io, align 4, !tbaa !4
  %index.next403 = add nuw i64 %index398, 4       ; 2 uses
  %i.ip = icmp eq i64 %index.next403, %n.vec390
  br i1 %i.ip, label %middle.block404, label %vector.body397, !llvm.loop !21

middle.block404:                                  ; preds = %vector.body397
  br i1 %cmp.n405, label %.loopexit211.loopexit, label %scalar.ph386.preheader

scalar.ph386.preheader:                           ; preds = %vector.memcheck384, %vector.scevcheck381, %.lr.ph239, %middle.block404
  %indvars.iv275.ph = phi i64 [ %i.bq, %vector.memcheck384 ], [ %i.bq, %vector.scevcheck381 ], [ %i.bq, %.lr.ph239 ], [ %i.cl, %middle.block404 ]
  br label %scalar.ph386

scalar.ph386:                                     ; preds = %scalar.ph386.preheader, %scalar.ph386
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph386 ], [ %indvars.iv275.ph, %scalar.ph386.preheader ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv275
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4  ; 2 uses
  %i.is = and i32 %i.ir, %i.he
  %i.it = lshr i32 %i.ir, 1
  %i.iu = and i32 %i.it, %i.do
  %i.iv = trunc nuw i64 %indvars.iv275 to i32     ; 3 uses
  %i.iw = sub i32 %i.iv, %i.hi
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !4
  %i.ja = sub i32 %i.iv, %i.hj
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4
  %i.je = sub i32 %i.iv, %i.hk
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = or i32 %i.jh, %i.jd
  %i.jj = lshr i32 %i.ji, 1
  %i.jk = and i32 %i.jj, %i.q
  %i.jl = or i32 %i.iz, %i.is
  %i.jm = or i32 %i.jl, %i.iu
  %i.jn = or i32 %i.jm, %i.jk
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv275
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !4
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %lftr.wideiv278 = trunc i64 %indvars.iv.next276 to i32
  %exitcond279 = icmp eq i32 %i.br, %lftr.wideiv278
  br i1 %exitcond279, label %.loopexit211.loopexit, label %scalar.ph386, !llvm.loop !22

.loopexit211.loopexit:                            ; preds = %scalar.ph386, %middle.block404
  %.pre295 = load i32, ptr %i.bl, align 4, !tbaa !4
  br label %.loopexit211

.loopexit211:                                     ; preds = %.loopexit211.loopexit, %._crit_edge235, %._crit_edge230
  %i.jp = phi i32 [ %i.dh, %._crit_edge230 ], [ %i.he, %._crit_edge235 ], [ %i.he, %.loopexit211.loopexit ] ; 4 uses
  %i.jq = phi i32 [ %i.gb, %._crit_edge230 ], [ %i.hh, %._crit_edge235 ], [ %.pre295, %.loopexit211.loopexit ] ; 3 uses
  %.2179 = phi i32 [ %.1178254, %._crit_edge230 ], [ %i.gt, %._crit_edge235 ], [ %i.gt, %.loopexit211.loopexit ] ; 3 uses
  %.4 = phi i32 [ %.3256, %._crit_edge230 ], [ %i.gd, %._crit_edge235 ], [ %i.gd, %.loopexit211.loopexit ] ; 2 uses
  %i.jr = add i32 %.2176255, 2                    ; 4 uses
  %i.js = zext i32 %i.di to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !8
  %i.jv = sext i8 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4  ; 6 uses
  %i.jy = and i32 %i.jp, %i.jq
  %i.jz = lshr i32 %i.jq, 1
  %i.ka = and i32 %i.jz, %i.jx                    ; 2 uses
  %i.kb = or i32 %i.ka, %i.jy                     ; 2 uses
  store i32 %i.kb, ptr %i.bk, align 4, !tbaa !4
  br i1 %.not197226, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %.loopexit211
  %i.kc = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.kd = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.ke = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.scevcheck355

vector.scevcheck355:                              ; preds = %.lr.ph243
  %.reass473 = add i32 %i.kd, %invariant.op472
  %i.kf = icmp ult i32 %.reass473, %i.bw
  %.reass475 = add i32 %i.kc, %invariant.op474
  %i.kg = icmp ult i32 %.reass475, %i.bw
  %.reass477 = add i32 %i.ke, %invariant.op476
  %i.kh = icmp ult i32 %.reass477, %i.bw
  %i.ki = or i1 %i.kf, %i.kg
  %i.kj = or i1 %i.ki, %i.kh
  br i1 %i.kj, label %scalar.ph360.preheader, label %vector.memcheck358

vector.memcheck358:                               ; preds = %vector.scevcheck355
  %i.kk = sub i32 %i.bx, %i.kd
  %i.kl = zext i32 %i.kk to i64
  %i.km = sub nsw i64 %i.bq, %i.kl
  %7 = shl nsw i64 %i.km, 2
  %8 = add nsw i64 %7, -1
  %diff.check359 = icmp ult i64 %8, 15
  br i1 %diff.check359, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %broadcast.splatinsert365 = insertelement <4 x i32> poison, i32 %i.jp, i64 0
  %broadcast.splat366 = shufflevector <4 x i32> %broadcast.splatinsert365, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %broadcast.splat368 = shufflevector <4 x i32> %broadcast.splatinsert367, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph362
  %index372 = phi i64 [ 0, %vector.ph362 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.kn = add i64 %index372, %i.bq                ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kn
  %wide.load373 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !4 ; 2 uses
  %i.kp = and <4 x i32> %wide.load373, %broadcast.splat366
  %i.kq = lshr <4 x i32> %wide.load373, splat (i32 1)
  %i.kr = and <4 x i32> %i.kq, %broadcast.splat368
  %i.ks = trunc nuw i64 %i.kn to i32              ; 3 uses
  %i.kt = sub i32 %i.ks, %i.kc
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ku
  %wide.load374 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !4
  %i.kw = sub i32 %i.ks, %i.kd
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kx
  %wide.load375 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !4
  %i.kz = sub i32 %i.ks, %i.ke
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.la
  %wide.load376 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !4
  %i.lc = or <4 x i32> %wide.load376, %wide.load375
  %i.ld = lshr <4 x i32> %i.lc, splat (i32 1)
  %i.le = and <4 x i32> %i.ld, %broadcast.splat370
  %i.lf = or <4 x i32> %wide.load374, %i.kp
  %i.lg = or <4 x i32> %i.lf, %i.kr
  %i.lh = or <4 x i32> %i.lg, %i.le
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kn
  store <4 x i32> %i.lh, ptr %i.li, align 4, !tbaa !4
  %index.next377 = add nuw i64 %index372, 4       ; 2 uses
  %i.lj = icmp eq i64 %index.next377, %n.vec364
  br i1 %i.lj, label %middle.block378, label %vector.body371, !llvm.loop !23

middle.block378:                                  ; preds = %vector.body371
  br i1 %cmp.n379, label %._crit_edge244.loopexit, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %vector.memcheck358, %vector.scevcheck355, %.lr.ph243, %middle.block378
  %indvars.iv280.ph = phi i64 [ %i.bq, %vector.memcheck358 ], [ %i.bq, %vector.scevcheck355 ], [ %i.bq, %.lr.ph243 ], [ %i.cp, %middle.block378 ]
  br label %scalar.ph360

scalar.ph360:                                     ; preds = %scalar.ph360.preheader, %scalar.ph360
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %scalar.ph360 ], [ %indvars.iv280.ph, %scalar.ph360.preheader ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv280
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4  ; 2 uses
  %i.lm = and i32 %i.ll, %i.jp
  %i.ln = lshr i32 %i.ll, 1
  %i.lo = and i32 %i.ln, %i.jx
  %i.lp = trunc nuw i64 %indvars.iv280 to i32     ; 3 uses
  %i.lq = sub i32 %i.lp, %i.kc
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !4
  %i.lu = sub i32 %i.lp, %i.kd
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !4
  %i.ly = sub i32 %i.lp, %i.ke
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !4
  %i.mc = or i32 %i.mb, %i.lx
  %i.md = lshr i32 %i.mc, 1
  %i.me = and i32 %i.md, %i.q
  %i.mf = or i32 %i.lt, %i.lm
  %i.mg = or i32 %i.mf, %i.lo
  %i.mh = or i32 %i.mg, %i.me
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv280
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !4
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %lftr.wideiv283 = trunc i64 %indvars.iv.next281 to i32
  %exitcond284 = icmp eq i32 %i.br, %lftr.wideiv283
  br i1 %exitcond284, label %._crit_edge244.loopexit, label %scalar.ph360, !llvm.loop !24

._crit_edge244.loopexit:                          ; preds = %scalar.ph360, %middle.block378
  %.pre296 = load i32, ptr %i.bk, align 4, !tbaa !4
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %.loopexit211
  %i.mj = phi i32 [ %.pre296, %._crit_edge244.loopexit ], [ %i.kb, %.loopexit211 ]
  %i.mk = and i32 %i.mj, %i.r
  %.not204 = icmp eq i32 %i.mk, 0
  br i1 %.not204, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge244
  %i.ml = add nsw i32 %.4, 1                      ; 4 uses
  %i.mm = load i32, ptr @AND, align 4, !tbaa !4
  switch i32 %i.mm, label %.thread210 [
    i32 1, label %bb.t
    i32 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.mn = load i32, ptr %i.bo, align 8, !tbaa !4
  %i.mo = load i32, ptr @endposition, align 4, !tbaa !4 ; 2 uses
  %i.mp = and i32 %i.mo, %i.mn
  %i.mq = icmp eq i32 %i.mp, %i.mo
  br i1 %i.mq, label %bb.v, label %.thread210

bb.u:                                             ; preds = %bb.s
  %i.mr = load i32, ptr %i.bo, align 8, !tbaa !4
  %i.ms = load i32, ptr @endposition, align 4, !tbaa !4
  %i.mt = and i32 %i.ms, %i.mr
  %i.mu = icmp ne i32 %i.mt, 0
  %i.mv = zext i1 %i.mu to i32
  br label %.thread210

.thread210:                                       ; preds = %bb.s, %bb.t, %bb.u
  %i.mw = phi i32 [ 0, %bb.s ], [ %i.mv, %bb.u ], [ 0, %bb.t ]
  %i.mx = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not205 = icmp eq i32 %i.mw, %i.mx
  br i1 %.not205, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.thread210, %bb.t
  %i.my = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not206 = icmp eq i32 %i.my, 0
  br i1 %.not206, label %bb.w, label %.loopexit212.sink.split

bb.w:                                             ; preds = %bb.v
  %i.mz = icmp slt i32 %.2179, %i.cy
  br i1 %i.mz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.na = add i32 %i.jr, %i.bp
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.2179, i32 noundef %i.na, i32 noundef %i.ml) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %.thread210
  %i.nb = sub i32 %i.jr, %i.o                     ; 3 uses
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !4
  br i1 %.not223314, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.y
  %i.nc = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph248
  %broadcast.splatinsert347 = insertelement <4 x i32> poison, i32 %i.nc, i64 0
  %broadcast.splat348 = shufflevector <4 x i32> %broadcast.splatinsert347, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph344
  %index350 = phi i64 [ 0, %vector.ph344 ], [ %index.next351, %vector.body349 ] ; 2 uses
  %i.nd = add i64 %index350, %i.bj                ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nd ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <4 x i32> %broadcast.splat348, ptr %i.ne, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat348, ptr %i.nf, align 4, !tbaa !4
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nd ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store <4 x i32> %broadcast.splat348, ptr %i.ng, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat348, ptr %i.nh, align 4, !tbaa !4
  %index.next351 = add nuw i64 %index350, 8       ; 2 uses
  %i.ni = icmp eq i64 %index.next351, %n.vec346
  br i1 %i.ni, label %middle.block352, label %vector.body349, !llvm.loop !25

middle.block352:                                  ; preds = %vector.body349
  br i1 %cmp.n353, label %._crit_edge249.loopexit, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %.lr.ph248, %middle.block352
  %indvars.iv285.ph = phi i64 [ %i.bj, %.lr.ph248 ], [ %i.cq, %middle.block352 ]
  br label %scalar.ph342

scalar.ph342:                                     ; preds = %scalar.ph342.preheader, %scalar.ph342
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %scalar.ph342 ], [ %indvars.iv285.ph, %scalar.ph342.preheader ] ; 4 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv285
  store i32 %i.nc, ptr %i.nj, align 4, !tbaa !4
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv285
  store i32 %i.nc, ptr %i.nk, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1
  %.not207.not = icmp samesign ult i64 %indvars.iv285, %i.bm
  br i1 %.not207.not, label %scalar.ph342, label %._crit_edge249.loopexit, !llvm.loop !26

._crit_edge249.loopexit:                          ; preds = %scalar.ph342, %middle.block352
  %.pre297 = load i32, ptr %i.bl, align 4, !tbaa !4 ; 2 uses
  %.pre298 = lshr i32 %.pre297, 1
  %.pre299 = and i32 %.pre298, %i.jx
  br label %._crit_edge249

._crit_edge249:                                   ; preds = %._crit_edge249.loopexit, %bb.y
  %.pre-phi300 = phi i32 [ %.pre299, %._crit_edge249.loopexit ], [ %i.ka, %bb.y ]
  %i.nl = phi i32 [ %.pre297, %._crit_edge249.loopexit ], [ %i.jq, %bb.y ]
  %i.nm = load i32, ptr @Init1, align 4, !tbaa !4 ; 6 uses
  %i.nn = and i32 %i.nl, %i.nm
  %i.no = or i32 %.pre-phi300, %i.nn
  %i.np = and i32 %i.no, %i.ao
  store i32 %i.np, ptr %i.bk, align 4, !tbaa !4
  br i1 %.not197226, label %.loopexit, label %.lr.ph253

.lr.ph253:                                        ; preds = %._crit_edge249
  %i.nq = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.nr = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.ns = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check322, label %scalar.ph321.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph253
  %.reass479 = add i32 %i.nr, %invariant.op478
  %i.nt = icmp ult i32 %.reass479, %i.bs
  %.reass481 = add i32 %i.nq, %invariant.op480
  %i.nu = icmp ult i32 %.reass481, %i.bs
  %.reass483 = add i32 %i.ns, %invariant.op482
  %i.nv = icmp ult i32 %.reass483, %i.bs
  %i.nw = or i1 %i.nt, %i.nu
  %i.nx = or i1 %i.nw, %i.nv
  br i1 %i.nx, label %scalar.ph321.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ny = sub i32 %i.bt, %i.nr
  %i.nz = zext i32 %i.ny to i64
  %i.oa = sub nsw i64 %i.bq, %i.nz
  %9 = shl nsw i64 %i.oa, 2
  %10 = add nsw i64 %9, -1
  %diff.check = icmp ult i64 %10, 15
  br i1 %diff.check, label %scalar.ph321.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert326 = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %broadcast.splat327 = shufflevector <4 x i32> %broadcast.splatinsert326, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert328 = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %broadcast.splat329 = shufflevector <4 x i32> %broadcast.splatinsert328, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph323
  %index333 = phi i64 [ 0, %vector.ph323 ], [ %index.next337, %vector.body332 ] ; 2 uses
  %i.ob = add i64 %index333, %i.bq                ; 3 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ob
  %wide.load = load <4 x i32>, ptr %i.oc, align 4, !tbaa !4 ; 2 uses
  %i.od = and <4 x i32> %wide.load, %broadcast.splat327
  %i.oe = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.of = and <4 x i32> %i.oe, %broadcast.splat329
  %i.og = trunc nuw i64 %i.ob to i32              ; 3 uses
  %i.oh = sub i32 %i.og, %i.nq
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oi
  %wide.load334 = load <4 x i32>, ptr %i.oj, align 4, !tbaa !4
  %i.ok = sub i32 %i.og, %i.nr
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ol
  %wide.load335 = load <4 x i32>, ptr %i.om, align 4, !tbaa !4
  %i.on = sub i32 %i.og, %i.ns
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oo
  %wide.load336 = load <4 x i32>, ptr %i.op, align 4, !tbaa !4
  %i.oq = or <4 x i32> %wide.load336, %wide.load335
  %i.or = lshr <4 x i32> %i.oq, splat (i32 1)
  %i.os = and <4 x i32> %i.or, %broadcast.splat331
  %i.ot = or <4 x i32> %wide.load334, %i.od
  %i.ou = or <4 x i32> %i.ot, %i.of
  %i.ov = or <4 x i32> %i.ou, %i.os
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ob
  store <4 x i32> %i.ov, ptr %i.ow, align 4, !tbaa !4
  %index.next337 = add nuw i64 %index333, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next337, %n.vec325
  br i1 %i.ox, label %middle.block338, label %vector.body332, !llvm.loop !27

middle.block338:                                  ; preds = %vector.body332
  br i1 %cmp.n339, label %.loopexit, label %scalar.ph321.preheader

scalar.ph321.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph253, %middle.block338
  %indvars.iv288.ph = phi i64 [ %i.bq, %vector.memcheck ], [ %i.bq, %vector.scevcheck ], [ %i.bq, %.lr.ph253 ], [ %i.cu, %middle.block338 ]
  br label %scalar.ph321

scalar.ph321:                                     ; preds = %scalar.ph321.preheader, %scalar.ph321
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %scalar.ph321 ], [ %indvars.iv288.ph, %scalar.ph321.preheader ] ; 4 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv288
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !4  ; 2 uses
  %i.pa = and i32 %i.oz, %i.nm
  %i.pb = lshr i32 %i.oz, 1
  %i.pc = and i32 %i.pb, %i.jx
  %i.pd = trunc nuw i64 %indvars.iv288 to i32     ; 3 uses
  %i.pe = sub i32 %i.pd, %i.nq
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !4
  %i.pi = sub i32 %i.pd, %i.nr
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !4
  %i.pm = sub i32 %i.pd, %i.ns
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  %i.pq = or i32 %i.pp, %i.pl
  %i.pr = lshr i32 %i.pq, 1
  %i.ps = and i32 %i.pr, %i.q
  %i.pt = or i32 %i.ph, %i.pa
  %i.pu = or i32 %i.pt, %i.pc
  %i.pv = or i32 %i.pu, %i.ps
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv288
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !4
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %lftr.wideiv291 = trunc i64 %indvars.iv.next289 to i32
  %exitcond292 = icmp eq i32 %i.br, %lftr.wideiv291
  br i1 %exitcond292, label %.loopexit, label %scalar.ph321, !llvm.loop !28

.loopexit:                                        ; preds = %scalar.ph321, %middle.block338, %._crit_edge249, %._crit_edge244
  %i.px = phi i32 [ %i.jp, %._crit_edge244 ], [ %i.nm, %._crit_edge249 ], [ %i.nm, %middle.block338 ], [ %i.nm, %scalar.ph321 ]
  %.3180 = phi i32 [ %.2179, %._crit_edge244 ], [ %i.nb, %._crit_edge249 ], [ %i.nb, %middle.block338 ], [ %i.nb, %scalar.ph321 ] ; 2 uses
  %.5 = phi i32 [ %.4, %._crit_edge244 ], [ %i.ml, %._crit_edge249 ], [ %i.ml, %middle.block338 ], [ %i.ml, %scalar.ph321 ] ; 2 uses
  %i.py = icmp ult i32 %i.jr, %.0173317
  br i1 %i.py, label %.lr.ph258, label %._crit_edge259, !llvm.loop !29

._crit_edge259:                                   ; preds = %.loopexit, %bb.k
  %.1178.lcssa = phi i32 [ %.0177262, %bb.k ], [ %.3180, %.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.0263, %bb.k ], [ %.5, %.loopexit ]
  %i.pz = sub nsw i32 %i.cy, %.1178.lcssa         ; 2 uses
  %i.qa = icmp sgt i32 %i.pz, 49152
  br i1 %i.qa, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge259
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge259
  %.0181 = phi i32 [ 49152, %bb.z ], [ %i.pz, %._crit_edge259 ] ; 2 uses
  %i.qb = sext i32 %.0181 to i64                  ; 2 uses
  %i.qc = sub nsw i64 0, %i.qb
  %i.qd = getelementptr inbounds i8, ptr %i.bf, i64 %i.qc
  %i.qe = sext i32 %.1178.lcssa to i64
  %i.qf = getelementptr inbounds i8, ptr %i.c, i64 %i.qe
  %i.qg = call ptr @strncpy(ptr noundef nonnull %i.qd, ptr noundef nonnull %i.qf, i64 noundef %i.qb) #9 ; 0 uses
  %i.qh = sub nsw i32 49152, %.0181
  %spec.store.select1 = select i1 %i.cz, i32 49152, i32 %i.qh
  %i.qi = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.bf, i32 noundef 49152) #9 ; 2 uses
  %i.qj = icmp sgt i32 %i.qi, 0
  br i1 %i.qj, label %bb.j, label %.loopexit212, !llvm.loop !30

.loopexit212.sink.split:                          ; preds = %bb.v, %bb.o
  %i.qk = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.ql = add nsw i32 %i.qk, 1
  store i32 %i.ql, ptr @num_of_matched, align 4, !tbaa !4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %.loopexit212

.loopexit212:                                     ; preds = %bb.aa, %.loopexit212.sink.split, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @fill_buf(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare void @output(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !15, !14}
!17 = distinct !{!17, !10, !14, !15}
!18 = distinct !{!18, !10, !14}
!19 = distinct !{!19, !10, !14, !15}
!20 = distinct !{!20, !10, !15, !14}
!21 = distinct !{!21, !10, !14, !15}
!22 = distinct !{!22, !10, !14}
!23 = distinct !{!23, !10, !14, !15}
!24 = distinct !{!24, !10, !14}
!25 = distinct !{!25, !10, !14, !15}
!26 = distinct !{!26, !10, !15, !14}
!27 = distinct !{!27, !10, !14, !15}
end_hunk_0
