inline.NumInlined: 152
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Struct___init__:bb.a
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %.not144.i.i = icmp eq i64 %.0111206.i.i, 922337203685477580
  %i.bg = and i8 %i.bd, 56
  %.not145.i.i = icmp eq i8 %i.bg, 48
  %or.cond147.i.i = and i1 %.not145.i.i, %.not144.i.i
  br i1 %or.cond147.i.i, label %bb.v, label %align.exit.thread.i.i

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bh = mul i64 %.0111206.i.i, 10
  %i.bi = zext nneg i8 %i.bc to i64
  %i.bj = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = getelementptr i8, ptr %i.be, i64 1      ; 2 uses
  %i.bl = load i8, ptr %i.be, align 1, !tbaa !24  ; 3 uses
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 10
  br i1 %i.bn, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.t
  %.0111.lcssa.i.i = phi i64 [ %i.ax, %bb.t ], [ %i.bj, %bb.v ]
  %.lcssa187.i.i = phi ptr [ %i.ay, %bb.t ], [ %i.bk, %bb.v ]
  %.lcssa185.i.i = phi i8 [ %i.az, %bb.t ], [ %i.bl, %bb.v ] ; 2 uses
  %i.bo = icmp eq i8 %.lcssa185.i.i, 0
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.bp = getelementptr i8, ptr %.val.i.i, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  call void @PyErr_SetString(ptr noundef %i.bq, ptr noundef nonnull @.str.47) #7, !inline_history !83
  br label %Struct___init___impl.exit

bb.x:                                             ; preds = %._crit_edge.i.i, %bb.s
  %.2122.i.i = phi ptr [ %.lcssa187.i.i, %._crit_edge.i.i ], [ %i.ar, %bb.s ]
  %.0118.i.i = phi i8 [ %.lcssa185.i.i, %._crit_edge.i.i ], [ %i.aq, %bb.s ] ; 2 uses
  %.1112.i.i = phi i64 [ %.0111.lcssa.i.i, %._crit_edge.i.i ], [ 1, %bb.s ] ; 5 uses
  %i.br = load i8, ptr %.0.i.i.i, align 16, !tbaa !58 ; 2 uses
  %.not9.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not9.i.i.i, label %getentry.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %bb.y
  %i.bs = phi i8 [ %i.bv, %bb.y ], [ %i.br, %bb.x ]
  %.010.i.i.i = phi ptr [ %i.bu, %bb.y ], [ %.0.i.i.i, %bb.x ] ; 3 uses
  %i.bt = icmp eq i8 %.0118.i.i, %i.bs
  br i1 %i.bt, label %getentry.exit.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = getelementptr i8, ptr %.010.i.i.i, i64 40 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !58  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i, label %getentry.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !86

getentry.exit.thread.i.i:                         ; preds = %bb.x, %bb.y
  %i.bw = getelementptr i8, ptr %.val.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !22
  call void @PyErr_SetString(ptr noundef %i.bx, ptr noundef nonnull @.str.60) #7, !inline_history !83
  br label %Struct___init___impl.exit

getentry.exit.i.i:                                ; preds = %.lr.ph.i.i.i
  switch i8 %.0118.i.i, label %bb.aa [
    i8 115, label %bb.z
    i8 112, label %bb.z
    i8 120, label %bb.ac
  ]

bb.z:                                             ; preds = %getentry.exit.i.i, %getentry.exit.i.i
  %i.by = add i64 %.0113.ph.i.i, 1
  %i.bz = add i64 %.0110.ph.i.i, 1
  br label %bb.ac

bb.aa:                                            ; preds = %getentry.exit.i.i
  %i.ca = sub i64 9223372036854775807, %.0113.ph.i.i
  %i.cb = icmp sgt i64 %.1112.i.i, %i.ca
  br i1 %i.cb, label %align.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = add i64 %.1112.i.i, %.0113.ph.i.i
  %.not143.i.i = icmp ne i64 %.1112.i.i, 0
  %i.cd = zext i1 %.not143.i.i to i64
  %spec.select.i.i = add i64 %.0110.ph.i.i, %i.cd
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %getentry.exit.i.i
  %.1114.i.i = phi i64 [ %.0113.ph.i.i, %getentry.exit.i.i ], [ %i.cc, %bb.ab ], [ %i.by, %bb.z ]
  %.1.i.i = phi i64 [ %.0110.ph.i.i, %getentry.exit.i.i ], [ %spec.select.i.i, %bb.ab ], [ %i.bz, %bb.z ]
  %i.ce = getelementptr i8, ptr %.010.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !76 ; 2 uses
  %i.cg = getelementptr i8, ptr %.010.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !87 ; 3 uses
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = icmp sgt i64 %.0115.ph.i.i, 0
  %or.cond.i.i.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i, label %bb.ad, label %align.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ck = add nsw i64 %.0115.ph.i.i, -1
  %i.cl = srem i64 %i.ck, %i.ch
  %i.cm = xor i64 %i.cl, -1
  %i.cn = add i64 %i.ch, %i.cm                    ; 2 uses
  %i.co = sub nuw nsw i64 9223372036854775807, %.0115.ph.i.i
  %i.cp = icmp sgt i64 %i.cn, %i.co
  %i.cq = add i64 %i.cn, %.0115.ph.i.i
  br i1 %i.cp, label %align.exit.thread.i.i, label %align.exit.i.i

align.exit.i.i:                                   ; preds = %bb.ad, %bb.ac
  %.0.i150.i.i = phi i64 [ %i.cq, %bb.ad ], [ %.0115.ph.i.i, %bb.ac ] ; 3 uses
  %i.cr = icmp eq i64 %.0.i150.i.i, -1
  br i1 %i.cr, label %align.exit.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %align.exit.i.i
  %i.cs = sub i64 9223372036854775807, %.0.i150.i.i
  %i.ct = sdiv i64 %i.cs, %i.cf
  %i.cu = icmp sgt i64 %.1112.i.i, %i.ct
  br i1 %i.cu, label %align.exit.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = mul i64 %i.cf, %.1112.i.i
  %i.cw = add i64 %.0.i150.i.i, %i.cv
  br label %.outer171.i.i, !llvm.loop !84

bb.ag:                                            ; preds = %bb.q
  %i.cx = add i64 %.0110.ph.i.i, 1                ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, 288230376151711743
  br i1 %i.cy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cz = call ptr @PyErr_NoMemory() #7, !inline_history !83 ; 0 uses
  br label %Struct___init___impl.exit

bb.ai:                                            ; preds = %bb.ag
  %i.da = shl nuw nsw i64 %i.cx, 5
  %i.db = call ptr @PyMem_Malloc(i64 noundef %i.da) #7, !inline_history !83 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dd = call ptr @PyErr_NoMemory() #7, !inline_history !83 ; 0 uses
  br label %Struct___init___impl.exit

bb.ak:                                            ; preds = %bb.ai
  %i.de = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 2 uses
  %.not137.i.i = icmp eq ptr %i.df, null
  br i1 %.not137.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @PyMem_Free(ptr noundef nonnull %i.df) #7, !inline_history !83
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store ptr %i.db, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr i8, ptr %0, i64 16
  store i64 %.0115.ph.i.i, ptr %i.dg, align 8, !tbaa !26
  %i.dh = getelementptr i8, ptr %0, i64 24
  store i64 %.0113.ph.i.i, ptr %i.dh, align 8, !tbaa !52
  br label %.outer.i.i.outer

.outer.i.i.outer:                                 ; preds = %.outer.i.i.outer.backedge, %bb.am
  %.0124.ph.i.i.ph = phi ptr [ %i.db, %bb.am ], [ %.0124.ph.i.i.ph.be, %.outer.i.i.outer.backedge ] ; 12 uses
  %.3123.ph.i.i.ph = phi ptr [ %.1165.i.i, %bb.am ], [ %.5.i.i, %.outer.i.i.outer.backedge ]
  %.1116.ph.i.i.ph = phi i64 [ 0, %bb.am ], [ %.1116.ph.i.i.ph.be, %.outer.i.i.outer.backedge ]
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.outer.i.i.backedge, %.outer.i.i.outer
  %.3123.ph.i.i = phi ptr [ %.3123.ph.i.i.ph, %.outer.i.i.outer ], [ %.5.i.i, %.outer.i.i.backedge ]
  %.1116.ph.i.i = phi i64 [ %.1116.ph.i.i.ph, %.outer.i.i.outer ], [ %.1116.ph.i.i.be, %.outer.i.i.backedge ] ; 6 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.outer.i.i
  %.3123.i.i = phi ptr [ %i.dj, %bb.ao ], [ %.3123.ph.i.i, %.outer.i.i ] ; 3 uses
  %i.di = load i8, ptr %.3123.i.i, align 1, !tbaa !24 ; 4 uses
  %.not138.i.i = icmp eq i8 %i.di, 0
  br i1 %.not138.i.i, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = getelementptr i8, ptr %.3123.i.i, i64 1 ; 3 uses
  %i.dk = zext i8 %i.di to i64
  %i.dl = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !6
  %i.dn = and i32 %i.dm, 8
  %.not139.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not139.i.i, label %bb.ap, label %bb.an, !llvm.loop !88

bb.ap:                                            ; preds = %bb.ao
  %i.do = add i8 %i.di, -48                       ; 2 uses
  %or.cond5.i.i = icmp ult i8 %i.do, 10
  br i1 %or.cond5.i.i, label %bb.aq, label %.loopexit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.dp = zext nneg i8 %i.do to i64               ; 2 uses
  %i.dq = getelementptr i8, ptr %.3123.i.i, i64 2 ; 2 uses
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !24  ; 3 uses
  %i.ds = add i8 %i.dr, -48
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %.lr.ph211.i.i, label %.loopexit.i.i

.lr.ph211.i.i:                                    ; preds = %bb.aq, %.lr.ph211.i.i
  %i.du = phi i8 [ %i.dy, %.lr.ph211.i.i ], [ %i.dr, %bb.aq ]
  %i.dv = phi ptr [ %i.dx, %.lr.ph211.i.i ], [ %i.dq, %bb.aq ] ; 2 uses
  %.2209.i.i = phi i64 [ %i.dw, %.lr.ph211.i.i ], [ %i.dp, %bb.aq ]
  %3 = zext nneg i8 %i.du to i64
  %4 = mul i64 %.2209.i.i, 10
  %5 = add nsw i64 %3, -48
  %i.dw = add i64 %5, %4                          ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 1      ; 2 uses
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !24  ; 3 uses
  %i.dz = add i8 %i.dy, -48
  %i.ea = icmp ult i8 %i.dz, 10
  br i1 %i.ea, label %.lr.ph211.i.i, label %.loopexit.i.i, !llvm.loop !89

.loopexit.i.i:                                    ; preds = %.lr.ph211.i.i, %bb.aq, %bb.ap
  %.5.i.i = phi ptr [ %i.dj, %bb.ap ], [ %i.dq, %bb.aq ], [ %i.dx, %.lr.ph211.i.i ] ; 2 uses
  %.1119.i.i = phi i8 [ %i.di, %bb.ap ], [ %i.dr, %bb.aq ], [ %i.dy, %.lr.ph211.i.i ] ; 2 uses
  %.3.i.i = phi i64 [ 1, %bb.ap ], [ %i.dp, %bb.aq ], [ %i.dw, %.lr.ph211.i.i ] ; 6 uses
  %i.eb = load i8, ptr %.0.i.i.i, align 16, !tbaa !58 ; 2 uses
  %.not9.i151.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not9.i151.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i152.i.i

.lr.ph.i152.i.i:                                  ; preds = %.loopexit.i.i, %bb.ar
  %i.ec = phi i8 [ %i.ef, %bb.ar ], [ %i.eb, %.loopexit.i.i ]
  %.010.i153.i.i = phi ptr [ %i.ee, %bb.ar ], [ %.0.i.i.i, %.loopexit.i.i ] ; 5 uses
  %i.ed = icmp eq i8 %.1119.i.i, %i.ec
  br i1 %i.ed, label %getentry.exit157.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i152.i.i
  %i.ee = getelementptr i8, ptr %.010.i153.i.i, i64 40 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !58  ; 2 uses
  %.not.i154.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i154.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i152.i.i, !llvm.loop !86

._crit_edge.i155.i.i:                             ; preds = %.loopexit.i.i, %bb.ar
  %i.eg = getelementptr i8, ptr %.val.i.i, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !22
  call void @PyErr_SetString(ptr noundef %i.eh, ptr noundef nonnull @.str.60) #7, !inline_history !83
  unreachable

getentry.exit157.i.i:                             ; preds = %.lr.ph.i152.i.i
  %i.ei = getelementptr i8, ptr %.010.i153.i.i, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !87 ; 3 uses
  %i.ek = icmp ne i64 %i.ej, 0
  %i.el = icmp sgt i64 %.1116.ph.i.i, 0
  %or.cond.i159.i.i = and i1 %i.el, %i.ek
  br i1 %or.cond.i159.i.i, label %bb.as, label %align.exit161.i.i

bb.as:                                            ; preds = %getentry.exit157.i.i
  %i.em = add nsw i64 %.1116.ph.i.i, -1
  %i.en = srem i64 %i.em, %i.ej
  %i.eo = xor i64 %i.en, -1
  %i.ep = add i64 %i.ej, %i.eo                    ; 2 uses
  %i.eq = sub nuw nsw i64 9223372036854775807, %.1116.ph.i.i
  %i.er = icmp sgt i64 %i.ep, %i.eq
  %i.es = add i64 %i.ep, %.1116.ph.i.i
  %spec.select.i160.i.i = select i1 %i.er, i64 -1, i64 %i.es
  br label %align.exit161.i.i

align.exit161.i.i:                                ; preds = %bb.as, %getentry.exit157.i.i
  %.0.i158.i.i = phi i64 [ %spec.select.i160.i.i, %bb.as ], [ %.1116.ph.i.i, %getentry.exit157.i.i ] ; 6 uses
  switch i8 %.1119.i.i, label %bb.av [
    i8 115, label %bb.at
    i8 112, label %bb.at
    i8 120, label %bb.au
  ]

bb.at:                                            ; preds = %align.exit161.i.i, %align.exit161.i.i
  %i.et = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 8
  store i64 %.0.i158.i.i, ptr %i.et, align 8, !tbaa !57
  %i.eu = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 16
  store i64 %.3.i.i, ptr %i.eu, align 8, !tbaa !68
  store ptr %.010.i153.i.i, ptr %.0124.ph.i.i.ph, align 8, !tbaa !53
  %i.ev = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 24
  store i64 1, ptr %i.ev, align 8, !tbaa !56
  %i.ew = add i64 %.0.i158.i.i, %.3.i.i
  br label %.outer.i.i.outer.backedge

.outer.i.i.outer.backedge:                        ; preds = %bb.at, %bb.aw
  %.1116.ph.i.i.ph.be = phi i64 [ %i.fe, %bb.aw ], [ %i.ew, %bb.at ]
  %.0124.ph.i.i.ph.be = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 32
  br label %.outer.i.i.outer, !llvm.loop !88

bb.au:                                            ; preds = %align.exit161.i.i
  %i.ex = add i64 %.0.i158.i.i, %.3.i.i
  br label %.outer.i.i.backedge

bb.av:                                            ; preds = %align.exit161.i.i
  %.not140.i.i = icmp eq i64 %.3.i.i, 0
  br i1 %.not140.i.i, label %.outer.i.i.backedge, label %bb.aw

.outer.i.i.backedge:                              ; preds = %bb.av, %bb.au
  %.1116.ph.i.i.be = phi i64 [ %i.ex, %bb.au ], [ %.0.i158.i.i, %bb.av ]
  br label %.outer.i.i, !llvm.loop !88

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 8
  store i64 %.0.i158.i.i, ptr %i.ey, align 8, !tbaa !57
  %i.ez = getelementptr i8, ptr %.010.i153.i.i, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !76 ; 2 uses
  %i.fb = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 16
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !68
  store ptr %.010.i153.i.i, ptr %.0124.ph.i.i.ph, align 8, !tbaa !53
  %i.fc = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 24
  store i64 %.3.i.i, ptr %i.fc, align 8, !tbaa !56
  %i.fd = mul i64 %i.fa, %.3.i.i
  %i.fe = add i64 %i.fd, %.0.i158.i.i
  br label %.outer.i.i.outer.backedge

bb.ax:                                            ; preds = %bb.an
  store ptr null, ptr %.0124.ph.i.i.ph, align 8, !tbaa !53
  %i.ff = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 8
  store i64 %.1116.ph.i.i, ptr %i.ff, align 8, !tbaa !57
  %i.fg = getelementptr i8, ptr %.0124.ph.i.i.ph, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  br label %Struct___init___impl.exit

align.exit.thread.i.i:                            ; preds = %bb.ae, %align.exit.i.i, %bb.ad, %bb.aa, %bb.u
  %i.fh = getelementptr i8, ptr %.val.i.i, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !22
  call void @PyErr_SetString(ptr noundef %i.fi, ptr noundef nonnull @.str.48) #7, !inline_history !83
  br label %Struct___init___impl.exit

Struct___init___impl.exit:                        ; preds = %align.exit.thread.i.i, %bb.ax, %bb.aj, %bb.ah, %getentry.exit.thread.i.i, %bb.w, %bb.l, %Py_DECREF.exit18.i, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %Py_DECREF.exit18.i ], [ -1, %bb.c ], [ -1, %bb.l ], [ -1, %align.exit.thread.i.i ], [ -1, %bb.w ], [ 0, %bb.ax ], [ -1, %bb.ah ], [ -1, %bb.aj ], [ -1, %getentry.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @s_new(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @PyType_GetSlot(ptr noundef %0, i32 noundef 47) #7
  %i.b = tail call ptr %i.a(ptr noundef %0, i64 noundef 0) #7 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !24 ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr @_Py_NoneStruct, align 8, !tbaa !24
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 40
  store ptr @_Py_NoneStruct, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 -1, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit, %bb.a
  ret ptr %i.b
}

declare void @PyObject_GC_Del(ptr noundef) #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @Struct_iter_unpack(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @Struct_iter_unpack_impl(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @Struct_pack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc ptr @Struct_pack_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @Struct_pack_into(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %i.a = icmp sgt i64 %2, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.5, i64 noundef %2, i64 noundef 2, i64 noundef 9223372036854775807) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !23
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %i.c, ptr noundef nonnull %3, i32 noundef 1) #7
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

end_hunk_0
