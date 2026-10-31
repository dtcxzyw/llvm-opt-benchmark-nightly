Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decompress2?download=true
inline.NumInlined: 332
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@DCTX_runDecoder:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 4 uses
  %.0.i = select i1 %i.b, ptr null, ptr %i.c
  store ptr %.0.i, ptr %13, align 8, !tbaa !44
  %.sroa.0153.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50
  %i.f = tail call { i32, ptr } @DTM_getTransform(ptr noundef %0, i64 %.sroa.0153.0.copyload, i32 noundef %i.e) #16 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 3 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 7 uses
  store i32 %i.g, ptr %12, align 8, !tbaa !48
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store ptr %i.h, ptr %.sroa.4147.0..sroa_idx, align 8, !tbaa !71
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.i = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.g, ptr %i.h, ptr nonnull @DCTX_runDecoder.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1448, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0
  %i.k = extractvalue { i32, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.m = lshr i64 %.sroa.0153.0.copyload, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = tail call ptr @DT_getTransformName(ptr noundef %i.h) #16
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %i.n, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !48
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %.sroa.4125.0..sroa_idx, align 4
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.o, ptr %.sroa.5126.0..sroa_idx, align 8, !tbaa !140
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 9 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !76
  %i.u = zext i32 %i.t to i64                     ; 12 uses
  br i1 %2, label %bb.as, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77   ; 5 uses
  %.not215 = icmp eq ptr %i.w, null
  br i1 %.not215, label %bb.as, label %ZL_DecoderFusionDesc_isParent.exit.i

ZL_DecoderFusionDesc_isParent.exit.i:             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %10, align 8, !tbaa !44
  %i.y = load i32, ptr %.sroa.4154.0..sroa_idx, align 4, !tbaa !78
  %i.z = load i32, ptr %i.w, align 8, !tbaa !143
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %runFusedDecoder.exit.thread

runFusedDecoder.exit.thread:                      ; preds = %ZL_DecoderFusionDesc_isParent.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.critedge

bb.e:                                             ; preds = %ZL_DecoderFusionDesc_isParent.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !144 ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 10 uses
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 3 uses
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 9 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.ah, i64 noundef %i.af) #16 ; 7 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !45

bb.f:                                             ; preds = %bb.e
  %i.aj = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.149, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1321, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.ak = extractvalue { i32, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { i32, ptr } %i.aj, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ak, ptr %i.al, ptr noundef nonnull @.str.152, i64 noundef %i.af, ptr noundef nonnull @.str.153) #16
  br label %runFusedDecoder.exit

bb.g:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.an = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.am, i64 noundef %i.af) #16 ; 5 uses
  %.not263.i = icmp eq ptr %i.an, null
  br i1 %.not263.i, label %bb.h, label %.critedge282.preheader.i, !prof !45

.critedge282.preheader.i:                         ; preds = %bb.g
  %.not265332.not.i = icmp eq i32 %i.ac, 0        ; 3 uses
  br i1 %.not265332.not.i, label %.critedge282._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge282.preheader.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1328
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.157, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1323, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.ar = extractvalue { i32, ptr } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.aq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ar, ptr %i.as, ptr noundef nonnull @.str.152, i64 noundef %i.af, ptr noundef nonnull @.str.153) #16
  br label %runFusedDecoder.exit

bb.i:                                             ; preds = %.critedge282.i, %.lr.ph.i
  %.0254333.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bf, %.critedge282.i ] ; 4 uses
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.au = tail call i32 @ZL_DecoderFusionDesc_getProducerNodeIdx(ptr noundef nonnull %i.w, i64 noundef %.0254333.i, ptr noundef nonnull %1, ptr noundef %i.at) #16
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !71
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0254333.i
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !79
  %i.az = load i32, ptr %i.d, align 8, !tbaa !50
  %i.ba = load i64, ptr %i.ax, align 8
  %i.bb = tail call { i32, ptr } @DTM_getTransform(ptr noundef nonnull %0, i64 %i.ba, i32 noundef %i.az) #16 ; 2 uses
  %i.bc = extractvalue { i32, ptr } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { i32, ptr } %i.bb, 1      ; 2 uses
  %.not264.i = icmp eq i32 %i.bc, 0
  br i1 %.not264.i, label %.critedge282.i, label %bb.j, !prof !58

.critedge282.i:                                   ; preds = %bb.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0254333.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !146
  %i.bf = add nuw nsw i64 %.0254333.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.ad
  br i1 %exitcond.not.i, label %.critedge282._crit_edge.i, label %bb.i, !llvm.loop !108

bb.j:                                             ; preds = %bb.i
  %i.bg = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.bc, ptr %i.bd, ptr nonnull @runFusedDecoder.__zl_static_error_info.160, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1335, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.bh = extractvalue { i32, ptr } %i.bg, 0
  %i.bi = extractvalue { i32, ptr } %i.bg, 1
  br label %runFusedDecoder.exit

.critedge282._crit_edge.i:                        ; preds = %.critedge282.i, %.critedge282.preheader.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ad
  store ptr %1, ptr %i.bj, align 8, !tbaa !79
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.bl = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.bk, i64 noundef %i.af) #16 ; 6 uses
  %.not266.i = icmp eq ptr %i.bl, null
  br i1 %.not266.i, label %bb.k, label %.critedge286.preheader.i, !prof !45

.critedge286.preheader.i:                         ; preds = %.critedge282._crit_edge.i
  br i1 %.not265332.not.i, label %.critedge291.i, label %.lr.ph336.i

.lr.ph336.i:                                      ; preds = %.critedge286.preheader.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1360
  br label %bb.l

bb.k:                                             ; preds = %.critedge282._crit_edge.i
  %i.bn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.164, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1344, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.bo = extractvalue { i32, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { i32, ptr } %i.bn, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bo, ptr %i.bp, ptr noundef nonnull @.str.152, i64 noundef %i.af, ptr noundef nonnull @.str.153) #16
  br label %runFusedDecoder.exit

bb.l:                                             ; preds = %.critedge286.i, %.lr.ph336.i
  %.0257335.i = phi i64 [ 0, %.lr.ph336.i ], [ %i.fn, %.critedge286.i ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0257335.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !79 ; 2 uses
  %i.bs = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 44 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !76
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.bs, i64 noundef %i.bw) #16 ; 9 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.m, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %i.bz = load i32, ptr %i.bt, align 4, !tbaa !76 ; 9 uses
  %.not.i300.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i300.i, label %.critedge288.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !75 ; 9 uses
  %i.cc = load ptr, ptr %i.bm, align 8, !tbaa !52 ; 9 uses
  %wide.trip.count.i.i = zext i32 %i.bz to i64    ; 10 uses
  %min.iters.check = icmp ult i32 %i.bz, 27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %i.cd = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %i.ce = add i32 %i.bz, -1
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cg = icmp ult i32 %i.ce, %i.cf
  %i.ch = xor i32 %i.cb, -1
  %i.ci = icmp ult i32 %i.ch, %i.cf
  %i.cj = icmp ugt i64 %i.cd, 4294967295
  %i.ck = or i1 %i.ci, %i.cj
  %i.cl = or i1 %i.cg, %i.ck
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.bx, i64 8
  %i.cm = add i32 %i.bz, -1
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %16 = sub nsw i64 %i.cn, %wide.trip.count.i.i
  %17 = shl nsw i64 %16, 3
  %scevgep523 = getelementptr i8, ptr %scevgep, i64 %17
  %scevgep524 = getelementptr i8, ptr %i.bx, i64 8
  %scevgep525 = getelementptr i8, ptr %scevgep524, i64 %i.co
  %i.cp = zext i32 %i.cb to i64                   ; 2 uses
  %i.cq = mul nuw nsw i64 %i.cp, 24
  %scevgep526 = getelementptr i8, ptr %i.cc, i64 %i.cq
  %scevgep527 = getelementptr i8, ptr %i.cc, i64 -16
  %18 = add nuw nsw i64 %i.cp, %wide.trip.count.i.i
  %19 = mul nuw nsw i64 %18, 24
  %scevgep528 = getelementptr i8, ptr %scevgep527, i64 %19
  %bound0 = icmp ult ptr %scevgep523, %scevgep528
  %bound1 = icmp ult ptr %scevgep526, %scevgep525
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cr = and i64 %wide.trip.count.i.i, 3         ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  %i.ct = select i1 %i.cs, i64 4, i64 %i.cr
  %n.vec = sub nsw i64 %wide.trip.count.i.i, %i.ct ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = trunc i64 %index to i32                 ; 5 uses
  %i.cv = or disjoint i32 %i.cu, 1
  %i.cw = or disjoint i32 %i.cu, 2
  %i.cx = or disjoint i32 %i.cu, 3
  %i.cy = add i32 %i.cb, %i.cu
  %i.cz = add i32 %i.cb, %i.cv
  %i.da = add i32 %i.cb, %i.cw
  %i.db = add i32 %i.cb, %i.cx
  %i.dc = xor i32 %i.cu, -1
  %i.dd = add i32 %i.bz, %i.dc
  %i.de = zext i32 %i.dd to i64
  %i.df = zext i32 %i.cy to i64
  %i.dg = zext i32 %i.cz to i64
  %i.dh = zext i32 %i.da to i64
  %i.di = zext i32 %i.db to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.df
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dg
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dh
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.di
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !56, !alias.scope !147
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !56, !alias.scope !147
  %i.dp = insertelement <2 x ptr> poison, ptr %i.do, i64 0
  %reverse = insertelement <2 x ptr> %i.dp, ptr %i.dn, i64 1
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !56, !alias.scope !147
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !56, !alias.scope !147
  %i.ds = insertelement <2 x ptr> poison, ptr %i.dr, i64 0
  %reverse529 = insertelement <2 x ptr> %i.ds, ptr %i.dq, i64 1
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.de ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -24
  store <2 x ptr> %reverse, ptr %i.du, align 8, !tbaa !63, !alias.scope !148, !noalias !147
  store <2 x ptr> %reverse529, ptr %i.dv, align 8, !tbaa !63, !alias.scope !148, !noalias !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !112

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %vector.body ] ; 5 uses
  %i.dx = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.dx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dy = trunc nuw i64 %indvars.iv.i.i.ph to i32 ; 2 uses
  %i.dz = add i32 %i.cb, %i.dy
  %i.ea = xor i32 %i.dy, -1
  %i.eb = add i32 %i.bz, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = zext i32 %i.dz to i64
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !56
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ec
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !63
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.eh = add nsw i64 %wide.trip.count.i.i, -1
  %i.ei = icmp eq i64 %indvars.iv.i.i.ph, %i.eh
  br i1 %i.ei, label %.critedge288.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.cb
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.i.1, %scalar.ph ] ; 3 uses
  %i.ej = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.ek = add i32 %i.cb, %i.ej
  %i.el = xor i32 %i.ej, -1
  %i.em = add i32 %i.bz, %i.el
  %i.en = zext i32 %i.em to i64
  %i.eo = zext i32 %i.ek to i64
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !56
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.en
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !63
  %i.es = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %.reass = add i32 %i.es, %invariant.op
  %reass.sub = sub i32 %i.bz, %i.es
  %i.et = add i32 %reass.sub, -2
  %i.eu = zext i32 %i.et to i64
  %i.ev = zext i32 %.reass to i64
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !56
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.eu
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !63
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %.critedge288.i, label %scalar.ph, !llvm.loop !113

bb.m:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0257335.i
  store ptr null, ptr %i.ez, align 8, !tbaa !149
  %i.fa = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.167, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1349, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.fb = extractvalue { i32, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { i32, ptr } %i.fa, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fb, ptr %i.fc, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  br label %runFusedDecoder.exit

.critedge288.i:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.preheader.i.i
  %.pre-phi.i = phi i64 [ 0, %.preheader.i.i ], [ %wide.trip.count.i.i, %scalar.ph ], [ %wide.trip.count.i.i, %scalar.ph.prol.loopexit ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0257335.i
  store ptr %i.bx, ptr %i.fd, align 8, !tbaa !149
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0257335.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !146
  %i.fg = tail call fastcc { i32, i64 } @DCTX_validateNodeInputs(ptr noundef nonnull %0, ptr noundef %i.ff, ptr noundef nonnull %i.bx, i64 noundef %.pre-phi.i) ; 2 uses
  %i.fh = extractvalue { i32, i64 } %i.fg, 0      ; 2 uses
  %.not268.i = icmp eq i32 %i.fh, 0
  br i1 %.not268.i, label %.critedge286.i, label %bb.n, !prof !58

bb.n:                                             ; preds = %.critedge288.i
  %i.fi = extractvalue { i32, i64 } %i.fg, 1
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.fh, ptr %i.fj, ptr nonnull @runFusedDecoder.__zl_static_error_info.170, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1356, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.fl = extractvalue { i32, ptr } %i.fk, 0
  %i.fm = extractvalue { i32, ptr } %i.fk, 1
  br label %runFusedDecoder.exit

.critedge286.i:                                   ; preds = %.critedge288.i
  %i.fn = add nuw nsw i64 %.0257335.i, 1          ; 2 uses
  %exitcond352.not.i = icmp eq i64 %i.fn, %i.ad
  br i1 %exitcond352.not.i, label %.critedge291.i, label %bb.l, !llvm.loop !114

.critedge291.i:                                   ; preds = %.critedge286.i, %.critedge286.preheader.i
  %i.fo = load i32, ptr %i.d, align 8, !tbaa !50
  %i.fp = load i64, ptr %1, align 8
  %i.fq = tail call { i32, ptr } @DTM_getTransform(ptr noundef nonnull %0, i64 %i.fp, i32 noundef %i.fo) #16 ; 2 uses
  %i.fr = extractvalue { i32, ptr } %i.fq, 0      ; 2 uses
  %i.fs = extractvalue { i32, ptr } %i.fq, 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %.not270.i = icmp eq i32 %i.fr, 0
  br i1 %.not270.i, label %bb.p, label %bb.o, !prof !58

bb.o:                                             ; preds = %.critedge291.i
  %i.ft = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.fr, ptr %i.fs, ptr nonnull @runFusedDecoder.__zl_static_error_info.171, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1367, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.fu = extractvalue { i32, ptr } %i.ft, 0
  %i.fv = extractvalue { i32, ptr } %i.ft, 1
  br label %runFusedDecoder.exit

bb.p:                                             ; preds = %.critedge291.i
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ad ; 2 uses
  store ptr %i.fs, ptr %i.fw, align 8, !tbaa !146
  %i.fx = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.fy = load i32, ptr %i.s, align 4, !tbaa !76
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.fx, i64 noundef %i.ga) #16 ; 9 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.q, label %.preheader.i303

.preheader.i303:                                  ; preds = %bb.p
  %i.gd = load i32, ptr %i.s, align 4, !tbaa !76  ; 9 uses
  %.not.i304 = icmp eq i32 %i.gd, 0
  br i1 %.not.i304, label %.critedge293.i, label %.lr.ph.i305

.lr.ph.i305:                                      ; preds = %.preheader.i303
  %i.ge = load i32, ptr %i.q, align 8, !tbaa !75  ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !52 ; 9 uses
  %wide.trip.count.i306 = zext i32 %i.gd to i64   ; 10 uses
  %min.iters.check540 = icmp ult i32 %i.gd, 39
  br i1 %min.iters.check540, label %scalar.ph539.preheader, label %vector.scevcheck530

vector.scevcheck530:                              ; preds = %.lr.ph.i305
  %i.gh = add nsw i64 %wide.trip.count.i306, -1   ; 2 uses
  %i.gi = add i32 %i.gd, -1
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  %i.gk = icmp ult i32 %i.gi, %i.gj
  %i.gl = xor i32 %i.ge, -1
  %i.gm = icmp ult i32 %i.gl, %i.gj
  %i.gn = icmp ugt i64 %i.gh, 4294967295
  %i.go = or i1 %i.gm, %i.gn
  %i.gp = or i1 %i.gk, %i.go
  br i1 %i.gp, label %scalar.ph539.preheader, label %vector.memcheck541

vector.memcheck541:                               ; preds = %vector.scevcheck530
  %i.gq = add i32 %i.gd, -1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = shl nuw nsw i64 %wide.trip.count.i306, 3
  %i.gu = add nuw nsw i64 %i.gs, 8                ; 2 uses
  %i.gv = sub nsw i64 %i.gu, %i.gt
  %i.gw = getelementptr i8, ptr %i.gb, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gb, i64 %i.gu
end_hunk_0
