Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_CommandAbc9SymFun:bb.a

bb.g:                                             ; preds = %bb.b
  %i.p = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not86 = icmp slt i32 %i.p, %1
  br i1 %.not86, label %bb.h, label %.loopexit115.sink.split

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.u = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.t, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.v = trunc i64 %i.u to i32
  br label %.outer245, !llvm.loop !1337

bb.i:                                             ; preds = %bb.b
  %i.w = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not85 = icmp slt i32 %i.w, %1
  br i1 %.not85, label %bb.j, label %.loopexit115.sink.split

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.ab = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.aa, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.ac = trunc i64 %i.ab to i32
  br label %.outer249, !llvm.loop !1337

bb.k:                                             ; preds = %bb.b
  %i.ad = xor i32 %.057, 1
  br label %bb.b, !llvm.loop !1337

bb.l:                                             ; preds = %bb.b
  %.not78 = icmp eq i32 %.064.ph, 0
  br i1 %.not78, label %bb.m, label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.l
  %i.ae = add nsw i32 %.064.ph, 1
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 16, ptr %i.af, align 8, !tbaa !347
  %i.ah = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !280
  %i.aj = sdiv i32 %.064.ph, 2                    ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = sub nsw i32 63, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 -1, %i.am
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = shl i64 %i.an, %i.ao
  store i32 1, ptr %i.ag, align 4, !tbaa !283
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !100
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %.not79 = icmp eq i32 %.062.ph241, 0
  br i1 %.not79, label %bb.n, label %Vec_WrdPush.exit97

Vec_WrdPush.exit97:                               ; preds = %bb.m
  %i.aq = add nsw i32 %.062.ph241, 1
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 16, ptr %i.ar, align 8, !tbaa !347
  %i.at = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !280
  store i32 1, ptr %i.as, align 4, !tbaa !283
  store i64 2, ptr %i.at, align 8, !tbaa !100
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.not80 = icmp eq i32 %.060.ph246, 0
  br i1 %.not80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %.060.ph246, 1
  %i.aw = tail call fastcc ptr @Vec_WrdAlloc(i32 noundef 1) ; 2 uses
  %i.ax = sub nsw i32 63, %.060.ph246
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 -1, %i.ay
  %i.ba = and i64 %i.az, -6148914691236517206
  tail call fastcc void @Vec_WrdPush(ptr noundef %i.aw, i64 noundef %i.ba)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %.not81 = icmp eq i32 %.058.ph250, 0
  br i1 %.not81, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = add nsw i32 %.058.ph250, 1              ; 4 uses
  %i.bc = icmp ult i32 %i.bb, 2
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.058.ph250, i1 true)
  %i.be = sub nuw nsw i32 32, %i.bd
  %.09.i = select i1 %i.bc, i32 %i.bb, i32 %i.be  ; 3 uses
  %i.bf = tail call fastcc ptr @Vec_WrdAlloc(i32 noundef %.09.i) ; 6 uses
  %i.bg = icmp sgt i32 %.09.i, 0
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.bh = sub nsw i32 63, %.058.ph250
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 -1, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %.09.i to i64
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !283
  %.pre180 = load i32, ptr %i.bf, align 8, !tbaa !347
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit105
  %i.bm = phi i32 [ %.pre180, %.lr.ph ], [ %i.ce, %Vec_WrdPush.exit105 ] ; 7 uses
  %i.bn = phi i32 [ %.pre, %.lr.ph ], [ %i.cf, %Vec_WrdPush.exit105 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit105 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !100
  %i.bq = and i64 %i.bp, %i.bj
  %i.br = icmp eq i32 %i.bn, %i.bm
  br i1 %i.br, label %bb.s, label %.Vec_WrdPush.exit105_crit_edge

.Vec_WrdPush.exit105_crit_edge:                   ; preds = %bb.r
  %.pre181 = load ptr, ptr %i.bl, align 8, !tbaa !280
  br label %Vec_WrdPush.exit105

bb.s:                                             ; preds = %bb.r
  %i.bs = icmp slt i32 %i.bm, 16
  br i1 %i.bs, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !280 ; 2 uses
  %.not9.i.i103 = icmp eq ptr %i.bt, null
  br i1 %.not9.i.i103, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bt, i64 noundef 128) #39
  br label %Vec_WrdGrow.exit11.sink.split.i101

bb.v:                                             ; preds = %bb.t
  %i.bv = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38
  br label %Vec_WrdGrow.exit11.sink.split.i101

bb.w:                                             ; preds = %bb.s
  %i.bw = icmp samesign ult i32 %i.bm, 1073741823
  %i.bx = shl nuw nsw i32 %i.bm, 1
  %spec.select.i98 = select i1 %i.bw, i32 %i.bx, i32 2147483647 ; 4 uses
  %.not.i9.i99 = icmp samesign ult i32 %i.bm, %spec.select.i98
  %.pre182 = load ptr, ptr %i.bl, align 8, !tbaa !280 ; 3 uses
  br i1 %.not.i9.i99, label %bb.x, label %Vec_WrdPush.exit105

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i100 = icmp eq ptr %.pre182, null
  %i.by = zext nneg i32 %spec.select.i98 to i64
  %i.bz = shl nuw nsw i64 %i.by, 3                ; 2 uses
  br i1 %.not9.i10.i100, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = tail call ptr @realloc(ptr noundef nonnull %.pre182, i64 noundef %i.bz) #39
  br label %Vec_WrdGrow.exit11.sink.split.i101

bb.z:                                             ; preds = %bb.x
  %i.cb = tail call noalias ptr @malloc(i64 noundef %i.bz) #38
  br label %Vec_WrdGrow.exit11.sink.split.i101

Vec_WrdGrow.exit11.sink.split.i101:               ; preds = %bb.y, %bb.z, %bb.u, %bb.v
  %i.cc = phi ptr [ %i.bv, %bb.v ], [ %i.bu, %bb.u ], [ %i.ca, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %spec.select.sink.i102 = phi i32 [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i98, %bb.y ], [ %spec.select.i98, %bb.z ] ; 2 uses
  store ptr %i.cc, ptr %i.bl, align 8, !tbaa !280
  store i32 %spec.select.sink.i102, ptr %i.bf, align 8, !tbaa !347
  br label %Vec_WrdPush.exit105

Vec_WrdPush.exit105:                              ; preds = %.Vec_WrdPush.exit105_crit_edge, %bb.w, %Vec_WrdGrow.exit11.sink.split.i101
  %i.cd = phi ptr [ %.pre181, %.Vec_WrdPush.exit105_crit_edge ], [ %.pre182, %bb.w ], [ %i.cc, %Vec_WrdGrow.exit11.sink.split.i101 ]
  %i.ce = phi i32 [ %i.bm, %.Vec_WrdPush.exit105_crit_edge ], [ %i.bm, %bb.w ], [ %spec.select.sink.i102, %Vec_WrdGrow.exit11.sink.split.i101 ]
  %i.cf = add nsw i32 %i.bn, 1                    ; 2 uses
  store i32 %i.cf, ptr %i.bk, align 4, !tbaa !283
  %i.cg = sext i32 %i.bn to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cg
  store i64 %i.bq, ptr %i.ch, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !1338

bb.aa:                                            ; preds = %bb.p
  %i.ci = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 2 uses
  %i.cj = icmp eq i32 %1, %i.ci
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %puts83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41) ; 0 uses
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  %i.ck = sext i32 %i.ci to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !95
  %i.cn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #40
  %i.co = trunc i64 %i.cn to i32                  ; 3 uses
  %i.cp = sext i32 %1 to i64                      ; 2 uses
  %indvars.iv.next174236 = add nsw i64 %i.ck, 1   ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv.next174236, %i.cp
  br i1 %i.cq, label %.lr.ph238, label %._crit_edge

bb.ad:                                            ; preds = %.lr.ph238
  %indvars.iv.next174 = add nsw i64 %indvars.iv.next174237, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next174, %i.cp
  br i1 %i.cr, label %.lr.ph238, label %._crit_edge, !llvm.loop !1339

.lr.ph238:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv.next174237 = phi i64 [ %indvars.iv.next174, %bb.ad ], [ %indvars.iv.next174236, %bb.ac ] ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next174237
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !95
  %i.cu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #40
  %i.cv = trunc i64 %i.cu to i32
  %.not82 = icmp eq i32 %i.co, %i.cv
  br i1 %.not82, label %bb.ad, label %bb.ae, !llvm.loop !1339

bb.ae:                                            ; preds = %.lr.ph238
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40) ; 0 uses
  br label %bb.at

._crit_edge:                                      ; preds = %bb.ad, %bb.ac
  %i.cw = tail call fastcc ptr @Vec_WrdAlloc(i32 noundef %1) ; 6 uses
  %i.cx = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, %1
  br i1 %i.cy, label %.lr.ph144, label %.loopexit

.lr.ph144:                                        ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.db = sext i32 %i.cx to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph144, %Vec_WrdPush.exit113
  %indvars.iv176 = phi i64 [ %i.db, %.lr.ph144 ], [ %indvars.iv.next177, %Vec_WrdPush.exit113 ] ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv176
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !95 ; 3 uses
  %i.de = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dd) #40 ; 2 uses
  %i.df = trunc i64 %i.de to i32
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.preheader.i.i, label %Abc_TtReadBin64.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.af
  %wide.trip.count.i.i = and i64 %i.de, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %.lr.ph.preheader.i.i
  %i.dh = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.dn, %bb.ah ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ah ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !99
  switch i8 %i.dj, label %Abc_TtReadBin.exit.i [
    i8 49, label %bb.ag
    i8 48, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.dk = and i64 %indvars.iv.i.i, 63
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = or i64 %i.dl, %i.dh
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.i
  %i.dn = phi i64 [ %i.dm, %bb.ag ], [ %i.dh, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Abc_TtReadBin64.exit, label %.lr.ph.i.i, !llvm.loop !1340

Abc_TtReadBin.exit.i:                             ; preds = %.lr.ph.i.i
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4471, ptr noundef nonnull %i.dd) ; 0 uses
  br label %Abc_TtReadBin64.exit

Abc_TtReadBin64.exit:                             ; preds = %bb.ah, %bb.af, %Abc_TtReadBin.exit.i
  %.0.i = phi i64 [ -1, %Abc_TtReadBin.exit.i ], [ 0, %bb.af ], [ %i.dn, %bb.ah ]
  %i.dp = load i32, ptr %i.cz, align 4, !tbaa !283 ; 7 uses
  %i.dq = load i32, ptr %i.cw, align 8, !tbaa !347
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ai, label %Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge

Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge: ; preds = %Abc_TtReadBin64.exit
  %.pre183 = load ptr, ptr %i.da, align 8, !tbaa !280
  br label %Vec_WrdPush.exit113

bb.ai:                                            ; preds = %Abc_TtReadBin64.exit
  %i.ds = icmp slt i32 %i.dp, 16
  br i1 %i.ds, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dt = load ptr, ptr %i.da, align 8, !tbaa !280 ; 2 uses
  %.not9.i.i111 = icmp eq ptr %i.dt, null
  br i1 %.not9.i.i111, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef 128) #39
  br label %Vec_WrdGrow.exit11.sink.split.i109

bb.al:                                            ; preds = %bb.aj
  %i.dv = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38
  br label %Vec_WrdGrow.exit11.sink.split.i109

bb.am:                                            ; preds = %bb.ai
  %i.dw = icmp samesign ult i32 %i.dp, 1073741823
  %i.dx = shl nuw nsw i32 %i.dp, 1
  %spec.select.i106 = select i1 %i.dw, i32 %i.dx, i32 2147483647 ; 4 uses
  %.not.i9.i107 = icmp samesign ult i32 %i.dp, %spec.select.i106
  %.pre184 = load ptr, ptr %i.da, align 8, !tbaa !280 ; 3 uses
  br i1 %.not.i9.i107, label %bb.an, label %Vec_WrdPush.exit113

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i108 = icmp eq ptr %.pre184, null
  %i.dy = zext nneg i32 %spec.select.i106 to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3                ; 2 uses
  br i1 %.not9.i10.i108, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = tail call ptr @realloc(ptr noundef nonnull %.pre184, i64 noundef %i.dz) #39
  br label %Vec_WrdGrow.exit11.sink.split.i109

bb.ap:                                            ; preds = %bb.an
  %i.eb = tail call noalias ptr @malloc(i64 noundef %i.dz) #38
  br label %Vec_WrdGrow.exit11.sink.split.i109

Vec_WrdGrow.exit11.sink.split.i109:               ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.al
  %i.ec = phi ptr [ %i.dv, %bb.al ], [ %i.du, %bb.ak ], [ %i.ea, %bb.ao ], [ %i.eb, %bb.ap ] ; 2 uses
  %spec.select.sink.i110 = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i106, %bb.ao ], [ %spec.select.i106, %bb.ap ]
  store ptr %i.ec, ptr %i.da, align 8, !tbaa !280
  store i32 %spec.select.sink.i110, ptr %i.cw, align 8, !tbaa !347
  br label %Vec_WrdPush.exit113

Vec_WrdPush.exit113:                              ; preds = %Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge, %bb.am, %Vec_WrdGrow.exit11.sink.split.i109
  %i.ed = phi ptr [ %.pre183, %Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge ], [ %.pre184, %bb.am ], [ %i.ec, %Vec_WrdGrow.exit11.sink.split.i109 ]
  %i.ee = add nsw i32 %i.dp, 1
  store i32 %i.ee, ptr %i.cz, align 4, !tbaa !283
  %i.ef = sext i32 %i.dp to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ef
  store i64 %.0.i, ptr %i.eg, align 8, !tbaa !100
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next177 to i32
  %exitcond179.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond179.not, label %.loopexit, label %bb.af, !llvm.loop !1341

.loopexit:                                        ; preds = %Vec_WrdPush.exit105, %Vec_WrdPush.exit113, %bb.q, %._crit_edge, %Vec_WrdPush.exit97, %bb.o, %Vec_WrdPush.exit
  %.069 = phi ptr [ %i.af, %Vec_WrdPush.exit ], [ %i.ar, %Vec_WrdPush.exit97 ], [ %i.aw, %bb.o ], [ %i.cw, %._crit_edge ], [ %i.bf, %bb.q ], [ %i.cw, %Vec_WrdPush.exit113 ], [ %i.bf, %Vec_WrdPush.exit105 ] ; 3 uses
  %.066 = phi i32 [ %i.ae, %Vec_WrdPush.exit ], [ %i.aq, %Vec_WrdPush.exit97 ], [ %i.av, %bb.o ], [ %i.co, %._crit_edge ], [ %i.bb, %bb.q ], [ %i.co, %Vec_WrdPush.exit113 ], [ %i.bb, %Vec_WrdPush.exit105 ] ; 2 uses
  %i.eh = icmp sgt i32 %.066, 64
  br i1 %i.eh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.loopexit
  %puts84 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42) ; 0 uses
  br label %bb.at

bb.ar:                                            ; preds = %.loopexit
  %i.ei = tail call ptr @Gia_ManGenSymFun(ptr noundef %.069, i32 noundef %.066, i32 noundef %.057) #37
  tail call void @Abc_FrameUpdateGia(ptr noundef %0, ptr noundef %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !280 ; 2 uses
  %.not.i = icmp eq ptr %i.ek, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.ek) #37
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.ar, %bb.as
  tail call void @free(ptr noundef nonnull %.069) #37
  br label %bb.at

.loopexit115.sink.split:                          ; preds = %bb.c, %bb.g, %bb.i, %bb.e
  %.str.3173.sink = phi ptr [ @.str.4460, %bb.e ], [ @.str.2912, %bb.g ], [ @.str.3173, %bb.i ], [ @.str.2928, %bb.c ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.3173.sink)
  br label %.loopexit115

.loopexit115:                                     ; preds = %bb.b, %.loopexit115.sink.split
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4464)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4465)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4466)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4467)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4468)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4469)
  %.not89 = icmp eq i32 %.057, 0
  %i.el = select i1 %.not89, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2392, ptr noundef nonnull %i.el)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2564)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4470)
  br label %bb.at

bb.at:                                            ; preds = %.loopexit115, %Vec_WrdFree.exit, %bb.aq, %bb.ae, %bb.ab
  %.070 = phi i32 [ 1, %.loopexit115 ], [ 0, %bb.aq ], [ 0, %Vec_WrdFree.exit ], [ 0, %bb.ab ], [ 0, %bb.ae ]
  ret i32 %.070
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9Pack(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4472) #37 ; 2 uses
  %.not86 = icmp eq i32 %i.a, -1
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %i.b = phi i32 [ %i.ad, %bb.o ], [ %i.a, %bb.a ]
  %.090 = phi i32 [ %.1, %bb.o ], [ 0, %bb.a ]    ; 5 uses
  %.02989 = phi i32 [ %.130, %bb.o ], [ 2, %bb.a ] ; 9 uses
  %.03188 = phi i32 [ %.132, %bb.o ], [ 10, %bb.a ] ; 10 uses
  %.03487 = phi i32 [ %.135, %bb.o ], [ 2, %bb.a ] ; 9 uses
  %i.c = add i32 %i.b, -68                        ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 31)
  switch i32 %i.d, label %.loopexit [
    i32 5, label %bb.b
    i32 7, label %bb.f
    i32 0, label %bb.j
    i32 25, label %bb.n
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not52 = icmp slt i32 %i.e, %1
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.959)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %2, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = add nsw i32 %i.e, 1
  store i32 %i.k, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.l = icmp slt i32 %i.j, 2
  br i1 %i.l, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4473, i32 noundef %i.j)
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not51 = icmp slt i32 %i.m, %1
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.959)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.q = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.p, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.r = trunc i64 %i.q to i32                    ; 4 uses
  %i.s = add nsw i32 %i.m, 1
  store i32 %i.s, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.t = icmp slt i32 %i.r, 1
  br i1 %i.t, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4474, i32 noundef %i.r)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not50 = icmp slt i32 %i.u, %1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2453)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  %i.y = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.x, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %i.aa = add nsw i32 %i.u, 1
  store i32 %i.aa, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.ab = icmp slt i32 %i.z, 1
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4475, i32 noundef %.03188)
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph
  %i.ac = xor i32 %.090, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.h, %bb.d, %bb.n
  %.135 = phi i32 [ %i.j, %bb.d ], [ %.03487, %bb.h ], [ %.03487, %bb.l ], [ %.03487, %bb.n ] ; 2 uses
  %.132 = phi i32 [ %.03188, %bb.d ], [ %i.r, %bb.h ], [ %.03188, %bb.l ], [ %.03188, %bb.n ] ; 2 uses
  %.130 = phi i32 [ %.02989, %bb.d ], [ %.02989, %bb.h ], [ %i.z, %bb.l ], [ %.02989, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %.090, %bb.d ], [ %.090, %bb.h ], [ %.090, %bb.l ], [ %i.ac, %bb.n ] ; 2 uses
  %i.ad = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4472) #37 ; 2 uses
  %.not = icmp eq i32 %i.ad, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1342

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.034.lcssa = phi i32 [ 2, %bb.a ], [ %.135, %bb.o ]
  %.031.lcssa = phi i32 [ 10, %bb.a ], [ %.132, %bb.o ]
  %.029.lcssa = phi i32 [ 2, %bb.a ], [ %.130, %bb.o ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.o ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4321)
  br label %bb.v

bb.q:                                             ; preds = %._crit_edge
  %i.ah = getelementptr i8, ptr %i.af, i64 264
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !266
  %.not54 = icmp eq ptr %.val, null
  br i1 %.not54, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4476)
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ai = tail call i32 @Gia_ManLutSizeMax(ptr noundef nonnull %i.af) #37
  %i.aj = icmp sgt i32 %i.ai, 6
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 2 uses
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.al = tail call i32 @Gia_ManLutSizeMax(ptr noundef %i.ak) #37
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 0, ptr noundef nonnull @.str.4477, i32 noundef %i.al)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @Gia_ManLutPacking(ptr noundef %i.ak, i32 noundef %.034.lcssa, i32 noundef %.031.lcssa, i32 noundef %.029.lcssa, i32 noundef %.0.lcssa) #37
  br label %bb.v

.loopexit:                                        ; preds = %.lr.ph, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
end_hunk_0
