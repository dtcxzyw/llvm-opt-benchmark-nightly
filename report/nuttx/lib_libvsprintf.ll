Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libvsprintf?download=true
inline.NumInlined: 1
begin_hunk_0_@vsprintf_internal:bb.a
  %i.ac = add nuw nsw i32 %i.ab, %i.y
  %i.ad = or i16 %.0468, 128
  br label %bb.ag

bb.n:                                             ; preds = %.thread
  switch i8 %.1488, label %bb.aa [
    i8 42, label %bb.o
    i8 46, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %.not539 = icmp samesign ult i16 %.0468, 256
  %i.ae = load i32, ptr %2, align 8               ; 5 uses
  %i.af = icmp ult i32 %i.ae, 41                  ; 2 uses
  br i1 %.not539, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = add nuw nsw i32 %i.ae, 8
  store i32 %i.aj, ptr %2, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.b, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.am = phi ptr [ %i.ai, %bb.q ], [ %i.ak, %bb.r ]
  %i.an = load i32, ptr %i.am, align 4
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  br label %bb.ag

bb.t:                                             ; preds = %bb.o
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = zext nneg i32 %i.ae to i64
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = add nuw nsw i32 %i.ae, 8
  store i32 %i.ar, ptr %2, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = phi ptr [ %i.aq, %bb.u ], [ %i.as, %bb.v ]
  %i.av = load i32, ptr %i.au, align 4            ; 3 uses
  %i.aw = or i16 %.0468, 128
  %i.ax = icmp slt i32 %i.av, 0
  br i1 %i.ax, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.ay = sub nsw i32 0, %i.av
  %i.az = or i16 %.0468, 136
  br label %bb.ag

bb.y:                                             ; preds = %bb.n
  %.not538 = icmp samesign ult i16 %.0468, 256
  br i1 %.not538, label %bb.z, label %.loopexit66

bb.z:                                             ; preds = %bb.y
  %i.ba = or disjoint i16 %.0468, 256
  br label %bb.ag

bb.aa:                                            ; preds = %bb.n, %bb.j
  %i.bb = icmp eq i8 %.1488, 122
  %i.bc = icmp eq i8 %.1488, 116
  %or.cond5 = or i1 %i.bb, %i.bc
  %spec.store.select34 = select i1 %or.cond5, i8 108, i8 %.1488 ; 10 uses
  %i.bd = icmp eq i8 %spec.store.select34, 106
  br i1 %i.bd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.be = and i16 %.0468, -3585
  %i.bf = or disjoint i16 %i.be, 2560
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.bg = and i8 %spec.store.select34, -33
  %or.cond8 = icmp eq i8 %i.bg, 76
  br i1 %or.cond8, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bh = and i32 %i.p, 512
  %.not537 = icmp eq i32 %i.bh, 0
  %.2470.v = select i1 %.not537, i16 512, i16 2048
  %.0468.masked49 = and i16 %.0468, -1025
  %i.bi = or i16 %.2470.v, %.0468.masked49
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bj = icmp eq i8 %spec.store.select34, 104
  br i1 %i.bj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bk = and i32 %i.p, 1024
  %.not536 = icmp eq i32 %i.bk, 0
  %.3471.v = select i1 %.not536, i16 1024, i16 2048
  %.0468.masked = and i16 %.0468, -513
  %i.bl = or i16 %.3471.v, %.0468.masked
  br label %bb.ag

bb.ag:                                            ; preds = %bb.s, %bb.x, %bb.w, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.e
  %.4472 = phi i16 [ %.0468, %bb.l ], [ %i.ad, %bb.m ], [ %.0468, %bb.s ], [ %i.az, %bb.x ], [ %i.aw, %bb.w ], [ %i.ba, %bb.z ], [ %i.bf, %bb.ab ], [ %i.bi, %bb.ad ], [ %i.bl, %bb.af ], [ %i.r, %bb.e ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.1456 = phi i32 [ %.0455, %bb.l ], [ %i.ac, %bb.m ], [ %.0455, %bb.s ], [ %i.ay, %bb.x ], [ %i.av, %bb.w ], [ %.0455, %bb.z ], [ %.0455, %bb.ab ], [ %.0455, %bb.ad ], [ %.0455, %bb.af ], [ %.0455, %bb.e ], [ %.0455, %bb.g ], [ %.0455, %bb.h ], [ %.0455, %bb.i ] ; 2 uses
  %.1448 = phi i32 [ %i.aa, %bb.l ], [ %.0447, %bb.m ], [ %spec.store.select, %bb.s ], [ %.0447, %bb.x ], [ %.0447, %bb.w ], [ %.0447, %bb.z ], [ %.0447, %bb.ab ], [ %.0447, %bb.ad ], [ %.0447, %bb.af ], [ %.0447, %bb.e ], [ %.0447, %bb.g ], [ %.0447, %bb.h ], [ %.0447, %bb.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.3433, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.3433, align 1            ; 2 uses
  %.not541 = icmp eq i8 %i.bn, 0
  br i1 %.not541, label %.thread30, label %.preheader65, !llvm.loop !7

bb.ah:                                            ; preds = %bb.ae
  %i.bo = zext i8 %spec.store.select34 to i32
  %i.bp = icmp eq i8 %spec.store.select34, 112
  %i.bq = or i16 %.0468, 2560
  %spec.select = select i1 %i.bp, i16 %i.bq, i16 %.0468 ; 3 uses
  %i.br = add i8 %spec.store.select34, -69
  %or.cond11 = icmp ult i8 %i.br, 3
  br i1 %or.cond11, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bs = or i16 %.0468, 8192
  %i.bt = or disjoint i8 %spec.store.select34, 32
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.bu = add i8 %spec.store.select34, -101
  %or.cond14 = icmp ult i8 %i.bu, 3
  br i1 %or.cond14, label %bb.ak, label %bb.cl

bb.ak:                                            ; preds = %bb.aj
  %i.bv = and i16 %.0468, -8193
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.3490 = phi i8 [ %i.bt, %bb.ai ], [ %.1488, %bb.ak ]
  %.7475 = phi i16 [ %i.bs, %bb.ai ], [ %i.bv, %bb.ak ] ; 2 uses
  %i.bw = and i16 %.7475, 256
  %i.bx = icmp eq i16 %i.bw, 0
  %spec.select590 = select i1 %i.bx, i32 6, i32 %.0447 ; 4 uses
  %i.by = and i16 %.7475, 16383                   ; 3 uses
  switch i8 %.3490, label %bb.ao [
    i8 101, label %bb.am
    i8 102, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.bz = trunc i32 %spec.select590 to i8
  %i.ca = add i8 %i.bz, 1
  %i.cb = or disjoint i16 %i.by, 16384
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cc = or disjoint i16 %i.by, -32768
  %i.cd = and i32 %spec.select590, 255
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.ce = trunc i32 %spec.select590 to i8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %.8476 = phi i16 [ %i.cb, %bb.am ], [ %i.cc, %bb.an ], [ %i.by, %bb.ao ] ; 7 uses
  %.0422 = phi i8 [ %i.ca, %bb.am ], [ 15, %bb.an ], [ %i.ce, %bb.ao ]
  %.0421 = phi i32 [ 0, %bb.am ], [ %i.cd, %bb.an ], [ 0, %bb.ao ]
  %spec.store.select15 = call i8 @llvm.umin.i8(i8 %.0422, i8 15)
  %i.cf = load i32, ptr %i.f, align 4             ; 3 uses
  %i.cg = icmp ult i32 %i.cf, 161
  br i1 %i.cg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.ck = add nuw nsw i32 %i.cf, 16
  store i32 %i.ck, ptr %i.f, align 4
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.b, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cn = phi ptr [ %i.cj, %bb.aq ], [ %i.cl, %bb.ar ]
  %i.co = load double, ptr %i.cn, align 8
  %i.cp = zext nneg i8 %spec.store.select15 to i32
  %i.cq = call i32 @__dtoa_engine(double noundef %i.co, ptr noundef nonnull %3, i32 noundef %i.cp, i32 noundef %.0421) #11 ; 3 uses
  %i.cr = trunc i32 %i.cq to i8                   ; 2 uses
  %i.cs = load i32, ptr %3, align 4               ; 11 uses
  %i.ct = load i8, ptr %i.g, align 4              ; 2 uses
  %i.cu = and i8 %i.ct, 1
  %.not566 = icmp eq i8 %i.cu, 0
  br i1 %.not566, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cv = zext i16 %.8476 to i32                  ; 2 uses
  %i.cw = and i32 %i.cv, 2
  %.not567 = icmp eq i32 %i.cw, 0
  br i1 %.not567, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cx = and i32 %i.cv, 4                        ; 2 uses
  %.not568 = icmp eq i32 %i.cx, 0
  %i.cy = shl nuw nsw i32 %i.cx, 3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.not572 = phi i1 [ %.not568, %bb.au ], [ false, %bb.as ], [ false, %bb.at ] ; 5 uses
  %.0424 = phi i32 [ %i.cy, %bb.au ], [ 45, %bb.as ], [ 43, %bb.at ] ; 2 uses
  %i.cz = and i8 %i.ct, 12
  %.not569 = icmp eq i8 %i.cz, 0
  br i1 %.not569, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.neg213 = select i1 %.not572, i32 -3, i32 -4
  %i.da = select i1 %.not572, i32 3, i32 4        ; 2 uses
  %i.db = icmp sgt i32 %.0455, %i.da
  br i1 %i.db, label %bb.ax, label %.loopexit62

bb.ax:                                            ; preds = %bb.aw
  %i.dc = sub nuw nsw i32 %.0455, %i.da           ; 2 uses
  %i.dd = and i16 %.8476, 8
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %.preheader61, label %.loopexit62

.preheader61:                                     ; preds = %bb.ax, %.preheader61
  %.3458 = phi i32 [ %i.dg, %.preheader61 ], [ %i.dc, %bb.ax ]
  %i.df = load ptr, ptr %i.a, align 8
  call void %i.df(ptr noundef %0, i32 noundef 32) #11
  %i.dg = add nsw i32 %.3458, -1                  ; 2 uses
  %.not584 = icmp eq i32 %i.dg, 0
  br i1 %.not584, label %.loopexit62.loopexit, label %.preheader61, !llvm.loop !8

.loopexit62.loopexit:                             ; preds = %.preheader61
  %i.dh = add i32 %.neg213, %.1436
  %i.di = add i32 %i.dh, %.0455
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %bb.aw, %bb.ax
  %.4459 = phi i32 [ 0, %bb.aw ], [ %i.dc, %bb.ax ], [ 0, %.loopexit62.loopexit ]
  %.3438 = phi i32 [ %.1436, %bb.aw ], [ %.1436, %bb.ax ], [ %i.di, %.loopexit62.loopexit ] ; 2 uses
  br i1 %.not572, label %.lr.ph92, label %bb.ay

bb.ay:                                            ; preds = %.loopexit62
  %i.dj = add nsw i32 %.3438, 1
  %i.dk = load ptr, ptr %i.a, align 8
  call void %i.dk(ptr noundef %0, i32 noundef %.0424) #11
  br label %.lr.ph92

.lr.ph92:                                         ; preds = %.loopexit62, %bb.ay
  %.4439 = phi i32 [ %i.dj, %bb.ay ], [ %.3438, %.loopexit62 ]
  %i.dl = load i8, ptr %i.g, align 4
  %i.dm = and i8 %i.dl, 8
  %.not586 = icmp eq i8 %i.dm, 0                  ; 2 uses
  %i.dn = select i1 %.not586, i8 105, i8 110
  %spec.store.select16 = select i1 %.not586, ptr @.str, ptr @.str.1
  %i.do = and i16 %.8476, 8192
  %.not589 = icmp eq i16 %i.do, 0
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph92, %bb.az
  %i.dp = phi i8 [ %i.dn, %.lr.ph92 ], [ %i.dv, %bb.az ] ; 2 uses
  %.042091 = phi ptr [ %spec.store.select16, %.lr.ph92 ], [ %i.du, %bb.az ]
  %.590 = phi i32 [ %.4439, %.lr.ph92 ], [ %i.dr, %bb.az ]
  %i.dq = add i8 %i.dp, -32
  %spec.select593 = select i1 %.not589, i8 %i.dp, i8 %i.dq
  %i.dr = add nsw i32 %.590, 1                    ; 2 uses
  %i.ds = load ptr, ptr %i.a, align 8
  %i.dt = zext i8 %spec.select593 to i32
  call void %i.ds(ptr noundef %0, i32 noundef %i.dt) #11
  %i.du = getelementptr inbounds nuw i8, ptr %.042091, i64 1 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1             ; 2 uses
  %.not587 = icmp eq i8 %i.dv, 0
  br i1 %.not587, label %.loopexit51, label %bb.az, !llvm.loop !9

bb.ba:                                            ; preds = %bb.av
  %i.dw = icmp ult i16 %.8476, 16384
  br i1 %i.dw, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.dx = and i32 %i.cq, 255
  %.not57095 = icmp eq i8 %i.cr, 0
  br i1 %.not57095, label %.critedge, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %bb.bb
  %.mask = and i32 %i.cq, 255
  %4 = zext nneg i32 %.mask to i64
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %bb.bc
  %indvars.iv166 = phi i64 [ %4, %.lr.ph97.preheader ], [ %indvars.iv.next167, %bb.bc ] ; 3 uses
  %i.dy = getelementptr i8, ptr %3, i64 %indvars.iv166
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = icmp eq i8 %i.ea, 48
  br i1 %i.eb, label %bb.bc, label %.critedge.loopexit.split.loop.exit267

bb.bc:                                            ; preds = %.lr.ph97
  %indvars.iv.next167 = add nsw i64 %indvars.iv166, -1 ; 2 uses
  %5 = and i64 %indvars.iv.next167, 255
  %.not570 = icmp eq i64 %5, 0
  br i1 %.not570, label %.critedge, label %.lr.ph97, !llvm.loop !10

.critedge.loopexit.split.loop.exit267:            ; preds = %.lr.ph97
  %6 = trunc nuw i64 %indvars.iv166 to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.bc, %.critedge.loopexit.split.loop.exit267, %bb.bb
  %.2.lcssa94 = phi i8 [ 0, %bb.bb ], [ %6, %.critedge.loopexit.split.loop.exit267 ], [ 0, %bb.bc ] ; 4 uses
  %i.ec = zext i8 %.2.lcssa94 to i32              ; 3 uses
  %i.ed = icmp sgt i32 %i.cs, -5
  %i.ee = icmp slt i32 %i.cs, %i.dx
  %or.cond594 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond594, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.critedge
  %i.ef = or disjoint i16 %.8476, -32768          ; 2 uses
  %i.eg = icmp slt i32 %i.cs, %i.ec
  br i1 %i.eg, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.neg = xor i32 %i.cs, -1
  %i.eh = add nsw i32 %i.ec, %.neg
  br label %bb.bg

bb.bf:                                            ; preds = %.critedge
  %i.ei = add nsw i32 %i.ec, -1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.bf, %bb.be, %bb.ba
  %.9477 = phi i16 [ %i.ef, %bb.be ], [ %.8476, %bb.ba ], [ %.8476, %bb.bf ], [ %i.ef, %bb.bd ] ; 2 uses
  %.4451 = phi i32 [ %i.eh, %bb.be ], [ %spec.select590, %bb.ba ], [ %i.ei, %bb.bf ], [ 0, %bb.bd ]
  %.3 = phi i8 [ %.2.lcssa94, %bb.be ], [ %i.cr, %bb.ba ], [ %.2.lcssa94, %bb.bf ], [ %.2.lcssa94, %bb.bd ] ; 2 uses
  %.4451.fr = freeze i32 %.4451                   ; 5 uses
  %i.ej = zext i16 %.9477 to i32                  ; 6 uses
  %.not571 = icmp sgt i16 %.9477, -1              ; 2 uses
  %i.ek = call i32 @llvm.smax.i32(i32 %i.cs, i32 0) ; 2 uses
  %i.el = add nuw nsw i32 %i.ek, 1
  %.0425 = select i1 %.not571, i32 5, i32 %i.el
  %not..not572 = xor i1 %.not572, true
  %i.em = zext i1 %not..not572 to i32
  %.1426 = add nuw i32 %.0425, %i.em
  %.not573 = icmp eq i32 %.4451.fr, 0
  %i.en = add nsw i32 %.4451.fr, 1
  %i.eo = lshr i32 %i.ej, 4
  %i.ep = and i32 %i.eo, 1
  %spec.select264 = select i1 %.not573, i32 %i.ep, i32 %i.en
  %.2427 = add i32 %.1426, %spec.select264        ; 3 uses
  %i.eq = icmp sgt i32 %.0455, %.2427
  %i.er = sub nsw i32 %.0455, %.2427              ; 2 uses
  %i.es = select i1 %i.eq, i32 %i.er, i32 0       ; 2 uses
  %i.et = and i32 %i.ej, 9
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = icmp ne i32 %i.es, 0
  %or.cond36 = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond36, label %.preheader58, label %.loopexit59

.preheader58:                                     ; preds = %bb.bg, %.preheader58
  %.5460 = phi i32 [ %i.ex, %.preheader58 ], [ %i.er, %bb.bg ]
  %i.ew = load ptr, ptr %i.a, align 8
  call void %i.ew(ptr noundef %0, i32 noundef 32) #11
  %i.ex = add nsw i32 %.5460, -1                  ; 2 uses
  %.old35.not = icmp eq i32 %i.ex, 0
  br i1 %.old35.not, label %.loopexit59.loopexit, label %.preheader58

.loopexit59.loopexit:                             ; preds = %.preheader58
  %i.ey = sub i32 %.1436, %.2427
  %i.ez = add i32 %i.ey, %.0455
  br label %.loopexit59

.loopexit59:                                      ; preds = %.loopexit59.loopexit, %bb.bg
  %.6461 = phi i32 [ %i.es, %bb.bg ], [ 0, %.loopexit59.loopexit ] ; 4 uses
  %.7 = phi i32 [ %.1436, %bb.bg ], [ %i.ez, %.loopexit59.loopexit ] ; 2 uses
  br i1 %.not572, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.loopexit59
  %i.fa = add nsw i32 %.7, 1
  %i.fb = load ptr, ptr %i.a, align 8
  call void %i.fb(ptr noundef %0, i32 noundef %.0424) #11
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit59
  %.8 = phi i32 [ %i.fa, %bb.bh ], [ %.7, %.loopexit59 ] ; 2 uses
  %i.fc = and i32 %i.ej, 8
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = icmp ne i32 %.6461, 0
  %or.cond39 = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond39, label %.preheader56, label %.loopexit57

.preheader56:                                     ; preds = %bb.bi, %.preheader56
  %.7462 = phi i32 [ %i.fg, %.preheader56 ], [ %.6461, %bb.bi ]
  %i.ff = load ptr, ptr %i.a, align 8
  call void %i.ff(ptr noundef %0, i32 noundef 48) #11
  %i.fg = add nsw i32 %.7462, -1                  ; 2 uses
  %.old38.not = icmp eq i32 %i.fg, 0
  br i1 %.old38.not, label %.loopexit57.loopexit, label %.preheader56

.loopexit57.loopexit:                             ; preds = %.preheader56
  %i.fh = add i32 %.6461, %.8
  br label %.loopexit57

.loopexit57:                                      ; preds = %.loopexit57.loopexit, %bb.bi
  %.8463 = phi i32 [ %.6461, %bb.bi ], [ 0, %.loopexit57.loopexit ] ; 4 uses
  %.10 = phi i32 [ %.8, %bb.bi ], [ %i.fh, %.loopexit57.loopexit ] ; 4 uses
  br i1 %.not571, label %bb.bw, label %.preheader55

.preheader55:                                     ; preds = %.loopexit57
  %i.fi = zext i8 %.3 to i32
  %i.fj = sub nsw i32 0, %.4451.fr
  br label %bb.bj

bb.bj:                                            ; preds = %.preheader55, %bb.bo
  %.11 = phi i32 [ %i.fu, %bb.bo ], [ %.10, %.preheader55 ] ; 2 uses
  %.3428 = phi i32 [ %i.ft, %bb.bo ], [ %i.ek, %.preheader55 ] ; 5 uses
  %i.fk = icmp eq i32 %.3428, -1
  br i1 %i.fk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fl = add nsw i32 %.11, 1
  %i.fm = load ptr, ptr %i.a, align 8
  call void %i.fm(ptr noundef %0, i32 noundef 46) #11
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.12 = phi i32 [ %i.fl, %bb.bk ], [ %.11, %bb.bj ] ; 3 uses
  %i.fn = sub nsw i32 %i.cs, %.3428               ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, -1
  %i.fp = icmp slt i32 %i.fn, %i.fi
  %or.cond598 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond598, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fq = zext nneg i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %.0417 = phi i8 [ %i.fs, %bb.bm ], [ 48, %bb.bl ] ; 4 uses
  %i.ft = add nsw i32 %.3428, -1                  ; 2 uses
  %.not581 = icmp sgt i32 %.3428, %i.fj
  br i1 %.not581, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fu = add nsw i32 %.12, 1
  %i.fv = load ptr, ptr %i.a, align 8
  %i.fw = sext i8 %.0417 to i32
  call void %i.fv(ptr noundef %0, i32 noundef %i.fw) #11
  br label %bb.bj

bb.bp:                                            ; preds = %bb.bn
  %i.fx = icmp eq i32 %i.ft, %i.cs
  br i1 %i.fx, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.fy = load i8, ptr %i.h, align 1              ; 2 uses
  %i.fz = icmp sgt i8 %i.fy, 53
  br i1 %i.fz, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ga = icmp eq i8 %i.fy, 53
  br i1 %i.ga, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.gb = load i8, ptr %i.g, align 4
  %i.gc = and i8 %i.gb, 16
  %.not582 = icmp eq i8 %i.gc, 0
  br i1 %.not582, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  %.1418 = phi i8 [ 49, %bb.bt ], [ %.0417, %bb.bs ], [ %.0417, %bb.br ], [ %.0417, %bb.bp ]
  %i.gd = add nsw i32 %.12, 1
  %i.ge = load ptr, ptr %i.a, align 8
  %i.gf = sext i8 %.1418 to i32
  call void %i.ge(ptr noundef %0, i32 noundef %i.gf) #11
  %i.gg = and i32 %i.ej, 16
  %i.gh = icmp ne i32 %i.gg, 0
  %i.gi = icmp eq i32 %.3428, 0
  %or.cond18 = and i1 %i.gh, %i.gi
  br i1 %or.cond18, label %bb.bv, label %.loopexit51

bb.bv:                                            ; preds = %bb.bu
  %i.gj = add nsw i32 %.12, 2
  %i.gk = load ptr, ptr %i.a, align 8
  call void %i.gk(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit51

bb.bw:                                            ; preds = %.loopexit57
  %i.gl = load i8, ptr %i.h, align 1              ; 2 uses
  %.not575 = icmp eq i8 %i.gl, 49
  br i1 %.not575, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gm = load i8, ptr %i.g, align 4
  %i.gn = and i8 %i.gm, -17
  store i8 %i.gn, ptr %i.g, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.go = load ptr, ptr %i.a, align 8
  %i.gp = sext i8 %i.gl to i32
  call void %i.go(ptr noundef %0, i32 noundef %i.gp) #11
  %i.gq = icmp sgt i32 %.4451.fr, 0
  br i1 %i.gq, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
end_hunk_0
