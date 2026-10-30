Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_list_join?download=true
inline.NumInlined: 16
begin_hunk_0_@core_bench_list:bb.a
  %i.bi = icmp eq i32 %.2.us.i, 0
  br i1 %i.bi, label %bb.j, label %.critedge.thread.us.i

bb.j:                                             ; preds = %.critedge.us.i
  %i.bj = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.bk = add nsw i32 %.043.us.i, -1
  br label %bb.ac

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.bl = icmp ne i32 %.043.us.i, 0
  %i.bm = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond.us.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge.thread.us.i
  %i.bn = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.bo = add nsw i32 %.2.us.i, -1
  br label %bb.ac

bb.l:                                             ; preds = %.critedge.thread.us.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36 ; 2 uses
  %i.bt = load i16, ptr %i.bq, align 2, !tbaa !16 ; 6 uses
  %i.bu = and i16 %i.bt, 128
  %.not.i115 = icmp eq i16 %i.bu, 0
  br i1 %.not.i115, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = and i16 %i.bt, 127
  br label %calc_func.exit119

bb.n:                                             ; preds = %bb.l
  %i.bw = and i16 %i.bt, 7
  %i.bx = lshr i16 %i.bt, 3
  %i.by = and i16 %i.bx, 15
  %i.bz = mul nuw nsw i16 %i.by, 17               ; 2 uses
  switch i16 %i.bw, label %bb.s [
    i16 0, label %bb.o
    i16 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %spec.store.select.i118 = tail call i16 @llvm.umax.i16(i16 %i.bz, i16 34)
  %i.ca = load i32, ptr %i.ax, align 8, !tbaa !24
  %i.cb = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.cc = load i16, ptr %0, align 8, !tbaa !26
  %i.cd = load i16, ptr %i.az, align 2, !tbaa !27
  %i.ce = load i16, ptr %i.av, align 8, !tbaa !28
  %i.cf = tail call zeroext i16 @core_bench_state(i32 noundef %i.ca, ptr noundef %i.cb, i16 noundef signext %i.cc, i16 noundef signext %i.cd, i16 noundef signext %spec.store.select.i118, i16 noundef zeroext %i.ce) #9 ; 3 uses
  %i.cg = load i16, ptr %i.ba, align 2, !tbaa !29
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  store i16 %i.cf, ptr %i.ba, align 2, !tbaa !29
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ci = load i16, ptr %i.av, align 8, !tbaa !28
  %i.cj = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.au, i16 noundef signext %i.bz, i16 noundef zeroext %i.ci) #9 ; 3 uses
  %i.ck = load i16, ptr %i.aw, align 4, !tbaa !30
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i16 %i.cj, ptr %i.aw, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.0.i117 = phi i16 [ %i.cj, %bb.q ], [ %i.cf, %bb.p ], [ %i.cf, %bb.o ], [ %i.cj, %bb.r ], [ %i.bt, %bb.n ] ; 2 uses
  %i.cm = load i16, ptr %i.av, align 8, !tbaa !28
  %i.cn = tail call zeroext i16 @crcu16(i16 noundef zeroext %.0.i117, i16 noundef zeroext %i.cm) #9
  store i16 %i.cn, ptr %i.av, align 8, !tbaa !28
  %i.co = and i16 %.0.i117, 127                   ; 2 uses
  %i.cp = and i16 %i.bt, -256
  %i.cq = or disjoint i16 %i.cp, %i.co
  %i.cr = or disjoint i16 %i.cq, 128
  store i16 %i.cr, ptr %i.bq, align 2, !tbaa !16
  br label %calc_func.exit119

calc_func.exit119:                                ; preds = %bb.m, %bb.s
  %.034.i116 = phi i16 [ %i.bv, %bb.m ], [ %i.co, %bb.s ]
  %i.cs = load i16, ptr %i.bs, align 2, !tbaa !16 ; 6 uses
  %i.ct = and i16 %i.cs, 128
  %.not.i113 = icmp eq i16 %i.ct, 0
  br i1 %.not.i113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %calc_func.exit119
  %i.cu = and i16 %i.cs, 127
  br label %calc_func.exit

bb.u:                                             ; preds = %calc_func.exit119
  %i.cv = and i16 %i.cs, 7
  %i.cw = lshr i16 %i.cs, 3
  %i.cx = and i16 %i.cw, 15
  %i.cy = mul nuw nsw i16 %i.cx, 17               ; 2 uses
  switch i16 %i.cv, label %bb.z [
    i16 0, label %bb.v
    i16 1, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %spec.store.select.i = tail call i16 @llvm.umax.i16(i16 %i.cy, i16 34)
  %i.cz = load i32, ptr %i.ax, align 8, !tbaa !24
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.db = load i16, ptr %0, align 8, !tbaa !26
  %i.dc = load i16, ptr %i.az, align 2, !tbaa !27
  %i.dd = load i16, ptr %i.av, align 8, !tbaa !28
  %i.de = tail call zeroext i16 @core_bench_state(i32 noundef %i.cz, ptr noundef %i.da, i16 noundef signext %i.db, i16 noundef signext %i.dc, i16 noundef signext %spec.store.select.i, i16 noundef zeroext %i.dd) #9 ; 3 uses
  %i.df = load i16, ptr %i.ba, align 2, !tbaa !29
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  store i16 %i.de, ptr %i.ba, align 2, !tbaa !29
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.dh = load i16, ptr %i.av, align 8, !tbaa !28
  %i.di = tail call zeroext i16 @core_bench_matrix(ptr noundef nonnull %i.au, i16 noundef signext %i.cy, i16 noundef zeroext %i.dh) #9 ; 3 uses
  %i.dj = load i16, ptr %i.aw, align 4, !tbaa !30
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i16 %i.di, ptr %i.aw, align 4, !tbaa !30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.0.i114 = phi i16 [ %i.di, %bb.x ], [ %i.de, %bb.w ], [ %i.de, %bb.v ], [ %i.di, %bb.y ], [ %i.cs, %bb.u ] ; 2 uses
  %i.dl = load i16, ptr %i.av, align 8, !tbaa !28
  %i.dm = tail call zeroext i16 @crcu16(i16 noundef zeroext %.0.i114, i16 noundef zeroext %i.dl) #9
  store i16 %i.dm, ptr %i.av, align 8, !tbaa !28
  %i.dn = and i16 %.0.i114, 127                   ; 2 uses
  %i.do = and i16 %i.cs, -256
  %i.dp = or disjoint i16 %i.do, %i.dn
  %i.dq = or disjoint i16 %i.dp, 128
  store i16 %i.dq, ptr %i.bs, align 2, !tbaa !16
  br label %calc_func.exit

calc_func.exit:                                   ; preds = %bb.t, %bb.z
  %.034.i = phi i16 [ %i.cu, %bb.t ], [ %i.dn, %bb.z ]
  %.not131 = icmp samesign ugt i16 %.034.i116, %.034.i
  br i1 %.not131, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %calc_func.exit
  %i.dr = load ptr, ptr %.253.us.i, align 8, !tbaa !37
  %i.ds = add nsw i32 %.043.us.i, -1
  br label %bb.ac

bb.ab:                                            ; preds = %calc_func.exit
  %i.dt = load ptr, ptr %.156.us.i, align 8, !tbaa !37
  %i.du = add nsw i32 %.2.us.i, -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.k, %bb.j
  %.257.us.i = phi ptr [ %.156.us.i, %bb.j ], [ %i.dt, %bb.ab ], [ %.156.us.i, %bb.aa ], [ %i.bn, %bb.k ] ; 2 uses
  %.354.us.i = phi ptr [ %i.bj, %bb.j ], [ %.253.us.i, %bb.ab ], [ %i.dr, %bb.aa ], [ %.253.us.i, %bb.k ] ; 2 uses
  %.050.us.i = phi ptr [ %.253.us.i, %bb.j ], [ %.156.us.i, %bb.ab ], [ %.253.us.i, %bb.aa ], [ %.156.us.i, %bb.k ] ; 4 uses
  %.3.us.i = phi i32 [ 0, %bb.j ], [ %i.du, %bb.ab ], [ %.2.us.i, %bb.aa ], [ %i.bo, %bb.k ] ; 2 uses
  %.1.us.i = phi i32 [ %i.bk, %bb.j ], [ %.043.us.i, %bb.ab ], [ %i.ds, %bb.aa ], [ %.043.us.i, %bb.k ] ; 2 uses
  %.not65.us.i = icmp eq ptr %.149.us.i, null
  br i1 %.not65.us.i, label %._crit_edge.us.i.outer, label %bb.ad, !llvm.loop !4

bb.ad:                                            ; preds = %bb.ac
  store ptr %.050.us.i, ptr %.149.us.i, align 8, !tbaa !37
  br label %._crit_edge.us.i, !llvm.loop !4

.loopexit.us.i:                                   ; preds = %bb.i
  br i1 %i.bg, label %.lr.ph.us.i, label %._crit_edge80.i, !llvm.loop !5

._crit_edge80.i:                                  ; preds = %.loopexit.us.i
  store ptr null, ptr %.149.us.i, align 8, !tbaa !37
  %i.dv = icmp eq i32 %.04677.us.i, 0
  %i.dw = shl nuw nsw i32 %.047.i, 1
  br i1 %i.dv, label %core_list_mergesort.exit, label %.lr.ph79.i

core_list_mergesort.exit:                         ; preds = %._crit_edge80.i, %._crit_edge
  %.149 = phi ptr [ %.048.lcssa, %._crit_edge ], [ %.260.us.i.ph, %._crit_edge80.i ] ; 7 uses
  %i.dx = load ptr, ptr %.149, align 8, !tbaa !37 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !37 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ec = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !25
  store <2 x ptr> %i.ec, ptr %i.dx, align 8, !tbaa !25
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !36
  store ptr null, ptr %i.dy, align 8, !tbaa !37
  %i.ed = icmp sgt i16 %.sroa.6.0.lcssa, -1
  br i1 %i.ed, label %.lr.ph27.i75, label %.lr.ph.i69

.lr.ph27.i75:                                     ; preds = %core_list_mergesort.exit, %bb.ae
  %.01426.i76 = phi ptr [ %i.ei, %bb.ae ], [ %.149, %core_list_mergesort.exit ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01426.i76, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !33
  %.not17.i77 = icmp eq i16 %i.eh, %.sroa.6.0.lcssa
  br i1 %.not17.i77, label %.lr.ph155, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph27.i75
  %i.ei = load ptr, ptr %.01426.i76, align 8, !tbaa !37 ; 2 uses
  %.not16.i78 = icmp eq ptr %i.ei, null
  br i1 %.not16.i78, label %core_list_find.exit79.a, label %.lr.ph27.i75, !llvm.loop !0

.lr.ph.i69:                                       ; preds = %core_list_mergesort.exit, %bb.af
  %.122.i70 = phi ptr [ %i.en, %bb.af ], [ %.149, %core_list_mergesort.exit ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.122.i70, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !32
  %i.em = and i16 %i.el, 255
  %.not15.i71 = icmp eq i16 %i.em, %.sroa.0.0.lcssa
  br i1 %.not15.i71, label %.lr.ph155, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i69
  %i.en = load ptr, ptr %.122.i70, align 8, !tbaa !37 ; 2 uses
  %.not.i72 = icmp eq ptr %i.en, null
  br i1 %.not.i72, label %core_list_find.exit79.a, label %.lr.ph.i69, !llvm.loop !1

core_list_find.exit79.a:                          ; preds = %bb.af, %bb.ae
  %i.eo = load ptr, ptr %.149, align 8, !tbaa !37 ; 2 uses
  %.not61152 = icmp eq ptr %i.eo, null
  br i1 %.not61152, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph.i69, %.lr.ph27.i75, %core_list_find.exit79.a
  %.047188 = phi ptr [ %i.eo, %core_list_find.exit79.a ], [ %.01426.i76, %.lr.ph27.i75 ], [ %.122.i70, %.lr.ph.i69 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.149, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph155, %bb.ag
  %.1154 = phi ptr [ %.047188, %.lr.ph155 ], [ %i.et, %bb.ag ]
  %.3153 = phi i16 [ %i.as, %.lr.ph155 ], [ %i.es, %bb.ag ]
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !36
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !32
  %i.es = tail call zeroext i16 @crc16(i16 noundef signext %i.er, i16 noundef zeroext %.3153) #9 ; 2 uses
  %i.et = load ptr, ptr %.1154, align 8, !tbaa !37 ; 2 uses
  %.not61 = icmp eq ptr %i.et, null
  br i1 %.not61, label %._crit_edge156.loopexit, label %bb.ag, !llvm.loop !40

._crit_edge156.loopexit:                          ; preds = %bb.ag
  %.pre = load ptr, ptr %i.eb, align 8, !tbaa !36
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %._crit_edge156.loopexit, %core_list_find.exit79.a
  %i.eu = phi ptr [ %i.ea, %core_list_find.exit79.a ], [ %.pre, %._crit_edge156.loopexit ]
  %.3.lcssa = phi i16 [ %i.as, %core_list_find.exit79.a ], [ %i.es, %._crit_edge156.loopexit ] ; 2 uses
  %i.ev = load ptr, ptr %.149, align 8, !tbaa !37 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !25
  store <2 x ptr> %i.ex, ptr %i.dy, align 8, !tbaa !25
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !36
  store ptr %i.dy, ptr %i.ev, align 8, !tbaa !37
  br label %.lr.ph79.i80

.lr.ph79.i80:                                     ; preds = %._crit_edge80.i101, %._crit_edge156
  %.058.i81 = phi ptr [ %.149, %._crit_edge156 ], [ %.260.us.i94.ph, %._crit_edge80.i101 ] ; 2 uses
  %.047.i82 = phi i32 [ 1, %._crit_edge156 ], [ %i.gh, %._crit_edge80.i101 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i81) ]
  br label %.lr.ph.us.i83

.lr.ph.us.i83:                                    ; preds = %.loopexit.us.i100, %.lr.ph79.i80
  %.04677.us.i84 = phi i32 [ %i.ey, %.loopexit.us.i100 ], [ 0, %.lr.ph79.i80 ] ; 2 uses
  %.04876.us.i85 = phi ptr [ %.149.us.i97, %.loopexit.us.i100 ], [ null, %.lr.ph79.i80 ]
  %.05575.us.i86 = phi ptr [ %.253.us.i96, %.loopexit.us.i100 ], [ %.058.i81, %.lr.ph79.i80 ] ; 2 uses
  %.15974.us.i87 = phi ptr [ %.260.us.i94.ph, %.loopexit.us.i100 ], [ null, %.lr.ph79.i80 ]
  %i.ey = add nuw nsw i32 %.04677.us.i84, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %exitcond.not.i91 = icmp eq i32 %i.ez, %.047.i82
  br i1 %exitcond.not.i91, label %._crit_edge.us.i92.preheader, label %bb.ai, !llvm.loop !3

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.us.i83
  %.068.us.i88 = phi i32 [ 0, %.lr.ph.us.i83 ], [ %i.ez, %bb.ah ]
  %.05166.us.i89 = phi ptr [ %.05575.us.i86, %.lr.ph.us.i83 ], [ %i.fa, %bb.ah ]
  %i.ez = add nuw nsw i32 %.068.us.i88, 1         ; 3 uses
  %i.fa = load ptr, ptr %.05166.us.i89, align 8, !tbaa !37 ; 3 uses
  %.not64.us.i90 = icmp eq ptr %i.fa, null
  br i1 %.not64.us.i90, label %._crit_edge.us.i92.preheader, label %bb.ah

._crit_edge.us.i92.preheader:                     ; preds = %bb.ai, %bb.ah
  %.2.us.i98.ph = phi i32 [ %i.ez, %bb.ai ], [ %.047.i82, %bb.ah ]
  br label %._crit_edge.us.i92.outer

._crit_edge.us.i92.outer:                         ; preds = %bb.ap, %._crit_edge.us.i92.preheader
  %.260.us.i94.ph = phi ptr [ %.15974.us.i87, %._crit_edge.us.i92.preheader ], [ %.050.us.i107, %bb.ap ] ; 4 uses
  %.156.us.i95.ph = phi ptr [ %.05575.us.i86, %._crit_edge.us.i92.preheader ], [ %.257.us.i105, %bb.ap ]
  %.253.us.i96.ph = phi ptr [ %i.fa, %._crit_edge.us.i92.preheader ], [ %.354.us.i106, %bb.ap ]
  %.149.us.i97.ph = phi ptr [ %.04876.us.i85, %._crit_edge.us.i92.preheader ], [ %.050.us.i107, %bb.ap ]
  %.2.us.i98.ph211 = phi i32 [ %.2.us.i98.ph, %._crit_edge.us.i92.preheader ], [ %.3.us.i108, %bb.ap ]
  %.043.us.i99.ph = phi i32 [ %.047.i82, %._crit_edge.us.i92.preheader ], [ %.1.us.i109, %bb.ap ]
  br label %._crit_edge.us.i92

._crit_edge.us.i92:                               ; preds = %._crit_edge.us.i92.outer, %bb.aq
  %.156.us.i95 = phi ptr [ %.257.us.i105, %bb.aq ], [ %.156.us.i95.ph, %._crit_edge.us.i92.outer ] ; 7 uses
  %.253.us.i96 = phi ptr [ %.354.us.i106, %bb.aq ], [ %.253.us.i96.ph, %._crit_edge.us.i92.outer ] ; 10 uses
  %.149.us.i97 = phi ptr [ %.050.us.i107, %bb.aq ], [ %.149.us.i97.ph, %._crit_edge.us.i92.outer ] ; 4 uses
  %.2.us.i98 = phi i32 [ %.3.us.i108, %bb.aq ], [ %.2.us.i98.ph211, %._crit_edge.us.i92.outer ] ; 5 uses
  %.043.us.i99 = phi i32 [ %.1.us.i109, %bb.aq ], [ %.043.us.i99.ph, %._crit_edge.us.i92.outer ] ; 6 uses
  %i.fb = icmp sgt i32 %.2.us.i98, 0
  br i1 %i.fb, label %.critedge.thread.us.i103, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.us.i92
  %i.fc = icmp sgt i32 %.043.us.i99, 0
  %i.fd = icmp ne ptr %.253.us.i96, null          ; 2 uses
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %.critedge.us.i102, label %.loopexit.us.i100

.critedge.us.i102:                                ; preds = %bb.aj
  %i.ff = icmp eq i32 %.2.us.i98, 0
  br i1 %i.ff, label %bb.ak, label %.critedge.thread.us.i103

bb.ak:                                            ; preds = %.critedge.us.i102
  %i.fg = load ptr, ptr %.253.us.i96, align 8, !tbaa !37
  %i.fh = add nsw i32 %.043.us.i99, -1
  br label %bb.ap

.critedge.thread.us.i103:                         ; preds = %.critedge.us.i102, %._crit_edge.us.i92
  %i.fi = icmp ne i32 %.043.us.i99, 0
  %i.fj = icmp ne ptr %.253.us.i96, null
  %or.cond.us.i104 = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond.us.i104, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.thread.us.i103
  %i.fk = load ptr, ptr %.156.us.i95, align 8, !tbaa !37
  %i.fl = add nsw i32 %.2.us.i98, -1
  br label %bb.ap

bb.am:                                            ; preds = %.critedge.thread.us.i103
  %i.fm = getelementptr inbounds nuw i8, ptr %.156.us.i95, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !36 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.253.us.i96, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !36 ; 3 uses
  %i.fq = load i16, ptr %i.fn, align 2, !tbaa !32 ; 2 uses
  %i.fr = and i16 %i.fq, -256
  %i.fs = lshr i16 %i.fq, 8
  %i.ft = or disjoint i16 %i.fs, %i.fr
  store i16 %i.ft, ptr %i.fn, align 2, !tbaa !32
  %i.fu = load i16, ptr %i.fp, align 2, !tbaa !32 ; 2 uses
  %i.fv = and i16 %i.fu, -256
  %i.fw = lshr i16 %i.fu, 8
  %i.fx = or disjoint i16 %i.fw, %i.fv
  store i16 %i.fx, ptr %i.fp, align 2, !tbaa !32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !33
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !33
  %.not.a = icmp sgt i16 %i.fz, %i.gb
  br i1 %.not.a, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gc = load ptr, ptr %.253.us.i96, align 8, !tbaa !37
  %i.gd = add nsw i32 %.043.us.i99, -1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ge = load ptr, ptr %.156.us.i95, align 8, !tbaa !37
  %i.gf = add nsw i32 %.2.us.i98, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  %.257.us.i105 = phi ptr [ %.156.us.i95, %bb.ak ], [ %i.ge, %bb.ao ], [ %.156.us.i95, %bb.an ], [ %i.fk, %bb.al ] ; 2 uses
  %.354.us.i106 = phi ptr [ %i.fg, %bb.ak ], [ %.253.us.i96, %bb.ao ], [ %i.gc, %bb.an ], [ %.253.us.i96, %bb.al ] ; 2 uses
  %.050.us.i107 = phi ptr [ %.253.us.i96, %bb.ak ], [ %.156.us.i95, %bb.ao ], [ %.253.us.i96, %bb.an ], [ %.156.us.i95, %bb.al ] ; 4 uses
  %.3.us.i108 = phi i32 [ 0, %bb.ak ], [ %i.gf, %bb.ao ], [ %.2.us.i98, %bb.an ], [ %i.fl, %bb.al ] ; 2 uses
  %.1.us.i109 = phi i32 [ %i.fh, %bb.ak ], [ %.043.us.i99, %bb.ao ], [ %i.gd, %bb.an ], [ %.043.us.i99, %bb.al ] ; 2 uses
  %.not65.us.i110 = icmp eq ptr %.149.us.i97, null
  br i1 %.not65.us.i110, label %._crit_edge.us.i92.outer, label %bb.aq, !llvm.loop !4

bb.aq:                                            ; preds = %bb.ap
  store ptr %.050.us.i107, ptr %.149.us.i97, align 8, !tbaa !37
  br label %._crit_edge.us.i92, !llvm.loop !4

.loopexit.us.i100:                                ; preds = %bb.aj
  br i1 %i.fd, label %.lr.ph.us.i83, label %._crit_edge80.i101, !llvm.loop !5

._crit_edge80.i101:                               ; preds = %.loopexit.us.i100
  store ptr null, ptr %.149.us.i97, align 8, !tbaa !37
  %i.gg = icmp eq i32 %.04677.us.i84, 0
  %i.gh = shl nuw nsw i32 %.047.i82, 1
  br i1 %i.gg, label %core_list_mergesort.exit112.preheader, label %.lr.ph79.i80

core_list_mergesort.exit112.preheader:            ; preds = %._crit_edge80.i101
  %.2158 = load ptr, ptr %.260.us.i94.ph, align 8, !tbaa !37 ; 2 uses
  %.not62159 = icmp eq ptr %.2158, null
  br i1 %.not62159, label %core_list_mergesort.exit112._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %core_list_mergesort.exit112.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %.260.us.i94.ph, i64 8
  br label %core_list_mergesort.exit112

core_list_mergesort.exit112:                      ; preds = %.lr.ph162, %core_list_mergesort.exit112
  %.2161 = phi ptr [ %.2158, %.lr.ph162 ], [ %.2, %core_list_mergesort.exit112 ]
  %.4160 = phi i16 [ %.3.lcssa, %.lr.ph162 ], [ %i.gl, %core_list_mergesort.exit112 ]
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !36
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !32
  %i.gl = tail call zeroext i16 @crc16(i16 noundef signext %i.gk, i16 noundef zeroext %.4160) #9 ; 2 uses
  %.2 = load ptr, ptr %.2161, align 8, !tbaa !37  ; 2 uses
  %.not62 = icmp eq ptr %.2, null
  br i1 %.not62, label %core_list_mergesort.exit112._crit_edge, label %core_list_mergesort.exit112, !llvm.loop !41

core_list_mergesort.exit112._crit_edge:           ; preds = %core_list_mergesort.exit112, %core_list_mergesort.exit112.preheader
  %.4.lcssa = phi i16 [ %.3.lcssa, %core_list_mergesort.exit112.preheader ], [ %i.gl, %core_list_mergesort.exit112 ]
  ret i16 %.4.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @core_list_find(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i16 %i.b, -1
  %.not1625 = icmp eq ptr %0, null                ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.a
  br i1 %.not1625, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader18
  %i.d = load i16, ptr %1, align 2, !tbaa !32
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %.not1625, label %.critedge, label %.lr.ph27

.lr.ph27:                                         ; preds = %.preheader, %bb.b
  %.01426 = phi ptr [ %i.i, %bb.b ], [ %0, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01426, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !33
end_hunk_0
