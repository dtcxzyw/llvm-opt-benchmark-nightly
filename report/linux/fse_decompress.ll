Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fse_decompress?download=true
inline.NumInlined: 90
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FSE_decompress_wksp_bmi2:bb.a
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) #10, !srcloc !20
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4
  %i.d = getelementptr i8, ptr %5, i64 512        ; 6 uses
  %i.e = icmp ult i64 %6, 512
  br i1 %i.e, label %FSE_decompress_wksp_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !annotation !21
  %i.f = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 0) #12 ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.e, label %FSE_decompress_wksp_body_default.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4              ; 4 uses
  %i.i = icmp ugt i32 %i.h, %4
  br i1 %i.i, label %FSE_decompress_wksp_body_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %2, i64 %i.f       ; 11 uses
  %i.k = sub i64 %3, %i.f                         ; 7 uses
  %i.l = shl nuw i32 1, %i.h                      ; 2 uses
  %i.m = add nuw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = add i32 %i.o, 1
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = zext nneg i32 %i.h to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = shl nsw i64 %i.n, 2
  %i.v = add nuw i64 %i.t, 11
  %i.w = add i64 %i.v, %i.u
  %i.x = add i64 %i.w, %i.r
  %i.y = and i64 %i.x, -4
  %i.z = add i64 %i.y, 516
  %i.aa = icmp ugt i64 %i.z, %6
  br i1 %i.aa, label %FSE_decompress_wksp_body_default.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw i32 %i.l, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ae = getelementptr i8, ptr %i.d, i64 %i.ad
  %.neg191.i = add i64 %6, -512
  %i.af = sub i64 %.neg191.i, %i.ad
  %i.ag = call fastcc i64 @FSE_buildDTable_internal(ptr noundef %i.d, ptr noundef %5, i32 noundef %i.o, i32 noundef %i.h, ptr noundef %i.ae, i64 noundef %i.af) #10, !srcloc !22 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, -119
  br i1 %i.ah, label %bb.h, label %FSE_decompress_wksp_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %5, i64 514
  %i.aj = load i16, ptr %i.ai, align 2
  %.not48.i.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr i8, ptr %0, i64 %1        ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -3     ; 2 uses
  br i1 %.not48.i.i, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 24, i1 false), !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.am = icmp eq i64 %i.k, 0
  br i1 %i.am, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.j, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = icmp ugt i64 %i.k, 7
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %2, i64 %3
  %i.as = getelementptr i8, ptr %i.ar, i64 -8     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.as, ptr %i.at, align 8
  %.val.i.i = load i64, ptr %i.as, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %8, align 8
  %i.au = lshr i64 %.val.i.i, 56                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.au, 0
  br i1 %.not51.i.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.j, ptr %i.av, align 8
  %i.aw = load i8, ptr %i.j, align 1
  %i.ax = zext i8 %i.aw to i64                    ; 7 uses
  store i64 %i.ax, ptr %8, align 8
  switch i64 %i.k, label %bb.s [
    i64 7, label %bb.m
    i64 6, label %bb.n
    i64 5, label %bb.o
    i64 4, label %bb.p
    i64 3, label %bb.q
    i64 2, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.j, i64 6
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 48
  %i.bc = or disjoint i64 %i.bb, %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi i64 [ %i.bc, %bb.m ], [ %i.ax, %bb.l ]
  %i.be = getelementptr i8, ptr %i.j, i64 5
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 40
  %i.bi = add nuw nsw i64 %i.bh, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bj = phi i64 [ %i.bi, %bb.n ], [ %i.ax, %bb.l ]
  %i.bk = getelementptr i8, ptr %i.j, i64 4
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bp = phi i64 [ %i.bo, %bb.o ], [ %i.ax, %bb.l ]
  %i.bq = getelementptr i8, ptr %i.j, i64 3
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bt, %i.bp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.bv = phi i64 [ %i.bu, %bb.p ], [ %i.ax, %bb.l ]
  %i.bw = getelementptr i8, ptr %i.j, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 16
  %i.ca = add nuw nsw i64 %i.bz, %i.bv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.cb = phi i64 [ %i.ca, %bb.q ], [ %i.ax, %bb.l ]
  %i.cc = getelementptr i8, ptr %i.j, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 8
  %i.cg = add nuw nsw i64 %i.cf, %i.cb
  store i64 %i.cg, ptr %8, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.ch = getelementptr i8, ptr %2, i64 %3
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  %.not.i70.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i70.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.thread182.i

BIT_initDStream.exit.thread182.i:                 ; preds = %bb.s
  %i.ck = zext i8 %i.cj to i32
  %i.cl = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ck, i1 true)
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = trunc nuw nsw i64 %i.k to i32
  %i.co = shl nuw nsw i32 %i.cn, 3
  %reass.sub = sub nsw i32 %i.cl, %i.co
  %i.cp = add nsw i32 %reass.sub, 41
  store i32 %i.cp, ptr %i.cm, align 8
  br label %bb.t

BIT_initDStream.exit.i:                           ; preds = %bb.k
  %i.cq = trunc nuw nsw i64 %i.au to i32
  %i.cr = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cq, i1 true)
  %i.cs = xor i32 %i.cr, 31
  %i.ct = sub nuw nsw i32 8, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = icmp ult i64 %i.k, -119
  br i1 %i.cv, label %bb.t, label %FSE_decompress_usingDTable_generic.exit12.i

bb.t:                                             ; preds = %BIT_initDStream.exit.i, %BIT_initDStream.exit.thread182.i
  call fastcc void @FSE_initDState(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %i.d) #10, !srcloc !23
  call fastcc void @FSE_initDState(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef %i.d) #10, !srcloc !24
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.cx = load i32, ptr %i.cw, align 8            ; 6 uses
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.u, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 8 uses
  %i.db = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.not.i28.i = icmp ult ptr %i.da, %i.db
  br i1 %.not.i28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = lshr i32 %i.cx, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr i8, ptr %i.da, i64 %i.de  ; 3 uses
  store ptr %i.df, ptr %i.cz, align 8
  %i.dg = and i32 %i.cx, 7
  %.val.i72.i = load i64, ptr %i.df, align 1      ; 2 uses
  store i64 %.val.i72.i, ptr %8, align 8
  %.pre.i = load ptr, ptr %i.an, align 8
  br label %BIT_reloadDStream.exit34.i.thread

bb.w:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.an, align 8            ; 6 uses
  %i.di = icmp eq ptr %i.da, %i.dh
  br i1 %i.di, label %.BIT_reloadDStream.exit34_crit_edge.i, label %BIT_reloadDStream.exit34.i

.BIT_reloadDStream.exit34_crit_edge.i:            ; preds = %bb.w
  %.promoted211.pre.i = load i64, ptr %8, align 8
  br label %BIT_reloadDStream.exit34.i.thread

BIT_reloadDStream.exit34.i.thread:                ; preds = %.BIT_reloadDStream.exit34_crit_edge.i, %bb.v
  %.promoted218.i.ph = phi ptr [ %i.df, %bb.v ], [ %i.da, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.ph153 = phi ptr [ %.pre.i, %bb.v ], [ %i.da, %.BIT_reloadDStream.exit34_crit_edge.i ] ; 2 uses
  %.promoted211.i.ph = phi i64 [ %.val.i72.i, %bb.v ], [ %.promoted211.pre.i, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted.i.ph = phi i32 [ %i.dg, %bb.v ], [ %i.cx, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted214.i157 = load i64, ptr %9, align 8
  %.promoted216.i158 = load i64, ptr %10, align 8
  %i.dj = ptrtoint ptr %.ph153 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  br label %.lr.ph.preheader

BIT_reloadDStream.exit34.i:                       ; preds = %bb.w
  %i.do = lshr i32 %i.cx, 3                       ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr i8, ptr %i.da, i64 %i.dq
  %i.ds = icmp ult ptr %i.dr, %i.dh
  %i.dt = ptrtoint ptr %i.da to i64
  %i.du = ptrtoint ptr %i.dh to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  %.021.i30.i = select i1 %i.ds, i32 %i.dw, i32 %i.do ; 2 uses
  %i.dx = zext i32 %.021.i30.i to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr i8, ptr %i.da, i64 %i.dy  ; 3 uses
  store ptr %i.dz, ptr %i.cz, align 8
  %i.ea = shl i32 %.021.i30.i, 3
  %i.eb = sub i32 %i.cx, %i.ea                    ; 3 uses
  %.val66.i = load i64, ptr %i.dz, align 1        ; 3 uses
  store i64 %.val66.i, ptr %8, align 8
  %.promoted214.i = load i64, ptr %9, align 8     ; 2 uses
  %.promoted216.i = load i64, ptr %10, align 8    ; 2 uses
  %i.ec = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = icmp ugt i32 %i.eb, 64
  br i1 %i.eh, label %.preheader193.i, label %.lr.ph.preheader, !prof !26

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit34.i.thread, %BIT_reloadDStream.exit34.i
  %i.ei = phi ptr [ %i.dn, %BIT_reloadDStream.exit34.i.thread ], [ %i.eg, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %i.ej = phi ptr [ %i.dl, %BIT_reloadDStream.exit34.i.thread ], [ %i.ee, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %i.ek = phi i64 [ %i.dj, %BIT_reloadDStream.exit34.i.thread ], [ %i.ec, %BIT_reloadDStream.exit34.i ] ; 4 uses
  %.promoted216.i163 = phi i64 [ %.promoted216.i158, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted216.i, %BIT_reloadDStream.exit34.i ]
  %.promoted214.i162 = phi i64 [ %.promoted214.i157, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted214.i, %BIT_reloadDStream.exit34.i ]
  %.promoted.i161 = phi i32 [ %.promoted.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.eb, %BIT_reloadDStream.exit34.i ]
  %.promoted211.i160 = phi i64 [ %.promoted211.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %.val66.i, %BIT_reloadDStream.exit34.i ]
  %i.el = phi ptr [ %.ph153, %BIT_reloadDStream.exit34.i.thread ], [ %i.dh, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %.promoted218.i159 = phi ptr [ %.promoted218.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.dz, %BIT_reloadDStream.exit34.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %.037.i9.i44 = phi ptr [ %i.hq, %bb.aa ], [ %0, %.lr.ph.preheader ] ; 8 uses
  %i.em = phi i32 [ %i.hm, %bb.aa ], [ %.promoted.i161, %.lr.ph.preheader ] ; 5 uses
  %.val.i.i212.i43 = phi i64 [ %.val.i73.sink.i, %bb.aa ], [ %.promoted211.i160, %.lr.ph.preheader ]
  %i.en = phi i64 [ %i.ha, %bb.aa ], [ %.promoted214.i162, %.lr.ph.preheader ] ; 3 uses
  %i.eo = phi i64 [ %i.ho, %bb.aa ], [ %.promoted216.i163, %.lr.ph.preheader ] ; 3 uses
  %i.ep = phi ptr [ %.promoted237.i, %bb.aa ], [ %.promoted218.i159, %.lr.ph.preheader ] ; 7 uses
  %.not.i21.i = icmp ult ptr %i.ep, %i.db
  br i1 %.not.i21.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.eq = lshr i32 %i.em, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr i8, ptr %i.ep, i64 %i.es  ; 2 uses
  store ptr %i.et, ptr %i.cz, align 8
  %i.eu = and i32 %i.em, 7
  br label %BIT_reloadDStream.exit27.i

bb.y:                                             ; preds = %.lr.ph
  %i.ev = icmp eq ptr %i.ep, %i.el
  br i1 %i.ev, label %.preheader193.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = lshr i32 %i.em, 3                       ; 2 uses
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr i8, ptr %i.ep, i64 %i.ey
  %i.fa = icmp uge ptr %i.ez, %i.el               ; 2 uses
  %i.fb = ptrtoint ptr %i.ep to i64
  %i.fc = sub i64 %i.fb, %i.ek
  %i.fd = trunc i64 %i.fc to i32
  %.021.i23.i = select i1 %i.fa, i32 %i.ew, i32 %i.fd ; 2 uses
  %i.fe = zext i32 %.021.i23.i to i64
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr i8, ptr %i.ep, i64 %i.ff  ; 2 uses
  store ptr %i.fg, ptr %i.cz, align 8
  %i.fh = shl i32 %.021.i23.i, 3
  %i.fi = sub i32 %i.em, %i.fh
  br label %BIT_reloadDStream.exit27.i

BIT_reloadDStream.exit27.i:                       ; preds = %bb.z, %bb.x
  %.promoted237.i = phi ptr [ %i.et, %bb.x ], [ %i.fg, %bb.z ] ; 3 uses
  %.promoted226.i = phi i32 [ %i.eu, %bb.x ], [ %i.fi, %bb.z ] ; 4 uses
  %.022.i22.i = phi i1 [ true, %bb.x ], [ %i.fa, %bb.z ]
  store i32 %.promoted226.i, ptr %i.cw, align 8
  %.val.i73.sink.i = load i64, ptr %.promoted237.i, align 1 ; 8 uses
  store i64 %.val.i73.sink.i, ptr %8, align 8
  %i.fj = icmp ult ptr %.037.i9.i44, %i.al
  %i.fk = and i1 %i.fj, %.022.i22.i
  br i1 %i.fk, label %bb.aa, label %.preheader193.i

.preheader193.i:                                  ; preds = %bb.aa, %bb.y, %BIT_reloadDStream.exit27.i, %BIT_reloadDStream.exit34.i
  %i.fl = phi ptr [ %i.eg, %BIT_reloadDStream.exit34.i ], [ %i.ei, %BIT_reloadDStream.exit27.i ], [ %i.ei, %bb.y ], [ %i.ei, %bb.aa ] ; 2 uses
  %i.fm = phi ptr [ %i.ee, %BIT_reloadDStream.exit34.i ], [ %i.ej, %BIT_reloadDStream.exit27.i ], [ %i.ej, %bb.y ], [ %i.ej, %bb.aa ] ; 2 uses
  %i.fn = phi i64 [ %i.ec, %BIT_reloadDStream.exit34.i ], [ %i.ek, %BIT_reloadDStream.exit27.i ], [ %i.ek, %bb.y ], [ %i.ek, %bb.aa ] ; 2 uses
  %i.fo = phi ptr [ %i.dh, %BIT_reloadDStream.exit34.i ], [ %i.el, %BIT_reloadDStream.exit27.i ], [ %i.el, %bb.y ], [ %i.el, %bb.aa ] ; 4 uses
  %.lcssa42 = phi i64 [ %.promoted216.i, %BIT_reloadDStream.exit34.i ], [ %i.ho, %bb.aa ], [ %i.eo, %bb.y ], [ %i.eo, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.lcssa41 = phi i64 [ %.promoted214.i, %BIT_reloadDStream.exit34.i ], [ %i.ha, %bb.aa ], [ %i.en, %bb.y ], [ %i.en, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.037.i9.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit34.i ], [ %i.hq, %bb.aa ], [ %.037.i9.i44, %bb.y ], [ %.037.i9.i44, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.promoted226403.i = phi i32 [ %i.eb, %BIT_reloadDStream.exit34.i ], [ %i.hm, %bb.aa ], [ %i.em, %bb.y ], [ %.promoted226.i, %BIT_reloadDStream.exit27.i ]
  %.promoted222402.i = phi i64 [ %.val66.i, %BIT_reloadDStream.exit34.i ], [ %.val.i73.sink.i, %bb.aa ], [ %.val.i.i212.i43, %bb.y ], [ %.val.i73.sink.i, %BIT_reloadDStream.exit27.i ]
  %.promoted237401.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit34.i ], [ @BIT_reloadDStream.zeroFilled, %bb.aa ], [ %i.ep, %bb.y ], [ %.promoted237.i, %BIT_reloadDStream.exit27.i ]
  store i64 %.lcssa41, ptr %9, align 8
  store i64 %.lcssa42, ptr %10, align 8
  %i.fp = getelementptr i8, ptr %i.ak, i64 -2     ; 3 uses
  %i.fq = icmp ugt ptr %.037.i9.i.lcssa, %i.fp
  br i1 %i.fq, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.aa:                                            ; preds = %BIT_reloadDStream.exit27.i
  %i.fr = getelementptr [4 x i8], ptr %i.ej, i64 %i.en ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.fr, align 2
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 2
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 3
  %.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i, align 1
  %i.fs = zext i8 %.sroa.6.0.copyload.i.i to i32  ; 2 uses
  %i.ft = and i32 %.promoted226.i, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = shl i64 %.val.i73.sink.i, %i.fu
  %i.fw = sub nsw i32 0, %i.fs
  %i.fx = and i32 %i.fw, 63
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = lshr i64 %i.fv, %i.fy
  %i.ga = add i32 %.promoted226.i, %i.fs          ; 2 uses
  %i.gb = zext i16 %.sroa.0.0.copyload.i.i to i64
  store i8 %.sroa.5.0.copyload.i.i, ptr %.037.i9.i44, align 1
  %i.gc = getelementptr [4 x i8], ptr %i.ei, i64 %i.eo ; 3 uses
  %.sroa.0.0.copyload.i74.i = load i16, ptr %i.gc, align 2
  %.sroa.5.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %.sroa.5.0.copyload.i76.i = load i8, ptr %.sroa.5.0..sroa_idx.i75.i, align 2
  %.sroa.6.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  %.sroa.6.0.copyload.i78.i = load i8, ptr %.sroa.6.0..sroa_idx.i77.i, align 1
  %i.gd = zext i8 %.sroa.6.0.copyload.i78.i to i32 ; 2 uses
  %i.ge = and i32 %i.ga, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl i64 %.val.i73.sink.i, %i.gf
  %i.gh = sub nsw i32 0, %i.gd
  %i.gi = and i32 %i.gh, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = lshr i64 %i.gg, %i.gj
  %i.gl = add i32 %i.ga, %i.gd                    ; 2 uses
  %i.gm = zext i16 %.sroa.0.0.copyload.i74.i to i64
  %i.gn = getelementptr i8, ptr %.037.i9.i44, i64 1
  store i8 %.sroa.5.0.copyload.i76.i, ptr %i.gn, align 1
  %i.go = getelementptr [4 x i8], ptr %i.ej, i64 %i.fz
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %i.gb ; 3 uses
  %.sroa.0.0.copyload.i81.i = load i16, ptr %i.gp, align 2
  %.sroa.5.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %.sroa.5.0.copyload.i83.i = load i8, ptr %.sroa.5.0..sroa_idx.i82.i, align 2
  %.sroa.6.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 3
  %.sroa.6.0.copyload.i85.i = load i8, ptr %.sroa.6.0..sroa_idx.i84.i, align 1
  %i.gq = zext i8 %.sroa.6.0.copyload.i85.i to i32 ; 2 uses
  %i.gr = and i32 %i.gl, 63
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl i64 %.val.i73.sink.i, %i.gs
  %i.gu = sub nsw i32 0, %i.gq
  %i.gv = and i32 %i.gu, 63
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = lshr i64 %i.gt, %i.gw
  %i.gy = add i32 %i.gl, %i.gq                    ; 2 uses
  %i.gz = zext i16 %.sroa.0.0.copyload.i81.i to i64
  %i.ha = add i64 %i.gx, %i.gz                    ; 2 uses
  %i.hb = getelementptr i8, ptr %.037.i9.i44, i64 2
  store i8 %.sroa.5.0.copyload.i83.i, ptr %i.hb, align 1
  %i.hc = getelementptr [4 x i8], ptr %i.ei, i64 %i.gk
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %i.gm ; 3 uses
  %.sroa.0.0.copyload.i88.i = load i16, ptr %i.hd, align 2
  %.sroa.5.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %.sroa.5.0.copyload.i90.i = load i8, ptr %.sroa.5.0..sroa_idx.i89.i, align 2
  %.sroa.6.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %.sroa.6.0.copyload.i92.i = load i8, ptr %.sroa.6.0..sroa_idx.i91.i, align 1
  %i.he = zext i8 %.sroa.6.0.copyload.i92.i to i32 ; 2 uses
  %i.hf = and i32 %i.gy, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl i64 %.val.i73.sink.i, %i.hg
  %i.hi = sub nsw i32 0, %i.he
  %i.hj = and i32 %i.hi, 63
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = lshr i64 %i.hh, %i.hk
  %i.hm = add i32 %i.gy, %i.he                    ; 4 uses
  store i32 %i.hm, ptr %i.cw, align 8
  %i.hn = zext i16 %.sroa.0.0.copyload.i88.i to i64
  %i.ho = add i64 %i.hl, %i.hn                    ; 2 uses
  %i.hp = getelementptr i8, ptr %.037.i9.i44, i64 3
  store i8 %.sroa.5.0.copyload.i90.i, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %.037.i9.i44, i64 4 ; 2 uses
  %i.hr = icmp ugt i32 %i.hm, 64
  br i1 %i.hr, label %.preheader193.i, label %.lr.ph, !prof !27, !llvm.loop !28

.lr.ph.i:                                         ; preds = %.preheader193.i, %BIT_reloadDStream.exit.i
  %i.hs = phi ptr [ %i.kp, %BIT_reloadDStream.exit.i ], [ %.promoted237401.i, %.preheader193.i ] ; 7 uses
  %.1.i10232.i = phi ptr [ %i.ju, %BIT_reloadDStream.exit.i ], [ %.037.i9.i.lcssa, %.preheader193.i ] ; 5 uses
  %i.ht = phi i64 [ %i.ih, %BIT_reloadDStream.exit.i ], [ %.lcssa41, %.preheader193.i ]
  %.val.i.i108.i = phi i64 [ %.val.i117224.i, %BIT_reloadDStream.exit.i ], [ %.promoted222402.i, %.preheader193.i ] ; 2 uses
  %i.hu = phi i32 [ %i.kq, %BIT_reloadDStream.exit.i ], [ %.promoted226403.i, %.preheader193.i ] ; 2 uses
  %i.hv = phi i64 [ %i.jt, %BIT_reloadDStream.exit.i ], [ %.lcssa42, %.preheader193.i ] ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %i.fm, i64 %i.ht ; 3 uses
  %.sroa.0.0.copyload.i95.i = load i16, ptr %i.hw, align 2
  %.sroa.5.0..sroa_idx.i96.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %.sroa.5.0.copyload.i97.i = load i8, ptr %.sroa.5.0..sroa_idx.i96.i, align 2
  %.sroa.6.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 3
  %.sroa.6.0.copyload.i99.i = load i8, ptr %.sroa.6.0..sroa_idx.i98.i, align 1
  %i.hx = zext i8 %.sroa.6.0.copyload.i99.i to i32 ; 2 uses
  %i.hy = and i32 %i.hu, 63
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = shl i64 %.val.i.i108.i, %i.hz
  %i.ib = sub nsw i32 0, %i.hx
  %i.ic = and i32 %i.ib, 63
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = lshr i64 %i.ia, %i.id
  %i.if = add i32 %i.hu, %i.hx                    ; 6 uses
  %i.ig = zext i16 %.sroa.0.0.copyload.i95.i to i64
  %i.ih = add i64 %i.ie, %i.ig                    ; 2 uses
end_hunk_0
begin_hunk_1_@FSE_decompress_wksp_body_bmi2:bb.a
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 22 uses
  %8 = alloca %struct.FSE_DState_t, align 8       ; 6 uses
  %9 = alloca %struct.FSE_DState_t, align 8       ; 6 uses
  %10 = alloca %struct.BIT_DStream_t, align 8     ; 15 uses
  %11 = alloca %struct.FSE_DState_t, align 8      ; 6 uses
  %12 = alloca %struct.FSE_DState_t, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %5, i64 512        ; 6 uses
  %i.d = icmp ult i64 %6, 512
  br i1 %i.d, label %FSE_decompress_wksp_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !21
  %i.e = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 1) #12 ; 4 uses
  %i.f = icmp ult i64 %i.e, -119
  br i1 %i.f, label %bb.c, label %FSE_decompress_wksp_body.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4              ; 4 uses
  %i.h = icmp ugt i32 %i.g, %4
  br i1 %i.h, label %FSE_decompress_wksp_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %2, i64 %i.e       ; 11 uses
  %i.j = sub i64 %3, %i.e                         ; 7 uses
  %i.k = shl nuw i32 1, %i.g                      ; 2 uses
  %i.l = add nuw i32 %i.k, 2
  %i.m = sext i32 %i.l to i64
  %i.n = load i32, ptr %i.b, align 4              ; 2 uses
  %i.o = add i32 %i.n, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = zext nneg i32 %i.g to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = shl nsw i64 %i.m, 2
  %i.u = add nuw i64 %i.s, 11
  %i.v = add nuw i64 %i.u, %i.q
  %i.w = add i64 %i.v, %i.t
  %i.x = and i64 %i.w, -4
  %i.y = add i64 %i.x, 516
  %i.z = icmp ugt i64 %i.y, %6
  br i1 %i.z, label %FSE_decompress_wksp_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw i32 %i.k, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ac
  %.neg191 = add i64 %6, -512
  %i.ae = sub i64 %.neg191, %i.ac
  %i.af = call fastcc i64 @FSE_buildDTable_internal(ptr noundef %i.c, ptr noundef %5, i32 noundef %i.n, i32 noundef %i.g, ptr noundef %i.ad, i64 noundef %i.ae) #10, !srcloc !22 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.f, label %FSE_decompress_wksp_body.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %5, i64 514
  %i.ai = load i16, ptr %i.ah, align 2
  %.not48.i = icmp eq i16 %i.ai, 0
  %i.aj = getelementptr i8, ptr %0, i64 %1        ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -3     ; 2 uses
  br i1 %.not48.i, label %bb.an, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 24, i1 false), !annotation !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %FSE_decompress_usingDTable_generic.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = icmp ugt i64 %i.j, 7
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %2, i64 %3
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ar, ptr %i.as, align 8
  %.val.i = load i64, ptr %i.ar, align 1          ; 2 uses
  store i64 %.val.i, ptr %7, align 8
  %i.at = lshr i64 %.val.i, 56                    ; 2 uses
  %.not51.i = icmp eq i64 %i.at, 0
  br i1 %.not51.i, label %FSE_decompress_usingDTable_generic.exit12, label %BIT_initDStream.exit

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.i, ptr %i.au, align 8
  %i.av = load i8, ptr %i.i, align 1
  %i.aw = zext i8 %i.av to i64                    ; 7 uses
  store i64 %i.aw, ptr %7, align 8
  switch i64 %i.j, label %bb.q [
    i64 7, label %bb.k
    i64 6, label %bb.l
    i64 5, label %bb.m
    i64 4, label %bb.n
    i64 3, label %bb.o
    i64 2, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.i, i64 6
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 48
  %i.bb = or disjoint i64 %i.ba, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi i64 [ %i.bb, %bb.k ], [ %i.aw, %bb.j ]
  %i.bd = getelementptr i8, ptr %i.i, i64 5
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 40
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bi = phi i64 [ %i.bh, %bb.l ], [ %i.aw, %bb.j ]
  %i.bj = getelementptr i8, ptr %i.i, i64 4
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 32
  %i.bn = add nuw nsw i64 %i.bm, %i.bi
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bo = phi i64 [ %i.bn, %bb.m ], [ %i.aw, %bb.j ]
  %i.bp = getelementptr i8, ptr %i.i, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.bs, %i.bo
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.bu = phi i64 [ %i.bt, %bb.n ], [ %i.aw, %bb.j ]
  %i.bv = getelementptr i8, ptr %i.i, i64 2
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 16
  %i.bz = add nuw nsw i64 %i.by, %i.bu
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.ca = phi i64 [ %i.bz, %bb.o ], [ %i.aw, %bb.j ]
  %i.cb = getelementptr i8, ptr %i.i, i64 1
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = add nuw nsw i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %7, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.cg = getelementptr i8, ptr %2, i64 %3
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1             ; 2 uses
  %.not.i70 = icmp eq i8 %i.ci, 0
  br i1 %.not.i70, label %FSE_decompress_usingDTable_generic.exit12, label %BIT_initDStream.exit.thread182

BIT_initDStream.exit.thread182:                   ; preds = %bb.q
  %i.cj = zext i8 %i.ci to i32
  %i.ck = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cj, i1 true)
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = trunc nuw nsw i64 %i.j to i32
  %i.cn = shl nuw nsw i32 %i.cm, 3
  %reass.sub = sub nsw i32 %i.ck, %i.cn
  %i.co = add nsw i32 %reass.sub, 41
  store i32 %i.co, ptr %i.cl, align 8
  br label %bb.r

BIT_initDStream.exit:                             ; preds = %bb.i
  %i.cp = trunc nuw nsw i64 %i.at to i32
  %i.cq = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cp, i1 true)
  %i.cr = xor i32 %i.cq, 31
  %i.cs = sub nuw nsw i32 8, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cs, ptr %i.ct, align 8
  %i.cu = icmp ult i64 %i.j, -119
  br i1 %i.cu, label %bb.r, label %FSE_decompress_usingDTable_generic.exit12

bb.r:                                             ; preds = %BIT_initDStream.exit.thread182, %BIT_initDStream.exit
  call fastcc void @FSE_initDState(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %i.c) #10, !srcloc !23
  call fastcc void @FSE_initDState(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef %i.c) #10, !srcloc !24
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cw = load i32, ptr %i.cv, align 8            ; 6 uses
  %i.cx = icmp ugt i32 %i.cw, 64
  br i1 %i.cx, label %FSE_decompress_usingDTable_generic.exit12, label %bb.s, !prof !25

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 8 uses
  %i.da = load ptr, ptr %i.ao, align 8            ; 4 uses
  %.not.i28 = icmp ult ptr %i.cz, %i.da
  br i1 %.not.i28, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = lshr i32 %i.cw, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr i8, ptr %i.cz, i64 %i.dd  ; 3 uses
  store ptr %i.de, ptr %i.cy, align 8
  %i.df = and i32 %i.cw, 7
  %.val.i72 = load i64, ptr %i.de, align 1        ; 2 uses
  store i64 %.val.i72, ptr %7, align 8
  %.pre = load ptr, ptr %i.am, align 8
  br label %BIT_reloadDStream.exit34

bb.u:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.dh = icmp eq ptr %i.cz, %i.dg
  br i1 %i.dh, label %.BIT_reloadDStream.exit34_crit_edge, label %bb.v

.BIT_reloadDStream.exit34_crit_edge:              ; preds = %bb.u
  %.promoted211.pre = load i64, ptr %7, align 8
  br label %BIT_reloadDStream.exit34

bb.v:                                             ; preds = %bb.u
  %i.di = lshr i32 %i.cw, 3                       ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr i8, ptr %i.cz, i64 %i.dk
  %i.dm = icmp ult ptr %i.dl, %i.dg
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %i.dg to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %.021.i30 = select i1 %i.dm, i32 %i.dq, i32 %i.di ; 2 uses
  %i.dr = zext i32 %.021.i30 to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr i8, ptr %i.cz, i64 %i.ds  ; 3 uses
  store ptr %i.dt, ptr %i.cy, align 8
  %i.du = shl i32 %.021.i30, 3
  %i.dv = sub i32 %i.cw, %i.du
  %.val66 = load i64, ptr %i.dt, align 1          ; 2 uses
  store i64 %.val66, ptr %7, align 8
  br label %BIT_reloadDStream.exit34

BIT_reloadDStream.exit34:                         ; preds = %.BIT_reloadDStream.exit34_crit_edge, %bb.t, %bb.v
  %.promoted218 = phi ptr [ %i.cz, %.BIT_reloadDStream.exit34_crit_edge ], [ %i.de, %bb.t ], [ %i.dt, %bb.v ]
  %i.dw = phi ptr [ %i.cz, %.BIT_reloadDStream.exit34_crit_edge ], [ %.pre, %bb.t ], [ %i.dg, %bb.v ] ; 7 uses
  %.promoted211 = phi i64 [ %.promoted211.pre, %.BIT_reloadDStream.exit34_crit_edge ], [ %.val.i72, %bb.t ], [ %.val66, %bb.v ] ; 2 uses
  %.promoted = phi i32 [ %i.cw, %.BIT_reloadDStream.exit34_crit_edge ], [ %i.df, %bb.t ], [ %i.dv, %bb.v ] ; 3 uses
  %.promoted214 = load i64, ptr %8, align 8       ; 2 uses
  %.promoted216 = load i64, ptr %9, align 8       ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8            ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 4 uses
  %i.ec = icmp ugt i32 %.promoted, 64
  br i1 %i.ec, label %.preheader193, label %.lr.ph479, !prof !30

.lr.ph479:                                        ; preds = %BIT_reloadDStream.exit34, %bb.z
  %.037.i9478 = phi ptr [ %i.hd, %bb.z ], [ %0, %BIT_reloadDStream.exit34 ] ; 8 uses
  %i.ed = phi i32 [ %i.gz, %bb.z ], [ %.promoted, %BIT_reloadDStream.exit34 ] ; 5 uses
  %.val.i.i212477 = phi i64 [ %.val.i73.sink, %bb.z ], [ %.promoted211, %BIT_reloadDStream.exit34 ]
  %i.ee = phi i64 [ %i.gn, %bb.z ], [ %.promoted214, %BIT_reloadDStream.exit34 ] ; 3 uses
  %i.ef = phi i64 [ %i.hb, %bb.z ], [ %.promoted216, %BIT_reloadDStream.exit34 ] ; 3 uses
  %i.eg = phi ptr [ %.promoted237, %bb.z ], [ %.promoted218, %BIT_reloadDStream.exit34 ] ; 7 uses
  %.not.i21 = icmp ult ptr %i.eg, %i.da
  br i1 %.not.i21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph479
  %i.eh = lshr i32 %i.ed, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = getelementptr i8, ptr %i.eg, i64 %i.ej  ; 2 uses
  store ptr %i.ek, ptr %i.cy, align 8
  %i.el = and i32 %i.ed, 7
  br label %BIT_reloadDStream.exit27

bb.x:                                             ; preds = %.lr.ph479
  %i.em = icmp eq ptr %i.eg, %i.dw
  br i1 %i.em, label %.preheader193, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.en = lshr i32 %i.ed, 3                       ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr i8, ptr %i.eg, i64 %i.ep
  %i.er = icmp uge ptr %i.eq, %i.dw               ; 2 uses
  %i.es = ptrtoint ptr %i.eg to i64
  %i.et = sub i64 %i.es, %i.dx
  %i.eu = trunc i64 %i.et to i32
  %.021.i23 = select i1 %i.er, i32 %i.en, i32 %i.eu ; 2 uses
  %i.ev = zext i32 %.021.i23 to i64
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr i8, ptr %i.eg, i64 %i.ew  ; 2 uses
  store ptr %i.ex, ptr %i.cy, align 8
  %i.ey = shl i32 %.021.i23, 3
  %i.ez = sub i32 %i.ed, %i.ey
  br label %BIT_reloadDStream.exit27

BIT_reloadDStream.exit27:                         ; preds = %bb.w, %bb.y
  %.promoted237 = phi ptr [ %i.ek, %bb.w ], [ %i.ex, %bb.y ] ; 3 uses
  %.promoted226 = phi i32 [ %i.el, %bb.w ], [ %i.ez, %bb.y ] ; 4 uses
  %.022.i22 = phi i1 [ true, %bb.w ], [ %i.er, %bb.y ]
  store i32 %.promoted226, ptr %i.cv, align 8
  %.val.i73.sink = load i64, ptr %.promoted237, align 1 ; 8 uses
  store i64 %.val.i73.sink, ptr %7, align 8
  %i.fa = icmp ult ptr %.037.i9478, %i.ak
  %i.fb = and i1 %i.fa, %.022.i22
  br i1 %i.fb, label %bb.z, label %.preheader193

.preheader193:                                    ; preds = %bb.z, %BIT_reloadDStream.exit27, %bb.x, %BIT_reloadDStream.exit34
  %.lcssa476 = phi i64 [ %.promoted216, %BIT_reloadDStream.exit34 ], [ %i.hb, %bb.z ], [ %i.ef, %BIT_reloadDStream.exit27 ], [ %i.ef, %bb.x ] ; 2 uses
  %.lcssa475 = phi i64 [ %.promoted214, %BIT_reloadDStream.exit34 ], [ %i.gn, %bb.z ], [ %i.ee, %BIT_reloadDStream.exit27 ], [ %i.ee, %bb.x ] ; 2 uses
  %.037.i9.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit34 ], [ %i.hd, %bb.z ], [ %.037.i9478, %BIT_reloadDStream.exit27 ], [ %.037.i9478, %bb.x ] ; 2 uses
  %.promoted226403 = phi i32 [ %.promoted, %BIT_reloadDStream.exit34 ], [ %i.gz, %bb.z ], [ %.promoted226, %BIT_reloadDStream.exit27 ], [ %i.ed, %bb.x ]
  %.promoted222402 = phi i64 [ %.promoted211, %BIT_reloadDStream.exit34 ], [ %.val.i73.sink, %bb.z ], [ %.val.i73.sink, %BIT_reloadDStream.exit27 ], [ %.val.i.i212477, %bb.x ]
  %.promoted237401 = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit34 ], [ @BIT_reloadDStream.zeroFilled, %bb.z ], [ %.promoted237, %BIT_reloadDStream.exit27 ], [ %i.eg, %bb.x ]
  store i64 %.lcssa475, ptr %8, align 8
  store i64 %.lcssa476, ptr %9, align 8
  %i.fc = getelementptr i8, ptr %i.aj, i64 -2     ; 3 uses
  %i.fd = icmp ugt ptr %.037.i9.lcssa, %i.fc
  br i1 %i.fd, label %FSE_decompress_usingDTable_generic.exit12, label %.lr.ph

bb.z:                                             ; preds = %BIT_reloadDStream.exit27
  %i.fe = getelementptr [4 x i8], ptr %i.dz, i64 %i.ee ; 3 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.fe, align 2
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1
  %i.ff = zext i8 %.sroa.6.0.copyload.i to i32    ; 2 uses
  %i.fg = and i32 %.promoted226, 63
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = shl i64 %.val.i73.sink, %i.fh
  %i.fj = sub nsw i32 0, %i.ff
  %i.fk = and i32 %i.fj, 63
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = lshr i64 %i.fi, %i.fl
  %i.fn = add i32 %.promoted226, %i.ff            ; 2 uses
  %i.fo = zext i16 %.sroa.0.0.copyload.i to i64
  store i8 %.sroa.5.0.copyload.i, ptr %.037.i9478, align 1
  %i.fp = getelementptr [4 x i8], ptr %i.eb, i64 %i.ef ; 3 uses
  %.sroa.0.0.copyload.i74 = load i16, ptr %i.fp, align 2
  %.sroa.5.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %.sroa.5.0.copyload.i76 = load i8, ptr %.sroa.5.0..sroa_idx.i75, align 2
  %.sroa.6.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.fp, i64 3
  %.sroa.6.0.copyload.i78 = load i8, ptr %.sroa.6.0..sroa_idx.i77, align 1
  %i.fq = zext i8 %.sroa.6.0.copyload.i78 to i32  ; 2 uses
  %i.fr = and i32 %i.fn, 63
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = shl i64 %.val.i73.sink, %i.fs
  %i.fu = sub nsw i32 0, %i.fq
  %i.fv = and i32 %i.fu, 63
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = lshr i64 %i.ft, %i.fw
  %i.fy = add i32 %i.fn, %i.fq                    ; 2 uses
  %i.fz = zext i16 %.sroa.0.0.copyload.i74 to i64
  %i.ga = getelementptr i8, ptr %.037.i9478, i64 1
  store i8 %.sroa.5.0.copyload.i76, ptr %i.ga, align 1
  %i.gb = getelementptr [4 x i8], ptr %i.dz, i64 %i.fm
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.fo ; 3 uses
  %.sroa.0.0.copyload.i81 = load i16, ptr %i.gc, align 2
  %.sroa.5.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %.sroa.5.0.copyload.i83 = load i8, ptr %.sroa.5.0..sroa_idx.i82, align 2
  %.sroa.6.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  %.sroa.6.0.copyload.i85 = load i8, ptr %.sroa.6.0..sroa_idx.i84, align 1
  %i.gd = zext i8 %.sroa.6.0.copyload.i85 to i32  ; 2 uses
  %i.ge = and i32 %i.fy, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl i64 %.val.i73.sink, %i.gf
  %i.gh = sub nsw i32 0, %i.gd
  %i.gi = and i32 %i.gh, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = lshr i64 %i.gg, %i.gj
  %i.gl = add i32 %i.fy, %i.gd                    ; 2 uses
  %i.gm = zext i16 %.sroa.0.0.copyload.i81 to i64
  %i.gn = add i64 %i.gk, %i.gm                    ; 2 uses
  %i.go = getelementptr i8, ptr %.037.i9478, i64 2
  store i8 %.sroa.5.0.copyload.i83, ptr %i.go, align 1
  %i.gp = getelementptr [4 x i8], ptr %i.eb, i64 %i.fx
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.fz ; 3 uses
  %.sroa.0.0.copyload.i88 = load i16, ptr %i.gq, align 2
  %.sroa.5.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %.sroa.5.0.copyload.i90 = load i8, ptr %.sroa.5.0..sroa_idx.i89, align 2
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.gq, i64 3
  %.sroa.6.0.copyload.i92 = load i8, ptr %.sroa.6.0..sroa_idx.i91, align 1
  %i.gr = zext i8 %.sroa.6.0.copyload.i92 to i32  ; 2 uses
  %i.gs = and i32 %i.gl, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl i64 %.val.i73.sink, %i.gt
  %i.gv = sub nsw i32 0, %i.gr
  %i.gw = and i32 %i.gv, 63
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = lshr i64 %i.gu, %i.gx
  %i.gz = add i32 %i.gl, %i.gr                    ; 4 uses
  store i32 %i.gz, ptr %i.cv, align 8
  %i.ha = zext i16 %.sroa.0.0.copyload.i88 to i64
  %i.hb = add i64 %i.gy, %i.ha                    ; 2 uses
  %i.hc = getelementptr i8, ptr %.037.i9478, i64 3
  store i8 %.sroa.5.0.copyload.i90, ptr %i.hc, align 1
  %i.hd = getelementptr i8, ptr %.037.i9478, i64 4 ; 2 uses
  %i.he = icmp ugt i32 %i.gz, 64
  br i1 %i.he, label %.preheader193, label %.lr.ph479, !prof !27, !llvm.loop !28

.lr.ph:                                           ; preds = %.preheader193, %BIT_reloadDStream.exit
  %i.hf = phi ptr [ %i.kc, %BIT_reloadDStream.exit ], [ %.promoted237401, %.preheader193 ] ; 7 uses
  %.1.i10232 = phi ptr [ %i.jh, %BIT_reloadDStream.exit ], [ %.037.i9.lcssa, %.preheader193 ] ; 5 uses
  %i.hg = phi i64 [ %i.hu, %BIT_reloadDStream.exit ], [ %.lcssa475, %.preheader193 ]
  %.val.i.i108 = phi i64 [ %.val.i117224, %BIT_reloadDStream.exit ], [ %.promoted222402, %.preheader193 ] ; 2 uses
  %i.hh = phi i32 [ %i.kd, %BIT_reloadDStream.exit ], [ %.promoted226403, %.preheader193 ] ; 2 uses
  %i.hi = phi i64 [ %i.jg, %BIT_reloadDStream.exit ], [ %.lcssa476, %.preheader193 ] ; 2 uses
  %i.hj = getelementptr [4 x i8], ptr %i.dz, i64 %i.hg ; 3 uses
  %.sroa.0.0.copyload.i95 = load i16, ptr %i.hj, align 2
  %.sroa.5.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %.sroa.5.0.copyload.i97 = load i8, ptr %.sroa.5.0..sroa_idx.i96, align 2
  %.sroa.6.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  %.sroa.6.0.copyload.i99 = load i8, ptr %.sroa.6.0..sroa_idx.i98, align 1
  %i.hk = zext i8 %.sroa.6.0.copyload.i99 to i32  ; 2 uses
  %i.hl = and i32 %i.hh, 63
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = shl i64 %.val.i.i108, %i.hm
  %i.ho = sub nsw i32 0, %i.hk
  %i.hp = and i32 %i.ho, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = lshr i64 %i.hn, %i.hq
  %i.hs = add i32 %i.hh, %i.hk                    ; 6 uses
  %i.ht = zext i16 %.sroa.0.0.copyload.i95 to i64
  %i.hu = add i64 %i.hr, %i.ht                    ; 2 uses
  %i.hv = getelementptr i8, ptr %.1.i10232, i64 1 ; 3 uses
  store i8 %.sroa.5.0.copyload.i97, ptr %.1.i10232, align 1
  %i.hw = icmp ugt i32 %i.hs, 64
  br i1 %i.hw, label %bb.ae, label %bb.aa, !prof !25

bb.aa:                                            ; preds = %.lr.ph
  %.not.i14 = icmp ult ptr %i.hf, %i.da
  br i1 %.not.i14, label %bb.ac, label %bb.ab

end_hunk_1
