inline.NumInlined: 71
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ubidi_setContext_78:bb.a
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp slt i32 %2, -1
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %4, -1
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %1, null
  %i.h = icmp ne i32 %2, 0
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %3, null
  %i.j = icmp ne i32 %4, 0
  %or.cond7 = and i1 %i.i, %i.j
  br i1 %or.cond7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i32 %2, -1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @u_strlen_78(ptr noundef %1) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi i32 [ %i.l, %bb.h ], [ %2, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sink, ptr %i.m, align 8
  %i.n = icmp eq i32 %4, -1
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @u_strlen_78(ptr noundef %3) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink33 = phi i32 [ %i.o, %bb.j ], [ %4, %bb.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.sink33, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %3, ptr %i.r, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ubidi_setPara_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [126 x i32], align 16             ; 5 uses
  %i.b = alloca [126 x i32], align 16             ; 6 uses
  %i.c = icmp eq ptr %5, null
  br i1 %i.c, label %bb.gv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.gv

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.g
  %i.h = icmp slt i32 %2, -1
  %or.cond3 = or i1 %or.cond, %i.h
  %i.i = add i8 %3, -126
  %or.cond6 = icmp sgt i8 %i.i, -1
  %or.cond284 = or i1 %or.cond3, %or.cond6
  br i1 %or.cond284, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.gv

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %2, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @u_strlen_78(ptr noundef nonnull %1) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.k, %bb.f ], [ %2, %bb.e ]    ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %bb.h, label %bb.ao

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.l, align 4
  %i.o = icmp eq i32 %.0, 0
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ubidi_setPara_78(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext %3, ptr noundef null, ptr noundef nonnull %5), !inline_history !7
  br label %_ZL15setParaRunsOnlyP5UBiDiPKDsihP10UErrorCode.exit

bb.j:                                             ; preds = %bb.h
  %i.p = sext i32 %.0 to i64                      ; 3 uses
  %i.q = mul nsw i64 %i.p, 7
  %i.r = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.q) #17, !inline_history !7 ; 14 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 7, ptr %5, align 4
  br label %_ZL15setParaRunsOnlyP5UBiDiPKDsihP10UErrorCode.exit

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.p ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = and i32 %i.w, -4
  %i.z = or disjoint i32 %i.y, 2
  store i32 %i.z, ptr %i.v, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = and i8 %3, 1                            ; 2 uses
  tail call void @ubidi_setPara_78(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.0, i8 noundef zeroext %i.aa, ptr noundef null, ptr noundef nonnull %5), !inline_history !7
  %i.ab = load i32, ptr %5, align 4
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.o, label %_ZL15setParaRunsOnlyP5UBiDiPKDsihP10UErrorCode.exit

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call ptr @ubidi_getLevels_78(ptr noundef nonnull %0, ptr noundef nonnull %5) #19, !inline_history !7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = sext i32 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.ad, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = tail call i32 @ubidi_writeReordered_78(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef %.0, i16 noundef zeroext 2, ptr noundef nonnull %5) #19, !inline_history !7
  tail call void @ubidi_getVisualMap_78(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %5) #19, !inline_history !7
  %i.am = load i32, ptr %5, align 4
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.p, label %bb.am

bb.p:                                             ; preds = %bb.o
  store i32 %i.w, ptr %i.v, align 8
  store i32 5, ptr %i.l, align 4
  %i.ao = xor i8 %i.aa, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8
  store i8 0, ptr %i.ap, align 8
  tail call void @ubidi_setPara_78(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef %i.al, i8 noundef zeroext %i.ao, ptr noundef null, ptr noundef nonnull %5), !inline_history !7
  store i8 %i.aq, ptr %i.ap, align 8
  %i.ar = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr noundef nonnull %5) #19, !inline_history !7 ; 0 uses
  %i.as = load i32, ptr %5, align 4
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8            ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = icmp sgt i32 %i.av, 0
  br i1 %i.ay, label %.lr.ph435.preheader, label %.loopexit

.lr.ph435.preheader:                              ; preds = %bb.q
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %.loopexit339
  %indvars.iv540 = phi i64 [ 0, %.lr.ph435.preheader ], [ %indvars.iv.next541, %.loopexit339 ] ; 2 uses
  %.0243.i434 = phi i32 [ 0, %.lr.ph435.preheader ], [ %.3.i, %.loopexit339 ] ; 2 uses
  %.0247.i433 = phi i32 [ 0, %.lr.ph435.preheader ], [ %i.bb, %.loopexit339 ]
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %indvars.iv540 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = sub nsw i32 %i.bb, %.0247.i433          ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 2
  br i1 %i.bd, label %.loopexit339, label %bb.r

bb.r:                                             ; preds = %.lr.ph435
  %i.be = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 2147483647
  %i.bg = add nuw nsw i32 %i.bf, %i.bc
  %i.bh = and i32 %i.be, 2147483647
  %.phi.trans.insert = zext nneg i32 %i.bh to i64 ; 2 uses
  %6 = add nuw nsw i64 %.phi.trans.insert, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %indvars.iv539 = phi i64 [ %.phi.trans.insert, %bb.r ], [ %indvars.iv.next540, %bb.v ] ; 2 uses
  %indvars.iv537 = phi i64 [ %6, %bb.r ], [ %indvars.iv.next538, %bb.v ] ; 2 uses
  %.1244.i430 = phi i32 [ %.0243.i434, %bb.r ], [ %.2245.i, %bb.v ] ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv537
  %8 = load i32, ptr %7, align 4                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv539
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = sub nsw i32 %8, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 true)
  %.not284.i = icmp eq i32 %i.bl, 1
  br i1 %.not284.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = sext i32 %8 to i64
  %i.bn = getelementptr inbounds i8, ptr %i.u, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = sext i32 %i.bj to i64
  %i.bq = getelementptr inbounds i8, ptr %i.u, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %.not285.i = icmp eq i8 %i.bo, %i.br
  br i1 %.not285.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = add nsw i32 %.1244.i430, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2245.i = phi i32 [ %i.bs, %bb.u ], [ %.1244.i430, %bb.t ] ; 2 uses
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.bt = trunc nuw i64 %indvars.iv.next538 to i32
  %i.bu = icmp sgt i32 %i.bg, %i.bt
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 1
  br i1 %i.bu, label %bb.s, label %.loopexit339, !llvm.loop !8

.loopexit339:                                     ; preds = %bb.v, %.lr.ph435
  %.3.i = phi i32 [ %.0243.i434, %.lr.ph435 ], [ %.2245.i, %bb.v ] ; 5 uses
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next541, %wide.trip.count
  br i1 %exitcond543.not, label %._crit_edge, label %.lr.ph435, !llvm.loop !9

._crit_edge:                                      ; preds = %.loopexit339
  %.not274.i = icmp eq i32 %.3.i, 0
  br i1 %.not274.i, label %.lr.ph451, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = add nsw i32 %.3.i, %i.av
  %i.ca = mul i32 %i.bz, 12
  %i.cb = tail call signext i8 @ubidi_getMemory_78(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, i8 noundef signext %i.by, i32 noundef %i.ca), !inline_history !7
  %.not275.i = icmp eq i8 %i.cb, 0
  br i1 %.not275.i, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = icmp eq i32 %i.av, 1
  br i1 %i.cc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cd = load ptr, ptr %i.bv, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i64 12, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ce = load ptr, ptr %i.bv, align 8            ; 2 uses
  store ptr %i.ce, ptr %i.aw, align 8
  %i.cf = load i32, ptr %i.au, align 8
  %i.cg = add nsw i32 %i.cf, %.3.i
  store i32 %i.cg, ptr %i.au, align 8
  br label %.lr.ph451

.lr.ph451:                                        ; preds = %._crit_edge, %bb.z
  %.0243.i.lcssa620 = phi i32 [ %.3.i, %bb.z ], [ 0, %._crit_edge ]
  %.0246.i = phi ptr [ %i.ce, %bb.z ], [ %i.ax, %._crit_edge ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0246.i, i64 4
  %i.ci = zext nneg i32 %i.av to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph451, %bb.al
  %indvars.iv547 = phi i64 [ %i.ci, %.lr.ph451 ], [ %indvars.iv.next548, %bb.al ] ; 3 uses
  %.4.i448 = phi i32 [ %.0243.i.lcssa620, %.lr.ph451 ], [ %.7.i, %bb.al ] ; 4 uses
  %indvars.iv.next548 = add nsw i64 %indvars.iv547, -1 ; 9 uses
  %i.cj = icmp eq i64 %indvars.iv.next548, 0
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load i32, ptr %i.ch, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %.0246.i, i64 %indvars.iv.next548
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr [12 x i8], ptr %.0246.i, i64 %indvars.iv547
  %i.cp = getelementptr i8, ptr %i.co, i64 -20
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = sub nsw i32 %i.cn, %i.cq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = phi i32 [ %i.ck, %bb.ab ], [ %i.cr, %bb.ac ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %.0246.i, i64 %indvars.iv.next548 ; 5 uses
  %i.cu = load i32, ptr %i.ct, align 4            ; 3 uses
  %i.cv = lshr i32 %i.cu, 31                      ; 2 uses
  %i.cw = and i32 %i.cu, 2147483647               ; 4 uses
  %i.cx = icmp slt i32 %i.cs, 2
  br i1 %i.cx, label %bb.ae, label %.lr.ph442

bb.ae:                                            ; preds = %bb.ad
  %.not282.i = icmp eq i32 %.4.i448, 0
  br i1 %.not282.i, label %._crit_edge558, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = sext i32 %.4.i448 to i64
  %i.cz = add nsw i64 %indvars.iv.next548, %i.cy  ; 2 uses
  %i.da = getelementptr inbounds [12 x i8], ptr %.0246.i, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, i64 12, i1 false)
  br label %._crit_edge558

._crit_edge558:                                   ; preds = %bb.ae, %bb.af
  %.pre-phi561 = phi i64 [ %i.cz, %bb.af ], [ %indvars.iv.next548, %bb.ae ]
  %i.db = zext nneg i32 %i.cw to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4
  br label %bb.al

.lr.ph442:                                        ; preds = %bb.ad
  %.not276.i = icmp sgt i32 %i.cu, -1             ; 3 uses
  %i.de = add nsw i32 %i.cs, -1
  %i.df = add nuw i32 %i.de, %i.cw                ; 2 uses
  %.0240.i = select i1 %.not276.i, i32 %i.cw, i32 %i.df ; 2 uses
  %.0239.i = select i1 %.not276.i, i64 -1, i64 1
  %.0241.i = select i1 %.not276.i, i32 %i.df, i32 %i.cw ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.di = sext i32 %.0241.i to i64
  %i.dj = getelementptr [12 x i8], ptr %.0246.i, i64 %indvars.iv.next548
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph442, %bb.aj
  %indvars.iv544 = phi i64 [ %i.di, %.lr.ph442 ], [ %indvars.iv.next545, %bb.aj ] ; 3 uses
  %.1.i440 = phi i32 [ %.0241.i, %.lr.ph442 ], [ %.2.i, %bb.aj ] ; 3 uses
  %.5.i439 = phi i32 [ %.4.i448, %.lr.ph442 ], [ %.6.i, %bb.aj ] ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv544
  %i.dl = load i32, ptr %i.dk, align 4            ; 3 uses
  %indvars.iv.next545 = add nsw i64 %indvars.iv544, %.0239.i ; 4 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next545
  %i.dn = load i32, ptr %i.dm, align 4            ; 2 uses
  %i.do = sub nsw i32 %i.dl, %i.dn
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %.not279.i = icmp eq i32 %i.dp, 1
  br i1 %.not279.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dq = sext i32 %i.dl to i64
  %i.dr = getelementptr inbounds i8, ptr %i.u, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = sext i32 %i.dn to i64
  %i.du = getelementptr inbounds i8, ptr %i.u, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %.not280.i = icmp eq i8 %i.ds, %i.dv
  br i1 %.not280.i, label %._crit_edge557, label %bb.ai

._crit_edge557:                                   ; preds = %bb.ah
  %.pre566 = trunc nsw i64 %indvars.iv.next545 to i32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dw = sext i32 %.1.i440 to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.dl) ; 2 uses
  %i.dz = sext i32 %..i to i64
  %i.ea = getelementptr inbounds i8, ptr %i.u, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = and i8 %i.eb, 1
  %.masked281.i = zext nneg i8 %i.ec to i32
  %i.ed = xor i32 %i.cv, %.masked281.i
  %i.ee = shl nuw i32 %i.ed, 31
  %i.ef = or i32 %i.ee, %..i
  %i.eg = sext i32 %.5.i439 to i64
  %i.eh = getelementptr [12 x i8], ptr %i.dj, i64 %i.eg ; 3 uses
  store i32 %i.ef, ptr %i.eh, align 4
  %i.ei = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i32 %i.ei, ptr %i.ej, align 4
  %i.ek = trunc nsw i64 %indvars.iv544 to i32
  %i.el = sub nsw i32 %i.ek, %.1.i440
  %i.em = tail call i32 @llvm.abs.i32(i32 %i.el, i1 true)
  %.neg.i = xor i32 %i.em, -1
  %i.en = add i32 %i.ei, %.neg.i
  store i32 %i.en, ptr %i.dg, align 4
  %i.eo = load i32, ptr %i.dh, align 4
  %i.ep = and i32 %i.eo, 10                       ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.ep, ptr %i.eq, align 4
  %i.er = xor i32 %i.ep, -1
  %i.es = load i32, ptr %i.dh, align 4
  %i.et = and i32 %i.es, %i.er
  store i32 %i.et, ptr %i.dh, align 4
  %i.eu = add nsw i32 %.5.i439, -1
  %i.ev = trunc nsw i64 %indvars.iv.next545 to i32 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge557, %bb.ai
  %.pre-phi567.a = phi i32 [ %.pre566, %._crit_edge557 ], [ %i.ev, %bb.ai ]
  %.6.i = phi i32 [ %.5.i439, %._crit_edge557 ], [ %i.eu, %bb.ai ] ; 4 uses
  %.2.i = phi i32 [ %.1.i440, %._crit_edge557 ], [ %i.ev, %bb.ai ] ; 2 uses
  %.not277.i = icmp eq i32 %.pre-phi567.a, %.0240.i
  br i1 %.not277.i, label %._crit_edge443, label %bb.ag, !llvm.loop !10

._crit_edge443:                                   ; preds = %bb.aj
  %.not278.i = icmp eq i32 %.6.i, 0
  br i1 %.not278.i, label %._crit_edge443._crit_edge, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge443
  %i.ew = sext i32 %.6.i to i64
  %i.ex = add nsw i64 %indvars.iv.next548, %i.ew  ; 2 uses
  %i.ey = getelementptr inbounds [12 x i8], ptr %.0246.i, i64 %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ey, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, i64 12, i1 false)
  br label %._crit_edge443._crit_edge

._crit_edge443._crit_edge:                        ; preds = %._crit_edge443, %bb.ak
  %.pre-phi565 = phi i64 [ %i.ex, %bb.ak ], [ %indvars.iv.next548, %._crit_edge443 ]
  %i.ez = sext i32 %.2.i to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = sext i32 %.0240.i to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4
  %.286.i = tail call i32 @llvm.smin.i32(i32 %i.fb, i32 %i.fe)
end_hunk_0
