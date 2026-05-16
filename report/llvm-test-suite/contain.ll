inline.NumInlined: 23
begin_hunk_0_@sf_dupl:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_union(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8
  %i.j = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nsw i64 %i.l, 2
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.i, label %sf_list.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = sext i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.q, %bb.b ] ; 2 uses
  %.01314.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01314.i, i64 8 ; 2 uses
  store ptr %.015.i, ptr %.01314.i, align 8, !tbaa !15
  %i.q = getelementptr inbounds [4 x i8], ptr %.015.i, i64 %i.o ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.m
  br i1 %i.r, label %bb.b, label %sf_list.exit

sf_list.exit:                                     ; preds = %bb.b, %bb.a
  %.013.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.p, %bb.b ]
  store ptr null, ptr %.013.lcssa.i, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #9 ; 16 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !8   ; 2 uses
  %i.ab = load i32, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.aa                ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %.idx.i22 = shl nsw i64 %i.ad, 2
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i22
  %i.af = icmp sgt i32 %i.ac, 0
  br i1 %i.af, label %.lr.ph.i24, label %sf_list.exit27

.lr.ph.i24:                                       ; preds = %sf_list.exit
  %i.ag = sext i32 %i.ab to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i24
  %.015.i25 = phi ptr [ %i.z, %.lr.ph.i24 ], [ %i.ai, %bb.c ] ; 2 uses
  %.01314.i26 = phi ptr [ %i.x, %.lr.ph.i24 ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01314.i26, i64 8 ; 2 uses
  store ptr %.015.i25, ptr %.01314.i26, align 8, !tbaa !15
  %i.ai = getelementptr inbounds [4 x i8], ptr %.015.i25, i64 %i.ag ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.ae
  br i1 %i.aj, label %bb.c, label %sf_list.exit27

sf_list.exit27:                                   ; preds = %bb.c, %sf_list.exit
  %.013.lcssa.i23 = phi ptr [ %i.x, %sf_list.exit ], [ %i.ah, %bb.c ]
  store ptr null, ptr %.013.lcssa.i23, align 8, !tbaa !15
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !8
  %. = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.aa)
  %i.al = add nsw i32 %., 1
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #9 ; 5 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not42.i = icmp eq ptr %i.ap, null
  br i1 %.not42.i, label %.preheader.i, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %sf_list.exit27
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !15
  %.not39.i60 = icmp eq ptr %i.aq, null
  br i1 %.not39.i60, label %.lr.ph61.i.preheader, label %.lr.ph

.lr.ph.i28:                                       ; preds = %bb.g
  %i.ar = load ptr, ptr %.135.i, align 8, !tbaa !15
  %.not39.i = icmp eq ptr %i.ar, null
  br i1 %.not39.i, label %.lr.ph61.i.preheader, label %.lr.ph

.lr.ph61.i.preheader:                             ; preds = %.lr.ph.i28, %.lr.ph.i28.preheader
  %.lcssa56 = phi ptr [ %i.ap, %.lr.ph.i28.preheader ], [ %i.bd, %.lr.ph.i28 ]
  %.047.i.lcssa = phi ptr [ %i.ao, %.lr.ph.i28.preheader ], [ %.1.i, %.lr.ph.i28 ]
  %.02646.i.lcssa = phi ptr [ %i.x, %.lr.ph.i28.preheader ], [ %.127.i, %.lr.ph.i28 ]
  %.02845.i.lcssa = phi ptr [ %i.f, %.lr.ph.i28.preheader ], [ %.129.i, %.lr.ph.i28 ]
  %.03144.i.lcssa = phi ptr [ %i.f, %.lr.ph.i28.preheader ], [ %.132.i, %.lr.ph.i28 ]
  %.03443.i.lcssa = phi ptr [ %i.x, %.lr.ph.i28.preheader ], [ %.135.i, %.lr.ph.i28 ]
  br label %.lr.ph61.i

.lr.ph:                                           ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %.03443.i65 = phi ptr [ %.135.i, %.lr.ph.i28 ], [ %i.x, %.lr.ph.i28.preheader ] ; 6 uses
  %.03144.i64 = phi ptr [ %.132.i, %.lr.ph.i28 ], [ %i.f, %.lr.ph.i28.preheader ] ; 7 uses
  %.02845.i63 = phi ptr [ %.129.i, %.lr.ph.i28 ], [ %i.f, %.lr.ph.i28.preheader ] ; 5 uses
  %.02646.i62 = phi ptr [ %.127.i, %.lr.ph.i28 ], [ %i.x, %.lr.ph.i28.preheader ] ; 5 uses
  %.047.i61 = phi ptr [ %.1.i, %.lr.ph.i28 ], [ %i.ao, %.lr.ph.i28.preheader ] ; 5 uses
  %i.as = tail call i32 (ptr, ptr, ...) @descend(ptr noundef nonnull %.03144.i64, ptr noundef nonnull %.03443.i65) #10, !inline_history !33
  switch i32 %i.as, label %bb.g [
    i32 -1, label %bb.d
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.03144.i64, i64 8
  %i.au = load ptr, ptr %.03144.i64, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %.02845.i63, i64 8
  store ptr %i.au, ptr %.02845.i63, align 8, !tbaa !15
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.03144.i64, i64 8
  %i.ax = load ptr, ptr %.03144.i64, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %.047.i61, i64 8
  store ptr %i.ax, ptr %.047.i61, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %.03443.i65, i64 8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.03443.i65, i64 8
  %i.bb = load ptr, ptr %.03443.i65, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %.02646.i62, i64 8
  store ptr %i.bb, ptr %.02646.i62, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph
  %.135.i = phi ptr [ %.03443.i65, %.lr.ph ], [ %.03443.i65, %bb.d ], [ %i.az, %bb.e ], [ %i.ba, %bb.f ] ; 4 uses
  %.132.i = phi ptr [ %.03144.i64, %.lr.ph ], [ %i.at, %bb.d ], [ %i.aw, %bb.e ], [ %.03144.i64, %bb.f ] ; 3 uses
  %.129.i = phi ptr [ %.02845.i63, %.lr.ph ], [ %i.av, %bb.d ], [ %.02845.i63, %bb.e ], [ %.02845.i63, %bb.f ] ; 3 uses
  %.127.i = phi ptr [ %.02646.i62, %.lr.ph ], [ %.02646.i62, %bb.d ], [ %.02646.i62, %bb.e ], [ %i.bc, %bb.f ] ; 3 uses
  %.1.i = phi ptr [ %.047.i61, %.lr.ph ], [ %.047.i61, %bb.d ], [ %i.ay, %bb.e ], [ %.047.i61, %bb.f ] ; 3 uses
  %i.bd = load ptr, ptr %.132.i, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i28

.preheader.i:                                     ; preds = %bb.g, %.lr.ph61.i, %sf_list.exit27
  %.0.lcssa80.i = phi ptr [ %i.ao, %sf_list.exit27 ], [ %.047.i.lcssa, %.lr.ph61.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.026.lcssa79.i = phi ptr [ %i.x, %sf_list.exit27 ], [ %.02646.i.lcssa, %.lr.ph61.i ], [ %.127.i, %bb.g ] ; 2 uses
  %.034.lcssa78.i = phi ptr [ %i.x, %sf_list.exit27 ], [ %.03443.i.lcssa, %.lr.ph61.i ], [ %.135.i, %bb.g ] ; 2 uses
  %.230.lcssa.i = phi ptr [ %i.f, %sf_list.exit27 ], [ %i.bh, %.lr.ph61.i ], [ %.129.i, %bb.g ]
  %i.be = load ptr, ptr %.034.lcssa78.i, align 8, !tbaa !15 ; 2 uses
  %.not4163.i = icmp eq ptr %i.be, null
  br i1 %.not4163.i, label %rm2_equal.exit, label %.lr.ph66.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i
  %i.bf = phi ptr [ %i.bi, %.lr.ph61.i ], [ %.lcssa56, %.lr.ph61.i.preheader ]
  %.23060.i = phi ptr [ %i.bh, %.lr.ph61.i ], [ %.02845.i.lcssa, %.lr.ph61.i.preheader ] ; 2 uses
  %.23359.i = phi ptr [ %i.bg, %.lr.ph61.i ], [ %.03144.i.lcssa, %.lr.ph61.i.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.23359.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.23060.i, i64 8 ; 2 uses
  store ptr %i.bf, ptr %.23060.i, align 8, !tbaa !15
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 2 uses
  %.not40.i = icmp eq ptr %i.bi, null
  br i1 %.not40.i, label %.preheader.i, label %.lr.ph61.i

.lr.ph66.i:                                       ; preds = %.preheader.i, %.lr.ph66.i
  %i.bj = phi ptr [ %i.bm, %.lr.ph66.i ], [ %i.be, %.preheader.i ]
  %.265.i = phi ptr [ %i.bl, %.lr.ph66.i ], [ %.026.lcssa79.i, %.preheader.i ] ; 2 uses
  %.23664.i = phi ptr [ %i.bk, %.lr.ph66.i ], [ %.034.lcssa78.i, %.preheader.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.23664.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.265.i, i64 8 ; 2 uses
  store ptr %i.bj, ptr %.265.i, align 8, !tbaa !15
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !15 ; 2 uses
  %.not41.i = icmp eq ptr %i.bm, null
  br i1 %.not41.i, label %rm2_equal.exit, label %.lr.ph66.i

rm2_equal.exit:                                   ; preds = %.lr.ph66.i, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.026.lcssa79.i, %.preheader.i ], [ %i.bl, %.lr.ph66.i ]
  store ptr null, ptr %.0.lcssa80.i, align 8, !tbaa !15
  store ptr null, ptr %.2.lcssa.i, align 8, !tbaa !15
  store ptr null, ptr %.230.lcssa.i, align 8, !tbaa !15
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not31.i = icmp eq ptr %i.bn, null
  br i1 %.not31.i, label %rm2_contain.exit, label %.preheader.i29

.preheader.i29:                                   ; preds = %rm2_equal.exit, %.loopexit.i
  %i.bo = phi ptr [ %i.cg, %.loopexit.i ], [ %i.bn, %rm2_equal.exit ] ; 3 uses
  %.pn.i = phi ptr [ %i.bp, %.loopexit.i ], [ %i.f, %rm2_equal.exit ]
  %.02032.i = phi ptr [ %.121.i, %.loopexit.i ], [ %i.f, %rm2_equal.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.preheader.i29
  %.023.i = phi ptr [ %i.bq, %bb.m ], [ %i.x, %.preheader.i29 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.023.i, i64 8
  %i.br = load ptr, ptr %.023.i, align 8, !tbaa !15 ; 3 uses
  %.not28.i = icmp eq ptr %i.br, null
  br i1 %.not28.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %2 = load i32, ptr %i.br, align 4, !tbaa !4
  %3 = lshr i32 %2, 16
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  %i.bt = lshr i32 %i.bs, 16
  %4 = icmp samesign ugt i32 %3, %i.bt
  br i1 %4, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bu = and i32 %i.bs, 1023                     ; 2 uses
  %.not35.i = icmp eq i32 %i.bu, 0
  %i.bv = sext i1 %.not35.i to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.019.i = phi i32 [ %i.bu, %bb.j ], [ %i.cd, %bb.l ] ; 4 uses
  %i.bw = zext nneg i32 %.019.i to i64            ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bw
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = xor i32 %i.ca, -1
  %i.cc = and i32 %i.by, %i.cb
  %.not29.i = icmp eq i32 %i.cc, 0
  br i1 %.not29.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = add nsw i32 %.019.i, -1
  %i.ce = icmp sgt i32 %.019.i, 1
  br i1 %i.ce, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i31 = phi i32 [ %.019.i, %bb.k ], [ %i.bv, %bb.l ]
  %.not30.i = icmp eq i32 %.1.i31, 0
  br i1 %.not30.i, label %.loopexit.i, label %bb.h

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8
  store ptr %i.bo, ptr %.02032.i, align 8, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.m, %.critedge.i
  %.121.i = phi ptr [ %i.cf, %.critedge.i ], [ %.02032.i, %bb.m ] ; 2 uses
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 2 uses
  %.not.i30 = icmp eq ptr %i.cg, null
  br i1 %.not.i30, label %rm2_contain.exit, label %.preheader.i29

rm2_contain.exit:                                 ; preds = %.loopexit.i, %rm2_equal.exit
  %.020.lcssa.i = phi ptr [ %i.f, %rm2_equal.exit ], [ %.121.i, %.loopexit.i ] ; 2 uses
  store ptr null, ptr %.020.lcssa.i, align 8, !tbaa !15
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %.not31.i32 = icmp eq ptr %i.ch, null
  br i1 %.not31.i32, label %rm2_contain.exit48, label %.preheader.i33

.preheader.i33:                                   ; preds = %rm2_contain.exit, %.loopexit.i39
  %i.ci = phi ptr [ %i.da, %.loopexit.i39 ], [ %i.ch, %rm2_contain.exit ] ; 3 uses
  %.pn.i34 = phi ptr [ %i.cj, %.loopexit.i39 ], [ %i.x, %rm2_contain.exit ]
  %.02032.i35 = phi ptr [ %.121.i40, %.loopexit.i39 ], [ %i.x, %rm2_contain.exit ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn.i34, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %.preheader.i33
  %.023.i36 = phi ptr [ %i.ck, %bb.s ], [ %i.f, %.preheader.i33 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.023.i36, i64 8
  %i.cl = load ptr, ptr %.023.i36, align 8, !tbaa !15 ; 3 uses
  %.not28.i37 = icmp eq ptr %i.cl, null
  br i1 %.not28.i37, label %.critedge.i38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %5 = load i32, ptr %i.cl, align 4, !tbaa !4
  %6 = lshr i32 %5, 16
  %i.cm = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.cn = lshr i32 %i.cm, 16
  %7 = icmp samesign ugt i32 %6, %i.cn
  br i1 %7, label %bb.p, label %.critedge.i38

bb.p:                                             ; preds = %bb.o
  %i.co = and i32 %i.cm, 1023                     ; 2 uses
  %.not35.i43 = icmp eq i32 %i.co, 0
  %i.cp = sext i1 %.not35.i43 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.019.i44 = phi i32 [ %i.co, %bb.p ], [ %i.cx, %bb.r ] ; 4 uses
  %i.cq = zext nneg i32 %.019.i44 to i64          ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = xor i32 %i.cu, -1
  %i.cw = and i32 %i.cs, %i.cv
  %.not29.i45 = icmp eq i32 %i.cw, 0
  br i1 %.not29.i45, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cx = add nsw i32 %.019.i44, -1
  %i.cy = icmp sgt i32 %.019.i44, 1
  br i1 %i.cy, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i46 = phi i32 [ %.019.i44, %bb.q ], [ %i.cp, %bb.r ]
  %.not30.i47 = icmp eq i32 %.1.i46, 0
  br i1 %.not30.i47, label %.loopexit.i39, label %bb.n

.critedge.i38:                                    ; preds = %bb.o, %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %.02032.i35, i64 8
  store ptr %i.ci, ptr %.02032.i35, align 8, !tbaa !15
  br label %.loopexit.i39

.loopexit.i39:                                    ; preds = %bb.s, %.critedge.i38
  %.121.i40 = phi ptr [ %i.cz, %.critedge.i38 ], [ %.02032.i35, %bb.s ] ; 2 uses
  %i.da = load ptr, ptr %i.cj, align 8, !tbaa !15 ; 2 uses
  %.not.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i41, label %rm2_contain.exit48, label %.preheader.i33

rm2_contain.exit48:                               ; preds = %.loopexit.i39, %rm2_contain.exit
  %.020.lcssa.i42 = phi ptr [ %i.x, %rm2_contain.exit ], [ %.121.i40, %.loopexit.i39 ] ; 2 uses
  %i.db = ptrtoint ptr %.020.lcssa.i to i64
  %i.dc = ptrtoint ptr %i.f to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = lshr exact i64 %i.dd, 3
  %i.df = trunc i64 %i.de to i32
  %i.dg = ptrtoint ptr %.0.lcssa80.i to i64
  %i.dh = ptrtoint ptr %i.ao to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = lshr exact i64 %i.di, 3
  %i.dk = trunc i64 %i.dj to i32
  store ptr null, ptr %.020.lcssa.i42, align 8, !tbaa !15
  %i.dl = ptrtoint ptr %.020.lcssa.i42 to i64
  %i.dm = ptrtoint ptr %i.x to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 3
  %i.dp = trunc i64 %i.do to i32
  %i.dq = add i32 %i.df, %i.dk
  %i.dr = add i32 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !17
  %i.du = tail call ptr @sf_merge(ptr noundef nonnull %i.f, ptr noundef nonnull %i.x, ptr noundef %i.ao, i32 noundef %i.dr, i32 noundef %i.dt)
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %1) #10
  ret ptr %i.du
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @dist_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !34
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.b, ptr noundef %1) #10 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #9 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !14
  %i.n = mul nsw i32 %i.m, %i.l                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx.i = shl nsw i64 %i.o, 2
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph.i, label %sf_sort.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.k, %bb.a ] ; 7 uses
  %.01920.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.s = and i32 %i.r, 65535
  store i32 %i.s, ptr %.021.i, align 4, !tbaa !4
  %i.t = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021.i) #10
  %i.u = shl i32 %i.t, 16
  %i.v = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.w = or i32 %i.v, %i.u
  store i32 %i.w, ptr %.021.i, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %.01920.i, i64 8 ; 2 uses
  store ptr %.021.i, ptr %.01920.i, align 8, !tbaa !15
  %i.y = load i32, ptr %0, align 8, !tbaa !14
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.021.i, i64 %i.z ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.p
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !8
  br label %sf_sort.exit

sf_sort.exit:                                     ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.ac = phi i32 [ %i.l, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.019.lcssa.i = phi ptr [ %i.i, %bb.a ], [ %i.x, %._crit_edge.loopexit.i ]
  store ptr null, ptr %.019.lcssa.i, align 8, !tbaa !15
  %i.ad = sext i32 %i.ac to i64
  tail call void @qsort(ptr noundef %i.i, i64 noundef %i.ad, i64 noundef 8, ptr noundef nonnull @d1_order) #10
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %d1_rm_equal.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sf_sort.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  %.not2930.i = icmp eq ptr %i.ag, null
  br i1 %.not2930.i, label %._crit_edge.i, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 1, %.preheader.i ] ; 2 uses
  %i.ah = phi ptr [ %i.at, %bb.d ], [ %i.af, %.preheader.i ] ; 2 uses
  %.033.i = phi i32 [ %.1.i, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %.02731.i = phi i32 [ %.128.i, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %i.ai = zext nneg i32 %.02731.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ai ; 2 uses
  %i.ak = tail call i32 (ptr, ptr, ...) @d1_order(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ah) #10, !inline_history !38
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 3 uses
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i7
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.ao = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.am, ptr noundef %i.am, ptr noundef %i.an) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i7
  %i.ap = add nsw i32 %.033.i, 1
  %i.aq = sext i32 %.033.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aq
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !15
  %i.as = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.128.i = phi i32 [ %.02731.i, %bb.b ], [ %i.as, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %.033.i, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  %.not29.i = icmp eq ptr %i.au, null
  br i1 %.not29.i, label %._crit_edge.loopexit.i8, label %.lr.ph.i7

._crit_edge.loopexit.i8:                          ; preds = %bb.d
  %.phi.trans.insert.i = zext i32 %.128.i to i64
  %.phi.trans.insert36.i = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.phi.trans.insert.i
  %.pre.i9 = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i8, %.preheader.i
  %i.av = phi ptr [ %.pre.i9, %._crit_edge.loopexit.i8 ], [ %i.ae, %.preheader.i ]
  %.0.lcssa.i = phi i32 [ %.1.i, %._crit_edge.loopexit.i8 ], [ 0, %.preheader.i ] ; 2 uses
  %i.aw = add nsw i32 %.0.lcssa.i, 1
  %i.ax = sext i32 %.0.lcssa.i to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !15
  br label %d1_rm_equal.exit

d1_rm_equal.exit:                                 ; preds = %sf_sort.exit, %._crit_edge.i
  %.2.i = phi i32 [ %i.aw, %._crit_edge.i ], [ 0, %sf_sort.exit ] ; 3 uses
  %i.az = sext i32 %.2.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.az
  store ptr null, ptr %i.ba, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.bd = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %.2.i, i32 noundef %i.bc) #10 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %.2.i, ptr %i.be, align 4, !tbaa !8
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %.not23.i = icmp eq ptr %i.bf, null
  br i1 %.not23.i, label %sf_unlist.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %d1_rm_equal.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@rm_rev_contain:bb.a
  %i.e = lshr i32 %i.d, 16                        ; 2 uses
  %.not36 = icmp eq i32 %i.e, %.02444
  %spec.select = select i1 %.not36, ptr %.03042, ptr %.02643 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.029 = phi ptr [ %0, %.lr.ph ], [ %i.f, %bb.f ] ; 3 uses
  %.not37 = icmp eq ptr %.029, %spec.select
  br i1 %.not37, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.g = load ptr, ptr %.029, align 8, !tbaa !15  ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = and i32 %i.h, 1023                       ; 2 uses
  %.not46 = icmp eq i32 %i.i, 0
  %i.j = sext i1 %.not46 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.023 = phi i32 [ %i.i, %bb.c ], [ %i.r, %bb.e ] ; 4 uses
  %i.k = zext nneg i32 %.023 to i64               ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = xor i32 %i.o, -1
  %i.q = and i32 %i.m, %i.p
  %.not38 = icmp eq i32 %i.q, 0
  br i1 %.not38, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %.023, -1
  %i.s = icmp sgt i32 %.023, 1
  br i1 %i.s, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i32 [ %.023, %bb.d ], [ %i.j, %bb.e ]
  %.not39 = icmp eq i32 %.1, 0
  br i1 %.not39, label %.loopexit, label %bb.b

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.02643, i64 8
  store ptr %i.b, ptr %.02643, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g
  %.127 = phi ptr [ %i.t, %bb.g ], [ %.02643, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.026.lcssa = phi ptr [ %0, %bb.a ], [ %.127, %.loopexit ] ; 2 uses
  store ptr null, ptr %.026.lcssa, align 8, !tbaa !15
  %i.v = ptrtoint ptr %.026.lcssa to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 3
  %i.z = trunc i64 %i.y to i32
  ret i32 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rm2_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not42 = icmp eq ptr %i.a, null
  br i1 %.not42, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %.not3999 = icmp eq ptr %i.b, null
  br i1 %.not3999, label %.lr.ph61.preheader, label %.lr.ph105

.lr.ph:                                           ; preds = %bb.e
  %i.c = load ptr, ptr %.135, align 8, !tbaa !15
  %.not39 = icmp eq ptr %i.c, null
  br i1 %.not39, label %.lr.ph61.preheader, label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.03443104 = phi ptr [ %.135, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 6 uses
  %.03144103 = phi ptr [ %.132, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 7 uses
  %.02845102 = phi ptr [ %.129, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.02646101 = phi ptr [ %.127, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.047100 = phi ptr [ %.1, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %i.d = tail call i32 (ptr, ptr, ...) %3(ptr noundef nonnull %.03144103, ptr noundef nonnull %.03443104) #10
  switch i32 %i.d, label %bb.e [
    i32 -1, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph105
  %i.e = getelementptr inbounds nuw i8, ptr %.03144103, i64 8
  %i.f = load ptr, ptr %.03144103, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %.02845102, i64 8
  store ptr %i.f, ptr %.02845102, align 8, !tbaa !15
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph105
  %i.h = getelementptr inbounds nuw i8, ptr %.03144103, i64 8
  %i.i = load ptr, ptr %.03144103, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %.047100, i64 8
  store ptr %i.i, ptr %.047100, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %.03443104, i64 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph105
  %i.l = getelementptr inbounds nuw i8, ptr %.03443104, i64 8
  %i.m = load ptr, ptr %.03443104, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %.02646101, i64 8
  store ptr %i.m, ptr %.02646101, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph105
  %.135 = phi ptr [ %.03443104, %.lr.ph105 ], [ %.03443104, %bb.b ], [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %.132 = phi ptr [ %.03144103, %.lr.ph105 ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %.03144103, %bb.d ] ; 3 uses
  %.129 = phi ptr [ %.02845102, %.lr.ph105 ], [ %i.g, %bb.b ], [ %.02845102, %bb.c ], [ %.02845102, %bb.d ] ; 3 uses
  %.127 = phi ptr [ %.02646101, %.lr.ph105 ], [ %.02646101, %bb.b ], [ %.02646101, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %.1 = phi ptr [ %.047100, %.lr.ph105 ], [ %.047100, %bb.b ], [ %i.j, %bb.c ], [ %.047100, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %.132, align 8, !tbaa !15  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph61.preheader:                               ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa97 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %.047.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.1, %.lr.ph ]
  %.02646.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %.127, %.lr.ph ]
  %.02845.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.129, %.lr.ph ]
  %.03144.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.132, %.lr.ph ]
  %.03443.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %.135, %.lr.ph ]
  br label %.lr.ph61

.preheader:                                       ; preds = %bb.e, %.lr.ph61, %bb.a
  %.0.lcssa80 = phi ptr [ %2, %bb.a ], [ %.047.lcssa, %.lr.ph61 ], [ %.1, %bb.e ] ; 2 uses
  %.026.lcssa79 = phi ptr [ %1, %bb.a ], [ %.02646.lcssa, %.lr.ph61 ], [ %.127, %bb.e ] ; 2 uses
  %.034.lcssa78 = phi ptr [ %1, %bb.a ], [ %.03443.lcssa, %.lr.ph61 ], [ %.135, %bb.e ] ; 2 uses
  %.230.lcssa = phi ptr [ %0, %bb.a ], [ %i.s, %.lr.ph61 ], [ %.129, %bb.e ]
  %i.p = load ptr, ptr %.034.lcssa78, align 8, !tbaa !15 ; 2 uses
  %.not4163 = icmp eq ptr %i.p, null
  br i1 %.not4163, label %._crit_edge, label %.lr.ph66

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %i.q = phi ptr [ %i.t, %.lr.ph61 ], [ %.lcssa97, %.lr.ph61.preheader ]
  %.23060 = phi ptr [ %i.s, %.lr.ph61 ], [ %.02845.lcssa, %.lr.ph61.preheader ] ; 2 uses
  %.23359 = phi ptr [ %i.r, %.lr.ph61 ], [ %.03144.lcssa, %.lr.ph61.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.23359, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.23060, i64 8 ; 2 uses
  store ptr %i.q, ptr %.23060, align 8, !tbaa !15
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %.not40 = icmp eq ptr %i.t, null
  br i1 %.not40, label %.preheader, label %.lr.ph61

.lr.ph66:                                         ; preds = %.preheader, %.lr.ph66
  %i.u = phi ptr [ %i.x, %.lr.ph66 ], [ %i.p, %.preheader ]
  %.265 = phi ptr [ %i.w, %.lr.ph66 ], [ %.026.lcssa79, %.preheader ] ; 2 uses
  %.23664 = phi ptr [ %i.v, %.lr.ph66 ], [ %.034.lcssa78, %.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.23664, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.265, i64 8 ; 2 uses
  store ptr %i.u, ptr %.265, align 8, !tbaa !15
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %.not41 = icmp eq ptr %i.x, null
  br i1 %.not41, label %._crit_edge, label %.lr.ph66

._crit_edge:                                      ; preds = %.lr.ph66, %.preheader
  %.2.lcssa = phi ptr [ %.026.lcssa79, %.preheader ], [ %i.w, %.lr.ph66 ]
  store ptr null, ptr %.0.lcssa80, align 8, !tbaa !15
  store ptr null, ptr %.2.lcssa, align 8, !tbaa !15
  store ptr null, ptr %.230.lcssa, align 8, !tbaa !15
  %i.y = ptrtoint ptr %.0.lcssa80 to i64
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  ret i32 %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @rm2_contain(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not31 = icmp eq ptr %i.a, null
  br i1 %.not31, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.a, %.loopexit
  %i.b = phi ptr [ %i.t, %.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.pn = phi ptr [ %i.c, %.loopexit ], [ %0, %bb.a ]
  %.02032 = phi ptr [ %.121, %.loopexit ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %.023 = phi ptr [ %i.d, %bb.g ], [ %1, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.e = load ptr, ptr %.023, align 8, !tbaa !15  ; 3 uses
  %.not28 = icmp eq ptr %i.e, null
  br i1 %.not28, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = load i32, ptr %i.e, align 4, !tbaa !4
  %3 = lshr i32 %2, 16
  %i.f = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.g = lshr i32 %i.f, 16
  %4 = icmp samesign ugt i32 %3, %i.g
  br i1 %4, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.f, 1023                       ; 2 uses
  %.not35 = icmp eq i32 %i.h, 0
  %i.i = sext i1 %.not35 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.019 = phi i32 [ %i.h, %bb.d ], [ %i.q, %bb.f ] ; 4 uses
  %i.j = zext nneg i32 %.019 to i64               ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = xor i32 %i.n, -1
  %i.p = and i32 %i.l, %i.o
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %.019, -1
  %i.r = icmp sgt i32 %.019, 1
  br i1 %i.r, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i32 [ %.019, %bb.e ], [ %i.i, %bb.f ]
  %.not30 = icmp eq i32 %.1, 0
  br i1 %.not30, label %.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.02032, i64 8
  store ptr %i.b, ptr %.02032, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.critedge
  %.121 = phi ptr [ %i.s, %.critedge ], [ %.02032, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.020.lcssa = phi ptr [ %0, %bb.a ], [ %.121, %.loopexit ] ; 2 uses
  store ptr null, ptr %.020.lcssa, align 8, !tbaa !15
  %i.u = ptrtoint ptr %.020.lcssa to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 3
  %i.y = trunc i64 %i.x to i32
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_sort(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !14
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nsw i64 %i.l, 2
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.021 = phi ptr [ %i.x, %.lr.ph ], [ %i.h, %bb.a ] ; 7 uses
  %.01920 = phi ptr [ %i.u, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = load i32, ptr %.021, align 4, !tbaa !4
  %i.p = and i32 %i.o, 65535
  store i32 %i.p, ptr %.021, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021) #10
  %i.r = shl i32 %i.q, 16
  %i.s = load i32, ptr %.021, align 4, !tbaa !4
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %.021, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.01920, i64 8 ; 2 uses
  store ptr %.021, ptr %.01920, align 8, !tbaa !15
  %i.v = load i32, ptr %0, align 8, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.021, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.m
  br i1 %i.y, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.z = phi i32 [ %i.i, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.019.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  store ptr null, ptr %.019.lcssa, align 8, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.aa, i64 noundef 8, ptr noundef %1) #10
  ret ptr %i.f
}

declare i32 @set_ord(...) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_list(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8
  %i.j = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nsw i64 %i.l, 2
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = sext i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.015 = phi ptr [ %i.h, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.01314 = phi ptr [ %i.f, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01314, i64 8 ; 2 uses
  store ptr %.015, ptr %.01314, align 8, !tbaa !15
  %i.q = getelementptr inbounds [4 x i8], ptr %.015, i64 %i.o ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.m
  br i1 %i.r, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.013.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.p, %bb.b ]
  store ptr null, ptr %.013.lcssa, align 8, !tbaa !15
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_unlist(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %1, i32 noundef %2) #10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit32
  %i.f = phi ptr [ %i.aq, %.loopexit32 ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %.pn = phi ptr [ %i.am, %.loopexit32 ], [ %0, %.lr.ph.preheader ]
  %.01824 = phi ptr [ %i.ap, %.loopexit32 ], [ %i.e, %.lr.ph.preheader ] ; 8 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.h, 7
  %.0182427 = ptrtoaddr ptr %.01824 to i64
  %i.k = ptrtoaddr ptr %i.f to i64
  %i.l = sub i64 %i.k, %.0182427
  %diff.check = icmp ult i64 %i.l, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.j, 2040                     ; 3 uses
  %i.m = sub nsw i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = sub i64 %i.i, %index                     ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -12
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -28
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.01824, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !4
  store <4 x i32> %wide.load28, ptr %i.t, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !43
end_hunk_1
