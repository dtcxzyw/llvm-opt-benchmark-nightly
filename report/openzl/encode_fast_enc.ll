Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_fast_enc?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZS_fastEncoder_compress:bb.a

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  call void @abort() #15
  unreachable

bb.k:                                             ; preds = %encodeLiterals.exit
  %.not145.i = icmp eq ptr %i.az, null
  br i1 %.not145.i, label %bb.l, label %.preheader.i, !prof !56

.preheader.i:                                     ; preds = %bb.k
  %.not292.i = icmp eq i64 %i.q, 0
  br i1 %.not292.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %.thread213.i

bb.m:                                             ; preds = %bb.l
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 226, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null) #14
  %.pr212.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.bj = icmp sgt i32 %.pr212.i, 0
  br i1 %i.bj, label %bb.n, label %.thread213.i

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 226, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %.thread213.i

.thread213.i:                                     ; preds = %bb.n, %bb.m, %bb.l
  call void @abort() #15
  unreachable

bb.o:                                             ; preds = %bb.ax, %.lr.ph.i
  %.0134291.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ev, %bb.ax ] ; 3 uses
  %.0135290.i = phi i64 [ 0, %.lr.ph.i ], [ %.2137.i, %bb.ax ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.0134291.i ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !58
  switch i32 %i.bm, label %bb.u [
    i32 2, label %bb.x
    i32 0, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !59 ; 5 uses
  %i.bp = icmp ult i32 %i.bo, 256
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = trunc nuw i32 %i.bo to i8
  %i.br = add i64 %.0135290.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0135290.i
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !60
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.bt = icmp ult i32 %i.bo, 65536
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0135290.i ; 2 uses
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = trunc nuw i32 %i.bo to i16
  store i16 %i.bv, ptr %i.bu, align 1
  %i.bw = add i64 %.0135290.i, 2
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  store i32 %i.bo, ptr %i.bu, align 1
  %i.bx = add i64 %.0135290.i, 3
  br label %bb.x

bb.u:                                             ; preds = %bb.o
  %i.by = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.v, label %.thread215.i

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 279, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11) #14
  %.pr214.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.ca = icmp sgt i32 %.pr214.i, 0
  br i1 %i.ca, label %bb.w, label %.thread215.i

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 279, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18) #14
  br label %.thread215.i

.thread215.i:                                     ; preds = %bb.w, %bb.v, %bb.u
  call void @abort() #15
  unreachable

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.2137.i = phi i64 [ %.0135290.i, %bb.o ], [ %i.br, %bb.q ], [ %i.bw, %bb.s ], [ %i.bx, %bb.t ] ; 2 uses
  %.1130.i = phi i16 [ 0, %bb.o ], [ 1, %bb.q ], [ 2, %bb.s ], [ 3, %bb.t ] ; 3 uses
  %i.cb = load i32, ptr %i.bk, align 4, !tbaa !61 ; 5 uses
  %i.cc = icmp ult i32 %i.cb, 16
  br i1 %i.cc, label %bb.y, label %.critedge.i, !prof !54

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !62 ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 32
  br i1 %i.cf, label %bb.z, label %.critedge.i, !prof !54

bb.z:                                             ; preds = %bb.y
  %.tr.i = trunc nuw nsw i32 %i.cb to i16
  %i.cg = shl nuw nsw i16 %.tr.i, 2
  %.tr149.i = trunc nuw nsw i32 %i.ce to i16
  %i.ch = shl nuw nsw i16 %.tr149.i, 6
  %i.ci = or disjoint i16 %i.ch, %i.cg
  %i.cj = or disjoint i16 %i.ci, %.1130.i
  br label %bb.ax

.critedge.i:                                      ; preds = %bb.y, %bb.x
  %i.ck = call i32 @llvm.umin.i32(i32 %i.cb, i32 255)
  %i.cl = trunc nuw i32 %i.ck to i8
  %i.cm = call fastcc zeroext i1 @GenericVector_pushBack(ptr noundef %5, i8 %i.cl)
  br i1 %i.cm, label %bb.aa, label %.thread225.i

bb.aa:                                            ; preds = %.critedge.i
  %i.cn = icmp ult i32 %i.cb, 255
  br i1 %i.cn, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = add i32 %i.cb, -255
  %.promoted.i = load i32, ptr %5, align 8, !tbaa !17
  %.promoted271.i = load i32, ptr %i.be, align 4, !tbaa !18
  %.val27.i.i.i = load i32, ptr %i.ba, align 8
  %i.cp = zext i32 %.val27.i.i.i to i64           ; 3 uses
  %i.cq = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  %.promoted275.i = load ptr, ptr %i.bg, align 8
  %i.cr = zext i32 %.promoted.i to i64
  br label %bb.ac

bb.ac:                                            ; preds = %GenericVector_resize.exit.i, %bb.ab
  %.0.i28.i.i277.i = phi ptr [ %.promoted275.i, %bb.ab ], [ %.0.i28.i.i276.i, %GenericVector_resize.exit.i ] ; 4 uses
  %i.cs = phi i32 [ %.promoted271.i, %bb.ab ], [ %i.di, %GenericVector_resize.exit.i ] ; 5 uses
  %i.ct = phi i64 [ %i.cr, %bb.ab ], [ %i.cv, %GenericVector_resize.exit.i ] ; 2 uses
  %.0127.i = phi i32 [ %i.co, %bb.ab ], [ %i.dm, %GenericVector_resize.exit.i ] ; 3 uses
  %i.cu = call i32 @llvm.umin.i32(i32 %.0127.i, i32 65535) ; 2 uses
  %i.cv = add nuw nsw i64 %i.ct, 2                ; 5 uses
  %i.cw = zext i32 %i.cs to i64                   ; 4 uses
  %.not.i.i.i = icmp samesign ugt i64 %i.cv, %i.cw
  br i1 %.not.i.i.i, label %bb.ad, label %GenericVector_resize.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.cx = icmp samesign ugt i64 %i.cv, %i.cp
  br i1 %i.cx, label %.thread225.loopexit259.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = icmp eq i32 %i.cs, 0
  br i1 %i.cy, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = icmp ugt i32 %i.cs, 511
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.da = lshr i64 %i.cw, 2
  %i.db = add nuw nsw i64 %i.da, %i.cw
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dc = shl nuw nsw i32 %i.cs, 1
  %i.dd = zext nneg i32 %i.dc to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i.i.i.i = phi i64 [ %i.dd, %bb.ah ], [ %i.db, %bb.ag ], [ 4, %bb.ae ] ; 2 uses
  %i.de = icmp samesign ult i64 %.0.i.i.i.i, %i.cw
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.0.i.i.i.i, i64 %i.cp)
  %.010.i.i.i.i = select i1 %i.de, i64 %i.cp, i64 %spec.select.i.i.i.i
  %spec.select.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 2, 4294967298) %i.cv, i64 %.010.i.i.i.i) ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.cq, ptr noundef %.0.i28.i.i277.i, i64 noundef %spec.select.i.i.i) #14
  br label %GenericVector_reallocData.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dg = call ptr @ZL_realloc(ptr noundef %.0.i28.i.i277.i, i64 noundef %spec.select.i.i.i) #14
  br label %GenericVector_reallocData.exit.i.i.i

GenericVector_reallocData.exit.i.i.i:             ; preds = %bb.ak, %bb.aj
  %.0.i28.i.i.i = phi ptr [ %i.df, %bb.aj ], [ %i.dg, %bb.ak ] ; 2 uses
  %.not26.i.i.i = icmp eq ptr %.0.i28.i.i.i, null
  br i1 %.not26.i.i.i, label %.thread225.loopexit259.i, label %GenericVector_reserve.exit.thread.i.i

GenericVector_reserve.exit.thread.i.i:            ; preds = %GenericVector_reallocData.exit.i.i.i
  %i.dh = trunc nuw i64 %spec.select.i.i.i to i32
  br label %GenericVector_resize.exit.i

GenericVector_resize.exit.i:                      ; preds = %GenericVector_reserve.exit.thread.i.i, %bb.ac
  %.0.i28.i.i276.i = phi ptr [ %.0.i28.i.i277.i, %bb.ac ], [ %.0.i28.i.i.i, %GenericVector_reserve.exit.thread.i.i ] ; 3 uses
  %i.di = phi i32 [ %i.cs, %bb.ac ], [ %i.dh, %GenericVector_reserve.exit.thread.i.i ] ; 2 uses
  %i.dj = icmp ult i32 %.0127.i, 65535
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i28.i.i276.i, i64 %i.ct
  %i.dl = trunc nuw i32 %i.cu to i16
  store i16 %i.dl, ptr %i.dk, align 1
  %i.dm = sub nuw i32 %.0127.i, %i.cu
  br i1 %i.dj, label %.loopexit260.i, label %bb.ac

.loopexit260.i:                                   ; preds = %GenericVector_resize.exit.i
  %i.dn = trunc nuw i64 %i.cv to i32
  store ptr %.0.i28.i.i276.i, ptr %i.bg, align 8
  store i32 %i.dn, ptr %5, align 8
  store i32 %i.di, ptr %i.be, align 4
  br label %bb.al

bb.al:                                            ; preds = %.loopexit260.i, %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !62 ; 3 uses
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 255)
  %i.dr = trunc nuw i32 %i.dq to i8
  %i.ds = call fastcc zeroext i1 @GenericVector_pushBack(ptr noundef %5, i8 %i.dr)
  br i1 %i.ds, label %bb.am, label %.thread225.i

bb.am:                                            ; preds = %bb.al
  %i.dt = icmp ult i32 %i.dp, 255
  br i1 %i.dt, label %bb.ax, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = add i32 %i.dp, -255
  %.promoted279.i = load i32, ptr %5, align 8, !tbaa !17
  %.promoted282.i = load i32, ptr %i.be, align 4, !tbaa !18
  %.val27.i.i185.i = load i32, ptr %i.ba, align 8
  %i.dv = zext i32 %.val27.i.i185.i to i64        ; 3 uses
  %i.dw = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i.i190.i = icmp eq ptr %i.dw, null
  %.promoted286.i = load ptr, ptr %i.bg, align 8
  %i.dx = zext i32 %.promoted279.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %GenericVector_resize.exit200.i, %bb.an
  %.0.i28.i.i192288.i = phi ptr [ %.promoted286.i, %bb.an ], [ %.0.i28.i.i192287.i, %GenericVector_resize.exit200.i ] ; 4 uses
  %i.dy = phi i32 [ %.promoted282.i, %bb.an ], [ %i.eo, %GenericVector_resize.exit200.i ] ; 5 uses
  %i.dz = phi i64 [ %i.dx, %bb.an ], [ %i.eb, %GenericVector_resize.exit200.i ] ; 2 uses
  %.0126.i = phi i32 [ %i.du, %bb.an ], [ %i.es, %GenericVector_resize.exit200.i ] ; 3 uses
  %i.ea = call i32 @llvm.umin.i32(i32 %.0126.i, i32 65535) ; 2 uses
  %i.eb = add nuw nsw i64 %i.dz, 2                ; 5 uses
  %i.ec = zext i32 %i.dy to i64                   ; 4 uses
  %.not.i.i183.i = icmp samesign ugt i64 %i.eb, %i.ec
  br i1 %.not.i.i183.i, label %bb.ap, label %GenericVector_resize.exit200.i

bb.ap:                                            ; preds = %bb.ao
  %i.ed = icmp samesign ugt i64 %i.eb, %i.dv
  br i1 %i.ed, label %.thread225.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ee = icmp eq i32 %i.dy, 0
  br i1 %i.ee, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = icmp ugt i32 %i.dy, 511
  br i1 %i.ef, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eg = lshr i64 %i.ec, 2
  %i.eh = add nuw nsw i64 %i.eg, %i.ec
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ei = shl nuw nsw i32 %i.dy, 1
  %i.ej = zext nneg i32 %i.ei to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %.0.i.i.i186.i = phi i64 [ %i.ej, %bb.at ], [ %i.eh, %bb.as ], [ 4, %bb.aq ] ; 2 uses
  %i.ek = icmp samesign ult i64 %.0.i.i.i186.i, %i.ec
  %spec.select.i.i.i187.i = call i64 @llvm.umin.i64(i64 %.0.i.i.i186.i, i64 %i.dv)
  %.010.i.i.i188.i = select i1 %i.ek, i64 %i.dv, i64 %spec.select.i.i.i187.i
  %spec.select.i.i189.i = call i64 @llvm.umax.i64(i64 range(i64 2, 4294967298) %i.eb, i64 %.010.i.i.i188.i) ; 3 uses
  br i1 %.not.i.i.i190.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.el = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.dw, ptr noundef %.0.i28.i.i192288.i, i64 noundef %spec.select.i.i189.i) #14
  br label %GenericVector_reallocData.exit.i.i191.i

bb.aw:                                            ; preds = %bb.au
  %i.em = call ptr @ZL_realloc(ptr noundef %.0.i28.i.i192288.i, i64 noundef %spec.select.i.i189.i) #14
  br label %GenericVector_reallocData.exit.i.i191.i

GenericVector_reallocData.exit.i.i191.i:          ; preds = %bb.aw, %bb.av
  %.0.i28.i.i192.i = phi ptr [ %i.el, %bb.av ], [ %i.em, %bb.aw ] ; 2 uses
  %.not26.i.i193.i = icmp eq ptr %.0.i28.i.i192.i, null
  br i1 %.not26.i.i193.i, label %.thread225.loopexit.i, label %GenericVector_reserve.exit.thread.i194.i

GenericVector_reserve.exit.thread.i194.i:         ; preds = %GenericVector_reallocData.exit.i.i191.i
  %i.en = trunc nuw i64 %spec.select.i.i189.i to i32
  br label %GenericVector_resize.exit200.i

GenericVector_resize.exit200.i:                   ; preds = %GenericVector_reserve.exit.thread.i194.i, %bb.ao
  %.0.i28.i.i192287.i = phi ptr [ %.0.i28.i.i192288.i, %bb.ao ], [ %.0.i28.i.i192.i, %GenericVector_reserve.exit.thread.i194.i ] ; 3 uses
  %i.eo = phi i32 [ %i.dy, %bb.ao ], [ %i.en, %GenericVector_reserve.exit.thread.i194.i ] ; 2 uses
  %i.ep = icmp ult i32 %.0126.i, 65535
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i28.i.i192287.i, i64 %i.dz
  %i.er = trunc nuw i32 %i.ea to i16
  store i16 %i.er, ptr %i.eq, align 1
  %i.es = sub nuw i32 %.0126.i, %i.ea
  br i1 %i.ep, label %.loopexit.i, label %bb.ao

.loopexit.i:                                      ; preds = %GenericVector_resize.exit200.i
  %i.et = trunc nuw i64 %i.eb to i32
  store ptr %.0.i28.i.i192287.i, ptr %i.bg, align 8
  store i32 %i.et, ptr %5, align 8
  store i32 %i.eo, ptr %i.be, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.i, %bb.am, %bb.z
  %.2.i = phi i16 [ %i.cj, %bb.z ], [ %.1130.i, %bb.am ], [ %.1130.i, %.loopexit.i ]
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %.0134291.i
  store i16 %.2.i, ptr %i.eu, align 2, !tbaa !64
  %i.ev = add nuw nsw i64 %.0134291.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ev, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.o, !llvm.loop !29

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %.val176.pre.i = load i32, ptr %5, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.val176.i = phi i32 [ 0, %.preheader.i ], [ %.val176.pre.i, %._crit_edge.loopexit.i ] ; 7 uses
  %.0135.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.2137.i, %._crit_edge.loopexit.i ] ; 9 uses
  %i.ew = zext i32 %.val176.i to i64              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i32 61, ptr %4, align 8, !tbaa !48
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.ez, align 8, !tbaa !49
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2048, ptr %i.fa, align 8, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2047, ptr %i.fb, align 8, !tbaa !51
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.fc, align 8, !tbaa !52
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 1, ptr %i.fd, align 4, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.fe, i8 0, i64 19, i1 false)
  %.val25.i.i15 = load ptr, ptr %i.v, align 8, !tbaa !42
  %.val26.i.i16 = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ff = ptrtoint ptr %.val26.i.i16 to i64
  %i.fg = ptrtoint ptr %.val25.i.i15 to i64
  %i.fh = call { i32, i64 } @ZS_Entropy_encode(ptr noundef nonnull %7, ptr noundef nonnull %i.aw, i64 noundef range(i64 0, 4294967296) %i.q, i64 noundef 2, ptr noundef nonnull %4) #14 ; 2 uses
  %i.fi = extractvalue { i32, i64 } %i.fh, 0      ; 2 uses
  %.not1.i.i17 = icmp eq i32 %i.fi, 0
  %i.fj = load i32, ptr @ZL_g_logLevel, align 4   ; 3 uses
  br i1 %.not1.i.i17, label %bb.bb, label %bb.ay, !prof !54

bb.ay:                                            ; preds = %._crit_edge.i
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.az, label %.thread.i.i18

bb.az:                                            ; preds = %bb.ay
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeCodes16, i32 noundef 158, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.5) #14
  %.pr.i.i19 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.fl = icmp sgt i32 %.pr.i.i19, 0
  br i1 %i.fl, label %bb.ba, label %.thread.i.i18

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeCodes16, i32 noundef 158, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %.thread.i.i18

.thread.i.i18:                                    ; preds = %bb.ba, %bb.az, %bb.ay
  %i.fm = extractvalue { i32, i64 } %i.fh, 1
  %i.fn = inttoptr i64 %i.fm to ptr
  call void @ZL_E_log(i32 %i.fi, ptr %i.fn, i32 noundef 1) #14
  call void @abort() #15
  unreachable

bb.bb:                                            ; preds = %._crit_edge.i
  %i.fo = icmp sgt i32 %i.fj, 255
  br i1 %i.fo, label %bb.bc, label %encodeCodes16.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.fp = trunc i64 %i.o to i32
  %.val.i.i20 = load ptr, ptr %i.v, align 8, !tbaa !42
  %.val24.i.i = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.fq = ptrtoint ptr %.val24.i.i to i64
  %i.fr = ptrtoint ptr %.val.i.i20 to i64
  %.neg.i.i = sub i64 %i.ew, %i.fg
  %i.fs = add i64 %.neg.i.i, %i.ff
  %i.ft = add i64 %i.fs, %i.fr
  %i.fu = sub i64 %i.ft, %i.fq
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeCodes16, i32 noundef 165, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19, i32 noundef %i.fp, i64 noundef %i.fu, i64 noundef range(i64 0, 4294967296) %i.ew) #14
  %.pre = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  br label %encodeCodes16.exit.i

encodeCodes16.exit.i:                             ; preds = %bb.bc, %bb.bb
  %i.fv = phi i32 [ %.pre, %bb.bc ], [ %i.fj, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.val166.i = load ptr, ptr %i.v, align 8, !tbaa !42 ; 3 uses
  %.val167.i = load ptr, ptr %i.w, align 8, !tbaa !43 ; 2 uses
  %i.fw = ptrtoint ptr %.val167.i to i64
  %i.fx = ptrtoint ptr %.val166.i to i64          ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %.not150.i = icmp eq ptr %.val167.i, %.val166.i
  br i1 %.not150.i, label %bb.bd, label %bb.bg, !prof !56

bb.bd:                                            ; preds = %encodeCodes16.exit.i
  %i.fz = icmp sgt i32 %i.fv, 0
  br i1 %i.fz, label %bb.be, label %.thread249.i

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 307, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %i.fy, i64 noundef 1) #14
  %.pr248.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.ga = icmp sgt i32 %.pr248.i, 0
  br i1 %i.ga, label %bb.bf, label %.thread249.i

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 307, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %.thread249.i

.thread249.i:                                     ; preds = %bb.bf, %bb.be, %bb.bd
  call void @abort() #15
  unreachable

bb.bg:                                            ; preds = %encodeCodes16.exit.i
  %i.gb = icmp sgt i32 %i.fv, 255
  br i1 %i.gb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gc = trunc i64 %.0135.lcssa.i to i32
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 309, ptr noundef nonnull @.str.24, i32 noundef %i.gc) #14
  %.val164.pre.i = load ptr, ptr %i.v, align 8, !tbaa !42 ; 2 uses
  %.val165.pre.i = load ptr, ptr %i.w, align 8, !tbaa !43
  %.pre317.i = ptrtoint ptr %.val165.pre.i to i64
  %.pre318.i = ptrtoint ptr %.val164.pre.i to i64 ; 2 uses
  %.pre320.i = sub i64 %.pre317.i, %.pre318.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pre-phi321.i = phi i64 [ %.pre320.i, %bb.bh ], [ %i.fy, %bb.bg ] ; 2 uses
  %.pre-phi319.i = phi i64 [ %.pre318.i, %bb.bh ], [ %i.fx, %bb.bg ]
  %.val164.i = phi ptr [ %.val164.pre.i, %bb.bh ], [ %.val166.i, %bb.bg ] ; 2 uses
  %i.gd = or i64 %.0135.lcssa.i, 1
  %i.ge = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.gd, i1 true)
  %i.gf = trunc nuw nsw i64 %i.ge to i8
  %narrow2.i.i = sub nuw nsw i8 70, %i.gf
  %i.gg = udiv i8 %narrow2.i.i, 7
  %i.gh = zext nneg i8 %i.gg to i64               ; 2 uses
  %.not151.i = icmp ult i64 %.pre-phi321.i, %i.gh
  br i1 %.not151.i, label %bb.bj, label %bb.bm, !prof !56

bb.bj:                                            ; preds = %bb.bi
  %i.gi = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %bb.bk, label %.thread251.i

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 310, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, i64 noundef %.pre-phi321.i, i64 noundef %i.gh) #14
  %.pr250.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.gk = icmp sgt i32 %.pr250.i, 0
  br i1 %i.gk, label %bb.bl, label %.thread251.i

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 310, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %.thread251.i

.thread251.i:                                     ; preds = %bb.bl, %bb.bk, %bb.bj
  call void @abort() #15
  unreachable

bb.bm:                                            ; preds = %bb.bi
  %i.gl = icmp ugt i64 %.0135.lcssa.i, 127
  br i1 %i.gl, label %.lr.ph.i.i.i, label %ZL_WC_pushVarint.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.bm, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i ], [ %.val164.i, %bb.bm ] ; 2 uses
  %.089.i.i.i = phi i64 [ %i.gp, %.lr.ph.i.i.i ], [ %.0135.lcssa.i, %bb.bm ] ; 3 uses
  %i.gm = trunc i64 %.089.i.i.i to i8
  %i.gn = or i8 %i.gm, -128
  %i.go = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1 ; 2 uses
  store i8 %i.gn, ptr %.010.i.i.i, align 1, !tbaa !60
  %i.gp = lshr i64 %.089.i.i.i, 7                 ; 2 uses
  %i.gq = icmp ugt i64 %.089.i.i.i, 16383
  br i1 %i.gq, label %.lr.ph.i.i.i, label %ZL_WC_pushVarint.exit.i, !llvm.loop !30

ZL_WC_pushVarint.exit.i:                          ; preds = %.lr.ph.i.i.i, %bb.bm
  %.08.lcssa.i.i.i = phi i64 [ %.0135.lcssa.i, %bb.bm ], [ %i.gp, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %.val164.i, %bb.bm ], [ %i.go, %.lr.ph.i.i.i ] ; 2 uses
  %i.gr = trunc nuw nsw i64 %.08.lcssa.i.i.i to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1
  store i8 %i.gr, ptr %.0.lcssa.i.i.i, align 1, !tbaa !60
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %.pre-phi319.i
  %i.gv = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gu ; 3 uses
  store ptr %i.gw, ptr %i.v, align 8, !tbaa !42
  %.val163.i = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.gx = ptrtoint ptr %.val163.i to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 2 uses
  %.not152.i = icmp ult i64 %i.gz, %.0135.lcssa.i
  br i1 %.not152.i, label %bb.bn, label %bb.bq, !prof !56

bb.bn:                                            ; preds = %ZL_WC_pushVarint.exit.i
  %i.ha = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %bb.bo, label %.thread253.i

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 312, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26, i64 noundef %i.gz, i64 noundef %.0135.lcssa.i) #14
  %.pr252.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.hc = icmp sgt i32 %.pr252.i, 0
  br i1 %i.hc, label %bb.bp, label %.thread253.i

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 312, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %.thread253.i

.thread253.i:                                     ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @abort() #15
  unreachable

bb.bq:                                            ; preds = %ZL_WC_pushVarint.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr nonnull align 1 %i.az, i64 %.0135.lcssa.i, i1 false)
  %i.hd = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.0135.lcssa.i ; 8 uses
  store ptr %i.he, ptr %i.v, align 8, !tbaa !42
  %.val161.i = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.hf = ptrtoint ptr %.val161.i to i64
  %i.hg = ptrtoint ptr %i.he to i64               ; 2 uses
  %i.hh = sub i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = or i64 %i.ew, 1
  %i.hj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.hi, i1 true)
  %i.hk = trunc nuw nsw i64 %i.hj to i8
  %narrow2.i202.i = sub nuw nsw i8 70, %i.hk
  %i.hl = udiv i8 %narrow2.i202.i, 7
  %i.hm = zext nneg i8 %i.hl to i64               ; 2 uses
  %.not153.i = icmp ult i64 %i.hh, %i.hm
  br i1 %.not153.i, label %bb.br, label %bb.bu, !prof !56

bb.br:                                            ; preds = %bb.bq
  %i.hn = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %bb.bs, label %.thread255.i

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 318, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, i64 noundef %i.hh, i64 noundef %i.hm) #14
  %.pr254.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.hp = icmp sgt i32 %.pr254.i, 0
  br i1 %i.hp, label %bb.bt, label %.thread255.i

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 318, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %.thread255.i

.thread255.i:                                     ; preds = %bb.bt, %bb.bs, %bb.br
  call void @abort() #15
  unreachable

bb.bu:                                            ; preds = %bb.bq
  %i.hq = icmp ugt i32 %.val176.i, 127
  br i1 %i.hq, label %.lr.ph.i.i206.i, label %ZL_WC_pushVarint.exit209.i

.lr.ph.i.i206.i:                                  ; preds = %bb.bu
  %i.hr = trunc i32 %.val176.i to i8
  %i.hs = or i8 %i.hr, -128
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 1 ; 2 uses
  store i8 %i.hs, ptr %i.he, align 1, !tbaa !60
  %i.hu = lshr i64 %i.ew, 7                       ; 2 uses
  %i.hv = icmp ugt i32 %.val176.i, 16383
  br i1 %i.hv, label %.lr.ph.i.i206.i.1, label %ZL_WC_pushVarint.exit209.i

.lr.ph.i.i206.i.1:                                ; preds = %.lr.ph.i.i206.i
  %i.hw = trunc i64 %i.hu to i8
  %i.hx = or i8 %i.hw, -128
  %i.hy = getelementptr inbounds nuw i8, ptr %i.he, i64 2 ; 2 uses
  store i8 %i.hx, ptr %i.ht, align 1, !tbaa !60
  %i.hz = lshr i64 %i.ew, 14                      ; 2 uses
  %i.ia = icmp ugt i32 %.val176.i, 2097151
  br i1 %i.ia, label %.lr.ph.i.i206.i.2, label %ZL_WC_pushVarint.exit209.i

.lr.ph.i.i206.i.2:                                ; preds = %.lr.ph.i.i206.i.1
  %i.ib = trunc i64 %i.hz to i8
  %i.ic = or i8 %i.ib, -128
  %i.id = getelementptr inbounds nuw i8, ptr %i.he, i64 3 ; 2 uses
  store i8 %i.ic, ptr %i.hy, align 1, !tbaa !60
  %i.ie = lshr i64 %i.ew, 21                      ; 2 uses
  %i.if = icmp ugt i32 %.val176.i, 268435455
  br i1 %i.if, label %.lr.ph.i.i206.i.3, label %ZL_WC_pushVarint.exit209.i

.lr.ph.i.i206.i.3:                                ; preds = %.lr.ph.i.i206.i.2
  %i.ig = trunc i64 %i.ie to i8
  %i.ih = or i8 %i.ig, -128
  %i.ii = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i8 %i.ih, ptr %i.id, align 1, !tbaa !60
  %i.ij = lshr i64 %i.ew, 28
  br label %ZL_WC_pushVarint.exit209.i

ZL_WC_pushVarint.exit209.i:                       ; preds = %.lr.ph.i.i206.i, %.lr.ph.i.i206.i.1, %.lr.ph.i.i206.i.2, %.lr.ph.i.i206.i.3, %bb.bu
  %.08.lcssa.i.i204.i = phi i64 [ %i.ew, %bb.bu ], [ %i.hu, %.lr.ph.i.i206.i ], [ %i.hz, %.lr.ph.i.i206.i.1 ], [ %i.ie, %.lr.ph.i.i206.i.2 ], [ %i.ij, %.lr.ph.i.i206.i.3 ]
  %.0.lcssa.i.i205.i = phi ptr [ %i.he, %bb.bu ], [ %i.ht, %.lr.ph.i.i206.i ], [ %i.hy, %.lr.ph.i.i206.i.1 ], [ %i.id, %.lr.ph.i.i206.i.2 ], [ %i.ii, %.lr.ph.i.i206.i.3 ] ; 2 uses
  %i.ik = trunc nuw nsw i64 %.08.lcssa.i.i204.i to i8
  %i.il = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i205.i, i64 1
  store i8 %i.ik, ptr %.0.lcssa.i.i205.i, align 1, !tbaa !60
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %i.hg
  %i.io = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.in ; 4 uses
  store ptr %i.ip, ptr %i.v, align 8, !tbaa !42
  %.val159.i = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.iq = ptrtoint ptr %.val159.i to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 2 uses
  %.not154.i = icmp ult i64 %i.is, %i.ew
  br i1 %.not154.i, label %bb.bv, label %bb.by, !prof !56

bb.bv:                                            ; preds = %ZL_WC_pushVarint.exit209.i
  %i.it = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %bb.bw, label %.thread257.i

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 320, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.28, i64 noundef %i.is, i64 noundef %i.ew) #14
  %.pr256.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.iv = icmp sgt i32 %.pr256.i, 0
  br i1 %i.iv, label %bb.bx, label %.thread257.i

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.encodeSequences, i32 noundef 320, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  br label %.thread257.i

.thread257.i:                                     ; preds = %bb.bx, %bb.bw, %bb.bv
  call void @abort() #15
  unreachable

bb.by:                                            ; preds = %ZL_WC_pushVarint.exit209.i
  %.not155.i = icmp eq i32 %.val176.i, 0
  br i1 %.not155.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ip, ptr align 1 %i.ix, i64 %i.ew, i1 false)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !42
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.iy = phi ptr [ %.pre.i, %bb.bz ], [ %i.ip, %bb.by ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ew
  store ptr %i.iz, ptr %i.v, align 8, !tbaa !42
  br label %.thread225.i

.thread225.loopexit.i:                            ; preds = %GenericVector_reallocData.exit.i.i191.i, %bb.ap
  store ptr %.0.i28.i.i192288.i, ptr %i.bg, align 8
  br label %.thread225.i

.thread225.loopexit259.i:                         ; preds = %GenericVector_reallocData.exit.i.i.i, %bb.ad
  store ptr %.0.i28.i.i277.i, ptr %i.bg, align 8
  br label %.thread225.i

.thread225.i:                                     ; preds = %bb.al, %.critedge.i, %.thread225.loopexit259.i, %.thread225.loopexit.i, %bb.ca
  %.0.i = phi i1 [ true, %bb.ca ], [ false, %.thread225.loopexit.i ], [ false, %.thread225.loopexit259.i ], [ false, %.critedge.i ], [ false, %bb.al ]
  call void @free(ptr noundef %i.aw) #14
  call void @free(ptr noundef %i.az) #14
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !19 ; 2 uses
  %.not.i.i210.i = icmp eq ptr %i.jb, null
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i210.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.thread225.i
  call void @ALLOC_Arena_free(ptr noundef nonnull %i.jb, ptr noundef %i.jd) #14
  br label %encodeSequences.exit

bb.cc:                                            ; preds = %.thread225.i
  call void @ZL_free(ptr noundef %i.jd) #14
  br label %encodeSequences.exit

encodeSequences.exit:                             ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %.val = load ptr, ptr %i.v, align 8
  %i.je = ptrtoint ptr %.val to i64
  %i.jf = sub i64 %i.je, %i.ag
  %.0 = select i1 %.0.i, i64 %i.jf, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.cd

bb.cd:                                            ; preds = %bb.a, %encodeSequences.exit
  %.1 = phi i64 [ %.0, %encodeSequences.exit ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare { i32, i64 } @ZS_Entropy_encode(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

declare void @ZL_LOG_func_if_nonempty(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

declare void @ZL_E_log(i32, ptr, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i1 @GenericVector_pushBack(ptr nofree noundef nonnull captures(none) %0, i8 %.0.val) unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 8 uses
  %.not = icmp ult i32 %i.a, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %GenericVector_nextCapacity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ugt i32 %i.c, 511
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = add nuw nsw i64 %i.g, %i.f
  br label %GenericVector_nextCapacity.exit

bb.e:                                             ; preds = %bb.c
  %i.i = shl nuw nsw i32 %i.c, 1
  %i.j = zext nneg i32 %i.i to i64
  br label %GenericVector_nextCapacity.exit

GenericVector_nextCapacity.exit:                  ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.j, %bb.e ], [ %i.h, %bb.d ], [ 4, %bb.b ] ; 2 uses
  %i.k = zext i32 %i.c to i64                     ; 6 uses
  %i.l = icmp samesign ult i64 %.0.i, %i.k
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 8
  %.val.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  %.pre.i = zext i32 %.val.pre.i to i64           ; 4 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %.pre.i)
  %.010.i = select i1 %i.l, i64 %.pre.i, i64 %spec.select.i ; 4 uses
  %i.m = icmp eq i64 %.010.i, %i.k
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %GenericVector_nextCapacity.exit
  %.not.i = icmp samesign ugt i64 %.010.i, %i.k
  br i1 %.not.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp ugt i32 %i.c, 511
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = lshr i64 %i.k, 2
  %i.p = add nuw nsw i64 %i.o, %i.k
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i32 %i.c, 1
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.0.i.i = phi i64 [ %i.r, %bb.j ], [ %i.p, %bb.i ], [ 4, %bb.g ] ; 2 uses
  %i.s = icmp samesign ult i64 %.0.i.i, %i.k
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %.pre.i)
  %i.t = tail call i64 @llvm.umax.i64(i64 %.010.i, i64 %spec.select.i.i)
  %spec.select.i18 = select i1 %i.s, i64 %.pre.i, i64 %i.t ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.v, ptr noundef %i.x, i64 noundef %spec.select.i18) #14
  br label %GenericVector_reallocData.exit.i

bb.m:                                             ; preds = %bb.k
  %i.z = tail call ptr @ZL_realloc(ptr noundef %i.x, i64 noundef %spec.select.i18) #14
  br label %GenericVector_reallocData.exit.i

GenericVector_reallocData.exit.i:                 ; preds = %bb.m, %bb.l
  %.0.i28.i = phi ptr [ %i.y, %bb.l ], [ %i.z, %bb.m ] ; 2 uses
  %.not26.i = icmp eq ptr %.0.i28.i, null
  br i1 %.not26.i, label %GenericVector_reallocData.exit._crit_edge.i, label %.thread2

GenericVector_reallocData.exit._crit_edge.i:      ; preds = %GenericVector_reallocData.exit.i
  %.pre.i19 = load i32, ptr %i.b, align 4, !tbaa !18
  %i.aa = zext i32 %.pre.i19 to i64
  %.not4 = icmp samesign ugt i64 %.010.i, %i.aa
  br i1 %.not4, label %.thread, label %.critedge

.thread2:                                         ; preds = %GenericVector_reallocData.exit.i
  store ptr %.0.i28.i, ptr %i.w, align 8, !tbaa !20
  %i.ab = trunc nuw i64 %spec.select.i18 to i32
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.thread2, %GenericVector_reallocData.exit._crit_edge.i, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = load i32, ptr %0, align 8, !tbaa !17
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  store i8 %.0.val, ptr %i.ag, align 1
  %i.ah = load i32, ptr %0, align 8, !tbaa !17
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %0, align 8, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %GenericVector_nextCapacity.exit, %GenericVector_reallocData.exit._crit_edge.i, %.critedge
  %.1 = phi i1 [ true, %.critedge ], [ false, %GenericVector_reallocData.exit._crit_edge.i ], [ false, %GenericVector_nextCapacity.exit ]
  ret i1 %.1
}

declare ptr @ALLOC_Arena_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @ZL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

declare void @ALLOC_Arena_free(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @ZL_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
