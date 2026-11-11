Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/fse_decompress?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FSE_decompress_wksp_bmi2:bb.a
  %i.f = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 0) #11 ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.e, label %FSE_decompress_wksp_body_default.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4, !tbaa !15   ; 4 uses
  %i.i = icmp ugt i32 %i.h, %4
  br i1 %i.i, label %FSE_decompress_wksp_body_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 11 uses
  %i.k = sub i64 %3, %i.f                         ; 7 uses
  %i.l = shl nuw i32 1, %i.h                      ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
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
  %i.ab = add nuw nsw i32 %i.l, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %.neg191.i = add i64 %6, -512
  %i.af = sub i64 %.neg191.i, %i.ad
  %i.ag = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %i.d, ptr noundef %5, i32 noundef %i.o, i32 noundef %i.h, ptr noundef nonnull %i.ae, i64 noundef %i.af) ; 2 uses
  %i.ah = icmp ult i64 %i.ag, -119
  br i1 %i.ah, label %bb.h, label %FSE_decompress_wksp_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 514
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !17
  %.not48.i.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -3 ; 2 uses
  br i1 %.not48.i.i, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.am = icmp eq i64 %i.k, 0
  br i1 %i.am, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !22
  %i.aq = icmp ugt i64 %i.k, 7
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !23
  %.val.i.i = load i64, ptr %i.as, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %8, align 8, !tbaa !24
  %i.au = lshr i64 %.val.i.i, 56                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.au, 0
  br i1 %.not51.i.i, label %FSE_decompress_usingDTable_generic.exit12.i, label %BIT_initDStream.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.j, ptr %i.av, align 8, !tbaa !23
  %i.aw = load i8, ptr %i.j, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i64                    ; 7 uses
  store i64 %i.ax, ptr %8, align 8, !tbaa !24
  switch i64 %i.k, label %bb.s [
    i64 7, label %bb.m
    i64 6, label %bb.n
    i64 5, label %bb.o
    i64 4, label %bb.p
    i64 3, label %bb.q
    i64 2, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 48
  %i.bc = or disjoint i64 %i.bb, %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi i64 [ %i.bc, %bb.m ], [ %i.ax, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 40
  %i.bi = add nuw nsw i64 %i.bh, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bj = phi i64 [ %i.bi, %bb.n ], [ %i.ax, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bp = phi i64 [ %i.bo, %bb.o ], [ %i.ax, %bb.l ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !14
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bt, %i.bp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.bv = phi i64 [ %i.bu, %bb.p ], [ %i.ax, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 16
  %i.ca = add nuw nsw i64 %i.bz, %i.bv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.cb = phi i64 [ %i.ca, %bb.q ], [ %i.ax, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 8
  %i.cg = add nuw nsw i64 %i.cf, %i.cb
  store i64 %i.cg, ptr %8, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.ch = getelementptr i8, ptr %2, i64 %3
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14  ; 2 uses
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
  store i32 %i.cp, ptr %i.cm, align 8, !tbaa !25
  br label %bb.t

BIT_initDStream.exit.i:                           ; preds = %bb.k
  %i.cq = trunc nuw nsw i64 %i.au to i32
  %i.cr = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cq, i1 true)
  %i.cs = xor i32 %i.cr, 31
  %i.ct = sub nuw nsw i32 8, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !25
  %i.cv = icmp ult i64 %i.k, -119
  br i1 %i.cv, label %bb.t, label %FSE_decompress_usingDTable_generic.exit12.i

bb.t:                                             ; preds = %BIT_initDStream.exit.i, %BIT_initDStream.exit.thread182.i
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %i.d)
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %8, ptr noundef nonnull %i.d)
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !25 ; 6 uses
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.u, !prof !26

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23 ; 8 uses
  %i.db = load ptr, ptr %i.ap, align 8, !tbaa !22 ; 4 uses
  %.not.i28.i = icmp ult ptr %i.da, %i.db
  br i1 %.not.i28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = lshr i32 %i.cx, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.de ; 2 uses
  %i.dg = and i32 %i.cx, 7
  %.val.i72.i = load i64, ptr %i.df, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i72.i, ptr %8, align 8, !tbaa !24
  %.pre.i = load ptr, ptr %i.an, align 8
  br label %BIT_reloadDStream.exit34.i.thread

bb.w:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.an, align 8, !tbaa !21 ; 5 uses
  %i.di = icmp eq ptr %i.da, %i.dh
  br i1 %i.di, label %.BIT_reloadDStream.exit34_crit_edge.i, label %BIT_reloadDStream.exit34.i

.BIT_reloadDStream.exit34_crit_edge.i:            ; preds = %bb.w
  %.promoted212.pre.i = load i64, ptr %8, align 8
  br label %BIT_reloadDStream.exit34.i.thread

BIT_reloadDStream.exit34.i.thread:                ; preds = %.BIT_reloadDStream.exit34_crit_edge.i, %bb.v
  %.promoted219.i.ph = phi ptr [ %i.df, %bb.v ], [ %i.da, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.ph153 = phi ptr [ %.pre.i, %bb.v ], [ %i.da, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted212.i.ph = phi i64 [ %.val.i72.i, %bb.v ], [ %.promoted212.pre.i, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted.i.ph = phi i32 [ %i.dg, %bb.v ], [ %i.cx, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted215.i157 = load i64, ptr %9, align 8
  %.promoted217.i158 = load i64, ptr %10, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %.lr.ph.preheader

BIT_reloadDStream.exit34.i:                       ; preds = %bb.w
  %i.dn = lshr i32 %i.cx, 3                       ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.da, i64 %i.dp
  %i.dr = icmp ult ptr %i.dq, %i.dh
  %i.ds = ptrtoint ptr %i.da to i64
  %i.dt = ptrtoint ptr %i.dh to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = trunc i64 %i.du to i32
  %.021.i30.i = select i1 %i.dr, i32 %i.dv, i32 %i.dn ; 2 uses
  %i.dw = zext i32 %.021.i30.i to i64
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.da, i64 %i.dx ; 2 uses
  %i.dz = shl i32 %.021.i30.i, 3
  %i.ea = sub i32 %i.cx, %i.dz                    ; 3 uses
  %.val66.i = load i64, ptr %i.dy, align 1, !tbaa !13 ; 3 uses
  store i64 %.val66.i, ptr %8, align 8, !tbaa !24
  %.promoted215.i = load i64, ptr %9, align 8     ; 2 uses
  %.promoted217.i = load i64, ptr %10, align 8    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ef = icmp ugt i32 %i.ea, 64
  br i1 %i.ef, label %.preheader193.i, label %.lr.ph.preheader, !prof !43

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit34.i.thread, %BIT_reloadDStream.exit34.i
  %i.eg = phi ptr [ %i.dm, %BIT_reloadDStream.exit34.i.thread ], [ %i.ee, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %i.eh = phi ptr [ %i.dk, %BIT_reloadDStream.exit34.i.thread ], [ %i.ec, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %.promoted217.i163 = phi i64 [ %.promoted217.i158, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted217.i, %BIT_reloadDStream.exit34.i ]
  %.promoted215.i162 = phi i64 [ %.promoted215.i157, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted215.i, %BIT_reloadDStream.exit34.i ]
  %.promoted.i161 = phi i32 [ %.promoted.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.ea, %BIT_reloadDStream.exit34.i ]
  %.promoted212.i160 = phi i64 [ %.promoted212.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %.val66.i, %BIT_reloadDStream.exit34.i ]
  %i.ei = phi ptr [ %.ph153, %BIT_reloadDStream.exit34.i.thread ], [ %i.dh, %BIT_reloadDStream.exit34.i ] ; 6 uses
  %.promoted219.i159 = phi ptr [ %.promoted219.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.dy, %BIT_reloadDStream.exit34.i ]
  %14 = ptrtoint ptr %i.ei to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %.037.i9.i44 = phi ptr [ %i.hi, %bb.aa ], [ %0, %.lr.ph.preheader ] ; 8 uses
  %i.ej = phi i32 [ %i.he, %bb.aa ], [ %.promoted.i161, %.lr.ph.preheader ] ; 5 uses
  %.val.i.i213.i43 = phi i64 [ %.val.i.i214.i, %bb.aa ], [ %.promoted212.i160, %.lr.ph.preheader ]
  %i.ek = phi i64 [ %i.gs, %bb.aa ], [ %.promoted215.i162, %.lr.ph.preheader ] ; 3 uses
  %i.el = phi i64 [ %i.hg, %bb.aa ], [ %.promoted217.i163, %.lr.ph.preheader ] ; 3 uses
  %i.em = phi ptr [ %.promoted246.i, %bb.aa ], [ %.promoted219.i159, %.lr.ph.preheader ] ; 6 uses
  %.not.i21.i = icmp ult ptr %i.em, %i.db
  br i1 %.not.i21.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.en = lshr i32 %i.ej, 3
  %i.eo = and i32 %i.ej, 7
  br label %BIT_reloadDStream.exit27.i

bb.y:                                             ; preds = %.lr.ph
  %i.ep = icmp eq ptr %i.em, %i.ei
  br i1 %i.ep, label %.preheader193.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = lshr i32 %i.ej, 3                       ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 %i.es
  %i.eu = icmp uge ptr %i.et, %i.ei               ; 2 uses
  %i.ev = ptrtoint ptr %i.em to i64
  %i.ew = sub i64 %i.ev, %14
  %i.ex = trunc i64 %i.ew to i32
  %.021.i23.i = select i1 %i.eu, i32 %i.eq, i32 %i.ex ; 2 uses
  %i.ey = shl i32 %.021.i23.i, 3
  %i.ez = sub i32 %i.ej, %i.ey
  br label %BIT_reloadDStream.exit27.i

BIT_reloadDStream.exit27.i:                       ; preds = %bb.z, %bb.x
  %.pn486.in.i = phi i32 [ %.021.i23.i, %bb.z ], [ %i.en, %bb.x ]
  %i.fa = phi i32 [ %i.ez, %bb.z ], [ %i.eo, %bb.x ] ; 3 uses
  %.022.i22.i = phi i1 [ %i.eu, %bb.z ], [ true, %bb.x ]
  %.pn486.i = zext i32 %.pn486.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn486.i
  %.promoted246.i = getelementptr inbounds i8, ptr %i.em, i64 %.pn.i ; 3 uses
  %.val.i.i214.i = load i64, ptr %.promoted246.i, align 1, !tbaa !13 ; 7 uses
  %i.fb = icmp ult ptr %.037.i9.i44, %i.al
  %i.fc = and i1 %i.fb, %.022.i22.i
  br i1 %i.fc, label %bb.aa, label %.preheader193.i

.preheader193.i:                                  ; preds = %bb.aa, %bb.y, %BIT_reloadDStream.exit27.i, %BIT_reloadDStream.exit34.i
  %i.fd = phi ptr [ %i.ee, %BIT_reloadDStream.exit34.i ], [ %i.eg, %BIT_reloadDStream.exit27.i ], [ %i.eg, %bb.y ], [ %i.eg, %bb.aa ] ; 2 uses
  %i.fe = phi ptr [ %i.ec, %BIT_reloadDStream.exit34.i ], [ %i.eh, %BIT_reloadDStream.exit27.i ], [ %i.eh, %bb.y ], [ %i.eh, %bb.aa ] ; 2 uses
  %i.ff = phi ptr [ %i.dh, %BIT_reloadDStream.exit34.i ], [ %i.ei, %BIT_reloadDStream.exit27.i ], [ %i.ei, %bb.y ], [ %i.ei, %bb.aa ] ; 5 uses
  %.lcssa42 = phi i64 [ %.promoted217.i, %BIT_reloadDStream.exit34.i ], [ %i.hg, %bb.aa ], [ %i.el, %bb.y ], [ %i.el, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.lcssa41 = phi i64 [ %.promoted215.i, %BIT_reloadDStream.exit34.i ], [ %i.gs, %bb.aa ], [ %i.ek, %bb.y ], [ %i.ek, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.037.i9.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit34.i ], [ %i.hi, %bb.aa ], [ %.037.i9.i44, %bb.y ], [ %.037.i9.i44, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %i.fg = phi i32 [ %i.ea, %BIT_reloadDStream.exit34.i ], [ %i.he, %bb.aa ], [ %i.ej, %bb.y ], [ %i.fa, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.val.i.i214445.i = phi i64 [ %.val66.i, %BIT_reloadDStream.exit34.i ], [ %.val.i.i214.i, %bb.aa ], [ %.val.i.i213.i43, %bb.y ], [ %.val.i.i214.i, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.promoted246444.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit34.i ], [ @BIT_reloadDStream.zeroFilled, %bb.aa ], [ %i.em, %bb.y ], [ %.promoted246.i, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %15 = ptrtoint ptr %i.ff to i64                 ; 2 uses
  store ptr %.promoted246444.i, ptr %i.cz, align 8
  store i32 %i.fg, ptr %i.cw, align 8
  store i64 %.val.i.i214445.i, ptr %8, align 8
  store i64 %.lcssa41, ptr %9, align 8
  store i64 %.lcssa42, ptr %10, align 8
  %i.fh = getelementptr inbounds i8, ptr %i.ak, i64 -2 ; 3 uses
  %i.fi = icmp ugt ptr %.037.i9.i.lcssa, %i.fh
  br i1 %i.fi, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.aa:                                            ; preds = %BIT_reloadDStream.exit27.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ek ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.fj, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !tbaa !14
  %i.fk = zext i8 %.sroa.5.0.copyload.i.i to i32  ; 2 uses
  %i.fl = and i32 %i.fa, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl i64 %.val.i.i214.i, %i.fm
  %i.fo = sub nsw i32 0, %i.fk
  %i.fp = and i32 %i.fo, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = lshr i64 %i.fn, %i.fq
  %i.fs = add i32 %i.fa, %i.fk                    ; 2 uses
  %i.ft = zext i16 %.sroa.0.0.copyload.i.i to i64
  store i8 %.sroa.4.0.copyload.i.i, ptr %.037.i9.i44, align 1, !tbaa !14
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.el ; 3 uses
  %.sroa.0.0.copyload.i74.i = load i16, ptr %i.fu, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %.sroa.4.0.copyload.i76.i = load i8, ptr %.sroa.4.0..sroa_idx.i75.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %.sroa.5.0.copyload.i78.i = load i8, ptr %.sroa.5.0..sroa_idx.i77.i, align 1, !tbaa !14
  %i.fv = zext i8 %.sroa.5.0.copyload.i78.i to i32 ; 2 uses
  %i.fw = and i32 %i.fs, 63
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl i64 %.val.i.i214.i, %i.fx
  %i.fz = sub nsw i32 0, %i.fv
  %i.ga = and i32 %i.fz, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %i.fy, %i.gb
  %i.gd = add i32 %i.fs, %i.fv                    ; 2 uses
  %i.ge = zext i16 %.sroa.0.0.copyload.i74.i to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 1
  store i8 %.sroa.4.0.copyload.i76.i, ptr %i.gf, align 1, !tbaa !14
  %i.gg = getelementptr [4 x i8], ptr %i.eh, i64 %i.fr
  %i.gh = getelementptr [4 x i8], ptr %i.gg, i64 %i.ft ; 3 uses
  %.sroa.0.0.copyload.i81.i = load i16, ptr %i.gh, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %.sroa.4.0.copyload.i83.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 3
  %.sroa.5.0.copyload.i85.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i, align 1, !tbaa !14
  %i.gi = zext i8 %.sroa.5.0.copyload.i85.i to i32 ; 2 uses
  %i.gj = and i32 %i.gd, 63
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = shl i64 %.val.i.i214.i, %i.gk
  %i.gm = sub nsw i32 0, %i.gi
  %i.gn = and i32 %i.gm, 63
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = lshr i64 %i.gl, %i.go
  %i.gq = add i32 %i.gd, %i.gi                    ; 2 uses
  %i.gr = zext i16 %.sroa.0.0.copyload.i81.i to i64
  %i.gs = add i64 %i.gp, %i.gr                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 2
  store i8 %.sroa.4.0.copyload.i83.i, ptr %i.gt, align 1, !tbaa !14
  %i.gu = getelementptr [4 x i8], ptr %i.eg, i64 %i.gc
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %i.ge ; 3 uses
  %.sroa.0.0.copyload.i88.i = load i16, ptr %i.gv, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %.sroa.4.0.copyload.i90.i = load i8, ptr %.sroa.4.0..sroa_idx.i89.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  %.sroa.5.0.copyload.i92.i = load i8, ptr %.sroa.5.0..sroa_idx.i91.i, align 1, !tbaa !14
  %i.gw = zext i8 %.sroa.5.0.copyload.i92.i to i32 ; 2 uses
  %i.gx = and i32 %i.gq, 63
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = shl i64 %.val.i.i214.i, %i.gy
  %i.ha = sub nsw i32 0, %i.gw
  %i.hb = and i32 %i.ha, 63
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = lshr i64 %i.gz, %i.hc
  %i.he = add i32 %i.gq, %i.gw                    ; 3 uses
  %i.hf = zext i16 %.sroa.0.0.copyload.i88.i to i64
  %i.hg = add i64 %i.hd, %i.hf                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 3
  store i8 %.sroa.4.0.copyload.i90.i, ptr %i.hh, align 1, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 4 ; 2 uses
  %i.hj = icmp ugt i32 %i.he, 64
  br i1 %i.hj, label %.preheader193.i, label %.lr.ph, !prof !27, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader193.i, %BIT_reloadDStream.exit.i
  %i.hk = phi ptr [ %i.kh, %BIT_reloadDStream.exit.i ], [ %.promoted246444.i, %.preheader193.i ] ; 7 uses
  %.1.i10237.i = phi ptr [ %i.jm, %BIT_reloadDStream.exit.i ], [ %.037.i9.i.lcssa, %.preheader193.i ] ; 5 uses
  %i.hl = phi i64 [ %i.hz, %BIT_reloadDStream.exit.i ], [ %.lcssa41, %.preheader193.i ]
  %.val.i117225236.i = phi i64 [ %.val.i117226.i, %BIT_reloadDStream.exit.i ], [ %.val.i.i214445.i, %.preheader193.i ] ; 2 uses
  %i.hm = phi i32 [ %i.ki, %BIT_reloadDStream.exit.i ], [ %i.fg, %.preheader193.i ] ; 2 uses
  %i.hn = phi i64 [ %i.jl, %BIT_reloadDStream.exit.i ], [ %.lcssa42, %.preheader193.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.hl ; 3 uses
  %.sroa.0.0.copyload.i95.i = load i16, ptr %i.ho, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i96.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %.sroa.4.0.copyload.i97.i = load i8, ptr %.sroa.4.0..sroa_idx.i96.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %.sroa.5.0.copyload.i99.i = load i8, ptr %.sroa.5.0..sroa_idx.i98.i, align 1, !tbaa !14
  %i.hp = zext i8 %.sroa.5.0.copyload.i99.i to i32 ; 2 uses
  %i.hq = and i32 %i.hm, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl i64 %.val.i117225236.i, %i.hr
  %i.ht = sub nsw i32 0, %i.hp
  %i.hu = and i32 %i.ht, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = lshr i64 %i.hs, %i.hv
  %i.hx = add i32 %i.hm, %i.hp                    ; 6 uses
  %i.hy = zext i16 %.sroa.0.0.copyload.i95.i to i64
  %i.hz = add i64 %i.hw, %i.hy                    ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i97.i, ptr %.1.i10237.i, align 1, !tbaa !14
  %i.ib = icmp ugt i32 %i.hx, 64
  br i1 %i.ib, label %bb.af, label %bb.ab, !prof !26

bb.ab:                                            ; preds = %.lr.ph.i
  %.not.i14.i = icmp ult ptr %i.hk, %i.db
  br i1 %.not.i14.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = lshr i32 %i.hx, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = sub nsw i64 0, %i.id
  %i.if = getelementptr inbounds i8, ptr %i.hk, i64 %i.ie ; 2 uses
  %i.ig = and i32 %i.hx, 7
  %.val.i102.i = load i64, ptr %i.if, align 1, !tbaa !13
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.ih = icmp eq ptr %i.hk, %i.ff
  br i1 %i.ih, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ii = lshr i32 %i.hx, 3                       ; 2 uses
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = sub nsw i64 0, %i.ij
  %i.il = getelementptr inbounds i8, ptr %i.hk, i64 %i.ik
  %i.im = icmp ult ptr %i.il, %i.ff
  %i.in = ptrtoint ptr %i.hk to i64
  %i.io = sub i64 %i.in, %15
  %i.ip = trunc i64 %i.io to i32
  %.021.i16.i = select i1 %i.im, i32 %i.ip, i32 %i.ii ; 2 uses
  %i.iq = zext i32 %.021.i16.i to i64
  %i.ir = sub nsw i64 0, %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.hk, i64 %i.ir ; 2 uses
  %i.it = shl i32 %.021.i16.i, 3
  %i.iu = sub i32 %i.hx, %i.it
  %.val68.i = load i64, ptr %i.is, align 1, !tbaa !13
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.hn
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %.sroa.4.0.copyload.i105.i = load i8, ptr %.sroa.4.0..sroa_idx.i104.i, align 2, !tbaa !14
  %i.iw = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 2
  store i8 %.sroa.4.0.copyload.i105.i, ptr %i.ia, align 1, !tbaa !14
  br label %bb.an

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ix = phi ptr [ %i.hk, %bb.ad ], [ %i.if, %bb.ac ], [ %i.is, %bb.ae ] ; 7 uses
  %i.iy = phi i32 [ %i.hx, %bb.ad ], [ %i.ig, %bb.ac ], [ %i.iu, %bb.ae ] ; 2 uses
  %.val.i117227.i = phi i64 [ %.val.i117225236.i, %bb.ad ], [ %.val.i102.i, %bb.ac ], [ %.val68.i, %bb.ae ] ; 2 uses
  %i.iz = icmp ugt ptr %i.ia, %i.fh
  br i1 %i.iz, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.hn ; 3 uses
  %.sroa.0.0.copyload.i110.i = load i16, ptr %i.ja, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %.sroa.4.0.copyload.i112.i = load i8, ptr %.sroa.4.0..sroa_idx.i111.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  %.sroa.5.0.copyload.i114.i = load i8, ptr %.sroa.5.0..sroa_idx.i113.i, align 1, !tbaa !14
  %i.jb = zext i8 %.sroa.5.0.copyload.i114.i to i32 ; 2 uses
  %i.jc = and i32 %i.iy, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl i64 %.val.i117227.i, %i.jd
  %i.jf = sub nsw i32 0, %i.jb
  %i.jg = and i32 %i.jf, 63
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = lshr i64 %i.je, %i.jh
  %i.jj = add i32 %i.iy, %i.jb                    ; 6 uses
  %i.jk = zext i16 %.sroa.0.0.copyload.i110.i to i64
  %i.jl = add i64 %i.ji, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i112.i, ptr %i.ia, align 1, !tbaa !14
  %i.jn = icmp ugt i32 %i.jj, 64
  br i1 %i.jn, label %bb.am, label %bb.ai, !prof !26

bb.ai:                                            ; preds = %bb.ah
  %.not.i13.i = icmp ult ptr %i.ix, %i.db
  br i1 %.not.i13.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jo = lshr i32 %i.jj, 3
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = sub nsw i64 0, %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.ix, i64 %i.jq ; 2 uses
  %i.js = and i32 %i.jj, 7
  %.val.i117.i = load i64, ptr %i.jr, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.jt = icmp eq ptr %i.ix, %i.ff
  br i1 %i.jt, label %BIT_reloadDStream.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ju = lshr i32 %i.jj, 3                       ; 2 uses
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = sub nsw i64 0, %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.ix, i64 %i.jw
  %i.jy = icmp ult ptr %i.jx, %i.ff
  %i.jz = ptrtoint ptr %i.ix to i64
  %i.ka = sub i64 %i.jz, %15
  %i.kb = trunc i64 %i.ka to i32
  %.021.i.i = select i1 %i.jy, i32 %i.kb, i32 %i.ju ; 2 uses
  %i.kc = zext i32 %.021.i.i to i64
  %i.kd = sub nsw i64 0, %i.kc
  %i.ke = getelementptr inbounds i8, ptr %i.ix, i64 %i.kd ; 2 uses
  %i.kf = shl i32 %.021.i.i, 3
  %i.kg = sub i32 %i.jj, %i.kf
  %.val69.i = load i64, ptr %i.ke, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.al, %bb.ak, %bb.aj
  %i.kh = phi ptr [ %i.ix, %bb.ak ], [ %i.jr, %bb.aj ], [ %i.ke, %bb.al ]
  %i.ki = phi i32 [ %i.jj, %bb.ak ], [ %i.js, %bb.aj ], [ %i.kg, %bb.al ]
  %.val.i117226.i = phi i64 [ %.val.i117227.i, %bb.ak ], [ %.val.i117.i, %bb.aj ], [ %.val69.i, %bb.al ]
  %i.kj = icmp ugt ptr %i.jm, %i.fh
  br i1 %i.kj, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.am:                                            ; preds = %bb.ah
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.hz
  %.sroa.4.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %.sroa.4.0.copyload.i120.i = load i8, ptr %.sroa.4.0..sroa_idx.i119.i, align 2, !tbaa !14
  %i.kl = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 3
  store i8 %.sroa.4.0.copyload.i120.i, ptr %i.jm, align 1, !tbaa !14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.2.i11.i = phi ptr [ %i.iw, %bb.af ], [ %i.kl, %bb.am ]
  %i.km = ptrtoint ptr %.2.i11.i to i64
  %i.kn = ptrtoint ptr %0 to i64
  %i.ko = sub i64 %i.km, %i.kn
  br label %FSE_decompress_usingDTable_generic.exit12.i

FSE_decompress_usingDTable_generic.exit12.i:      ; preds = %BIT_reloadDStream.exit.i, %bb.ag, %bb.an, %.preheader193.i, %bb.t, %BIT_initDStream.exit.i, %bb.s, %bb.k, %bb.i
  %.139.i8.i = phi i64 [ %i.k, %BIT_initDStream.exit.i ], [ -20, %bb.s ], [ %i.ko, %bb.an ], [ -1, %bb.k ], [ -20, %bb.t ], [ -72, %bb.i ], [ -70, %.preheader193.i ], [ -70, %bb.ag ], [ -70, %BIT_reloadDStream.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %FSE_decompress_wksp_body_default.exit

bb.ao:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.kp = call fastcc i64 @BIT_initDStream(ptr noundef %11, ptr noundef %i.j, i64 noundef %i.k) ; 2 uses
  %i.kq = icmp ult i64 %i.kp, -119
  br i1 %i.kq, label %bb.ap, label %FSE_decompress_usingDTable_generic.exit.i

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %11, ptr noundef nonnull %i.d)
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %i.d)
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !25 ; 6 uses
  %i.kt = icmp ugt i32 %i.ks, 64
  br i1 %i.kt, label %FSE_decompress_usingDTable_generic.exit.i, label %bb.aq, !prof !26

bb.aq:                                            ; preds = %bb.ap
  %i.ku = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !23 ; 8 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !22 ; 4 uses
  %.not.i56.i = icmp ult ptr %i.kv, %i.kx
  br i1 %.not.i56.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ky = lshr i32 %i.ks, 3
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = sub nsw i64 0, %i.kz
  %i.lb = getelementptr inbounds i8, ptr %i.kv, i64 %i.la ; 2 uses
  %i.lc = and i32 %i.ks, 7
  %.val.i125.i = load i64, ptr %i.lb, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i125.i, ptr %11, align 8, !tbaa !24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre390.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %BIT_reloadDStream.exit62.i.thread

bb.as:                                            ; preds = %bb.aq
  %i.ld = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !21 ; 5 uses
  %i.lf = icmp eq ptr %i.kv, %i.le
  br i1 %i.lf, label %.BIT_reloadDStream.exit62_crit_edge.i, label %BIT_reloadDStream.exit62.i

.BIT_reloadDStream.exit62_crit_edge.i:            ; preds = %bb.as
  %.promoted253.pre.i = load i64, ptr %11, align 8
  br label %BIT_reloadDStream.exit62.i.thread

BIT_reloadDStream.exit62.i.thread:                ; preds = %.BIT_reloadDStream.exit62_crit_edge.i, %bb.ar
  %.promoted259.i.ph = phi ptr [ %i.lb, %bb.ar ], [ %i.kv, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.ph164 = phi ptr [ %.pre390.i, %bb.ar ], [ %i.kv, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted253.i.ph = phi i64 [ %.val.i125.i, %bb.ar ], [ %.promoted253.pre.i, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted251.i.ph = phi i32 [ %i.lc, %bb.ar ], [ %i.ks, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted255.i168 = load i64, ptr %12, align 8
  %.promoted257.i169 = load i64, ptr %13, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  br label %.lr.ph64.preheader

BIT_reloadDStream.exit62.i:                       ; preds = %bb.as
  %i.lk = lshr i32 %i.ks, 3                       ; 2 uses
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = sub nsw i64 0, %i.ll
  %i.ln = getelementptr inbounds i8, ptr %i.kv, i64 %i.lm
  %i.lo = icmp ult ptr %i.ln, %i.le
  %i.lp = ptrtoint ptr %i.kv to i64
  %i.lq = ptrtoint ptr %i.le to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = trunc i64 %i.lr to i32
  %.021.i58.i = select i1 %i.lo, i32 %i.ls, i32 %i.lk ; 2 uses
  %i.lt = zext i32 %.021.i58.i to i64
  %i.lu = sub nsw i64 0, %i.lt
  %i.lv = getelementptr inbounds i8, ptr %i.kv, i64 %i.lu ; 2 uses
  %i.lw = shl i32 %.021.i58.i, 3
  %i.lx = sub i32 %i.ks, %i.lw                    ; 3 uses
  %.val.i = load i64, ptr %i.lv, align 1, !tbaa !13 ; 3 uses
  store i64 %.val.i, ptr %11, align 8, !tbaa !24
  %.promoted255.i = load i64, ptr %12, align 8    ; 2 uses
  %.promoted257.i = load i64, ptr %13, align 8    ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.mc = icmp ugt i32 %i.lx, 64
  br i1 %i.mc, label %.preheader.i, label %.lr.ph64.preheader, !prof !43

.lr.ph64.preheader:                               ; preds = %BIT_reloadDStream.exit62.i.thread, %BIT_reloadDStream.exit62.i
  %i.md = phi ptr [ %i.lj, %BIT_reloadDStream.exit62.i.thread ], [ %i.mb, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %i.me = phi ptr [ %i.lh, %BIT_reloadDStream.exit62.i.thread ], [ %i.lz, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %.promoted257.i174 = phi i64 [ %.promoted257.i169, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted257.i, %BIT_reloadDStream.exit62.i ]
  %.promoted255.i173 = phi i64 [ %.promoted255.i168, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted255.i, %BIT_reloadDStream.exit62.i ]
  %.promoted251.i172 = phi i32 [ %.promoted251.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.lx, %BIT_reloadDStream.exit62.i ]
  %.promoted253.i171 = phi i64 [ %.promoted253.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %.val.i, %BIT_reloadDStream.exit62.i ]
  %i.mf = phi ptr [ %.ph164, %BIT_reloadDStream.exit62.i.thread ], [ %i.le, %BIT_reloadDStream.exit62.i ] ; 6 uses
  %.promoted259.i170 = phi ptr [ %.promoted259.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.lv, %BIT_reloadDStream.exit62.i ]
  %16 = ptrtoint ptr %i.mf to i64
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %bb.aw
  %.037.i.i63 = phi ptr [ %i.pi, %bb.aw ], [ %0, %.lr.ph64.preheader ] ; 8 uses
  %i.mg = phi i32 [ %i.ox, %bb.aw ], [ %.promoted251.i172, %.lr.ph64.preheader ] ; 5 uses
  %i.mh = phi i64 [ %i.mz, %bb.aw ], [ %.promoted253.i171, %.lr.ph64.preheader ]
  %i.mi = phi i64 [ %i.os, %bb.aw ], [ %.promoted255.i173, %.lr.ph64.preheader ] ; 3 uses
  %i.mj = phi i64 [ %i.pg, %bb.aw ], [ %.promoted257.i174, %.lr.ph64.preheader ] ; 3 uses
  %i.mk = phi ptr [ %.promoted288.i, %bb.aw ], [ %.promoted259.i170, %.lr.ph64.preheader ] ; 6 uses
  %.not.i49.i = icmp ult ptr %i.mk, %i.kx
  br i1 %.not.i49.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph64
  %i.ml = lshr i32 %i.mg, 3
  %i.mm = and i32 %i.mg, 7
  br label %BIT_reloadDStream.exit55.i

bb.au:                                            ; preds = %.lr.ph64
  %i.mn = icmp eq ptr %i.mk, %i.mf
  br i1 %i.mn, label %.preheader.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mo = lshr i32 %i.mg, 3                       ; 2 uses
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = sub nsw i64 0, %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.mk, i64 %i.mq
  %i.ms = icmp uge ptr %i.mr, %i.mf               ; 2 uses
  %i.mt = ptrtoint ptr %i.mk to i64
  %i.mu = sub i64 %i.mt, %16
  %i.mv = trunc i64 %i.mu to i32
  %.021.i51.i = select i1 %i.ms, i32 %i.mo, i32 %i.mv ; 2 uses
  %i.mw = shl i32 %.021.i51.i, 3
  %i.mx = sub i32 %i.mg, %i.mw
  br label %BIT_reloadDStream.exit55.i

BIT_reloadDStream.exit55.i:                       ; preds = %bb.av, %bb.at
  %.pn488.in.i = phi i32 [ %.021.i51.i, %bb.av ], [ %i.ml, %bb.at ]
  %i.my = phi i32 [ %i.mx, %bb.av ], [ %i.mm, %bb.at ] ; 2 uses
  %.022.i50.i = phi i1 [ %i.ms, %bb.av ], [ true, %bb.at ]
  %.pn488.i = zext i32 %.pn488.in.i to i64
  %.pn487.i = sub nsw i64 0, %.pn488.i
  %.promoted288.i = getelementptr inbounds i8, ptr %i.mk, i64 %.pn487.i ; 3 uses
  %i.mz = load i64, ptr %.promoted288.i, align 1, !tbaa !13 ; 7 uses
  %i.na = icmp ult ptr %.037.i.i63, %i.al
  %i.nb = and i1 %i.na, %.022.i50.i
  br i1 %i.nb, label %bb.aw, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aw, %bb.au, %BIT_reloadDStream.exit55.i, %BIT_reloadDStream.exit62.i
  %i.nc = phi ptr [ %i.mb, %BIT_reloadDStream.exit62.i ], [ %i.md, %BIT_reloadDStream.exit55.i ], [ %i.md, %bb.au ], [ %i.md, %bb.aw ] ; 2 uses
  %i.nd = phi ptr [ %i.lz, %BIT_reloadDStream.exit62.i ], [ %i.me, %BIT_reloadDStream.exit55.i ], [ %i.me, %bb.au ], [ %i.me, %bb.aw ] ; 2 uses
  %i.ne = phi ptr [ %i.le, %BIT_reloadDStream.exit62.i ], [ %i.mf, %BIT_reloadDStream.exit55.i ], [ %i.mf, %bb.au ], [ %i.mf, %bb.aw ] ; 5 uses
  %.lcssa28 = phi i64 [ %.promoted257.i, %BIT_reloadDStream.exit62.i ], [ %i.pg, %bb.aw ], [ %i.mj, %bb.au ], [ %i.mj, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.lcssa27 = phi i64 [ %.promoted255.i, %BIT_reloadDStream.exit62.i ], [ %i.os, %bb.aw ], [ %i.mi, %bb.au ], [ %i.mi, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.037.i.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit62.i ], [ %i.pi, %bb.aw ], [ %.037.i.i63, %bb.au ], [ %.037.i.i63, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.nf = phi i32 [ %i.lx, %BIT_reloadDStream.exit62.i ], [ %i.ox, %bb.aw ], [ %i.mg, %bb.au ], [ %i.my, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.ng = phi i64 [ %.val.i, %BIT_reloadDStream.exit62.i ], [ %i.mz, %bb.aw ], [ %i.mh, %bb.au ], [ %i.mz, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.promoted288448.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit62.i ], [ @BIT_reloadDStream.zeroFilled, %bb.aw ], [ %i.mk, %bb.au ], [ %.promoted288.i, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %17 = ptrtoint ptr %i.ne to i64                 ; 2 uses
  store ptr %.promoted288448.i, ptr %i.ku, align 8
  store i32 %i.nf, ptr %i.kr, align 8
  store i64 %i.ng, ptr %11, align 8
  store i64 %.lcssa27, ptr %12, align 8
  store i64 %.lcssa28, ptr %13, align 8
  %i.nh = getelementptr inbounds i8, ptr %i.ak, i64 -2 ; 3 uses
  %i.ni = icmp ugt ptr %.037.i.i.lcssa, %i.nh
  br i1 %i.ni, label %FSE_decompress_usingDTable_generic.exit.i, label %.lr.ph278.i

bb.aw:                                            ; preds = %BIT_reloadDStream.exit55.i
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mi ; 3 uses
  %.sroa.0.0.copyload.i127.i = load i16, ptr %i.nj, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i128.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %.sroa.4.0.copyload.i129.i = load i8, ptr %.sroa.4.0..sroa_idx.i128.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %.sroa.5.0.copyload.i131.i = load i8, ptr %.sroa.5.0..sroa_idx.i130.i, align 1, !tbaa !14 ; 2 uses
  %i.nk = zext i8 %.sroa.5.0.copyload.i131.i to i32
  %i.nl = add i32 %i.my, %i.nk                    ; 2 uses
  %i.nm = sub i32 0, %i.nl
  %i.nn = and i32 %i.nm, 63
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = lshr i64 %i.mz, %i.no
  %i.nq = zext nneg i8 %.sroa.5.0.copyload.i131.i to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.nq
  %i.nr = xor i64 %notmask.i.i.i, -1
  %i.ns = and i64 %i.np, %i.nr
  %i.nt = zext i16 %.sroa.0.0.copyload.i127.i to i64
  store i8 %.sroa.4.0.copyload.i129.i, ptr %.037.i.i63, align 1, !tbaa !14
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mj ; 3 uses
  %.sroa.0.0.copyload.i132.i = load i16, ptr %i.nu, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %.sroa.4.0.copyload.i134.i = load i8, ptr %.sroa.4.0..sroa_idx.i133.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i135.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 3
  %.sroa.5.0.copyload.i136.i = load i8, ptr %.sroa.5.0..sroa_idx.i135.i, align 1, !tbaa !14 ; 2 uses
  %i.nv = zext i8 %.sroa.5.0.copyload.i136.i to i32
  %i.nw = add i32 %i.nl, %i.nv                    ; 2 uses
  %i.nx = sub i32 0, %i.nw
  %i.ny = and i32 %i.nx, 63
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = lshr i64 %i.mz, %i.nz
  %i.ob = zext nneg i8 %.sroa.5.0.copyload.i136.i to i64
  %notmask.i.i137.i = shl nsw i64 -1, %i.ob
  %i.oc = xor i64 %notmask.i.i137.i, -1
  %i.od = and i64 %i.oa, %i.oc
  %i.oe = zext i16 %.sroa.0.0.copyload.i132.i to i64
  %i.of = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 1
  store i8 %.sroa.4.0.copyload.i134.i, ptr %i.of, align 1, !tbaa !14
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ns
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.nt ; 3 uses
  %.sroa.0.0.copyload.i138.i = load i16, ptr %i.oh, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i139.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %.sroa.4.0.copyload.i140.i = load i8, ptr %.sroa.4.0..sroa_idx.i139.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 3
  %.sroa.5.0.copyload.i142.i = load i8, ptr %.sroa.5.0..sroa_idx.i141.i, align 1, !tbaa !14 ; 2 uses
  %i.oi = zext i8 %.sroa.5.0.copyload.i142.i to i32
  %i.oj = add i32 %i.nw, %i.oi                    ; 2 uses
  %i.ok = sub i32 0, %i.oj
  %i.ol = and i32 %i.ok, 63
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = lshr i64 %i.mz, %i.om
  %i.oo = zext nneg i8 %.sroa.5.0.copyload.i142.i to i64
  %notmask.i.i143.i = shl nsw i64 -1, %i.oo
  %i.op = xor i64 %notmask.i.i143.i, -1
  %i.oq = and i64 %i.on, %i.op
  %i.or = zext i16 %.sroa.0.0.copyload.i138.i to i64
  %i.os = add nuw i64 %i.oq, %i.or                ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 2
  store i8 %.sroa.4.0.copyload.i140.i, ptr %i.ot, align 1, !tbaa !14
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.od
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.oe ; 3 uses
  %.sroa.0.0.copyload.i144.i = load i16, ptr %i.ov, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i145.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 2
  %.sroa.4.0.copyload.i146.i = load i8, ptr %.sroa.4.0..sroa_idx.i145.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i147.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 3
  %.sroa.5.0.copyload.i148.i = load i8, ptr %.sroa.5.0..sroa_idx.i147.i, align 1, !tbaa !14 ; 2 uses
  %i.ow = zext i8 %.sroa.5.0.copyload.i148.i to i32
  %i.ox = add i32 %i.oj, %i.ow                    ; 4 uses
  %i.oy = sub i32 0, %i.ox
  %i.oz = and i32 %i.oy, 63
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = lshr i64 %i.mz, %i.pa
  %i.pc = zext nneg i8 %.sroa.5.0.copyload.i148.i to i64
  %notmask.i.i149.i = shl nsw i64 -1, %i.pc
  %i.pd = xor i64 %notmask.i.i149.i, -1
  %i.pe = and i64 %i.pb, %i.pd
  %i.pf = zext i16 %.sroa.0.0.copyload.i144.i to i64
  %i.pg = add nuw i64 %i.pe, %i.pf                ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 3
  store i8 %.sroa.4.0.copyload.i146.i, ptr %i.ph, align 1, !tbaa !14
  %i.pi = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 4 ; 2 uses
  %i.pj = icmp ugt i32 %i.ox, 64
  br i1 %i.pj, label %.preheader.i, label %.lr.ph64, !prof !27, !llvm.loop !0

.lr.ph278.i:                                      ; preds = %.preheader.i, %BIT_reloadDStream.exit41.i
  %i.pk = phi ptr [ %i.sh, %BIT_reloadDStream.exit41.i ], [ %.promoted288448.i, %.preheader.i ] ; 7 uses
  %.1.i277.i = phi ptr [ %i.rm, %BIT_reloadDStream.exit41.i ], [ %.037.i.i.lcssa, %.preheader.i ] ; 5 uses
  %i.pl = phi i64 [ %i.pz, %BIT_reloadDStream.exit41.i ], [ %.lcssa27, %.preheader.i ]
  %.val.i169265276.i = phi i64 [ %.val.i169266.i, %BIT_reloadDStream.exit41.i ], [ %i.ng, %.preheader.i ] ; 2 uses
  %i.pm = phi i32 [ %i.si, %BIT_reloadDStream.exit41.i ], [ %i.nf, %.preheader.i ]
  %i.pn = phi i64 [ %i.rl, %BIT_reloadDStream.exit41.i ], [ %.lcssa28, %.preheader.i ] ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.pl ; 3 uses
  %.sroa.0.0.copyload.i150.i = load i16, ptr %i.po, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  %.sroa.4.0.copyload.i152.i = load i8, ptr %.sroa.4.0..sroa_idx.i151.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i153.i = getelementptr inbounds nuw i8, ptr %i.po, i64 3
  %.sroa.5.0.copyload.i154.i = load i8, ptr %.sroa.5.0..sroa_idx.i153.i, align 1, !tbaa !14 ; 2 uses
  %i.pp = zext i8 %.sroa.5.0.copyload.i154.i to i32
  %i.pq = add i32 %i.pm, %i.pp                    ; 7 uses
  %i.pr = sub i32 0, %i.pq
  %i.ps = and i32 %i.pr, 63
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = lshr i64 %.val.i169265276.i, %i.pt
  %i.pv = zext nneg i8 %.sroa.5.0.copyload.i154.i to i64
  %notmask.i.i155.i = shl nsw i64 -1, %i.pv
  %i.pw = xor i64 %notmask.i.i155.i, -1
  %i.px = and i64 %i.pu, %i.pw
  %i.py = zext i16 %.sroa.0.0.copyload.i150.i to i64
  %i.pz = add nuw i64 %i.px, %i.py                ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.1.i277.i, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i152.i, ptr %.1.i277.i, align 1, !tbaa !14
  %i.qb = icmp ugt i32 %i.pq, 64
  br i1 %i.qb, label %bb.bb, label %bb.ax, !prof !26

bb.ax:                                            ; preds = %.lr.ph278.i
  %.not.i42.i = icmp ult ptr %i.pk, %i.kx
  br i1 %.not.i42.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qc = lshr i32 %i.pq, 3
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %i.pk, i64 %i.qe ; 2 uses
  %i.qg = and i32 %i.pq, 7
  %.val.i156.i = load i64, ptr %i.qf, align 1, !tbaa !13
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.qh = icmp eq ptr %i.pk, %i.ne
  br i1 %i.qh, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qi = lshr i32 %i.pq, 3                       ; 2 uses
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds i8, ptr %i.pk, i64 %i.qk
  %i.qm = icmp ult ptr %i.ql, %i.ne
  %i.qn = ptrtoint ptr %i.pk to i64
  %i.qo = sub i64 %i.qn, %17
  %i.qp = trunc i64 %i.qo to i32
  %.021.i44.i = select i1 %i.qm, i32 %i.qp, i32 %i.qi ; 2 uses
  %i.qq = zext i32 %.021.i44.i to i64
  %i.qr = sub nsw i64 0, %i.qq
  %i.qs = getelementptr inbounds i8, ptr %i.pk, i64 %i.qr ; 2 uses
  %i.qt = shl i32 %.021.i44.i, 3
  %i.qu = sub i32 %i.pq, %i.qt
  %.val64.i = load i64, ptr %i.qs, align 1, !tbaa !13
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph278.i
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.pn
  %.sroa.4.0..sroa_idx.i158.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 2
  %.sroa.4.0.copyload.i159.i = load i8, ptr %.sroa.4.0..sroa_idx.i158.i, align 2, !tbaa !14
  %i.qw = getelementptr inbounds nuw i8, ptr %.1.i277.i, i64 2
  store i8 %.sroa.4.0.copyload.i159.i, ptr %i.qa, align 1, !tbaa !14
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.qx = phi ptr [ %i.pk, %bb.az ], [ %i.qf, %bb.ay ], [ %i.qs, %bb.ba ] ; 7 uses
  %i.qy = phi i32 [ %i.pq, %bb.az ], [ %i.qg, %bb.ay ], [ %i.qu, %bb.ba ]
  %.val.i169267.i = phi i64 [ %.val.i169265276.i, %bb.az ], [ %.val.i156.i, %bb.ay ], [ %.val64.i, %bb.ba ] ; 2 uses
  %i.qz = icmp ugt ptr %i.qa, %i.nh
  br i1 %i.qz, label %FSE_decompress_usingDTable_generic.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.pn ; 3 uses
  %.sroa.0.0.copyload.i163.i = load i16, ptr %i.ra, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i164.i = getelementptr inbounds nuw i8, ptr %i.ra, i64 2
  %.sroa.4.0.copyload.i165.i = load i8, ptr %.sroa.4.0..sroa_idx.i164.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i166.i = getelementptr inbounds nuw i8, ptr %i.ra, i64 3
  %.sroa.5.0.copyload.i167.i = load i8, ptr %.sroa.5.0..sroa_idx.i166.i, align 1, !tbaa !14 ; 2 uses
  %i.rb = zext i8 %.sroa.5.0.copyload.i167.i to i32
  %i.rc = add i32 %i.qy, %i.rb                    ; 7 uses
  %i.rd = sub i32 0, %i.rc
  %i.re = and i32 %i.rd, 63
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = lshr i64 %.val.i169267.i, %i.rf
  %i.rh = zext nneg i8 %.sroa.5.0.copyload.i167.i to i64
  %notmask.i.i168.i = shl nsw i64 -1, %i.rh
  %i.ri = xor i64 %notmask.i.i168.i, -1
  %i.rj = and i64 %i.rg, %i.ri
  %i.rk = zext i16 %.sroa.0.0.copyload.i163.i to i64
  %i.rl = add nuw i64 %i.rj, %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %.1.i277.i, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i165.i, ptr %i.qa, align 1, !tbaa !14
  %i.rn = icmp ugt i32 %i.rc, 64
  br i1 %i.rn, label %bb.bi, label %bb.be, !prof !26

bb.be:                                            ; preds = %bb.bd
  %.not.i35.i = icmp ult ptr %i.qx, %i.kx
  br i1 %.not.i35.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ro = lshr i32 %i.rc, 3
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = sub nsw i64 0, %i.rp
  %i.rr = getelementptr inbounds i8, ptr %i.qx, i64 %i.rq ; 2 uses
  %i.rs = and i32 %i.rc, 7
  %.val.i169.i = load i64, ptr %i.rr, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit41.i

bb.bg:                                            ; preds = %bb.be
  %i.rt = icmp eq ptr %i.qx, %i.ne
  br i1 %i.rt, label %BIT_reloadDStream.exit41.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ru = lshr i32 %i.rc, 3                       ; 2 uses
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = sub nsw i64 0, %i.rv
  %i.rx = getelementptr inbounds i8, ptr %i.qx, i64 %i.rw
  %i.ry = icmp ult ptr %i.rx, %i.ne
  %i.rz = ptrtoint ptr %i.qx to i64
  %i.sa = sub i64 %i.rz, %17
  %i.sb = trunc i64 %i.sa to i32
  %.021.i37.i = select i1 %i.ry, i32 %i.sb, i32 %i.ru ; 2 uses
  %i.sc = zext i32 %.021.i37.i to i64
  %i.sd = sub nsw i64 0, %i.sc
  %i.se = getelementptr inbounds i8, ptr %i.qx, i64 %i.sd ; 2 uses
  %i.sf = shl i32 %.021.i37.i, 3
  %i.sg = sub i32 %i.rc, %i.sf
  %.val65.i = load i64, ptr %i.se, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit41.i

BIT_reloadDStream.exit41.i:                       ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.sh = phi ptr [ %i.qx, %bb.bg ], [ %i.rr, %bb.bf ], [ %i.se, %bb.bh ]
  %i.si = phi i32 [ %i.rc, %bb.bg ], [ %i.rs, %bb.bf ], [ %i.sg, %bb.bh ]
  %.val.i169266.i = phi i64 [ %.val.i169267.i, %bb.bg ], [ %.val.i169.i, %bb.bf ], [ %.val65.i, %bb.bh ]
  %i.sj = icmp ugt ptr %i.rm, %i.nh
  br i1 %i.sj, label %FSE_decompress_usingDTable_generic.exit.i, label %.lr.ph278.i

bb.bi:                                            ; preds = %bb.bd
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.pz
  %.sroa.4.0..sroa_idx.i171.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  %.sroa.4.0.copyload.i172.i = load i8, ptr %.sroa.4.0..sroa_idx.i171.i, align 2, !tbaa !14
  %i.sl = getelementptr inbounds nuw i8, ptr %.1.i277.i, i64 3
  store i8 %.sroa.4.0.copyload.i172.i, ptr %i.rm, align 1, !tbaa !14
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bb
  %.2.i.i = phi ptr [ %i.qw, %bb.bb ], [ %i.sl, %bb.bi ]
  %i.sm = ptrtoint ptr %.2.i.i to i64
  %i.sn = ptrtoint ptr %0 to i64
  %i.so = sub i64 %i.sm, %i.sn
  br label %FSE_decompress_usingDTable_generic.exit.i

FSE_decompress_usingDTable_generic.exit.i:        ; preds = %BIT_reloadDStream.exit41.i, %bb.bc, %bb.bj, %.preheader.i, %bb.ap, %bb.ao
  %.139.i.i = phi i64 [ %i.kp, %bb.ao ], [ -20, %bb.ap ], [ %i.so, %bb.bj ], [ -70, %.preheader.i ], [ -70, %bb.bc ], [ -70, %BIT_reloadDStream.exit41.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %FSE_decompress_wksp_body_default.exit

FSE_decompress_wksp_body_default.exit:            ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %FSE_decompress_usingDTable_generic.exit12.i, %FSE_decompress_usingDTable_generic.exit.i
  %.3.i.i = phi i64 [ %.139.i.i, %FSE_decompress_usingDTable_generic.exit.i ], [ -1, %bb.c ], [ -44, %bb.f ], [ %i.ag, %bb.g ], [ %.139.i8.i, %FSE_decompress_usingDTable_generic.exit12.i ], [ -44, %bb.e ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.bk

bb.bk:                                            ; preds = %FSE_decompress_wksp_body_default.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.3.i.i, %FSE_decompress_wksp_body_default.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 19 uses
  %8 = alloca %struct.FSE_DState_t, align 8       ; 6 uses
  %9 = alloca %struct.FSE_DState_t, align 8       ; 6 uses
  %10 = alloca %struct.BIT_DStream_t, align 8     ; 14 uses
  %11 = alloca %struct.FSE_DState_t, align 8      ; 6 uses
  %12 = alloca %struct.FSE_DState_t, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 6 uses
  %i.d = icmp ult i64 %6, 512
  br i1 %i.d, label %FSE_decompress_wksp_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, i32 noundef 1) #11 ; 4 uses
  %i.f = icmp ult i64 %i.e, -119
  br i1 %i.f, label %bb.c, label %FSE_decompress_wksp_body.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4, !tbaa !15   ; 4 uses
  %i.h = icmp ugt i32 %i.g, %4
  br i1 %i.h, label %FSE_decompress_wksp_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.e ; 11 uses
  %i.j = sub i64 %3, %i.e                         ; 7 uses
  %i.k = shl nuw i32 1, %i.g                      ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 2
  %i.m = sext i32 %i.l to i64
  %i.n = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
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
  %i.aa = add nuw nsw i32 %i.k, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %.neg191 = add i64 %6, -512
  %i.ae = sub i64 %.neg191, %i.ac
  %i.af = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %i.c, ptr noundef %5, i32 noundef %i.n, i32 noundef %i.g, ptr noundef nonnull %i.ad, i64 noundef %i.ae) ; 2 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.f, label %FSE_decompress_wksp_body.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 514
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !17
  %.not48.i = icmp eq i16 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -3 ; 2 uses
  br i1 %.not48.i, label %bb.an, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %FSE_decompress_usingDTable_generic.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.am, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !22
  %i.ap = icmp ugt i64 %i.j, 7
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !23
  %.val.i = load i64, ptr %i.ar, align 1          ; 2 uses
  store i64 %.val.i, ptr %7, align 8, !tbaa !24
  %i.at = lshr i64 %.val.i, 56                    ; 2 uses
  %.not51.i = icmp eq i64 %i.at, 0
  br i1 %.not51.i, label %FSE_decompress_usingDTable_generic.exit12, label %BIT_initDStream.exit

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.i, ptr %i.au, align 8, !tbaa !23
  %i.av = load i8, ptr %i.i, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i64                    ; 7 uses
  store i64 %i.aw, ptr %7, align 8, !tbaa !24
  switch i64 %i.j, label %bb.q [
    i64 7, label %bb.k
    i64 6, label %bb.l
    i64 5, label %bb.m
    i64 4, label %bb.n
    i64 3, label %bb.o
    i64 2, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 48
  %i.bb = or disjoint i64 %i.ba, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi i64 [ %i.bb, %bb.k ], [ %i.aw, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 40
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bi = phi i64 [ %i.bh, %bb.l ], [ %i.aw, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 32
  %i.bn = add nuw nsw i64 %i.bm, %i.bi
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bo = phi i64 [ %i.bn, %bb.m ], [ %i.aw, %bb.j ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.bs, %i.bo
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.bu = phi i64 [ %i.bt, %bb.n ], [ %i.aw, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.bx = zext i8 %i.bw to i64
end_hunk_0
