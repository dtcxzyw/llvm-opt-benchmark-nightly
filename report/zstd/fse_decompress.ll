Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/fse_decompress?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FSE_decompress_wksp_bmi2:bb.a
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6)
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 255, ptr %i.b, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 6 uses
  %i.e = icmp ult i64 %6, 512
  br i1 %i.e, label %FSE_decompress_wksp_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
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
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23 ; 7 uses
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
  %i.dh = load ptr, ptr %i.an, align 8, !tbaa !21 ; 7 uses
  %i.di = icmp eq ptr %i.da, %i.dh
  br i1 %i.di, label %.BIT_reloadDStream.exit34_crit_edge.i, label %BIT_reloadDStream.exit34.i

.BIT_reloadDStream.exit34_crit_edge.i:            ; preds = %bb.w
  %.promoted212.pre.i = load i64, ptr %8, align 8
  br label %BIT_reloadDStream.exit34.i.thread

BIT_reloadDStream.exit34.i.thread:                ; preds = %.BIT_reloadDStream.exit34_crit_edge.i, %bb.v
  %.promoted219.i.ph = phi ptr [ %i.df, %bb.v ], [ %i.da, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.ph153 = phi ptr [ %.pre.i, %bb.v ], [ %i.dh, %.BIT_reloadDStream.exit34_crit_edge.i ] ; 2 uses
  %.promoted212.i.ph = phi i64 [ %.val.i72.i, %bb.v ], [ %.promoted212.pre.i, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted.i.ph = phi i32 [ %i.dg, %bb.v ], [ %i.cx, %.BIT_reloadDStream.exit34_crit_edge.i ]
  %.promoted215.i157 = load i64, ptr %9, align 8
  %.promoted217.i158 = load i64, ptr %10, align 8
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
  %i.dr = getelementptr inbounds i8, ptr %i.da, i64 %i.dq
  %i.ds = icmp ult ptr %i.dr, %i.dh
  %i.dt = ptrtoint ptr %i.da to i64
  %i.du = ptrtoint ptr %i.dh to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  %.021.i30.i = select i1 %i.ds, i32 %i.dw, i32 %i.do ; 2 uses
  %i.dx = zext i32 %.021.i30.i to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.da, i64 %i.dy ; 2 uses
  %i.ea = shl i32 %.021.i30.i, 3
  %i.eb = sub i32 %i.cx, %i.ea                    ; 3 uses
  %.val66.i = load i64, ptr %i.dz, align 1, !tbaa !13 ; 3 uses
  store i64 %.val66.i, ptr %8, align 8, !tbaa !24
  %.promoted215.i = load i64, ptr %9, align 8     ; 2 uses
  %.promoted217.i = load i64, ptr %10, align 8    ; 2 uses
  %i.ec = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = icmp ugt i32 %i.eb, 64
  br i1 %i.eh, label %.preheader193.i, label %.lr.ph.preheader, !prof !43

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit34.i.thread, %BIT_reloadDStream.exit34.i
  %i.ei = phi ptr [ %i.dn, %BIT_reloadDStream.exit34.i.thread ], [ %i.eg, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %i.ej = phi ptr [ %i.dl, %BIT_reloadDStream.exit34.i.thread ], [ %i.ee, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %i.ek = phi i64 [ %i.dj, %BIT_reloadDStream.exit34.i.thread ], [ %i.ec, %BIT_reloadDStream.exit34.i ] ; 4 uses
  %.promoted217.i163 = phi i64 [ %.promoted217.i158, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted217.i, %BIT_reloadDStream.exit34.i ]
  %.promoted215.i162 = phi i64 [ %.promoted215.i157, %BIT_reloadDStream.exit34.i.thread ], [ %.promoted215.i, %BIT_reloadDStream.exit34.i ]
  %.promoted.i161 = phi i32 [ %.promoted.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.eb, %BIT_reloadDStream.exit34.i ]
  %.promoted212.i160 = phi i64 [ %.promoted212.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %.val66.i, %BIT_reloadDStream.exit34.i ]
  %i.el = phi ptr [ %.ph153, %BIT_reloadDStream.exit34.i.thread ], [ %i.dh, %BIT_reloadDStream.exit34.i ] ; 5 uses
  %.promoted219.i159 = phi ptr [ %.promoted219.i.ph, %BIT_reloadDStream.exit34.i.thread ], [ %i.dz, %BIT_reloadDStream.exit34.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %.037.i9.i44 = phi ptr [ %i.hm, %bb.aa ], [ %0, %.lr.ph.preheader ] ; 8 uses
  %i.em = phi i32 [ %i.hi, %bb.aa ], [ %.promoted.i161, %.lr.ph.preheader ] ; 5 uses
  %.val.i.i213.i43 = phi i64 [ %.val.i.i214.i, %bb.aa ], [ %.promoted212.i160, %.lr.ph.preheader ]
  %i.en = phi i64 [ %i.gw, %bb.aa ], [ %.promoted215.i162, %.lr.ph.preheader ] ; 3 uses
  %i.eo = phi i64 [ %i.hk, %bb.aa ], [ %.promoted217.i163, %.lr.ph.preheader ] ; 3 uses
  %i.ep = phi ptr [ %.promoted246.i, %bb.aa ], [ %.promoted219.i159, %.lr.ph.preheader ] ; 6 uses
  %.not.i21.i = icmp ult ptr %i.ep, %i.db
  br i1 %.not.i21.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.eq = lshr i32 %i.em, 3
  %i.er = and i32 %i.em, 7
  br label %BIT_reloadDStream.exit27.i

bb.y:                                             ; preds = %.lr.ph
  %i.es = icmp eq ptr %i.ep, %i.el
  br i1 %i.es, label %.preheader193.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = lshr i32 %i.em, 3                       ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ep, i64 %i.ev
  %i.ex = icmp uge ptr %i.ew, %i.el               ; 2 uses
  %i.ey = ptrtoint ptr %i.ep to i64
  %i.ez = sub i64 %i.ey, %i.ek
  %i.fa = trunc i64 %i.ez to i32
  %.021.i23.i = select i1 %i.ex, i32 %i.et, i32 %i.fa ; 2 uses
  %i.fb = shl i32 %.021.i23.i, 3
  %i.fc = sub i32 %i.em, %i.fb
  br label %BIT_reloadDStream.exit27.i

BIT_reloadDStream.exit27.i:                       ; preds = %bb.z, %bb.x
  %.pn486.in.i = phi i32 [ %.021.i23.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.fd = phi i32 [ %i.fc, %bb.z ], [ %i.er, %bb.x ] ; 3 uses
  %.022.i22.i = phi i1 [ %i.ex, %bb.z ], [ true, %bb.x ]
  %.pn486.i = zext i32 %.pn486.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn486.i
  %.promoted246.i = getelementptr inbounds i8, ptr %i.ep, i64 %.pn.i ; 3 uses
  %.val.i.i214.i = load i64, ptr %.promoted246.i, align 1, !tbaa !13 ; 7 uses
  %i.fe = icmp ult ptr %.037.i9.i44, %i.al
  %i.ff = and i1 %i.fe, %.022.i22.i
  br i1 %i.ff, label %bb.aa, label %.preheader193.i

.preheader193.i:                                  ; preds = %bb.aa, %bb.y, %BIT_reloadDStream.exit27.i, %BIT_reloadDStream.exit34.i
  %i.fg = phi ptr [ %i.eg, %BIT_reloadDStream.exit34.i ], [ %i.ei, %BIT_reloadDStream.exit27.i ], [ %i.ei, %bb.y ], [ %i.ei, %bb.aa ] ; 2 uses
  %i.fh = phi ptr [ %i.ee, %BIT_reloadDStream.exit34.i ], [ %i.ej, %BIT_reloadDStream.exit27.i ], [ %i.ej, %bb.y ], [ %i.ej, %bb.aa ] ; 2 uses
  %i.fi = phi i64 [ %i.ec, %BIT_reloadDStream.exit34.i ], [ %i.ek, %BIT_reloadDStream.exit27.i ], [ %i.ek, %bb.y ], [ %i.ek, %bb.aa ] ; 2 uses
  %i.fj = phi ptr [ %i.dh, %BIT_reloadDStream.exit34.i ], [ %i.el, %BIT_reloadDStream.exit27.i ], [ %i.el, %bb.y ], [ %i.el, %bb.aa ] ; 4 uses
  %.lcssa42 = phi i64 [ %.promoted217.i, %BIT_reloadDStream.exit34.i ], [ %i.hk, %bb.aa ], [ %i.eo, %bb.y ], [ %i.eo, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.lcssa41 = phi i64 [ %.promoted215.i, %BIT_reloadDStream.exit34.i ], [ %i.gw, %bb.aa ], [ %i.en, %bb.y ], [ %i.en, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.037.i9.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit34.i ], [ %i.hm, %bb.aa ], [ %.037.i9.i44, %bb.y ], [ %.037.i9.i44, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %i.fk = phi i32 [ %i.eb, %BIT_reloadDStream.exit34.i ], [ %i.hi, %bb.aa ], [ %i.em, %bb.y ], [ %i.fd, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.val.i.i214445.i = phi i64 [ %.val66.i, %BIT_reloadDStream.exit34.i ], [ %.val.i.i214.i, %bb.aa ], [ %.val.i.i213.i43, %bb.y ], [ %.val.i.i214.i, %BIT_reloadDStream.exit27.i ] ; 2 uses
  %.promoted246444.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit34.i ], [ @BIT_reloadDStream.zeroFilled, %bb.aa ], [ %i.ep, %bb.y ], [ %.promoted246.i, %BIT_reloadDStream.exit27.i ] ; 2 uses
  store ptr %.promoted246444.i, ptr %i.cz, align 8
  store i32 %i.fk, ptr %i.cw, align 8
  store i64 %.val.i.i214445.i, ptr %8, align 8
  store i64 %.lcssa41, ptr %9, align 8
  store i64 %.lcssa42, ptr %10, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.ak, i64 -2 ; 3 uses
  %i.fm = icmp ugt ptr %.037.i9.i.lcssa, %i.fl
  br i1 %i.fm, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.aa:                                            ; preds = %BIT_reloadDStream.exit27.i
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.en ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.fn, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !tbaa !14
  %i.fo = zext i8 %.sroa.5.0.copyload.i.i to i32  ; 2 uses
  %i.fp = and i32 %i.fd, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl i64 %.val.i.i214.i, %i.fq
  %i.fs = sub nsw i32 0, %i.fo
  %i.ft = and i32 %i.fs, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 %i.fr, %i.fu
  %i.fw = add i32 %i.fd, %i.fo                    ; 2 uses
  %i.fx = zext i16 %.sroa.0.0.copyload.i.i to i64
  store i8 %.sroa.4.0.copyload.i.i, ptr %.037.i9.i44, align 1, !tbaa !14
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eo ; 3 uses
  %.sroa.0.0.copyload.i74.i = load i16, ptr %i.fy, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %.sroa.4.0.copyload.i76.i = load i8, ptr %.sroa.4.0..sroa_idx.i75.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %.sroa.5.0.copyload.i78.i = load i8, ptr %.sroa.5.0..sroa_idx.i77.i, align 1, !tbaa !14
  %i.fz = zext i8 %.sroa.5.0.copyload.i78.i to i32 ; 2 uses
  %i.ga = and i32 %i.fw, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl i64 %.val.i.i214.i, %i.gb
  %i.gd = sub nsw i32 0, %i.fz
  %i.ge = and i32 %i.gd, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = lshr i64 %i.gc, %i.gf
  %i.gh = add i32 %i.fw, %i.fz                    ; 2 uses
  %i.gi = zext i16 %.sroa.0.0.copyload.i74.i to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 1
  store i8 %.sroa.4.0.copyload.i76.i, ptr %i.gj, align 1, !tbaa !14
  %i.gk = getelementptr [4 x i8], ptr %i.ej, i64 %i.fv
  %i.gl = getelementptr [4 x i8], ptr %i.gk, i64 %i.fx ; 3 uses
  %.sroa.0.0.copyload.i81.i = load i16, ptr %i.gl, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %.sroa.4.0.copyload.i83.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 3
  %.sroa.5.0.copyload.i85.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i, align 1, !tbaa !14
  %i.gm = zext i8 %.sroa.5.0.copyload.i85.i to i32 ; 2 uses
  %i.gn = and i32 %i.gh, 63
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl i64 %.val.i.i214.i, %i.go
  %i.gq = sub nsw i32 0, %i.gm
  %i.gr = and i32 %i.gq, 63
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = lshr i64 %i.gp, %i.gs
  %i.gu = add i32 %i.gh, %i.gm                    ; 2 uses
  %i.gv = zext i16 %.sroa.0.0.copyload.i81.i to i64
  %i.gw = add i64 %i.gt, %i.gv                    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 2
  store i8 %.sroa.4.0.copyload.i83.i, ptr %i.gx, align 1, !tbaa !14
  %i.gy = getelementptr [4 x i8], ptr %i.ei, i64 %i.gg
  %i.gz = getelementptr [4 x i8], ptr %i.gy, i64 %i.gi ; 3 uses
  %.sroa.0.0.copyload.i88.i = load i16, ptr %i.gz, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %.sroa.4.0.copyload.i90.i = load i8, ptr %.sroa.4.0..sroa_idx.i89.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 3
  %.sroa.5.0.copyload.i92.i = load i8, ptr %.sroa.5.0..sroa_idx.i91.i, align 1, !tbaa !14
  %i.ha = zext i8 %.sroa.5.0.copyload.i92.i to i32 ; 2 uses
  %i.hb = and i32 %i.gu, 63
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = shl i64 %.val.i.i214.i, %i.hc
  %i.he = sub nsw i32 0, %i.ha
  %i.hf = and i32 %i.he, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.hd, %i.hg
  %i.hi = add i32 %i.gu, %i.ha                    ; 3 uses
  %i.hj = zext i16 %.sroa.0.0.copyload.i88.i to i64
  %i.hk = add i64 %i.hh, %i.hj                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 3
  store i8 %.sroa.4.0.copyload.i90.i, ptr %i.hl, align 1, !tbaa !14
  %i.hm = getelementptr inbounds nuw i8, ptr %.037.i9.i44, i64 4 ; 2 uses
  %i.hn = icmp ugt i32 %i.hi, 64
  br i1 %i.hn, label %.preheader193.i, label %.lr.ph, !prof !27, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader193.i, %BIT_reloadDStream.exit.i
  %i.ho = phi ptr [ %i.kl, %BIT_reloadDStream.exit.i ], [ %.promoted246444.i, %.preheader193.i ] ; 7 uses
  %.1.i10237.i = phi ptr [ %i.jq, %BIT_reloadDStream.exit.i ], [ %.037.i9.i.lcssa, %.preheader193.i ] ; 5 uses
  %i.hp = phi i64 [ %i.id, %BIT_reloadDStream.exit.i ], [ %.lcssa41, %.preheader193.i ]
  %.val.i117225236.i = phi i64 [ %.val.i117226.i, %BIT_reloadDStream.exit.i ], [ %.val.i.i214445.i, %.preheader193.i ] ; 2 uses
  %i.hq = phi i32 [ %i.km, %BIT_reloadDStream.exit.i ], [ %i.fk, %.preheader193.i ] ; 2 uses
  %i.hr = phi i64 [ %i.jp, %BIT_reloadDStream.exit.i ], [ %.lcssa42, %.preheader193.i ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.hp ; 3 uses
  %.sroa.0.0.copyload.i95.i = load i16, ptr %i.hs, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i96.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %.sroa.4.0.copyload.i97.i = load i8, ptr %.sroa.4.0..sroa_idx.i96.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  %.sroa.5.0.copyload.i99.i = load i8, ptr %.sroa.5.0..sroa_idx.i98.i, align 1, !tbaa !14
  %i.ht = zext i8 %.sroa.5.0.copyload.i99.i to i32 ; 2 uses
  %i.hu = and i32 %i.hq, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl i64 %.val.i117225236.i, %i.hv
  %i.hx = sub nsw i32 0, %i.ht
  %i.hy = and i32 %i.hx, 63
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = lshr i64 %i.hw, %i.hz
  %i.ib = add i32 %i.hq, %i.ht                    ; 6 uses
  %i.ic = zext i16 %.sroa.0.0.copyload.i95.i to i64
  %i.id = add i64 %i.ia, %i.ic                    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i97.i, ptr %.1.i10237.i, align 1, !tbaa !14
  %i.if = icmp ugt i32 %i.ib, 64
  br i1 %i.if, label %bb.af, label %bb.ab, !prof !26

bb.ab:                                            ; preds = %.lr.ph.i
  %.not.i14.i = icmp ult ptr %i.ho, %i.db
  br i1 %.not.i14.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = lshr i32 %i.ib, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = sub nsw i64 0, %i.ih
  %i.ij = getelementptr inbounds i8, ptr %i.ho, i64 %i.ii ; 2 uses
  %i.ik = and i32 %i.ib, 7
  %.val.i102.i = load i64, ptr %i.ij, align 1, !tbaa !13
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.il = icmp eq ptr %i.ho, %i.fj
  br i1 %i.il, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.im = lshr i32 %i.ib, 3                       ; 2 uses
  %i.in = zext nneg i32 %i.im to i64
  %i.io = sub nsw i64 0, %i.in
  %i.ip = getelementptr inbounds i8, ptr %i.ho, i64 %i.io
  %i.iq = icmp ult ptr %i.ip, %i.fj
  %i.ir = ptrtoint ptr %i.ho to i64
  %i.is = sub i64 %i.ir, %i.fi
  %i.it = trunc i64 %i.is to i32
  %.021.i16.i = select i1 %i.iq, i32 %i.it, i32 %i.im ; 2 uses
  %i.iu = zext i32 %.021.i16.i to i64
  %i.iv = sub nsw i64 0, %i.iu
  %i.iw = getelementptr inbounds i8, ptr %i.ho, i64 %i.iv ; 2 uses
  %i.ix = shl i32 %.021.i16.i, 3
  %i.iy = sub i32 %i.ib, %i.ix
  %.val68.i = load i64, ptr %i.iw, align 1, !tbaa !13
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hr
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %.sroa.4.0.copyload.i105.i = load i8, ptr %.sroa.4.0..sroa_idx.i104.i, align 2, !tbaa !14
  %i.ja = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 2
  store i8 %.sroa.4.0.copyload.i105.i, ptr %i.ie, align 1, !tbaa !14
  br label %bb.an

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.jb = phi ptr [ %i.ho, %bb.ad ], [ %i.ij, %bb.ac ], [ %i.iw, %bb.ae ] ; 7 uses
  %i.jc = phi i32 [ %i.ib, %bb.ad ], [ %i.ik, %bb.ac ], [ %i.iy, %bb.ae ] ; 2 uses
  %.val.i117227.i = phi i64 [ %.val.i117225236.i, %bb.ad ], [ %.val.i102.i, %bb.ac ], [ %.val68.i, %bb.ae ] ; 2 uses
  %i.jd = icmp ugt ptr %i.ie, %i.fl
  br i1 %i.jd, label %FSE_decompress_usingDTable_generic.exit12.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hr ; 3 uses
  %.sroa.0.0.copyload.i110.i = load i16, ptr %i.je, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %.sroa.4.0.copyload.i112.i = load i8, ptr %.sroa.4.0..sroa_idx.i111.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  %.sroa.5.0.copyload.i114.i = load i8, ptr %.sroa.5.0..sroa_idx.i113.i, align 1, !tbaa !14
  %i.jf = zext i8 %.sroa.5.0.copyload.i114.i to i32 ; 2 uses
  %i.jg = and i32 %i.jc, 63
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl i64 %.val.i117227.i, %i.jh
  %i.jj = sub nsw i32 0, %i.jf
  %i.jk = and i32 %i.jj, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = lshr i64 %i.ji, %i.jl
  %i.jn = add i32 %i.jc, %i.jf                    ; 6 uses
  %i.jo = zext i16 %.sroa.0.0.copyload.i110.i to i64
  %i.jp = add i64 %i.jm, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i112.i, ptr %i.ie, align 1, !tbaa !14
  %i.jr = icmp ugt i32 %i.jn, 64
  br i1 %i.jr, label %bb.am, label %bb.ai, !prof !26

bb.ai:                                            ; preds = %bb.ah
  %.not.i13.i = icmp ult ptr %i.jb, %i.db
  br i1 %.not.i13.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.js = lshr i32 %i.jn, 3
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.jb, i64 %i.ju ; 2 uses
  %i.jw = and i32 %i.jn, 7
  %.val.i117.i = load i64, ptr %i.jv, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.jx = icmp eq ptr %i.jb, %i.fj
  br i1 %i.jx, label %BIT_reloadDStream.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jy = lshr i32 %i.jn, 3                       ; 2 uses
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = sub nsw i64 0, %i.jz
  %i.kb = getelementptr inbounds i8, ptr %i.jb, i64 %i.ka
  %i.kc = icmp ult ptr %i.kb, %i.fj
  %i.kd = ptrtoint ptr %i.jb to i64
  %i.ke = sub i64 %i.kd, %i.fi
  %i.kf = trunc i64 %i.ke to i32
  %.021.i.i = select i1 %i.kc, i32 %i.kf, i32 %i.jy ; 2 uses
  %i.kg = zext i32 %.021.i.i to i64
  %i.kh = sub nsw i64 0, %i.kg
  %i.ki = getelementptr inbounds i8, ptr %i.jb, i64 %i.kh ; 2 uses
  %i.kj = shl i32 %.021.i.i, 3
  %i.kk = sub i32 %i.jn, %i.kj
  %.val69.i = load i64, ptr %i.ki, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.al, %bb.ak, %bb.aj
  %i.kl = phi ptr [ %i.jb, %bb.ak ], [ %i.jv, %bb.aj ], [ %i.ki, %bb.al ]
  %i.km = phi i32 [ %i.jn, %bb.ak ], [ %i.jw, %bb.aj ], [ %i.kk, %bb.al ]
  %.val.i117226.i = phi i64 [ %.val.i117227.i, %bb.ak ], [ %.val.i117.i, %bb.aj ], [ %.val69.i, %bb.al ]
  %i.kn = icmp ugt ptr %i.jq, %i.fl
  br i1 %i.kn, label %FSE_decompress_usingDTable_generic.exit12.i, label %.lr.ph.i

bb.am:                                            ; preds = %bb.ah
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.id
  %.sroa.4.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %.sroa.4.0.copyload.i120.i = load i8, ptr %.sroa.4.0..sroa_idx.i119.i, align 2, !tbaa !14
  %i.kp = getelementptr inbounds nuw i8, ptr %.1.i10237.i, i64 3
  store i8 %.sroa.4.0.copyload.i120.i, ptr %i.jq, align 1, !tbaa !14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.2.i11.i = phi ptr [ %i.ja, %bb.af ], [ %i.kp, %bb.am ]
  %i.kq = ptrtoint ptr %.2.i11.i to i64
  %i.kr = ptrtoint ptr %0 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  br label %FSE_decompress_usingDTable_generic.exit12.i

FSE_decompress_usingDTable_generic.exit12.i:      ; preds = %BIT_reloadDStream.exit.i, %bb.ag, %bb.an, %.preheader193.i, %bb.t, %BIT_initDStream.exit.i, %bb.s, %bb.k, %bb.i
  %.139.i8.i = phi i64 [ %i.k, %BIT_initDStream.exit.i ], [ -20, %bb.s ], [ %i.ks, %bb.an ], [ -1, %bb.k ], [ -20, %bb.t ], [ -72, %bb.i ], [ -70, %.preheader193.i ], [ -70, %bb.ag ], [ -70, %BIT_reloadDStream.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %FSE_decompress_wksp_body_default.exit

bb.ao:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.kt = call fastcc i64 @BIT_initDStream(ptr noundef %11, ptr noundef %i.j, i64 noundef %i.k) ; 2 uses
  %i.ku = icmp ult i64 %i.kt, -119
  br i1 %i.ku, label %bb.ap, label %FSE_decompress_usingDTable_generic.exit.i

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %11, ptr noundef nonnull %i.d)
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %i.d)
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !25 ; 6 uses
  %i.kx = icmp ugt i32 %i.kw, 64
  br i1 %i.kx, label %FSE_decompress_usingDTable_generic.exit.i, label %bb.aq, !prof !26

bb.aq:                                            ; preds = %bb.ap
  %i.ky = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !23 ; 7 uses
  %i.la = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !22 ; 4 uses
  %.not.i56.i = icmp ult ptr %i.kz, %i.lb
  br i1 %.not.i56.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lc = lshr i32 %i.kw, 3
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = sub nsw i64 0, %i.ld
  %i.lf = getelementptr inbounds i8, ptr %i.kz, i64 %i.le ; 2 uses
  %i.lg = and i32 %i.kw, 7
  %.val.i125.i = load i64, ptr %i.lf, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i125.i, ptr %11, align 8, !tbaa !24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre390.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %BIT_reloadDStream.exit62.i.thread

bb.as:                                            ; preds = %bb.aq
  %i.lh = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !21 ; 7 uses
  %i.lj = icmp eq ptr %i.kz, %i.li
  br i1 %i.lj, label %.BIT_reloadDStream.exit62_crit_edge.i, label %BIT_reloadDStream.exit62.i

.BIT_reloadDStream.exit62_crit_edge.i:            ; preds = %bb.as
  %.promoted253.pre.i = load i64, ptr %11, align 8
  br label %BIT_reloadDStream.exit62.i.thread

BIT_reloadDStream.exit62.i.thread:                ; preds = %.BIT_reloadDStream.exit62_crit_edge.i, %bb.ar
  %.promoted259.i.ph = phi ptr [ %i.lf, %bb.ar ], [ %i.kz, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.ph164 = phi ptr [ %.pre390.i, %bb.ar ], [ %i.li, %.BIT_reloadDStream.exit62_crit_edge.i ] ; 2 uses
  %.promoted253.i.ph = phi i64 [ %.val.i125.i, %bb.ar ], [ %.promoted253.pre.i, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted251.i.ph = phi i32 [ %i.lg, %bb.ar ], [ %i.kw, %.BIT_reloadDStream.exit62_crit_edge.i ]
  %.promoted255.i168 = load i64, ptr %12, align 8
  %.promoted257.i169 = load i64, ptr %13, align 8
  %i.lk = ptrtoint ptr %.ph164 to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8
  br label %.lr.ph64.preheader

BIT_reloadDStream.exit62.i:                       ; preds = %bb.as
  %i.lp = lshr i32 %i.kw, 3                       ; 2 uses
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds i8, ptr %i.kz, i64 %i.lr
  %i.lt = icmp ult ptr %i.ls, %i.li
  %i.lu = ptrtoint ptr %i.kz to i64
  %i.lv = ptrtoint ptr %i.li to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = trunc i64 %i.lw to i32
  %.021.i58.i = select i1 %i.lt, i32 %i.lx, i32 %i.lp ; 2 uses
  %i.ly = zext i32 %.021.i58.i to i64
  %i.lz = sub nsw i64 0, %i.ly
  %i.ma = getelementptr inbounds i8, ptr %i.kz, i64 %i.lz ; 2 uses
  %i.mb = shl i32 %.021.i58.i, 3
  %i.mc = sub i32 %i.kw, %i.mb                    ; 3 uses
  %.val.i = load i64, ptr %i.ma, align 1, !tbaa !13 ; 3 uses
  store i64 %.val.i, ptr %11, align 8, !tbaa !24
  %.promoted255.i = load i64, ptr %12, align 8    ; 2 uses
  %.promoted257.i = load i64, ptr %13, align 8    ; 2 uses
  %i.md = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.mf = load ptr, ptr %i.me, align 8            ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8            ; 2 uses
  %i.mi = icmp ugt i32 %i.mc, 64
  br i1 %i.mi, label %.preheader.i, label %.lr.ph64.preheader, !prof !43

.lr.ph64.preheader:                               ; preds = %BIT_reloadDStream.exit62.i.thread, %BIT_reloadDStream.exit62.i
  %i.mj = phi ptr [ %i.lo, %BIT_reloadDStream.exit62.i.thread ], [ %i.mh, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %i.mk = phi ptr [ %i.lm, %BIT_reloadDStream.exit62.i.thread ], [ %i.mf, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %i.ml = phi i64 [ %i.lk, %BIT_reloadDStream.exit62.i.thread ], [ %i.md, %BIT_reloadDStream.exit62.i ] ; 4 uses
  %.promoted257.i174 = phi i64 [ %.promoted257.i169, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted257.i, %BIT_reloadDStream.exit62.i ]
  %.promoted255.i173 = phi i64 [ %.promoted255.i168, %BIT_reloadDStream.exit62.i.thread ], [ %.promoted255.i, %BIT_reloadDStream.exit62.i ]
  %.promoted251.i172 = phi i32 [ %.promoted251.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.mc, %BIT_reloadDStream.exit62.i ]
  %.promoted253.i171 = phi i64 [ %.promoted253.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %.val.i, %BIT_reloadDStream.exit62.i ]
  %i.mm = phi ptr [ %.ph164, %BIT_reloadDStream.exit62.i.thread ], [ %i.li, %BIT_reloadDStream.exit62.i ] ; 5 uses
  %.promoted259.i170 = phi ptr [ %.promoted259.i.ph, %BIT_reloadDStream.exit62.i.thread ], [ %i.ma, %BIT_reloadDStream.exit62.i ]
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %bb.aw
  %.037.i.i63 = phi ptr [ %i.pq, %bb.aw ], [ %0, %.lr.ph64.preheader ] ; 8 uses
  %i.mn = phi i32 [ %i.pf, %bb.aw ], [ %.promoted251.i172, %.lr.ph64.preheader ] ; 5 uses
  %i.mo = phi i64 [ %i.ng, %bb.aw ], [ %.promoted253.i171, %.lr.ph64.preheader ]
  %i.mp = phi i64 [ %i.pa, %bb.aw ], [ %.promoted255.i173, %.lr.ph64.preheader ] ; 3 uses
  %i.mq = phi i64 [ %i.po, %bb.aw ], [ %.promoted257.i174, %.lr.ph64.preheader ] ; 3 uses
  %i.mr = phi ptr [ %.promoted288.i, %bb.aw ], [ %.promoted259.i170, %.lr.ph64.preheader ] ; 6 uses
  %.not.i49.i = icmp ult ptr %i.mr, %i.lb
  br i1 %.not.i49.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph64
  %i.ms = lshr i32 %i.mn, 3
  %i.mt = and i32 %i.mn, 7
  br label %BIT_reloadDStream.exit55.i

bb.au:                                            ; preds = %.lr.ph64
  %i.mu = icmp eq ptr %i.mr, %i.mm
  br i1 %i.mu, label %.preheader.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mv = lshr i32 %i.mn, 3                       ; 2 uses
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = sub nsw i64 0, %i.mw
  %i.my = getelementptr inbounds i8, ptr %i.mr, i64 %i.mx
  %i.mz = icmp uge ptr %i.my, %i.mm               ; 2 uses
  %i.na = ptrtoint ptr %i.mr to i64
  %i.nb = sub i64 %i.na, %i.ml
  %i.nc = trunc i64 %i.nb to i32
  %.021.i51.i = select i1 %i.mz, i32 %i.mv, i32 %i.nc ; 2 uses
  %i.nd = shl i32 %.021.i51.i, 3
  %i.ne = sub i32 %i.mn, %i.nd
  br label %BIT_reloadDStream.exit55.i

BIT_reloadDStream.exit55.i:                       ; preds = %bb.av, %bb.at
  %.pn488.in.i = phi i32 [ %.021.i51.i, %bb.av ], [ %i.ms, %bb.at ]
  %i.nf = phi i32 [ %i.ne, %bb.av ], [ %i.mt, %bb.at ] ; 2 uses
  %.022.i50.i = phi i1 [ %i.mz, %bb.av ], [ true, %bb.at ]
  %.pn488.i = zext i32 %.pn488.in.i to i64
  %.pn487.i = sub nsw i64 0, %.pn488.i
  %.promoted288.i = getelementptr inbounds i8, ptr %i.mr, i64 %.pn487.i ; 3 uses
  %i.ng = load i64, ptr %.promoted288.i, align 1, !tbaa !13 ; 7 uses
  %i.nh = icmp ult ptr %.037.i.i63, %i.al
  %i.ni = and i1 %i.nh, %.022.i50.i
  br i1 %i.ni, label %bb.aw, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aw, %bb.au, %BIT_reloadDStream.exit55.i, %BIT_reloadDStream.exit62.i
  %i.nj = phi ptr [ %i.mh, %BIT_reloadDStream.exit62.i ], [ %i.mj, %BIT_reloadDStream.exit55.i ], [ %i.mj, %bb.au ], [ %i.mj, %bb.aw ] ; 2 uses
  %i.nk = phi ptr [ %i.mf, %BIT_reloadDStream.exit62.i ], [ %i.mk, %BIT_reloadDStream.exit55.i ], [ %i.mk, %bb.au ], [ %i.mk, %bb.aw ] ; 2 uses
  %i.nl = phi i64 [ %i.md, %BIT_reloadDStream.exit62.i ], [ %i.ml, %BIT_reloadDStream.exit55.i ], [ %i.ml, %bb.au ], [ %i.ml, %bb.aw ] ; 2 uses
  %i.nm = phi ptr [ %i.li, %BIT_reloadDStream.exit62.i ], [ %i.mm, %BIT_reloadDStream.exit55.i ], [ %i.mm, %bb.au ], [ %i.mm, %bb.aw ] ; 4 uses
  %.lcssa28 = phi i64 [ %.promoted257.i, %BIT_reloadDStream.exit62.i ], [ %i.po, %bb.aw ], [ %i.mq, %bb.au ], [ %i.mq, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.lcssa27 = phi i64 [ %.promoted255.i, %BIT_reloadDStream.exit62.i ], [ %i.pa, %bb.aw ], [ %i.mp, %bb.au ], [ %i.mp, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.037.i.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit62.i ], [ %i.pq, %bb.aw ], [ %.037.i.i63, %bb.au ], [ %.037.i.i63, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.nn = phi i32 [ %i.mc, %BIT_reloadDStream.exit62.i ], [ %i.pf, %bb.aw ], [ %i.mn, %bb.au ], [ %i.nf, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %i.no = phi i64 [ %.val.i, %BIT_reloadDStream.exit62.i ], [ %i.ng, %bb.aw ], [ %i.mo, %bb.au ], [ %i.ng, %BIT_reloadDStream.exit55.i ] ; 2 uses
  %.promoted288448.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit62.i ], [ @BIT_reloadDStream.zeroFilled, %bb.aw ], [ %i.mr, %bb.au ], [ %.promoted288.i, %BIT_reloadDStream.exit55.i ] ; 2 uses
  store ptr %.promoted288448.i, ptr %i.ky, align 8
  store i32 %i.nn, ptr %i.kv, align 8
  store i64 %i.no, ptr %11, align 8
  store i64 %.lcssa27, ptr %12, align 8
  store i64 %.lcssa28, ptr %13, align 8
  %i.np = getelementptr inbounds i8, ptr %i.ak, i64 -2 ; 3 uses
  %i.nq = icmp ugt ptr %.037.i.i.lcssa, %i.np
  br i1 %i.nq, label %FSE_decompress_usingDTable_generic.exit.i, label %.lr.ph278.i

bb.aw:                                            ; preds = %BIT_reloadDStream.exit55.i
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mp ; 3 uses
  %.sroa.0.0.copyload.i127.i = load i16, ptr %i.nr, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i128.i = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %.sroa.4.0.copyload.i129.i = load i8, ptr %.sroa.4.0..sroa_idx.i128.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.nr, i64 3
  %.sroa.5.0.copyload.i131.i = load i8, ptr %.sroa.5.0..sroa_idx.i130.i, align 1, !tbaa !14 ; 2 uses
  %i.ns = zext i8 %.sroa.5.0.copyload.i131.i to i32
  %i.nt = add i32 %i.nf, %i.ns                    ; 2 uses
  %i.nu = sub i32 0, %i.nt
  %i.nv = and i32 %i.nu, 63
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = lshr i64 %i.ng, %i.nw
  %i.ny = zext nneg i8 %.sroa.5.0.copyload.i131.i to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.ny
  %i.nz = xor i64 %notmask.i.i.i, -1
  %i.oa = and i64 %i.nx, %i.nz
  %i.ob = zext i16 %.sroa.0.0.copyload.i127.i to i64
  store i8 %.sroa.4.0.copyload.i129.i, ptr %.037.i.i63, align 1, !tbaa !14
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mq ; 3 uses
  %.sroa.0.0.copyload.i132.i = load i16, ptr %i.oc, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.oc, i64 2
  %.sroa.4.0.copyload.i134.i = load i8, ptr %.sroa.4.0..sroa_idx.i133.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i135.i = getelementptr inbounds nuw i8, ptr %i.oc, i64 3
  %.sroa.5.0.copyload.i136.i = load i8, ptr %.sroa.5.0..sroa_idx.i135.i, align 1, !tbaa !14 ; 2 uses
  %i.od = zext i8 %.sroa.5.0.copyload.i136.i to i32
  %i.oe = add i32 %i.nt, %i.od                    ; 2 uses
  %i.of = sub i32 0, %i.oe
  %i.og = and i32 %i.of, 63
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = lshr i64 %i.ng, %i.oh
  %i.oj = zext nneg i8 %.sroa.5.0.copyload.i136.i to i64
  %notmask.i.i137.i = shl nsw i64 -1, %i.oj
  %i.ok = xor i64 %notmask.i.i137.i, -1
  %i.ol = and i64 %i.oi, %i.ok
  %i.om = zext i16 %.sroa.0.0.copyload.i132.i to i64
  %i.on = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 1
  store i8 %.sroa.4.0.copyload.i134.i, ptr %i.on, align 1, !tbaa !14
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.oa
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ob ; 3 uses
  %.sroa.0.0.copyload.i138.i = load i16, ptr %i.op, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i139.i = getelementptr inbounds nuw i8, ptr %i.op, i64 2
  %.sroa.4.0.copyload.i140.i = load i8, ptr %.sroa.4.0..sroa_idx.i139.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.op, i64 3
  %.sroa.5.0.copyload.i142.i = load i8, ptr %.sroa.5.0..sroa_idx.i141.i, align 1, !tbaa !14 ; 2 uses
  %i.oq = zext i8 %.sroa.5.0.copyload.i142.i to i32
  %i.or = add i32 %i.oe, %i.oq                    ; 2 uses
  %i.os = sub i32 0, %i.or
  %i.ot = and i32 %i.os, 63
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = lshr i64 %i.ng, %i.ou
  %i.ow = zext nneg i8 %.sroa.5.0.copyload.i142.i to i64
  %notmask.i.i143.i = shl nsw i64 -1, %i.ow
  %i.ox = xor i64 %notmask.i.i143.i, -1
  %i.oy = and i64 %i.ov, %i.ox
  %i.oz = zext i16 %.sroa.0.0.copyload.i138.i to i64
  %i.pa = add nuw i64 %i.oy, %i.oz                ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 2
  store i8 %.sroa.4.0.copyload.i140.i, ptr %i.pb, align 1, !tbaa !14
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ol
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.om ; 3 uses
  %.sroa.0.0.copyload.i144.i = load i16, ptr %i.pd, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i145.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %.sroa.4.0.copyload.i146.i = load i8, ptr %.sroa.4.0..sroa_idx.i145.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i147.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 3
  %.sroa.5.0.copyload.i148.i = load i8, ptr %.sroa.5.0..sroa_idx.i147.i, align 1, !tbaa !14 ; 2 uses
  %i.pe = zext i8 %.sroa.5.0.copyload.i148.i to i32
  %i.pf = add i32 %i.or, %i.pe                    ; 4 uses
  %i.pg = sub i32 0, %i.pf
  %i.ph = and i32 %i.pg, 63
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = lshr i64 %i.ng, %i.pi
  %i.pk = zext nneg i8 %.sroa.5.0.copyload.i148.i to i64
  %notmask.i.i149.i = shl nsw i64 -1, %i.pk
  %i.pl = xor i64 %notmask.i.i149.i, -1
  %i.pm = and i64 %i.pj, %i.pl
  %i.pn = zext i16 %.sroa.0.0.copyload.i144.i to i64
  %i.po = add nuw i64 %i.pm, %i.pn                ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 3
  store i8 %.sroa.4.0.copyload.i146.i, ptr %i.pp, align 1, !tbaa !14
  %i.pq = getelementptr inbounds nuw i8, ptr %.037.i.i63, i64 4 ; 2 uses
  %i.pr = icmp ugt i32 %i.pf, 64
  br i1 %i.pr, label %.preheader.i, label %.lr.ph64, !prof !27, !llvm.loop !0

end_hunk_0
begin_hunk_1_@FSE_decompress_wksp_body_bmi2:bb.a
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
  %i.by = shl nuw nsw i64 %i.bx, 16
  %i.bz = add nuw nsw i64 %i.by, %i.bu
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.ca = phi i64 [ %i.bz, %bb.o ], [ %i.aw, %bb.j ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = add nuw nsw i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %7, align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.cg = getelementptr i8, ptr %2, i64 %3
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14  ; 2 uses
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
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !25
  br label %bb.r

BIT_initDStream.exit:                             ; preds = %bb.i
  %i.cp = trunc nuw nsw i64 %i.at to i32
  %i.cq = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cp, i1 true)
  %i.cr = xor i32 %i.cq, 31
  %i.cs = sub nuw nsw i32 8, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !25
  %i.cu = icmp ult i64 %i.j, -119
  br i1 %i.cu, label %bb.r, label %FSE_decompress_usingDTable_generic.exit12

bb.r:                                             ; preds = %BIT_initDStream.exit.thread182, %BIT_initDStream.exit
  call fastcc void @FSE_initDState(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %i.c)
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %7, ptr noundef nonnull %i.c)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !25 ; 6 uses
  %i.cx = icmp ugt i32 %i.cw, 64
  br i1 %i.cx, label %FSE_decompress_usingDTable_generic.exit12, label %bb.s, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !23 ; 7 uses
  %i.da = load ptr, ptr %i.ao, align 8, !tbaa !22 ; 4 uses
  %.not.i28 = icmp ult ptr %i.cz, %i.da
  br i1 %.not.i28, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = lshr i32 %i.cw, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 %i.dd ; 2 uses
  %i.df = and i32 %i.cw, 7
  %.val.i72 = load i64, ptr %i.de, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i72, ptr %7, align 8, !tbaa !24
  %.pre = load ptr, ptr %i.am, align 8
  br label %BIT_reloadDStream.exit34

bb.u:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !21 ; 5 uses
  %i.dh = icmp eq ptr %i.cz, %i.dg
  br i1 %i.dh, label %.BIT_reloadDStream.exit34_crit_edge, label %bb.v

.BIT_reloadDStream.exit34_crit_edge:              ; preds = %bb.u
  %.promoted212.pre = load i64, ptr %7, align 8
  br label %BIT_reloadDStream.exit34

bb.v:                                             ; preds = %bb.u
  %i.di = lshr i32 %i.cw, 3                       ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 %i.dk
  %i.dm = icmp ult ptr %i.dl, %i.dg
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %i.dg to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %.021.i30 = select i1 %i.dm, i32 %i.dq, i32 %i.di ; 2 uses
  %i.dr = zext i32 %.021.i30 to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.cz, i64 %i.ds ; 2 uses
  %i.du = shl i32 %.021.i30, 3
  %i.dv = sub i32 %i.cw, %i.du
  %.val66 = load i64, ptr %i.dt, align 1, !tbaa !13 ; 2 uses
  store i64 %.val66, ptr %7, align 8, !tbaa !24
  br label %BIT_reloadDStream.exit34

BIT_reloadDStream.exit34:                         ; preds = %.BIT_reloadDStream.exit34_crit_edge, %bb.t, %bb.v
  %.promoted219 = phi ptr [ %i.cz, %.BIT_reloadDStream.exit34_crit_edge ], [ %i.de, %bb.t ], [ %i.dt, %bb.v ]
  %i.dw = phi ptr [ %i.dg, %.BIT_reloadDStream.exit34_crit_edge ], [ %.pre, %bb.t ], [ %i.dg, %bb.v ] ; 7 uses
  %.promoted212 = phi i64 [ %.promoted212.pre, %.BIT_reloadDStream.exit34_crit_edge ], [ %.val.i72, %bb.t ], [ %.val66, %bb.v ] ; 2 uses
  %.promoted = phi i32 [ %i.cw, %.BIT_reloadDStream.exit34_crit_edge ], [ %i.df, %bb.t ], [ %i.dv, %bb.v ] ; 3 uses
  %.promoted215 = load i64, ptr %8, align 8       ; 2 uses
  %.promoted217 = load i64, ptr %9, align 8       ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8            ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 4 uses
  %i.ec = icmp ugt i32 %.promoted, 64
  br i1 %i.ec, label %.preheader193, label %.lr.ph518, !prof !44

.lr.ph518:                                        ; preds = %BIT_reloadDStream.exit34, %bb.z
  %.037.i9517 = phi ptr [ %i.gz, %bb.z ], [ %0, %BIT_reloadDStream.exit34 ] ; 8 uses
  %i.ed = phi i32 [ %i.gv, %bb.z ], [ %.promoted, %BIT_reloadDStream.exit34 ] ; 5 uses
  %.val.i.i213516 = phi i64 [ %.val.i.i214, %bb.z ], [ %.promoted212, %BIT_reloadDStream.exit34 ]
  %i.ee = phi i64 [ %i.gj, %bb.z ], [ %.promoted215, %BIT_reloadDStream.exit34 ] ; 3 uses
  %i.ef = phi i64 [ %i.gx, %bb.z ], [ %.promoted217, %BIT_reloadDStream.exit34 ] ; 3 uses
  %i.eg = phi ptr [ %.promoted246, %bb.z ], [ %.promoted219, %BIT_reloadDStream.exit34 ] ; 6 uses
  %.not.i21 = icmp ult ptr %i.eg, %i.da
  br i1 %.not.i21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph518
  %i.eh = lshr i32 %i.ed, 3
  %i.ei = and i32 %i.ed, 7
  br label %BIT_reloadDStream.exit27

bb.x:                                             ; preds = %.lr.ph518
  %i.ej = icmp eq ptr %i.eg, %i.dw
  br i1 %i.ej, label %.preheader193, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = lshr i32 %i.ed, 3                       ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.eg, i64 %i.em
  %i.eo = icmp uge ptr %i.en, %i.dw               ; 2 uses
  %i.ep = ptrtoint ptr %i.eg to i64
  %i.eq = sub i64 %i.ep, %i.dx
  %i.er = trunc i64 %i.eq to i32
  %.021.i23 = select i1 %i.eo, i32 %i.ek, i32 %i.er ; 2 uses
  %i.es = shl i32 %.021.i23, 3
  %i.et = sub i32 %i.ed, %i.es
  br label %BIT_reloadDStream.exit27

BIT_reloadDStream.exit27:                         ; preds = %bb.w, %bb.y
  %.pn486.in = phi i32 [ %.021.i23, %bb.y ], [ %i.eh, %bb.w ]
  %i.eu = phi i32 [ %i.et, %bb.y ], [ %i.ei, %bb.w ] ; 3 uses
  %.022.i22 = phi i1 [ %i.eo, %bb.y ], [ true, %bb.w ]
  %.pn486 = zext i32 %.pn486.in to i64
  %.pn = sub nsw i64 0, %.pn486
  %.promoted246 = getelementptr inbounds i8, ptr %i.eg, i64 %.pn ; 3 uses
  %.val.i.i214 = load i64, ptr %.promoted246, align 1, !tbaa !13 ; 7 uses
  %i.ev = icmp ult ptr %.037.i9517, %i.ak
  %i.ew = and i1 %i.ev, %.022.i22
  br i1 %i.ew, label %bb.z, label %.preheader193

.preheader193:                                    ; preds = %BIT_reloadDStream.exit27, %bb.x, %bb.z, %BIT_reloadDStream.exit34
  %.lcssa515 = phi i64 [ %.promoted217, %BIT_reloadDStream.exit34 ], [ %i.ef, %BIT_reloadDStream.exit27 ], [ %i.ef, %bb.x ], [ %i.gx, %bb.z ] ; 2 uses
  %.lcssa514 = phi i64 [ %.promoted215, %BIT_reloadDStream.exit34 ], [ %i.ee, %BIT_reloadDStream.exit27 ], [ %i.ee, %bb.x ], [ %i.gj, %bb.z ] ; 2 uses
  %.037.i9.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit34 ], [ %.037.i9517, %BIT_reloadDStream.exit27 ], [ %.037.i9517, %bb.x ], [ %i.gz, %bb.z ] ; 2 uses
  %i.ex = phi i32 [ %.promoted, %BIT_reloadDStream.exit34 ], [ %i.eu, %BIT_reloadDStream.exit27 ], [ %i.ed, %bb.x ], [ %i.gv, %bb.z ] ; 2 uses
  %.val.i.i214445 = phi i64 [ %.promoted212, %BIT_reloadDStream.exit34 ], [ %.val.i.i214, %BIT_reloadDStream.exit27 ], [ %.val.i.i213516, %bb.x ], [ %.val.i.i214, %bb.z ] ; 2 uses
  %.promoted246444 = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit34 ], [ %.promoted246, %BIT_reloadDStream.exit27 ], [ %i.eg, %bb.x ], [ @BIT_reloadDStream.zeroFilled, %bb.z ] ; 2 uses
  store ptr %.promoted246444, ptr %i.cy, align 8
  store i32 %i.ex, ptr %i.cv, align 8
  store i64 %.val.i.i214445, ptr %7, align 8
  store i64 %.lcssa514, ptr %8, align 8
  store i64 %.lcssa515, ptr %9, align 8
  %i.ey = getelementptr inbounds i8, ptr %i.aj, i64 -2 ; 3 uses
  %i.ez = icmp ugt ptr %.037.i9.lcssa, %i.ey
  br i1 %i.ez, label %FSE_decompress_usingDTable_generic.exit12, label %.lr.ph

bb.z:                                             ; preds = %BIT_reloadDStream.exit27
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ee ; 3 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.fa, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 3
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !14
  %i.fb = zext i8 %.sroa.5.0.copyload.i to i32    ; 2 uses
  %i.fc = and i32 %i.eu, 63
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl i64 %.val.i.i214, %i.fd
  %i.ff = sub nsw i32 0, %i.fb
  %i.fg = and i32 %i.ff, 63
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = lshr i64 %i.fe, %i.fh
  %i.fj = add i32 %i.eu, %i.fb                    ; 2 uses
  %i.fk = zext i16 %.sroa.0.0.copyload.i to i64
  store i8 %.sroa.4.0.copyload.i, ptr %.037.i9517, align 1, !tbaa !14
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ef ; 3 uses
  %.sroa.0.0.copyload.i74 = load i16, ptr %i.fl, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %.sroa.4.0.copyload.i76 = load i8, ptr %.sroa.4.0..sroa_idx.i75, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %.sroa.5.0.copyload.i78 = load i8, ptr %.sroa.5.0..sroa_idx.i77, align 1, !tbaa !14
  %i.fm = zext i8 %.sroa.5.0.copyload.i78 to i32  ; 2 uses
  %i.fn = and i32 %i.fj, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl i64 %.val.i.i214, %i.fo
  %i.fq = sub nsw i32 0, %i.fm
  %i.fr = and i32 %i.fq, 63
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = lshr i64 %i.fp, %i.fs
  %i.fu = add i32 %i.fj, %i.fm                    ; 2 uses
  %i.fv = zext i16 %.sroa.0.0.copyload.i74 to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %.037.i9517, i64 1
  store i8 %.sroa.4.0.copyload.i76, ptr %i.fw, align 1, !tbaa !14
  %i.fx = getelementptr [4 x i8], ptr %i.dz, i64 %i.fi
  %i.fy = getelementptr [4 x i8], ptr %i.fx, i64 %i.fk ; 3 uses
  %.sroa.0.0.copyload.i81 = load i16, ptr %i.fy, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %.sroa.4.0.copyload.i83 = load i8, ptr %.sroa.4.0..sroa_idx.i82, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %.sroa.5.0.copyload.i85 = load i8, ptr %.sroa.5.0..sroa_idx.i84, align 1, !tbaa !14
  %i.fz = zext i8 %.sroa.5.0.copyload.i85 to i32  ; 2 uses
  %i.ga = and i32 %i.fu, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl i64 %.val.i.i214, %i.gb
  %i.gd = sub nsw i32 0, %i.fz
  %i.ge = and i32 %i.gd, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = lshr i64 %i.gc, %i.gf
  %i.gh = add i32 %i.fu, %i.fz                    ; 2 uses
  %i.gi = zext i16 %.sroa.0.0.copyload.i81 to i64
  %i.gj = add i64 %i.gg, %i.gi                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.037.i9517, i64 2
  store i8 %.sroa.4.0.copyload.i83, ptr %i.gk, align 1, !tbaa !14
  %i.gl = getelementptr [4 x i8], ptr %i.eb, i64 %i.ft
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %i.fv ; 3 uses
  %.sroa.0.0.copyload.i88 = load i16, ptr %i.gm, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %.sroa.4.0.copyload.i90 = load i8, ptr %.sroa.4.0..sroa_idx.i89, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.gm, i64 3
  %.sroa.5.0.copyload.i92 = load i8, ptr %.sroa.5.0..sroa_idx.i91, align 1, !tbaa !14
  %i.gn = zext i8 %.sroa.5.0.copyload.i92 to i32  ; 2 uses
  %i.go = and i32 %i.gh, 63
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl i64 %.val.i.i214, %i.gp
  %i.gr = sub nsw i32 0, %i.gn
  %i.gs = and i32 %i.gr, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = lshr i64 %i.gq, %i.gt
  %i.gv = add i32 %i.gh, %i.gn                    ; 3 uses
  %i.gw = zext i16 %.sroa.0.0.copyload.i88 to i64
  %i.gx = add i64 %i.gu, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.037.i9517, i64 3
  store i8 %.sroa.4.0.copyload.i90, ptr %i.gy, align 1, !tbaa !14
  %i.gz = getelementptr inbounds nuw i8, ptr %.037.i9517, i64 4 ; 2 uses
  %i.ha = icmp ugt i32 %i.gv, 64
  br i1 %i.ha, label %.preheader193, label %.lr.ph518, !prof !27, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader193, %BIT_reloadDStream.exit
  %i.hb = phi ptr [ %i.jy, %BIT_reloadDStream.exit ], [ %.promoted246444, %.preheader193 ] ; 7 uses
  %.1.i10237 = phi ptr [ %i.jd, %BIT_reloadDStream.exit ], [ %.037.i9.lcssa, %.preheader193 ] ; 5 uses
  %i.hc = phi i64 [ %i.hq, %BIT_reloadDStream.exit ], [ %.lcssa514, %.preheader193 ]
  %.val.i117225236 = phi i64 [ %.val.i117226, %BIT_reloadDStream.exit ], [ %.val.i.i214445, %.preheader193 ] ; 2 uses
  %i.hd = phi i32 [ %i.jz, %BIT_reloadDStream.exit ], [ %i.ex, %.preheader193 ] ; 2 uses
  %i.he = phi i64 [ %i.jc, %BIT_reloadDStream.exit ], [ %.lcssa515, %.preheader193 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.hc ; 3 uses
  %.sroa.0.0.copyload.i95 = load i16, ptr %i.hf, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %.sroa.4.0.copyload.i97 = load i8, ptr %.sroa.4.0..sroa_idx.i96, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.hf, i64 3
  %.sroa.5.0.copyload.i99 = load i8, ptr %.sroa.5.0..sroa_idx.i98, align 1, !tbaa !14
  %i.hg = zext i8 %.sroa.5.0.copyload.i99 to i32  ; 2 uses
  %i.hh = and i32 %i.hd, 63
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl i64 %.val.i117225236, %i.hi
  %i.hk = sub nsw i32 0, %i.hg
  %i.hl = and i32 %i.hk, 63
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = lshr i64 %i.hj, %i.hm
  %i.ho = add i32 %i.hd, %i.hg                    ; 6 uses
  %i.hp = zext i16 %.sroa.0.0.copyload.i95 to i64
  %i.hq = add i64 %i.hn, %i.hp                    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1.i10237, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i97, ptr %.1.i10237, align 1, !tbaa !14
  %i.hs = icmp ugt i32 %i.ho, 64
  br i1 %i.hs, label %bb.ae, label %bb.aa, !prof !26

bb.aa:                                            ; preds = %.lr.ph
  %.not.i14 = icmp ult ptr %i.hb, %i.da
  br i1 %.not.i14, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ht = lshr i32 %i.ho, 3
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = sub nsw i64 0, %i.hu
  %i.hw = getelementptr inbounds i8, ptr %i.hb, i64 %i.hv ; 2 uses
  %i.hx = and i32 %i.ho, 7
  %.val.i102 = load i64, ptr %i.hw, align 1, !tbaa !13
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.hy = icmp eq ptr %i.hb, %i.dw
  br i1 %i.hy, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hz = lshr i32 %i.ho, 3                       ; 2 uses
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %i.hb, i64 %i.ib
  %i.id = icmp ult ptr %i.ic, %i.dw
  %i.ie = ptrtoint ptr %i.hb to i64
  %i.if = sub i64 %i.ie, %i.dx
  %i.ig = trunc i64 %i.if to i32
  %.021.i16 = select i1 %i.id, i32 %i.ig, i32 %i.hz ; 2 uses
  %i.ih = zext i32 %.021.i16 to i64
  %i.ii = sub nsw i64 0, %i.ih
  %i.ij = getelementptr inbounds i8, ptr %i.hb, i64 %i.ii ; 2 uses
  %i.ik = shl i32 %.021.i16, 3
  %i.il = sub i32 %i.ho, %i.ik
  %.val68 = load i64, ptr %i.ij, align 1, !tbaa !13
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.he
  %.sroa.4.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %.sroa.4.0.copyload.i105 = load i8, ptr %.sroa.4.0..sroa_idx.i104, align 2, !tbaa !14
  %i.in = getelementptr inbounds nuw i8, ptr %.1.i10237, i64 2
  store i8 %.sroa.4.0.copyload.i105, ptr %i.hr, align 1, !tbaa !14
  br label %bb.am

bb.af:                                            ; preds = %bb.ac, %bb.ab, %bb.ad
  %i.io = phi ptr [ %i.hb, %bb.ac ], [ %i.hw, %bb.ab ], [ %i.ij, %bb.ad ] ; 7 uses
  %i.ip = phi i32 [ %i.ho, %bb.ac ], [ %i.hx, %bb.ab ], [ %i.il, %bb.ad ] ; 2 uses
  %.val.i117227 = phi i64 [ %.val.i117225236, %bb.ac ], [ %.val.i102, %bb.ab ], [ %.val68, %bb.ad ] ; 2 uses
  %i.iq = icmp ugt ptr %i.hr, %i.ey
  br i1 %i.iq, label %FSE_decompress_usingDTable_generic.exit12, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.he ; 3 uses
  %.sroa.0.0.copyload.i110 = load i16, ptr %i.ir, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %.sroa.4.0.copyload.i112 = load i8, ptr %.sroa.4.0..sroa_idx.i111, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.ir, i64 3
  %.sroa.5.0.copyload.i114 = load i8, ptr %.sroa.5.0..sroa_idx.i113, align 1, !tbaa !14
  %i.is = zext i8 %.sroa.5.0.copyload.i114 to i32 ; 2 uses
  %i.it = and i32 %i.ip, 63
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = shl i64 %.val.i117227, %i.iu
  %i.iw = sub nsw i32 0, %i.is
  %i.ix = and i32 %i.iw, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = lshr i64 %i.iv, %i.iy
  %i.ja = add i32 %i.ip, %i.is                    ; 6 uses
  %i.jb = zext i16 %.sroa.0.0.copyload.i110 to i64
  %i.jc = add i64 %i.iz, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.1.i10237, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i112, ptr %i.hr, align 1, !tbaa !14
  %i.je = icmp ugt i32 %i.ja, 64
  br i1 %i.je, label %bb.al, label %bb.ah, !prof !26

bb.ah:                                            ; preds = %bb.ag
  %.not.i13 = icmp ult ptr %i.io, %i.da
  br i1 %.not.i13, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jf = lshr i32 %i.ja, 3
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = sub nsw i64 0, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %i.io, i64 %i.jh ; 2 uses
  %i.jj = and i32 %i.ja, 7
  %.val.i117 = load i64, ptr %i.ji, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit

bb.aj:                                            ; preds = %bb.ah
  %i.jk = icmp eq ptr %i.io, %i.dw
  br i1 %i.jk, label %BIT_reloadDStream.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jl = lshr i32 %i.ja, 3                       ; 2 uses
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = sub nsw i64 0, %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.io, i64 %i.jn
  %i.jp = icmp ult ptr %i.jo, %i.dw
  %i.jq = ptrtoint ptr %i.io to i64
  %i.jr = sub i64 %i.jq, %i.dx
  %i.js = trunc i64 %i.jr to i32
  %.021.i = select i1 %i.jp, i32 %i.js, i32 %i.jl ; 2 uses
  %i.jt = zext i32 %.021.i to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.io, i64 %i.ju ; 2 uses
  %i.jw = shl i32 %.021.i, 3
  %i.jx = sub i32 %i.ja, %i.jw
  %.val69 = load i64, ptr %i.jv, align 1, !tbaa !13
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.aj, %bb.ai, %bb.ak
  %i.jy = phi ptr [ %i.io, %bb.aj ], [ %i.ji, %bb.ai ], [ %i.jv, %bb.ak ]
  %i.jz = phi i32 [ %i.ja, %bb.aj ], [ %i.jj, %bb.ai ], [ %i.jx, %bb.ak ]
  %.val.i117226 = phi i64 [ %.val.i117227, %bb.aj ], [ %.val.i117, %bb.ai ], [ %.val69, %bb.ak ]
  %i.ka = icmp ugt ptr %i.jd, %i.ey
  br i1 %i.ka, label %FSE_decompress_usingDTable_generic.exit12, label %.lr.ph

bb.al:                                            ; preds = %bb.ag
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.hq
  %.sroa.4.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %.sroa.4.0.copyload.i120 = load i8, ptr %.sroa.4.0..sroa_idx.i119, align 2, !tbaa !14
  %i.kc = getelementptr inbounds nuw i8, ptr %.1.i10237, i64 3
  store i8 %.sroa.4.0.copyload.i120, ptr %i.jd, align 1, !tbaa !14
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ae
  %.2.i11 = phi ptr [ %i.in, %bb.ae ], [ %i.kc, %bb.al ]
  %i.kd = ptrtoint ptr %.2.i11 to i64
  %i.ke = ptrtoint ptr %0 to i64
  %i.kf = sub i64 %i.kd, %i.ke
  br label %FSE_decompress_usingDTable_generic.exit12

FSE_decompress_usingDTable_generic.exit12:        ; preds = %bb.af, %BIT_reloadDStream.exit, %.preheader193, %bb.r, %bb.q, %bb.i, %bb.g, %BIT_initDStream.exit, %bb.am
  %.139.i8 = phi i64 [ %i.j, %BIT_initDStream.exit ], [ -20, %bb.q ], [ %i.kf, %bb.am ], [ -1, %bb.i ], [ -20, %bb.r ], [ -72, %bb.g ], [ -70, %.preheader193 ], [ -70, %BIT_reloadDStream.exit ], [ -70, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %FSE_decompress_wksp_body.exit

bb.an:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.kg = call fastcc i64 @BIT_initDStream(ptr noundef %10, ptr noundef %i.i, i64 noundef %i.j) ; 2 uses
  %i.kh = icmp ult i64 %i.kg, -119
  br i1 %i.kh, label %bb.ao, label %FSE_decompress_usingDTable_generic.exit

bb.ao:                                            ; preds = %bb.an
  call fastcc void @FSE_initDState(ptr noundef %11, ptr noundef %10, ptr noundef nonnull %i.c)
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %10, ptr noundef nonnull %i.c)
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !25 ; 6 uses
  %i.kk = icmp ugt i32 %i.kj, 64
  br i1 %i.kk, label %FSE_decompress_usingDTable_generic.exit, label %bb.ap, !prof !26

bb.ap:                                            ; preds = %bb.ao
  %i.kl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !23 ; 7 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !22 ; 4 uses
  %.not.i56 = icmp ult ptr %i.km, %i.ko
  br i1 %.not.i56, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kp = lshr i32 %i.kj, 3
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = sub nsw i64 0, %i.kq
  %i.ks = getelementptr inbounds i8, ptr %i.km, i64 %i.kr ; 2 uses
  %i.kt = and i32 %i.kj, 7
  %.val.i125 = load i64, ptr %i.ks, align 1, !tbaa !13 ; 2 uses
  store i64 %.val.i125, ptr %10, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.pre390 = load ptr, ptr %.phi.trans.insert, align 8
  br label %BIT_reloadDStream.exit62

bb.ar:                                            ; preds = %bb.ap
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !21 ; 5 uses
  %i.kw = icmp eq ptr %i.km, %i.kv
  br i1 %i.kw, label %.BIT_reloadDStream.exit62_crit_edge, label %bb.as

.BIT_reloadDStream.exit62_crit_edge:              ; preds = %bb.ar
  %.promoted253.pre = load i64, ptr %10, align 8
  br label %BIT_reloadDStream.exit62

bb.as:                                            ; preds = %bb.ar
  %i.kx = lshr i32 %i.kj, 3                       ; 2 uses
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = sub nsw i64 0, %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.km, i64 %i.kz
  %i.lb = icmp ult ptr %i.la, %i.kv
  %i.lc = ptrtoint ptr %i.km to i64
  %i.ld = ptrtoint ptr %i.kv to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = trunc i64 %i.le to i32
  %.021.i58 = select i1 %i.lb, i32 %i.lf, i32 %i.kx ; 2 uses
  %i.lg = zext i32 %.021.i58 to i64
  %i.lh = sub nsw i64 0, %i.lg
  %i.li = getelementptr inbounds i8, ptr %i.km, i64 %i.lh ; 2 uses
  %i.lj = shl i32 %.021.i58, 3
  %i.lk = sub i32 %i.kj, %i.lj
  %.val = load i64, ptr %i.li, align 1, !tbaa !13 ; 2 uses
  store i64 %.val, ptr %10, align 8, !tbaa !24
  br label %BIT_reloadDStream.exit62

BIT_reloadDStream.exit62:                         ; preds = %.BIT_reloadDStream.exit62_crit_edge, %bb.aq, %bb.as
  %.promoted259 = phi ptr [ %i.km, %.BIT_reloadDStream.exit62_crit_edge ], [ %i.ks, %bb.aq ], [ %i.li, %bb.as ]
  %i.ll = phi ptr [ %i.kv, %.BIT_reloadDStream.exit62_crit_edge ], [ %.pre390, %bb.aq ], [ %i.kv, %bb.as ] ; 7 uses
  %.promoted253 = phi i64 [ %.promoted253.pre, %.BIT_reloadDStream.exit62_crit_edge ], [ %.val.i125, %bb.aq ], [ %.val, %bb.as ] ; 2 uses
  %.promoted251 = phi i32 [ %i.kj, %.BIT_reloadDStream.exit62_crit_edge ], [ %i.kt, %bb.aq ], [ %i.lk, %bb.as ] ; 3 uses
  %.promoted255 = load i64, ptr %11, align 8      ; 2 uses
  %.promoted257 = load i64, ptr %12, align 8      ; 2 uses
  %i.lm = ptrtoint ptr %i.ll to i64               ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8            ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8            ; 4 uses
  %i.lr = icmp ugt i32 %.promoted251, 64
  br i1 %i.lr, label %.preheader, label %.lr.ph538, !prof !44

.lr.ph538:                                        ; preds = %BIT_reloadDStream.exit62, %bb.aw
  %.037.i537 = phi ptr [ %i.or, %bb.aw ], [ %0, %BIT_reloadDStream.exit62 ] ; 8 uses
  %i.ls = phi i32 [ %i.og, %bb.aw ], [ %.promoted251, %BIT_reloadDStream.exit62 ] ; 5 uses
  %i.lt = phi i64 [ %i.ml, %bb.aw ], [ %.promoted253, %BIT_reloadDStream.exit62 ]
  %i.lu = phi i64 [ %i.ob, %bb.aw ], [ %.promoted255, %BIT_reloadDStream.exit62 ] ; 3 uses
  %i.lv = phi i64 [ %i.op, %bb.aw ], [ %.promoted257, %BIT_reloadDStream.exit62 ] ; 3 uses
  %i.lw = phi ptr [ %.promoted288, %bb.aw ], [ %.promoted259, %BIT_reloadDStream.exit62 ] ; 6 uses
  %.not.i49 = icmp ult ptr %i.lw, %i.ko
  br i1 %.not.i49, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph538
  %i.lx = lshr i32 %i.ls, 3
  %i.ly = and i32 %i.ls, 7
  br label %BIT_reloadDStream.exit55

bb.au:                                            ; preds = %.lr.ph538
  %i.lz = icmp eq ptr %i.lw, %i.ll
  br i1 %i.lz, label %.preheader, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ma = lshr i32 %i.ls, 3                       ; 2 uses
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = sub nsw i64 0, %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.lw, i64 %i.mc
  %i.me = icmp uge ptr %i.md, %i.ll               ; 2 uses
  %i.mf = ptrtoint ptr %i.lw to i64
  %i.mg = sub i64 %i.mf, %i.lm
  %i.mh = trunc i64 %i.mg to i32
  %.021.i51 = select i1 %i.me, i32 %i.ma, i32 %i.mh ; 2 uses
  %i.mi = shl i32 %.021.i51, 3
  %i.mj = sub i32 %i.ls, %i.mi
  br label %BIT_reloadDStream.exit55

BIT_reloadDStream.exit55:                         ; preds = %bb.at, %bb.av
  %.pn488.in = phi i32 [ %.021.i51, %bb.av ], [ %i.lx, %bb.at ]
  %i.mk = phi i32 [ %i.mj, %bb.av ], [ %i.ly, %bb.at ] ; 2 uses
  %.022.i50 = phi i1 [ %i.me, %bb.av ], [ true, %bb.at ]
  %.pn488 = zext i32 %.pn488.in to i64
  %.pn487 = sub nsw i64 0, %.pn488
  %.promoted288 = getelementptr inbounds i8, ptr %i.lw, i64 %.pn487 ; 3 uses
  %i.ml = load i64, ptr %.promoted288, align 1, !tbaa !13 ; 7 uses
  %i.mm = icmp ult ptr %.037.i537, %i.ak
  %i.mn = and i1 %i.mm, %.022.i50
  br i1 %i.mn, label %bb.aw, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit55, %bb.au, %bb.aw, %BIT_reloadDStream.exit62
  %.lcssa501 = phi i64 [ %.promoted257, %BIT_reloadDStream.exit62 ], [ %i.lv, %BIT_reloadDStream.exit55 ], [ %i.lv, %bb.au ], [ %i.op, %bb.aw ] ; 2 uses
  %.lcssa500 = phi i64 [ %.promoted255, %BIT_reloadDStream.exit62 ], [ %i.lu, %BIT_reloadDStream.exit55 ], [ %i.lu, %bb.au ], [ %i.ob, %bb.aw ] ; 2 uses
  %.037.i.lcssa = phi ptr [ %0, %BIT_reloadDStream.exit62 ], [ %.037.i537, %BIT_reloadDStream.exit55 ], [ %.037.i537, %bb.au ], [ %i.or, %bb.aw ] ; 2 uses
  %i.mo = phi i32 [ %.promoted251, %BIT_reloadDStream.exit62 ], [ %i.mk, %BIT_reloadDStream.exit55 ], [ %i.ls, %bb.au ], [ %i.og, %bb.aw ] ; 2 uses
  %i.mp = phi i64 [ %.promoted253, %BIT_reloadDStream.exit62 ], [ %i.ml, %BIT_reloadDStream.exit55 ], [ %i.lt, %bb.au ], [ %i.ml, %bb.aw ] ; 2 uses
  %.promoted288448 = phi ptr [ @BIT_reloadDStream.zeroFilled, %BIT_reloadDStream.exit62 ], [ %.promoted288, %BIT_reloadDStream.exit55 ], [ %i.lw, %bb.au ], [ @BIT_reloadDStream.zeroFilled, %bb.aw ] ; 2 uses
  store ptr %.promoted288448, ptr %i.kl, align 8
  store i32 %i.mo, ptr %i.ki, align 8
  store i64 %i.mp, ptr %10, align 8
  store i64 %.lcssa500, ptr %11, align 8
  store i64 %.lcssa501, ptr %12, align 8
  %i.mq = getelementptr inbounds i8, ptr %i.aj, i64 -2 ; 3 uses
  %i.mr = icmp ugt ptr %.037.i.lcssa, %i.mq
  br i1 %i.mr, label %FSE_decompress_usingDTable_generic.exit, label %.lr.ph278

bb.aw:                                            ; preds = %BIT_reloadDStream.exit55
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.lu ; 3 uses
  %.sroa.0.0.copyload.i127 = load i16, ptr %i.ms, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %i.ms, i64 2
  %.sroa.4.0.copyload.i129 = load i8, ptr %.sroa.4.0..sroa_idx.i128, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.ms, i64 3
  %.sroa.5.0.copyload.i131 = load i8, ptr %.sroa.5.0..sroa_idx.i130, align 1, !tbaa !14 ; 2 uses
  %i.mt = zext i8 %.sroa.5.0.copyload.i131 to i32
  %i.mu = add i32 %i.mk, %i.mt                    ; 2 uses
  %i.mv = sub i32 0, %i.mu
  %i.mw = and i32 %i.mv, 63
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = lshr i64 %i.ml, %i.mx
  %i.mz = zext nneg i8 %.sroa.5.0.copyload.i131 to i64
  %notmask.i.i = shl nsw i64 -1, %i.mz
  %i.na = xor i64 %notmask.i.i, -1
  %i.nb = and i64 %i.my, %i.na
  %i.nc = zext i16 %.sroa.0.0.copyload.i127 to i64
  store i8 %.sroa.4.0.copyload.i129, ptr %.037.i537, align 1, !tbaa !14
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lv ; 3 uses
  %.sroa.0.0.copyload.i132 = load i16, ptr %i.nd, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.nd, i64 2
  %.sroa.4.0.copyload.i134 = load i8, ptr %.sroa.4.0..sroa_idx.i133, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.nd, i64 3
  %.sroa.5.0.copyload.i136 = load i8, ptr %.sroa.5.0..sroa_idx.i135, align 1, !tbaa !14 ; 2 uses
  %i.ne = zext i8 %.sroa.5.0.copyload.i136 to i32
  %i.nf = add i32 %i.mu, %i.ne                    ; 2 uses
  %i.ng = sub i32 0, %i.nf
  %i.nh = and i32 %i.ng, 63
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = lshr i64 %i.ml, %i.ni
  %i.nk = zext nneg i8 %.sroa.5.0.copyload.i136 to i64
  %notmask.i.i137 = shl nsw i64 -1, %i.nk
  %i.nl = xor i64 %notmask.i.i137, -1
  %i.nm = and i64 %i.nj, %i.nl
  %i.nn = zext i16 %.sroa.0.0.copyload.i132 to i64
  %i.no = getelementptr inbounds nuw i8, ptr %.037.i537, i64 1
  store i8 %.sroa.4.0.copyload.i134, ptr %i.no, align 1, !tbaa !14
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.nb
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.nc ; 3 uses
  %.sroa.0.0.copyload.i138 = load i16, ptr %i.nq, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.nq, i64 2
  %.sroa.4.0.copyload.i140 = load i8, ptr %.sroa.4.0..sroa_idx.i139, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.nq, i64 3
  %.sroa.5.0.copyload.i142 = load i8, ptr %.sroa.5.0..sroa_idx.i141, align 1, !tbaa !14 ; 2 uses
  %i.nr = zext i8 %.sroa.5.0.copyload.i142 to i32
  %i.ns = add i32 %i.nf, %i.nr                    ; 2 uses
  %i.nt = sub i32 0, %i.ns
  %i.nu = and i32 %i.nt, 63
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = lshr i64 %i.ml, %i.nv
  %i.nx = zext nneg i8 %.sroa.5.0.copyload.i142 to i64
  %notmask.i.i143 = shl nsw i64 -1, %i.nx
  %i.ny = xor i64 %notmask.i.i143, -1
  %i.nz = and i64 %i.nw, %i.ny
  %i.oa = zext i16 %.sroa.0.0.copyload.i138 to i64
  %i.ob = add nuw i64 %i.nz, %i.oa                ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.037.i537, i64 2
  store i8 %.sroa.4.0.copyload.i140, ptr %i.oc, align 1, !tbaa !14
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.nm
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.nn ; 3 uses
  %.sroa.0.0.copyload.i144 = load i16, ptr %i.oe, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.oe, i64 2
  %.sroa.4.0.copyload.i146 = load i8, ptr %.sroa.4.0..sroa_idx.i145, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.oe, i64 3
  %.sroa.5.0.copyload.i148 = load i8, ptr %.sroa.5.0..sroa_idx.i147, align 1, !tbaa !14 ; 2 uses
  %i.of = zext i8 %.sroa.5.0.copyload.i148 to i32
  %i.og = add i32 %i.ns, %i.of                    ; 4 uses
  %i.oh = sub i32 0, %i.og
  %i.oi = and i32 %i.oh, 63
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = lshr i64 %i.ml, %i.oj
  %i.ol = zext nneg i8 %.sroa.5.0.copyload.i148 to i64
  %notmask.i.i149 = shl nsw i64 -1, %i.ol
  %i.om = xor i64 %notmask.i.i149, -1
  %i.on = and i64 %i.ok, %i.om
  %i.oo = zext i16 %.sroa.0.0.copyload.i144 to i64
  %i.op = add nuw i64 %i.on, %i.oo                ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.037.i537, i64 3
  store i8 %.sroa.4.0.copyload.i146, ptr %i.oq, align 1, !tbaa !14
  %i.or = getelementptr inbounds nuw i8, ptr %.037.i537, i64 4 ; 2 uses
  %i.os = icmp ugt i32 %i.og, 64
  br i1 %i.os, label %.preheader, label %.lr.ph538, !prof !27, !llvm.loop !0

.lr.ph278:                                        ; preds = %.preheader, %BIT_reloadDStream.exit41
  %i.ot = phi ptr [ %i.rq, %BIT_reloadDStream.exit41 ], [ %.promoted288448, %.preheader ] ; 7 uses
  %.1.i277 = phi ptr [ %i.qv, %BIT_reloadDStream.exit41 ], [ %.037.i.lcssa, %.preheader ] ; 5 uses
  %i.ou = phi i64 [ %i.pi, %BIT_reloadDStream.exit41 ], [ %.lcssa500, %.preheader ]
  %.val.i169265276 = phi i64 [ %.val.i169266, %BIT_reloadDStream.exit41 ], [ %i.mp, %.preheader ] ; 2 uses
  %i.ov = phi i32 [ %i.rr, %BIT_reloadDStream.exit41 ], [ %i.mo, %.preheader ]
  %i.ow = phi i64 [ %i.qu, %BIT_reloadDStream.exit41 ], [ %.lcssa501, %.preheader ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.ou ; 3 uses
  %.sroa.0.0.copyload.i150 = load i16, ptr %i.ox, align 2, !tbaa !10
  %.sroa.4.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.ox, i64 2
  %.sroa.4.0.copyload.i152 = load i8, ptr %.sroa.4.0..sroa_idx.i151, align 2, !tbaa !14
  %.sroa.5.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.ox, i64 3
  %.sroa.5.0.copyload.i154 = load i8, ptr %.sroa.5.0..sroa_idx.i153, align 1, !tbaa !14 ; 2 uses
  %i.oy = zext i8 %.sroa.5.0.copyload.i154 to i32
  %i.oz = add i32 %i.ov, %i.oy                    ; 7 uses
  %i.pa = sub i32 0, %i.oz
  %i.pb = and i32 %i.pa, 63
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = lshr i64 %.val.i169265276, %i.pc
  %i.pe = zext nneg i8 %.sroa.5.0.copyload.i154 to i64
  %notmask.i.i155 = shl nsw i64 -1, %i.pe
  %i.pf = xor i64 %notmask.i.i155, -1
  %i.pg = and i64 %i.pd, %i.pf
  %i.ph = zext i16 %.sroa.0.0.copyload.i150 to i64
  %i.pi = add nuw i64 %i.pg, %i.ph                ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.1.i277, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i152, ptr %.1.i277, align 1, !tbaa !14
  %i.pk = icmp ugt i32 %i.oz, 64
  br i1 %i.pk, label %bb.bb, label %bb.ax, !prof !26

bb.ax:                                            ; preds = %.lr.ph278
  %.not.i42 = icmp ult ptr %i.ot, %i.ko
  br i1 %.not.i42, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pl = lshr i32 %i.oz, 3
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = sub nsw i64 0, %i.pm
  %i.po = getelementptr inbounds i8, ptr %i.ot, i64 %i.pn ; 2 uses
  %i.pp = and i32 %i.oz, 7
  %.val.i156 = load i64, ptr %i.po, align 1, !tbaa !13
  br label %bb.bc

end_hunk_1
