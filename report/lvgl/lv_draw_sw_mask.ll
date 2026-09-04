Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_mask?download=true
inline.NumInlined: 59
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@lv_draw_mask_line:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.o, 3
  %i.s = icmp sgt i32 %i.d, 0
  %or.cond3 = select i1 %i.r, i1 %i.s, i1 false
  %. = zext i1 %or.cond3 to i32
  br label %line_mask_flat.exit

bb.f:                                             ; preds = %bb.b
  %i.t = and i8 %i.n, 6
  %switch64 = icmp eq i8 %i.t, 2
  br i1 %switch64, label %line_mask_flat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i8 %i.o, 1
  %i.v = icmp sgt i32 %i.f, 0                     ; 2 uses
  %or.cond5 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond5, label %line_mask_flat.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq i8 %i.o, 0
  %i.x = add nsw i32 %i.f, %3                     ; 2 uses
  %i.y = icmp slt i32 %i.x, 0                     ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %line_mask_flat.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = sub nsw i32 0, %i.f                      ; 2 uses
  br i1 %i.v, label %line_mask_flat.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i32 %3, %i.z
  br i1 %i.aa, label %bb.l, label %line_mask_flat.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = zext nneg i32 %i.x to i64
  tail call void @lv_memset(ptr noundef %i.ac, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ad) #9
  br label %line_mask_flat.exit

bb.m:                                             ; preds = %bb.h
  br i1 %i.y, label %line_mask_flat.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = sub nsw i32 0, %i.f
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0) ; 2 uses
  %.not63 = icmp slt i32 %spec.store.select, %3
  br i1 %.not63, label %bb.o, label %line_mask_flat.exit

bb.o:                                             ; preds = %bb.n
  %i.af = zext nneg i32 %spec.store.select to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.af) #9
  br label %line_mask_flat.exit

bb.p:                                             ; preds = %bb.a
  br i1 %.not62, label %bb.az, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !25 ; 4 uses
  %i.ai = mul nsw i32 %i.ah, %i.f
  %i.aj = ashr i32 %i.ai, 10                      ; 2 uses
  %i.ak = icmp sgt i32 %i.ah, 0
  br i1 %i.ak, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.al = icmp sgt i32 %i.aj, %i.d
  br i1 %i.al, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.am = lshr i8 %i.k, 1
  %.lobit141.i = and i8 %i.am, 1
  %..i = zext nneg i8 %.lobit141.i to i32
  br label %line_mask_flat.exit

bb.t:                                             ; preds = %bb.q
  %i.an = icmp slt i32 %i.aj, %i.d
  br i1 %i.an, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ao = lshr i8 %i.k, 1
  %.lobit.i = and i8 %i.ao, 1
  %.124.i = zext nneg i8 %.lobit.i to i32
  br label %line_mask_flat.exit

bb.v:                                             ; preds = %bb.r
  %i.ap = add nsw i32 %i.f, %3
  %i.aq = mul nsw i32 %i.ah, %i.ap
  %i.ar = ashr i32 %i.aq, 10
  %i.as = icmp slt i32 %i.ar, %i.d
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.at = and i8 %i.k, 2
  %.not122.i = icmp eq i8 %i.at, 0
  %.125.i = zext i1 %.not122.i to i32
  br label %line_mask_flat.exit

bb.x:                                             ; preds = %bb.t
  %i.au = add nsw i32 %i.f, %3
  %i.av = mul nsw i32 %i.ah, %i.au
  %i.aw = ashr i32 %i.av, 10
  %i.ax = icmp sgt i32 %i.aw, %i.d
  br i1 %i.ax, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ay = and i8 %i.k, 2
  %.not115.i = icmp eq i8 %i.ay, 0
  %.126.i = zext i1 %.not115.i to i32
  br label %line_mask_flat.exit

bb.z:                                             ; preds = %bb.v
  %i.az = shl nsw i32 %i.d, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.bc = mul nsw i32 %i.az, %i.bb
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.bd = shl nsw i32 %i.d, 8
  %i.be = add nsw i32 %i.bd, 256
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26
  %i.bh = mul nsw i32 %i.bg, %i.be
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0103.in.i = phi i32 [ %i.bc, %bb.z ], [ %i.bh, %bb.aa ] ; 2 uses
  %.0103.i = lshr i32 %.0103.in.i, 10
  %i.bi = ashr i32 %.0103.in.i, 18                ; 2 uses
  %i.bj = and i32 %.0103.i, 255                   ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.thread134.i, label %bb.ac

.thread134.i:                                     ; preds = %bb.ab
  %i.bl = sub nsw i32 %i.bi, %i.f                 ; 2 uses
  br label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.bm = xor i32 %i.bj, 255                      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !28
  %i.bp = mul nsw i32 %i.bo, %i.bm
  %i.bq = ashr i32 %i.bp, 8                       ; 2 uses
  %i.br = sub nsw i32 255, %i.bq
  %i.bs = sub nsw i32 %i.bi, %i.f                 ; 5 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  %i.bu = icmp slt i32 %i.bs, %3
  %or.cond127.i = and i1 %i.bt, %i.bu
  br i1 %or.cond127.i, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bv = mul nsw i32 %i.bq, %i.bm
  %i.bw = lshr i32 %i.bv, 9
  %i.bx = trunc i32 %i.bw to i8
  %i.by = lshr i8 %i.k, 1
  %i.bz = and i8 %i.by, 1
  %sext.i = add nsw i8 %i.bz, -1
  %spec.select.i = xor i8 %sext.i, %i.bx          ; 3 uses
  %i.ca = zext nneg i32 %i.bs to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !29  ; 2 uses
  %i.cd = zext i8 %spec.select.i to i32
  %i.ce = icmp ugt i8 %spec.select.i, -4
  br i1 %i.ce, label %mask_mix.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = icmp ult i8 %spec.select.i, 3
  br i1 %i.cf, label %mask_mix.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = zext i8 %i.cc to i32
  %i.ch = mul nuw nsw i32 %i.cd, 32897
  %i.ci = mul nuw nsw i32 %i.ch, %i.cg
  %i.cj = lshr i32 %i.ci, 23
  %i.ck = trunc nuw i32 %i.cj to i8
  br label %mask_mix.exit.i

mask_mix.exit.i:                                  ; preds = %bb.af, %bb.ae, %bb.ad
  %.0.i.i = phi i8 [ %i.ck, %bb.af ], [ %i.cc, %bb.ad ], [ 0, %bb.ae ]
  store i8 %.0.i.i, ptr %i.cb, align 1, !tbaa !29
  br label %bb.ag

bb.ag:                                            ; preds = %mask_mix.exit.i, %bb.ac
  %i.cl = add nsw i32 %i.bs, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread134.i
  %i.cm = phi i32 [ %i.bs, %bb.ag ], [ %i.bl, %.thread134.i ] ; 3 uses
  %.0100136.i = phi i32 [ %i.br, %bb.ag ], [ 255, %.thread134.i ]
  %.097.i = phi i32 [ %i.cl, %bb.ag ], [ %i.bl, %.thread134.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.pre.i = load i32, ptr %i.cn, align 8, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %bb.ah
  %i.co = phi i32 [ %.pre.i, %bb.ah ], [ %i.di, %bb.an ] ; 3 uses
  %.1101.i = phi i32 [ %.0100136.i, %bb.ah ], [ %i.dj, %bb.an ] ; 4 uses
  %.198.i = phi i32 [ %.097.i, %bb.ah ], [ %i.dk, %bb.an ] ; 5 uses
  %i.cp = icmp sgt i32 %.1101.i, %i.co
  br i1 %i.cp, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.cq = icmp sgt i32 %.198.i, -1
  %i.cr = icmp slt i32 %.198.i, %3
  %or.cond128.i = and i1 %i.cq, %i.cr
  br i1 %or.cond128.i, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.cs = lshr i32 %i.co, 1
  %i.ct = sub i32 %.1101.i, %i.cs
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = load i8, ptr %i.j, align 4
  %i.cw = shl i8 %i.cv, 6
  %sext137.i = ashr i8 %i.cw, 7
  %.1.i = xor i8 %sext137.i, %i.cu                ; 3 uses
  %i.cx = zext nneg i32 %.198.i to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29  ; 2 uses
  %i.da = zext i8 %.1.i to i32
  %i.db = icmp ugt i8 %.1.i, -4
  br i1 %i.db, label %mask_mix.exit130.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = icmp ult i8 %.1.i, 3
  br i1 %i.dc, label %mask_mix.exit130.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = zext i8 %i.cz to i32
  %i.de = mul nuw nsw i32 %i.dd, 32897
  %i.df = mul nuw nsw i32 %i.de, %i.da
  %i.dg = lshr i32 %i.df, 23
  %i.dh = trunc nuw i32 %i.dg to i8
  br label %mask_mix.exit130.i

mask_mix.exit130.i:                               ; preds = %bb.am, %bb.al, %bb.ak
  %.0.i129.i = phi i8 [ %i.dh, %bb.am ], [ %i.cz, %bb.ak ], [ 0, %bb.al ]
  store i8 %.0.i129.i, ptr %i.cy, align 1, !tbaa !29
  %.pre142.i = load i32, ptr %i.cn, align 8, !tbaa !28
  br label %bb.an

bb.an:                                            ; preds = %mask_mix.exit130.i, %bb.aj
  %i.di = phi i32 [ %.pre142.i, %mask_mix.exit130.i ], [ %i.co, %bb.aj ] ; 2 uses
  %i.dj = sub nsw i32 %.1101.i, %i.di             ; 2 uses
  %i.dk = add nsw i32 %.198.i, 1                  ; 3 uses
  %.not119.i = icmp slt i32 %i.dk, %3
  br i1 %.not119.i, label %bb.ai, label %bb.ao, !llvm.loop !58

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.2102.i = phi i32 [ %i.dj, %bb.an ], [ %.1101.i, %bb.ai ] ; 2 uses
  %.299.i = phi i32 [ %i.dk, %bb.an ], [ %.198.i, %bb.ai ] ; 5 uses
  %i.dl = icmp slt i32 %.299.i, %3
  %i.dm = icmp sgt i32 %.299.i, -1
  %or.cond.i = and i1 %i.dl, %i.dm
  %.pre73 = load i8, ptr %i.j, align 4            ; 2 uses
  br i1 %or.cond.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !26
  %i.dp = mul nsw i32 %i.do, %.2102.i
  %i.dq = lshr i32 %i.dp, 10
  %i.dr = mul i32 %i.dq, %.2102.i
  %i.ds = lshr i32 %i.dr, 9
  %i.dt = load i32, ptr %i.ag, align 8, !tbaa !25
  %.lobit138.i = ashr i32 %i.dt, 31
  %.2139.i = xor i32 %i.ds, %.lobit138.i
  %.2.i = trunc i32 %.2139.i to i8
  %i.du = shl i8 %.pre73, 6
  %sext140.i = ashr i8 %i.du, 7
  %.3.i = xor i8 %sext140.i, %.2.i                ; 3 uses
  %i.dv = zext nneg i32 %.299.i to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !29  ; 2 uses
  %i.dy = zext i8 %.3.i to i32
  %i.dz = icmp ugt i8 %.3.i, -4
  br i1 %i.dz, label %mask_mix.exit132.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ea = icmp ult i8 %.3.i, 3
  br i1 %i.ea, label %mask_mix.exit132.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = zext i8 %i.dx to i32
  %i.ec = mul nuw nsw i32 %i.eb, 32897
  %i.ed = mul nuw nsw i32 %i.ec, %i.dy
  %i.ee = lshr i32 %i.ed, 23
  %i.ef = trunc nuw i32 %i.ee to i8
  br label %mask_mix.exit132.i

mask_mix.exit132.i:                               ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0.i131.i = phi i8 [ %i.ef, %bb.ar ], [ %i.dx, %bb.ap ], [ 0, %bb.aq ]
  store i8 %.0.i131.i, ptr %i.dw, align 1, !tbaa !29
  %.pre = load i8, ptr %i.j, align 4
  br label %bb.as

bb.as:                                            ; preds = %mask_mix.exit132.i, %bb.ao
  %5 = phi i8 [ %.pre, %mask_mix.exit132.i ], [ %.pre73, %bb.ao ]
  %i.eg = and i8 %5, 2
  %.not121.i = icmp eq i8 %i.eg, 0
  br i1 %.not121.i, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eh = icmp sgt i32 %i.cm, %3
  br i1 %i.eh, label %line_mask_flat.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = icmp sgt i32 %i.cm, -1
  br i1 %i.ei, label %bb.av, label %line_mask_flat.exit

bb.av:                                            ; preds = %bb.au
  %i.ej = zext nneg i32 %i.cm to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ej) #9
  br label %line_mask_flat.exit

bb.aw:                                            ; preds = %bb.as
  %i.ek = add nsw i32 %.299.i, 1                  ; 3 uses
  %i.el = icmp slt i32 %.299.i, -1
  br i1 %i.el, label %line_mask_flat.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.em = icmp slt i32 %i.ek, %3
  br i1 %i.em, label %bb.ay, label %line_mask_flat.exit

bb.ay:                                            ; preds = %bb.ax
  %i.en = zext nneg i32 %i.ek to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.en
  %i.ep = sub nuw nsw i32 %3, %i.ek
  %i.eq = zext nneg i32 %i.ep to i64
  tail call void @lv_memset(ptr noundef %i.eo, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.eq) #9
  br label %line_mask_flat.exit

bb.az:                                            ; preds = %bb.p
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !26 ; 5 uses
  %i.et = mul nsw i32 %i.es, %i.d
  %i.eu = ashr i32 %i.et, 10                      ; 2 uses
  %i.ev = icmp sgt i32 %i.es, 0
  %i.ew = zext i1 %i.ev to i32
  %spec.select.i65 = add nsw i32 %i.eu, %i.ew
  %i.ex = icmp slt i32 %spec.select.i65, %i.f
  br i1 %i.ex, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ey = lshr exact i8 %i.k, 1
  %.lobit.i71 = and i8 %i.ey, 1
  %..i72 = zext nneg i8 %.lobit.i71 to i32
  br label %line_mask_flat.exit

bb.bb:                                            ; preds = %bb.az
  %i.ez = add nsw i32 %i.f, %3
  %i.fa = icmp sgt i32 %i.eu, %i.ez
  br i1 %i.fa, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fb = and i8 %i.k, 2
  %.not203.i = icmp eq i8 %i.fb, 0
  %.205.i = zext i1 %.not203.i to i32
  br label %line_mask_flat.exit

bb.bd:                                            ; preds = %bb.bb
  %i.fc = shl nsw i32 %i.d, 8                     ; 2 uses
  %i.fd = mul nsw i32 %i.es, %i.fc                ; 2 uses
  %i.fe = lshr i32 %i.fd, 10
  %i.ff = ashr i32 %i.fd, 18                      ; 4 uses
  %i.fg = and i32 %i.fe, 255                      ; 5 uses
  %i.fh = add i32 %i.fc, 256
  %i.fi = mul nsw i32 %i.es, %i.fh                ; 2 uses
  %i.fj = lshr i32 %i.fi, 10
  %i.fk = ashr i32 %i.fi, 18                      ; 2 uses
  %i.fl = and i32 %i.fj, 255
  %i.fm = sub nsw i32 %i.ff, %i.f                 ; 16 uses
  %.not.i = icmp eq i32 %i.ff, %i.fk
  br i1 %.not.i, label %.thread248.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fn = icmp slt i32 %i.es, 0                   ; 2 uses
  %i.fo = icmp eq i32 %i.fg, 0
  %or.cond.i66 = and i1 %i.fn, %i.fo
  br i1 %or.cond.i66, label %.thread.i.a, label %bb.bp

.thread.i.a:                                      ; preds = %bb.be
  %i.fp = add nsw i32 %i.fm, -1
  br label %.thread248.i

.thread248.i:                                     ; preds = %.thread.i.a, %bb.bd
  %.0161231.i = phi i32 [ 255, %.thread.i.a ], [ %i.fg, %bb.bd ]
  %.0162230.i = phi i32 [ %i.fk, %.thread.i.a ], [ %i.ff, %bb.bd ]
  %.0167229.i = phi i32 [ %i.fp, %.thread.i.a ], [ %i.fm, %bb.bd ] ; 4 uses
  %i.fq = icmp sgt i32 %.0167229.i, -1
  %i.fr = icmp slt i32 %.0167229.i, %3            ; 2 uses
  %or.cond206.i = and i1 %i.fq, %i.fr
  br i1 %or.cond206.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.thread248.i
  %i.fs = add nuw nsw i32 %.0161231.i, %i.fl
  %i.ft = lshr i32 %i.fs, 1
  %i.fu = trunc nuw i32 %i.ft to i8
  %i.fv = shl i8 %i.k, 6
  %sext237.i = ashr exact i8 %i.fv, 7
  %.0.i = xor i8 %sext237.i, %i.fu                ; 3 uses
  %i.fw = zext nneg i32 %.0167229.i to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !29  ; 2 uses
  %i.fz = zext i8 %.0.i to i32
  %i.ga = icmp ugt i8 %.0.i, -4
  br i1 %i.ga, label %mask_mix.exit.i69, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gb = icmp ult i8 %.0.i, 3
  br i1 %i.gb, label %mask_mix.exit.i69, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gc = zext i8 %i.fy to i32
  %i.gd = mul nuw nsw i32 %i.fz, 32897
  %i.ge = mul nuw nsw i32 %i.gd, %i.gc
  %i.gf = lshr i32 %i.ge, 23
  %i.gg = trunc nuw i32 %i.gf to i8
  br label %mask_mix.exit.i69

mask_mix.exit.i69:                                ; preds = %bb.bh, %bb.bg, %bb.bf
  %.0.i.i70 = phi i8 [ %i.gg, %bb.bh ], [ %i.fy, %bb.bf ], [ 0, %bb.bg ]
  store i8 %.0.i.i70, ptr %i.fx, align 1, !tbaa !29
  %.pre78.a = load i8, ptr %i.j, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %mask_mix.exit.i69, %.thread248.i
  %i.gh = phi i8 [ %.pre78.a, %mask_mix.exit.i69 ], [ %i.k, %.thread248.i ]
  %i.gi = and i8 %i.gh, 2
  %.not200.i = icmp eq i8 %i.gi, 0
  br i1 %.not200.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gj = sub nsw i32 %.0162230.i, %i.f           ; 3 uses
  %.not202.i = icmp slt i32 %i.gj, %3
  br i1 %.not202.i, label %bb.bk, label %line_mask_flat.exit

bb.bk:                                            ; preds = %bb.bj
  %i.gk = icmp sgt i32 %i.gj, -1
  br i1 %i.gk, label %bb.bl, label %line_mask_flat.exit

bb.bl:                                            ; preds = %bb.bk
  %i.gl = zext nneg i32 %i.gj to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.gl) #9
  br label %line_mask_flat.exit

bb.bm:                                            ; preds = %bb.bi
  %i.gm = add nsw i32 %.0167229.i, 1
  %spec.select207.i = select i1 %i.fr, i32 %i.gm, i32 %3 ; 4 uses
  %i.gn = icmp eq i32 %spec.select207.i, 0
  br i1 %i.gn, label %line_mask_flat.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.go = icmp sgt i32 %spec.select207.i, 0
  br i1 %i.go, label %bb.bo, label %line_mask_flat.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gp = zext nneg i32 %spec.select207.i to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %i.gp
  %i.gr = sub nsw i32 %3, %spec.select207.i
  %i.gs = sext i32 %i.gr to i64
  tail call void @lv_memset(ptr noundef nonnull %i.gq, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.gs) #9
  br label %line_mask_flat.exit

bb.bp:                                            ; preds = %bb.be
  %i.gt = icmp sgt i32 %i.fm, -1                  ; 2 uses
  %i.gu = icmp slt i32 %i.fm, %3                  ; 2 uses
  %or.cond208.i = and i1 %i.gt, %i.gu             ; 2 uses
  br i1 %i.fn, label %bb.bq, label %bb.ce

bb.bq:                                            ; preds = %bb.bp
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !25
  %i.gx = mul i32 %i.fg, %i.gw
  %i.gy = sub i32 0, %i.gx
  %i.gz = ashr i32 %i.gy, 10                      ; 3 uses
  br i1 %or.cond208.i, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.ha = mul nsw i32 %i.gz, %i.fg
  %i.hb = lshr i32 %i.ha, 9
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = shl i8 %i.k, 6
  %sext235.i = ashr exact i8 %i.hd, 7
  %.1.i68 = xor i8 %sext235.i, %i.hc              ; 3 uses
  %i.he = zext nneg i32 %i.fm to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %i.he ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !29  ; 2 uses
  %i.hh = zext i8 %.1.i68 to i32
  %i.hi = icmp ugt i8 %.1.i68, -4
  br i1 %i.hi, label %mask_mix.exit219.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hj = icmp ult i8 %.1.i68, 3
  br i1 %i.hj, label %mask_mix.exit219.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hk = zext i8 %i.hg to i32
  %i.hl = mul nuw nsw i32 %i.hh, 32897
  %i.hm = mul nuw nsw i32 %i.hl, %i.hk
  %i.hn = lshr i32 %i.hm, 23
  %i.ho = trunc nuw i32 %i.hn to i8
  br label %mask_mix.exit219.i

mask_mix.exit219.i:                               ; preds = %bb.bt, %bb.bs, %bb.br
  %.0.i218.i = phi i8 [ %i.ho, %bb.bt ], [ %i.hg, %bb.br ], [ 0, %bb.bs ]
  store i8 %.0.i218.i, ptr %i.hf, align 1, !tbaa !29
  %.pre77.pre.a = load i8, ptr %i.j, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %mask_mix.exit219.i, %bb.bq
  %.pre77.a = phi i8 [ %.pre77.pre.a, %mask_mix.exit219.i ], [ %i.k, %bb.bq ] ; 2 uses
  %i.hp = icmp slt i32 %i.fm, 1
  %.not195.i = icmp sgt i32 %i.fm, %3
  %or.cond209.i = or i1 %i.hp, %.not195.i
  br i1 %or.cond209.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
end_hunk_0
