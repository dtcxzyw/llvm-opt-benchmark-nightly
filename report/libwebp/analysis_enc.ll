Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/analysis_enc?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@VP8EncAnalyze:bb.a
  call void %i.bp(ptr noundef nonnull %2) #8
  %.not48 = icmp eq i32 %i.bn, 0
  br i1 %.not48, label %bb.f, label %vector.body

vector.body:                                      ; preds = %bb.e, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.e ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x i32>, ptr %i.bq, align 8, !tbaa !35
  %wide.load107 = load <4 x i32>, ptr %i.br, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load108 = load <4 x i32>, ptr %i.bs, align 8, !tbaa !35
  %wide.load109 = load <4 x i32>, ptr %i.bt, align 8, !tbaa !35
  %i.bu = add nsw <4 x i32> %wide.load108, %wide.load
  %i.bv = add nsw <4 x i32> %wide.load109, %wide.load107
  store <4 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !35
  store <4 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !35
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index.next ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bw, align 8, !tbaa !35
  %wide.load107.1 = load <4 x i32>, ptr %i.bx, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index.next ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load108.1 = load <4 x i32>, ptr %i.by, align 8, !tbaa !35
  %wide.load109.1 = load <4 x i32>, ptr %i.bz, align 8, !tbaa !35
  %i.ca = add nsw <4 x i32> %wide.load108.1, %wide.load.1
  %i.cb = add nsw <4 x i32> %wide.load109.1, %wide.load107.1
  store <4 x i32> %i.ca, ptr %i.by, align 8, !tbaa !35
  store <4 x i32> %i.cb, ptr %i.bz, align 8, !tbaa !35
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next.1, 256
  br i1 %i.cc, label %MergeJobs.exit, label %vector.body, !llvm.loop !40

MergeJobs.exit:                                   ; preds = %vector.body
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.cf = load <2 x i32>, ptr %i.cd, align 8, !tbaa !35
  %i.cg = load <2 x i32>, ptr %i.ce, align 8, !tbaa !35
  %i.ch = add nsw <2 x i32> %i.cg, %i.cf
  store <2 x i32> %i.ch, ptr %i.ce, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %.thread, %MergeJobs.exit, %bb.e
  %.062 = phi i32 [ 0, %.thread ], [ 1, %MergeJobs.exit ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ci = tail call ptr @WebPGetWorkerInterface() #8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62
  call void %i.cj(ptr noundef nonnull %1) #8, !inline_history !39
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %1, ptr %i.ck, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !64
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @DoSegmentsJob, ptr %i.cn, align 8, !tbaa !65
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %i.cl) #8
  call void @VP8IteratorSetRow(ptr noundef nonnull %i.cl, i32 noundef 0) #8
  %i.co = load i32, ptr %i.q, align 8, !tbaa !59
  %i.cp = mul nsw i32 %i.co, %i.p
  call void @VP8IteratorSetCountDown(ptr noundef nonnull %i.cl, i32 noundef %i.cp) #8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cq, i8 0, i64 1032, i1 false)
  store i32 20, ptr %i.cr, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !69
  call void %i.ct(ptr noundef nonnull %1) #8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.cw = call i32 %i.cv(ptr noundef nonnull %1) #8
  %i.cx = and i32 %i.cw, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.062, %bb.f ], [ %i.cx, %bb.g ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !67
  call void %i.cz(ptr noundef nonnull %1) #8
  %.not49 = icmp eq i32 %.1, 0
  br i1 %.not49, label %.thread63, label %vector.ph110

.thread63:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !73
  %i.dc = call i32 @WebPEncodingSetError(ptr noundef %i.db, i32 noundef 1) #8
  br label %bb.ab

vector.ph110:                                     ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 3588
  %i.df = load <2 x i32>, ptr %i.dd, align 8, !tbaa !35
  %i.dg = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.dh = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.di = sdiv <2 x i32> %i.df, %i.dh
  store <2 x i32> %i.di, ptr %i.de, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !57 ; 6 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.dl, i32 4) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body.interim.3, %vector.ph110
  %index112 = phi i64 [ 0, %vector.ph110 ], [ %index.next114.3, %vector.body.interim.3 ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index112
  %wide.load113 = load <4 x i32>, ptr %i.dm, align 8, !tbaa !35
  %wide.load113.fr = freeze <4 x i32> %wide.load113
  %i.dn = icmp ne <4 x i32> %wide.load113.fr, zeroinitializer ; 2 uses
  %i.do = bitcast <4 x i1> %i.dn to i4
  %.not167 = icmp eq i4 %i.do, 0
  br i1 %.not167, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body111
  %index.next114 = or disjoint i64 %index112, 4   ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index.next114
  %wide.load113.1 = load <4 x i32>, ptr %i.dp, align 8, !tbaa !35
  %wide.load113.fr.1 = freeze <4 x i32> %wide.load113.1
  %i.dq = icmp ne <4 x i32> %wide.load113.fr.1, zeroinitializer ; 2 uses
  %i.dr = bitcast <4 x i1> %i.dq to i4
  %.not167.1 = icmp eq i4 %i.dr, 0
  br i1 %.not167.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %index.next114.1 = or disjoint i64 %index112, 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index.next114.1
  %wide.load113.2 = load <4 x i32>, ptr %i.ds, align 8, !tbaa !35
  %wide.load113.fr.2 = freeze <4 x i32> %wide.load113.2
  %i.dt = icmp ne <4 x i32> %wide.load113.fr.2, zeroinitializer ; 2 uses
  %i.du = bitcast <4 x i1> %i.dt to i4
  %.not167.2 = icmp eq i4 %i.du, 0
  br i1 %.not167.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %index.next114.2 = or disjoint i64 %index112, 12 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index.next114.2
  %wide.load113.3 = load <4 x i32>, ptr %i.dv, align 8, !tbaa !35
  %wide.load113.fr.3 = freeze <4 x i32> %wide.load113.3
  %i.dw = icmp ne <4 x i32> %wide.load113.fr.3, zeroinitializer ; 2 uses
  %i.dx = bitcast <4 x i1> %i.dw to i4
  %.not167.3 = icmp eq i4 %i.dx, 0
  br i1 %.not167.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %index.next114.3 = add nuw nsw i64 %index112, 16 ; 2 uses
  %i.dy = icmp eq i64 %index.next114.3, 256
  br i1 %i.dy, label %.critedge2.i, label %vector.body111, !llvm.loop !41

vector.early.exit:                                ; preds = %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.body111
  %index112.lcssa = phi i64 [ %index112, %vector.body111 ], [ %index.next114, %vector.body.interim ], [ %index.next114.1, %vector.body.interim.1 ], [ %index.next114.2, %vector.body.interim.2 ]
  %.lcssa178 = phi <4 x i1> [ %i.dn, %vector.body111 ], [ %i.dq, %vector.body.interim ], [ %i.dt, %vector.body.interim.1 ], [ %i.dw, %vector.body.interim.2 ]
  %i.dz = call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %.lcssa178, i1 false)
  %i.ea = add i64 %index112.lcssa, %i.dz          ; 3 uses
  %i.eb = trunc nuw nsw i64 %i.ea to i32          ; 4 uses
  %i.ec = icmp samesign ult i64 %i.ea, 255
  br i1 %i.ec, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %vector.early.exit, %bb.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.i ], [ 255, %vector.early.exit ] ; 3 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv163.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !35
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.i, label %.critedge2.loopexit.split.loop.exit211.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, -1 ; 2 uses
  %i.eg = icmp samesign ugt i64 %indvars.iv.next164.i, %i.ea
  br i1 %i.eg, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !42

.critedge2.loopexit.split.loop.exit211.i:         ; preds = %.lr.ph.i
  %i.eh = trunc nuw nsw i64 %indvars.iv163.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %vector.body.interim.3, %bb.i, %.critedge2.loopexit.split.loop.exit211.i, %vector.early.exit
  %.0103.lcssa198.i = phi i32 [ %i.eb, %vector.early.exit ], [ %i.eb, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.eb, %bb.i ], [ 256, %vector.body.interim.3 ] ; 5 uses
  %.1104.lcssa.i = phi i32 [ 255, %vector.early.exit ], [ %i.eh, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.eb, %bb.i ], [ 255, %vector.body.interim.3 ] ; 3 uses
  %i.ei = icmp sgt i32 %i.dl, 0                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64
  br i1 %i.ei, label %vector.body123, label %.preheader126.i

vector.body123:                                   ; preds = %.critedge2.i
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %.0103.lcssa198.i, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ej = sub nsw i32 %.1104.lcssa.i, %.0103.lcssa198.i
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ek = shl nuw nsw i32 %spec.select.i, 1
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %wide.trip.count.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.el = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 5 uses
  %i.em = mul nsw <4 x i32> %broadcast.splat120, <i32 1, i32 3, i32 5, i32 7>
  %i.en = call <4 x i32> @llvm.masked.sdiv.v4i32(<4 x i32> %i.em, <4 x i32> %broadcast.splat118, <4 x i1> %i.el)
  %i.eo = add nsw <4 x i32> %i.en, %broadcast.splat122 ; 4 uses
  %i.ep = extractelement <4 x i1> %i.el, i64 0
  br i1 %i.ep, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body123
  %i.eq = extractelement <4 x i32> %i.eo, i64 0   ; 2 uses
  store i32 %i.eq, ptr %i.b, align 16, !tbaa !35
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body123
  %i.er = phi i32 [ %i.eq, %pred.store.if ], [ undef, %vector.body123 ] ; 2 uses
  %i.es = extractelement <4 x i1> %i.el, i64 1
  br i1 %i.es, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eu = extractelement <4 x i32> %i.eo, i64 1   ; 2 uses
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !35
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue
  %i.ev = phi i32 [ %i.eu, %pred.store.if126 ], [ undef, %pred.store.continue ] ; 2 uses
  %i.ew = extractelement <4 x i1> %i.el, i64 2
  br i1 %i.ew, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ey = extractelement <4 x i32> %i.eo, i64 2   ; 2 uses
  store i32 %i.ey, ptr %i.ex, align 8, !tbaa !35
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.ez = phi i32 [ %i.ey, %pred.store.if128 ], [ undef, %pred.store.continue127 ] ; 2 uses
  %i.fa = extractelement <4 x i1> %i.el, i64 3
  br i1 %i.fa, label %pred.store.if130, label %.preheader126.i

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fc = extractelement <4 x i32> %i.eo, i64 3   ; 2 uses
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !35
  br label %.preheader126.i

.preheader126.i:                                  ; preds = %pred.store.continue129, %pred.store.if130, %.critedge2.i
  %i.fd = phi i32 [ undef, %.critedge2.i ], [ %i.fc, %pred.store.if130 ], [ undef, %pred.store.continue129 ]
  %i.fe = phi i32 [ undef, %.critedge2.i ], [ %i.ez, %pred.store.if130 ], [ %i.ez, %pred.store.continue129 ]
  %i.ff = phi i32 [ undef, %.critedge2.i ], [ %i.ev, %pred.store.if130 ], [ %i.ev, %pred.store.continue129 ]
  %i.fg = phi i32 [ undef, %.critedge2.i ], [ %i.er, %pred.store.if130 ], [ %i.er, %pred.store.continue129 ] ; 3 uses
  %.not138.i = icmp sgt i32 %.0103.lcssa198.i, %.1104.lcssa.i ; 2 uses
  %i.fh = add i32 %spec.select.i, -1
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 4                ; 2 uses
  %i.fl = sext i32 %spec.select.i to i64          ; 6 uses
  %i.fm = zext nneg i32 %.0103.lcssa198.i to i64  ; 2 uses
  %smax179.i = call i32 @llvm.smax.i32(i32 %.1104.lcssa.i, i32 %.0103.lcssa198.i)
  %i.fn = add nuw nsw i32 %smax179.i, 1
  %wide.trip.count180.i = zext i32 %i.fn to i64   ; 2 uses
  br i1 %i.ei, label %.preheader125.i.us.preheader, label %.preheader124.i

.preheader125.i.us.preheader:                     ; preds = %.preheader126.i
  %exitcond186.not.i.us = icmp eq i32 %i.dl, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %exitcond186.not.i.us.1 = icmp eq i32 %i.dl, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %exitcond186.not.i.us.2 = icmp eq i32 %i.dl, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %.preheader125.i.us

.preheader125.i.us:                               ; preds = %.preheader125.i.us.preheader, %._crit_edge.i.us
  %i.fx = phi i32 [ %i.jn, %._crit_edge.i.us ], [ %i.fd, %.preheader125.i.us.preheader ] ; 5 uses
  %i.fy = phi i32 [ %i.jo, %._crit_edge.i.us ], [ %i.fe, %.preheader125.i.us.preheader ] ; 4 uses
  %i.fz = phi i32 [ %i.jp, %._crit_edge.i.us ], [ %i.ff, %.preheader125.i.us.preheader ] ; 3 uses
  %i.ga = phi i32 [ %i.id, %._crit_edge.i.us ], [ %i.fg, %.preheader125.i.us.preheader ] ; 2 uses
  %.1102150.i.us = phi i32 [ %i.jr, %._crit_edge.i.us ], [ 0, %.preheader125.i.us.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 %i.fk, i1 false), !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.fk, i1 false), !tbaa !35
  br i1 %.not138.i, label %.lr.ph146.i.us, label %.lr.ph141.i.us

.lr.ph141.i.us:                                   ; preds = %.preheader125.i.us, %bb.j
  %indvars.iv176.i.us = phi i64 [ %indvars.iv.next177.i.us, %bb.j ], [ %i.fm, %.preheader125.i.us ] ; 4 uses
  %.4139.i.us = phi i32 [ %.6.i.us, %bb.j ], [ 0, %.preheader125.i.us ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv176.i.us
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !35 ; 3 uses
  %.not114.i.us = icmp eq i32 %i.gc, 0
  br i1 %.not114.i.us, label %bb.j, label %.preheader.preheader.i.us

.preheader.preheader.i.us:                        ; preds = %.lr.ph141.i.us
  %i.gd = zext nneg i32 %.4139.i.us to i64        ; 5 uses
  %i.ge = add nuw nsw i32 %.4139.i.us, 1
  %smax.i.us = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.ge)
  %i.gf = add nsw i32 %smax.i.us, -1              ; 4 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv176.i.us to i32 ; 7 uses
  %indvars.iv.next174.i.us103 = add nuw nsw i64 %i.gd, 1 ; 4 uses
  %i.gh = icmp slt i64 %indvars.iv.next174.i.us103, %i.fl
  br i1 %i.gh, label %.lr.ph106, label %.critedge4.i.us

.preheader.i.us:                                  ; preds = %.lr.ph106
  %indvars.iv.next174.i.us = add nuw nsw i64 %i.gd, 2 ; 4 uses
  %i.gi = icmp slt i64 %indvars.iv.next174.i.us, %i.fl
  br i1 %i.gi, label %.lr.ph106.1, label %.critedge4.i.us

.lr.ph106.1:                                      ; preds = %.preheader.i.us
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !35
  %i.gl = sub nsw i32 %i.gg, %i.gk
  %i.gm = call i32 @llvm.abs.i32(i32 %i.gl, i1 true)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !35
  %i.gp = sub nsw i32 %i.gg, %i.go
  %i.gq = call i32 @llvm.abs.i32(i32 %i.gp, i1 true)
  %i.gr = icmp samesign ult i32 %i.gm, %i.gq
  br i1 %i.gr, label %.preheader.i.us.1, label %.critedge4.loopexit.i.us, !llvm.loop !43

.preheader.i.us.1:                                ; preds = %.lr.ph106.1
  %indvars.iv.next174.i.us.1 = add nuw nsw i64 %i.gd, 3 ; 2 uses
  %i.gs = icmp slt i64 %indvars.iv.next174.i.us.1, %i.fl
  br i1 %i.gs, label %.lr.ph106.2, label %.critedge4.i.us

.lr.ph106.2:                                      ; preds = %.preheader.i.us.1
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us.1
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !35
  %i.gv = sub nsw i32 %i.gg, %i.gu
  %i.gw = call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !35
  %i.gz = sub nsw i32 %i.gg, %i.gy
  %i.ha = call i32 @llvm.abs.i32(i32 %i.gz, i1 true)
  %i.hb = icmp samesign ult i32 %i.gw, %i.ha
  br i1 %i.hb, label %.critedge4.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !43

.lr.ph106:                                        ; preds = %.preheader.preheader.i.us
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !35
  %i.he = sub nsw i32 %i.gg, %i.hd
  %i.hf = call i32 @llvm.abs.i32(i32 %i.he, i1 true)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gd
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.hi = sub nsw i32 %i.gg, %i.hh
  %i.hj = call i32 @llvm.abs.i32(i32 %i.hi, i1 true)
  %i.hk = icmp samesign ult i32 %i.hf, %i.hj
  br i1 %i.hk, label %.preheader.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !43

.critedge4.loopexit.i.us:                         ; preds = %.lr.ph106.2, %.lr.ph106.1, %.lr.ph106
  %indvars.iv173.i.us104.lcssa = phi i64 [ %i.gd, %.lr.ph106 ], [ %indvars.iv.next174.i.us103, %.lr.ph106.1 ], [ %indvars.iv.next174.i.us, %.lr.ph106.2 ]
  %i.hl = trunc nuw nsw i64 %indvars.iv173.i.us104.lcssa to i32
  br label %.critedge4.i.us

.critedge4.i.us:                                  ; preds = %.preheader.i.us, %.preheader.i.us.1, %.lr.ph106.2, %.preheader.preheader.i.us, %.critedge4.loopexit.i.us
  %.5.lcssa.i.us = phi i32 [ %i.hl, %.critedge4.loopexit.i.us ], [ %i.gf, %.preheader.preheader.i.us ], [ %i.gf, %.lr.ph106.2 ], [ %i.gf, %.preheader.i.us.1 ], [ %i.gf, %.preheader.i.us ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i.us
  store i32 %.5.lcssa.i.us, ptr %i.hm, align 4, !tbaa !35
  %i.hn = mul nsw i32 %i.gc, %i.gg
  %i.ho = zext nneg i32 %.5.lcssa.i.us to i64     ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !35
  %i.hr = add nsw i32 %i.hq, %i.hn
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !35
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ho ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !35
  %i.hu = add nsw i32 %i.ht, %i.gc
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %.critedge4.i.us, %.lr.ph141.i.us
  %.6.i.us = phi i32 [ %.5.lcssa.i.us, %.critedge4.i.us ], [ %.4139.i.us, %.lr.ph141.i.us ]
  %indvars.iv.next177.i.us = add nuw nsw i64 %indvars.iv176.i.us, 1 ; 2 uses
  %exitcond181.not.i.us = icmp eq i64 %indvars.iv.next177.i.us, %wide.trip.count180.i
  br i1 %exitcond181.not.i.us, label %.lr.ph146.i.us, label %.lr.ph141.i.us, !llvm.loop !44

.lr.ph146.i.us:                                   ; preds = %.preheader125.i.us, %bb.j
  %i.hv = load i32, ptr %i.d, align 16, !tbaa !35 ; 5 uses
  %.not113.i.us = icmp eq i32 %i.hv, 0
  br i1 %.not113.i.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph146.i.us
  %i.hw = load i32, ptr %i.e, align 16, !tbaa !35
  %i.hx = sdiv i32 %i.hv, 2
  %i.hy = add nsw i32 %i.hw, %i.hx
  %i.hz = sdiv i32 %i.hy, %i.hv                   ; 4 uses
  %i.ia = sub nsw i32 %i.ga, %i.hz
  %i.ib = call i32 @llvm.abs.i32(i32 %i.ia, i1 true)
  store i32 %i.hz, ptr %i.b, align 16, !tbaa !35
  %i.ic = mul nsw i32 %i.hz, %i.hv
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph146.i.us
  %i.id = phi i32 [ %i.hz, %bb.k ], [ %i.ga, %.lr.ph146.i.us ] ; 2 uses
  %.1100.i.us = phi i32 [ %i.hv, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  %.198.i.us = phi i32 [ %i.ib, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  %.2.i.us = phi i32 [ %i.ic, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  br i1 %exitcond186.not.i.us, label %._crit_edge.i.us, label %.lr.ph146.i.us.1

end_hunk_0
begin_hunk_1_@VP8EncAnalyze:bb.a
  %i.kr = call i32 @llvm.abs.i32(i32 %i.kq, i1 true)
  %i.ks = icmp samesign ult i32 %i.kn, %i.kr
  br i1 %i.ks, label %.critedge4.i, label %.critedge4.loopexit.i, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i100
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !35
  %i.kv = sub nsw i32 %i.jx, %i.ku
  %i.kw = call i32 @llvm.abs.i32(i32 %i.kv, i1 true)
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ju
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !35
  %i.kz = sub nsw i32 %i.jx, %i.ky
  %i.la = call i32 @llvm.abs.i32(i32 %i.kz, i1 true)
  %i.lb = icmp samesign ult i32 %i.kw, %i.la
  br i1 %i.lb, label %.preheader.i, label %.critedge4.loopexit.i, !llvm.loop !43

.critedge4.loopexit.i:                            ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %indvars.iv173.i101.lcssa = phi i64 [ %i.ju, %.lr.ph ], [ %indvars.iv.next174.i100, %.lr.ph.1 ], [ %indvars.iv.next174.i, %.lr.ph.2 ]
  %i.lc = trunc nuw nsw i64 %indvars.iv173.i101.lcssa to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.preheader.i, %.preheader.i.1, %.lr.ph.2, %.preheader.preheader.i, %.critedge4.loopexit.i
  %.5.lcssa.i = phi i32 [ %i.lc, %.critedge4.loopexit.i ], [ %i.jw, %.preheader.preheader.i ], [ %i.jw, %.lr.ph.2 ], [ %i.jw, %.preheader.i.1 ], [ %i.jw, %.preheader.i ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i
  store i32 %.5.lcssa.i, ptr %i.ld, align 4, !tbaa !35
  %i.le = mul nsw i32 %i.jt, %i.jx
  %i.lf = zext nneg i32 %.5.lcssa.i to i64        ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !35
  %i.li = add nsw i32 %i.lh, %i.le
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !35
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lf ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !35
  %i.ll = add nsw i32 %i.lk, %i.jt
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %.critedge4.i, %.lr.ph141.i
  %.6.i = phi i32 [ %.5.lcssa.i, %.critedge4.i ], [ %.4139.i, %.lr.ph141.i ]
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.thread.i, label %.lr.ph141.i, !llvm.loop !44

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i.us
  %i.lm = sdiv i32 %.1100.i.us.lcssa, 2
  %i.ln = add nsw i32 %.2.i.us.lcssa, %i.lm
  %i.lo = sdiv i32 %i.ln, %.1100.i.us.lcssa
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.r, %.preheader124.i, %._crit_edge.thread.sink.split.i
  %i.lp = phi i32 [ %i.id, %._crit_edge.thread.sink.split.i ], [ %i.fg, %.preheader124.i ], [ %i.fg, %bb.r ] ; 5 uses
  %i.lq = phi i32 [ %i.lo, %._crit_edge.thread.sink.split.i ], [ poison, %.preheader124.i ], [ poison, %bb.r ] ; 2 uses
  %i.lr = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.ls = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.lr                ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph153.i, label %._crit_edge154.i

.lr.ph153.i:                                      ; preds = %._crit_edge.thread.i
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 23648
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph153.i
  %indvars.iv188.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next189.i, %bb.s ] ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !74
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv188.i ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 1 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !38
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !35 ; 2 uses
  %i.md = trunc i32 %i.mc to i8
  %i.me = load i8, ptr %i.lx, align 4
  %i.mf = shl i8 %i.md, 5
  %i.mg = and i8 %i.mf, 96
  %i.mh = and i8 %i.me, -97
  %i.mi = or disjoint i8 %i.mg, %i.mh
  store i8 %i.mi, ptr %i.lx, align 4
  %i.mj = sext i32 %i.mc to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !35
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %i.ly, align 1, !tbaa !38
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.mn = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.mo = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.mp = mul nsw i32 %i.mo, %i.mn                ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next189.i, %i.mq
  br i1 %i.mr, label %bb.s, label %._crit_edge154.i, !llvm.loop !46

._crit_edge154.i:                                 ; preds = %bb.s, %._crit_edge.thread.i
  %.lcssa128.i = phi i32 [ %i.lr, %._crit_edge.thread.i ], [ %i.mn, %bb.s ] ; 7 uses
  %.lcssa127.i = phi i32 [ %i.ls, %._crit_edge.thread.i ], [ %i.mo, %bb.s ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.lt, %._crit_edge.thread.i ], [ %i.mp, %bb.s ]
  %i.ms = icmp sgt i32 %i.dl, 1
  br i1 %i.ms, label %bb.t, label %SmoothSegmentMap.exit.i

bb.t:                                             ; preds = %._crit_edge154.i
  %i.mt = load ptr, ptr %0, align 8, !tbaa !26
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 68
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !75
  %i.mw = and i32 %i.mv, 1
  %.not112.i = icmp eq i32 %i.mw, 0
  br i1 %.not112.i, label %SmoothSegmentMap.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mx = sext i32 %.lcssa.i to i64
  %i.my = call ptr @WebPSafeMalloc(i64 noundef %i.mx, i64 noundef 1) #8 ; 6 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %SmoothSegmentMap.exit.i, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.u
  %i.na = add nsw i32 %.lcssa127.i, -1
  %i.nb = icmp sgt i32 %.lcssa127.i, 2
  br i1 %i.nb, label %.preheader62.lr.ph.i.i, label %._crit_edge71.split.i.i

.preheader62.lr.ph.i.i:                           ; preds = %.preheader63.i.i
  %i.nc = add i32 %.lcssa128.i, -1                ; 3 uses
  %i.nd = icmp sgt i32 %.lcssa128.i, 2
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 23648 ; 4 uses
  %i.nf = sub nsw i32 0, %.lcssa128.i
  %i.ng = xor i32 %.lcssa128.i, -1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = sext i32 %i.nf to i64
  %i.nj = sub i32 1, %.lcssa128.i
  %i.nk = sext i32 %i.nj to i64
  %i.nl = sext i32 %i.nc to i64
  %i.nm = sext i32 %.lcssa128.i to i64
  br i1 %i.nd, label %.preheader62.preheader.i.i, label %._crit_edge71.split.i.i

.preheader62.preheader.i.i:                       ; preds = %.preheader62.lr.ph.i.i
  %i.nn = zext nneg i32 %.lcssa128.i to i64       ; 2 uses
  %wide.trip.count78.i.i = zext nneg i32 %i.na to i64 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.nc to i64    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader62.i.i

.preheader62.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader62.preheader.i.i
  %indvars.iv75.i.i = phi i64 [ 1, %.preheader62.preheader.i.i ], [ %indvars.iv.next76.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.nr = mul nuw nsw i64 %indvars.iv75.i.i, %i.nn
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i, %.preheader62.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.preheader62.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ns = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.nt = add nuw nsw i64 %indvars.iv.i.i, %i.nr  ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nt ; 8 uses
  %i.nv = load i8, ptr %i.nu, align 4
  %i.nw = lshr i8 %i.nv, 5
  %i.nx = and i8 %i.nw, 3
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nh
  %i.nz = load i8, ptr %i.ny, align 4
  %i.oa = lshr i8 %i.nz, 5
  %i.ob = and i8 %i.oa, 3
  %i.oc = zext nneg i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oc ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !35
  %i.of = add nsw i32 %i.oe, 1
  store i32 %i.of, ptr %i.od, align 4, !tbaa !35
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.ni
  %i.oh = load i8, ptr %i.og, align 4
  %i.oi = lshr i8 %i.oh, 5
  %i.oj = and i8 %i.oi, 3
  %i.ok = zext nneg i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ok ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !35
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.ol, align 4, !tbaa !35
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nk
  %i.op = load i8, ptr %i.oo, align 4
  %i.oq = lshr i8 %i.op, 5
  %i.or = and i8 %i.oq, 3
  %i.os = zext nneg i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.os ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !35
  %i.ov = add nsw i32 %i.ou, 1
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !35
  %i.ow = getelementptr inbounds i8, ptr %i.nu, i64 -4
  %i.ox = load i8, ptr %i.ow, align 4
  %i.oy = lshr i8 %i.ox, 5
  %i.oz = and i8 %i.oy, 3
  %i.pa = zext nneg i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !35
  %i.pd = add nsw i32 %i.pc, 1
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !35
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.pf = load i8, ptr %i.pe, align 4
  %i.pg = lshr i8 %i.pf, 5
  %i.ph = and i8 %i.pg, 3
  %i.pi = zext nneg i8 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pi ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !35
  %i.pl = add nsw i32 %i.pk, 1
  store i32 %i.pl, ptr %i.pj, align 4, !tbaa !35
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nl
  %i.pn = load i8, ptr %i.pm, align 4
  %i.po = lshr i8 %i.pn, 5
  %i.pp = and i8 %i.po, 3
  %i.pq = zext nneg i8 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !35
  %i.pt = add nsw i32 %i.ps, 1
  store i32 %i.pt, ptr %i.pr, align 4, !tbaa !35
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.nm ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 4
  %i.pw = lshr i8 %i.pv, 5
  %i.px = and i8 %i.pw, 3
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.py ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !35
  %i.qb = add nsw i32 %i.qa, 1
  store i32 %i.qb, ptr %i.pz, align 4, !tbaa !35
  %i.qc = getelementptr i8, ptr %i.pu, i64 4
  %i.qd = load i8, ptr %i.qc, align 4
  %i.qe = lshr i8 %i.qd, 5
  %i.qf = and i8 %i.qe, 3
  %i.qg = zext nneg i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qg ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !35
  %i.qj = add nsw i32 %i.qi, 1
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !35
  %i.qk = load i32, ptr %i.a, align 16, !tbaa !35
  %i.ql = icmp sgt i32 %i.qk, 4
  br i1 %i.ql, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.qm = load i32, ptr %i.no, align 4, !tbaa !35
  %i.qn = icmp sgt i32 %i.qm, 4
  br i1 %i.qn, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.qo = load i32, ptr %i.np, align 8, !tbaa !35
  %i.qp = icmp sgt i32 %i.qo, 4
  br i1 %i.qp, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qq = load i32, ptr %i.nq, align 4, !tbaa !35
  %i.qr = icmp sgt i32 %i.qq, 4
  %spec.select.i.i = select i1 %i.qr, i8 3, i8 %i.nx
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.054.i.i = phi i8 [ %spec.select.i.i, %bb.y ], [ 0, %bb.v ], [ 1, %bb.w ], [ 2, %bb.x ]
  %i.qs = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nt
  store i8 %.054.i.i, ptr %i.qs, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.v, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %exitcond79.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, %wide.trip.count78.i.i
  br i1 %exitcond79.not.i.i, label %.preheader.i.i.preheader, label %.preheader62.i.i, !llvm.loop !48

.preheader.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.qt = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.qt, 1
  %i.qu = icmp eq i32 %i.nc, 2
  %unroll_iter = and i64 %i.qt, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod181 = trunc i64 %i.qt to i1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge69.i.i
  %indvars.iv85.i.i = phi i64 [ %indvars.iv.next86.i.i, %._crit_edge69.i.i ], [ 1, %.preheader.i.i.preheader ] ; 2 uses
  %i.qv = mul nuw nsw i64 %indvars.iv85.i.i, %i.nn ; 3 uses
  br i1 %i.qu, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %invariant.op = add nuw nsw i64 1, %i.qv
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader.i.i.new
  %indvars.iv80.i.i = phi i64 [ 1, %.preheader.i.i.new ], [ %indvars.iv.next81.i.i.1, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.1, %bb.z ]
  %i.qw = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.qx = add nuw nsw i64 %indvars.iv80.i.i, %i.qv ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.qx
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !76
  %i.rb = load i8, ptr %i.qy, align 4
  %i.rc = shl i8 %i.ra, 5
  %i.rd = and i8 %i.rc, 96
  %i.re = and i8 %i.rb, -97
  %i.rf = or disjoint i8 %i.re, %i.rd
  store i8 %i.rf, ptr %i.qy, align 4
  %i.rg = load ptr, ptr %i.ne, align 8, !tbaa !74
  %.reass = add nuw nsw i64 %indvars.iv80.i.i, %invariant.op ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %.reass ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.my, i64 %.reass
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !76
  %i.rk = load i8, ptr %i.rh, align 4
  %i.rl = shl i8 %i.rj, 5
  %i.rm = and i8 %i.rl, 96
  %i.rn = and i8 %i.rk, -97
  %i.ro = or disjoint i8 %i.rn, %i.rm
  store i8 %i.ro, ptr %i.rh, align 4
  %indvars.iv.next81.i.i.1 = add nuw nsw i64 %indvars.iv80.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge69.i.i.unr-lcssa, label %bb.z, !llvm.loop !49

._crit_edge69.i.i.unr-lcssa:                      ; preds = %bb.z
  br i1 %lcmp.mod.not, label %._crit_edge69.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge69.i.i.unr-lcssa, %.preheader.i.i
  %indvars.iv80.i.i.epil.init = phi i64 [ 1, %.preheader.i.i ], [ %indvars.iv.next81.i.i.1, %._crit_edge69.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod181)
  %i.rp = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.rq = add nuw nsw i64 %indvars.iv80.i.i.epil.init, %i.qv ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.rq ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !76
  %i.ru = load i8, ptr %i.rr, align 4
  %i.rv = shl i8 %i.rt, 5
  %i.rw = and i8 %i.rv, 96
  %i.rx = and i8 %i.ru, -97
  %i.ry = or disjoint i8 %i.rx, %i.rw
  store i8 %i.ry, ptr %i.rr, align 4
  br label %._crit_edge69.i.i

._crit_edge69.i.i:                                ; preds = %._crit_edge69.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next86.i.i = add nuw nsw i64 %indvars.iv85.i.i, 1 ; 2 uses
  %exitcond89.not.i.i = icmp eq i64 %indvars.iv.next86.i.i, %wide.trip.count78.i.i
  br i1 %exitcond89.not.i.i, label %._crit_edge71.split.i.i, label %.preheader.i.i, !llvm.loop !50

._crit_edge71.split.i.i:                          ; preds = %._crit_edge69.i.i, %.preheader62.lr.ph.i.i, %.preheader63.i.i
  call void @WebPSafeFree(ptr noundef nonnull %i.my) #8
  br label %SmoothSegmentMap.exit.i

SmoothSegmentMap.exit.i:                          ; preds = %._crit_edge71.split.i.i, %bb.u, %bb.t, %._crit_edge154.i
  %i.rz = load i32, ptr %i.dk, align 8, !tbaa !57 ; 4 uses
  %i.sa = icmp sgt i32 %i.rz, 1
  br i1 %i.sa, label %.preheader.preheader.i.i, label %.loopexit.i115.i

.preheader.preheader.i.i:                         ; preds = %SmoothSegmentMap.exit.i
  %wide.trip.count.i117.i = zext nneg i32 %i.rz to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.rz, 8
  br i1 %min.iters.check, label %.preheader.i118.i.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %.preheader.preheader.i.i
  %n.vec136 = and i64 %wide.trip.count.i117.i, 2147483640 ; 3 uses
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %i.lp, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next146, %vector.body139 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat138, %vector.ph135 ], [ %i.sd, %vector.body139 ]
  %vec.phi141 = phi <4 x i32> [ %broadcast.splat138, %vector.ph135 ], [ %i.se, %vector.body139 ]
  %vec.phi142 = phi <4 x i32> [ %broadcast.splat138, %vector.ph135 ], [ %i.sf, %vector.body139 ]
  %vec.phi143 = phi <4 x i32> [ %broadcast.splat138, %vector.ph135 ], [ %i.sg, %vector.body139 ]
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index140 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %wide.load144 = load <4 x i32>, ptr %i.sb, align 16, !tbaa !35 ; 2 uses
  %wide.load145 = load <4 x i32>, ptr %i.sc, align 16, !tbaa !35 ; 2 uses
  %i.sd = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load144) ; 2 uses
  %i.se = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi141, <4 x i32> %wide.load145) ; 2 uses
  %i.sf = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi142, <4 x i32> %wide.load144) ; 2 uses
  %i.sg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi143, <4 x i32> %wide.load145) ; 2 uses
  %index.next146 = add nuw i64 %index140, 8       ; 2 uses
  %i.sh = icmp eq i64 %index.next146, %n.vec136
  br i1 %i.sh, label %middle.block147, label %vector.body139, !llvm.loop !51

middle.block147:                                  ; preds = %vector.body139
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sd, <4 x i32> %i.se)
  %i.si = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax148 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sf, <4 x i32> %i.sg)
  %i.sj = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax148) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec136, %wide.trip.count.i117.i
  br i1 %cmp.n, label %.lr.ph.i.i, label %.preheader.i118.i.preheader

.preheader.i118.i.preheader:                      ; preds = %.preheader.preheader.i.i, %middle.block147
  %indvars.iv.i119.i.ph = phi i64 [ 0, %.preheader.preheader.i.i ], [ %n.vec136, %middle.block147 ]
  %.049.i.i.ph = phi i32 [ %i.lp, %.preheader.preheader.i.i ], [ %i.si, %middle.block147 ]
  %.04047.i.i.ph = phi i32 [ %i.lp, %.preheader.preheader.i.i ], [ %i.sj, %middle.block147 ]
  br label %.preheader.i118.i

.preheader.i118.i:                                ; preds = %.preheader.i118.i.preheader, %.preheader.i118.i
  %indvars.iv.i119.i = phi i64 [ %indvars.iv.next.i121.i, %.preheader.i118.i ], [ %indvars.iv.i119.i.ph, %.preheader.i118.i.preheader ] ; 2 uses
  %.049.i.i = phi i32 [ %spec.select.i120.i, %.preheader.i118.i ], [ %.049.i.i.ph, %.preheader.i118.i.preheader ]
  %.04047.i.i = phi i32 [ %.141.i.i, %.preheader.i118.i ], [ %.04047.i.i.ph, %.preheader.i118.i.preheader ]
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i119.i
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !35 ; 2 uses
  %spec.select.i120.i = call i32 @llvm.smin.i32(i32 %.049.i.i, i32 %i.sl) ; 2 uses
  %.141.i.i = call i32 @llvm.smax.i32(i32 %.04047.i.i, i32 %i.sl) ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i119.i, 1 ; 2 uses
  %exitcond.not.i122.i = icmp eq i64 %indvars.iv.next.i121.i, %wide.trip.count.i117.i
  br i1 %exitcond.not.i122.i, label %.lr.ph.i.i, label %.preheader.i118.i, !llvm.loop !52

.loopexit.i115.i:                                 ; preds = %SmoothSegmentMap.exit.i
  %i.sm = icmp eq i32 %i.rz, 1
  br i1 %i.sm, label %.lr.ph.i.i, label %.loopexit

end_hunk_1
