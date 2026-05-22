inline.NumInlined: 100
inline.NumDeleted: 51
begin_hunk_0_@psh_hint_align:bb.a
  %i.c = getelementptr inbounds nuw [408 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.f = and i32 %i.e, 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.h = load i64, ptr %i.g, align 8, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72
  %i.k = load i32, ptr %0, align 8, !tbaa !118    ; 4 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %sext = shl i64 %i.j, 32
  %i.m = ashr exact i64 %sext, 32                 ; 3 uses
  %i.n = mul nsw i64 %i.m, %i.l                   ; 2 uses
  %i.o = ashr i64 %i.n, 63
  %i.p = add nsw i64 %i.n, 32768
  %i.q = add nsw i64 %i.p, %i.o
  %i.r = shl i64 %i.q, 16
  %i.s = ashr i64 %i.r, 32
  %i.t = add nsw i64 %i.s, %i.h                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !162  ; 3 uses
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.m, %i.w                   ; 2 uses
  %i.y = ashr i64 %i.x, 63
  %i.z = add nsw i64 %i.x, 32768
  %i.aa = add nsw i64 %i.z, %i.y
  %i.ab = lshr i64 %i.aa, 16                      ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %sext167 = shl i64 %i.ab, 32                    ; 2 uses
  %i.ad = ashr exact i64 %sext167, 32             ; 15 uses
  %i.ae = icmp eq i32 %2, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !78
  %.not125 = icmp eq i8 %i.ag, 0
  br i1 %.not125, label %.critedge, label %psh_blues_snap_stem.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 193
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !79
  %.not127 = icmp eq i8 %i.ai, 0
  br i1 %.not127, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.aj, align 8, !tbaa !160
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %i.ak, align 8, !tbaa !161
  br label %.sink.split

psh_blues_snap_stem.exit.thread:                  ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 194
  %i.am = load i8, ptr %i.al, align 2, !tbaa !80
  %.not128 = icmp ne i8 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.ad, ptr %i.an, align 8, !tbaa !161
  br label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 195
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = icmp ne i8 %i.ap, 0                     ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 %i.ad, ptr %i.ar, align 8, !tbaa !161
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 2 uses
  %i.at = add i32 %i.v, %i.k                      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 3948
  %i.av = load i8, ptr %i.au, align 4, !tbaa !130 ; 2 uses
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !126 ; 2 uses
  %.not54.i = icmp eq i32 %i.aw, 0
  br i1 %.not54.i, label %.loopexit50.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.ay = sext i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !127 ; 2 uses
  %i.bb = sub nsw i32 0, %i.ba
  %i.bc = sext i32 %i.bb to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %.056.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.br, %bb.k ] ; 4 uses
  %.04055.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.bq, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.056.i, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !128
  %i.bf = sext i32 %i.be to i64
  %i.bg = sub nsw i64 %i.ay, %i.bf                ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.bc
  br i1 %i.bh, label %.loopexit50.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !129
  %i.bk = add nsw i32 %i.bj, %i.ba
  %.not44.i = icmp sgt i32 %i.at, %i.bk
  br i1 %.not44.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not45.i = icmp eq i8 %i.av, 0
  br i1 %.not45.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 3940
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !131
  %i.bn = sext i32 %i.bm to i64
  %.not46.i = icmp sgt i64 %i.bg, %i.bn
  br i1 %.not46.i, label %.loopexit50.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.056.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !156
  br label %.loopexit50.i

bb.k:                                             ; preds = %bb.g
  %i.bq = add i32 %.04055.i, -1                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.056.i, i64 48
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %.loopexit50.i, label %bb.f, !llvm.loop !221

.loopexit50.i:                                    ; preds = %bb.k, %bb.f, %bb.j, %bb.i, %bb.e
  %.sroa.9136.1 = phi i64 [ 0, %bb.e ], [ 0, %bb.i ], [ %i.bp, %bb.j ], [ 0, %bb.f ], [ 0, %bb.k ] ; 3 uses
  %.sroa.0.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.i ], [ 1, %bb.j ], [ 0, %bb.f ], [ 0, %bb.k ] ; 4 uses
  %i.bs = phi i32 [ 2, %bb.e ], [ 2, %bb.i ], [ 3, %bb.j ], [ 2, %bb.f ], [ 2, %bb.k ]
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !126 ; 3 uses
  %.not4758.i = icmp eq i32 %i.bu, 0
  br i1 %.not4758.i, label %psh_blues_snap_stem.exit, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.loopexit50.i
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 736
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !127 ; 2 uses
  %i.ca = sub nsw i32 0, %i.bz
  %i.cb = sext i32 %i.ca to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.lr.ph61.i
  %.160.i = phi ptr [ %i.bx, %.lr.ph61.i ], [ %i.cr, %bb.q ] ; 4 uses
  %.14159.i = phi i32 [ %i.bu, %.lr.ph61.i ], [ %i.cq, %bb.q ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.160.i, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !129
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sub nsw i64 %i.ce, %i.l                 ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.cb
  br i1 %i.cg, label %psh_blues_snap_stem.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.160.i, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !128
  %i.cj = sub nsw i32 %i.ci, %i.bz
  %.not48.i = icmp slt i32 %i.k, %i.cj
  br i1 %.not48.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not49.i = icmp eq i8 %i.av, 0
  br i1 %.not49.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 3940
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !131
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %i.cf, %i.cm
  br i1 %i.cn, label %bb.p, label %psh_blues_snap_stem.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.160.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !156
  br label %psh_blues_snap_stem.exit

bb.q:                                             ; preds = %bb.m
  %i.cq = add i32 %.14159.i, -1                   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.160.i, i64 -48
  %.not47.i = icmp eq i32 %i.cq, 0
  br i1 %.not47.i, label %psh_blues_snap_stem.exit, label %bb.l, !llvm.loop !222

psh_blues_snap_stem.exit:                         ; preds = %bb.q, %bb.l, %bb.p, %bb.o, %.loopexit50.i
  %.sroa.14.0 = phi i64 [ 0, %bb.o ], [ 0, %.loopexit50.i ], [ %i.cp, %bb.p ], [ 0, %bb.l ], [ 0, %bb.q ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.o ], [ %.sroa.0.1, %.loopexit50.i ], [ %i.bs, %bb.p ], [ %.sroa.0.1, %bb.l ], [ %.sroa.0.1, %bb.q ]
  switch i32 %.sroa.0.0, label %bb.t [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.aj
  ]

bb.r:                                             ; preds = %psh_blues_snap_stem.exit
  %i.cs = sub nsw i64 %.sroa.9136.1, %i.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !160
  br i1 %i.aq, label %.thread151, label %.thread162

.thread151:                                       ; preds = %bb.r
  %i.cu = add nsw i64 %i.ad, 32
  %i.cv = and i64 %i.cu, 9223372036854775744
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow168 = icmp slt i64 %i.ad, 32
  %.1116154 = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow168, i64 64, i64 %i.cv ; 2 uses
  %i.cw = sub nsw i64 %.sroa.9136.1, %.1116154
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !160
  store i64 %.1116154, ptr %i.ar, align 8, !tbaa !161
  br label %.thread162

bb.s:                                             ; preds = %psh_blues_snap_stem.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.14.0, ptr %i.cx, align 8, !tbaa !160
  br i1 %i.aq, label %.thread157, label %.thread162

.thread157:                                       ; preds = %bb.s
  %i.cy = add nsw i64 %i.ad, 32
  %i.cz = and i64 %i.cy, 9223372036854775744
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow = icmp slt i64 %i.ad, 32
  %.1116160 = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow, i64 64, i64 %i.cz
  store i64 %.1116160, ptr %i.ar, align 8, !tbaa !161
  br label %.thread162

bb.t:                                             ; preds = %psh_blues_snap_stem.exit.thread, %psh_blues_snap_stem.exit
  %i.da = phi i1 [ %.not128, %psh_blues_snap_stem.exit.thread ], [ %i.aq, %psh_blues_snap_stem.exit ]
  %i.db = phi ptr [ %i.an, %psh_blues_snap_stem.exit.thread ], [ %i.ar, %psh_blues_snap_stem.exit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !216 ; 7 uses
  %.not129 = icmp eq ptr %i.dd, null
  br i1 %.not129, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !109
  %i.dg = and i32 %i.df, 8
  %.not130 = icmp eq i32 %i.dg, 0
  br i1 %.not130, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @psh_hint_align(ptr noundef nonnull %i.dd, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %.pre = load i32, ptr %0, align 8, !tbaa !118
  %.pre180 = load i32, ptr %i.u, align 4, !tbaa !162
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dh = phi i32 [ %.pre180, %bb.v ], [ %i.v, %bb.u ]
  %i.di = phi i32 [ %.pre, %bb.v ], [ %i.k, %bb.u ]
  %i.dj = load i32, ptr %i.dd, align 8, !tbaa !118
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !162
  %i.dm = ashr i32 %i.dl, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !160
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !161
  %i.dr = ashr i64 %i.dq, 1
  %i.ds = ashr i32 %i.dh, 1
  %i.dt = add i32 %i.dm, %i.dj
  %i.du = sub i32 %i.di, %i.dt
  %i.dv = add i32 %i.du, %i.ds
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul nsw i64 %i.m, %i.dw                 ; 2 uses
  %i.dy = ashr i64 %i.dx, 63
  %i.dz = add nsw i64 %i.dx, 32768
  %i.ea = add nsw i64 %i.dz, %i.dy
  %i.eb = shl i64 %i.ea, 16
  %i.ec = ashr i64 %i.eb, 32
  %i.ed = ashr i64 %sext167, 33
  %i.ee = sub i64 %i.do, %i.ed
  %i.ef = add i64 %i.ee, %i.dr
  %i.eg = add i64 %i.ef, %i.ec
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.0114 = phi i64 [ %i.eg, %bb.w ], [ %i.t, %bb.t ] ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !82
  %.not131 = icmp eq i8 %i.ej, 0
  br i1 %.not131, label %psh_dimension_quantize_len.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = icmp slt i32 %i.ac, 65
  br i1 %i.ek, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.el = icmp sgt i32 %i.ac, 31
  br i1 %i.el, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.em = lshr i64 %i.ad, 1
  %i.en = add nsw i64 %.0114, %i.em
  %i.eo = and i64 %i.en, -64
  br label %psh_dimension_quantize_len.exit

bb.ab:                                            ; preds = %bb.z
  %i.ep = icmp sgt i32 %i.ac, 0
  %i.eq = add nsw i64 %.0114, 32
  %i.er = and i64 %i.eq, -64                      ; 3 uses
  br i1 %i.ep, label %bb.ac, label %psh_dimension_quantize_len.exit

bb.ac:                                            ; preds = %bb.ab
  %i.es = add nsw i64 %.0114, %i.ad               ; 2 uses
  %i.et = add nsw i64 %i.es, 32
  %i.eu = and i64 %i.et, -64                      ; 2 uses
  %i.ev = sub nsw i64 %i.er, %.0114
  %i.ew = sub nsw i64 %i.eu, %i.es
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.ev, i1 true)
  %.0 = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 true)
  %.not132 = icmp samesign ugt i64 %spec.select, %.0
  %.1 = select i1 %.not132, i64 %i.eu, i64 %i.er
  br label %psh_dimension_quantize_len.exit

bb.ad:                                            ; preds = %bb.y
  %i.ex = getelementptr i8, ptr %i.c, i64 16
  %.val = load i64, ptr %i.ex, align 8, !tbaa !145 ; 2 uses
  %reass.sub.i = add nuw nsw i64 %i.ad, 39
  %i.ey = sub i64 %reass.sub.i, %.val
  %i.ez = icmp ult i64 %i.ey, 79
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %.val, i64 48)
  %.023.i = select i1 %i.ez, i64 %spec.store.select.i, i64 %i.ad ; 6 uses
  %i.fa = icmp samesign ult i64 %.023.i, 192
  br i1 %i.fa, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.fb = and i64 %.023.i, 63                     ; 3 uses
  %i.fc = and i64 %.023.i, 192                    ; 2 uses
  %i.fd = icmp samesign ult i64 %i.fb, 10
  br i1 %i.fd, label %psh_dimension_quantize_len.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = icmp samesign ult i64 %i.fb, 32
  br i1 %i.fe, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ff = or disjoint i64 %i.fc, 10
  br label %psh_dimension_quantize_len.exit

bb.ah:                                            ; preds = %bb.af
  %i.fg = icmp samesign ult i64 %i.fb, 54
  %i.fh = or disjoint i64 %i.fc, 54
  %spec.select.i = select i1 %i.fg, i64 %i.fh, i64 %.023.i
  br label %psh_dimension_quantize_len.exit

bb.ai:                                            ; preds = %bb.ad
  %i.fi = add nuw nsw i64 %.023.i, 32
  %i.fj = and i64 %i.fi, 9223372036854775744
  br label %psh_dimension_quantize_len.exit

psh_dimension_quantize_len.exit:                  ; preds = %bb.ab, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.x
  %i.fk = phi i64 [ 64, %bb.aa ], [ %i.ad, %bb.ac ], [ %.023.i, %bb.ae ], [ %i.ad, %bb.x ], [ %i.fj, %bb.ai ], [ %i.ff, %bb.ag ], [ %spec.select.i, %bb.ah ], [ %i.ad, %bb.ab ] ; 4 uses
  %.2 = phi i64 [ %i.eo, %bb.aa ], [ %.1, %bb.ac ], [ %.0114, %bb.ae ], [ %.0114, %bb.x ], [ %.0114, %bb.ai ], [ %.0114, %bb.ag ], [ %.0114, %bb.ah ], [ %i.er, %bb.ab ] ; 4 uses
  %i.fl = add nsw i64 %.2, 32
  %i.fm = and i64 %i.fl, -64
  %i.fn = sub nsw i64 %i.fm, %.2                  ; 2 uses
  %i.fo = add i64 %.2, %i.fk                      ; 2 uses
  %i.fp = add nsw i64 %i.fo, 32
  %i.fq = and i64 %i.fp, -64
  %i.fr = sub i64 %i.fq, %i.fo                    ; 2 uses
  %i.fs = tail call i64 @llvm.abs.i64(i64 %i.fn, i1 true)
  %i.ft = tail call i64 @llvm.abs.i64(i64 %i.fr, i1 true)
  %.not.i134 = icmp samesign ugt i64 %i.fs, %i.ft
  %..i = select i1 %.not.i134, i64 %i.fr, i64 %i.fn
  %i.fu = add nsw i64 %..i, %.2                   ; 3 uses
  store i64 %i.fu, ptr %i.eh, align 8, !tbaa !160
  store i64 %i.fk, ptr %i.db, align 8, !tbaa !161
  br i1 %i.da, label %bb.ak, label %.thread162

bb.aj:                                            ; preds = %psh_blues_snap_stem.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.14.0, ptr %i.fv, align 8, !tbaa !160
  %i.fw = sub nsw i64 %.sroa.9136.1, %.sroa.14.0
  store i64 %i.fw, ptr %i.ar, align 8, !tbaa !161
  br label %.thread162

bb.ak:                                            ; preds = %psh_dimension_quantize_len.exit
  %i.fx = add nsw i64 %i.fk, 32
  %i.fy = and i64 %i.fx, 9223372036854775744
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow170 = icmp slt i64 %i.fk, 32
  %.1116 = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow170, i64 64, i64 %i.fy ; 3 uses
  %i.fz = and i64 %.1116, 64
  %.not133 = icmp eq i64 %i.fz, 0
  %i.ga = lshr exact i64 %.1116, 1                ; 3 uses
  br i1 %.not133, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = add nsw i64 %i.ga, %i.fu
  %i.gc = and i64 %i.gb, -64
  %i.gd = or disjoint i64 %i.gc, 32
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ge = add i64 %i.fu, 32
  %i.gf = add i64 %i.ge, %i.ga
  %i.gg = and i64 %i.gf, -64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.3 = phi i64 [ %i.gg, %bb.am ], [ %i.gd, %bb.al ]
  %i.gh = sub nsw i64 %.3, %i.ga
  store i64 %i.gh, ptr %i.eh, align 8, !tbaa !160
  store i64 %.1116, ptr %i.db, align 8, !tbaa !161
  br label %.thread162

.thread162:                                       ; preds = %bb.aj, %bb.s, %bb.r, %psh_dimension_quantize_len.exit, %bb.an, %.thread157, %.thread151
  %storemerge.in = load i32, ptr %i.d, align 8, !tbaa !109
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %.thread162
  %storemerge.in.sink = phi i32 [ %storemerge.in, %.thread162 ], [ %i.e, %.critedge ]
  %storemerge = or i32 %storemerge.in.sink, 8
  store i32 %storemerge, ptr %i.d, align 8, !tbaa !109
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.a
  ret void
}

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @psh_hint_table_find_strong_points(i32 %.4.val, ptr readonly captures(none) %.16.val, ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 3, 13) %3) unnamed_addr #7 {
bb.a:
  %.not39 = icmp eq i32 %1, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.a
  %.not46 = icmp eq i32 %.4.val, 0                ; 5 uses
  %i.a = sext i32 %2 to i64                       ; 5 uses
  %invariant.op = sub nsw i64 0, %i.a             ; 4 uses
  %i.b = icmp eq i32 %3, 12                       ; 2 uses
  %. = select i1 %i.b, i32 128, i32 256
  %.128 = select i1 %i.b, i32 256, i32 128
  %wide.trip.count = zext i32 %.4.val to i64
  %wide.trip.count67 = zext i32 %.4.val to i64
  %wide.trip.count72 = zext i32 %.4.val to i64
  %wide.trip.count77 = zext i32 %.4.val to i64
  %wide.trip.count82 = zext i32 %.4.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph42, %.loopexit
  %.041 = phi ptr [ %0, %.lr.ph42 ], [ %i.bs, %.loopexit ] ; 9 uses
  %.09740 = phi i32 [ %1, %.lr.ph42 ], [ %i.br, %.loopexit ]
  %i.c = getelementptr inbounds nuw i8, ptr %.041, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.041, i64 28 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !58   ; 7 uses
  %i.g = and i32 %i.f, 16
  %.not115 = icmp eq i32 %i.g, 0
  br i1 %.not115, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.041, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %.041, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56
  %i.l = or i32 %i.k, %i.i
  %i.m = and i32 %i.l, %3                         ; 2 uses
  %i.n = and i32 %i.m, 10
  %.not116 = icmp eq i32 %i.n, 0
  br i1 %.not116, label %bb.f, label %.preheader21

.preheader21:                                     ; preds = %bb.c
  br i1 %.not46, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !223

.lr.ph:                                           ; preds = %.preheader21, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader21 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116  ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !118
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.d, %i.r                   ; 2 uses
  %i.t = icmp slt i64 %i.s, %i.a
  %i.u = icmp sgt i64 %i.s, %invariant.op
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.v = or i32 %i.f, 528
  store i32 %i.v, ptr %i.e, align 4, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %.041, i64 40
  store ptr %i.p, ptr %i.w, align 8, !tbaa !59
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %.not117 = icmp eq i32 %i.m, 0
  br i1 %.not117, label %bb.i, label %.preheader19

.preheader19:                                     ; preds = %bb.f
  br i1 %.not46, label %.loopexit, label %.lr.ph29

bb.g:                                             ; preds = %.lr.ph29
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.loopexit, label %.lr.ph29, !llvm.loop !224

.lr.ph29:                                         ; preds = %.preheader19, %bb.g
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %bb.g ], [ 0, %.preheader19 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116  ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !118
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !162
  %i.ad = sext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.aa, %i.ad
  %i.af = sub i64 %i.d, %i.ae                     ; 2 uses
  %i.ag = icmp slt i64 %i.af, %i.a
  %i.ah = icmp sgt i64 %i.af, %invariant.op
  %or.cond126 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond126, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.lr.ph29
  %i.ai = or i32 %i.f, 1040
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %.041, i64 40
  store ptr %i.y, ptr %i.aj, align 8, !tbaa !59
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.ak = and i32 %i.f, 64
  %.not118 = icmp eq i32 %i.ak, 0
  br i1 %.not118, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = and i32 %i.f, %.
  %.not119 = icmp eq i32 %i.al, 0
  br i1 %.not119, label %bb.l, label %.preheader17

.preheader17:                                     ; preds = %bb.j
  br i1 %.not46, label %.loopexit, label %.lr.ph32

bb.k:                                             ; preds = %.lr.ph32
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %.loopexit16, label %.lr.ph32, !llvm.loop !225

.lr.ph32:                                         ; preds = %.preheader17, %bb.k
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.k ], [ 0, %.preheader17 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv69
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !118
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.d, %i.ap                 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %i.a
  %i.as = icmp sgt i64 %i.aq, %invariant.op
  %or.cond130 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond130, label %.loopexit16.sink.split, label %bb.k

bb.l:                                             ; preds = %bb.j
  %i.at = and i32 %i.f, %.128
  %.not120 = icmp eq i32 %i.at, 0
  %brmerge = select i1 %.not120, i1 true, i1 %.not46
  br i1 %brmerge, label %.loopexit16, label %.lr.ph35

bb.m:                                             ; preds = %.lr.ph35
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.loopexit16, label %.lr.ph35, !llvm.loop !226

.lr.ph35:                                         ; preds = %bb.l, %bb.m
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv74
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !116 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !118
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !162
  %i.ba = sext i32 %i.az to i64
  %i.bb = add nsw i64 %i.ax, %i.ba
  %i.bc = sub i64 %i.d, %i.bb                     ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %i.a
  %i.be = icmp sgt i64 %i.bc, %invariant.op
  %or.cond133 = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond133, label %.loopexit16.sink.split, label %bb.m
end_hunk_0
