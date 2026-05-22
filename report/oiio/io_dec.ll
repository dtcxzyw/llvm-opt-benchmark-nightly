inline.NumInlined: 29
inline.NumDeleted: 12
begin_hunk_0_@CustomPut:bb.a
  %i.h = icmp slt i32 %i.f, 1
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %i.b) #8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.k) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = add nsw i32 %i.p, %i.k
  store i32 %i.q, ptr %i.o, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CustomSetup(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25   ; 6 uses
  %i.e = icmp ugt i32 %i.d, 10                    ; 2 uses
  switch i32 %i.d, label %WebPIsAlphaMode.exit [
    i32 12, label %WebPIsAlphaMode.exit.thread
    i32 5, label %WebPIsAlphaMode.exit.thread
    i32 4, label %WebPIsAlphaMode.exit.thread
    i32 3, label %WebPIsAlphaMode.exit.thread
    i32 1, label %WebPIsAlphaMode.exit.thread
  ]

WebPIsAlphaMode.exit.thread:                      ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  br label %bb.b

WebPIsAlphaMode.exit:                             ; preds = %bb.a
  %i.g = add i32 %i.d, -11
  %narrow.i.i = icmp ult i32 %i.g, -4             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %spec.select77 = select i1 %narrow.i.i, i32 12, i32 11
  br label %bb.b

bb.b:                                             ; preds = %WebPIsAlphaMode.exit, %WebPIsAlphaMode.exit.thread
  %i.i = phi ptr [ %i.f, %WebPIsAlphaMode.exit.thread ], [ %i.h, %WebPIsAlphaMode.exit ] ; 3 uses
  %.not76 = phi i1 [ false, %WebPIsAlphaMode.exit.thread ], [ %narrow.i.i, %WebPIsAlphaMode.exit ] ; 3 uses
  %i.j = phi i32 [ 11, %WebPIsAlphaMode.exit.thread ], [ %spec.select77, %WebPIsAlphaMode.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.in = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %.in, align 8, !tbaa !27
  %i.o = tail call i32 @WebPIoInitFromOptions(ptr noundef %i.n, ptr noundef nonnull %0, i32 noundef %i.j) #8
  %.not50 = icmp eq i32 %i.o, 0
  br i1 %.not50, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %i.d, -11
  %narrow.i = icmp ult i32 %i.p, -4
  %or.cond71 = or i1 %narrow.i, %.not76
  br i1 %or.cond71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @WebPInitUpsamplers() #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28
  %.not52 = icmp eq i32 %i.r, 0
  br i1 %.not52, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !24   ; 9 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %switch.tableidx82 = add i32 %i.t, -1           ; 2 uses
  %i.u = icmp ult i32 %switch.tableidx82, 12
  %switch.maskindex83 = trunc i32 %switch.tableidx82 to i16
  %switch.shifted84 = lshr i16 2077, %switch.maskindex83
  %switch.lobit85 = trunc i16 %switch.shifted84 to i1
  %or.cond86 = select i1 %i.u, i1 %switch.lobit85, i1 false
  %i.v = add i32 %i.t, -7
  %narrow.i.i.i64 = icmp ult i32 %i.v, 4
  %.not.i59.not = select i1 %or.cond86, i1 true, i1 %narrow.i.i.i64 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30   ; 7 uses
  br i1 %i.e, label %WebPIsAlphaMode.exit.i58, label %WebPIsAlphaMode.exit.i

WebPIsAlphaMode.exit.i:                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = ashr i32 %i.ac, 1                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = ashr i32 %i.ag, 1                       ; 2 uses
  %i.ai = sext i32 %i.x to i64                    ; 5 uses
  %i.aj = shl nsw i64 %i.ai, 1                    ; 2 uses
  %spec.select78 = select i1 %.not.i59.not, i64 4, i64 3 ; 3 uses
  %i.ak = mul nsw i64 %i.aj, %spec.select78       ; 2 uses
  %i.al = mul nsw i64 %spec.select78, %i.ai
  %i.am = shl nsw i64 %i.ak, 2
  %i.an = add nsw i64 %i.am, %i.al                ; 2 uses
  %i.ao = mul nuw nsw i64 %spec.select78, 104
  %i.ap = add nuw nsw i64 %i.ao, 31
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.aq) #8 ; 8 uses
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !31
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.critedge, label %bb.g

bb.g:                                             ; preds = %WebPIsAlphaMode.exit.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ak ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.an
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = add i64 %i.av, 31
  %i.ax = and i64 %i.aw, -32
  %i.ay = inttoptr i64 %i.ax to ptr               ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.bf = select i1 %.not.i59.not, ptr %i.be, ptr null
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !35
  %i.bh = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.bi = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.bj = tail call i32 @WebPRescalerInit(ptr noundef %i.ay, i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.at, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.ar) #8
  %.not80.i = icmp eq i32 %i.bj, 0
  br i1 %.not80.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bl = getelementptr inbounds i8, ptr %i.at, i64 %i.ai
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aj
  %i.bn = tail call i32 @WebPRescalerInit(ptr noundef %i.bk, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bl, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bm) #8
  %.not81.i = icmp eq i32 %i.bn, 0
  br i1 %.not81.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bp = shl nsw i32 %i.x, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.at, i64 %i.bq
  %.idx.i = shl nsw i64 %i.ai, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  %i.bt = tail call i32 @WebPRescalerInit(ptr noundef %i.bo, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.br, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bs) #8
  %.not82.i = icmp eq i32 %i.bt, 0
  br i1 %.not82.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @EmitRescaledRGB, ptr %i.k, align 8, !tbaa !17
  tail call void @WebPInitYUV444Converters() #8
  br i1 %.not.i59.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.bw = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.bx = mul nsw i32 %i.x, 3
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.at, i64 %i.by
  %.idx83.i = mul nsw i64 %i.ai, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx83.i
  %i.cb = tail call i32 @WebPRescalerInit(ptr noundef %i.bu, i32 noundef %i.bv, i32 noundef %i.bw, ptr noundef nonnull %i.bz, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.ca) #8
  %.not84.i = icmp eq i32 %i.cb, 0
  br i1 %.not84.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @EmitRescaledAlphaRGB, ptr %i.l, align 8, !tbaa !22
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %switch.selectcmp.case1.i = icmp eq i32 %i.cd, 5
  %switch.selectcmp.case2.i = icmp eq i32 %i.cd, 10
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.ce = select i1 %switch.selectcmp.i, ptr @ExportAlphaRGBA4444, ptr @ExportAlpha
  store ptr %i.ce, ptr %i.m, align 8, !tbaa !36
  tail call void @WebPInitAlphaProcessing() #8
  br label %.critedge

WebPIsAlphaMode.exit.i58:                         ; preds = %bb.f
  %i.cf = add nsw i32 %i.x, 1                     ; 2 uses
  %i.cg = ashr i32 %i.cf, 1                       ; 2 uses
  %i.ch = add nsw i32 %i.z, 1
  %i.ci = ashr i32 %i.ch, 1                       ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.cl = add nsw i32 %i.ck, 1
  %i.cm = ashr i32 %i.cl, 1                       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !16
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = ashr i32 %i.cp, 1                       ; 2 uses
  %i.cr = sext i32 %i.x to i64                    ; 2 uses
  %i.cs = shl nsw i64 %i.cr, 1                    ; 2 uses
  %i.ct = and i32 %i.cf, -2
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = shl nsw i64 %i.cu, 1                    ; 2 uses
  %i.cw = add nsw i64 %i.cv, %i.cs
  %i.cx = shl nsw i64 %i.cw, 2
  %i.cy = shl nsw i64 %i.cr, 3
  %spec.select79 = select i1 %.not.i59.not, i64 447, i64 343
  %spec.select80 = select i1 %.not.i59.not, i64 %i.cy, i64 0
  %.076.i = add nsw i64 %i.cx, %spec.select80     ; 2 uses
  %i.cz = add nsw i64 %.076.i, %spec.select79
  %i.da = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.cz) #8 ; 5 uses
  store ptr %i.da, ptr %i.i, align 8, !tbaa !31
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.critedge, label %bb.m

bb.m:                                             ; preds = %WebPIsAlphaMode.exit.i58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %.076.i
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = add i64 %i.de, 31
  %i.dg = and i64 %i.df, -32
  %i.dh = inttoptr i64 %i.dg to ptr               ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 208
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 312
  %i.do = select i1 %.not.i59.not, ptr %i.dn, ptr null
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !35
  %i.dq = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.dr = load i32, ptr %i.cn, align 8, !tbaa !16
  %i.ds = load ptr, ptr %i.dc, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !39
  %i.dv = tail call i32 @WebPRescalerInit(ptr noundef %i.dh, i32 noundef %i.dq, i32 noundef %i.dr, ptr noundef %i.ds, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.du, i32 noundef 1, ptr noundef nonnull %i.da) #8
  %.not78.i = icmp eq i32 %i.dv, 0
  br i1 %.not78.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !40
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !41
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cs ; 3 uses
  %i.ec = tail call i32 @WebPRescalerInit(ptr noundef %i.dw, i32 noundef %i.cm, i32 noundef %i.cq, ptr noundef %i.dy, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ea, i32 noundef 1, ptr noundef nonnull %i.eb) #8
  %.not79.i = icmp eq i32 %i.ec, 0
  br i1 %.not79.i, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = load ptr, ptr %i.dm, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !43
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.cu
  %i.ej = tail call i32 @WebPRescalerInit(ptr noundef %i.ed, i32 noundef %i.cm, i32 noundef %i.cq, ptr noundef %i.ef, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.eh, i32 noundef 1, ptr noundef nonnull %i.ei) #8
  %.not80.i61 = icmp eq i32 %i.ej, 0
  br i1 %.not80.i61, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @EmitRescaledYUV, ptr %i.k, align 8, !tbaa !17
  br i1 %.not.i59.not, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ek = load ptr, ptr %i.dp, align 8, !tbaa !35
  %i.el = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.em = load i32, ptr %i.cn, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !44
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !45
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.cv
  %i.es = tail call i32 @WebPRescalerInit(ptr noundef %i.ek, i32 noundef %i.el, i32 noundef %i.em, ptr noundef %i.eo, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.eq, i32 noundef 1, ptr noundef nonnull %i.er) #8
  %.not81.i62 = icmp eq i32 %i.es, 0
  br i1 %.not81.i62, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr @EmitRescaledAlphaYUV, ptr %i.l, align 8, !tbaa !22
  tail call void @WebPInitAlphaProcessing() #8
  br label %.critedge

bb.s:                                             ; preds = %bb.e
  br i1 %i.e, label %.thread66, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @WebPInitSamplers() #8
  store ptr @EmitSampledRGB, ptr %i.k, align 8, !tbaa !17
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !46
  %.not54 = icmp eq i32 %i.eu, 0
  br i1 %.not54, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !15 ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1                    ; 2 uses
  %i.ey = and i32 %i.ex, -2
  %i.ez = add nsw i32 %i.ey, %i.ew
  %i.fa = sext i32 %i.ez to i64
  %i.fb = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.fa) #8 ; 4 uses
  store ptr %i.fb, ptr %i.i, align 8, !tbaa !31
  %.not55 = icmp eq ptr %i.fb, null
  br i1 %.not55, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = ashr i32 %i.ex, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !47
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !15
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fb, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !48
  %i.fi = sext i32 %i.fc to i64
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !49
  store ptr @EmitFancyRGB, ptr %i.k, align 8, !tbaa !17
  tail call void @WebPInitUpsamplers() #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  br i1 %.not76, label %.critedge, label %bb.x

.thread66:                                        ; preds = %bb.s
  store ptr @EmitYUV, ptr %i.k, align 8, !tbaa !17
  br i1 %.not76, label %.critedge, label %.thread67

.thread67:                                        ; preds = %.thread66
  store ptr @EmitAlphaYUV, ptr %i.l, align 8, !tbaa !22
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.fl = icmp eq i32 %i.d, 5
  %i.fm = icmp eq i32 %i.d, 10
  %or.cond = or i1 %i.fl, %i.fm
  %i.fn = select i1 %or.cond, ptr @EmitAlphaRGBA4444, ptr @EmitAlphaRGB
  store ptr %i.fn, ptr %i.l, align 8, !tbaa !22
  tail call void @WebPInitAlphaProcessing() #8
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o, %bb.m, %bb.q, %WebPIsAlphaMode.exit.i58, %bb.h, %bb.i, %bb.g, %bb.k, %WebPIsAlphaMode.exit.i, %bb.x, %bb.w, %bb.r, %bb.p, %bb.l, %bb.j, %.thread66, %.thread67, %bb.u, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %bb.u ], [ 1, %.thread67 ], [ 1, %.thread66 ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.r ], [ 1, %bb.w ], [ 1, %bb.x ], [ 0, %WebPIsAlphaMode.exit.i ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %WebPIsAlphaMode.exit.i58 ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.o ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal void @CustomTeardown(ptr noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @WebPSafeFree(ptr noundef %i.d) #8
  store ptr null, ptr %i.c, align 8, !tbaa !31
  ret void
}

declare i32 @WebPIoInitFromOptions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WebPInitUpsamplers() local_unnamed_addr #2

declare void @WebPInitSamplers() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @EmitSampledRGB(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.f
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !16
  %i.z = load i32, ptr %i.a, align 8, !tbaa !25
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @WebPSamplers, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  tail call void @WebPSamplerProcessPlane(ptr noundef %i.m, i32 noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, i32 noundef %i.u, ptr noundef %i.k, i32 noundef %i.h, i32 noundef %i.w, i32 noundef %i.y, ptr noundef %i.ac) #8
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !16
  ret i32 %i.ad
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @EmitFancyRGB(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52   ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nsw i64 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %i.l ; 5 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !25
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @WebPUpsamplers, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = add nsw i32 %i.g, %i.b                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15 ; 6 uses
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sdiv i32 %i.ac, 2
  %i.ae = icmp eq i32 %i.g, 0
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %i.q(ptr noundef %i.s, ptr noundef null, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.m, ptr noundef null, i32 noundef %i.ab) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = sub nsw i64 0, %i.k
  %i.ak = getelementptr inbounds i8, ptr %i.m, i64 %i.aj
  tail call void %i.q(ptr noundef %i.ai, ptr noundef %i.s, ptr noundef %i.ag, ptr noundef %i.af, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.ak, ptr noundef %i.m, i32 noundef %i.ab) #8
  %i.al = add nsw i32 %i.b, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.al, %bb.c ] ; 3 uses
  %i.am = icmp sgt i32 %i.b, 2
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.an = add nsw i32 %i.g, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.aq = phi i32 [ %i.an, %.lr.ph ], [ %i.bj, %bb.e ]
  %.08797 = phi ptr [ %i.m, %.lr.ph ], [ %i.ay, %bb.e ]
  %.08896 = phi ptr [ %i.s, %.lr.ph ], [ %i.bc, %bb.e ]
  %.09095 = phi ptr [ %i.w, %.lr.ph ], [ %i.au, %bb.e ] ; 2 uses
  %.09194 = phi ptr [ %i.u, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.09194, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.09095, i64 %i.as ; 3 uses
  %i.av = load i32, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.08797, i64 %i.ax ; 4 uses
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !55 ; 2 uses
  %i.ba = shl nsw i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %.08896, i64 %i.bb ; 4 uses
  %i.bd = sext i32 %i.az to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be
  %i.bg = sext i32 %i.av to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.ay, i64 %i.bh
  tail call void %i.q(ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %.09194, ptr noundef %.09095, ptr noundef %i.at, ptr noundef %i.au, ptr noundef %i.bi, ptr noundef %i.ay, i32 noundef %i.ab) #8
  %i.bj = add nsw i32 %i.aq, 2                    ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.z
  br i1 %i.bk, label %bb.e, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.091.lcssa = phi ptr [ %i.u, %bb.d ], [ %i.at, %bb.e ] ; 3 uses
  %.090.lcssa = phi ptr [ %i.w, %bb.d ], [ %i.au, %bb.e ] ; 3 uses
  %.088.lcssa = phi ptr [ %i.s, %bb.d ], [ %i.bc, %bb.e ]
  %.087.lcssa = phi ptr [ %i.m, %bb.d ], [ %i.ay, %bb.e ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !55
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.088.lcssa, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !62
  %i.br = add nsw i32 %i.bq, %i.z
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !63
  %i.bu = icmp slt i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.bx = sext i32 %i.ab to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bo, i64 %i.bx, i1 false)
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.bz = sext i32 %i.ad to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %.091.lcssa, i64 %i.bz, i1 false)
  %i.ca = load ptr, ptr %i.y, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %.090.lcssa, i64 %i.bz, i1 false)
  %i.cb = add nsw i32 %.0, -1
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.cc = and i32 %i.z, 1
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %i.i, align 8, !tbaa !53
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.087.lcssa, i64 %i.ce
  tail call void %i.q(ptr noundef %i.bo, ptr noundef null, ptr noundef %.091.lcssa, ptr noundef %.090.lcssa, ptr noundef %.091.lcssa, ptr noundef %.090.lcssa, ptr noundef %i.cf, ptr noundef null, i32 noundef %i.ab) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1 = phi i32 [ %i.cb, %bb.f ], [ %.0, %bb.g ], [ %.0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @EmitYUV(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #1 {
end_hunk_0
