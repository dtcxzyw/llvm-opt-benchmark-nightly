Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadBlif?download=true
inline.NumInlined: 237
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Io_ReadBlifReorderFormalNames:bb.a

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @Mio_GateReadPins(ptr noundef %1) #12 ; 3 uses
  %.not183315 = icmp eq ptr %i.v, null
  br i1 %.not183315, label %._crit_edge319, label %.lr.ph318

.lr.ph318:                                        ; preds = %bb.j
  %i.w = icmp sgt i32 %.val194.fr, 2
  %i.x = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br i1 %i.w, label %.lr.ph314.us.preheader, label %.loopexit259

.lr.ph314.us.preheader:                           ; preds = %.lr.ph318
  %wide.trip.count371 = zext nneg i32 %.val194.fr to i64
  br label %.lr.ph314.us

.lr.ph314.us:                                     ; preds = %.lr.ph314.us.preheader, %..loopexit259_crit_edge.us
  %.1166316.us = phi ptr [ %i.av, %..loopexit259_crit_edge.us ], [ %i.v, %.lr.ph314.us.preheader ] ; 2 uses
  %i.y = tail call ptr @Mio_PinReadName(ptr noundef nonnull %.1166316.us) #12 ; 2 uses
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #14
  %.val203.us = load ptr, ptr %i.x, align 8, !tbaa !29 ; 4 uses
  %sext187.us = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext187.us, 32          ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph314.us, %bb.m
  %indvars.iv367 = phi i64 [ 2, %.lr.ph314.us ], [ %indvars.iv.next368, %bb.m ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val203.us, i64 %indvars.iv367
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 3 uses
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull %i.y, ptr noundef %i.ac, i64 noundef %i.aa) #14
  %.not188.us = icmp eq i32 %i.ad, 0
  br i1 %.not188.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.aa
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !64
  %i.ag = icmp eq i8 %i.af, 61
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next368, %wide.trip.count371
  br i1 %exitcond372.not, label %..loopexit259_crit_edge.us, label %bb.k, !llvm.loop !93

bb.n:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !27  ; 7 uses
  %i.ai = load i32, ptr %0, align 8, !tbaa !28
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %Vec_PtrPush.exit.us

bb.o:                                             ; preds = %bb.n
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %Vec_PtrGrow.exit12.sink.split.i.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = icmp samesign ult i32 %i.ah, 1073741823
  %i.am = shl nuw nsw i32 %i.ah, 1
  %spec.select.i.us = select i1 %i.al, i32 %i.am, i32 2147483647 ; 3 uses
  %.not.i10.i.us = icmp samesign ult i32 %i.ah, %spec.select.i.us
  br i1 %.not.i10.i.us, label %bb.q, label %Vec_PtrPush.exit.us

bb.q:                                             ; preds = %bb.p
  %i.an = zext nneg i32 %spec.select.i.us to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  br label %Vec_PtrGrow.exit12.sink.split.i.us

Vec_PtrGrow.exit12.sink.split.i.us:               ; preds = %bb.o, %bb.q
  %.sink = phi i64 [ %i.ao, %bb.q ], [ 128, %bb.o ]
  %spec.select.sink.i.us = phi i32 [ %spec.select.i.us, %bb.q ], [ 16, %bb.o ]
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %.val203.us, i64 noundef %.sink) #15 ; 2 uses
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !29
  store i32 %spec.select.sink.i.us, ptr %0, align 8, !tbaa !28
  %.pre389 = load i32, ptr %i.a, align 4, !tbaa !27
  br label %Vec_PtrPush.exit.us

Vec_PtrPush.exit.us:                              ; preds = %Vec_PtrGrow.exit12.sink.split.i.us, %bb.p, %bb.n
  %i.aq = phi i32 [ %.pre389, %Vec_PtrGrow.exit12.sink.split.i.us ], [ %i.ah, %bb.p ], [ %i.ah, %bb.n ] ; 2 uses
  %i.ar = phi ptr [ %i.ap, %Vec_PtrGrow.exit12.sink.split.i.us ], [ %.val203.us, %bb.p ], [ %.val203.us, %bb.n ]
  %i.as = add nsw i32 %i.aq, 1
  store i32 %i.as, ptr %i.a, align 4, !tbaa !27
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.at
  store ptr %i.ac, ptr %i.au, align 8, !tbaa !46
  br label %..loopexit259_crit_edge.us

..loopexit259_crit_edge.us:                       ; preds = %bb.m, %Vec_PtrPush.exit.us
  %i.av = tail call ptr @Mio_PinReadNext(ptr noundef nonnull %.1166316.us) #12 ; 2 uses
  %.not183.us = icmp eq ptr %i.av, null
  br i1 %.not183.us, label %._crit_edge319, label %.lr.ph314.us, !llvm.loop !94

.loopexit259:                                     ; preds = %.lr.ph318, %.loopexit259
  %.1166316 = phi ptr [ %i.ax, %.loopexit259 ], [ %i.v, %.lr.ph318 ] ; 2 uses
  %i.aw = tail call ptr @Mio_PinReadName(ptr noundef nonnull %.1166316) #12 ; 0 uses
  %i.ax = tail call ptr @Mio_PinReadNext(ptr noundef nonnull %.1166316) #12 ; 2 uses
  %.not183 = icmp eq ptr %i.ax, null
  br i1 %.not183, label %._crit_edge319.thread, label %.loopexit259, !llvm.loop !94

._crit_edge319.thread:                            ; preds = %.loopexit259
  %i.ay = tail call ptr @Mio_GateReadOutName(ptr noundef %1) #12 ; 0 uses
  br label %.loopexit

._crit_edge319:                                   ; preds = %..loopexit259_crit_edge.us, %bb.j
  %i.az = tail call ptr @Mio_GateReadOutName(ptr noundef %1) #12 ; 2 uses
  %i.ba = icmp sgt i32 %.val194.fr, 2
  br i1 %i.ba, label %.lr.ph323, label %.loopexit

.lr.ph323:                                        ; preds = %._crit_edge319
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #14
  %i.bc = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val202 = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 4 uses
  %sext184 = shl i64 %i.bb, 32
  %i.bd = ashr exact i64 %sext184, 32             ; 2 uses
  %wide.trip.count377 = zext nneg i32 %.val194.fr to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph323, %bb.x
  %indvars.iv373 = phi i64 [ 2, %.lr.ph323 ], [ %indvars.iv.next374, %bb.x ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val202, i64 %indvars.iv373
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 3 uses
  %i.bg = tail call i32 @strncmp(ptr noundef nonnull %i.az, ptr noundef %i.bf, i64 noundef %i.bd) #14
  %.not185 = icmp eq i32 %i.bg, 0
  br i1 %.not185, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !64
  %i.bj = icmp eq i8 %i.bi, 61
  br i1 %i.bj, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !27  ; 7 uses
  %i.bl = load i32, ptr %0, align 8, !tbaa !28
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.u, label %Vec_PtrPush.exit214

bb.u:                                             ; preds = %bb.t
  %i.bn = icmp slt i32 %i.bk, 16
  br i1 %i.bn, label %Vec_PtrGrow.exit12.sink.split.i210, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = icmp samesign ult i32 %i.bk, 1073741823
  %i.bp = shl nuw nsw i32 %i.bk, 1
  %spec.select.i207 = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 3 uses
  %.not.i10.i208 = icmp samesign ult i32 %i.bk, %spec.select.i207
  br i1 %.not.i10.i208, label %bb.w, label %Vec_PtrPush.exit214

bb.w:                                             ; preds = %bb.v
  %i.bq = zext nneg i32 %spec.select.i207 to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  br label %Vec_PtrGrow.exit12.sink.split.i210

Vec_PtrGrow.exit12.sink.split.i210:               ; preds = %bb.u, %bb.w
  %.sink441 = phi i64 [ %i.br, %bb.w ], [ 128, %bb.u ]
  %spec.select.sink.i211 = phi i32 [ %spec.select.i207, %bb.w ], [ 16, %bb.u ]
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %.val202, i64 noundef %.sink441) #15 ; 2 uses
  store ptr %i.bs, ptr %i.bc, align 8, !tbaa !29
  store i32 %spec.select.sink.i211, ptr %0, align 8, !tbaa !28
  %.pre390 = load i32, ptr %i.a, align 4, !tbaa !27
  br label %Vec_PtrPush.exit214

Vec_PtrPush.exit214:                              ; preds = %bb.t, %bb.v, %Vec_PtrGrow.exit12.sink.split.i210
  %i.bt = phi i32 [ %i.bk, %bb.t ], [ %i.bk, %bb.v ], [ %.pre390, %Vec_PtrGrow.exit12.sink.split.i210 ] ; 2 uses
  %i.bu = phi ptr [ %.val202, %bb.t ], [ %.val202, %bb.v ], [ %i.bs, %Vec_PtrGrow.exit12.sink.split.i210 ]
  %i.bv = add nsw i32 %i.bt, 1
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !27
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bw
  store ptr %i.bf, ptr %i.bx, align 8, !tbaa !46
  br label %.loopexit

bb.x:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count377
  br i1 %exitcond378.not, label %.loopexit, label %bb.r, !llvm.loop !95

.loopexit:                                        ; preds = %bb.x, %._crit_edge319.thread, %._crit_edge319, %Vec_PtrPush.exit214
  %.val193 = load i32, ptr %i.a, align 4, !tbaa !27 ; 3 uses
  %i.by = sub nsw i32 %.val193, %.val194.fr
  %i.bz = add nsw i32 %.val194.fr, -2
  %.not186 = icmp eq i32 %i.by, %i.bz
  br i1 %.not186, label %.preheader, label %.loopexit264

.preheader:                                       ; preds = %.loopexit
  %i.ca = icmp slt i32 %.val194.fr, %.val193
  br i1 %i.ca, label %.lr.ph325, label %.critedge

.lr.ph325:                                        ; preds = %.preheader
  %i.cb = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %i.cc = sext i32 %.val194.fr to i64             ; 9 uses
  %wide.trip.count383 = sext i32 %.val193 to i64  ; 3 uses
  %i.cd = sub nsw i64 %wide.trip.count383, %i.cc
  %xtraiter473 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph325, %.prol.preheader
  %indvars.iv379.prol = phi i64 [ %indvars.iv.next380.prol, %.prol.preheader ], [ %i.cc, %.lr.ph325 ] ; 3 uses
  %prol.iter475 = phi i64 [ %prol.iter475.next, %.prol.preheader ], [ 0, %.lr.ph325 ]
  %.val201.prol = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.val201.prol, i64 %indvars.iv379.prol
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !46
  %i.cg = sub nuw nsw i64 %indvars.iv379.prol, %i.cc
  %i.ch = getelementptr [8 x i8], ptr %.val201.prol, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !46
  %indvars.iv.next380.prol = add nuw nsw i64 %indvars.iv379.prol, 1 ; 2 uses
  %prol.iter475.next = add i64 %prol.iter475, 1   ; 2 uses
  %prol.iter475.cmp.not = icmp eq i64 %prol.iter475.next, %xtraiter473
  br i1 %prol.iter475.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !96

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph325
  %indvars.iv379.unr = phi i64 [ %i.cc, %.lr.ph325 ], [ %indvars.iv.next380.prol, %.prol.preheader ]
  %i.cj = sub nsw i64 %i.cc, %wide.trip.count383
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.critedge, label %.lr.ph325.new

.lr.ph325.new:                                    ; preds = %.prol.loopexit, %.lr.ph325.new
  %indvars.iv379 = phi i64 [ %indvars.iv.next380.3, %.lr.ph325.new ], [ %indvars.iv379.unr, %.prol.loopexit ] ; 6 uses
  %.val201 = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.val201, i64 %indvars.iv379
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !46
  %i.cn = sub nuw nsw i64 %indvars.iv379, %i.cc
  %i.co = getelementptr [8 x i8], ptr %.val201, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !46
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %.val201.1 = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.val201.1, i64 %indvars.iv.next380
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !46
  %i.cs = sub nuw nsw i64 %indvars.iv.next380, %i.cc
  %i.ct = getelementptr [8 x i8], ptr %.val201.1, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !46
  %indvars.iv.next380.1 = add nuw nsw i64 %indvars.iv379, 2 ; 2 uses
  %.val201.2 = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.val201.2, i64 %indvars.iv.next380.1
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46
  %i.cx = sub nuw nsw i64 %indvars.iv.next380.1, %i.cc
  %i.cy = getelementptr [8 x i8], ptr %.val201.2, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !46
  %indvars.iv.next380.2 = add nuw nsw i64 %indvars.iv379, 3 ; 2 uses
  %.val201.3 = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.val201.3, i64 %indvars.iv.next380.2
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !46
  %i.dc = sub nuw nsw i64 %indvars.iv.next380.2, %i.cc
  %i.dd = getelementptr [8 x i8], ptr %.val201.3, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store ptr %i.db, ptr %i.de, align 8, !tbaa !46
  %indvars.iv.next380.3 = add nuw nsw i64 %indvars.iv379, 4 ; 2 uses
  %exitcond384.not.3 = icmp eq i64 %indvars.iv.next380.3, %wide.trip.count383
  br i1 %exitcond384.not.3, label %.critedge, label %.lr.ph325.new, !llvm.loop !97

.critedge:                                        ; preds = %.prol.loopexit, %.lr.ph325.new, %.preheader
  store i32 %.val194.fr, ptr %i.a, align 4, !tbaa !27
  br label %.loopexit264

bb.y:                                             ; preds = %._crit_edge
  %i.df = add nsw i32 %.val194.fr, -2             ; 2 uses
  %i.dg = add i32 %.val194.fr, -5
  %i.dh = sub i32 %i.dg, %i.t
  %or.cond = icmp ult i32 %i.dh, -2
  br i1 %or.cond, label %.loopexit264, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = tail call ptr @Mio_GateReadPins(ptr noundef %1) #12 ; 4 uses
  %.not175292 = icmp eq ptr %i.di, null
  br i1 %.not175292, label %._crit_edge297, label %.lr.ph296

.lr.ph296:                                        ; preds = %bb.z
  %i.dj = icmp sgt i32 %.val194.fr, 2
  %i.dk = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br i1 %i.dj, label %.lr.ph290.us.preheader, label %.lr.ph296.split

.lr.ph290.us.preheader:                           ; preds = %.lr.ph296
  %wide.trip.count = zext nneg i32 %.val194.fr to i64
  br label %.lr.ph290.us

.lr.ph290.us:                                     ; preds = %.lr.ph290.us.preheader, %bb.ah
  %.0294.us = phi i32 [ %i.ek, %bb.ah ], [ 0, %.lr.ph290.us.preheader ]
  %.2167293.us = phi ptr [ %i.el, %bb.ah ], [ %i.di, %.lr.ph290.us.preheader ] ; 2 uses
  %i.dl = tail call ptr @Mio_PinReadName(ptr noundef nonnull %.2167293.us) #12 ; 2 uses
  %i.dm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #14
  %.val200.us = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 4 uses
  %sext181.us = shl i64 %i.dm, 32
  %i.dn = ashr exact i64 %sext181.us, 32          ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph290.us, %bb.ac
  %indvars.iv345 = phi i64 [ 2, %.lr.ph290.us ], [ %indvars.iv.next346, %bb.ac ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.val200.us, i64 %indvars.iv345
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46 ; 3 uses
  %i.dq = tail call i32 @strncmp(ptr noundef nonnull %i.dl, ptr noundef %i.dp, i64 noundef %i.dn) #14
  %.not182.us = icmp eq i32 %i.dq, 0
  br i1 %.not182.us, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dn
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !64
  %i.dt = icmp eq i8 %i.ds, 61
  br i1 %i.dt, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next346, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit264, label %bb.aa, !llvm.loop !98

bb.ad:                                            ; preds = %bb.ab
  %i.du = trunc nuw nsw i64 %indvars.iv345 to i32
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !27  ; 7 uses
  %i.dw = load i32, ptr %0, align 8, !tbaa !28
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ae, label %..loopexit263_crit_edge.us

bb.ae:                                            ; preds = %bb.ad
  %i.dy = icmp slt i32 %i.dv, 16
  br i1 %i.dy, label %Vec_PtrGrow.exit12.sink.split.i218.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = icmp samesign ult i32 %i.dv, 1073741823
  %i.ea = shl nuw nsw i32 %i.dv, 1
  %spec.select.i215.us = select i1 %i.dz, i32 %i.ea, i32 2147483647 ; 3 uses
  %.not.i10.i216.us = icmp samesign ult i32 %i.dv, %spec.select.i215.us
  br i1 %.not.i10.i216.us, label %bb.ag, label %..loopexit263_crit_edge.us

bb.ag:                                            ; preds = %bb.af
  %i.eb = zext nneg i32 %spec.select.i215.us to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  br label %Vec_PtrGrow.exit12.sink.split.i218.us

Vec_PtrGrow.exit12.sink.split.i218.us:            ; preds = %bb.ae, %bb.ag
  %.sink442 = phi i64 [ %i.ec, %bb.ag ], [ 128, %bb.ae ]
  %spec.select.sink.i219.us = phi i32 [ %spec.select.i215.us, %bb.ag ], [ 16, %bb.ae ]
  %i.ed = tail call ptr @realloc(ptr noundef nonnull %.val200.us, i64 noundef %.sink442) #15 ; 2 uses
  store ptr %i.ed, ptr %i.dk, align 8, !tbaa !29
  store i32 %spec.select.sink.i219.us, ptr %0, align 8, !tbaa !28
  %.pre = load i32, ptr %i.a, align 4, !tbaa !27
  br label %..loopexit263_crit_edge.us

..loopexit263_crit_edge.us:                       ; preds = %bb.ad, %bb.af, %Vec_PtrGrow.exit12.sink.split.i218.us
  %i.ee = phi i32 [ %.pre, %Vec_PtrGrow.exit12.sink.split.i218.us ], [ %i.dv, %bb.af ], [ %i.dv, %bb.ad ] ; 2 uses
  %i.ef = phi ptr [ %i.ed, %Vec_PtrGrow.exit12.sink.split.i218.us ], [ %.val200.us, %bb.af ], [ %.val200.us, %bb.ad ]
  %i.eg = add nsw i32 %i.ee, 1
  store i32 %i.eg, ptr %i.a, align 4, !tbaa !27
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eh
  store ptr %i.dp, ptr %i.ei, align 8, !tbaa !46
  %i.ej = icmp eq i32 %.val194.fr, %i.du
  br i1 %i.ej, label %.loopexit264, label %bb.ah

bb.ah:                                            ; preds = %..loopexit263_crit_edge.us
  %i.ek = add nuw nsw i32 %.0294.us, 1            ; 2 uses
  %i.el = tail call ptr @Mio_PinReadNext(ptr noundef nonnull %.2167293.us) #12 ; 2 uses
  %.not175.us = icmp eq ptr %i.el, null
  br i1 %.not175.us, label %._crit_edge297, label %.lr.ph290.us, !llvm.loop !99

.lr.ph296.split:                                  ; preds = %.lr.ph296
  %i.em = icmp eq i32 %.val194.fr, 2
  br i1 %i.em, label %.loopexit263.us299, label %.loopexit263

.loopexit263.us299:                               ; preds = %.lr.ph296.split
  %i.en = tail call ptr @Mio_PinReadName(ptr noundef nonnull %i.di) #12 ; 0 uses
  br label %.loopexit264

.loopexit263:                                     ; preds = %.lr.ph296.split, %.loopexit263
  %.2167293 = phi ptr [ %i.ep, %.loopexit263 ], [ %i.di, %.lr.ph296.split ] ; 2 uses
  %i.eo = tail call ptr @Mio_PinReadName(ptr noundef nonnull %.2167293) #12 ; 0 uses
  %i.ep = tail call ptr @Mio_PinReadNext(ptr noundef nonnull %.2167293) #12 ; 2 uses
  %.not175 = icmp eq ptr %i.ep, null
  br i1 %.not175, label %._crit_edge297.thread, label %.loopexit263, !llvm.loop !99

._crit_edge297.thread:                            ; preds = %.loopexit263
  %i.eq = tail call ptr @Mio_GateReadOutName(ptr noundef %1) #12 ; 0 uses
  br label %.loopexit262

._crit_edge297:                                   ; preds = %bb.ah, %bb.z
  %.0.lcssa = phi i32 [ 0, %bb.z ], [ %i.ek, %bb.ah ] ; 3 uses
  %i.er = tail call ptr @Mio_GateReadOutName(ptr noundef %1) #12 ; 2 uses
  %i.es = icmp sgt i32 %.val194.fr, 2
  br i1 %i.es, label %.lr.ph304, label %.loopexit262

.lr.ph304:                                        ; preds = %._crit_edge297
  %i.et = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #14
  %i.eu = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val199 = load ptr, ptr %i.eu, align 8, !tbaa !29 ; 4 uses
  %sext176 = shl i64 %i.et, 32
  %i.ev = ashr exact i64 %sext176, 32             ; 2 uses
  %wide.trip.count353 = zext nneg i32 %.val194.fr to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph304, %bb.ao
  %indvars.iv349 = phi i64 [ 2, %.lr.ph304 ], [ %indvars.iv.next350, %bb.ao ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.val199, i64 %indvars.iv349
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46 ; 3 uses
  %i.ey = tail call i32 @strncmp(ptr noundef nonnull %i.er, ptr noundef %i.ex, i64 noundef %i.ev) #14
  %.not177 = icmp eq i32 %i.ey, 0
  br i1 %.not177, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 %i.ev
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !64
  %i.fb = icmp eq i8 %i.fa, 61
  br i1 %i.fb, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.fc = trunc nuw nsw i64 %indvars.iv349 to i32
  %i.fd = load i32, ptr %i.a, align 4, !tbaa !27  ; 7 uses
  %i.fe = load i32, ptr %0, align 8, !tbaa !28
  %i.ff = icmp eq i32 %i.fd, %i.fe
  br i1 %i.ff, label %bb.al, label %Vec_PtrPush.exit230

bb.al:                                            ; preds = %bb.ak
  %i.fg = icmp slt i32 %i.fd, 16
  br i1 %i.fg, label %Vec_PtrGrow.exit12.sink.split.i226, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fh = icmp samesign ult i32 %i.fd, 1073741823
  %i.fi = shl nuw nsw i32 %i.fd, 1
  %spec.select.i223 = select i1 %i.fh, i32 %i.fi, i32 2147483647 ; 3 uses
  %.not.i10.i224 = icmp samesign ult i32 %i.fd, %spec.select.i223
  br i1 %.not.i10.i224, label %bb.an, label %Vec_PtrPush.exit230

bb.an:                                            ; preds = %bb.am
  %i.fj = zext nneg i32 %spec.select.i223 to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  br label %Vec_PtrGrow.exit12.sink.split.i226

Vec_PtrGrow.exit12.sink.split.i226:               ; preds = %bb.al, %bb.an
  %.sink443 = phi i64 [ %i.fk, %bb.an ], [ 128, %bb.al ]
  %spec.select.sink.i227 = phi i32 [ %spec.select.i223, %bb.an ], [ 16, %bb.al ]
  %i.fl = tail call ptr @realloc(ptr noundef nonnull %.val199, i64 noundef %.sink443) #15 ; 2 uses
  store ptr %i.fl, ptr %i.eu, align 8, !tbaa !29
  store i32 %spec.select.sink.i227, ptr %0, align 8, !tbaa !28
  %.pre385 = load i32, ptr %i.a, align 4, !tbaa !27
  br label %Vec_PtrPush.exit230

Vec_PtrPush.exit230:                              ; preds = %bb.ak, %bb.am, %Vec_PtrGrow.exit12.sink.split.i226
  %i.fm = phi i32 [ %i.fd, %bb.ak ], [ %i.fd, %bb.am ], [ %.pre385, %Vec_PtrGrow.exit12.sink.split.i226 ] ; 2 uses
  %i.fn = phi ptr [ %.val199, %bb.ak ], [ %.val199, %bb.am ], [ %i.fl, %Vec_PtrGrow.exit12.sink.split.i226 ]
  %i.fo = add nsw i32 %i.fm, 1
  store i32 %i.fo, ptr %i.a, align 4, !tbaa !27
  %i.fp = sext i32 %i.fm to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fp
  store ptr %i.ex, ptr %i.fq, align 8, !tbaa !46
  %i.fr = add nsw i32 %.0.lcssa, 1
  br label %.loopexit262

bb.ao:                                            ; preds = %bb.ai, %bb.aj
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next350, %wide.trip.count353
end_hunk_0
