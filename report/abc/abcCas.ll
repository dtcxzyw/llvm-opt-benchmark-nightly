Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCas?download=true
inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_LutCascadeGenOne:bb.a
  %i.ao = icmp sgt i32 %1, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_WrdPush.exit37
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_WrdPush.exit45
  %i.ap = phi i32 [ %i.ai, %.lr.ph.preheader ], [ %i.bd, %Vec_WrdPush.exit45 ] ; 2 uses
  %i.aq = phi ptr [ %i.ak, %.lr.ph.preheader ], [ %i.bf, %Vec_WrdPush.exit45 ] ; 3 uses
  %i.ar = phi i32 [ %i.ai, %.lr.ph.preheader ], [ %i.bg, %Vec_WrdPush.exit45 ] ; 8 uses
  %i.as = phi i32 [ %i.al, %.lr.ph.preheader ], [ %i.bh, %Vec_WrdPush.exit45 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %Vec_WrdPush.exit45 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !60
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.as, %i.ar
  br i1 %i.aw, label %bb.h, label %Vec_WrdPush.exit45

bb.h:                                             ; preds = %.lr.ph
  %i.ax = icmp slt i32 %i.ar, 16
  br i1 %i.ax, label %Vec_WrdGrow.exit11.sink.split.i41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp samesign ult i32 %i.ar, 1073741823
  %i.az = shl nuw nsw i32 %i.ar, 1
  %spec.select.i38 = select i1 %i.ay, i32 %i.az, i32 2147483647 ; 3 uses
  %.not.i9.i39 = icmp samesign ult i32 %i.ar, %spec.select.i38
  br i1 %.not.i9.i39, label %bb.j, label %Vec_WrdPush.exit45

bb.j:                                             ; preds = %bb.i
  %i.ba = zext nneg i32 %spec.select.i38 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  br label %Vec_WrdGrow.exit11.sink.split.i41

Vec_WrdGrow.exit11.sink.split.i41:                ; preds = %bb.h, %bb.j
  %.sink134 = phi i64 [ %i.bb, %bb.j ], [ 128, %bb.h ]
  %spec.select.sink.i42 = phi i32 [ %spec.select.i38, %bb.j ], [ 16, %bb.h ] ; 3 uses
  %i.bc = tail call ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef %.sink134) #32 ; 2 uses
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !71
  store i32 %spec.select.sink.i42, ptr %0, align 8, !tbaa !83
  %.pre87 = load i32, ptr %i.k, align 4, !tbaa !84
  br label %Vec_WrdPush.exit45

Vec_WrdPush.exit45:                               ; preds = %.lr.ph, %bb.i, %Vec_WrdGrow.exit11.sink.split.i41
  %i.bd = phi i32 [ %i.ap, %.lr.ph ], [ %i.ap, %bb.i ], [ %spec.select.sink.i42, %Vec_WrdGrow.exit11.sink.split.i41 ] ; 2 uses
  %i.be = phi i32 [ %i.as, %.lr.ph ], [ %i.ar, %bb.i ], [ %.pre87, %Vec_WrdGrow.exit11.sink.split.i41 ] ; 2 uses
  %i.bf = phi ptr [ %i.aq, %.lr.ph ], [ %i.aq, %bb.i ], [ %i.bc, %Vec_WrdGrow.exit11.sink.split.i41 ] ; 3 uses
  %i.bg = phi i32 [ %i.ar, %.lr.ph ], [ %i.ar, %bb.i ], [ %spec.select.sink.i42, %Vec_WrdGrow.exit11.sink.split.i41 ]
  %i.bh = add nsw i32 %i.be, 1                    ; 3 uses
  store i32 %i.bh, ptr %i.k, align 4, !tbaa !84
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bi
  store i64 %i.av, ptr %i.bj, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !162

._crit_edge:                                      ; preds = %Vec_WrdPush.exit45, %Vec_WrdPush.exit37
  %i.bk = phi ptr [ %i.ak, %Vec_WrdPush.exit37 ], [ %i.bf, %Vec_WrdPush.exit45 ] ; 3 uses
  %i.bl = phi i32 [ %i.ai, %Vec_WrdPush.exit37 ], [ %i.bd, %Vec_WrdPush.exit45 ] ; 8 uses
  %i.bm = phi i32 [ %i.al, %Vec_WrdPush.exit37 ], [ %i.bh, %Vec_WrdPush.exit45 ] ; 2 uses
  %i.bn = sext i32 %3 to i64
  %i.bo = icmp eq i32 %i.bm, %i.bl
  br i1 %i.bo, label %bb.k, label %Vec_WrdPush.exit53

bb.k:                                             ; preds = %._crit_edge
  %i.bp = icmp slt i32 %i.bl, 16
  br i1 %i.bp, label %Vec_WrdGrow.exit11.sink.split.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp samesign ult i32 %i.bl, 1073741823
  %i.br = shl nuw nsw i32 %i.bl, 1
  %spec.select.i46 = select i1 %i.bq, i32 %i.br, i32 2147483647 ; 3 uses
  %.not.i9.i47 = icmp samesign ult i32 %i.bl, %spec.select.i46
  br i1 %.not.i9.i47, label %bb.m, label %Vec_WrdPush.exit53

bb.m:                                             ; preds = %bb.l
  %i.bs = zext nneg i32 %spec.select.i46 to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  br label %Vec_WrdGrow.exit11.sink.split.i49

Vec_WrdGrow.exit11.sink.split.i49:                ; preds = %bb.k, %bb.m
  %.sink135 = phi i64 [ %i.bt, %bb.m ], [ 128, %bb.k ]
  %spec.select.sink.i50 = phi i32 [ %spec.select.i46, %bb.m ], [ 16, %bb.k ] ; 2 uses
  %i.bu = tail call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %.sink135) #32 ; 2 uses
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !71
  store i32 %spec.select.sink.i50, ptr %0, align 8, !tbaa !83
  %.pre88 = load i32, ptr %i.k, align 4, !tbaa !84
  br label %Vec_WrdPush.exit53

Vec_WrdPush.exit53:                               ; preds = %._crit_edge, %bb.l, %Vec_WrdGrow.exit11.sink.split.i49
  %i.bv = phi i32 [ %i.bl, %._crit_edge ], [ %i.bl, %bb.l ], [ %spec.select.sink.i50, %Vec_WrdGrow.exit11.sink.split.i49 ] ; 2 uses
  %i.bw = phi i32 [ %i.bm, %._crit_edge ], [ %i.bl, %bb.l ], [ %.pre88, %Vec_WrdGrow.exit11.sink.split.i49 ] ; 2 uses
  %i.bx = phi ptr [ %i.bk, %._crit_edge ], [ %i.bk, %bb.l ], [ %i.bu, %Vec_WrdGrow.exit11.sink.split.i49 ] ; 2 uses
  %i.by = add nsw i32 %i.bw, 1                    ; 3 uses
  store i32 %i.by, ptr %i.k, align 4, !tbaa !84
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bz
  store i64 %i.bn, ptr %i.ca, align 8, !tbaa !72
  %i.cb = icmp slt i32 %1, 6
  br i1 %i.cb, label %bb.v, label %.preheader

.preheader:                                       ; preds = %Vec_WrdPush.exit53
  %i.cc = icmp sgt i32 %i.d, 0
  br i1 %i.cc, label %.lr.ph77, label %.loopexit

.lr.ph77:                                         ; preds = %.preheader
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.lr.ph77.split.us, label %.lr.ph77.split.preheader

.lr.ph77.split.preheader:                         ; preds = %.lr.ph77
  %wide.trip.count83 = zext nneg i32 %i.d to i64
  br label %.lr.ph77.split

.lr.ph77.split.us:                                ; preds = %.lr.ph77, %Vec_WrdPush.exit69.us
  %.176.us = phi i32 [ %i.cw, %Vec_WrdPush.exit69.us ], [ 0, %.lr.ph77 ]
  %i.cd = tail call i64 @Abc_RandomW(i32 noundef 0) #30
  %i.ce = load i32, ptr %i.k, align 4, !tbaa !84  ; 7 uses
  %i.cf = load i32, ptr %0, align 8, !tbaa !83
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.n, label %.lr.ph77.split.us.Vec_WrdPush.exit69.us_crit_edge

.lr.ph77.split.us.Vec_WrdPush.exit69.us_crit_edge: ; preds = %.lr.ph77.split.us
  %.pre90 = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %Vec_WrdPush.exit69.us

bb.n:                                             ; preds = %.lr.ph77.split.us
  %i.ch = icmp slt i32 %i.ce, 16
  br i1 %i.ch, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp samesign ult i32 %i.ce, 1073741823
  %i.cj = shl nuw nsw i32 %i.ce, 1
  %spec.select.i62.us = select i1 %i.ci, i32 %i.cj, i32 2147483647 ; 4 uses
  %.not.i9.i63.us = icmp samesign ult i32 %i.ce, %spec.select.i62.us
  %.pre91 = load ptr, ptr %i.e, align 8, !tbaa !71 ; 3 uses
  br i1 %.not.i9.i63.us, label %bb.p, label %Vec_WrdPush.exit69.us

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i64.us = icmp eq ptr %.pre91, null
  %i.ck = zext nneg i32 %spec.select.i62.us to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3                ; 2 uses
  br i1 %.not9.i10.i64.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = tail call ptr @realloc(ptr noundef nonnull %.pre91, i64 noundef %i.cl) #32
  br label %Vec_WrdGrow.exit11.sink.split.i65.us

bb.r:                                             ; preds = %bb.p
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cl) #31
  br label %Vec_WrdGrow.exit11.sink.split.i65.us

bb.s:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !71  ; 2 uses
  %.not9.i.i67.us = icmp eq ptr %i.co, null
  br i1 %.not9.i.i67.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.co, i64 noundef 128) #32
  br label %Vec_WrdGrow.exit11.sink.split.i65.us

bb.u:                                             ; preds = %bb.s
  %i.cq = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_WrdGrow.exit11.sink.split.i65.us

Vec_WrdGrow.exit11.sink.split.i65.us:             ; preds = %bb.u, %bb.t, %bb.r, %bb.q
  %storemerge72.us = phi ptr [ %i.cq, %bb.u ], [ %i.cp, %bb.t ], [ %i.cm, %bb.q ], [ %i.cn, %bb.r ] ; 2 uses
  %spec.select.sink.i66.us = phi i32 [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i62.us, %bb.q ], [ %spec.select.i62.us, %bb.r ]
  store ptr %storemerge72.us, ptr %i.e, align 8, !tbaa !71
  store i32 %spec.select.sink.i66.us, ptr %0, align 8, !tbaa !83
  %.pre92 = load i32, ptr %i.k, align 4, !tbaa !84
  br label %Vec_WrdPush.exit69.us

Vec_WrdPush.exit69.us:                            ; preds = %.lr.ph77.split.us.Vec_WrdPush.exit69.us_crit_edge, %Vec_WrdGrow.exit11.sink.split.i65.us, %bb.o
  %i.cr = phi i32 [ %i.ce, %.lr.ph77.split.us.Vec_WrdPush.exit69.us_crit_edge ], [ %.pre92, %Vec_WrdGrow.exit11.sink.split.i65.us ], [ %i.ce, %bb.o ] ; 2 uses
  %i.cs = phi ptr [ %.pre90, %.lr.ph77.split.us.Vec_WrdPush.exit69.us_crit_edge ], [ %storemerge72.us, %Vec_WrdGrow.exit11.sink.split.i65.us ], [ %.pre91, %bb.o ]
  %i.ct = add nsw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.k, align 4, !tbaa !84
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cu
  store i64 %i.cd, ptr %i.cv, align 8, !tbaa !72
  %i.cw = add nuw nsw i32 %.176.us, 1             ; 2 uses
  %exitcond85.not = icmp eq i32 %i.cw, %i.d
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph77.split.us, !llvm.loop !163

bb.v:                                             ; preds = %Vec_WrdPush.exit53
  %.not29 = icmp eq ptr %4, null
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load i64, ptr %4, align 8, !tbaa !72
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cy = tail call i32 @Abc_Random(i32 noundef 0) #30 ; 2 uses
  %i.cz = zext i32 %i.cy to i64                   ; 6 uses
  %i.da = icmp eq i32 %1, 0
  %i.db = trunc i32 %i.cy to i1
  %i.dc = select i1 %i.db, i64 3, i64 0
  %i.dd = icmp ult i32 %1, 2
  %i.de = and i64 %i.cz, 3
  %i.df = select i1 %i.da, i64 %i.dc, i64 %i.de
  %i.dg = mul nuw nsw i64 %i.df, 5
  %.126.i = select i1 %i.dd, i64 %i.dg, i64 %i.cz
  %i.dh = icmp ult i32 %1, 3
  %i.di = and i64 %.126.i, 15
  %i.dj = mul nuw nsw i64 %i.di, 17
  %.227.i = select i1 %i.dh, i64 %i.dj, i64 %i.cz
  %i.dk = icmp ult i32 %1, 4
  %i.dl = and i64 %.227.i, 255
  %i.dm = mul nuw nsw i64 %i.dl, 257
  %.328.i = select i1 %i.dk, i64 %i.dm, i64 %i.cz
  %i.dn = icmp ult i32 %1, 5
  %i.do = and i64 %.328.i, 65535
  %i.dp = mul nuw nsw i64 %i.do, 65537
  %.429.i = select i1 %i.dn, i64 %i.dp, i64 %i.cz
  %i.dq = icmp ult i32 %1, 6
  %i.dr = mul nuw i64 %.429.i, 4294967297
  %.5.i = select i1 %i.dq, i64 %i.dr, i64 %i.cz
  %.pre93 = load i32, ptr %i.k, align 4, !tbaa !84
  %.pre94 = load i32, ptr %0, align 8, !tbaa !83
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ds = phi i32 [ %i.bv, %bb.w ], [ %.pre94, %bb.x ] ; 6 uses
  %i.dt = phi i32 [ %i.by, %bb.w ], [ %.pre93, %bb.x ] ; 2 uses
  %i.du = phi i64 [ %i.cx, %bb.w ], [ %.5.i, %bb.x ]
  %i.dv = icmp eq i32 %i.dt, %i.ds
  br i1 %i.dv, label %bb.z, label %.Vec_WrdPush.exit61_crit_edge

.Vec_WrdPush.exit61_crit_edge:                    ; preds = %bb.y
  %.pre95 = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %Vec_WrdPush.exit61

bb.z:                                             ; preds = %bb.y
  %i.dw = icmp slt i32 %i.ds, 16
  br i1 %i.dw, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dx = load ptr, ptr %i.e, align 8, !tbaa !71  ; 2 uses
  %.not9.i.i59 = icmp eq ptr %i.dx, null
  br i1 %.not9.i.i59, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dx, i64 noundef 128) #32
  br label %Vec_WrdGrow.exit11.sink.split.i57

bb.ac:                                            ; preds = %bb.aa
  %i.dz = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_WrdGrow.exit11.sink.split.i57

bb.ad:                                            ; preds = %bb.z
  %i.ea = icmp samesign ult i32 %i.ds, 1073741823
  %i.eb = shl nuw nsw i32 %i.ds, 1
  %spec.select.i54 = select i1 %i.ea, i32 %i.eb, i32 2147483647 ; 4 uses
  %.not.i9.i55 = icmp samesign ult i32 %i.ds, %spec.select.i54
  %.pre96 = load ptr, ptr %i.e, align 8, !tbaa !71 ; 3 uses
  br i1 %.not.i9.i55, label %bb.ae, label %Vec_WrdPush.exit61

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i56 = icmp eq ptr %.pre96, null
  %i.ec = zext nneg i32 %spec.select.i54 to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3                ; 2 uses
  br i1 %.not9.i10.i56, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = tail call ptr @realloc(ptr noundef nonnull %.pre96, i64 noundef %i.ed) #32
  br label %Vec_WrdGrow.exit11.sink.split.i57

bb.ag:                                            ; preds = %bb.ae
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ed) #31
  br label %Vec_WrdGrow.exit11.sink.split.i57

Vec_WrdGrow.exit11.sink.split.i57:                ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %storemerge73 = phi ptr [ %i.dz, %bb.ac ], [ %i.dy, %bb.ab ], [ %i.ee, %bb.af ], [ %i.ef, %bb.ag ] ; 2 uses
  %spec.select.sink.i58 = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i54, %bb.af ], [ %spec.select.i54, %bb.ag ]
  store ptr %storemerge73, ptr %i.e, align 8, !tbaa !71
  store i32 %spec.select.sink.i58, ptr %0, align 8, !tbaa !83
  %.pre97 = load i32, ptr %i.k, align 4, !tbaa !84
  br label %Vec_WrdPush.exit61

Vec_WrdPush.exit61:                               ; preds = %.Vec_WrdPush.exit61_crit_edge, %bb.ad, %Vec_WrdGrow.exit11.sink.split.i57
  %i.eg = phi i32 [ %i.dt, %.Vec_WrdPush.exit61_crit_edge ], [ %i.ds, %bb.ad ], [ %.pre97, %Vec_WrdGrow.exit11.sink.split.i57 ] ; 2 uses
  %i.eh = phi ptr [ %.pre95, %.Vec_WrdPush.exit61_crit_edge ], [ %.pre96, %bb.ad ], [ %storemerge73, %Vec_WrdGrow.exit11.sink.split.i57 ]
  %i.ei = add nsw i32 %i.eg, 1
  store i32 %i.ei, ptr %i.k, align 4, !tbaa !84
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ej
  store i64 %i.du, ptr %i.ek, align 8, !tbaa !72
  br label %.loopexit

.lr.ph77.split:                                   ; preds = %.lr.ph77.split.preheader, %Vec_WrdPush.exit69
  %i.el = phi ptr [ %i.bx, %.lr.ph77.split.preheader ], [ %i.ey, %Vec_WrdPush.exit69 ] ; 3 uses
  %i.em = phi i32 [ %i.bv, %.lr.ph77.split.preheader ], [ %i.ez, %Vec_WrdPush.exit69 ] ; 8 uses
  %i.en = phi i32 [ %i.by, %.lr.ph77.split.preheader ], [ %i.fa, %Vec_WrdPush.exit69 ] ; 2 uses
  %indvars.iv80 = phi i64 [ 0, %.lr.ph77.split.preheader ], [ %indvars.iv.next81, %Vec_WrdPush.exit69 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv80
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !72
  %i.eq = icmp eq i32 %i.en, %i.em
  br i1 %i.eq, label %bb.ah, label %Vec_WrdPush.exit69

bb.ah:                                            ; preds = %.lr.ph77.split
  %i.er = icmp slt i32 %i.em, 16
  br i1 %i.er, label %Vec_WrdGrow.exit11.sink.split.i65, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = icmp samesign ult i32 %i.em, 1073741823
  %i.et = shl nuw nsw i32 %i.em, 1
  %spec.select.i62 = select i1 %i.es, i32 %i.et, i32 2147483647 ; 3 uses
  %.not.i9.i63 = icmp samesign ult i32 %i.em, %spec.select.i62
  br i1 %.not.i9.i63, label %bb.aj, label %Vec_WrdPush.exit69

bb.aj:                                            ; preds = %bb.ai
  %i.eu = zext nneg i32 %spec.select.i62 to i64
  %i.ev = shl nuw nsw i64 %i.eu, 3
  br label %Vec_WrdGrow.exit11.sink.split.i65

Vec_WrdGrow.exit11.sink.split.i65:                ; preds = %bb.ah, %bb.aj
  %.sink136 = phi i64 [ %i.ev, %bb.aj ], [ 128, %bb.ah ]
  %spec.select.sink.i66 = phi i32 [ %spec.select.i62, %bb.aj ], [ 16, %bb.ah ] ; 2 uses
  %i.ew = tail call ptr @realloc(ptr noundef nonnull %i.el, i64 noundef %.sink136) #32 ; 2 uses
  store ptr %i.ew, ptr %i.e, align 8, !tbaa !71
  store i32 %spec.select.sink.i66, ptr %0, align 8, !tbaa !83
  %.pre89 = load i32, ptr %i.k, align 4, !tbaa !84
  br label %Vec_WrdPush.exit69

Vec_WrdPush.exit69:                               ; preds = %.lr.ph77.split, %bb.ai, %Vec_WrdGrow.exit11.sink.split.i65
  %i.ex = phi i32 [ %i.en, %.lr.ph77.split ], [ %i.em, %bb.ai ], [ %.pre89, %Vec_WrdGrow.exit11.sink.split.i65 ] ; 2 uses
  %i.ey = phi ptr [ %i.el, %.lr.ph77.split ], [ %i.el, %bb.ai ], [ %i.ew, %Vec_WrdGrow.exit11.sink.split.i65 ] ; 2 uses
  %i.ez = phi i32 [ %i.em, %.lr.ph77.split ], [ %i.em, %bb.ai ], [ %spec.select.sink.i66, %Vec_WrdGrow.exit11.sink.split.i65 ]
  %i.fa = add nsw i32 %i.ex, 1                    ; 2 uses
  store i32 %i.fa, ptr %i.k, align 4, !tbaa !84
  %i.fb = sext i32 %i.ex to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.fb
  store i64 %i.ep, ptr %i.fc, align 8, !tbaa !72
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph77.split, !llvm.loop !163

.loopexit:                                        ; preds = %Vec_WrdPush.exit69, %Vec_WrdPush.exit69.us, %.preheader, %Vec_WrdPush.exit61
  ret void
}

declare i32 @Abc_Random(i32 noundef) local_unnamed_addr #2

declare i64 @Abc_RandomW(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_LutCascadeGen(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 6 uses
  store i32 16, ptr %i.a, align 8, !tbaa !83
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !71
  store i32 1, ptr %i.c, align 4, !tbaa !84
  store i64 0, ptr %i.b, align 8
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 12 uses
  %i.f = add i32 %1, -1
  %or.cond.i = icmp ult i32 %i.f, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  store i32 0, ptr %i.g, align 4, !tbaa !80
  store i32 %spec.store.select.i, ptr %i.e, align 8, !tbaa !81
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #31
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 19 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !82
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.n = add i32 %0, -1
  %or.cond.i.i = icmp ult i32 %i.n, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %0 ; 3 uses
  %i.o = getelementptr i8, ptr %i.m, i64 4        ; 10 uses
  store i32 %spec.store.select.i.i, ptr %i.m, align 8, !tbaa !81
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.p = sext i32 %spec.store.select.i.i to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #31
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.c, %Vec_IntAlloc.exit
  %i.s = phi ptr [ %i.r, %bb.c ], [ null, %Vec_IntAlloc.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 9 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !82
  store i32 %0, ptr %i.o, align 4, !tbaa !80
  %i.u = icmp sgt i32 %0, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %Vec_IntStartNatural.exit

.lr.ph.preheader.i:                               ; preds = %Vec_IntAlloc.exit.i
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
end_hunk_0
begin_hunk_1_@Abc_TtGetGuide:bb.a
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !67      ; 2 uses
  %.not61 = icmp eq i8 %i.a, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi i8 [ %i.h, %bb.c ], [ %i.a, %bb.a ]
  %.063 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ]
  %.04762 = phi i32 [ %.148, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond57 = icmp ult i8 %i.c, 10
  br i1 %or.cond57, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nsw i32 %.04762, 1
  %i.e = icmp eq i32 %.04762, %1
  br i1 %i.e, label %._crit_edge.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.148 = phi i32 [ %i.d, %bb.b ], [ %.04762, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = add nuw nsw i32 %.063, 1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit.split.loop.exit ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = sext i32 %.0.lcssa to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !67    ; 3 uses
  %.not5667 = icmp eq i8 %i.m, 0
  br i1 %.not5667, label %.thread, label %.lr.ph71

.lr.ph71:                                         ; preds = %._crit_edge
  %.not76 = icmp eq i32 %3, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = zext i32 %.0.lcssa to i64
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  br i1 %.not76, label %.lr.ph71.split.us, label %.lr.ph71.split

.lr.ph71.split.us:                                ; preds = %.lr.ph71, %Vec_IntFind.exit.us
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %Vec_IntFind.exit.us ], [ %i.q, %.lr.ph71 ]
  %i.r = phi i8 [ %i.aj, %Vec_IntFind.exit.us ], [ %i.m, %.lr.ph71 ] ; 4 uses
  %.04968.us = phi i32 [ %i.ah, %Vec_IntFind.exit.us ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %i.t = add i8 %i.r, -48
  %or.cond.us = icmp ult i8 %i.t, 10
  br i1 %or.cond.us, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph71.split.us
  %i.u = add i8 %i.r, -97
  %i.v = icmp ult i8 %i.u, 26
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i8 %i.r, -65
  %or.cond14.us = icmp ult i8 %i.w, 26
  %i.x = add nsw i32 %i.s, -65
  %spec.select.us = select i1 %or.cond14.us, i32 %i.x, i32 -1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.s, -97
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.045.us = phi i32 [ %i.y, %bb.f ], [ %spec.select.us, %bb.e ]
  %i.z = load i32, ptr %i.n, align 4, !tbaa !80   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.us, label %Vec_IntFind.exit.us

.lr.ph.i.us:                                      ; preds = %bb.g
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !82
  %wide.trip.count.i.us = zext nneg i32 %i.z to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.us
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !60
  %i.ae = icmp eq i32 %i.ad, %.045.us
  br i1 %i.ae, label %._crit_edge.loopexit.split.loop.exit12.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %Vec_IntFind.exit.us, label %bb.h, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit12.i.us:      ; preds = %bb.h
  %i.af = trunc nuw nsw i64 %indvars.iv.i.us to i32
  br label %Vec_IntFind.exit.us

Vec_IntFind.exit.us:                              ; preds = %bb.i, %._crit_edge.loopexit.split.loop.exit12.i.us, %bb.g
  %.07.i.us = phi i32 [ -1, %bb.g ], [ %i.af, %._crit_edge.loopexit.split.loop.exit12.i.us ], [ -1, %bb.i ]
  %i.ag = shl nuw i32 1, %.07.i.us
  %i.ah = or i32 %i.ag, %.04968.us                ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next84
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !67  ; 2 uses
  %.not56.us = icmp eq i8 %i.aj, 0
  br i1 %.not56.us, label %.thread, label %.lr.ph71.split.us, !llvm.loop !10

.lr.ph71.split:                                   ; preds = %.lr.ph71, %bb.n
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.n ], [ %i.q, %.lr.ph71 ]
  %i.ak = phi i8 [ %i.bb, %bb.n ], [ %i.m, %.lr.ph71 ] ; 4 uses
  %.04968 = phi i32 [ %.150, %bb.n ], [ 0, %.lr.ph71 ] ; 3 uses
  %i.al = sext i8 %i.ak to i32
  %i.am = add i8 %i.ak, -48
  %or.cond = icmp ult i8 %i.am, 10
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph71.split
  %i.an = add i8 %i.ak, -97
  %i.ao = icmp ult i8 %i.an, 26
  br i1 %i.ao, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add i8 %i.ak, -65
  %or.cond14 = icmp ult i8 %i.ap, 26
  %i.aq = add nsw i32 %i.al, -65
  %spec.select = select i1 %or.cond14, i32 %i.aq, i32 -1
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !80  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i, label %Vec_IntFind.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !82
  %wide.trip.count.i = zext nneg i32 %i.ar to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !60
  %i.aw = icmp eq i32 %i.av, %spec.select
  br i1 %i.aw, label %._crit_edge.loopexit.split.loop.exit12.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit, label %bb.l, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit12.i:         ; preds = %bb.l
  %i.ax = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Vec_IntFind.exit

Vec_IntFind.exit:                                 ; preds = %bb.m, %bb.k, %._crit_edge.loopexit.split.loop.exit12.i
  %.07.i = phi i32 [ -1, %bb.k ], [ %i.ax, %._crit_edge.loopexit.split.loop.exit12.i ], [ -1, %bb.m ]
  %i.ay = shl nuw i32 1, %.07.i
  %i.az = or i32 %i.ay, %.04968
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %Vec_IntFind.exit
  %.150 = phi i32 [ %i.az, %Vec_IntFind.exit ], [ %.04968, %bb.j ] ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next82
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !67  ; 2 uses
  %.not56 = icmp eq i8 %i.bb, 0
  br i1 %.not56, label %.thread, label %.lr.ph71.split, !llvm.loop !10

.thread:                                          ; preds = %bb.n, %.lr.ph71.split, %Vec_IntFind.exit.us, %.lr.ph71.split.us, %._crit_edge
  %.049.lcssa = phi i32 [ 0, %._crit_edge ], [ %.04968.us, %.lr.ph71.split.us ], [ %i.ah, %Vec_IntFind.exit.us ], [ %.04968, %.lr.ph71.split ], [ %.150, %bb.n ]
  ret i32 %.049.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_TtPermuteMask(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = add i32 %1, -1                           ; 3 uses
  %i.c = icmp slt i32 %1, 7
  %i.d = add nsw i32 %1, -6
  %i.e = shl nuw i32 1, %i.d
  %.fr = freeze i32 %i.e
  %i.f = select i1 %i.c, i32 1, i32 %.fr          ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %.val, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %bb.c
  %i.j = sext i32 %i.f to i64
  %.idx65.i.a = shl nsw i64 %i.j, 3               ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %.idx65.i.a ; 3 uses
  %i.l = icmp sgt i32 %i.f, 0
  %4 = icmp slt i32 %i.f, 1                       ; 2 uses
  %wide.trip.count73.i = zext i32 %i.f to i64     ; 3 uses
  %.not33 = icmp eq ptr %i.h, null                ; 2 uses
  %i.m = zext nneg i32 %i.b to i64                ; 2 uses
  br i1 %i.l, label %.lr.ph43.split.us.split.us.preheader, label %.lr.ph43.split

.lr.ph43.split.us.split.us.preheader:             ; preds = %.lr.ph43
  %i.n = add i64 %.idx65.i.a, %i.a
  %min.iters.check = icmp ult i32 %i.f, 4
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br label %.lr.ph43.split.us.split.us

.lr.ph43.split.us.split.us:                       ; preds = %.lr.ph43.split.us.split.us.preheader, %bb.j
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %bb.j ], [ %i.m, %.lr.ph43.split.us.split.us.preheader ] ; 3 uses
  %.02937.us.us = phi i32 [ %.1.us.us, %bb.j ], [ %i.b, %.lr.ph43.split.us.split.us.preheader ] ; 6 uses
  %indvars70 = trunc i64 %indvars.iv65 to i32     ; 4 uses
  %i.o = shl nuw i32 1, %indvars70
  %i.p = and i32 %i.o, %2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph43.split.us.split.us
  %i.r = icmp eq i32 %.02937.us.us, %indvars70
  br i1 %i.r, label %bb.i, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.d
  %i.s = icmp sgt i32 %.02937.us.us, %indvars70
  br i1 %i.s, label %.lr.ph.us.us, label %._crit_edge.split.us.us.split.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.us.us, %bb.h
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.h ], [ %indvars.iv65, %.preheader.us.us ] ; 6 uses
  %i.t = trunc nuw i64 %indvars.iv67 to i32       ; 3 uses
  %i.u = icmp slt i32 %i.t, 5
  br i1 %i.u, label %.lr.ph64.i.us.us.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.us
  %i.v = icmp eq i64 %indvars.iv67, 5
  br i1 %i.v, label %bb.f, label %.preheader.lr.ph.i.us.us.us.us

.preheader.lr.ph.i.us.us.us.us:                   ; preds = %bb.e
  %i.w = icmp samesign ult i64 %indvars.iv67, 7
  %i.x = add nsw i32 %i.t, -6
  %i.y = shl nuw i32 1, %i.x
  %i.z = select i1 %i.w, i32 1, i32 %i.y          ; 7 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = shl i32 %i.z, 2                         ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  br i1 %i.aa, label %.preheader.us.preheader.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us

.preheader.us.preheader.i.us.us.us.us:            ; preds = %.preheader.lr.ph.i.us.us.us.us
  %i.ad = shl nuw nsw i32 %i.z, 1
  %i.ae = zext nneg i32 %i.z to i64               ; 6 uses
  %i.af = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ag = shl nsw i64 %i.ac, 3                    ; 4 uses
  %i.ah = add i64 %i.ag, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.ah)
  %i.ai = sub i64 %umax, %i.a                     ; 2 uses
  %i.aj = icmp ne i64 %i.ai, %i.ag
  %umin = zext i1 %i.aj to i64                    ; 2 uses
  %i.ak = or disjoint i64 %i.ag, %umin
  %i.al = sub i64 %i.ai, %i.ak
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.am = udiv i64 %i.al, %umax97
  %i.an = add i64 %i.am, %umin
  %i.ao = shl i64 %i.an, 3
  %i.ap = mul i64 %i.ao, %i.ac                    ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %i.ar = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.ar
  %scevgep98 = getelementptr i8, ptr %0, i64 %i.ar
  %i.au = shl nuw nsw i64 %i.ae, 4
  %i.av = getelementptr i8, ptr %0, i64 %i.ap
  %scevgep99 = getelementptr i8, ptr %i.av, i64 %i.au
  %scevgep100 = getelementptr i8, ptr %0, i64 %i.aq
  %min.iters.check102 = icmp ult i32 %i.z, 4
  %bound0 = icmp ult ptr %scevgep100, %scevgep
  %bound1 = icmp ult ptr %scevgep98, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ab, 0
  %i.aw = or i1 %found.conflict, %stride.check
  %n.vec104 = and i64 %i.ae, 2147483644
  %xtraiter = and i64 %i.ae, 1
  %i.ax = icmp eq i32 %i.z, 1
  %unroll_iter = and i64 %i.ae, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.z to i1
  br label %.preheader.us.i.us.us.us.us

.preheader.us.i.us.us.us.us:                      ; preds = %._crit_edge.us.i.us.us.us.us, %.preheader.us.preheader.i.us.us.us.us
  %.061.us.i.us.us.us.us = phi ptr [ %i.bj, %._crit_edge.us.i.us.us.us.us ], [ %0, %.preheader.us.preheader.i.us.us.us.us ] ; 3 uses
  %invariant.gep.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us, i64 %i.ae ; 4 uses
  %invariant.gep80.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us, i64 %i.af ; 4 uses
  %brmerge120 = select i1 %min.iters.check102, i1 true, i1 %i.aw
  br i1 %brmerge120, label %scalar.ph101.preheader, label %vector.body105

scalar.ph101.preheader:                           ; preds = %.preheader.us.i.us.us.us.us
  br i1 %i.ax, label %scalar.ph101.epil.preheader, label %scalar.ph101

vector.body105:                                   ; preds = %.preheader.us.i.us.us.us.us, %vector.body105
  %index106 = phi i64 [ %index.next111, %vector.body105 ], [ 0, %.preheader.us.i.us.us.us.us ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %index106 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load107 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  %wide.load108 = load <2 x i64>, ptr %i.az, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %index106 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load109 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !72, !alias.scope !248
  %wide.load110 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !72, !alias.scope !248
  store <2 x i64> %wide.load109, ptr %i.ay, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  store <2 x i64> %wide.load110, ptr %i.az, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  store <2 x i64> %wide.load107, ptr %i.ba, align 8, !tbaa !72, !alias.scope !248
  store <2 x i64> %wide.load108, ptr %i.bb, align 8, !tbaa !72, !alias.scope !248
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.bc, label %._crit_edge.us.i.us.us.us.us, label %vector.body105, !llvm.loop !241

scalar.ph101:                                     ; preds = %scalar.ph101.preheader, %scalar.ph101
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.1, %scalar.ph101 ], [ 0, %scalar.ph101.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph101 ], [ 0, %scalar.ph101.preheader ]
  %gep.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us ; 2 uses
  %i.bd = load i64, ptr %gep.i.us.us.us.us, align 8, !tbaa !72
  %gep81.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us ; 2 uses
  %i.be = load i64, ptr %gep81.i.us.us.us.us, align 8, !tbaa !72
  store i64 %i.be, ptr %gep.i.us.us.us.us, align 8, !tbaa !72
  store i64 %i.bd, ptr %gep81.i.us.us.us.us, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us, 1 ; 2 uses
  %gep.i.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us ; 2 uses
  %i.bf = load i64, ptr %gep.i.us.us.us.us.1, align 8, !tbaa !72
  %gep81.i.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us ; 2 uses
  %i.bg = load i64, ptr %gep81.i.us.us.us.us.1, align 8, !tbaa !72
  store i64 %i.bg, ptr %gep.i.us.us.us.us.1, align 8, !tbaa !72
  store i64 %i.bf, ptr %gep81.i.us.us.us.us.1, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa, label %scalar.ph101, !llvm.loop !242

._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa:  ; preds = %scalar.ph101
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us, label %scalar.ph101.epil.preheader

scalar.ph101.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa, %scalar.ph101.preheader
  %indvars.iv.i.us.us.us.us.epil.init = phi i64 [ 0, %scalar.ph101.preheader ], [ %indvars.iv.next.i.us.us.us.us.1, %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %gep.i.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.epil.init ; 2 uses
  %i.bh = load i64, ptr %gep.i.us.us.us.us.epil, align 8, !tbaa !72
  %gep81.i.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.epil.init ; 2 uses
  %i.bi = load i64, ptr %gep81.i.us.us.us.us.epil, align 8, !tbaa !72
  store i64 %i.bi, ptr %gep.i.us.us.us.us.epil, align 8, !tbaa !72
  store i64 %i.bh, ptr %gep81.i.us.us.us.us.epil, align 8, !tbaa !72
  br label %._crit_edge.us.i.us.us.us.us

._crit_edge.us.i.us.us.us.us:                     ; preds = %vector.body105, %scalar.ph101.epil.preheader, %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us, i64 %i.ac ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.k
  br i1 %i.bk, label %.preheader.us.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us, !llvm.loop !11

bb.f:                                             ; preds = %bb.e
  br i1 %4, label %Abc_TtSwapAdjacent.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %bb.f, %.lr.ph.i.us.us.us.us
  %.05462.i.us.us.us.us = phi ptr [ %i.bo, %.lr.ph.i.us.us.us.us ], [ %0, %bb.f ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us, i64 4 ; 2 uses
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !60
  %i.bn = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bn, ptr %i.bl, align 4, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us, i64 16 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.k
  br i1 %i.bp, label %.lr.ph.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us, !llvm.loop !12

.lr.ph64.i.us.us.us.us:                           ; preds = %.lr.ph.us.us
  %i.bq = shl nuw nsw i32 1, %i.t
  %i.br = getelementptr inbounds nuw [24 x i8], ptr @s_PMasks, i64 %indvars.iv67 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !72 ; 2 uses
  %i.bv = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert86 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat87 = shufflevector <2 x i64> %broadcast.splatinsert86, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert88 = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat89 = shufflevector <2 x i64> %broadcast.splatinsert88, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert90 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat91 = shufflevector <2 x i64> %broadcast.splatinsert90, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !tbaa !72 ; 3 uses
  %wide.load92 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !72 ; 3 uses
  %i.ca = and <2 x i64> %wide.load, %broadcast.splat
  %i.cb = and <2 x i64> %wide.load92, %broadcast.splat
  %i.cc = and <2 x i64> %wide.load, %broadcast.splat87
  %i.cd = and <2 x i64> %wide.load92, %broadcast.splat87
  %i.ce = shl <2 x i64> %i.cc, %broadcast.splat89
  %i.cf = shl <2 x i64> %i.cd, %broadcast.splat89
  %i.cg = or <2 x i64> %i.ce, %i.ca
  %i.ch = or <2 x i64> %i.cf, %i.cb
  %i.ci = and <2 x i64> %wide.load, %broadcast.splat91
  %i.cj = and <2 x i64> %wide.load92, %broadcast.splat91
  %i.ck = lshr <2 x i64> %i.ci, %broadcast.splat89
  %i.cl = lshr <2 x i64> %i.cj, %broadcast.splat89
  %i.cm = or <2 x i64> %i.cg, %i.ck
  %i.cn = or <2 x i64> %i.ch, %i.cl
  store <2 x i64> %i.cm, ptr %i.by, align 8, !tbaa !72
  store <2 x i64> %i.cn, ptr %i.bz, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us, %middle.block
  %indvars.iv70.i.us.us.us.us.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us = phi i64 [ %indvars.iv.next71.i.us.us.us.us, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us.us.us.us ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !72 ; 3 uses
  %i.cr = and i64 %i.cq, %i.bs
  %i.cs = and i64 %i.cq, %i.bu
  %i.ct = shl i64 %i.cs, %i.bv
  %i.cu = or i64 %i.ct, %i.cr
  %i.cv = and i64 %i.cq, %i.bx
  %i.cw = lshr i64 %i.cv, %i.bv
  %i.cx = or i64 %i.cu, %i.cw
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !72
  %indvars.iv.next71.i.us.us.us.us = add nuw nsw i64 %indvars.iv70.i.us.us.us.us, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us = icmp eq i64 %indvars.iv.next71.i.us.us.us.us, %wide.trip.count73.i
  br i1 %exitcond74.not.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us, label %scalar.ph, !llvm.loop !244

Abc_TtSwapAdjacent.exit.us.us.us.us:              ; preds = %._crit_edge.us.i.us.us.us.us, %.lr.ph.i.us.us.us.us, %scalar.ph, %middle.block, %bb.f, %.preheader.lr.ph.i.us.us.us.us
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv67 ; 2 uses
  %i.cz = load <2 x i32>, ptr %i.cy, align 4, !tbaa !60
  %i.da = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.da, ptr %i.cy, align 4, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %Abc_TtSwapAdjacent.exit.us.us.us.us
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.db = trunc nuw i64 %indvars.iv.next68 to i32
  %i.dc = icmp sgt i32 %.02937.us.us, %i.db
  br i1 %i.dc, label %.lr.ph.us.us, label %._crit_edge.split.us.us.split.us.us, !llvm.loop !245

._crit_edge.split.us.us.split.us.us:              ; preds = %bb.h, %.preheader.us.us
  %i.dd = add nsw i32 %.02937.us.us, -1
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.de = add nsw i32 %.02937.us.us, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.split.us.us.split.us.us, %.lr.ph43.split.us.split.us
  %.1.us.us = phi i32 [ %.02937.us.us, %.lr.ph43.split.us.split.us ], [ %i.de, %bb.i ], [ %i.dd, %._crit_edge.split.us.us.split.us.us ]
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, -1
  %i.df = icmp sgt i32 %indvars70, 0
  br i1 %i.df, label %.lr.ph43.split.us.split.us, label %._crit_edge44, !llvm.loop !246

.lr.ph43.split:                                   ; preds = %.lr.ph43, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ %i.m, %.lr.ph43 ] ; 3 uses
  %.02937 = phi i32 [ %.1, %bb.o ], [ %i.b, %.lr.ph43 ] ; 6 uses
  %indvars58 = trunc i64 %indvars.iv to i32       ; 4 uses
  %i.dg = shl nuw i32 1, %indvars58
  %i.dh = and i32 %i.dg, %2
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph43.split
  %i.dj = icmp eq i32 %.02937, %indvars58
  br i1 %i.dj, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.dk = icmp sgt i32 %.02937, %indvars58
  br i1 %i.dk, label %.lr.ph, label %._crit_edge.split

bb.l:                                             ; preds = %bb.k
  %i.dl = add nsw i32 %.02937, -1
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.n ], [ %indvars.iv, %.preheader ] ; 3 uses
  %i.dm = icmp ne i64 %indvars.iv55, 5
  %brmerge = or i1 %i.dm, %4
  br i1 %brmerge, label %Abc_TtSwapAdjacent.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.05462.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %0, %.lr.ph ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !60
  %i.dp = shufflevector <2 x i32> %i.do, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dp, ptr %i.dn, align 4, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.k
  br i1 %i.dr, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !12

Abc_TtSwapAdjacent.exit:                          ; preds = %.lr.ph.i, %.lr.ph
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv55 ; 2 uses
  %i.dt = load <2 x i32>, ptr %i.ds, align 4, !tbaa !60
  %i.du = shufflevector <2 x i32> %i.dt, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.du, ptr %i.ds, align 4, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %Abc_TtSwapAdjacent.exit, %bb.m
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next56 to i32
  %i.dw = icmp sgt i32 %.02937, %i.dv
  br i1 %i.dw, label %.lr.ph, label %._crit_edge.split, !llvm.loop !245

._crit_edge.split:                                ; preds = %bb.n, %.preheader
  %i.dx = add nsw i32 %.02937, -1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph43.split, %._crit_edge.split, %bb.l
  %.1 = phi i32 [ %.02937, %.lr.ph43.split ], [ %i.dl, %bb.l ], [ %i.dx, %._crit_edge.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dy = icmp sgt i32 %indvars58, 0
  br i1 %i.dy, label %.lr.ph43.split, label %._crit_edge44, !llvm.loop !246

._crit_edge44:                                    ; preds = %bb.o, %bb.j, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Abc_LutCascadeLookup(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i.preheader, label %Abc_TtCopy.exit

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtEqual.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Abc_TtEqual.exit ] ; 3 uses
  %i.e = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit.loopexit30, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72
  %.not.i = icmp eq i64 %i.h, %i.j
  br i1 %.not.i, label %bb.b, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader.i, !llvm.loop !14

._crit_edge:                                      ; preds = %Abc_TtEqual.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %1, %Abc_TtEqual.exit ] ; 5 uses
  %i.k = mul i32 %.0.lcssa, %3
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l ; 6 uses
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph.preheader.i16, label %Abc_TtCopy.exit

.lr.ph.preheader.i16:                             ; preds = %._crit_edge
  %wide.trip.count.i17 = zext nneg i32 %3 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %3, 14
  br i1 %min.iters.check, label %.lr.ph.i18.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i16
  %i.o = shl nsw i64 %i.l, 3
  %i.p = add i64 %i.o, %i.b
  %i.q = sub i64 %i.a, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %.lr.ph.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i17, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !72
  %wide.load36 = load <2 x i64>, ptr %i.s, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %wide.load, ptr %i.t, align 8, !tbaa !72
  store <2 x i64> %wide.load36, ptr %i.u, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i17
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i16, %middle.block
  %indvars.iv.i19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i16 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i17, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i18.prol.loopexit, label %.lr.ph.i18.prol

.lr.ph.i18.prol:                                  ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18.prol
  %indvars.iv.i19.prol = phi i64 [ %indvars.iv.next.i20.prol, %.lr.ph.i18.prol ], [ %indvars.iv.i19.ph, %.lr.ph.i18.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i18.prol ], [ 0, %.lr.ph.i18.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i19.prol
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i19.prol
  store i64 %i.x, ptr %i.y, align 8, !tbaa !72
  %indvars.iv.next.i20.prol = add nuw nsw i64 %indvars.iv.i19.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i18.prol.loopexit, label %.lr.ph.i18.prol, !llvm.loop !250

.lr.ph.i18.prol.loopexit:                         ; preds = %.lr.ph.i18.prol, %.lr.ph.i18.preheader
  %indvars.iv.i19.unr = phi i64 [ %indvars.iv.i19.ph, %.lr.ph.i18.preheader ], [ %indvars.iv.next.i20.prol, %.lr.ph.i18.prol ]
  %i.z = sub nsw i64 %indvars.iv.i19.ph, %wide.trip.count.i17
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %Abc_TtCopy.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.prol.loopexit, %.lr.ph.i18
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20.3, %.lr.ph.i18 ], [ %indvars.iv.i19.unr, %.lr.ph.i18.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i19
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i19
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !72
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !72
  %indvars.iv.next.i20.1 = add nuw nsw i64 %indvars.iv.i19, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20.1
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20.1
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !72
  %indvars.iv.next.i20.2 = add nuw nsw i64 %indvars.iv.i19, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20.2
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20.2
  store i64 %i.al, ptr %i.am, align 8, !tbaa !72
  %indvars.iv.next.i20.3 = add nuw nsw i64 %indvars.iv.i19, 4 ; 2 uses
  %exitcond.not.i21.3 = icmp eq i64 %indvars.iv.next.i20.3, %wide.trip.count.i17
  br i1 %exitcond.not.i21.3, label %Abc_TtCopy.exit, label %.lr.ph.i18, !llvm.loop !251

Abc_TtCopy.exit.loopexit30:                       ; preds = %bb.b
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i18.prol.loopexit, %.lr.ph.i18, %middle.block, %Abc_TtCopy.exit.loopexit30, %.lr.ph, %._crit_edge
  %.028 = phi i32 [ %i.an, %Abc_TtCopy.exit.loopexit30 ], [ 0, %.lr.ph ], [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %middle.block ], [ %.0.lcssa, %.lr.ph.i18 ], [ %.0.lcssa, %.lr.ph.i18.prol.loopexit ]
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_LutCascadeDerive(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.c = sub nsw i32 %1, %2                       ; 2 uses
  %i.d = icmp ult i32 %3, 2
  %i.e = add i32 %3, -1
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %.09.i = select i1 %i.d, i32 %3, i32 %i.g       ; 7 uses
  %i.h = icmp slt i32 %i.c, 7                     ; 3 uses
  %i.i = add nsw i32 %i.c, -6                     ; 3 uses
  %i.j = shl nuw i32 1, %i.i
  %i.k = select i1 %i.h, i32 1, i32 %i.j
  %.fr112 = freeze i32 %i.k                       ; 7 uses
  %i.l = shl nuw nsw i32 1, %2                    ; 2 uses
  %.not = icmp eq i32 %2, 31
  br i1 %.not, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.a
  %i.m = select i1 %i.h, i32 0, i32 %i.i          ; 5 uses
  %i.n = icmp sgt i32 %.fr112, 0                  ; 3 uses
  %wide.trip.count.i.i = zext i32 %.fr112 to i64  ; 12 uses
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %.not111 = icmp eq i32 %.09.i, 0
end_hunk_1
begin_hunk_2_@Abc_LutCascadeDerive:bb.a
  br i1 %min.iters.check151, label %.lr.ph.i18.i.us83.preheader180, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i18.i.us83.preheader
  %i.cs = sub nsw i64 %i.cq, %i.cg
  %i.ct = shl nsw i64 %i.cs, 3
  %.reass199 = add i64 %i.ct, %invariant.op198
  %diff.check153 = icmp ult i64 %.reass199, 31
  br i1 %diff.check153, label %.lr.ph.i18.i.us83.preheader180, label %vector.body156

vector.body156:                                   ; preds = %vector.memcheck152, %vector.body156
  %index157 = phi i64 [ %index.next160, %vector.body156 ], [ 0, %vector.memcheck152 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index157 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load158 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !72
  %wide.load159 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index157 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x i64> %wide.load158, ptr %i.cw, align 8, !tbaa !72
  store <2 x i64> %wide.load159, ptr %i.cx, align 8, !tbaa !72
  %index.next160 = add nuw i64 %index157, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.cy, label %middle.block161, label %vector.body156, !llvm.loop !257

middle.block161:                                  ; preds = %vector.body156
  br i1 %cmp.n162, label %Abc_LutCascadeLookup.exit.us90, label %.lr.ph.i18.i.us83.preheader180

.lr.ph.i18.i.us83.preheader180:                   ; preds = %vector.memcheck152, %.lr.ph.i18.i.us83.preheader, %middle.block161
  %indvars.iv.i19.i.us84.ph = phi i64 [ 0, %vector.memcheck152 ], [ 0, %.lr.ph.i18.i.us83.preheader ], [ %n.vec155, %middle.block161 ] ; 3 uses
  br i1 %lcmp.mod190.not, label %.lr.ph.i18.i.us83.prol.loopexit, label %.lr.ph.i18.i.us83.prol

.lr.ph.i18.i.us83.prol:                           ; preds = %.lr.ph.i18.i.us83.preheader180, %.lr.ph.i18.i.us83.prol
  %indvars.iv.i19.i.us84.prol = phi i64 [ %indvars.iv.next.i20.i.us85.prol, %.lr.ph.i18.i.us83.prol ], [ %indvars.iv.i19.i.us84.ph, %.lr.ph.i18.i.us83.preheader180 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph.i18.i.us83.prol ], [ 0, %.lr.ph.i18.i.us83.preheader180 ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i19.i.us84.prol
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !72
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i19.i.us84.prol
  store i64 %i.da, ptr %i.db, align 8, !tbaa !72
  %indvars.iv.next.i20.i.us85.prol = add nuw nsw i64 %indvars.iv.i19.i.us84.prol, 1 ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph.i18.i.us83.prol.loopexit, label %.lr.ph.i18.i.us83.prol, !llvm.loop !258

.lr.ph.i18.i.us83.prol.loopexit:                  ; preds = %.lr.ph.i18.i.us83.prol, %.lr.ph.i18.i.us83.preheader180
  %indvars.iv.i19.i.us84.unr = phi i64 [ %indvars.iv.i19.i.us84.ph, %.lr.ph.i18.i.us83.preheader180 ], [ %indvars.iv.next.i20.i.us85.prol, %.lr.ph.i18.i.us83.prol ]
  %i.dc = sub nsw i64 %indvars.iv.i19.i.us84.ph, %wide.trip.count.i.i
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %Abc_LutCascadeLookup.exit.us90, label %.lr.ph.i18.i.us83

.lr.ph.i18.i.us83:                                ; preds = %.lr.ph.i18.i.us83.prol.loopexit, %.lr.ph.i18.i.us83
  %indvars.iv.i19.i.us84 = phi i64 [ %indvars.iv.next.i20.i.us85.3, %.lr.ph.i18.i.us83 ], [ %indvars.iv.i19.i.us84.unr, %.lr.ph.i18.i.us83.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i19.i.us84
  %i.df = load i64, ptr %i.de, align 8, !tbaa !72
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i19.i.us84
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !72
  %indvars.iv.next.i20.i.us85 = add nuw nsw i64 %indvars.iv.i19.i.us84, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next.i20.i.us85
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !72
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next.i20.i.us85
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !72
  %indvars.iv.next.i20.i.us85.1 = add nuw nsw i64 %indvars.iv.i19.i.us84, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next.i20.i.us85.1
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !72
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next.i20.i.us85.1
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !72
  %indvars.iv.next.i20.i.us85.2 = add nuw nsw i64 %indvars.iv.i19.i.us84, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next.i20.i.us85.2
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !72
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next.i20.i.us85.2
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !72
  %indvars.iv.next.i20.i.us85.3 = add nuw nsw i64 %indvars.iv.i19.i.us84, 4 ; 2 uses
  %exitcond.not.i21.i.us86.3 = icmp eq i64 %indvars.iv.next.i20.i.us85.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i21.i.us86.3, label %Abc_LutCascadeLookup.exit.us90, label %.lr.ph.i18.i.us83, !llvm.loop !259

Abc_TtCopy.exit.loopexit30.i.us88:                ; preds = %bb.h
  %i.dq = trunc nuw nsw i64 %indvars.iv.i.us70 to i32
  br label %Abc_LutCascadeLookup.exit.us90

Abc_LutCascadeLookup.exit.us90:                   ; preds = %.lr.ph.i18.i.us83.prol.loopexit, %.lr.ph.i18.i.us83, %middle.block161, %Abc_TtCopy.exit.loopexit30.i.us88
  %.028.i.us91 = phi i32 [ %i.dq, %Abc_TtCopy.exit.loopexit30.i.us88 ], [ %.0.lcssa.i.us81, %middle.block161 ], [ %.0.lcssa.i.us81, %.lr.ph.i18.i.us83 ], [ %.0.lcssa.i.us81, %.lr.ph.i18.i.us83.prol.loopexit ]
  %i.dr = add nsw i32 %.028.i.us91, 1
  %i.ds = tail call noundef i32 @llvm.smax.i32(i32 %.059.us64, i32 %i.dr) ; 2 uses
  %i.dt = add nuw nsw i32 %.04758.us65, 1         ; 2 uses
  %exitcond126.not = icmp eq i32 %i.dt, %i.l
  br i1 %exitcond126.not, label %._crit_edge63, label %.lr.ph62.split.split.us, !llvm.loop !256

._crit_edge63:                                    ; preds = %._crit_edge.us, %Abc_LutCascadeLookup.exit.us90, %.lr.ph62.split, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph62.split ], [ %i.ds, %Abc_LutCascadeLookup.exit.us90 ], [ %i.cc, %._crit_edge.us ] ; 3 uses
  %i.du = shl nuw i32 1, %.09.i                   ; 2 uses
  %i.dv = icmp slt i32 %.0.lcssa, %i.du
  br i1 %i.dv, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %._crit_edge63
  %i.dw = add nsw i32 %.0.lcssa, -1
  %i.dx = select i1 %i.h, i32 0, i32 %i.i         ; 2 uses
  %i.dy = shl i32 %i.dw, %i.dx
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dz ; 6 uses
  %i.eb = icmp sgt i32 %.fr112, 0
  %wide.trip.count.i51 = zext i32 %.fr112 to i64  ; 5 uses
  br i1 %i.eb, label %.lr.ph.preheader.i.preheader, label %._crit_edge.split

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %min.iters.check167 = icmp ult i32 %.fr112, 6
  %n.vec171 = and i64 %wide.trip.count.i51, 2147483644 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec171, %wide.trip.count.i51
  %xtraiter192 = and i64 %wide.trip.count.i51, 3  ; 2 uses
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtCopy.exit.loopexit
  %.148108 = phi i32 [ %i.fe, %Abc_TtCopy.exit.loopexit ], [ %.0.lcssa, %.lr.ph.preheader.i.preheader ] ; 2 uses
  %i.ec = shl i32 %.148108, %i.dx
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ed ; 6 uses
  br i1 %min.iters.check167, label %.lr.ph.i52.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.preheader.i
  %i.ef = sub nsw i64 %i.ed, %i.dz
  %i.eg = shl nsw i64 %i.ef, 3
  %i.eh = add nsw i64 %i.eg, -1
  %diff.check169 = icmp ult i64 %i.eh, 31
  br i1 %diff.check169, label %.lr.ph.i52.preheader, label %vector.body172

vector.body172:                                   ; preds = %vector.memcheck168, %vector.body172
  %index173 = phi i64 [ %index.next176, %vector.body172 ], [ 0, %vector.memcheck168 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index173 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load174 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !72
  %wide.load175 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !72
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %index173 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <2 x i64> %wide.load174, ptr %i.ek, align 8, !tbaa !72
  store <2 x i64> %wide.load175, ptr %i.el, align 8, !tbaa !72
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.em, label %middle.block177, label %vector.body172, !llvm.loop !260

middle.block177:                                  ; preds = %vector.body172
  br i1 %cmp.n178, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %vector.memcheck168, %.lr.ph.preheader.i, %middle.block177
  %indvars.iv.i53.ph = phi i64 [ 0, %vector.memcheck168 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec171, %middle.block177 ] ; 3 uses
  br i1 %lcmp.mod193.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol

.lr.ph.i52.prol:                                  ; preds = %.lr.ph.i52.preheader, %.lr.ph.i52.prol
  %indvars.iv.i53.prol = phi i64 [ %indvars.iv.next.i54.prol, %.lr.ph.i52.prol ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader ] ; 3 uses
  %prol.iter194 = phi i64 [ %prol.iter194.next, %.lr.ph.i52.prol ], [ 0, %.lr.ph.i52.preheader ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i53.prol
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !72
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i53.prol
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !72
  %indvars.iv.next.i54.prol = add nuw nsw i64 %indvars.iv.i53.prol, 1 ; 2 uses
  %prol.iter194.next = add i64 %prol.iter194, 1   ; 2 uses
  %prol.iter194.cmp.not = icmp eq i64 %prol.iter194.next, %xtraiter192
  br i1 %prol.iter194.cmp.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol, !llvm.loop !261

.lr.ph.i52.prol.loopexit:                         ; preds = %.lr.ph.i52.prol, %.lr.ph.i52.preheader
  %indvars.iv.i53.unr = phi i64 [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader ], [ %indvars.iv.next.i54.prol, %.lr.ph.i52.prol ]
  %i.eq = sub nsw i64 %indvars.iv.i53.ph, %wide.trip.count.i51
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54.3, %.lr.ph.i52 ], [ %indvars.iv.i53.unr, %.lr.ph.i52.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i53
  %i.et = load i64, ptr %i.es, align 8, !tbaa !72
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i53
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !72
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i54
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !72
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i54
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !72
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i53, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i54.1
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !72
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i54.1
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !72
  %indvars.iv.next.i54.2 = add nuw nsw i64 %indvars.iv.i53, 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i54.2
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !72
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i54.2
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !72
  %indvars.iv.next.i54.3 = add nuw nsw i64 %indvars.iv.i53, 4 ; 2 uses
  %exitcond.not.i55.3 = icmp eq i64 %indvars.iv.next.i54.3, %wide.trip.count.i51
  br i1 %exitcond.not.i55.3, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i52, !llvm.loop !262

Abc_TtCopy.exit.loopexit:                         ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %middle.block177
  %i.fe = add nsw i32 %.148108, 1                 ; 2 uses
  %exitcond127.not = icmp eq i32 %i.fe, %i.du
  br i1 %exitcond127.not, label %._crit_edge.split, label %.lr.ph.preheader.i, !llvm.loop !263

._crit_edge.split:                                ; preds = %Abc_TtCopy.exit.loopexit, %.lr.ph, %._crit_edge63
  %i.ff = icmp slt i32 %2, 6
  %i.fg = icmp ne i32 %.09.i, 0
  %or.cond = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %._crit_edge.split
  %i.fh = icmp eq i32 %2, 0
  %i.fi = icmp ult i32 %2, 2
  %i.fj = icmp ult i32 %2, 3
  %i.fk = icmp ult i32 %2, 4
  %i.fl = icmp ult i32 %2, 5
  %i.fm = icmp ult i32 %2, 6
  %i.fn = sext i32 %6 to i64
  %wide.trip.count131 = zext nneg i32 %.09.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph110, %bb.i
  %indvars.iv128 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next129, %bb.i ] ; 2 uses
  %i.fo = mul nsw i64 %indvars.iv128, %i.fn
  %i.fp = getelementptr inbounds [8 x i8], ptr %5, i64 %i.fo ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !72 ; 7 uses
  %i.fr = trunc i64 %i.fq to i1
  %i.fs = select i1 %i.fr, i64 3, i64 0
  %i.ft = and i64 %i.fq, 3
  %i.fu = select i1 %i.fh, i64 %i.fs, i64 %i.ft
  %i.fv = mul nuw nsw i64 %i.fu, 5
  %.126.i = select i1 %i.fi, i64 %i.fv, i64 %i.fq
  %i.fw = and i64 %.126.i, 15
  %i.fx = mul nuw nsw i64 %i.fw, 17
  %.227.i = select i1 %i.fj, i64 %i.fx, i64 %i.fq
  %i.fy = and i64 %.227.i, 255
  %i.fz = mul nuw nsw i64 %i.fy, 257
  %.328.i = select i1 %i.fk, i64 %i.fz, i64 %i.fq
  %i.ga = and i64 %.328.i, 65535
  %i.gb = mul nuw nsw i64 %i.ga, 65537
  %.429.i = select i1 %i.fl, i64 %i.gb, i64 %i.fq
  %i.gc = and i64 %.429.i, 4294967295
  %i.gd = mul nuw i64 %i.gc, 4294967297
  %.5.i = select i1 %i.fm, i64 %i.gd, i64 %i.fq
  store i64 %.5.i, ptr %i.fp, align 8, !tbaa !72
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit, label %bb.i, !llvm.loop !264

.loopexit:                                        ; preds = %bb.i, %._crit_edge.split
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_LutCascadeDec(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr noundef %13, i32 noundef %14, i32 noundef %15) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = getelementptr i8, ptr %4, i64 4          ; 7 uses
  %.val132 = load i32, ptr %i.b, align 4, !tbaa !80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = icmp slt i32 %.val132, 7
  %i.d = add nsw i32 %.val132, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 5 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 16) ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !83
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #31 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !71
  store i32 %i.f, ptr %i.k, align 4, !tbaa !84
  %i.m = sext i32 %i.f to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.n, i1 false)
  store ptr %i.g, ptr %i.a, align 16, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %calloc, ptr %i.o, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %calloc195 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %calloc195, i64 8
  store ptr %calloc195, ptr %i.q, align 16, !tbaa !89
  %i.s = icmp sgt i32 %i.f, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %Vec_WrdPush.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  %i.t = shl nuw nsw i64 %wide.trip.count.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.t, i1 false), !tbaa !72
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %.lr.ph.preheader.i, %bb.a
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 100, ptr %i.u, align 8, !tbaa !83
  %i.w = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #31 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !71
  %i.y = sext i32 %3 to i64
  store i32 1, ptr %i.v, align 4, !tbaa !84
  store i64 %i.y, ptr %i.w, align 8, !tbaa !72
  %.not = icmp eq ptr %12, null                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %Vec_WrdPush.exit
  store i32 0, ptr %12, align 4, !tbaa !60
  %.val131163.pre = load i32, ptr %i.b, align 4, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %Vec_WrdPush.exit
  %.val131163 = phi i32 [ %.val131163.pre, %bb.b ], [ %.val132, %Vec_WrdPush.exit ] ; 3 uses
  %i.z = icmp sgt i32 %.val131163, %6
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not115 = icmp eq i32 %8, 0                    ; 2 uses
  %.not117 = icmp eq i32 %11, 0                   ; 3 uses
  %i.aa = icmp ne i32 %10, 0
  %i.ab = add nsw i32 %6, -1
  %i.ac = add nsw i32 %5, 1                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.v
  %.val131167 = phi i32 [ %.val131163, %.lr.ph ], [ %.val131, %bb.v ]
  %.0100166 = phi i32 [ 0, %.lr.ph ], [ %.5, %bb.v ] ; 2 uses
  %.0101164 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.v ] ; 5 uses
  %.val139 = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.ad = tail call ptr @Abc_TtFindBVarsSVars2(ptr noundef %0, ptr noundef %.val139, i32 noundef %.val131167, i32 noundef %.0100166, i32 noundef %5, i32 noundef %6, i32 noundef %11, ptr noundef %13, i32 noundef %9, i32 noundef %14, i32 noundef %15) #30 ; 4 uses
  %.not114 = icmp eq ptr %i.ad, null
  br i1 %.not114, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not115, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @Abc_Random(i32 noundef 0) #30
  %i.af = getelementptr i8, ptr %i.ad, i64 4
  %.val135 = load i32, ptr %i.af, align 4, !tbaa !84
  %i.ag = urem i32 %i.ae, %.val135
  %i.ah = sext i32 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ai = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  %i.aj = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  %.val125 = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.ak = getelementptr inbounds [8 x i8], ptr %.val125, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !72
  %i.am = call fastcc i32 @Abc_LutCascadeDecStage(i64 noundef %i.al, ptr noundef %1, i32 noundef %.0101164, ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull %i.u)
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.an) #30
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.g, %bb.h
  tail call void @free(ptr noundef nonnull %i.ad) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %Vec_WrdFree.exit
  %.1 = phi i32 [ %i.am, %Vec_WrdFree.exit ], [ -1, %bb.d ]
  %i.ao = add nuw nsw i32 %.0101164, 2            ; 3 uses
  %i.ap = icmp sle i32 %i.ao, %7                  ; 3 uses
  %brmerge = or i1 %i.ap, %.not117
  %.1.mux = select i1 %i.ap, i32 %.1, i32 -1
  br i1 %brmerge, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ao, i32 noundef %7) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.2 = phi i32 [ %.1.mux, %bb.i ], [ -1, %bb.j ] ; 2 uses
  %i.ar = icmp eq i32 %.2, -1
  %or.cond = select i1 %i.aa, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %.val129 = load i32, ptr %i.b, align 4, !tbaa !80 ; 2 uses
  %.not118 = icmp slt i32 %.val129, %6
  br i1 %.not118, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val138 = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.as = tail call ptr @Abc_TtFindBVarsSVars2(ptr noundef %0, ptr noundef %.val138, i32 noundef %.val129, i32 noundef %.0100166, i32 noundef %i.ac, i32 noundef %i.ab, i32 noundef %11, ptr noundef %13, i32 noundef %9, i32 noundef %14, i32 noundef %15) #30 ; 4 uses
  %.not119 = icmp eq ptr %i.as, null
  br i1 %.not119, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not115, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call i32 @Abc_Random(i32 noundef 0) #30
  %i.au = getelementptr i8, ptr %i.as, i64 4
  %.val134 = load i32, ptr %i.au, align 4, !tbaa !84
  %i.av = urem i32 %i.at, %.val134
  %i.aw = sext i32 %i.av to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ax = phi i64 [ %i.aw, %bb.o ], [ 0, %bb.n ]
  %i.ay = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %.val124 = load ptr, ptr %i.ay, align 8, !tbaa !71
  %i.az = getelementptr inbounds [8 x i8], ptr %.val124, i64 %i.ax
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !72
  %i.bb = call fastcc i32 @Abc_LutCascadeDecStage(i64 noundef %i.ba, ptr noundef %1, i32 noundef %.0101164, ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %i.ac, ptr noundef nonnull %i.u)
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !71 ; 2 uses
  %.not.i141 = icmp eq ptr %i.bc, null
  br i1 %.not.i141, label %Vec_WrdFree.exit142, label %bb.q

end_hunk_2
begin_hunk_3_@Abc_TtMinimumBase:bb.a

Abc_TtHasVar.exit.thread.us.2:                    ; preds = %Abc_TtHasVar.exit.thread36.us.2, %Abc_TtHasVar.exit.us.2
  %.124.us.2 = phi i32 [ %i.be, %Abc_TtHasVar.exit.thread36.us.2 ], [ %.124.us.1, %Abc_TtHasVar.exit.us.2 ] ; 4 uses
  %.1.us.2 = phi i32 [ %i.az, %Abc_TtHasVar.exit.thread36.us.2 ], [ %.1.us.1, %Abc_TtHasVar.exit.us.2 ] ; 3 uses
  %exitcond99.not.2 = icmp eq i32 %2, 3
  br i1 %exitcond99.not.2, label %._crit_edge, label %Abc_TtHasVar.exit.us.3

Abc_TtHasVar.exit.us.3:                           ; preds = %Abc_TtHasVar.exit.thread.us.2
  %i.bf = lshr i64 %i.h, 8
  %i.bg = xor i64 %i.bf, %i.h
  %i.bh = and i64 %i.bg, 71777214294589695
  %.not39.us.3 = icmp eq i64 %i.bh, 0
  br i1 %.not39.us.3, label %Abc_TtHasVar.exit.thread.us.3, label %Abc_TtHasVar.exit.thread36.us.3

Abc_TtHasVar.exit.thread36.us.3:                  ; preds = %Abc_TtHasVar.exit.us.3
  %i.bi = or i32 %.1.us.2, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !60
  %i.bl = sext i32 %.124.us.2 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bl
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !60
  %i.bn = add nsw i32 %.124.us.2, 1
  br label %Abc_TtHasVar.exit.thread.us.3

Abc_TtHasVar.exit.thread.us.3:                    ; preds = %Abc_TtHasVar.exit.thread36.us.3, %Abc_TtHasVar.exit.us.3
  %.124.us.3 = phi i32 [ %i.bn, %Abc_TtHasVar.exit.thread36.us.3 ], [ %.124.us.2, %Abc_TtHasVar.exit.us.3 ] ; 4 uses
  %.1.us.3 = phi i32 [ %i.bi, %Abc_TtHasVar.exit.thread36.us.3 ], [ %.1.us.2, %Abc_TtHasVar.exit.us.3 ] ; 3 uses
  %exitcond99.not.3 = icmp eq i32 %2, 4
  br i1 %exitcond99.not.3, label %._crit_edge, label %Abc_TtHasVar.exit.us.4

Abc_TtHasVar.exit.us.4:                           ; preds = %Abc_TtHasVar.exit.thread.us.3
  %i.bo = lshr i64 %i.h, 16
  %i.bp = xor i64 %i.bo, %i.h
  %i.bq = and i64 %i.bp, 281470681808895
  %.not39.us.4 = icmp eq i64 %i.bq, 0
  br i1 %.not39.us.4, label %Abc_TtHasVar.exit.thread.us.4, label %Abc_TtHasVar.exit.thread36.us.4

Abc_TtHasVar.exit.thread36.us.4:                  ; preds = %Abc_TtHasVar.exit.us.4
  %i.br = or i32 %.1.us.3, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !60
  %i.bu = sext i32 %.124.us.3 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !60
  %i.bw = add nsw i32 %.124.us.3, 1
  br label %Abc_TtHasVar.exit.thread.us.4

Abc_TtHasVar.exit.thread.us.4:                    ; preds = %Abc_TtHasVar.exit.thread36.us.4, %Abc_TtHasVar.exit.us.4
  %.124.us.4 = phi i32 [ %i.bw, %Abc_TtHasVar.exit.thread36.us.4 ], [ %.124.us.3, %Abc_TtHasVar.exit.us.4 ] ; 4 uses
  %.1.us.4 = phi i32 [ %i.br, %Abc_TtHasVar.exit.thread36.us.4 ], [ %.1.us.3, %Abc_TtHasVar.exit.us.4 ] ; 3 uses
  %exitcond99.not.4 = icmp eq i32 %2, 5
  br i1 %exitcond99.not.4, label %._crit_edge, label %Abc_TtHasVar.exit.us.5

Abc_TtHasVar.exit.us.5:                           ; preds = %Abc_TtHasVar.exit.thread.us.4
  %i.bx = lshr i64 %i.h, 32
  %.masked = and i64 %i.h, 4294967295
  %.not39.us.5 = icmp eq i64 %i.bx, %.masked
  br i1 %.not39.us.5, label %._crit_edge, label %Abc_TtHasVar.exit.thread36.us.5

Abc_TtHasVar.exit.thread36.us.5:                  ; preds = %Abc_TtHasVar.exit.us.5
  %i.by = or i32 %.1.us.4, 32
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !60
  %i.cb = sext i32 %.124.us.4 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cb
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !60
  %i.cd = add nsw i32 %.124.us.4, 1
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not48.i = icmp eq i32 %i.d, 31
  br i1 %.not48.i, label %._crit_edge.thread, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %Abc_TtHasVar.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %Abc_TtHasVar.exit.thread ] ; 7 uses
  %.047 = phi i32 [ 0, %.lr.ph.split.split.preheader ], [ %.1, %Abc_TtHasVar.exit.thread ] ; 4 uses
  %.02346 = phi i32 [ 0, %.lr.ph.split.split.preheader ], [ %.124, %Abc_TtHasVar.exit.thread ] ; 5 uses
  %i.ce = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.ce, label %.lr.ph.i, label %.preheader.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split.split
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32
  %i.cg = shl nuw nsw i32 1, %i.cf                ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !72
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %Abc_TtHasVar.exit.thread, label %bb.c, !llvm.loop !6

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next54.i, %bb.b ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv53.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !72 ; 2 uses
  %i.cm = lshr i64 %i.cl, %i.ch
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = and i64 %i.cn, %i.cj
  %.not39.i = icmp eq i64 %i.co, 0
  br i1 %.not39.i, label %bb.b, label %Abc_TtHasVar.exit.thread36

.preheader.lr.ph.i:                               ; preds = %.lr.ph.split.split
  %i.cp = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 31
  %i.cr = trunc nsw i64 %i.cp to i32              ; 2 uses
  %i.cs = shl i32 2, %i.cr
  %i.ct = sext i32 %i.cs to i64
  br i1 %i.cq, label %Abc_TtHasVar.exit.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.cu = shl nuw i32 1, %i.cr                    ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.cz, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.cv
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !72
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cy = load i64, ptr %gep.i, align 8, !tbaa !72
  %.not.us.i = icmp eq i64 %i.cx, %i.cy
  br i1 %.not.us.i, label %bb.d, label %Abc_TtHasVar.exit.thread36.loopexit

._crit_edge.us.i:                                 ; preds = %bb.d
  %i.cz = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.ct ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.g
  br i1 %i.da, label %.preheader.us.i, label %Abc_TtHasVar.exit.thread, !llvm.loop !8

Abc_TtHasVar.exit.thread36.loopexit:              ; preds = %bb.e
  %.pre = trunc nuw nsw i64 %indvars.iv to i32
  %.pre109 = shl nuw i32 1, %.pre
  br label %Abc_TtHasVar.exit.thread36

Abc_TtHasVar.exit.thread36:                       ; preds = %bb.c, %Abc_TtHasVar.exit.thread36.loopexit
  %.pre-phi110 = phi i32 [ %.pre109, %Abc_TtHasVar.exit.thread36.loopexit ], [ %i.cg, %bb.c ]
  %i.db = or i32 %.047, %.pre-phi110
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Abc_TtHasVar.exit.thread36
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !60
  %i.de = sext i32 %.02346 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %1, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Abc_TtHasVar.exit.thread36
  %i.dg = add nsw i32 %.02346, 1
  br label %Abc_TtHasVar.exit.thread

Abc_TtHasVar.exit.thread:                         ; preds = %._crit_edge.us.i, %bb.b, %.preheader.lr.ph.i, %bb.g
  %.124 = phi i32 [ %i.dg, %bb.g ], [ %.02346, %bb.b ], [ %.02346, %.preheader.lr.ph.i ], [ %.02346, %._crit_edge.us.i ] ; 2 uses
  %.1 = phi i32 [ %i.db, %bb.g ], [ %.047, %bb.b ], [ %.047, %.preheader.lr.ph.i ], [ %.047, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !288

._crit_edge.thread:                               ; preds = %bb.a, %.lr.ph.split
  store i32 0, ptr %3, align 4, !tbaa !60
  br label %Abc_TtShrink.exit

._crit_edge:                                      ; preds = %Abc_TtHasVar.exit.thread, %Abc_TtHasVar.exit.us, %Abc_TtHasVar.exit.thread.us.1, %Abc_TtHasVar.exit.thread.us.2, %Abc_TtHasVar.exit.thread.us.3, %Abc_TtHasVar.exit.thread.us.4, %Abc_TtHasVar.exit.thread36.us.5, %Abc_TtHasVar.exit.us.5, %Abc_TtHasVar.exit.us.us, %Abc_TtHasVar.exit.us.us.1, %Abc_TtHasVar.exit.us.us.2, %Abc_TtHasVar.exit.us.us.3, %Abc_TtHasVar.exit.us.us.4, %Abc_TtHasVar.exit.us.us.5
  %.023.lcssa = phi i32 [ %.124.us.4, %Abc_TtHasVar.exit.us.5 ], [ %.124.us.us.5, %Abc_TtHasVar.exit.us.us.5 ], [ %i.l, %Abc_TtHasVar.exit.us.us ], [ %.124.us.us.1, %Abc_TtHasVar.exit.us.us.1 ], [ %.124.us.us.2, %Abc_TtHasVar.exit.us.us.2 ], [ %.124.us.us.3, %Abc_TtHasVar.exit.us.us.3 ], [ %.124.us.us.4, %Abc_TtHasVar.exit.us.us.4 ], [ %spec.select, %Abc_TtHasVar.exit.us ], [ %.124.us.1, %Abc_TtHasVar.exit.thread.us.1 ], [ %.124.us.2, %Abc_TtHasVar.exit.thread.us.2 ], [ %.124.us.3, %Abc_TtHasVar.exit.thread.us.3 ], [ %.124.us.4, %Abc_TtHasVar.exit.thread.us.4 ], [ %i.cd, %Abc_TtHasVar.exit.thread36.us.5 ], [ %.124, %Abc_TtHasVar.exit.thread ]
  %.0.lcssa = phi i32 [ %.1.us.4, %Abc_TtHasVar.exit.us.5 ], [ %.1.us.us.5, %Abc_TtHasVar.exit.us.us.5 ], [ %i.m, %Abc_TtHasVar.exit.us.us ], [ %.1.us.us.1, %Abc_TtHasVar.exit.us.us.1 ], [ %.1.us.us.2, %Abc_TtHasVar.exit.us.us.2 ], [ %.1.us.us.3, %Abc_TtHasVar.exit.us.us.3 ], [ %.1.us.us.4, %Abc_TtHasVar.exit.us.us.4 ], [ %spec.select, %Abc_TtHasVar.exit.us ], [ %.1.us.1, %Abc_TtHasVar.exit.thread.us.1 ], [ %.1.us.2, %Abc_TtHasVar.exit.thread.us.2 ], [ %.1.us.3, %Abc_TtHasVar.exit.thread.us.3 ], [ %.1.us.4, %Abc_TtHasVar.exit.thread.us.4 ], [ %i.by, %Abc_TtHasVar.exit.thread36.us.5 ], [ %.1, %Abc_TtHasVar.exit.thread ] ; 4 uses
  store i32 %.023.lcssa, ptr %3, align 4, !tbaa !60
  %i.dh = icmp eq i32 %.0.lcssa, 0
  br i1 %i.dh, label %Abc_TtShrink.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.di = add nsw i32 %.0.lcssa, 1
  %i.dj = and i32 %i.di, %.0.lcssa
  %.not.not = icmp eq i32 %i.dj, 0
  br i1 %.not.not, label %Abc_TtShrink.exit, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %bb.h
  %i.dk = icmp samesign ult i32 %2, 7
  %i.dl = add nsw i32 %2, -6
  %i.dm = shl nuw i32 1, %i.dl
  %.fr.i = freeze i32 %i.dm
  %i.dn = select i1 %i.dk, i32 1, i32 %.fr.i      ; 4 uses
  %i.do = sext i32 %i.dn to i64
  %.idx65.i.i.a = shl nsw i64 %i.do, 3            ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %0, i64 %.idx65.i.i.a ; 2 uses
  %i.dq = icmp sgt i32 %i.dn, 0
  %wide.trip.count73.i.i = zext i32 %i.dn to i64  ; 3 uses
  br i1 %i.dq, label %.lr.ph61.split.us.split.us.preheader.i, label %Abc_TtShrink.exit

.lr.ph61.split.us.split.us.preheader.i:           ; preds = %.lr.ph61.i
  %wide.trip.count106.i = zext nneg i32 %2 to i64
  %i.dr = add i64 %.idx65.i.i.a, %i.a
  %min.iters.check = icmp ult i32 %i.dn, 4
  %n.vec = and i64 %wide.trip.count73.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i.i
  br label %.lr.ph61.split.us.split.us.i

.lr.ph61.split.us.split.us.i:                     ; preds = %bb.j, %.lr.ph61.split.us.split.us.preheader.i
  %indvars.iv100.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.i ], [ %indvars.iv.next101.i, %bb.j ] ; 3 uses
  %.056.us.us.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader.i ], [ %.1.us.us.i, %bb.j ] ; 4 uses
  %indvars105.i = trunc i64 %indvars.iv100.i to i32 ; 2 uses
  %i.ds = shl nuw i32 1, %indvars105.i
  %i.dt = and i32 %i.ds, %.0.lcssa
  %.not.us.us.i = icmp eq i32 %i.dt, 0
  br i1 %.not.us.us.i, label %bb.j, label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.lr.ph61.split.us.split.us.i
  %.not15.not18.us.us.i = icmp slt i32 %.056.us.us.i, %indvars105.i
  br i1 %.not15.not18.us.us.i, label %.lr.ph.us.us.preheader.i, label %._crit_edge.split.us.us.split.us.us.i

.lr.ph.us.us.preheader.i:                         ; preds = %.preheader.us.us.i
  %i.du = sext i32 %.056.us.us.i to i64
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv102.i = phi i64 [ %indvars.iv100.i, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next103.i, %Abc_TtSwapAdjacent.exit.us.us.us.us.i ] ; 4 uses
  %indvars.iv.next103.i = add nsw i64 %indvars.iv102.i, -1 ; 5 uses
  %i.dv = icmp slt i64 %indvars.iv102.i, 6
  br i1 %i.dv, label %.lr.ph64.i.us.us.us.us.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.us.us.i
  %i.dw = icmp eq i64 %indvars.iv.next103.i, 5
  br i1 %i.dw, label %.lr.ph.i.us.us.us.us.i, label %.preheader.lr.ph.i.us.us.us.us.i

.preheader.lr.ph.i.us.us.us.us.i:                 ; preds = %bb.i
  %i.dx = icmp samesign ult i64 %indvars.iv102.i, 8
  %i.dy = trunc i64 %indvars.iv102.i to i32
  %i.dz = add i32 %i.dy, -7
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = select i1 %i.dx, i32 1, i32 %i.ea       ; 7 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  %i.ed = shl i32 %i.eb, 2                        ; 2 uses
  %i.ee = sext i32 %i.ed to i64                   ; 3 uses
  br i1 %i.ec, label %.preheader.us.preheader.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i

.preheader.us.preheader.i.us.us.us.us.i:          ; preds = %.preheader.lr.ph.i.us.us.us.us.i
  %i.ef = shl nuw nsw i32 %i.eb, 1
  %i.eg = zext nneg i32 %i.eb to i64              ; 6 uses
  %i.eh = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.ei = shl nsw i64 %i.ee, 3                    ; 4 uses
  %i.ej = add i64 %i.ei, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.ej)
  %i.ek = sub i64 %umax, %i.a                     ; 2 uses
  %i.el = icmp ne i64 %i.ek, %i.ei
  %umin = zext i1 %i.el to i64                    ; 2 uses
  %i.em = or disjoint i64 %i.ei, %umin
  %i.en = sub i64 %i.ek, %i.em
  %umax18 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.eo = udiv i64 %i.en, %umax18
  %i.ep = add i64 %i.eo, %umin
  %i.eq = shl i64 %i.ep, 3
  %i.er = mul i64 %i.eq, %i.ee                    ; 2 uses
  %i.es = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %i.et = shl nuw nsw i64 %i.eh, 3                ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.er
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.es
  %scevgep = getelementptr i8, ptr %i.ev, i64 %i.et
  %scevgep19 = getelementptr i8, ptr %0, i64 %i.et
  %i.ew = shl nuw nsw i64 %i.eg, 4
  %i.ex = getelementptr i8, ptr %0, i64 %i.er
  %scevgep20 = getelementptr i8, ptr %i.ex, i64 %i.ew
  %scevgep21 = getelementptr i8, ptr %0, i64 %i.es
  %min.iters.check23 = icmp ult i32 %i.eb, 4
  %bound0 = icmp ult ptr %scevgep21, %scevgep
  %bound1 = icmp ult ptr %scevgep19, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ed, 0
  %i.ey = or i1 %found.conflict, %stride.check
  %n.vec25 = and i64 %i.eg, 2147483644
  %xtraiter = and i64 %i.eg, 1
  %i.ez = icmp eq i32 %i.eb, 1
  %unroll_iter = and i64 %i.eg, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod43 = trunc i32 %i.eb to i1
  br label %.preheader.us.i.us.us.us.us.i

.preheader.us.i.us.us.us.us.i:                    ; preds = %._crit_edge.us.i.us.us.us.us.i, %.preheader.us.preheader.i.us.us.us.us.i
  %.061.us.i.us.us.us.us.i = phi ptr [ %i.fl, %._crit_edge.us.i.us.us.us.us.i ], [ %0, %.preheader.us.preheader.i.us.us.us.us.i ] ; 3 uses
  %invariant.gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.eg ; 4 uses
  %invariant.gep80.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.eh ; 4 uses
  %brmerge = select i1 %min.iters.check23, i1 true, i1 %i.ey
  br i1 %brmerge, label %scalar.ph22.preheader, label %vector.body26

scalar.ph22.preheader:                            ; preds = %.preheader.us.i.us.us.us.us.i
  br i1 %i.ez, label %scalar.ph22.epil.preheader, label %scalar.ph22

vector.body26:                                    ; preds = %.preheader.us.i.us.us.us.us.i, %vector.body26
  %index27 = phi i64 [ %index.next32, %vector.body26 ], [ 0, %.preheader.us.i.us.us.us.us.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %index27 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load28 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  %wide.load29 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %index27 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load30 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !72, !alias.scope !299
  %wide.load31 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !72, !alias.scope !299
  store <2 x i64> %wide.load30, ptr %i.fa, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  store <2 x i64> %wide.load31, ptr %i.fb, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  store <2 x i64> %wide.load28, ptr %i.fc, align 8, !tbaa !72, !alias.scope !299
  store <2 x i64> %wide.load29, ptr %i.fd, align 8, !tbaa !72, !alias.scope !299
  %index.next32 = add nuw i64 %index27, 4         ; 2 uses
  %i.fe = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.fe, label %._crit_edge.us.i.us.us.us.us.i, label %vector.body26, !llvm.loop !292

scalar.ph22:                                      ; preds = %scalar.ph22.preheader, %scalar.ph22
  %indvars.iv.i.us.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.1, %scalar.ph22 ], [ 0, %scalar.ph22.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph22 ], [ 0, %scalar.ph22.preheader ]
  %gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.ff = load i64, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !72
  %gep81.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fg = load i64, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !72
  store i64 %i.fg, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !72
  store i64 %i.ff, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.fh = load i64, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !72
  %gep81.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.fi = load i64, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !72
  store i64 %i.fi, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !72
  store i64 %i.fh, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, label %scalar.ph22, !llvm.loop !293

._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %scalar.ph22
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i, label %scalar.ph22.epil.preheader

scalar.ph22.epil.preheader:                       ; preds = %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, %scalar.ph22.preheader
  %indvars.iv.i.us.us.us.us.i.epil.init = phi i64 [ 0, %scalar.ph22.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.1, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %gep.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.fj = load i64, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !72
  %gep81.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.fk = load i64, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !72
  store i64 %i.fk, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !72
  store i64 %i.fj, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !72
  br label %._crit_edge.us.i.us.us.us.us.i

._crit_edge.us.i.us.us.us.us.i:                   ; preds = %vector.body26, %scalar.ph22.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ee ; 2 uses
  %i.fm = icmp ult ptr %i.fl, %i.dp
  br i1 %i.fm, label %.preheader.us.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !11

.lr.ph.i.us.us.us.us.i:                           ; preds = %bb.i, %.lr.ph.i.us.us.us.us.i
  %.05462.i.us.us.us.us.i = phi ptr [ %i.fq, %.lr.ph.i.us.us.us.us.i ], [ %0, %bb.i ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 4 ; 2 uses
  %i.fo = load <2 x i32>, ptr %i.fn, align 4, !tbaa !60
  %i.fp = shufflevector <2 x i32> %i.fo, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.fp, ptr %i.fn, align 4, !tbaa !60
  %i.fq = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 16 ; 2 uses
  %i.fr = icmp ult ptr %i.fq, %i.dp
  br i1 %i.fr, label %.lr.ph.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !12

.lr.ph64.i.us.us.us.us.i:                         ; preds = %.lr.ph.us.us.i
  %i.fs = trunc nsw i64 %indvars.iv.next103.i to i32
  %i.ft = shl nuw nsw i32 1, %i.fs
  %i.fu = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next103.i ; 3 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !72 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !72 ; 2 uses
  %i.fy = zext nneg i32 %i.ft to i64              ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !72 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert7 = insertelement <2 x i64> poison, i64 %i.fx, i64 0
  %broadcast.splat8 = shufflevector <2 x i64> %broadcast.splatinsert7, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert9 = insertelement <2 x i64> poison, i64 %i.fy, i64 0
  %broadcast.splat10 = shufflevector <2 x i64> %broadcast.splatinsert9, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.gb, align 8, !tbaa !72 ; 3 uses
  %wide.load13 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !72 ; 3 uses
  %i.gd = and <2 x i64> %wide.load, %broadcast.splat
  %i.ge = and <2 x i64> %wide.load13, %broadcast.splat
  %i.gf = and <2 x i64> %wide.load, %broadcast.splat8
  %i.gg = and <2 x i64> %wide.load13, %broadcast.splat8
  %i.gh = shl <2 x i64> %i.gf, %broadcast.splat10
  %i.gi = shl <2 x i64> %i.gg, %broadcast.splat10
  %i.gj = or <2 x i64> %i.gh, %i.gd
  %i.gk = or <2 x i64> %i.gi, %i.ge
  %i.gl = and <2 x i64> %wide.load, %broadcast.splat12
  %i.gm = and <2 x i64> %wide.load13, %broadcast.splat12
  %i.gn = lshr <2 x i64> %i.gl, %broadcast.splat10
  %i.go = lshr <2 x i64> %i.gm, %broadcast.splat10
  %i.gp = or <2 x i64> %i.gj, %i.gn
  %i.gq = or <2 x i64> %i.gk, %i.go
  store <2 x i64> %i.gp, ptr %i.gb, align 8, !tbaa !72
  store <2 x i64> %i.gq, ptr %i.gc, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us.i, %middle.block
  %indvars.iv70.i.us.us.us.us.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us.us.us.us.i ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !72 ; 3 uses
  %i.gu = and i64 %i.gt, %i.fv
  %i.gv = and i64 %i.gt, %i.fx
  %i.gw = shl i64 %i.gv, %i.fy
  %i.gx = or i64 %i.gw, %i.gu
  %i.gy = and i64 %i.gt, %i.ga
  %i.gz = lshr i64 %i.gy, %i.fy
  %i.ha = or i64 %i.gx, %i.gz
  store i64 %i.ha, ptr %i.gs, align 8, !tbaa !72
  %indvars.iv.next71.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph, !llvm.loop !295

Abc_TtSwapAdjacent.exit.us.us.us.us.i:            ; preds = %._crit_edge.us.i.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i, %scalar.ph, %middle.block, %.preheader.lr.ph.i.us.us.us.us.i
  %.not15.not.us.us.us.us.i = icmp sgt i64 %indvars.iv.next103.i, %i.du
  br i1 %.not15.not.us.us.us.us.i, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.split.us.us.i, !llvm.loop !296

._crit_edge.split.us.us.split.us.us.i:            ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.preheader.us.us.i
  %i.hb = add nsw i32 %.056.us.us.i, 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.split.us.us.split.us.us.i, %.lr.ph61.split.us.split.us.i
  %.1.us.us.i = phi i32 [ %i.hb, %._crit_edge.split.us.us.split.us.us.i ], [ %.056.us.us.i, %.lr.ph61.split.us.split.us.i ]
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond107.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count106.i
  br i1 %exitcond107.not.i, label %Abc_TtShrink.exit, label %.lr.ph61.split.us.split.us.i, !llvm.loop !297

Abc_TtShrink.exit:                                ; preds = %bb.j, %bb.h, %._crit_edge.thread, %.lr.ph61.i, %._crit_edge
  ret void
}

declare void @Abc_BSEvalFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkLutCascadeGen(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %1, %0
  %i.b = add nsw i32 %1, -1
  %i.c = add nsw i32 %3, %2
  %i.d = mul nsw i32 %i.c, %i.b
  %i.e = sub nsw i32 %i.a, %i.d                   ; 9 uses
  %i.f = tail call ptr @Abc_LutCascadeGen(i32 noundef %i.e, i32 noundef %0, i32 noundef %2, i32 noundef %3) ; 10 uses
  %i.g = tail call ptr @Abc_NtkLutCascadeFromLuts(ptr noundef %i.f, i32 noundef %i.e, ptr noundef null, i32 poison, i32 poison)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = trunc i64 %i.l to i32
  %i.n = load i64, ptr %i.f, align 8, !tbaa !72
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.o) ; 0 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !72
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %Abc_LutCascadePrint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.015.i = phi i32 [ %i.w, %.lr.ph.i ], [ 1, %bb.a ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @Abc_LutCascadePrintLut(ptr noundef nonnull readonly %i.f, i32 noundef %i.r, i32 noundef %.015.i, i32 noundef %0, i32 noundef %i.m)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = sext i32 %.015.i to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %.015.i, %i.v
  %i.x = load i64, ptr %i.f, align 8, !tbaa !72
  %i.y = icmp ugt i64 %i.x, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph.i, label %Abc_LutCascadePrint.exit, !llvm.loop !4

Abc_LutCascadePrint.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %Abc_LutCascadePrint.exit
  %i.z = tail call ptr @Abc_LutCascadeTruth(ptr noundef nonnull %i.f, i32 noundef %i.e) ; 5 uses
  %i.aa = icmp slt i32 %i.e, 11
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !62 ; 2 uses
  %i.ad = icmp slt i32 %i.e, 2
  br i1 %i.ad, label %bb.d, label %.lr.ph.i29

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !72
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 15                       ; 3 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  %i.ai = or disjoint i32 %i.ag, 48
  %i.aj = add nuw nsw i32 %i.ag, 55
  %.0.i.i = select i1 %i.ah, i32 %i.ai, i32 %i.aj
  %fputc17.i = tail call i32 @fputc(i32 %.0.i.i, ptr %i.ac) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

.lr.ph.i29:                                       ; preds = %bb.c
  %i.ak = add nsw i32 %i.e, -2
  %i.al = icmp samesign ugt i32 %i.e, 5
  %i.am = icmp samesign ult i32 %i.e, 7
  %i.an = add nsw i32 %i.e, -6
  %i.ao = shl nuw nsw i32 1, %i.an
  %i.ap = select i1 %i.am, i32 1, i32 %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %.idx.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr i8, ptr %i.z, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.ar, i64 -8
  %notmask.i = shl nsw i32 -1, %i.ak
  %i.as = xor i32 %notmask.i, -1
  %i.at = select i1 %i.al, i32 15, i32 %i.as
  %i.au = zext nneg i32 %i.at to i64
  br label %bb.e

.loopexit.i:                                      ; preds = %bb.f
  %.015.i32 = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i33 = icmp ult ptr %.015.i32, %i.z
  br i1 %.not.i33, label %Abc_TtPrintHexRev.exit, label %bb.e, !llvm.loop !2

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph.i29
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i29 ], [ %.015.i32, %.loopexit.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i30 = phi i64 [ %i.au, %bb.e ], [ %indvars.iv.next.i31, %bb.f ] ; 3 uses
  %i.av = load i64, ptr %.01523.i, align 8, !tbaa !72
  %i.aw = shl nsw i64 %indvars.iv.i30, 2
  %i.ax = and i64 %i.aw, 4294967292
  %i.ay = lshr i64 %i.av, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 15                       ; 3 uses
  %i.bb = icmp samesign ult i32 %i.ba, 10
  %i.bc = or disjoint i32 %i.ba, 48
  %i.bd = add nuw nsw i32 %i.ba, 55
  %.0.i18.i = select i1 %i.bb, i32 %i.bc, i32 %i.bd
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.ac) ; 0 uses
  %indvars.iv.next.i31 = add nsw i64 %indvars.iv.i30, -1
  %i.be = icmp sgt i64 %indvars.iv.i30, 0
  br i1 %i.be, label %bb.f, label %.loopexit.i, !llvm.loop !3
end_hunk_3
