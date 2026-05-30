inline.NumInlined: 127
inline.NumDeleted: 53
begin_hunk_0_@VP8LDecodeAlphaImageStream:bb.a
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !107
  %switch.i168.i = icmp ult i32 %i.lc, 2
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 128
  %.in.i169.i = select i1 %switch.i168.i, ptr %i.ld, ptr %i.c
  %i.le = load i32, ptr %.in.i169.i, align 4, !tbaa !3
  %i.lf = load i32, ptr %i.c, align 4, !tbaa !106
  %..i170.i = tail call i32 @llvm.smax.i32(i32 %i.lf, i32 %i.le) ; 5 uses
  %.not210.i = icmp slt i32 %.1107225.i, %..i170.i
  br i1 %.not210.i, label %ExtractPalettedAlphaRows.exit178.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lg = load i32, ptr %i.ky, align 8, !tbaa !75 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 200
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !108
  %i.lj = mul nsw i32 %i.lg, %..i170.i
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.li, i64 %i.lk ; 2 uses
  %i.lm = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.ln = load i32, ptr %i.i, align 4, !tbaa !70
  %i.lo = mul nsw i32 %i.ln, %..i170.i
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %i.lm, i64 %i.lp
  tail call void @VP8LColorIndexInverseTransformAlpha(ptr noundef nonnull %i.av, i32 noundef %..i170.i, i32 noundef %i.kv, ptr noundef %i.lq, ptr noundef %i.ll) #8
  %i.lr = load i32, ptr %i.lb, align 4, !tbaa !107
  %.not.i.i171.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i.i171.i, label %ExtractPalettedAlphaRows.exit178.i, label %.lr.ph.i.i172.i

.lr.ph.i.i172.i:                                  ; preds = %bb.ah
  %i.ls = getelementptr inbounds nuw i8, ptr %i.la, i64 208 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !109
  %i.lu = sext i32 %i.lg to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i172.i
  %.019.i.i173.i = phi ptr [ %i.lt, %.lr.ph.i.i172.i ], [ %.01617.i.i175.i, %bb.ai ]
  %.01518.i.i174.i = phi i32 [ %..i170.i, %.lr.ph.i.i172.i ], [ %i.ma, %bb.ai ] ; 2 uses
  %.01617.i.i175.i = phi ptr [ %i.ll, %.lr.ph.i.i172.i ], [ %i.lz, %bb.ai ] ; 5 uses
  %i.lv = load i32, ptr %i.lb, align 4, !tbaa !107
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr @WebPUnfilters, i64 %i.lw
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !29
  tail call void %i.ly(ptr noundef %.019.i.i173.i, ptr noundef %.01617.i.i175.i, ptr noundef %.01617.i.i175.i, i32 noundef %i.lg) #8, !inline_history !110
  %i.lz = getelementptr inbounds i8, ptr %.01617.i.i175.i, i64 %i.lu
  %i.ma = add i32 %.01518.i.i174.i, 1
  %exitcond.not.i.i176.i = icmp eq i32 %.01518.i.i174.i, %.1107225.i
  br i1 %exitcond.not.i.i176.i, label %._crit_edge.i.i177.i, label %bb.ai, !llvm.loop !111

._crit_edge.i.i177.i:                             ; preds = %bb.ai
  store ptr %.01617.i.i175.i, ptr %i.ls, align 8, !tbaa !109
  br label %ExtractPalettedAlphaRows.exit178.i

ExtractPalettedAlphaRows.exit178.i:               ; preds = %._crit_edge.i.i177.i, %bb.ah, %bb.ag
  store i32 %i.kv, ptr %i.aw, align 4, !tbaa !112
  store i32 %i.kv, ptr %i.c, align 4, !tbaa !106
  br label %bb.aj

bb.aj:                                            ; preds = %ExtractPalettedAlphaRows.exit178.i, %.lr.ph.i
  %.not137.i = icmp slt i32 %i.ku, %i.j
  br i1 %.not137.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !124

._crit_edge.i:                                    ; preds = %bb.aj, %CopyBlock8b.exit.i
  %.1112.lcssa.i = phi i32 [ %i.kt, %CopyBlock8b.exit.i ], [ %i.ku, %bb.aj ] ; 4 uses
  %.1107.lcssa.i = phi i32 [ %.0106232.i, %CopyBlock8b.exit.i ], [ %i.kv, %bb.aj ] ; 3 uses
  %i.mb = icmp sge i32 %i.ks, %i.s
  %i.mc = and i32 %.1112.lcssa.i, %i.u
  %.not138.i = icmp eq i32 %i.mc, 0
  %or.cond149.i = select i1 %i.mb, i1 true, i1 %.not138.i
  br i1 %or.cond149.i, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i
  %i.md = load i32, ptr %i.x, align 4, !tbaa !99  ; 3 uses
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %GetHtreeGroupForPos.exit180.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mf = load i32, ptr %i.ar, align 8, !tbaa !103
  %i.mg = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.mh = ashr i32 %.1107.lcssa.i, %i.md
  %i.mi = mul nsw i32 %i.mf, %i.mh
  %i.mj = ashr i32 %.1112.lcssa.i, %i.md
  %i.mk = add nsw i32 %i.mi, %i.mj
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = sext i32 %i.mn to i64
  br label %GetHtreeGroupForPos.exit180.i

GetHtreeGroupForPos.exit180.i:                    ; preds = %bb.al, %bb.ak
  %.0.i.i179.i = phi i64 [ %i.mo, %bb.al ], [ 0, %bb.ak ]
  %i.mp = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.mq = getelementptr inbounds [568 x i8], ptr %i.mp, i64 %.0.i.i179.i
  br label %.thread.i

.thread.i:                                        ; preds = %GetHtreeGroupForPos.exit180.i, %._crit_edge.i, %ExtractPalettedAlphaRows.exit.i, %bb.n, %bb.m
  %.4125.i = phi ptr [ %.1122.i, %ExtractPalettedAlphaRows.exit.i ], [ %.1122.i, %bb.m ], [ %.1122.i, %bb.n ], [ %.1122.i, %._crit_edge.i ], [ %i.mq, %GetHtreeGroupForPos.exit180.i ]
  %.2118.i = phi i32 [ %i.cz, %ExtractPalettedAlphaRows.exit.i ], [ %i.cz, %bb.m ], [ %i.cz, %bb.n ], [ %i.ks, %._crit_edge.i ], [ %i.ks, %GetHtreeGroupForPos.exit180.i ] ; 4 uses
  %.3114.i = phi i32 [ 0, %ExtractPalettedAlphaRows.exit.i ], [ %i.da, %bb.m ], [ 0, %bb.n ], [ %.1112.lcssa.i, %._crit_edge.i ], [ %.1112.lcssa.i, %GetHtreeGroupForPos.exit180.i ]
  %.3109.i = phi i32 [ %i.db, %ExtractPalettedAlphaRows.exit.i ], [ %.0106232.i, %bb.m ], [ %i.db, %bb.n ], [ %.1107.lcssa.i, %._crit_edge.i ], [ %.1107.lcssa.i, %GetHtreeGroupForPos.exit180.i ] ; 3 uses
  %i.mr = load i32, ptr %i.am, align 4, !tbaa !54
  %.not.i181.i = icmp eq i32 %i.mr, 0
  br i1 %.not.i181.i, label %bb.am, label %.thread272.i

.thread272.i:                                     ; preds = %.thread.i
  store i32 1, ptr %i.am, align 4, !tbaa !54
  br label %._crit_edge235.i

bb.am:                                            ; preds = %.thread.i
  %i.ms = load i64, ptr %i.ax, align 8, !tbaa !125
  %i.mt = load i64, ptr %i.ay, align 8, !tbaa !126
  %i.mu = icmp eq i64 %i.ms, %i.mt
  br i1 %i.mu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mv = load i32, ptr %i.at, align 8, !tbaa !49
  %i.mw = icmp sgt i32 %i.mv, 64
  %i.mx = zext i1 %i.mw to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.my = phi i32 [ %i.mx, %bb.an ], [ 0, %bb.am ] ; 2 uses
  store i32 %i.my, ptr %i.am, align 4, !tbaa !54
  %.not.i = icmp eq i32 %i.my, 0
  %i.mz = icmp slt i32 %.2118.i, %i.s
  %i.na = select i1 %.not.i, i1 %i.mz, i1 false
  br i1 %i.na, label %bb.g, label %._crit_edge235.i

._crit_edge235.i:                                 ; preds = %bb.ao, %.thread272.i, %bb.f, %.thread270.i
  %i.nb = phi ptr [ %i.am, %bb.f ], [ %i.w, %.thread270.i ], [ %i.am, %.thread272.i ], [ %i.am, %bb.ao ]
  %.0116.lcssa.i = phi i32 [ %i.n, %bb.f ], [ %i.n, %.thread270.i ], [ %.2118.i, %.thread272.i ], [ %.2118.i, %bb.ao ]
  %.0106.lcssa.i = phi i32 [ %i.o, %bb.f ], [ %i.o, %.thread270.i ], [ %.3109.i, %.thread272.i ], [ %.3109.i, %bb.ao ]
  %i.nc = tail call i32 @llvm.smin.i32(i32 %.0106.lcssa.i, i32 %1) ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !73 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 56
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !74 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 12 ; 3 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !107
  %switch.i182.i = icmp ult i32 %i.ni, 2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 128
  %.in.i183.i = select i1 %switch.i182.i, ptr %i.nj, ptr %i.c
  %i.nk = load i32, ptr %.in.i183.i, align 4, !tbaa !3
  %i.nl = load i32, ptr %i.c, align 4, !tbaa !106
  %..i184.i = tail call i32 @llvm.smax.i32(i32 %i.nl, i32 %i.nk) ; 5 uses
  %i.nm = icmp sgt i32 %i.nc, %..i184.i
  br i1 %i.nm, label %bb.ap, label %ExtractPalettedAlphaRows.exit192.i

bb.ap:                                            ; preds = %._crit_edge235.i
  %i.nn = load i32, ptr %i.ne, align 8, !tbaa !75 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 200
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !108
  %i.nq = mul nsw i32 %i.nn, %..i184.i
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.nr ; 2 uses
  %i.nt = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.nu = load i32, ptr %i.i, align 4, !tbaa !70
  %i.nv = mul nsw i32 %i.nu, %..i184.i
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds i8, ptr %i.nt, i64 %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  tail call void @VP8LColorIndexInverseTransformAlpha(ptr noundef nonnull %i.ny, i32 noundef %..i184.i, i32 noundef %i.nc, ptr noundef %i.nx, ptr noundef %i.ns) #8
  %i.nz = load i32, ptr %i.nh, align 4, !tbaa !107
  %.not.i.i185.i = icmp eq i32 %i.nz, 0
  br i1 %.not.i.i185.i, label %ExtractPalettedAlphaRows.exit192.i, label %.lr.ph.i.i186.i

.lr.ph.i.i186.i:                                  ; preds = %bb.ap
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ng, i64 208 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !109
  %i.oc = sext i32 %i.nn to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i.i186.i
  %.019.i.i187.i = phi ptr [ %i.ob, %.lr.ph.i.i186.i ], [ %.01617.i.i189.i, %bb.aq ]
  %.01518.i.i188.i = phi i32 [ %..i184.i, %.lr.ph.i.i186.i ], [ %i.oi, %bb.aq ]
  %.01617.i.i189.i = phi ptr [ %i.ns, %.lr.ph.i.i186.i ], [ %i.oh, %bb.aq ] ; 5 uses
  %i.od = load i32, ptr %i.nh, align 4, !tbaa !107
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [8 x i8], ptr @WebPUnfilters, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !29
  tail call void %i.og(ptr noundef %.019.i.i187.i, ptr noundef %.01617.i.i189.i, ptr noundef %.01617.i.i189.i, i32 noundef %i.nn) #8, !inline_history !110
  %i.oh = getelementptr inbounds i8, ptr %.01617.i.i189.i, i64 %i.oc
  %i.oi = add i32 %.01518.i.i188.i, 1             ; 2 uses
  %exitcond.not.i.i190.i = icmp eq i32 %i.oi, %i.nc
  br i1 %exitcond.not.i.i190.i, label %._crit_edge.i.i191.i, label %bb.aq, !llvm.loop !111

._crit_edge.i.i191.i:                             ; preds = %bb.aq
  store ptr %.01617.i.i189.i, ptr %i.oa, align 8, !tbaa !109
  br label %ExtractPalettedAlphaRows.exit192.i

ExtractPalettedAlphaRows.exit192.i:               ; preds = %._crit_edge.i.i191.i, %bb.ap, %._crit_edge235.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i32 %i.nc, ptr %i.oj, align 4, !tbaa !112
  store i32 %i.nc, ptr %i.c, align 4, !tbaa !106
  br label %.thread203.i

.thread203.i:                                     ; preds = %PlaneCodeToDistance.exit.i, %bb.r, %ExtractPalettedAlphaRows.exit192.i
  %i.ok = phi ptr [ %i.nb, %ExtractPalettedAlphaRows.exit192.i ], [ %i.am, %bb.r ], [ %i.am, %PlaneCodeToDistance.exit.i ] ; 2 uses
  %.0116222.i = phi i32 [ %.0116.lcssa.i, %ExtractPalettedAlphaRows.exit192.i ], [ %.0116229.i, %bb.r ], [ %.0116229.i, %PlaneCodeToDistance.exit.i ] ; 2 uses
  %i.ol = phi i1 [ false, %ExtractPalettedAlphaRows.exit192.i ], [ true, %bb.r ], [ true, %PlaneCodeToDistance.exit.i ]
  %i.om = load i32, ptr %i.ok, align 4, !tbaa !54
  %.not.i193.i = icmp eq i32 %i.om, 0
  br i1 %.not.i193.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.thread203.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !125
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !126
  %i.or = icmp eq i64 %i.oo, %i.oq
  br i1 %i.or, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.os = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !49
  %i.ou = icmp sgt i32 %i.ot, 64
  %i.ov = zext i1 %i.ou to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %.thread203.i
  %2 = phi i32 [ 1, %.thread203.i ], [ 0, %bb.ar ], [ %i.ov, %bb.as ] ; 3 uses
  store i32 %2, ptr %i.ok, align 4, !tbaa !54
  %.not143.i = trunc nuw i32 %2 to i1
  %i.ow = icmp slt i32 %.0116222.i, %i.r
  %or.cond151.i = select i1 %.not143.i, i1 %i.ow, i1 false
  %or.cond151.i.a = select i1 %i.ol, i1 true, i1 %or.cond151.i
  br i1 %or.cond151.i.a, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ox = load i32, ptr %i.b, align 8, !tbaa !13
  switch i32 %i.ox, label %DecodeAlphaData.exit [
    i32 0, label %bb.av
    i32 5, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %.not144.i = icmp eq i32 %2, 0
  %i.oy = select i1 %.not144.i, i32 3, i32 5
  store i32 %i.oy, ptr %i.b, align 8, !tbaa !13
  br label %DecodeAlphaData.exit

bb.aw:                                            ; preds = %bb.at
  store i32 %.0116222.i, ptr %i.m, align 8, !tbaa !105
  br label %DecodeAlphaData.exit

bb.ax:                                            ; preds = %bb.c
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !58
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !70
  %i.pd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !72
  %i.pf = tail call fastcc i32 @DecodeImageData(ptr noundef nonnull %i.b, ptr noundef %i.pa, i32 noundef %i.pc, i32 noundef %i.pe, i32 noundef %1, ptr noundef nonnull @ExtractAlphaRows)
  br label %DecodeAlphaData.exit

DecodeAlphaData.exit:                             ; preds = %bb.aw, %bb.av, %bb.au, %bb.ax, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.pf, %bb.ax ], [ 1, %bb.aw ], [ 0, %bb.au ], [ 0, %bb.av ]
  ret i32 %.0
}

declare void @WebPInitAlphaProcessing() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DecodeImageData(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(address_is_null) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105  ; 4 uses
  %i.c = sdiv i32 %i.b, %2                        ; 4 uses
  %i.d = srem i32 %i.b, %2                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.i = mul nsw i32 %3, %2
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j
  %i.l = mul nsw i32 %4, %2                       ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %i.p = add nsw i32 %i.o, 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !127
  %.not = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not, i32 16777216, i32 %i.c
  %i.t = icmp sgt i32 %i.o, 0                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = icmp slt i32 %i.b, %i.l
  br i1 %i.x, label %bb.b, label %.thread318

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.z = load i32, ptr %i.y, align 4, !tbaa !99   ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph376, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.af = ashr i32 %i.c, %i.z
  %i.ag = mul nsw i32 %i.ac, %i.af
  %i.ah = ashr i32 %i.d, %i.z
  %i.ai = add nsw i32 %i.ag, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = sext i32 %i.al to i64
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.am, %bb.c ], [ 0, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = getelementptr inbounds [568 x i8], ptr %i.ao, i64 %.0.i.i
  %i.aq = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bc = getelementptr i8, ptr %0, i64 168       ; 3 uses
  %i.bd = ptrtoint ptr %i.k to i64
  %.not218.not = icmp eq ptr %5, null
  %.not223 = icmp ne ptr %5, null
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph376, %.thread304
  %.0171374 = phi i32 [ %i.c, %.lr.ph376 ], [ %.4, %.thread304 ] ; 17 uses
  %.0172372 = phi i32 [ %i.d, %.lr.ph376 ], [ %.4176, %.thread304 ] ; 4 uses
  %.0177371 = phi ptr [ %i.h, %.lr.ph376 ], [ %.3180, %.thread304 ] ; 18 uses
  %.0182370 = phi ptr [ %i.h, %.lr.ph376 ], [ %.8, %.thread304 ] ; 10 uses
  %.0188369 = phi i32 [ %i.s, %.lr.ph376 ], [ %.1189, %.thread304 ] ; 2 uses
  %.0190368 = phi ptr [ %i.ap, %.lr.ph376 ], [ %.5195, %.thread304 ]
  %.not210 = icmp slt i32 %.0171374, %.0188369
  br i1 %.not210, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = ptrtoint ptr %.0177371 to i64
  %i.bf = sub i64 %i.be, %i.aq
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = trunc i64 %i.bg to i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !128
  store i32 %i.bh, ptr %i.as, align 8, !tbaa !131
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !132
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.f, label %SaveState.exit

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LColorCacheCopy(ptr noundef nonnull %i.u, ptr noundef nonnull %i.at) #8
  br label %SaveState.exit

SaveState.exit:                                   ; preds = %bb.e, %bb.f
  %i.bk = add nsw i32 %.0171374, 8
  br label %bb.g

bb.g:                                             ; preds = %SaveState.exit, %bb.d
  %.1189 = phi i32 [ %i.bk, %SaveState.exit ], [ %.0188369, %bb.d ]
  %i.bl = and i32 %.0172372, %i.w
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.au, align 4, !tbaa !99 ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %GetHtreeGroupForPos.exit246, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load i32, ptr %i.av, align 8, !tbaa !103
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.br = ashr i32 %.0171374, %i.bn
  %i.bs = mul nsw i32 %i.bp, %i.br
  %i.bt = ashr i32 %.0172372, %i.bn
  %i.bu = add nsw i32 %i.bs, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = sext i32 %i.bx to i64
  br label %GetHtreeGroupForPos.exit246

GetHtreeGroupForPos.exit246:                      ; preds = %bb.h, %bb.i
  %.0.i.i245 = phi i64 [ %i.by, %bb.i ], [ 0, %bb.h ]
  %i.bz = load ptr, ptr %i.ax, align 8, !tbaa !57
  %i.ca = getelementptr inbounds [568 x i8], ptr %i.bz, i64 %.0.i.i245
  br label %bb.j

bb.j:                                             ; preds = %GetHtreeGroupForPos.exit246, %bb.g
  %.1191 = phi ptr [ %i.ca, %GetHtreeGroupForPos.exit246 ], [ %.0190368, %bb.g ] ; 15 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1191, i64 48
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !39
  %.not211 = icmp eq i32 %i.cc, 0
  br i1 %.not211, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.1191, i64 44
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !41
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.cf = load i32, ptr %i.ay, align 8, !tbaa !49
  %i.cg = icmp sgt i32 %i.cf, 31
  br i1 %i.cg, label %bb.m, label %VP8LFillBitWindow.exit

bb.m:                                             ; preds = %bb.l
  tail call void @VP8LDoFillBitWindow(ptr noundef nonnull %i.e) #8
  br label %VP8LFillBitWindow.exit

VP8LFillBitWindow.exit:                           ; preds = %bb.l, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %.1191, i64 52
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !42
  %.not212 = icmp eq i32 %i.ci, 0
  br i1 %.not212, label %bb.r, label %bb.n

bb.n:                                             ; preds = %VP8LFillBitWindow.exit
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !51 ; 2 uses
  %.val11.i = load i32, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.cj = and i32 %.val11.i, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %.val.i, %i.ck
  %i.cm = and i64 %i.cl, 63
end_hunk_0
