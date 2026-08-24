Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_zset?download=true
inline.NumInlined: 280
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@genericZrangebyrankCommand:bb.a
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.v, %bb.c ] ; 6 uses
  %i.w = icmp slt i64 %2, 0
  %i.x = select i1 %i.w, i64 %.0.i, i64 0
  %spec.select = add nsw i64 %i.x, %2             ; 3 uses
  %i.y = icmp slt i64 %3, 0
  %i.z = select i1 %i.y, i64 %.0.i, i64 0
  %.084 = add nsw i64 %i.z, %3                    ; 3 uses
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 0) ; 7 uses
  %i.aa = icmp sle i64 %spec.store.select, %.084
  %.not = icmp slt i64 %spec.store.select, %.0.i
  %or.cond = select i1 %i.aa, i1 %.not, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %zsetLength.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !226
  tail call void %i.ac(ptr noundef nonnull %0, i64 noundef 0) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !227
  tail call void %i.ae(ptr noundef nonnull %0, i64 noundef 0) #17
  br label %bb.ap

bb.f:                                             ; preds = %zsetLength.exit
  %.not95 = icmp samesign ult i64 %.084, %.0.i
  %i.af = add nsw i64 %.0.i, -1
  %spec.select105 = select i1 %.not95, i64 %.084, i64 %i.af
  %i.ag = sub nsw i64 %spec.select105, %spec.store.select ; 3 uses
  %i.ah = add nsw i64 %i.ag, 1                    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !226
  tail call void %i.aj(ptr noundef nonnull %0, i64 noundef %i.ah) #17
  %i.ak = load i64, ptr %1, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 4
  %i.an = and i32 %i.am, 15
  switch i32 %i.an, label %bb.ao [
    i32 11, label %bb.g
    i32 7, label %bb.z
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %.not101 = icmp eq i32 %5, 0                    ; 2 uses
  %i.aq = shl nuw nsw i64 %spec.store.select, 1   ; 2 uses
  %i.ar = sub nuw nsw i64 -2, %i.aq
  %.sink = select i1 %.not101, i64 %i.aq, i64 %i.ar
  %i.as = tail call ptr @lpSeek(ptr noundef %i.ap, i64 noundef %.sink) #17 ; 3 uses
  %.not102 = icmp eq ptr %i.as, null
  br i1 %.not102, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 3431) #17
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.at = tail call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %i.as) #17
  %.not103182 = icmp eq i64 %i.ah, 0
  br i1 %.not103182, label %._crit_edge, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.i
  %.not104 = icmp eq i32 %4, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph186, %zzlPrev.exit
  %i.aw = phi i64 [ %i.ag, %.lr.ph186 ], [ %i.bs, %zzlPrev.exit ] ; 2 uses
  %.079185 = phi double [ 0.000000e+00, %.lr.ph186 ], [ %.180, %zzlPrev.exit ]
  %.0160184 = phi ptr [ %i.at, %.lr.ph186 ], [ %.1161, %zzlPrev.exit ] ; 3 uses
  %.0162183 = phi ptr [ %i.as, %.lr.ph186 ], [ %.1163, %zzlPrev.exit ] ; 3 uses
  %i.ax = icmp ne ptr %.0162183, null
  %i.ay = icmp ne ptr %.0160184, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false, !prof !34
  br i1 %i.az, label %bb.l, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 3435) #17
  call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ba = call ptr @lpGetValue(ptr noundef nonnull %.0162183, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  br i1 %.not104, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.bb = call ptr @lpGetValue(ptr noundef nonnull %.0160184, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.bb, null
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.bc, i32 127)
  %i.bd = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.bb, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  store i8 0, ptr %i.be, align 1, !tbaa !36
  %i.bf = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !92
  %i.bh = sitofp i64 %i.bg to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.n, %bb.o
  %.0.i106 = phi double [ %i.bf, %bb.n ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.p

bb.p:                                             ; preds = %zzlGetScore.exit, %bb.l
  %.180 = phi double [ %.0.i106, %zzlGetScore.exit ], [ %.079185, %bb.l ] ; 3 uses
  %i.bi = icmp eq ptr %i.ba, null
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !228
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !92
  call void %i.bj(ptr noundef nonnull %0, i64 noundef %i.bk, double noundef %.180) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !229
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bn = zext i32 %i.bm to i64
  call void %i.bl(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %i.bn, double noundef %.180) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not101, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = call ptr @lpPrev(ptr noundef %i.ap, ptr noundef nonnull %.0162183) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.bo, null
  br i1 %.not14.i, label %zzlPrev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = call ptr @lpPrev(ptr noundef %i.ap, ptr noundef nonnull %i.bo) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.bp, null
  br i1 %.not15.i, label %bb.v, label %zzlPrev.exit, !prof !91

bb.v:                                             ; preds = %bb.u
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1043) #17
  call void @abort() #18
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.bq = call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %.0160184) #17 ; 3 uses
  %.not14.i111 = icmp eq ptr %i.bq, null
  br i1 %.not14.i111, label %zzlPrev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %i.bq) #17 ; 2 uses
  %.not15.i112 = icmp eq ptr %i.br, null
  br i1 %.not15.i112, label %bb.y, label %zzlPrev.exit, !prof !91

bb.y:                                             ; preds = %bb.x
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

zzlPrev.exit:                                     ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.1163 = phi ptr [ null, %bb.t ], [ %i.bp, %bb.u ], [ null, %bb.w ], [ %i.bq, %bb.x ]
  %.1161 = phi ptr [ null, %bb.t ], [ %i.bo, %bb.u ], [ null, %bb.w ], [ %i.br, %bb.x ]
  %i.bs = add nsw i64 %i.aw, -1
  %.not103 = icmp eq i64 %i.aw, 0
  br i1 %.not103, label %._crit_edge, label %bb.j, !llvm.loop !230

._crit_edge:                                      ; preds = %zzlPrev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.loopexit

bb.z:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103 ; 5 uses
  %.not96 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not96, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30
  %.not98 = icmp slt i64 %spec.select, 1
  br i1 %.not98, label %zslGetElementByRank.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = sub nuw nsw i64 %.0.i, %spec.store.select ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.preheader.i.i, label %zslGetElementByRank.exit

.preheader.preheader.i.i:                         ; preds = %bb.ab
  %i.cd = add nsw i32 %i.cb, -1
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.cf = zext nneg i32 %i.cd to i64
  br label %.preheader.i.i

bb.ac:                                            ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.cg = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.cg, label %.preheader.i.i, label %zslGetElementByRank.exit, !llvm.loop !55

.preheader.i.i:                                   ; preds = %bb.ac, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cf, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 6 uses
  %.01845.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.1.lcssa.i.i, %bb.ac ] ; 4 uses
  %.01944.i.i = phi ptr [ %i.ce, %.preheader.preheader.i.i ], [ %.120.lcssa.i.i, %bb.ac ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01944.i.i, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 4 uses
  %.not29.i.i = icmp eq ptr %i.cj, null
  br i1 %.not29.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.not28.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not28.i.i, label %.lr.ph.split.us.i.i, label %zslGetNodeSpanAtLevel.exit.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !31
  %.not.i.us40.i.i = icmp ne ptr %i.ck, null
  %i.cl = zext i1 %.not.i.us40.i.i to i64
  %i.cm = add nuw i64 %.01845.i.i, %i.cl          ; 4 uses
  %.not2227.us41.i.i = icmp ugt i64 %i.cm, %i.bz
  br i1 %.not2227.us41.i.i, label %.critedge.thread.i.i, label %.thread.us.i.preheader.i

.thread.us.i.preheader.i:                         ; preds = %.lr.ph.split.us.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.peel.i = icmp eq ptr %i.co, null
  %.not2227.us.i.peel.i = icmp uge i64 %i.cm, %i.bz
  %or.cond.i.peel.i = or i1 %.not2227.us.i.peel.i, %.not.us.i.peel.i
  br i1 %or.cond.i.peel.i, label %.critedge.i.thread.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %.thread.us.i.preheader.i, %.thread.us.i.i
  %.131.us42.i.i = phi i64 [ %i.cq, %.thread.us.i.i ], [ %i.cm, %.thread.us.i.preheader.i ] ; 2 uses
  %i.cp = phi ptr [ %i.cs, %.thread.us.i.i ], [ %i.co, %.thread.us.i.preheader.i ] ; 2 uses
  %i.cq = add i64 %.131.us42.i.i, 1               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.cs, null
  %i.ct = add i64 %.131.us42.i.i, 2
  %.not2227.us.i.i = icmp ugt i64 %i.ct, %i.bz
  %or.cond.i.i = select i1 %.not.us.i.i, i1 true, i1 %.not2227.us.i.i
  br i1 %or.cond.i.i, label %.critedge.i.thread.i, label %.thread.us.i.i, !llvm.loop !67

zslGetNodeSpanAtLevel.exit.i.i:                   ; preds = %.lr.ph.i.i, %zslGetNodeSpanAtLevel.exit25.i.i
  %i.cu = phi ptr [ %i.db, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %i.cj, %.lr.ph.i.i ] ; 3 uses
  %.131.i.i = phi i64 [ %i.cy, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.01845.i.i, %.lr.ph.i.i ] ; 2 uses
  %.12030.i.i = phi ptr [ %i.cu, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.01944.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.12030.i.i, i64 %indvars.iv.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cy = add i64 %i.cx, %.131.i.i                ; 3 uses
  %.not22.i.i = icmp ugt i64 %i.cy, %i.bz
  br i1 %.not22.i.i, label %.critedge.i.i, label %zslGetNodeSpanAtLevel.exit25.i.i

zslGetNodeSpanAtLevel.exit25.i.i:                 ; preds = %zslGetNodeSpanAtLevel.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv.i.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %.critedge.i.i, label %zslGetNodeSpanAtLevel.exit.i.i, !llvm.loop !57

.critedge.i.i:                                    ; preds = %zslGetNodeSpanAtLevel.exit25.i.i, %zslGetNodeSpanAtLevel.exit.i.i, %.preheader.i.i
  %.120.lcssa.i.i = phi ptr [ %.01944.i.i, %.preheader.i.i ], [ %i.cu, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.12030.i.i, %zslGetNodeSpanAtLevel.exit.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi i64 [ %.01845.i.i, %.preheader.i.i ], [ %i.cy, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.131.i.i, %zslGetNodeSpanAtLevel.exit.i.i ] ; 2 uses
  %i.dc = icmp eq i64 %.1.lcssa.i.i, %i.bz
  br i1 %i.dc, label %zslGetElementByRank.exit, label %bb.ac

.critedge.i.thread.i:                             ; preds = %.thread.us.i.i, %.thread.us.i.preheader.i
  %.lcssa16.i = phi ptr [ %i.cj, %.thread.us.i.preheader.i ], [ %i.cp, %.thread.us.i.i ]
  %.lcssa.i = phi i64 [ %i.cm, %.thread.us.i.preheader.i ], [ %i.cq, %.thread.us.i.i ]
  %i.dd = icmp eq i64 %.lcssa.i, %i.bz
  %spec.select.i = select i1 %i.dd, ptr %.lcssa16.i, ptr null
  br label %zslGetElementByRank.exit

.critedge.thread.i.i:                             ; preds = %.lr.ph.split.us.i.i
  %i.de = icmp eq i64 %.01845.i.i, %i.bz
  %spec.select.i.i = select i1 %i.de, ptr %.01944.i.i, ptr null
  br label %zslGetElementByRank.exit

bb.ad:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.bw, align 8, !tbaa !28 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !31
  %.not97 = icmp slt i64 %spec.select, 1
  br i1 %.not97, label %zslGetElementByRank.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = add nuw nsw i64 %spec.store.select, 1   ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !18 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.preheader.preheader.i.i116, label %zslGetElementByRank.exit

.preheader.preheader.i.i116:                      ; preds = %bb.ae
  %i.dm = add nsw i32 %i.dk, -1
  %i.dn = zext nneg i32 %i.dm to i64
  br label %.preheader.i.i117

bb.af:                                            ; preds = %.critedge.i.i130
  %indvars.iv.next.i.i133 = add nsw i64 %indvars.iv.i.i118, -1
  %i.do = icmp sgt i64 %indvars.iv.i.i118, 0
  br i1 %i.do, label %.preheader.i.i117, label %zslGetElementByRank.exit, !llvm.loop !55

.preheader.i.i117:                                ; preds = %bb.af, %.preheader.preheader.i.i116
  %indvars.iv.i.i118 = phi i64 [ %i.dn, %.preheader.preheader.i.i116 ], [ %indvars.iv.next.i.i133, %bb.af ] ; 6 uses
  %.01845.i.i119 = phi i64 [ 0, %.preheader.preheader.i.i116 ], [ %.1.lcssa.i.i132, %bb.af ] ; 3 uses
  %.01944.i.i120 = phi ptr [ %i.df, %.preheader.preheader.i.i116 ], [ %.120.lcssa.i.i131, %bb.af ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01944.i.i120, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.i.i118
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31 ; 4 uses
  %.not29.i.i121 = icmp eq ptr %i.dr, null
  br i1 %.not29.i.i121, label %.critedge.i.i130, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.preheader.i.i117
  %.not28.i.i123 = icmp eq i64 %indvars.iv.i.i118, 0
  br i1 %.not28.i.i123, label %.lr.ph.split.us.i.i134, label %zslGetNodeSpanAtLevel.exit.i.i124

.lr.ph.split.us.i.i134:                           ; preds = %.lr.ph.i.i122
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !31
  %.not.i.us40.i.i135 = icmp ne ptr %i.ds, null
  %i.dt = zext i1 %.not.i.us40.i.i135 to i64
  %i.du = add nuw i64 %.01845.i.i119, %i.dt       ; 4 uses
  %.not2227.us41.i.i136 = icmp ugt i64 %i.du, %i.di
  br i1 %.not2227.us41.i.i136, label %zslGetElementByRank.exit, label %.thread.us.i.preheader.i137

.thread.us.i.preheader.i137:                      ; preds = %.lr.ph.split.us.i.i134
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.peel.i138 = icmp eq ptr %i.dw, null
  %.not2227.us.i.peel.i139 = icmp ugt i64 %i.du, %spec.store.select
  %or.cond.i.peel.i140 = or i1 %.not2227.us.i.peel.i139, %.not.us.i.peel.i138
  br i1 %or.cond.i.peel.i140, label %.critedge.i.thread.i146, label %.thread.us.i.i141

.thread.us.i.i141:                                ; preds = %.thread.us.i.preheader.i137, %.thread.us.i.i141
  %.131.us42.i.i142 = phi i64 [ %i.dy, %.thread.us.i.i141 ], [ %i.du, %.thread.us.i.preheader.i137 ] ; 2 uses
  %i.dx = phi ptr [ %i.ea, %.thread.us.i.i141 ], [ %i.dw, %.thread.us.i.preheader.i137 ] ; 2 uses
  %i.dy = add i64 %.131.us42.i.i142, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.i143 = icmp eq ptr %i.ea, null
  %i.eb = add i64 %.131.us42.i.i142, 2
  %.not2227.us.i.i144 = icmp ugt i64 %i.eb, %i.di
  %or.cond.i.i145 = select i1 %.not.us.i.i143, i1 true, i1 %.not2227.us.i.i144
  br i1 %or.cond.i.i145, label %.critedge.i.thread.i146, label %.thread.us.i.i141, !llvm.loop !67

zslGetNodeSpanAtLevel.exit.i.i124:                ; preds = %.lr.ph.i.i122, %zslGetNodeSpanAtLevel.exit25.i.i128
  %i.ec = phi ptr [ %i.ej, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %i.dr, %.lr.ph.i.i122 ] ; 3 uses
  %.131.i.i125 = phi i64 [ %i.eg, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.01845.i.i119, %.lr.ph.i.i122 ] ; 2 uses
  %.12030.i.i126 = phi ptr [ %i.ec, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.01944.i.i120, %.lr.ph.i.i122 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.12030.i.i126, i64 %indvars.iv.i.i118
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, %.131.i.i125             ; 3 uses
  %.not22.i.i127 = icmp ugt i64 %i.eg, %i.di
  br i1 %.not22.i.i127, label %.critedge.i.i130, label %zslGetNodeSpanAtLevel.exit25.i.i128

zslGetNodeSpanAtLevel.exit25.i.i128:              ; preds = %zslGetNodeSpanAtLevel.exit.i.i124
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv.i.i118
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !31 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i129, label %.critedge.i.i130, label %zslGetNodeSpanAtLevel.exit.i.i124, !llvm.loop !57

.critedge.i.i130:                                 ; preds = %zslGetNodeSpanAtLevel.exit25.i.i128, %zslGetNodeSpanAtLevel.exit.i.i124, %.preheader.i.i117
  %.120.lcssa.i.i131 = phi ptr [ %.01944.i.i120, %.preheader.i.i117 ], [ %i.ec, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.12030.i.i126, %zslGetNodeSpanAtLevel.exit.i.i124 ] ; 2 uses
  %.1.lcssa.i.i132 = phi i64 [ %.01845.i.i119, %.preheader.i.i117 ], [ %i.eg, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.131.i.i125, %zslGetNodeSpanAtLevel.exit.i.i124 ] ; 2 uses
  %i.ek = icmp eq i64 %.1.lcssa.i.i132, %i.di
  br i1 %i.ek, label %zslGetElementByRank.exit, label %bb.af

.critedge.i.thread.i146:                          ; preds = %.thread.us.i.i141, %.thread.us.i.preheader.i137
  %.lcssa16.i147 = phi ptr [ %i.dr, %.thread.us.i.preheader.i137 ], [ %i.dx, %.thread.us.i.i141 ]
  %.lcssa.i148 = phi i64 [ %i.du, %.thread.us.i.preheader.i137 ], [ %i.dy, %.thread.us.i.i141 ]
  %i.el = icmp eq i64 %.lcssa.i148, %i.di
  %spec.select.i149 = select i1 %i.el, ptr %.lcssa16.i147, ptr null
  br label %zslGetElementByRank.exit

zslGetElementByRank.exit:                         ; preds = %.critedge.i.i, %bb.ac, %.critedge.i.i130, %bb.af, %.critedge.i.thread.i146, %bb.ae, %.lr.ph.split.us.i.i134, %.critedge.thread.i.i, %.critedge.i.thread.i, %bb.ab, %bb.ad, %bb.aa
  %.0 = phi ptr [ %i.dh, %bb.ad ], [ %i.by, %bb.aa ], [ null, %.lr.ph.split.us.i.i134 ], [ null, %bb.ab ], [ %spec.select.i, %.critedge.i.thread.i ], [ %spec.select.i.i, %.critedge.thread.i.i ], [ %.120.lcssa.i.i131, %.critedge.i.i130 ], [ null, %bb.ae ], [ %spec.select.i149, %.critedge.i.thread.i146 ], [ null, %bb.af ], [ null, %bb.ac ], [ %.120.lcssa.i.i, %.critedge.i.i ]
  %.not99180 = icmp eq i64 %i.ah, 0
  br i1 %.not99180, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %zslGetElementByRank.exit
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.in.v = select i1 %.not96, i64 16, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %sdslen.exit
  %i.en = phi i64 [ %i.ag, %.lr.ph ], [ %i.fk, %sdslen.exit ] ; 2 uses
  %.1181 = phi ptr [ %.0, %.lr.ph ], [ %i.fj, %sdslen.exit ] ; 5 uses
  %.not100 = icmp eq ptr %.1181, null
  br i1 %.not100, label %bb.ah, label %bb.ai, !prof !91

bb.ah:                                            ; preds = %bb.ag
  tail call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 3470) #17
  tail call void @abort() #18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %.1181, i64 24
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.eq = zext i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.1181, i64 %i.eq ; 6 uses
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !229
  %i.et = getelementptr i8, ptr %i.er, i64 -1
  %.val.i = load i8, ptr %i.et, align 1, !tbaa !36 ; 2 uses
  %i.eu = and i8 %.val.i, 7
  switch i8 %i.eu, label %sdslen.exit [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ev = lshr i8 %.val.i, 3
  %i.ew = zext nneg i8 %i.ev to i64
  br label %sdslen.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 -3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !36
  %i.ez = zext i8 %i.ey to i64
  br label %sdslen.exit

bb.al:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds i8, ptr %i.er, i64 -5
  %i.fb = load i16, ptr %i.fa, align 1, !tbaa !37
end_hunk_0
begin_hunk_1_@zrandmemberWithCountCommand:bb.a
  unreachable

zsetLength.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.r, %bb.d ], [ %i.x, %bb.e ] ; 8 uses
  %i.y = icmp slt i64 %1, 0
  %.0154 = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 9 uses
  %i.z = icmp eq i64 %1, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %zsetLength.exit
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.aa) #17
  br label %bb.cn

bb.h:                                             ; preds = %zsetLength.exit
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not169 = icmp eq i32 %i.ab, 0
  br i1 %.not169, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.g) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0160 = phi i64 [ %i.ac, %bb.i ], [ 0, %bb.h ]
  %i.ad = icmp eq i64 %.0154, 1
  %or.cond = or i1 %i.y, %i.ad
  br i1 %or.cond, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %.not177 = icmp eq i32 %2, 0                    ; 3 uses
  br i1 %.not177, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !215
  %i.ag = icmp eq i32 %i.af, 2
  %i.ah = zext i1 %i.ag to i64
  %spec.select = shl nuw i64 %.0154, %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0154.sink = phi i64 [ %.0154, %bb.k ], [ %spec.select, %bb.l ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0154.sink) #17
  %i.ai = load i64, ptr %i.g, align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 4
  %i.al = and i32 %i.ak, 15
  switch i32 %i.al, label %.loopexit [
    i32 7, label %bb.n
    i32 11, label %bb.ae
  ]

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.ad, %bb.n
  %.in = phi i64 [ %.0154, %bb.n ], [ %i.aq, %bb.ad ]
  %i.aq = add i64 %.in, -1                        ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !107
  %i.as = tail call ptr @dictGetFairRandomKey(ptr noundef %i.ar) #17
  %i.at = tail call ptr @dictGetKey(ptr noundef %i.as) #17 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i16, ptr %i.au, align 2, !tbaa !13
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 12 uses
  br i1 %.not177, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !215
  %i.az = icmp sgt i32 %i.ay, 2
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ba = getelementptr i8, ptr %i.ax, i64 -1
  %.val.i = load i8, ptr %i.ba, align 1, !tbaa !36 ; 2 uses
  %i.bb = and i8 %.val.i, 7
  switch i8 %i.bb, label %bb.x [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.bc = lshr i8 %.val.i, 3
  %i.bd = zext nneg i8 %i.bc to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds i8, ptr %i.ax, i64 -3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !36
  %i.bg = zext i8 %i.bf to i64
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds i8, ptr %i.ax, i64 -5
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i16 %i.bi to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds i8, ptr %i.ax, i64 -9
  %i.bl = load i32, ptr %i.bk, align 1, !tbaa !9
  %i.bm = zext i32 %i.bl to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds i8, ptr %i.ax, i64 -17
  %i.bo = load i64, ptr %i.bn, align 1, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i188 = phi i64 [ %i.bo, %bb.w ], [ %i.bd, %bb.s ], [ %i.bg, %bb.t ], [ %i.bj, %bb.u ], [ %i.bm, %bb.v ], [ 0, %bb.r ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i64 noundef %.0.i188) #17
  %i.bp = load double, ptr %i.at, align 8, !tbaa !16
  tail call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.bp) #17
  br label %bb.ad

.critedge:                                        ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %i.ax, i64 -1
  %.val.i189 = load i8, ptr %i.bq, align 1, !tbaa !36 ; 2 uses
  %i.br = and i8 %.val.i189, 7
  switch i8 %i.br, label %sdslen.exit191 [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %.critedge
  %i.bs = lshr i8 %.val.i189, 3
  %i.bt = zext nneg i8 %i.bs to i64
  br label %sdslen.exit191

bb.z:                                             ; preds = %.critedge
  %i.bu = getelementptr inbounds i8, ptr %i.ax, i64 -3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !36
  %i.bw = zext i8 %i.bv to i64
  br label %sdslen.exit191

bb.aa:                                            ; preds = %.critedge
  %i.bx = getelementptr inbounds i8, ptr %i.ax, i64 -5
  %i.by = load i16, ptr %i.bx, align 1, !tbaa !37
  %i.bz = zext i16 %i.by to i64
  br label %sdslen.exit191

bb.ab:                                            ; preds = %.critedge
  %i.ca = getelementptr inbounds i8, ptr %i.ax, i64 -9
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !9
  %i.cc = zext i32 %i.cb to i64
  br label %sdslen.exit191

bb.ac:                                            ; preds = %.critedge
  %i.cd = getelementptr inbounds i8, ptr %i.ax, i64 -17
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !24
  br label %sdslen.exit191

sdslen.exit191:                                   ; preds = %.critedge, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i190 = phi i64 [ %i.ce, %bb.ac ], [ %i.bt, %bb.y ], [ %i.bw, %bb.z ], [ %i.bz, %bb.aa ], [ %i.cc, %bb.ab ], [ 0, %.critedge ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i64 noundef %.0.i190) #17
  br label %bb.ad

bb.ad:                                            ; preds = %sdslen.exit191, %bb.x
  %i.cf = load i64, ptr %i.ap, align 8, !tbaa !252
  %i.cg = and i64 %i.cf, 1024
  %.not179 = icmp ne i64 %i.cg, 0
  %.not178 = icmp eq i64 %i.aq, 0
  %or.cond241 = select i1 %.not179, i1 true, i1 %.not178
  br i1 %or.cond241, label %.loopexit, label %bb.o

bb.ae:                                            ; preds = %bb.m
  %i.ch = tail call i64 @llvm.umin.i64(i64 %.0154, i64 1000) ; 2 uses
  %i.ci = mul nuw nsw i64 %i.ch, 24               ; 2 uses
  %i.cj = tail call noalias ptr @zmalloc(i64 noundef %i.ci) #20 ; 3 uses
  br i1 %.not177, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = tail call noalias ptr @zmalloc(i64 noundef %i.ci) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0158 = phi ptr [ %i.ck, %bb.af ], [ null, %bb.ae ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ah
  %.2 = phi i64 [ %.0154, %bb.ag ], [ %i.co, %bb.ah ] ; 2 uses
  %i.cn = tail call i64 @llvm.umin.i64(i64 %.2, i64 %i.ch) ; 2 uses
  %i.co = sub nuw nsw i64 %.2, %i.cn              ; 2 uses
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !75
  %i.cq = trunc nuw nsw i64 %i.cn to i32          ; 2 uses
  tail call void @lpRandomPairs(ptr noundef %i.cp, i32 noundef %i.cq, ptr noundef %i.cj, ptr noundef %.0158, i32 noundef 2) #17
  tail call fastcc void @zrandmemberReplyWithListpack(ptr noundef nonnull %0, i32 noundef %i.cq, ptr noundef %i.cj, ptr noundef %.0158)
  %i.cr = load i64, ptr %i.cm, align 8, !tbaa !252
  %i.cs = and i64 %i.cr, 1024
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = icmp ne i64 %i.co, 0
  %or.cond3 = and i1 %i.cu, %i.ct
  br i1 %or.cond3, label %bb.ah, label %bb.ai, !llvm.loop !253

bb.ai:                                            ; preds = %bb.ah
  tail call void @zfree(ptr noundef %i.cj) #17
  tail call void @zfree(ptr noundef %.0158) #17
  br label %.loopexit

bb.aj:                                            ; preds = %bb.j
  store ptr %i.g, ptr %3, align 8, !tbaa !186
  %i.cv = load i64, ptr %i.g, align 8
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = and i32 %i.cw, 15
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !188
  %i.cz = lshr i32 %i.cw, 4
  %i.da = and i32 %i.cz, 15
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !189
  call void @zuiInitIterator(ptr noundef nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.dc = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i) ; 2 uses
  %.not170 = icmp eq i32 %2, 0                    ; 7 uses
  br i1 %.not170, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !215
  %i.df = icmp eq i32 %i.de, 2
  %i.dg = zext i1 %i.df to i64
  %spec.select238 = shl nuw nsw i64 %i.dc, %i.dg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink = phi i64 [ %i.dc, %bb.aj ], [ %spec.select238, %bb.ak ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.sink) #17
  %.not171 = icmp ult i64 %1, %.0.i
  br i1 %.not171, label %bb.bb, label %.preheader207

.preheader207:                                    ; preds = %bb.al
  %i.dh = call i32 @zuiNext(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not176208 = icmp eq i32 %i.dh, 0
  br i1 %.not176208, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader207
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 72
  br i1 %.not170, label %.critedge183.us, label %.lr.ph.split

.critedge183.us:                                  ; preds = %.lr.ph, %zuiNewSdsFromValue.exit197.us
  %i.do = load i32, ptr %4, align 8, !tbaa !190   ; 2 uses
  %i.dp = and i32 %i.do, 1
  %.not.i193.us = icmp eq i32 %i.dp, 0
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !192 ; 3 uses
  br i1 %.not.i193.us, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge183.us
  %i.dr = and i32 %i.do, -2
  store i32 %i.dr, ptr %4, align 8, !tbaa !190
  store ptr null, ptr %i.dj, align 8, !tbaa !192
  br label %zuiNewSdsFromValue.exit197.us

bb.an:                                            ; preds = %.critedge183.us
  %.not14.i195.us = icmp eq ptr %i.dq, null
  br i1 %.not14.i195.us, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = call ptr @sdsdup(ptr noundef nonnull %i.dq) #17
  br label %zuiNewSdsFromValue.exit197.us

bb.ap:                                            ; preds = %bb.an
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !195 ; 2 uses
  %.not15.i196.us = icmp eq ptr %i.dt, null
  br i1 %.not15.i196.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = load i32, ptr %i.dl, align 8, !tbaa !196
  %i.dv = zext i32 %i.du to i64
  %i.dw = call ptr @sdsnewlen(ptr noundef nonnull %i.dt, i64 noundef %i.dv) #17
  br label %zuiNewSdsFromValue.exit197.us

bb.ar:                                            ; preds = %bb.ap
  %i.dx = load i64, ptr %i.dm, align 8, !tbaa !193
  %i.dy = call ptr @sdsfromlonglong(i64 noundef %i.dx) #17
  br label %zuiNewSdsFromValue.exit197.us

zuiNewSdsFromValue.exit197.us:                    ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.am
  %.0.i194.us = phi ptr [ %i.dq, %bb.am ], [ %i.ds, %bb.ao ], [ %i.dw, %bb.aq ], [ %i.dy, %bb.ar ]
  call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %.0.i194.us) #17
  %i.dz = call i32 @zuiNext(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not176.us = icmp eq i32 %i.dz, 0
  br i1 %.not176.us, label %._crit_edge, label %.critedge183.us, !llvm.loop !254

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ba
  %i.ea = load i32, ptr %i.di, align 4, !tbaa !215
  %i.eb = icmp sgt i32 %i.ea, 2
  br i1 %i.eb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.split
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.split
  %i.ec = load i32, ptr %4, align 8, !tbaa !190   ; 2 uses
  %i.ed = and i32 %i.ec, 1
  %.not.i = icmp eq i32 %i.ed, 0
  %i.ee = load ptr, ptr %i.dj, align 8, !tbaa !192 ; 3 uses
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = and i32 %i.ec, -2
  store i32 %i.ef, ptr %4, align 8, !tbaa !190
  store ptr null, ptr %i.dj, align 8, !tbaa !192
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %.not14.i = icmp eq ptr %i.ee, null
  br i1 %.not14.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = call ptr @sdsdup(ptr noundef nonnull %i.ee) #17
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.eh = load ptr, ptr %i.dk, align 8, !tbaa !195 ; 2 uses
  %.not15.i = icmp eq ptr %i.eh, null
  br i1 %.not15.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ei = load i32, ptr %i.dl, align 8, !tbaa !196
  %i.ej = zext i32 %i.ei to i64
  %i.ek = call ptr @sdsnewlen(ptr noundef nonnull %i.eh, i64 noundef %i.ej) #17
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.el = load i64, ptr %i.dm, align 8, !tbaa !193
  %i.em = call ptr @sdsfromlonglong(i64 noundef %i.el) #17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.au
  %.0.i192 = phi ptr [ %i.ee, %bb.au ], [ %i.eg, %bb.aw ], [ %i.ek, %bb.ay ], [ %i.em, %bb.az ]
  call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %.0.i192) #17
  %i.en = load double, ptr %i.dn, align 8, !tbaa !194
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.en) #17
  %i.eo = call i32 @zuiNext(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not176 = icmp eq i32 %i.eo, 0
  br i1 %.not176, label %._crit_edge, label %.lr.ph.split, !llvm.loop !254

._crit_edge:                                      ; preds = %bb.ba, %zuiNewSdsFromValue.exit197.us, %.preheader207
  call void @zuiClearIterator(ptr noundef nonnull %3)
  br label %.loopexit

bb.bb:                                            ; preds = %bb.al
  %i.ep = load i64, ptr %i.g, align 8
  %i.eq = and i64 %i.ep, 240
  %i.er = icmp eq i64 %i.eq, 176
  br i1 %i.er, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.es = mul i64 %1, 24                          ; 2 uses
  %i.et = tail call noalias ptr @zmalloc(i64 noundef %i.es) #20 ; 3 uses
  br i1 %.not170, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eu = tail call noalias ptr @zmalloc(i64 noundef %i.es) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0156 = phi ptr [ %i.eu, %bb.bd ], [ null, %bb.bc ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !75
  %i.ex = trunc i64 %1 to i32                     ; 2 uses
  %i.ey = tail call i32 @lpRandomPairsUnique(ptr noundef %i.ew, i32 noundef %i.ex, ptr noundef %i.et, ptr noundef %.0156, i32 noundef 2) #17
  %i.ez = zext i32 %i.ey to i64
  %i.fa = icmp eq i64 %1, %i.ez
  br i1 %i.fa, label %bb.bg, label %bb.bf, !prof !34

bb.bf:                                            ; preds = %bb.be
  tail call void @_serverAssert(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.1, i32 noundef 4598) #17
  tail call void @abort() #18
  unreachable

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @zrandmemberReplyWithListpack(ptr noundef nonnull %0, i32 noundef %i.ex, ptr noundef %i.et, ptr noundef %.0156)
  tail call void @zfree(ptr noundef %i.et) #17
  tail call void @zfree(ptr noundef %.0156) #17
  call void @zuiClearIterator(ptr noundef nonnull %3)
  br label %.loopexit
end_hunk_1
