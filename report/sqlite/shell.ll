inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_expert_analyze:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.ew = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.ex = call i32 @sqlite3_step(ptr noundef %i.ew) #45
  %i.ey = icmp eq i32 %i.ex, 100
  br i1 %i.ey, label %bb.ae, label %idxLargestIndex.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.fa = call i32 @sqlite3_column_int(ptr noundef %i.ez, i32 noundef 0) #45
  %i.fb = add nsw i32 %i.fa, 1
  br label %idxLargestIndex.exit.i

idxLargestIndex.exit.thread.i:                    ; preds = %bb.ac
  store ptr null, ptr %i.e, align 8, !tbaa !110
  %i.fc = call ptr @sqlite3_errmsg(ptr noundef %i.eu) #45
  %i.fd = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.fc) #45
  store ptr %i.fd, ptr %1, align 8, !tbaa !66
  %i.fe = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.ff = call i32 @sqlite3_finalize(ptr noundef %i.fe) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  br label %idxPopulateStat1.exit

idxLargestIndex.exit.i:                           ; preds = %bb.ae, %bb.ad
  %.087.i = phi i32 [ %i.fb, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.fh = call i32 @sqlite3_finalize(ptr noundef %i.fg) #45 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  %i.fi = icmp slt i32 %.087.i, 1
  %i.fj = icmp ne i32 %i.fh, 0
  %or.cond.i = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond.i, label %idxPopulateStat1.exit, label %bb.af

bb.af:                                            ; preds = %idxLargestIndex.exit.i
  %i.fk = load ptr, ptr %i.et, align 8, !tbaa !254
  %i.fl = call i32 @sqlite3_exec(ptr noundef %i.fk, ptr noundef nonnull @.str.425, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ag, label %.thread120.i

bb.ag:                                            ; preds = %bb.af
  %i.fn = zext nneg i32 %.087.i to i64
  %i.fo = mul nuw nsw i64 %i.fn, 48
  %i.fp = add nuw nsw i64 %i.fo, 56               ; 2 uses
  %i.fq = call ptr @sqlite3_malloc64(i64 noundef %i.fp) #45 ; 14 uses
  %.not.i.i29 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i29, label %.thread120.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fq, i8 0, i64 %i.fp, i1 false)
  %i.fr = load i32, ptr %0, align 8, !tbaa !253
  %i.fs = icmp eq i32 %i.fr, 100
  %.in.v.i = select i1 %i.fs, i64 8, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.ft = load ptr, ptr %.in.i, align 8, !tbaa !322
  %i.fu = call i32 @sqlite3_create_function(ptr noundef %i.ft, ptr noundef nonnull @.str.426, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.fq, ptr noundef nonnull @idxRemFunc, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ai, label %.thread120.i

bb.ai:                                            ; preds = %bb.ah
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !245
  %i.fy = call i32 @sqlite3_create_function(ptr noundef %i.fx, ptr noundef nonnull @.str.427, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull @idxSampleFunc, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.aj, label %.thread120.i

bb.aj:                                            ; preds = %bb.ai
  %i.ga = add nuw i32 %.087.i, 1
  store i32 %i.ga, ptr %i.fq, align 8, !tbaa !323
  %i.gb = load ptr, ptr %i.et, align 8, !tbaa !254 ; 2 uses
  %i.gc = call i32 @sqlite3_prepare_v2(ptr noundef %i.gb, ptr noundef nonnull @.str.422, i32 noundef -1, ptr noundef nonnull %i.f, ptr noundef null) #45 ; 2 uses
  %.not.i62.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i62.i, label %idxPrepareStmt.exit.i, label %.thread120.sink.split.i

idxPrepareStmt.exit.i:                            ; preds = %bb.aj
  %i.gd = load ptr, ptr %i.et, align 8, !tbaa !254 ; 2 uses
  %i.ge = call i32 @sqlite3_prepare_v2(ptr noundef %i.gd, ptr noundef nonnull @.str.423, i32 noundef -1, ptr noundef nonnull %i.g, ptr noundef null) #45 ; 2 uses
  %.not.i63.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i63.i, label %idxPrepareStmt.exit64.i, label %.thread120.sink.split.i

idxPrepareStmt.exit64.i:                          ; preds = %idxPrepareStmt.exit.i
  %i.gf = load ptr, ptr %i.et, align 8, !tbaa !254 ; 2 uses
  %i.gg = call i32 @sqlite3_prepare_v2(ptr noundef %i.gf, ptr noundef nonnull @.str.424, i32 noundef -1, ptr noundef nonnull %i.h, ptr noundef null) #45 ; 2 uses
  %.not.i65.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i65.i, label %.lr.ph.i30, label %.thread120.sink.split.i

.lr.ph.i30:                                       ; preds = %idxPrepareStmt.exit64.i
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bg, %.lr.ph.i30
  %.054140.i = phi i64 [ -100000, %.lr.ph.i30 ], [ %.1.i32, %bb.bg ] ; 2 uses
  %i.gl = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.gm = call i32 @sqlite3_step(ptr noundef %i.gl) #45
  %i.gn = icmp eq i32 %i.gm, 100
  br i1 %i.gn, label %bb.al, label %.critedge.i

bb.al:                                            ; preds = %bb.ak
  %i.go = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.gp = call i64 @sqlite3_column_int64(ptr noundef %i.go, i32 noundef 0) #45 ; 2 uses
  %i.gq = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.gr = call ptr @sqlite3_column_text(ptr noundef %i.gq, i32 noundef 1) #45 ; 4 uses
  %i.gs = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.gt = call ptr @sqlite3_column_text(ptr noundef %i.gs, i32 noundef 2) #45 ; 10 uses
  %i.gu = icmp eq ptr %i.gr, null
  %i.gv = icmp eq ptr %i.gt, null
  %or.cond3.i = select i1 %i.gu, i1 true, i1 %i.gv
  br i1 %or.cond3.i, label %bb.bg, label %bb.am, !llvm.loop !325

bb.am:                                            ; preds = %bb.al
  %i.gw = load i32, ptr %0, align 8, !tbaa !253   ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 99
  %.not.i31 = icmp eq i64 %.054140.i, %i.gp
  %or.cond61.i = select i1 %i.gx, i1 true, i1 %.not.i31
  br i1 %or.cond61.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gy = sitofp i32 %i.gw to double
  %i.gz = fdiv double %i.gy, 1.000000e+02
  store double %i.gz, ptr %i.gh, align 8, !tbaa !326
  store i32 %i.gw, ptr %3, align 8, !tbaa !329
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false)
  %i.ha = load ptr, ptr %i.gj, align 8, !tbaa !255
  %i.hb = call i32 @sqlite3_exec(ptr noundef %i.ha, ptr noundef nonnull @.str.428, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %.not.i67.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i67.i, label %bb.ao, label %.thread120.i

bb.ao:                                            ; preds = %bb.an
  %i.hc = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.431, ptr noundef nonnull %i.gr) #45 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %.thread120.i, label %idxBuildSampleTable.exit.i

idxBuildSampleTable.exit.i:                       ; preds = %bb.ao
  %i.he = load ptr, ptr %i.gj, align 8, !tbaa !255
  %i.hf = call i32 @sqlite3_exec(ptr noundef %i.he, ptr noundef nonnull %i.hc, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 2 uses
  call void @sqlite3_free(ptr noundef nonnull %i.hc) #45
  %.not59.i = icmp eq i32 %i.hf, 0
  br i1 %.not59.i, label %bb.ap, label %.thread120.i

bb.ap:                                            ; preds = %idxBuildSampleTable.exit.i, %bb.am
  %i.hg = load ptr, ptr %i.g, align 8, !tbaa !110 ; 7 uses
  %i.hh = load ptr, ptr %i.h, align 8, !tbaa !110 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store ptr null, ptr %i.c, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.hi = call i32 @sqlite3_bind_text(ptr noundef %i.hg, i32 noundef 1, ptr noundef nonnull %i.gt, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  br label %bb.aq

thread-pre-split.i.i:                             ; preds = %bb.ar
  %i.hj = icmp eq ptr %.084128.i.i, null
  %i.hk = select i1 %i.hj, ptr @.str.48, ptr @.str.397 ; 2 uses
  %i.hl = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.d, ptr noundef %.084128.i.i, ptr noundef nonnull @.str.432, ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hr, i32 noundef %.090126.i.i, ptr noundef nonnull %i.hr, ptr noundef %i.hs) ; 2 uses
  %i.hm = add nuw nsw i32 %.090126.i.i, 1         ; 3 uses
  %i.hn = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.d, ptr noundef %.086127.i.i, ptr noundef nonnull @.str.433, ptr noundef nonnull %i.hk, i32 noundef %i.hm) ; 2 uses
  %.pr.i.i = load i32, ptr %i.d, align 4, !tbaa !17 ; 2 uses
  %i.ho = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ho, label %bb.aq, label %.critedge.i.i

bb.aq:                                            ; preds = %thread-pre-split.i.i, %bb.ap
  %.084128.i.i = phi ptr [ null, %bb.ap ], [ %i.hl, %thread-pre-split.i.i ] ; 7 uses
  %.086127.i.i = phi ptr [ null, %bb.ap ], [ %i.hn, %thread-pre-split.i.i ] ; 6 uses
  %.090126.i.i = phi i32 [ 0, %bb.ap ], [ %i.hm, %thread-pre-split.i.i ] ; 4 uses
  %i.hp = call i32 @sqlite3_step(ptr noundef %i.hg) #45
  %i.hq = icmp eq i32 %i.hp, 100
  br i1 %i.hq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hr = call ptr @sqlite3_column_text(ptr noundef %i.hg, i32 noundef 0) #45 ; 3 uses
  %i.hs = call ptr @sqlite3_column_text(ptr noundef %i.hg, i32 noundef 1) #45
  %.not99.i.i = icmp eq ptr %i.hr, null
  br i1 %.not99.i.i, label %.thread.i.i39, label %thread-pre-split.i.i

.thread.i.i39:                                    ; preds = %bb.ar
  call void @sqlite3_free(ptr noundef %.084128.i.i) #45
  call void @sqlite3_free(ptr noundef %.086127.i.i) #45
  %i.ht = call i32 @sqlite3_reset(ptr noundef %i.hg) #45
  br label %idxPopulateOneStat1.exit.i

.critedge.i.i:                                    ; preds = %thread-pre-split.i.i
  %i.hu = call i32 @sqlite3_reset(ptr noundef %i.hg) #45 ; 0 uses
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.hv = call i32 @sqlite3_reset(ptr noundef %i.hg) #45 ; 0 uses
  %i.hw = load i32, ptr %0, align 8, !tbaa !253
  %i.hx = icmp eq i32 %i.hw, 100
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hy = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.434, ptr noundef %.084128.i.i, ptr noundef nonnull %i.gr, ptr noundef %.086127.i.i) #45
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.hz = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.435, ptr noundef %.084128.i.i, ptr noundef %.086127.i.i) #45
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.critedge.i.i
  %i.ia = phi i32 [ 0, %bb.at ], [ 0, %bb.au ], [ %.pr.i.i, %.critedge.i.i ] ; 2 uses
  %.090125.i.i = phi i32 [ %.090126.i.i, %bb.at ], [ %.090126.i.i, %bb.au ], [ %i.hm, %.critedge.i.i ] ; 8 uses
  %.086122.i.i = phi ptr [ %.086127.i.i, %bb.at ], [ %.086127.i.i, %bb.au ], [ %i.hn, %.critedge.i.i ]
  %.084119.i.i = phi ptr [ %.084128.i.i, %bb.at ], [ %.084128.i.i, %bb.au ], [ %i.hl, %.critedge.i.i ]
  %.089.i.i = phi ptr [ %i.hy, %bb.at ], [ %i.hz, %bb.au ], [ null, %.critedge.i.i ] ; 3 uses
  call void @sqlite3_free(ptr noundef %.084119.i.i) #45
  call void @sqlite3_free(ptr noundef %.086122.i.i) #45
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.aw, label %idxFinalize.exit.critedge.i.sink.split.i

bb.aw:                                            ; preds = %bb.av
  %i.ic = load i32, ptr %0, align 8, !tbaa !253
  %i.id = icmp eq i32 %i.ic, 100
  %.in.v.i.i = select i1 %i.id, i64 8, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i
  %i.ie = load ptr, ptr %.in.i.i, align 8, !tbaa !322 ; 2 uses
  %i.if = call i32 @sqlite3_prepare_v2(ptr noundef %i.ie, ptr noundef %.089.i.i, i32 noundef -1, ptr noundef nonnull %i.c, ptr noundef null) #45 ; 2 uses
  %.not.i.i69.i = icmp eq i32 %i.if, 0
  br i1 %.not.i.i69.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %i.c, align 8, !tbaa !110
  %i.ig = call ptr @sqlite3_errmsg(ptr noundef %i.ie) #45
  %i.ih = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.ig) #45
  store ptr %i.ih, ptr %1, align 8, !tbaa !66
  br label %idxFinalize.exit.critedge.i.sink.split.i

bb.ay:                                            ; preds = %bb.aw
  store i32 0, ptr %i.d, align 4, !tbaa !17
  call void @sqlite3_free(ptr noundef %.089.i.i) #45
  %i.ii = add nuw i32 %.090125.i.i, 1
  %i.ij = zext i32 %i.ii to i64                   ; 4 uses
  %i.ik = shl nuw nsw i64 %i.ij, 3                ; 2 uses
  %i.il = call ptr @sqlite3_malloc64(i64 noundef %i.ik) #45 ; 11 uses
  %.not.i100.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i100.i.i, label %idxFinalize.exit.critedge.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.il, i8 0, i64 %i.ik, i1 false)
  %i.im = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.in = call i32 @sqlite3_step(ptr noundef %i.im) #45
  %i.io = icmp eq i32 %i.in, 100
  br i1 %i.io, label %.preheader115.i.i.preheader, label %idxMalloc.exit.threadthread-pre-split.i.i

.preheader115.i.i.preheader:                      ; preds = %bb.az
  %min.iters.check291 = icmp ult i32 %.090125.i.i, 3
  br i1 %min.iters.check291, label %.preheader115.i.i.preheader314, label %vector.ph292

vector.ph292:                                     ; preds = %.preheader115.i.i.preheader
  %n.vec293 = and i64 %i.ij, 4294967292           ; 3 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph292
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next296, %vector.body294 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %index295 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ip, align 8, !tbaa !159
  store <2 x i64> splat (i64 1), ptr %i.iq, align 8, !tbaa !159
  %index.next296 = add nuw i64 %index295, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next296, %n.vec293
  br i1 %i.ir, label %middle.block297, label %vector.body294, !llvm.loop !330

middle.block297:                                  ; preds = %vector.body294
  %cmp.n298 = icmp eq i64 %n.vec293, %i.ij
  br i1 %cmp.n298, label %.preheader.i.i, label %.preheader115.i.i.preheader314

.preheader115.i.i.preheader314:                   ; preds = %.preheader115.i.i.preheader, %middle.block297
  %indvars.iv.i.i33.ph = phi i64 [ 0, %.preheader115.i.i.preheader ], [ %n.vec293, %middle.block297 ]
  br label %.preheader115.i.i

.preheader.i.i:                                   ; preds = %.preheader115.i.i, %middle.block297
  %i.is = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.it = call i32 @sqlite3_step(ptr noundef %i.is) #45
  %i.iu = icmp eq i32 %i.it, 100
  br i1 %i.iu, label %.lr.ph136.i.i, label %.critedge2.i.i

.lr.ph136.i.i:                                    ; preds = %.preheader.i.i
  %.not.i70.i = icmp eq i32 %.090125.i.i, 0
  %wide.trip.count159.i.i = zext i32 %.090125.i.i to i64 ; 2 uses
  br label %bb.ba

.preheader115.i.i:                                ; preds = %.preheader115.i.i.preheader314, %.preheader115.i.i
  %indvars.iv.i.i33 = phi i64 [ %indvars.iv.next.i.i34, %.preheader115.i.i ], [ %indvars.iv.i.i33.ph, %.preheader115.i.i.preheader314 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.i.i33
  store i64 1, ptr %i.iv, align 8, !tbaa !159
  %indvars.iv.next.i.i34 = add nuw nsw i64 %indvars.iv.i.i33, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i34, %i.ij
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.preheader115.i.i, !llvm.loop !331

.loopexit114.i.i:                                 ; preds = %bb.bb, %.lr.ph135.i.i, %middle.block, %._crit_edge.i.i38
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.ix = call i32 @sqlite3_step(ptr noundef %i.iw) #45
  %i.iy = icmp eq i32 %i.ix, 100
  br i1 %i.iy, label %bb.ba, label %.critedge2.i.i, !llvm.loop !332

bb.ba:                                            ; preds = %.loopexit114.i.i, %.lr.ph136.i.i
  %i.iz = load i64, ptr %i.il, align 8, !tbaa !159
  %i.ja = add nsw i64 %i.iz, 1
  store i64 %i.ja, ptr %i.il, align 8, !tbaa !159
  br i1 %.not.i70.i, label %._crit_edge.i.i38, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %bb.ba, %bb.bb
  %.193130.i.i = phi i32 [ %i.je, %bb.bb ], [ 0, %bb.ba ] ; 3 uses
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.jc = call i32 @sqlite3_column_int(ptr noundef %i.jb, i32 noundef %.193130.i.i) #45
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %._crit_edge.i.i38, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i37
  %i.je = add nuw i32 %.193130.i.i, 1             ; 2 uses
  %exitcond155.not.i.i = icmp eq i32 %i.je, %.090125.i.i
  br i1 %exitcond155.not.i.i, label %.loopexit114.i.i, label %.lr.ph.i.i37, !llvm.loop !333

._crit_edge.i.i38:                                ; preds = %.lr.ph.i.i37, %bb.ba
  %.193.lcssa.i.i = phi i32 [ 0, %bb.ba ], [ %.193130.i.i, %.lr.ph.i.i37 ] ; 2 uses
  %i.jf = icmp samesign ult i32 %.193.lcssa.i.i, %.090125.i.i
  br i1 %i.jf, label %.lr.ph135.preheader.i.i, label %.loopexit114.i.i

.lr.ph135.preheader.i.i:                          ; preds = %._crit_edge.i.i38
  %i.jg = zext i32 %.193.lcssa.i.i to i64         ; 4 uses
  %i.jh = sub nsw i64 %wide.trip.count159.i.i, %i.jg ; 3 uses
  %min.iters.check = icmp ult i64 %i.jh, 4
  br i1 %min.iters.check, label %.lr.ph135.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph135.preheader.i.i
  %n.vec = and i64 %i.jh, -4                      ; 3 uses
  %i.ji = add nsw i64 %n.vec, %i.jg
  %invariant.gep = getelementptr [8 x i8], ptr %i.il, i64 %i.jg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %gep, i64 24 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jj, align 8, !tbaa !159
  %wide.load289 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !159
  %i.jl = add nsw <2 x i64> %wide.load, splat (i64 1)
  %i.jm = add nsw <2 x i64> %wide.load289, splat (i64 1)
  store <2 x i64> %i.jl, ptr %i.jj, align 8, !tbaa !159
  store <2 x i64> %i.jm, ptr %i.jk, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jh, %n.vec
  br i1 %cmp.n, label %.loopexit114.i.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.lr.ph135.preheader.i.i, %middle.block
  %indvars.iv156.i.i.ph = phi i64 [ %i.jg, %.lr.ph135.preheader.i.i ], [ %i.ji, %middle.block ]
  br label %.lr.ph135.i.i

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv156.i.i = phi i64 [ %indvars.iv.next157.i.i, %.lr.ph135.i.i ], [ %indvars.iv156.i.i.ph, %.lr.ph135.i.i.preheader ]
  %indvars.iv.next157.i.i = add nuw nsw i64 %indvars.iv156.i.i, 1 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next157.i.i ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !159
  %i.jq = add nsw i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !159
  %exitcond160.not.i.i = icmp eq i64 %indvars.iv.next157.i.i, %wide.trip.count159.i.i
  br i1 %exitcond160.not.i.i, label %.loopexit114.i.i, label %.lr.ph135.i.i, !llvm.loop !335

.critedge2.i.i:                                   ; preds = %.loopexit114.i.i, %.preheader.i.i
  %i.jr = load i64, ptr %i.il, align 8, !tbaa !159 ; 2 uses
  %i.js = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.208, i64 noundef %i.jr) #45 ; 3 uses
  %.not192.i.i = icmp eq ptr %i.js, null
  br i1 %.not192.i.i, label %.sink.split.i.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge2.i.i
  %.not193.i.i = icmp eq i32 %.090125.i.i, 0
  br i1 %.not193.i.i, label %._crit_edge141.thread.i.i, label %.lr.ph140.preheader.i.i

.lr.ph140.preheader.i.i:                          ; preds = %bb.bc
  %i.jt = zext i32 %.090125.i.i to i64
  br label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.lr.ph140.i.i, %.lr.ph140.preheader.i.i
  %indvars.iv161.i.i = phi i64 [ 1, %.lr.ph140.preheader.i.i ], [ %indvars.iv.next162.i.i, %.lr.ph140.i.i ] ; 3 uses
  %.082138.i.i = phi ptr [ %i.js, %.lr.ph140.preheader.i.i ], [ %i.jz, %.lr.ph140.i.i ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv161.i.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !159 ; 2 uses
  %i.jw = sdiv i64 %i.jv, 2
  %i.jx = add nsw i64 %i.jw, %i.jr
  %i.jy = sdiv i64 %i.jx, %i.jv
  %i.jz = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.d, ptr noundef %.082138.i.i, ptr noundef nonnull @.str.436, i64 noundef %i.jy) ; 3 uses
  %indvars.iv.next162.i.i = add nuw nsw i64 %indvars.iv161.i.i, 1
  %i.ka = load i32, ptr %i.d, align 4, !tbaa !17  ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 0                    ; 2 uses
  %i.kc = icmp samesign ult i64 %indvars.iv161.i.i, %i.jt
  %i.kd = and i1 %i.kc, %i.kb
  br i1 %i.kd, label %.lr.ph140.i.i, label %._crit_edge141.i.i, !llvm.loop !336

._crit_edge141.i.i:                               ; preds = %.lr.ph140.i.i
  br i1 %i.kb, label %._crit_edge141.thread.i.i, label %bb.bd

._crit_edge141.thread.i.i:                        ; preds = %._crit_edge141.i.i, %bb.bc
  %.082.lcssa174.i.i = phi ptr [ %i.jz, %._crit_edge141.i.i ], [ %i.js, %bb.bc ] ; 2 uses
  %i.ke = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 1, ptr noundef nonnull %i.gr, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kf = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 2, ptr noundef nonnull %i.gt, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kg = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 3, ptr noundef %.082.lcssa174.i.i, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kh = call i32 @sqlite3_step(ptr noundef %i.hh) #45 ; 0 uses
  %i.ki = call i32 @sqlite3_reset(ptr noundef %i.hh) #45
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge141.thread.i.i, %.critedge2.i.i
  %.sink.i.i = phi i32 [ %i.ki, %._crit_edge141.thread.i.i ], [ 7, %.critedge2.i.i ] ; 2 uses
  %.082.lcssa175.ph.i.i = phi ptr [ %.082.lcssa174.i.i, %._crit_edge141.thread.i.i ], [ null, %.critedge2.i.i ]
  store i32 %.sink.i.i, ptr %i.d, align 4, !tbaa !17
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split.i.i, %._crit_edge141.i.i
  %.082.lcssa175.i.i = phi ptr [ %i.jz, %._crit_edge141.i.i ], [ %.082.lcssa175.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.pr113165.i.i = phi i32 [ %i.ka, %._crit_edge141.i.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 2 uses
  %i.kj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #46 ; 5 uses
  %i.kk = trunc i64 %i.kj to i32                  ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.preheader.i.i.i.i, label %idxHashString.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bd
  %wide.trip.count.i.i.i.i = and i64 %i.kj, 2147483647
  %i.km = add nsw i64 %wide.trip.count.i.i.i.i, -1
  %xtraiter = and i64 %i.kj, 3                    ; 3 uses
  %i.kn = icmp ult i64 %i.km, 3
  br i1 %i.kn, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %i.kj, 2147483644
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %i.lk, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !16
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul i32 %.078.i.i.i.i, 9
  %i.ks = add i32 %i.kr, %i.kq
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !16
  %i.kw = zext i8 %i.kv to i32
  %i.kx = mul i32 %i.ks, 9
  %i.ky = add i32 %i.kx, %i.kw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
end_hunk_0
